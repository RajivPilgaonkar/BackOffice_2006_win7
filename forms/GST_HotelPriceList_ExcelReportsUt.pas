unit GST_HotelPriceList_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes, Windows;

procedure GST_HotelPriceList (scExcelExport: TScExcelExport; x_FromDate: TDateTime; x_MealPlans_id: integer; x_Currencies_id: integer; x_StateStr, x_CategoryStr, x_Margin, x_Ranked, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
procedure PrintState (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
procedure PrintCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
procedure PrintHotel (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType: integer);
procedure PrintHotelOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;


procedure GST_HotelPriceList (scExcelExport: TScExcelExport; x_FromDate: TDateTime; x_MealPlans_id: integer; x_Currencies_id: integer;
                              x_StateStr, x_CategoryStr, x_Margin, x_Ranked, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevStates_id, x_PrevCities_id, x_PrevHotels_id, x_States_id, x_Cities_id, x_Hotels_id: integer;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  if (x_ReportType = 1) or (x_ReportType = 2) then
    scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Hotel_PriceList.xlsx'
  else
    scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Hotel_PriceList_1_10.xlsx';

  scExcelExport.WorksheetName := 'Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  // From Date
  scExcelExport.ExcelWorkSheet.Range['A3','A3'].Value := 'From ' + FormatDateTime('dd/mm/yyyy',x_FromDate);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  // Print Currency
  GpSds.Close;
  GpSds.CommandText := 'SELECT CurrencyCode FROM Currencies WHERE Currencies_id = ' + IntToStr(x_Currencies_id);
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['CurrencyCode'] <> null) then
    scExcelExport.ExcelWorkSheet.Range['K6','M6'].Value := GpSds['CurrencyCode'];

  // Exch Rate
  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_FromDate)) + ')';
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
    scExcelExport.ExcelWorkSheet.Range['K3','K3'].Value := 'Exch Rate @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

  GpSds.Close;
  GpSds.CommandText := 'exec [p_HotelPriceList_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_FromDate)) + ', ' +
        QuotedStr(x_StateStr) + ',' + QuotedStr(x_CategoryStr) + ',' +
        IntToStr(x_Currencies_id) + ', ' + IntToStr(x_MealPlans_id) + ', ' + x_Ranked + ', ' +
        IntToStr(x_OptionOrder) + ', ' + IntToStr(x_OptionIndia);
  GpSds.Open;

  // Tour Gst (%)
  if (x_ReportType = 1) or (x_ReportType = 2) then
   if (not GpSds.Eof) and (GpSds['TourGstPerc'] <> null) then
     scExcelExport.ExcelWorkSheet.Range['BA3','BA3'].Value := 'Tour Gst @ ' + FormatFloat('#,##0.0',GpSds['TourGstPerc']) + '%';

  x_StartRow := 8;
  x_row := x_StartRow;

  x_PrevStates_id := -1;
  x_PrevCities_id := -1;
  x_PrevHotels_id := -1;
  x_count := 0;

  while (not GpSds.EOF) do
    begin

      x_States_id := GpSds['States_id'];
      if (x_States_id <> x_PrevStates_id) then
        PrintState (scExcelExport, GpSds, x_row, x_StartRow);

      x_Cities_id := GpSds['Cities_id'];
      if (x_Cities_id <> x_PrevCities_id) then
        PrintCity (scExcelExport, GpSds, x_row);

      x_Hotels_id := GpSds['Addressbook_id'];
      if (x_count = 0) then
        x_type := 2
      else if (x_Cities_id <> x_PrevCities_id) then
        x_type := 2
      else if (x_Hotels_id <> x_PrevHotels_id) then
        x_type := 3
      else
        x_type := 4;

      if (x_ReportType = 1) or (x_ReportType = 2) then
        PrintHotel (scExcelExport, GpSds, x_row, x_type, x_margin)
      else
        PrintHotelOneToTen (scExcelExport, GpSds, x_row, x_type);

      x_PrevStates_id := x_States_id;
      x_PrevCities_id := x_Cities_id;
      x_PrevHotels_id := x_Hotels_id;

      x_count := x_count + 1;

      GpSds.Next;

    end;

  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'BC'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
  SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

  if (x_margin = '0') then
    scExcelExport.ExcelWorkSheet.Range['AT1','BC1'].EntireColumn.Hidden := true;

  GpSds.Free;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;

procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType : integer);
var
  x_cell, x_FromCell, x_ToCell: string;
  i: integer;
