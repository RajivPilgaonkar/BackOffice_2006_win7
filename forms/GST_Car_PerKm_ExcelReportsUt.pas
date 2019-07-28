unit GST_Car_PerKm_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes, Windows;

procedure GST_Car_PerKm_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
procedure PrintState (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
procedure PrintServiceCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
procedure PrintAgent (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType: integer);
procedure PrintAgentOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
procedure PrintAgentOneToTen_LineWise (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
procedure GST_Car_PerKm_LineWise_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;


procedure GST_Car_PerKm_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_Currencies_id: integer; x_StateStr, x_Margin,
                                   x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevStates_id, x_PrevAgents_id, x_States_id, x_Agents_id : integer;
  x_ServiceCities_id, x_PrevServiceCities_id: integer;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  if (x_ReportType = 1) or (x_ReportType = 2) then
    scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\CarHire_PerKm_PriceList.xlsx'
  else
    scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\CarHire_PerKm_PriceList_1_10.xlsx';

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
    scExcelExport.ExcelWorkSheet.Range['I6','I6'].Value := GpSds['CurrencyCode'];

  // Exch Rate
  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ')';
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
    scExcelExport.ExcelWorkSheet.Range['I3','I3'].Value := 'Exch Rate @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

  GpSds.Close;
  GpSds.CommandText := 'exec [p_CarHire_PerKm_PriceList_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ', ' +
        QuotedStr(x_StateStr) + ',' +
        IntToStr(x_Currencies_id) + ',1 , ' +
        IntToStr(x_OptionOrder) + ', ' + IntToStr(x_OptionIndia);
  GpSds.Open;

  // Tour Gst (%)
  if (x_ReportType = 1) then
   if (not GpSds.Eof) and (GpSds['TourOperatorGstPerc'] <> null) then
     scExcelExport.ExcelWorkSheet.Range['X3','X3'].Value := 'Tour Gst @ ' + FormatFloat('#,##0.0',GpSds['TourOperatorGstPerc']) + '%';

  x_StartRow := 8;
  x_row := x_StartRow;

  x_PrevStates_id := -1;
  x_PrevServiceCities_id := -1;
  x_PrevAgents_id := -1;
  x_count := 0;

  while (not GpSds.EOF) do
    begin

      x_States_id := GpSds['States_id'];
      if (x_States_id <> x_PrevStates_id) then
        PrintState (scExcelExport, GpSds, x_row, x_StartRow);

      x_ServiceCities_id := GpSds['ServiceCities_id'];
      if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        PrintServiceCity (scExcelExport, GpSds, x_row, x_StartRow);

      x_Agents_id := GpSds['Agents_id'];
      if (x_count = 0) then
        x_type := 2
      else if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        x_type := 3
      else if (x_Agents_id <> x_PrevAgents_id) then
        x_type := 4
      else
        x_type := 5;

      if (x_ReportType = 1) or (x_ReportType = 2) then
        PrintAgent (scExcelExport, GpSds, x_row, x_type, x_margin)
      else
        PrintAgentOneToTen (scExcelExport, GpSds, x_row, x_type);

      x_PrevStates_id := x_States_id;
      x_PrevServiceCities_id := x_ServiceCities_id;
      x_PrevAgents_id := x_Agents_id;

      if (x_count = 0) and (GpSds['MarginPerc'] <> null) and (x_ReportType = 1) then
        scExcelExport.ExcelWorkSheet.Range['U6','U6'].Value := '@ ' + FormatFloat('#,##0',GpSds['MarginPerc']) + '%';

      x_count := x_count + 1;

      GpSds.Next;

    end;

  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'X'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
  if (x_ReportType = 1) or (x_ReportType = 2) then
    scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_EndRow)].NumberFormat := '#,##0.0';
  SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

  if (x_margin = '0') then
    scExcelExport.ExcelWorkSheet.Range['U1','X1'].EntireColumn.Hidden := true;

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
      x_FromCell := 'I';
      x_ToCell := 'Y';
    end
  else
    begin
      x_FromCell := 'I';
      x_ToCell := 'Y';
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

