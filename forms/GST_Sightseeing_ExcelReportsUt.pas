unit GST_Sightseeing_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes, Windows;

procedure GST_Sightseeing_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_NumPax: integer;
                                     x_OneToTen, x_Transfer, x_Recommend, x_Misc, x_Guide, x_Entrance, x_Transport, x_Meet: string;
                                     x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
procedure PrintState (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
procedure PrintServiceCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
procedure PrintService (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType: integer);
procedure PrintServiceOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
procedure GST_Sightseeing_LineWise_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_NumPax: integer;
                                              x_OneToTen, x_Transfer, x_Recommend, x_Misc, x_Guide, x_Entrance, x_Transport, x_Meet: string;
                                              x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
procedure PrintServiceOneToTen_LineWise (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;


procedure GST_Sightseeing_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_NumPax: integer;
                                     x_OneToTen, x_Transfer, x_Recommend, x_Misc, x_Guide, x_Entrance, x_Transport, x_Meet: string;
                                     x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevStates_id, x_PrevServiceCities_id, x_PrevServices_id, x_States_id, x_ServiceCities_id, x_Services_id: integer;
  x_CurrStr: string;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  if (x_ReportType = 1) or (x_ReportType = 2) then
    begin
      scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Sightseeing_PriceList.xlsx';
    end
  else
    begin
      scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Sightseeing_PriceList_1_10.xlsx'
    end;

  scExcelExport.WorksheetName := 'Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  if x_Transfer = '1' then
    scExcelExport.ExcelWorkSheet.Range['A1','A1'].Value := 'Transfers';

  // From Date
  scExcelExport.ExcelWorkSheet.Range['A3','A3'].Value := 'From ' + FormatDateTime('dd/mm/yyyy',x_TravelDate);
  if (x_ReportType = 1) or (x_ReportType = 2) then
    scExcelExport.ExcelWorkSheet.Range['A4','A4'].Value := 'Based on ' + IntToStr(x_NumPax) + ' Pax';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_CurrStr := 'Cost Per Pax ';

  // Print Currency
  GpSds.Close;
  GpSds.CommandText := 'SELECT CurrencyCode FROM Currencies WHERE Currencies_id = ' + IntToStr(x_Currencies_id);
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['CurrencyCode'] <> null) then
    begin
      if (x_ReportType = 1) or (x_ReportType = 2) then
        scExcelExport.ExcelWorkSheet.Range['J7','J7'].Value := GpSds['CurrencyCode'];
      x_CurrStr := x_CurrStr + ' in ' + GpSds['CurrencyCode'];
    end;

  // Exch Rate
  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ')';
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
    begin
      if (x_ReportType = 1) or (x_ReportType = 2) then
        scExcelExport.ExcelWorkSheet.Range['J4','J4'].Value := 'Exch Rate @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);
      x_CurrStr := x_CurrStr + ' @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

    end;

  if x_ReportType = 3 then
    scExcelExport.ExcelWorkSheet.Range['J5','J5'].Value := x_CurrStr;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Services_PriceList_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ', ' +
        QuotedStr(x_StateStr) + ',' +
        IntToStr(x_Currencies_id) + ', ' + IntToStr(x_NumPax) + ', ' +
        x_OneToTen + ', ' + x_Transfer + ', ' + x_Recommend + ', ' + x_Misc + ', ' +
        x_Guide + ', ' + x_Entrance + ', ' + x_Transport + ', ' + x_Meet + ', 1, ' +
        IntToStr(x_OptionOrder) + ', ' + IntToStr(x_OptionIndia);
  GpSds.Open;

  // Tour Gst (%)
  if (x_ReportType = 1) then
   if (not GpSds.Eof) and (GpSds['TourOperatorGstPerc'] <> null) then
     scExcelExport.ExcelWorkSheet.Range['Z4','Z4'].Value := 'Tour Gst @ ' + FormatFloat('#,##0.0',GpSds['TourOperatorGstPerc']) + '%';

  x_StartRow := 9;
  x_row := x_StartRow;

  x_PrevStates_id := -1;
  x_PrevServiceCities_id := -1;
  x_PrevServices_id := -1;
  x_count := 0;

  while (not GpSds.EOF) do
    begin

      x_States_id := GpSds['States_id'];
      if (x_States_id <> x_PrevStates_id) then
        PrintState (scExcelExport, GpSds, x_row, x_StartRow);

      x_ServiceCities_id := GpSds['ServiceCities_id'];
      if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        PrintServiceCity (scExcelExport, GpSds, x_row);

      x_Services_id := GpSds['Services_id'];
      if (x_count = 0) then
        x_type := 2
      else if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        x_type := 3
      else if (x_Services_id <> x_PrevServices_id) then
        x_type := 4
      else
        x_type := 5;

      if (x_ReportType = 1) or (x_ReportType = 2) then
        PrintService (scExcelExport, GpSds, x_row, x_type, x_margin)
      else
        PrintServiceOneToTen (scExcelExport, GpSds, x_row, x_type);

      x_PrevStates_id := x_States_id;
      x_PrevServiceCities_id := x_ServiceCities_id;
      x_PrevServices_id := x_Services_id;

      if (x_count = 0) and (GpSds['MarginPerc'] <> null) and (x_ReportType = 1) then
        scExcelExport.ExcelWorkSheet.Range['W7','W7'].Value := '@ ' + FormatFloat('#,##0',GpSds['MarginPerc']) + '%';

      x_count := x_count + 1;

      GpSds.Next;

    end;

  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'Z'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
  SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

  if (x_margin = '0') then
    scExcelExport.ExcelWorkSheet.Range['W1','Z1'].EntireColumn.Hidden := true;

  if (x_Misc = '0') and ((x_ReportType = 1) or (x_ReportType = 2)) then
    scExcelExport.ExcelWorkSheet.Range['M1','M1'].EntireColumn.Hidden := true;

  if (x_Guide = '0') and ((x_ReportType = 1) or (x_ReportType = 2)) then
    scExcelExport.ExcelWorkSheet.Range['N1','N1'].EntireColumn.Hidden := true;

  if (x_Entrance = '0') and ((x_ReportType = 1) or (x_ReportType = 2)) then
    scExcelExport.ExcelWorkSheet.Range['O1','O1'].EntireColumn.Hidden := true;

  if (x_Transport = '0') and ((x_ReportType = 1) or (x_ReportType = 2)) then
    scExcelExport.ExcelWorkSheet.Range['P1','T1'].EntireColumn.Hidden := true;

  if (x_Meet = '0') and ((x_ReportType = 1) or (x_ReportType = 2)) then
    scExcelExport.ExcelWorkSheet.Range['S1','S1'].EntireColumn.Hidden := true;

  GpSds.Free;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;

procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType : integer);
var
  x_cell, x_FromCell, x_ToCell: string;
  i, x_row: integer;
