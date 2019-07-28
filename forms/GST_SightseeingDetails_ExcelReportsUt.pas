unit GST_SightseeingDetails_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes, Windows;

procedure GST_SightseeingDetails_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime;
                                           x_Recommend, x_MeetStr: string;
                                           x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_OptionOrder, x_OptionIndia: integer);
procedure PrintState (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_StartRow: integer);
procedure PrintServiceCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
procedure PrintService (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type, x_ReportType: integer; x_margin: string);
procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;

procedure GST_SightseeingDetails_PriceList (scExcelExport: TScExcelExport; x_TravelDate: TDateTime;
                                            x_Recommend, x_MeetStr: string;
                                            x_Currencies_id: integer; x_StateStr, x_Margin, x_FileName: string; x_OptionOrder, x_OptionIndia: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_loop, x_StartRow, x_EndRow, x_type, x_count : integer;
  x_PrevStates_id, x_PrevServiceCities_id, x_PrevServices_id, x_States_id, x_ServiceCities_id, x_Services_id, x_ReportType: integer;
  x_CurrStr, x_Misc, x_Guide, x_Entrance, x_Transport, x_Meet: string;
begin

  x_row := 1;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_loop := 0;

  while (x_loop < 4) do
    begin

      scExcelExport.CloseAllExcelApps;

      // Open Sheet
      scExcelExport.ExcelVisible := True;
      scExcelExport.LoadDefaultProperties;

      if x_loop = 0 then
        scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Misc_Guide_Entrance_PriceList.xlsx'
      else
        scExcelExport.Filename := x_FileName + '.xlsx';

      if x_loop = 0 then
        scExcelExport.WorksheetName := 'Misc'
      else if x_loop = 1 then
        scExcelExport.WorksheetName := 'Guide'
      else if x_loop = 2 then
        scExcelExport.WorksheetName := 'EntranceFees'
      else if x_loop = 3 then
        scExcelExport.WorksheetName := 'Transport';

      scExcelExport.ConnectTo := ctNewExcel;
      scExcelExport.Connect;

      // From Date
      scExcelExport.ExcelWorkSheet.Range['A3','A3'].Value := 'From ' + FormatDateTime('dd/mm/yyyy',x_TravelDate);

      x_CurrStr := 'Cost ';

      // Print Currency
      GpSds.Close;
      GpSds.CommandText := 'SELECT CurrencyCode FROM Currencies WHERE Currencies_id = ' + IntToStr(x_Currencies_id);
      GpSds.Open;
      if (not GpSds.Eof) and (GpSds['CurrencyCode'] <> null) then
        begin
          scExcelExport.ExcelWorkSheet.Range['M7','M7'].Value := GpSds['CurrencyCode'];
          x_CurrStr := x_CurrStr + ' in ' + GpSds['CurrencyCode'];
        end;

      // Exch Rate
      GpSds.Close;
      GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ')';
      GpSds.Open;
      if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
        begin
          scExcelExport.ExcelWorkSheet.Range['M4','M4'].Value := 'Exch Rate @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);
          x_CurrStr := x_CurrStr + ' @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);
        end;

      x_Misc := '0';
      x_Guide := '0';
      x_Entrance := '0';
      x_Transport := '0';
      x_Meet := '0';

      if (x_loop = 0) then
        x_Misc := '1'
      else if (x_loop = 1) then
        x_Guide := '1'
      else if (x_loop = 2) then
        x_Entrance := '1'
      else if (x_loop = 3) then
        begin
          x_Transport := '1';
          x_Meet := x_MeetStr;
        end;

      GpSds.Close;
      GpSds.CommandText := 'exec [p_ServiceDetails_PriceList_GST] ' +
            QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate)) + ', ' +
            QuotedStr(x_StateStr) + ',' +
            IntToStr(x_Currencies_id) + ', ' +
            x_Recommend + ', ' + x_Misc + ', ' +
            x_Guide + ', ' + x_Entrance + ', ' + x_Transport + ', ' + x_Meet + ', 1, ' +
            IntToStr(x_OptionOrder) + ', ' + IntToStr(x_OptionIndia);
      GpSds.Open;

      // Tour Gst (%)
      if (not GpSds.Eof) and (GpSds['TourOperatorGstPerc'] <> null) then
        scExcelExport.ExcelWorkSheet.Range['AC4','AC4'].Value := 'Tour Gst @ ' + FormatFloat('#,##0.0',GpSds['TourOperatorGstPerc']) + '%';

      x_StartRow := 9;
      x_row := x_StartRow;

      x_ReportType := 1;
      if (x_loop = 3) then
        x_ReportType := 2;

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

        PrintService (scExcelExport, GpSds, x_row, x_type, x_ReportType, x_margin);

        x_PrevStates_id := x_States_id;
        x_PrevServiceCities_id := x_ServiceCities_id;
        x_PrevServices_id := x_Services_id;

        if (x_count = 0) and (GpSds['MarginPerc'] <> null) then
          scExcelExport.ExcelWorkSheet.Range['Z7','Z7'].Value := '@ ' + FormatFloat('#,##0',GpSds['MarginPerc']) + '%';

        x_count := x_count + 1;

        GpSds.Next;

      end;

      x_EndRow := x_row;

      scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_StartRow),'AC'+IntToStr(x_EndRow)].NumberFormat := '#,##0';
      SetColumnColours (scExcelExport, x_StartRow, x_EndRow, x_ReportType);

      if x_loop = 0 then
        scExcelExport.ExcelWorkSheet.Range['Q1','W1'].EntireColumn.Hidden := true
      else if x_loop = 1 then
        begin
          scExcelExport.ExcelWorkSheet.Range['P1','P1'].EntireColumn.Hidden := true;
          scExcelExport.ExcelWorkSheet.Range['R1','W1'].EntireColumn.Hidden := true;
        end
      else if x_loop = 2 then
        begin
          scExcelExport.ExcelWorkSheet.Range['P1','Q1'].EntireColumn.Hidden := true;
          scExcelExport.ExcelWorkSheet.Range['S1','W1'].EntireColumn.Hidden := true;
        end
      else 
        begin
          scExcelExport.ExcelWorkSheet.Range['P1','R1'].EntireColumn.Hidden := true;
        end;

      scExcelExport.SaveAs(x_Filename,ffXLS);

      scExcelExport.Disconnect;
      scExcelExport.CloseAllExcelApps;

      x_loop := x_loop + 1;

    end;

  GpSds.Free;