begin

  if (x_ReportType = 1) or (x_ReportType = 2) then
    begin
      x_FromCell := 'K';
      x_ToCell := 'BD';
    end
  else
    begin
      x_FromCell := 'K';
      x_ToCell := 'Z';
    end;

  x_cell := x_FromCell;
  while (x_cell <> x_ToCell) do
    begin

      // colour the cells, but this paints over the grid lines
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_StartRow),x_cell+IntToStr(x_EndRow)].Interior.Color :=
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_StartRow),x_cell+IntToStr(x_StartRow)].Interior.Color;

      // go back and paint the grid lines
      for i := x_StartRow to x_EndRow do
        begin
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(i),x_cell+IntToStr(i)].Borders.Color := RGB(208,215,229);
        end;

      x_cell := NextColumn(x_cell);
        
    end;

end;

procedure PrintState (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
begin

  if (x_row > x_StartRow) then
    x_row := x_row + 2;

  if GpSds['State'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['State'];

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := 14;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;

end;

procedure PrintCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
begin

  x_row := x_row + 2;

  if GpSds['City'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['City'];

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := 12;
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';

end;

procedure PrintHotel (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 2
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'A';

  if (GpSds['Old'] <> null) then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Old'];
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].HorizontalAlignment := xlCenter;
    end;

  x_cell := NextColumn(x_cell);

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Category'] <> null) and (x_type <> 4) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Category'];

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Ranking'] <> null) and (x_type <> 4) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Ranking'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Organisation'] <> null) and (x_type <> 4) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Organisation'];

  x_cell := NextColumn(x_cell);
  if GpSds['FromDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['FromDate']);

  x_cell := NextColumn(x_cell);
  if GpSds['ToDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['ToDate']);

  x_cell := NextColumn(x_cell);
  if (GpSds['AC'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['AC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['RoomType'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['RoomType'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealPlan'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealPlan'];

  if (x_margin = '1') then
    begin
      x_cell := NextColumn(x_cell);
      if (GpSds['SingleQuoteCurr'] <> null) and (GpSds['SingleQuoteCurr'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleQuoteCurr'];

      x_cell := NextColumn(x_cell);
      if (GpSds['DoubleQuoteCurr'] <> null) and (GpSds['DoubleQuoteCurr'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleQuoteCurr'];

      x_cell := NextColumn(x_cell);
      if (GpSds['TripleQuoteCurr'] <> null) and (GpSds['TripleQuoteCurr'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleQuoteCurr'];
    end
  else
    begin
      x_cell := NextColumn(x_cell);
      if (GpSds['SingleTotal'] <> null) and (GpSds['SingleTotal'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleTotal'];

      x_cell := NextColumn(x_cell);
      if (GpSds['DoubleTotal'] <> null) and (GpSds['DoubleTotal'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleTotal'];

      x_cell := NextColumn(x_cell);
      if (GpSds['TripleTotal'] <> null) and (GpSds['TripleTotal'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleTotal'];
    end;

  x_cell := SkipNextCol(x_cell, 3);
  if (GpSds['SingleRate'] <> null) and (GpSds['SingleRate'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleRate'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleTAC'] <> null) and (GpSds['SingleTAC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleTAC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleSC'] <> null) and (GpSds['SingleSC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleSC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleGstPerc'] <> null) and (GpSds['SingleGstPerc'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleGstPerc'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleGst'] <> null) and (GpSds['SingleGst'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleGst'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleRate'] <> null) and (GpSds['DoubleRate'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleRate'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleTAC'] <> null) and (GpSds['DoubleTAC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleTAC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleSC'] <> null) and (GpSds['DoubleSC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleSC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleGstPerc'] <> null) and (GpSds['DoubleGstPerc'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleGstPerc'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleGst'] <> null) and (GpSds['DoubleGst'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleGst'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleRate'] <> null) and (GpSds['TripleRate'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleRate'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleTAC'] <> null) and (GpSds['TripleTAC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleTAC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleSC'] <> null) and (GpSds['TripleSC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleSC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleGstPerc'] <> null) and (GpSds['TripleGstPerc'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleGstPerc'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleGst'] <> null) and (GpSds['TripleGst'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleGst'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Nett'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Nett'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealRate'] <> null) and (GpSds['MealRate'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealRate'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealTAC'] <> null) and (GpSds['MealTAC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealTAC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealSC'] <> null) and (GpSds['MealSC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealSC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealGst'] <> null) and (GpSds['MealGst'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealGst'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealEbRate'] <> null) and (GpSds['MealEbRate'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealEbRate'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealEbTAC'] <> null) and (GpSds['MealEbTAC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealEbTAC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealEbSC'] <> null) and (GpSds['MealEbSC'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealEbSC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealEbGst'] <> null) and (GpSds['MealEbGst'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealEbGst'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleAgentComm'] <> null) and (GpSds['SingleAgentComm'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleAgentComm'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleAgentComm'] <> null) and (GpSds['DoubleAgentComm'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleAgentComm'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleAgentComm'] <> null) and (GpSds['TripleAgentComm'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleAgentComm'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleTotal'] <> null) and (GpSds['SingleTotal'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleTotal'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleTotal'] <> null) and (GpSds['DoubleTotal'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleTotal'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleTotal'] <> null) and (GpSds['TripleTotal'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleTotal'];

  if (x_margin = '1') then
    begin

      x_cell := NextColumn(x_cell);
      if (GpSds['SingleMarginPerc'] <> null) and (GpSds['SingleMarginPerc'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleMarginPerc'];

      x_cell := NextColumn(x_cell);
      if (GpSds['DoubleMarginPerc'] <> null) and (GpSds['DoubleMarginPerc'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleMarginPerc'];

      x_cell := NextColumn(x_cell);
      if (GpSds['TripleMarginPerc'] <> null) and (GpSds['TripleMarginPerc'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleMarginPerc'];

      x_cell := NextColumn(x_cell);
      if (GpSds['SingleTotalWithMargin'] <> null) and (GpSds['SingleTotalWithMargin'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleTotalWithMargin'];

      x_cell := NextColumn(x_cell);
      if (GpSds['DoubleTotalWithMargin'] <> null) and (GpSds['DoubleTotalWithMargin'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleTotalWithMargin'];

      x_cell := NextColumn(x_cell);
      if (GpSds['TripleTotalWithMargin'] <> null) and (GpSds['TripleTotalWithMargin'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleTotalWithMargin'];

      x_cell := NextColumn(x_cell);

      x_cell := NextColumn(x_cell);
      if (GpSds['SingleQuote'] <> null) and (GpSds['SingleQuote'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleQuote'];

      x_cell := NextColumn(x_cell);
      if (GpSds['DoubleQuote'] <> null) and (GpSds['SingleQuote'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleQuote'];

      x_cell := NextColumn(x_cell);
      if (GpSds['TripleQuote'] <> null) and (GpSds['SingleQuote'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleQuote'];

    end;

end;


procedure PrintHotelOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 2
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'A';

  if (GpSds['Old'] <> null) then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Old'];
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].HorizontalAlignment := xlCenter;
    end;

  x_cell := NextColumn(x_cell);

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Category'] <> null) and (x_type <> 4) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Category'];

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Ranking'] <> null) and (x_type <> 4) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Ranking'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Organisation'] <> null) and (x_type <> 4) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Organisation'];

  x_cell := NextColumn(x_cell);
  if GpSds['FromDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['FromDate']);

  x_cell := NextColumn(x_cell);
  if GpSds['ToDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['ToDate']);

  x_cell := NextColumn(x_cell);
  if (GpSds['AC'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['AC'];

  x_cell := NextColumn(x_cell);
  if (GpSds['RoomType'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['RoomType'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MealPlan'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MealPlan'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SingleQuoteCurr'] <> null) and (GpSds['SingleQuoteCurr'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SingleQuoteCurr'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DoubleQuoteCurr'] <> null) and (GpSds['DoubleQuoteCurr'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DoubleQuoteCurr'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TripleQuoteCurr'] <> null) and (GpSds['TripleQuoteCurr'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TripleQuoteCurr'];

  x_cell := SkipNextCol(x_cell, 3);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=K' + IntToStr(x_row);

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=L' + IntToStr(x_row) + '/2';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=(K' + IntToStr(x_row) + '+L' + IntToStr(x_row) + ')/3';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=L' + IntToStr(x_row) + '/2';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=(K' + IntToStr(x_row) + '+2*L' + IntToStr(x_row) + ')/5';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=L' + IntToStr(x_row) + '/2';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=(K' + IntToStr(x_row) + '+3*L' + IntToStr(x_row) + ')/7';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=L' + IntToStr(x_row) + '/2';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=(K' + IntToStr(x_row) + '+4*L' + IntToStr(x_row) + ')/9';

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=L' + IntToStr(x_row) + '/2';

end;

end.
