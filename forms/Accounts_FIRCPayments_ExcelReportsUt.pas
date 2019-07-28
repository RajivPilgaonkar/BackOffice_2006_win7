unit Accounts_FIRCPayments_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes, Windows;

procedure Accounts_FIRCPayments (scExcelExport: TScExcelExport; x_FromDate, x_ToDate: TDateTime);
procedure Accounts_FIRCPayments_Header (scExcelExport: TScExcelExport; var x_row: integer; x_Organisation: string);
procedure Accounts_FIRCPayments_FormatColumns (scExcelExport: TScExcelExport; x_startRow, x_endRow: integer);
procedure Accounts_FIRCPayments_Details (scExcelExport: TScExcelExport; var x_row: integer; x_addressbook_id: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt, MainFm;

procedure Accounts_FIRCPayments (scExcelExport: TScExcelExport; x_FromDate, x_ToDate: TDateTime);
var
  GpSds: TSQLDataSet;
  x_row, x_StartRow, x_EndRow, x_Addressbook_id : integer;
  x_fileName, x_organisation: string;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  x_fileName := g_ReportDir + '\FIRC_Payments.xlsx';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  // Execute Procedure
  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_PaymentsRecd] ' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_FromDate)) + ', ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',x_ToDate)) + ', 2, 1';
  GpSds.ExecSQL;

  // Print Period
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'From ' + FormatDateTime('dd/mm/yyyy',x_FromDate) + ' to ' +
    FormatDateTime('dd/mm/yyyy',x_ToDate);
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_StartRow := 2;

  x_row := x_StartRow + 2;

  GpSds.Close;
  GpSds.CommandText := 'SELECT DISTINCT Addressbook_id, Organisation FROM TmpFircPayments';
  GpSds.Open;

  while (not GpSds.EOF) do
    begin

      x_Addressbook_id := 0;
      if GpSds['Addressbook_id'] <> null then
        x_Addressbook_id := GpSds['Addressbook_id'];

      if (GpSds['Organisation'] <> null) then
        x_Organisation := GpSds['Organisation']
      else
        x_Organisation := 'FIT';

      Accounts_FIRCPayments_Header (scExcelExport, x_row, x_Organisation);
      Accounts_FIRCPayments_Details (scExcelExport, x_row, x_Addressbook_id);

      x_row := x_row + 2;

      GpSds.Next;

    end;

  GpSds.Free;

  x_EndRow := x_row;

  Accounts_FIRCPayments_FormatColumns (scExcelExport, x_StartRow, x_EndRow);

  scExcelExport.SaveAs(x_fileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage('Invoices saved in Desktop\BackOffice_Rpt folder');

end;



procedure Accounts_FIRCPayments_Header (scExcelExport: TScExcelExport; var x_row: integer; x_Organisation: string);
var
  x_cell: string;
begin

  x_cell := 'A';

  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := x_Organisation;
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Font.Size := 14;

  x_row := x_row + 1;

  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Accounts_id';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Invoice Date';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Invoice No';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Invoice Details';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Currency';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Amount';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Tax';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Total';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'Exch Rate';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'INR';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'FIRC Amt';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'FIRC No';
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := 'FIRC Date';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_cell+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;

end;

procedure Accounts_FIRCPayments_Details (scExcelExport: TScExcelExport; var x_row: integer; x_addressbook_id: integer);
var
  x_StartRow, x_EndRow: integer;
  x_cell: string;
  Gp2Sds,Gp3Sds: TSQLDataSet;
begin

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  Gp3Sds := TSQLDataSet.Create(nil);
  Gp3Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp3Sds.CommandType := ctQuery;

  Gp2Sds.Close;
  Gp2Sds.CommandText := 'SELECT DISTINCT Accounts_id, FIRC_no, FIRC_date FROM TmpFircPayments WHERE COALESCE(Addressbook_id,0) = ' + IntToStr(x_addressbook_id);
  Gp2Sds.Open;

  while (not Gp2Sds.EOF) do
    begin

      x_StartRow := x_row;

      Gp3Sds.Close;
      Gp3Sds.CommandText := 'SELECT * FROM TmpFircPayments WHERE Accounts_id = ' + IntToStr(Gp2Sds['Accounts_id']);
      Gp3Sds.Open;

      while (not Gp3Sds.EOF) do
        begin

          x_cell := 'B';
          if Gp2Sds['Accounts_id'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp2Sds['Accounts_id'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['InvoiceDate'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',Gp3Sds['InvoiceDate']);

          x_cell := NextColumn(x_cell);
          if Gp3Sds['InvoiceNo'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['InvoiceNo'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['InvoiceDetails'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['InvoiceDetails'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['CurrencyCode'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['CurrencyCode'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['InvoiceAmt'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['InvoiceAmt'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['TaxAmt'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['TaxAmt'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['TotalAmt'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['TotalAmt'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['ExchRate'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['ExchRate'];

          x_cell := NextColumn(x_cell);
          if Gp3Sds['RupeeAmt'] <> null then
            scExcelExport.ExcelWorkSheet.Range[x_cell+IntToStr(x_row),x_cell+IntToStr(x_row)].Value := Gp3Sds['RupeeAmt'];

          Gp3Sds.Next;

          x_row := x_row + 1;

        end;

      x_EndRow := x_row-1;
      scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_EndRow),'L'+IntToStr(x_EndRow)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_EndRow) + ')';
      scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_EndRow),'L'+IntToStr(x_EndRow)].NumberFormat := '#,##0.00';
      scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_EndRow),'L'+IntToStr(x_EndRow)].Font.FontStyle := 'Bold';

      if Gp2Sds['FIRC_No'] <> null then
        scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_EndRow),'M'+IntToStr(x_EndRow)].Value := Gp2Sds['FIRC_No'];

      if Gp2Sds['FIRC_Date'] <> null then
        scExcelExport.ExcelWorkSheet.Range['N'+IntToStr(x_EndRow),'N'+IntToStr(x_EndRow)].Value := '''' + FormatDateTime('dd/mm/yyyy',Gp2Sds['FIRC_Date']);

      scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].NumberFormat := '#,##0.00';

      Gp2Sds.Next;

      x_row := x_row + 1;

    end;

{
  x_EndRow := x_row-1;

  scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].NumberFormat := '#,##0.00';
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;
  scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_EndRow) + ')';
  scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_EndRow) + ')';
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'K'+IntToStr(x_row)].Font.FontStyle := 'Bold';
}

  Gp2Sds.Free;
  Gp3Sds.Free;

end;


procedure Accounts_FIRCPayments_FormatColumns (scExcelExport: TScExcelExport; x_startRow, x_endRow: integer);
var
  x_cell: string;
begin

  x_cell := 'B';
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlLeft;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlCenter;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlCenter;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlLeft;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlCenter;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlRight;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlRight;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlRight;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlRight;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlRight;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlRight;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlCenter;
  x_cell := NextColumn(x_cell);
  scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_startRow),x_Cell+IntToStr(x_endRow)].HorizontalAlignment := xlCenter;

  scExcelExport.ExcelWorkSheet.Range['A1',x_cell+'1'].ColumnWidth := 15;

end;



end.