procedure PrintServiceCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
begin

  if (x_row > x_StartRow) then
    x_row := x_row + 2;

  if GpSds['ServiceCity'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['ServiceCity'];

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := 12;
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;

end;

procedure PrintAgent (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer; x_margin: string);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 2
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 0
  else if x_type = 4 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'C';

  // if the hotel is not the same
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Vehicle'] <> null)  then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Vehicle'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ToPax'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToPax'];

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
  if (GpSds['CostPerKm'] <> null) and (GpSds['CostPerKm'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['CostPerKm'];

  x_cell := NextColumn(x_cell);
  if (GpSds['MinKm'] <> null) and (GpSds['MinKm'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MinKm'];

  x_cell := NextColumn(x_cell);
  if (GpSds['CarHireCost'] <> null) and (GpSds['CarHireCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['CarHireCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['NightHaltCost'] <> null) and (GpSds['NightHaltCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['NightHaltCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['TollTax'] <> null) and (GpSds['TollTax'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['TollTax'];

  x_cell := NextColumn(x_cell);
  if (GpSds['EscortCost'] <> null) and (GpSds['EscortCost'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['EscortCost'];

  x_cell := NextColumn(x_cell);
  if (GpSds['Commission'] <> null) and (GpSds['Commission'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Commission'];

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


procedure PrintAgentOneToTen (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
var
  x_cell: string;
begin

  if x_type = 1 then
    x_row := x_row + 2
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 0
  else if x_type = 4 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'C';

  // if the hotel is not the same
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  // if the hotel is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Vehicle'] <> null)  then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Vehicle'];

  x_cell := NextColumn(x_cell);
  if (GpSds['ToPax'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToPax'];

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


procedure GST_Car_PerKm_LineWise_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime; x_Currencies_id: integer; x_StateStr, x_Margin,
                                            x_FileName: string; x_ReportType, x_OptionOrder, x_OptionIndia: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevStates_id, x_PrevAgents_id, x_States_id, x_Agents_id : integer;
  x_ServiceCities_id, x_PrevServiceCities_id: integer;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  if (x_ReportType = 4) then
    begin
      scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\CarHire_PerKm_PriceList_1_10_SingleLine.xlsx'
    end;

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
    scExcelExport.ExcelWorkSheet.Range['I6','I6'].Value := GpSds['CurrencyCode'];

  // Exch Rate
  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ')';
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
    scExcelExport.ExcelWorkSheet.Range['I3','I3'].Value := 'Exch Rate @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

  GpSds.Close;
  GpSds.CommandText := 'exec [p_CarHire_PerKm_PriceList_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ', ' +
        QuotedStr(x_StateStr) + ',' +
        IntToStr(x_Currencies_id) + ',2 , ' +
        IntToStr(x_OptionOrder) + ', ' + IntToStr(x_OptionIndia);
  GpSds.Open;

  // Tour Gst (%)
  if (x_ReportType = 1) then
   if (not GpSds.Eof) and (GpSds['TourOperatorGstPerc'] <> null) then
     scExcelExport.ExcelWorkSheet.Range['X3','X3'].Value := 'Tour Gst @ ' + FormatFloat('#,##0.0',GpSds['TourOperatorGstPerc']) + '%';

  x_StartRow := 8;
  x_row := x_StartRow;

  x_PrevStates_id := -1;
  x_PrevServiceCities_id := -1;
  x_PrevAgents_id := -1;
  x_count := 0;

  while (not GpSds.EOF) do
    begin

      x_States_id := GpSds['States_id'];
      if (x_States_id <> x_PrevStates_id) then
        PrintState (scExcelExport, GpSds, x_row, x_StartRow);

      x_ServiceCities_id := GpSds['ServiceCities_id'];
      if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        PrintServiceCity (scExcelExport, GpSds, x_row, x_StartRow);

      x_Agents_id := GpSds['Agents_id'];
      if (x_count = 0) then
        x_type := 2
      else if (x_ServiceCities_id <> x_PrevServiceCities_id) then
        x_type := 3
      else if (x_Agents_id <> x_PrevAgents_id) then
        x_type := 4
      else
        x_type := 5;

      PrintAgentOneToTen_LineWise (scExcelExport, GpSds, x_row, x_type);

      x_PrevStates_id := x_States_id;
      x_PrevServiceCities_id := x_ServiceCities_id;
      x_PrevAgents_id := x_Agents_id;

      x_count := x_count + 1;

      GpSds.Next;

    end;

  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'X'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
  SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

  GpSds.Free;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;


procedure PrintAgentOneToTen_LineWise (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type: integer);
var
  x_cell: string;
  Gp2Sds: TSQLDataSet;
begin

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  if x_type = 1 then
    x_row := x_row + 2
  else if x_type = 2 then
    x_row := x_row + 0
  else if x_type = 3 then
    x_row := x_row + 0
  else if x_type = 4 then
    x_row := x_row + 2
  else
    x_row := x_row + 1;

  x_cell := 'C';

  // if the hotel is not the same
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  x_cell := SkipNextCol(x_cell, 3);
  if GpSds['wef'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

  x_cell := NextColumn(x_cell);
  if GpSds['wet'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wet']);

  x_cell := SkipNextCol(x_cell, 5);
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
      if (GpSds['Comment_7'] <> null) and (GpSds['Comment_7'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_7']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_8'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_8'];
      if (GpSds['Comment_8'] <> null) and (GpSds['Comment_8'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_8']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_9'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_9'];
      if (GpSds['Comment_9'] <> null) and (GpSds['Comment_9'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_9']);
    end;

  x_cell := NextColumn(x_cell);
  if GpSds['Cost_10'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Cost_10'];
      if (GpSds['Comment_10'] <> null) and (GpSds['Comment_10'] > '') then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].AddComment(GpSds['Comment_10']);
    end;

  // Print Currency
  Gp2Sds.Close;
  Gp2Sds.CommandText := 'SELECT v.Vehicle, t.ToPax, t.FinalQuoteCurr ' +
   'FROM tmpCarPriceList t ' +
   'LEFT JOIN Vehicles v ON t.Vehicles_id = v.Vehicles_id ' +
   'WHERE t.Addressbook_id = ' + IntToStr(GpSds['Agents_id']) + ' ' +
   'AND t.Cities_id = ' + IntToStr(GpSds['ServiceCities_id']) + ' ' +
   'AND t.Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',GpSds['Wef']));
  Gp2Sds.Open;

  while not Gp2Sds.eof do
    begin

      x_cell := 'D';
      if Gp2Sds['Vehicle'] <> null then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Vehicle'];

      x_cell := NextColumn(x_cell);
      if Gp2Sds['ToPax'] <> null then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['ToPax'];

      x_cell := SkipNextCol(x_cell, 4);
      if Gp2Sds['FinalQuoteCurr'] <> null then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['FinalQuoteCurr'];

      x_row := x_row + 1;

      Gp2Sds.Next;

    end;

  x_row := x_row + 1;

  Gp2Sds.Free;

end;


end.
