unit GST_Trains_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes, Windows;

procedure GST_Trains_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_Currencies_id: integer; x_Margin, x_FileName: string; x_ReportType: integer);
procedure PrintOvernight (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
procedure PrintTrain (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType: integer);
procedure PrintTrainOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;


procedure GST_Trains_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_Currencies_id: integer; x_Margin,
                                x_FileName: string; x_ReportType: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevOvernight, x_Overnight: string;
  x_PrevTrains_id, x_Trains_id: integer;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  if (x_ReportType = 1) or (x_ReportType = 2) then
    scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Train_PriceList.xlsx'
  else
    scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Train_PriceList_1_10.xlsx';

  scExcelExport.WorksheetName := 'Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  // From Date
  scExcelExport.ExcelWorkSheet.Range['A3','A3'].Value := 'From ' + FormatDateTime('dd/mm/yyyy',x_TravelDate);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  // Print Currency
  GpSds.Close;
  GpSds.CommandText := 'SELECT CurrencyCode FROM Currencies WHERE Currencies_id = ' + IntToStr(x_Currencies_id);
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['CurrencyCode'] <> null) then
    scExcelExport.ExcelWorkSheet.Range['M6','M6'].Value := GpSds['CurrencyCode'];

  // Exch Rate
  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ')';
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
    scExcelExport.ExcelWorkSheet.Range['M3','M3'].Value := 'Exch Rate @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

  GpSds.Close;
  GpSds.CommandText := 'exec [p_TrainTicketsPriceList_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ', ' +
        IntToStr(x_Currencies_id) + ', 1';
  GpSds.Open;

  // Tour Gst (%)
  if (x_ReportType = 1) then
   if (not GpSds.Eof) and (GpSds['TourOperatorGstPerc'] <> null) then
     scExcelExport.ExcelWorkSheet.Range['AB3','AB3'].Value := 'Tour Gst @ ' + FormatFloat('#,##0.0',GpSds['TourOperatorGstPerc']) + '%';

  x_StartRow := 8;
  x_row := x_StartRow;

  x_PrevOvernight := '$#$#';
  x_PrevTrains_id := -1;
  x_count := 0;

  while (not GpSds.EOF) do
    begin

      x_Overnight := GpSds['Overnight'];
      if (x_Overnight <> x_PrevOvernight) then
        PrintOvernight (scExcelExport, GpSds, x_row, x_StartRow);

      x_Trains_id := GpSds['Trains_id'];
      if (x_count = 0) then
        x_type := 1
      else if (x_Trains_id <> x_PrevTrains_id) then
        x_type := 2
      else
        x_type := 3;

      if (x_ReportType = 1) or (x_ReportType = 2) then
        PrintTrain (scExcelExport, GpSds, x_row, x_type, x_margin)
      else
        PrintTrainOneToTen (scExcelExport, GpSds, x_row, x_type);

      x_PrevOvernight := x_Overnight;
      x_PrevTrains_id := x_Trains_id;

      if (x_count = 0) and (GpSds['MarginPerc'] <> null) and (x_ReportType = 1) then
        scExcelExport.ExcelWorkSheet.Range['Y6','Y6'].Value := '@ ' + FormatFloat('#,##0',GpSds['MarginPerc']) + '%';

      x_count := x_count + 1;

      GpSds.Next;

    end;

  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_StartRow),'AB'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
  SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

  if (x_margin = '0') then
    scExcelExport.ExcelWorkSheet.Range['Y1','AB1'].EntireColumn.Hidden := true;

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
      x_FromCell := 'M';
      x_ToCell := 'AC';
    end
  else
    begin
      x_FromCell := 'M';
      x_ToCell := 'AC';
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