end;


procedure SetColumnColours (scExcelExport: TScExcelExport; x_StartRow, x_EndRow, x_ReportType : integer);
var
  x_cell, x_FromCell, x_ToCell: string;
  i: integer;
begin

  if (x_ReportType = 1) then
    begin
      x_FromCell := 'M';
      x_ToCell := 'AD';
    end
  else
    begin
      x_FromCell := 'M';
      x_ToCell := 'AD';
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

procedure PrintServiceCity (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
begin

  x_row := x_row + 2;

  if GpSds['ServiceCity'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['ServiceCity'];

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := 12;
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';

end;

procedure PrintService (scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer; x_type, x_ReportType: integer; x_margin: string);
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
    begin
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['AgentService'];
      x_row := x_row + 1;
    end;

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Agent'] <> null) and (x_type <> 5) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Agent'];

  // if the service is not the same
  x_cell := NextColumn(x_cell);
  if (GpSds['Remarks'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Remarks'];

  x_cell := NextColumn(x_cell);
  if x_ReportType = 1 then
    begin
      if (GpSds['Resident'] <> null) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Resident'];
    end
  else
    begin
      if (GpSds['Vehicle'] <> null) then
        scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['Vehicle'];
    end;

  x_cell := NextColumn(x_cell);
  if (GpSds['MiscType'] <> null) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['MiscType'];

  x_cell := NextColumn(x_cell);
  if GpSds['wef'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

  x_cell := NextColumn(x_cell);
  if GpSds['wet'] <> null then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wet']);

  x_cell := NextColumn(x_cell);
  if x_ReportType = 1 then
    if (GpSds['FromPax'] <> null) then
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FromPax'];

  x_cell := NextColumn(x_cell);
  if x_ReportType = 1 then
    if (GpSds['ToPax'] <> null) then
      scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['ToPax'];

  x_cell := NextColumn(x_cell);

  x_cell := NextColumn(x_cell);
  if (GpSds['FinalQuoteCurr'] <> null) and (GpSds['FinalQuoteCurr'] <> 0) then
    scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := GpSds['FinalQuoteCurr'];

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


end.
