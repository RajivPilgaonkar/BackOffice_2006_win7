unit Tds_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes;

procedure Tds_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_FromDate, x_ToDate: TDateTime;  x_Option: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;


procedure Tds_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_FromDate, x_ToDate: TDateTime; x_Option: integer);
var
  GpSds: TSQLDataSet;
  x_CellCol, x_Folio, x_Party, x_PrevFolio, x_PrevParty: string;
  x_row, x_StartRow: integer;
begin

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'exec p_TDS ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_FromDate)) + ', ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_ToDate)) + ' ';
  GpSds.Open;

  x_row := 1;
  x_StartRow := x_row;

  with scExcelExport.ExcelWorkSheet do
    begin
      x_CellCol := 'A';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Accounts_id';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 9;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Party';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 30;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Transaction Date';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 15;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Voucher Type';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 9;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Cash Voucher No.';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 9;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Billed';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 15;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Tds';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 15;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Folio';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 30;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Category';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 20;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Total Billed';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 20;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 'Total Tds';
      Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].ColumnWidth := 20;

      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.Size := '12';
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.Name := 'Book Antiqua';
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.FontStyle := 'Bold';

    end;

  x_row := x_row + 1;

  x_PrevFolio := '';
  if GpSds['Folio'] <> null then
    x_PrevFolio := GpSds['Folio'];

  x_PrevParty := '';
  if GpSds['Party'] <> null then
    x_PrevParty := GpSds['Party'];

  while not GpSds.Eof do
    begin

      with scExcelExport.ExcelWorkSheet do
        begin

          x_Folio := '';
          if GpSds['Folio'] <> null then
            x_Folio := GpSds['Folio'];

          x_Party := '';
          if GpSds['Party'] <> null then
            x_Party := GpSds['Party'];

          if (x_Folio <> x_PrevFolio) or (x_Party <> x_PrevParty) then
            begin

              Range['J' +IntToStr(x_row),'J' +IntToStr(x_row)].Value := '=SUM(F' + IntToStr(x_StartRow) + ':F' + IntToStr(x_row-1)+ ')';
              Range['K' +IntToStr(x_row),'K' +IntToStr(x_row)].Value := '=SUM(G' + IntToStr(x_StartRow) + ':G' + IntToStr(x_row-1)+ ')';
              x_row := x_row + 2;
              x_StartRow := x_row;
            end;

          x_CellCol := 'A';
          if GpSds['Accounts_id'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Accounts_id'];

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['Party'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Party'];

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['TransactionDate'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['TransactionDate']);

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['VoucherType'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['VoucherType'];

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['CashVoucherNo'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['CashVoucherNo'];

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['Billed'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['Billed']);

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['Tds'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['Tds']);

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['Folio'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Folio'];

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['Category'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Category'];

          x_PrevFolio := '';
          if GpSds['Folio'] <> null then
            x_PrevFolio := GpSds['Folio'];

          x_PrevParty := '';
          if GpSds['Party'] <> null then
            x_PrevParty := GpSds['Party'];

        end;

      GpSds.Next;
      x_row := x_row + 1;

    end;

  scExcelExport.ExcelWorkSheet.Range['J' +IntToStr(x_row),'J' +IntToStr(x_row)].Value := '=SUM(F' + IntToStr(x_StartRow) + ':F' + IntToStr(x_row-1)+ ')';
  scExcelExport.ExcelWorkSheet.Range['K' +IntToStr(x_row),'K' +IntToStr(x_row)].Value := '=SUM(G' + IntToStr(x_StartRow) + ':G' + IntToStr(x_row-1)+ ')';

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;


end.