begin

  if (x_ReportType = 1) or (x_ReportType = 2) then
    begin
      x_FromCell := 'J';
      x_ToCell := 'AA';
    end
  else if (x_ReportType = 3) then
    begin
      x_FromCell := 'J';
      x_ToCell := 'T';
    end
  else
    begin
      x_FromCell := 'J';
      x_ToCell := 'T';
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

  // the summation line earlier drawn gets wiped out by the colouring, so redraw it
  if (x_ReportType = 4) then
    begin

      for x_row := x_StartRow to x_EndRow do
        begin
          if scExcelExport.ExcelWorkSheet.Range[x_FromCell+IntToStr(x_row),x_FromCell+IntToStr(x_row)].Font.Bold = true then
            scExcelExport.ExcelWorkSheet.Range[x_FromCell+IntToStr(x_row),x_ToCell+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;

        end;

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

procedure PrintServiceCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
begin

  x_row := x_row + 2;

  if GpSds['ServiceCity'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['ServiceCity'];

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := 12;
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';

end;

procedure PrintService (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 0
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 0
  else if x_type = 4 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'C';

  // if the agent is not the same
  if (GpSds['AgentService'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['AgentService'];

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Vehicle'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Vehicle'];

  x_cell := NextColumn(x_cell);
  if (GpSds['NumVehicles'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['NumVehicles'];

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
  if (GpSds['MiscCost'] <> null) and (GpSds['MiscCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MiscCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['GuideCost'] <> null) and (GpSds['GuideCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['GuideCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['EntranceFees'] <> null) and (GpSds['EntranceFees'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['EntranceFees'];

  x_cell := NextColumn(x_cell);
  if (GpSds['CarHireCost'] <> null) and (GpSds['CarHireCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['CarHireCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ParkingCost'] <> null) and (GpSds['ParkingCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ParkingCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['RoadTax'] <> null) and (GpSds['RoadTax'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['RoadTax'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MeetAssistCost'] <> null) and (GpSds['MeetAssistCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MeetAssistCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['EntryApCost'] <> null) and (GpSds['EntryApCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['EntryApCost'];

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


procedure PrintServiceOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 0
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 0
  else if x_type = 4 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'C';

  // if the agent is not the same
  if (GpSds['AgentService'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['AgentService'];

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Vehicle'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Vehicle'];

  x_cell := NextColumn(x_cell);
  if GpSds['wef'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

  x_cell := NextColumn(x_cell);
  if GpSds['wet'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wet']);


  x_cell := SkipNextCol(x_cell, 3);
  if GpSds['Cost_1'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_1'];
      if (GpSds['Comment_1'] <> null) and (GpSds['Comment_1'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_1']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_2'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_2'];
      if (GpSds['Comment_2'] <> null) and (GpSds['Comment_2'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_2']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_3'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_3'];
      if (GpSds['Comment_3'] <> null) and (GpSds['Comment_3'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_3']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_4'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_4'];
      if (GpSds['Comment_4'] <> null) and (GpSds['Comment_4'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_4']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_5'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_5'];
      if (GpSds['Comment_5'] <> null) and (GpSds['Comment_5'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_5']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_6'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_6'];
      if (GpSds['Comment_6'] <> null) and (GpSds['Comment_6'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_6']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_7'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_7'];
      if (GpSds['Comment_7'] <> null) and (GpSds['Comment_7'] > '')  then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_7']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_8'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_8'];
      if (GpSds['Comment_8'] <> null) and (GpSds['Comment_8'] > '')  then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_8']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_9'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_9'];
      if (GpSds['Comment_9'] <> null) and (GpSds['Comment_9'] > '')  then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_9']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_10'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_10'];
      if (GpSds['Comment_10'] <> null) and (GpSds['Comment_10'] > '')  then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_10']);
    end;


end;


procedure GST_Sightseeing_Linewise_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_NumPax: integer;
                                              x_OneToTen, x_Transfer, x_Recommend, x_Misc, x_Guide, x_Entrance, x_Transport, x_Meet: string;
                                              x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevStates_id, x_PrevServiceCities_id, x_PrevServices_id, x_States_id, x_ServiceCities_id, x_Services_id: integer;
  x_CurrStr: string;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  if (x_ReportType = 4) then
    begin
      scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Sightseeing_PriceList_Stacked_1_10.xlsx'
    end;

  scExcelExport.WorksheetName := 'Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  if x_Transfer = '1' then
    scExcelExport.ExcelWorkSheet.Range['A1','A1'].Value := 'Transfers';
  
  // From Date
  scExcelExport.ExcelWorkSheet.Range['A3','A3'].Value := 'From ' + FormatDateTime('dd/mm/yyyy',x_TravelDate);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_CurrStr := 'Cost Per Pax ';

  // Print Currency
  GpSds.Close;
  GpSds.CommandText := 'SELECT CurrencyCode FROM Currencies WHERE Currencies_id = ' + IntToStr(x_Currencies_id);
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['CurrencyCode'] <> null) then
    x_CurrStr := x_CurrStr + ' in ' + GpSds['CurrencyCode'];

  // Exch Rate
  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ')';
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
    x_CurrStr := x_CurrStr + ' @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

  if x_ReportType = 4 then
    scExcelExport.ExcelWorkSheet.Range['J5','J5'].Value := x_CurrStr;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Services_PriceList_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ', ' +
        QuotedStr(x_StateStr) + ',' +
        IntToStr(x_Currencies_id) + ', ' + IntToStr(x_NumPax) + ', ' +
        x_OneToTen + ', ' + x_Transfer + ', ' + x_Recommend + ', ' + x_Misc + ', ' +
        x_Guide + ', ' + x_Entrance + ', ' + x_Transport + ', ' + x_Meet + ', 0, ' +
        IntToStr(x_OptionOrder) + ', ' + IntToStr(x_OptionIndia);
  GpSds.ExecSQL;

  GpSds.Close;
  GpSds.CommandText := 'SELECT DISTINCT COALESCE(c.States_id,-1) AS States_id, ' +
    'CASE WHEN c.States_id IS NULL THEN '''' ELSE s2.state END AS [State], c.City AS ServiceCity, ' +
    's.[Description] AS AgentService, a.organisation + '', '' + COALESCE(a.City,'''') AS Agent, ' +
    't.Wef, t.Wet, t.Addressbook_id AS Agents_id, t.ServiceCities_id, t.Services_id ' +
    'FROM tmpServicesPriceList_LineWise t ' +
    'LEFT JOIN cities c ON t.ServiceCities_id = c.cities_id ' +
    'LEFT JOIN states s2 ON c.States_id = s2.states_id ' +
    'LEFT JOIN [services] s ON t.Services_id = s.services_id ' +
    'LEFT JOIN addressbook a ON t.addressbook_id = a.addressbook_id ';
  GpSds.Open;

  x_StartRow := 9;
  x_row := x_StartRow;

  x_PrevStates_id := -1;
  x_PrevServiceCities_id := -1;
  x_PrevServices_id := -1;
  x_count := 0;

  while (not GpSds.EOF) do
    begin

      x_States_id := GpSds['States_id'];
      if (x_States_id <> x_PrevStates_id) then
        PrintState (scExcelExport, GpSds, x_row, x_StartRow);

      x_ServiceCities_id := GpSds['ServiceCities_id'];
      if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        PrintServiceCity (scExcelExport, GpSds, x_row);

      x_Services_id := GpSds['Services_id'];
      if (x_count = 0) then
        x_type := 2
      else if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        x_type := 3
      else if (x_Services_id <> x_PrevServices_id) then
        x_type := 4
      else
        x_type := 5;

      PrintServiceOneToTen_LineWise (scExcelExport, GpSds, x_row, x_type);

      x_PrevStates_id := x_States_id;
      x_PrevServiceCities_id := x_ServiceCities_id;
      x_PrevServices_id := x_Services_id;

      x_count := x_count + 1;

      GpSds.Next;

    end;

  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'S'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
  SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

  GpSds.Free;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;

procedure PrintServiceOneToTen_LineWise (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
var
  x_cell, x_FromCell, x_ToCell: string;
  Gp2Sds: TSQLDataSet;
  x_count: integer;
begin

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  x_cell := 'C';

  // if the agent is not the same
  if (GpSds['AgentService'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['AgentService'];

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];

  x_cell := NextColumn(x_cell);
  if GpSds['wef'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

  x_cell := NextColumn(x_cell);
  if GpSds['wet'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wet']);

  // Print Currency
  Gp2Sds.Close;
  Gp2Sds.CommandText := 'SELECT CostTypeDesc, Cost_1, Cost_2, Cost_3, Cost_4, Cost_5, Cost_6, Cost_7, Cost_8, Cost_9, Cost_10, ' +
   'Comment_1, Comment_2, Comment_3, Comment_4, Comment_5, Comment_6, Comment_7, Comment_8, Comment_9, Comment_10 ' +
   'FROM tmpServicesPriceList_LineWise ' +
   'WHERE Addressbook_id = ' + IntToStr(GpSds['Agents_id']) + ' ' +
   'AND Services_id = ' + IntToStr(GpSds['Services_id']) + ' ' +
   'AND ServiceCities_id = ' + IntToStr(GpSds['ServiceCities_id']) + ' ';
  Gp2Sds.Open;

  x_count := 0;

  while not Gp2Sds.eof do
    begin

      x_cell := 'I';
      if Gp2Sds['CostTypeDesc'] <> null then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['CostTypeDesc'];

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_1'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_1'];
          if (Gp2Sds['Comment_1'] <> null) and (Gp2Sds['Comment_1'] > '') then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_1']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_2'] <> null then
        begin
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_2'];
        if (Gp2Sds['Comment_2'] <> null) and (Gp2Sds['Comment_2'] > '') then
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_2']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_3'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_3'];
          if (Gp2Sds['Comment_3'] <> null) and (Gp2Sds['Comment_3'] > '') then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_3']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_4'] <> null then
        begin
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_4'];
        if (Gp2Sds['Comment_4'] <> null) and (Gp2Sds['Comment_4'] > '') then
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_4']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_5'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_5'];
          if (Gp2Sds['Comment_5'] <> null) and (Gp2Sds['Comment_5'] > '') then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_5']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_6'] <> null then
        begin
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_6'];
        if (Gp2Sds['Comment_6'] <> null) and (Gp2Sds['Comment_6'] > '') then
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_6']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_7'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_7'];
          if (Gp2Sds['Comment_7'] <> null) and (Gp2Sds['Comment_7'] > '') then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_7']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_8'] <> null then
        begin
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_8'];
        if (Gp2Sds['Comment_8'] <> null) and (Gp2Sds['Comment_8'] > '') then
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_8']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_9'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_9'];
          if (Gp2Sds['Comment_9'] <> null) and (Gp2Sds['Comment_9'] > '') then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_9']);
        end;

      x_cell := NextColumn(x_cell);
      if Gp2Sds['Cost_10'] <> null then
        begin
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Cost_10'];
        if (Gp2Sds['Comment_10'] <> null) and (Gp2Sds['Comment_10'] > '') then
          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(Gp2Sds['Comment_10']);
        end;

      x_count := x_count + 1;
      x_row := x_row + 1;

      Gp2Sds.Next;

    end;

  x_FromCell := 'J';
  x_ToCell := 'T';

  // If more than one line, then add a line for summation
  if x_count > 1 then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_FromCell+IntToStr(x_row),x_ToCell+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;

      x_cell := x_FromCell;

      while (x_cell <> x_ToCell) do
        begin

          scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '=SUM(' + x_cell + IntToStr(x_row-1) + ':' + x_cell + IntToStr(x_row-x_count) + ')';

          x_cell := NextColumn(x_cell);

        end;

      scExcelExport.ExcelWorkSheet.Range[x_FromCell+IntToStr(x_row),x_ToCell+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 1;

    end;

  x_row := x_row + 1;

  Gp2Sds.Free;

end;



end.
