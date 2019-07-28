unit Gst_QuoModules_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes;

procedure GST_QuoModule_Excel(scExcelExport: TScExcelExport; x_QuoModules_id: integer; x_FileName: string);
procedure GST_QuoModule_CommonSettings(scExcelExport: TScExcelExport);
procedure GstQuoModule_Header (scExcelExport: TScExcelExport; var x_row: integer; x_QuoModules_id: integer);
procedure GstQuoModule_PaxNames (scExcelExport: TScExcelExport; var x_row: integer; x_QuoModules_id: integer);
procedure GstQuoModule_Details (scExcelExport: TScExcelExport; var x_row: integer; x_QuoModules_id: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;

var
  _g_isTourCancelled: boolean;

procedure GST_QuoModule_Excel(scExcelExport: TScExcelExport; x_QuoModules_id: integer; x_FileName: string);
var
  x_row, x_StartRow, x_EndRow: integer;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GST_QuoModule_CommonSettings(scExcelExport);

  x_StartRow := x_row;

  GstQuoModule_Header (scExcelExport, x_row, x_QuoModules_id);
  GstQuoModule_PaxNames (scExcelExport, x_row, x_QuoModules_id);
  GstQuoModule_Details (scExcelExport, x_row, x_QuoModules_id);

  x_EndRow := x_row;

  //scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'F'+IntToStr(x_EndRow)].Interior.Color := $00CCFFFF;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'F'+IntToStr(x_EndRow)].Interior.Color := $00FFFFFF;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;

procedure GST_QuoModule_CommonSettings(scExcelExport: TScExcelExport);
begin

  scExcelExport.ExcelWorkSheet.Range['A1','A1'].ColumnWidth := 44;
  scExcelExport.ExcelWorkSheet.Range['B1','C1'].ColumnWidth := 12;

  scExcelExport.ExcelWorkSheet.Range['D1','D1'].ColumnWidth := 11;
  scExcelExport.ExcelWorkSheet.Range['E1','E1'].ColumnWidth := 8;
  scExcelExport.ExcelWorkSheet.Range['F1','F1'].ColumnWidth := 11;
  scExcelExport.ExcelWorkSheet.Range['G1','G1'].ColumnWidth := 11;
  scExcelExport.ExcelWorkSheet.Range['H1','H1'].ColumnWidth := 11;

end;

procedure GstQuoModule_Header(scExcelExport: TScExcelExport; var x_row: integer; x_QuoModules_id: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_EndRow: integer;
begin

  _g_isTourCancelled := false;

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_PrintQuoModule] ' + IntToStr(x_QuoModules_id) + ',1';

  GpSds.Open;

  while (not GpSds.Eof) do
    begin

      if GpSds['name'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['name'];

      x_row := x_row + 1;

      if GpSds['CompanyAddress'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['CompanyAddress'];

      x_row := x_row + 3;

      if GpSds['Organisation'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Organisation'];

      x_row := x_row + 1;

      if GpSds['ClientAddress'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['ClientAddress'];

      x_row := x_row + 3;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Quotation Prepared For';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['PaxName'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['PaxName'];

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Prepared By';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['UserName'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['UserName'];

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Email address:';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['Email'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['Email'];

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Quotation Date';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['QuotationDate'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['QuotationDate']);

      x_row := x_row + 2;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Booking Number';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['Reference'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['Reference'];

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['TourCode'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['TourCode'];

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['TourCode'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['TourDate']);

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'No. of Pax';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['NumPax'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['NumPax'];
          scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
        end;

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Room Type';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['RoomType'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['RoomType'];

      x_row := x_row + 2;

      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'QUOTATION';
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 2;

      if (GpSds['Cancelled'] <> null) and (GpSds['Cancelled'] = true) then
        _g_isTourCancelled := true;

      GpSds.Next;

    end;

  GpSds.Free;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'F'+IntToStr(x_EndRow)].Font.Size := '12';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'F'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;

procedure GstQuoModule_PaxNames(scExcelExport: TScExcelExport; var x_row: integer; x_QuoModules_id: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_EndRow: integer;
  x_last_col: string;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_PrintQuoModule] ' + IntToStr(x_QuoModules_id) + ',2';

  GpSds.Open;

  if GpSds['Reference'] <> null then
    begin
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Reference'];
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
    end;

  x_row := x_row + 1;

  while (not GpSds.Eof) do
    begin

      if GpSds['Name'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Name'];

      x_row := x_row + 1;

      GpSds.Next;

    end;

  GpSds.Free;

  x_row := x_row + 3;

  x_last_col := 'F';
  if (_g_isTourCancelled) then
    x_last_col := 'H';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Book Element';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Start Date';
  scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'End Date';
  scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Net Price';
  scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Qty';
  scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Amount';
  if (_g_isTourCancelled) then
    begin
      scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Cancel (%)';
      scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Final Amount';
    end;


  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Borders[xlEdgeRight].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_last_col+IntToStr(x_row)].Borders[xlEdgeRight].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),x_last_col+IntToStr(x_row)].HorizontalAlignment := xlRight;

  x_row := x_row + 2;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_last_col+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_last_col+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;

procedure GstQuoModule_Details(scExcelExport: TScExcelExport; var x_row: integer; x_QuoModules_id: integer);
var
  GpSds: TSQLDataSet;
  x_CurrencyCode: string;
  x_StartRow, x_EndRow: integer;
  x_TotalAmt : double;
  x_last_col: string;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_PrintQuoModule] ' + IntToStr(x_QuoModules_id) + ',3';

  GpSds.Open;

  x_TotalAmt := 0.0;
  if GpSds['TotalInvoiceAmount'] <> null then
    x_TotalAmt := GpSds['TotalInvoiceAmount'];

  x_CurrencyCode := '';
  if GpSds['CurrencyCode'] <> null then
    x_CurrencyCode := GpSds['CurrencyCode'];

  x_last_col := 'F';
  if (_g_isTourCancelled) then
    x_last_col := 'H';

  while (not GpSds.Eof) do
    begin

      if GpSds['QuoModuleDetails'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['QuoModuleDetails'];

      if GpSds['RecType'] = 1 then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      if GpSds['RecType'] <> 1 then
        begin

          if GpSds['DateIn'] <> null then
            scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']);

          if GpSds['DateOut'] <> null then
            scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']);

          if (GpSds['RateAfterServTax'] <> null) then
            scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['RateAfterServTax'];

          if (GpSds['Qty'] <> null) then
            scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['Qty'];

          if GpSds['TotalAmt'] <> null then
            scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds['TotalAmt'];

          if (_g_isTourCancelled) then
            begin

              if GpSds['CancelPerc'] <> null then
                scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['CancelPerc'];

              if GpSds['FinalAmount'] <> null then
                scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['FinalAmount'];

            end;

          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].NumberFormat := '#,##0.00';
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),x_last_col+IntToStr(x_row)].NumberFormat := '#,##0.00';

        end;

      x_row := x_row + 1;

      GpSds.Next;

    end;

  x_row := x_row + 1;
  x_EndRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_last_col+IntToStr(x_row-1)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_last_col+IntToStr(x_row-1)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_last_col+IntToStr(x_row-1)].Borders[xlEdgeBottom].Weight := xlMedium;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  if x_TotalAmt <> 0.0 then
    begin
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := x_CurrencyCode;
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].HorizontalAlignment := xlRight;
    end;

  if x_TotalAmt <> 0.0 then
    begin
      if (_g_isTourCancelled) then
        begin
          scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=SUM(H' + IntToStr(x_StartRow) + ':H' + IntToStr(x_EndRow) + ')';
          scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
          scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Font.FontStyle := 'Bold';
        end
      else
        begin
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=SUM(F' + IntToStr(x_StartRow) + ':F' + IntToStr(x_EndRow) + ')';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].NumberFormat := '#,##0.00';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
        end;
    end;

  x_row := x_row + 2;

  GpSds.Free;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_last_col+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_last_col+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;

end.