procedure PrintOvernight (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
begin

  if (x_row > x_StartRow) then
    x_row := x_row + 4;

  if GpSds['Overnight'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Overnight'];

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := 14;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;

end;


procedure PrintTrain (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 1
  else if x_type = 2 then
    x_row := x_row + 1
  else
    x_row := x_row + 1;

  x_cell := 'B';

  // if the hotel is not the same
  if (GpSds['TrainNo'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TrainNo'];

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['TrainName'] <> null)  then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TrainName'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Schedule'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Schedule'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Timing'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Timing'];

  x_cell := NextColumn(x_cell);
  if (GpSds['FromCity'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FromCity'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ToCity'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToCity'];

  x_cell := NextColumn(x_cell);
  if (GpSds['FromStation'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FromStation'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ToStation'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToStation'];

  x_cell := NextColumn(x_cell);
  if GpSds['wef'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

  x_cell := NextColumn(x_cell);
  if GpSds['wet'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wet']);

  x_cell := NextColumn(x_cell);

  if (x_margin = '1') then
    begin
      x_cell := NextColumn(x_cell);
      if (GpSds['FinalQuoteCurr'] <> null) and (GpSds['FinalQuoteCurr'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FinalQuoteCurr'];
    end
  else
    begin
      x_cell := NextColumn(x_cell);
      if (GpSds['TotalCost'] <> null) and (GpSds['TotalCost'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TotalCost'];
    end;

  x_cell := SkipNextCol(x_cell, 3);
  if (GpSds['TrainWiseCost'] <> null) and (GpSds['TrainWiseCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TrainWiseCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DistanceWiseCost'] <> null) and (GpSds['DistanceWiseCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DistanceWiseCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ReservationCost'] <> null) and (GpSds['ReservationCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ReservationCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SupplementaryCost'] <> null) and (GpSds['SupplementaryCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SupplementaryCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SafetyLevyCost'] <> null) and (GpSds['SafetyLevyCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SafetyLevyCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['DevelopmentCost'] <> null) and (GpSds['DevelopmentCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['DevelopmentCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['SfCost'] <> null) and (GpSds['SfCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['SfCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['VendorGst'] <> null) and (GpSds['VendorGst'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['VendorGst'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TotalCost'] <> null) and (GpSds['TotalCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TotalCost'];

  if (x_margin = '1') then
    begin

      x_cell := NextColumn(x_cell);
      if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Margin'];

      x_cell := NextColumn(x_cell);
      if (GpSds['Quote'] <> null) and (GpSds['Quote'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Quote'];

      x_cell := NextColumn(x_cell);

      x_cell := NextColumn(x_cell);
      if (GpSds['FinalQuote'] <> null) and (GpSds['FinalQuote'] <> 0) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FinalQuote'];

    end;

end;


procedure PrintTrainOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 1
  else if x_type = 2 then
    x_row := x_row + 1
  else
    x_row := x_row + 1;

  x_cell := 'B';

  // if the hotel is not the same
  if (GpSds['TrainNo'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TrainNo'];

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['TrainName'] <> null)  then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TrainName'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Schedule'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Schedule'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Timing'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Timing'];

  x_cell := NextColumn(x_cell);
  if (GpSds['FromCity'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FromCity'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ToCity'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToCity'];

  x_cell := NextColumn(x_cell);
  if (GpSds['FromStation'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FromStation'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ToStation'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToStation'];

  x_cell := NextColumn(x_cell);
  if GpSds['wef'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

  x_cell := NextColumn(x_cell);
  if GpSds['wet'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wet']);

  x_cell := NextColumn(x_cell);


  x_cell := NextColumn(x_cell);
  if (GpSds['FinalQuoteCurr'] <> null) and (GpSds['FinalQuoteCurr'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FinalQuoteCurr'];

  x_cell := SkipNextCol(x_cell, 3);
  if GpSds['Cost_1'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_1'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_2'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_2'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_3'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_3'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_4'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_4'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_5'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_5'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_6'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_6'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_7'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_7'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_8'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_8'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_9'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_9'];

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_10'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_10'];


end;

end.
