unit Gst_TourInvoice_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes;

procedure GST_TourInvoice_Excel(scExcelExport: TScExcelExport; x_FromDate, x_ToDate: TDateTime; x_PrincipalAgents_id: integer; x_FileName: string; x_InvoiceFlag: integer);
procedure GST_TourInvoice_CommonSettings(scExcelExport: TScExcelExport; x_InvoiceFlag: integer);
procedure GstTourInvoice_Header (scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag: integer);
procedure GstManualTourInvoice_Header (scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag: integer);
procedure GstTourInvoice_PaxNames (scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id: integer);
procedure GstTourInvoice_Details (scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag, x_Manual: integer);
procedure GstManualTourInvoice_Details (scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag, x_Manual: integer);
procedure GstTourInvoice_Summary (scExcelExport: TScExcelExport; x_invoices_id: integer; var x_row: integer; x_InvoiceFlag: integer);
procedure GST_TourInvoice_Manual_Excel(scExcelExport: TScExcelExport; x_Invoices_id: integer; x_FileName: string; x_InvoiceFlag: integer);
procedure GST_ManualTourInvoice_CommonSettings(scExcelExport: TScExcelExport; x_InvoiceFlag: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;

procedure GST_TourInvoice_Excel(scExcelExport: TScExcelExport; x_FromDate, x_ToDate: TDateTime; x_PrincipalAgents_id: integer; x_FileName: string; x_InvoiceFlag: integer);
var
  GpSds: TSQLDataSet;
  x_row, x_Invoices_id, x_StartRow, x_EndRow, x_count: integer;
  x_cell: string;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_cell := 'H';
  if x_InvoiceFlag = 2 then
    x_cell := 'K';

  GST_TourInvoice_CommonSettings(scExcelExport, x_InvoiceFlag);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT i.invoices_id ' +
        'FROM Invoices i ' +
        'LEFT JOIN addressbook a ON i.addressbook_id = a.addressbook_id ' +
        'WHERE i.invoicedate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_FromDate)) + ' ' +
        'AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_ToDate)) +
        'AND i.companies_id = 1 ' +
        'AND i.divisions_id = 0 ' +
        'AND i.offices_id = 2 ' +
        'AND i.addressbook_id = ' + IntToStr(x_PrincipalAgents_id) + ' ' +
        'AND EXISTS (SELECT * FROM InvoiceDetails id1 WHERE i.Invoices_id = id1.Invoices_id) ' +
        'AND i.QuoModules_id IS NOT NULL ' +
        'ORDER BY InvoiceNo';

  GpSds.Open;

  x_count := 0;
  x_invoices_id := GpSds['Invoices_id'];

  while (not GpSds.EOF) do
    begin

      x_StartRow := x_row;

      x_Invoices_id := GpSds['Invoices_id'];

      GstTourInvoice_Header (scExcelExport, x_row, x_Invoices_id, x_InvoiceFlag);
      GstTourInvoice_PaxNames (scExcelExport, x_row, x_Invoices_id);
      GstTourInvoice_Details (scExcelExport, x_row, x_Invoices_id, x_InvoiceFlag, 0);

      x_EndRow := x_row-1;

      x_count := x_count + 1;

      if (x_count mod 2) > 0 then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_cell+IntToStr(x_EndRow)].Interior.Color := $00CCFFFF
      else
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_cell+IntToStr(x_EndRow)].Interior.Color := $00CCFFCC;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].PageBreak := xlPageBreakManual;

      GpSds.Next;

    end;

  x_StartRow := x_row;

  GstTourInvoice_Summary (scExcelExport, x_invoices_id, x_row, x_InvoiceFlag);

  x_EndRow := x_row;

//  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_cell+IntToStr(x_EndRow)].Interior.Color := $00C5D5C5;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_cell+IntToStr(x_EndRow)].Interior.Color := $00FFFFFF;


  GpSds.Free;


  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;

procedure GST_TourInvoice_Manual_Excel(scExcelExport: TScExcelExport; x_Invoices_id: integer; x_FileName: string; x_InvoiceFlag: integer);
var
  x_row, x_StartRow, x_EndRow: integer;
  x_Cell: string;
begin

  x_row := 1;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GST_ManualTourInvoice_CommonSettings(scExcelExport, x_InvoiceFlag);

  x_StartRow := x_row;

  GstManualTourInvoice_Header (scExcelExport, x_row, x_Invoices_id, x_InvoiceFlag);
  GstManualTourInvoice_Details (scExcelExport, x_row, x_Invoices_id, x_InvoiceFlag, 1);

  x_EndRow := x_row-1;

  x_Cell := 'G';
  if x_InvoiceFlag = 2 then
    x_Cell := 'K';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),x_Cell+IntToStr(x_EndRow)].Interior.Color := $00CCFFFF;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

end;


procedure GST_TourInvoice_CommonSettings(scExcelExport: TScExcelExport; x_InvoiceFlag: integer);
begin

  scExcelExport.ExcelWorkSheet.Range['A1','A1'].ColumnWidth := 44;
  scExcelExport.ExcelWorkSheet.Range['B1','C1'].ColumnWidth := 12;

  if x_InvoiceFlag = 1 then
    begin
      scExcelExport.ExcelWorkSheet.Range['D1','D1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['E1','E1'].ColumnWidth := 8;
      scExcelExport.ExcelWorkSheet.Range['F1','F1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['G1','G1'].ColumnWidth := 11;
    end
  else
    begin
      scExcelExport.ExcelWorkSheet.Range['D1','D1'].ColumnWidth := 8;
      scExcelExport.ExcelWorkSheet.Range['E1','E1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['F1','F1'].ColumnWidth := 8;
      scExcelExport.ExcelWorkSheet.Range['G1','G1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['H1','H1'].ColumnWidth := 9;
      scExcelExport.ExcelWorkSheet.Range['I1','I1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['J1','J1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['K1','K1'].ColumnWidth := 11;
    end;

end;


procedure GstTourInvoice_Header(scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_EndRow, x_TaxInvoiceRow: integer;
  x_GstinRecipient, x_PlaceOfSupply, x_SupplyState, x_TaxPayableRcm: string;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_PrintTourGstInv ' + IntToStr(x_Invoices_id) + ',1';

  GpSds.Open;

  while (not GpSds.Eof) do
    begin

      if GpSds['name'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['name'];

      x_row := x_row + 1;

      if GpSds['CompanyAddress'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['CompanyAddress'];

      x_row := x_row + 2;

      if GpSds['Pan'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No: ' + GpSds['Pan'];

      x_GstinRecipient := '';
      if GpSds['GstinRecipient'] <> null then
        x_GstinRecipient := GpSds['GstinRecipient'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Gstin Recipeint: ' + x_GstinRecipient;

      x_row := x_row + 1;

      if GpSds['CinNo'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Cin No: ' + GpSds['CinNo'];

      x_PlaceOfSupply := '';
      if GpSds['PlaceOfSupply'] <> null then
        x_PlaceOfSupply := GpSds['PlaceOfSupply'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Place of Supply: ' + x_PlaceOfSupply;

      x_row := x_row + 1;

      if GpSds['Gstin'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GSTIN: ' + GpSds['Gstin'];

      x_SupplyState := '';
      if GpSds['SupplyState'] <> null then
        x_SupplyState := GpSds['SupplyState'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Name of State: ' + x_SupplyState;

      x_TaxPayableRcm := '';
      if GpSds['TaxPayableRcm'] <> null then
        x_TaxPayableRcm := GpSds['TaxPayableRcm'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row+1),'E'+IntToStr(x_row+1)].Value := 'If Tax Payable Under RCM: ' + x_TaxPayableRcm;

      x_row := x_row + 4;

      if GpSds['Organisation'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Organisation'];

      x_row := x_row + 1;

      if GpSds['ClientAddress'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['ClientAddress'];

      x_row := x_row + 3;

      x_TaxInvoiceRow := x_row;
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'TAX INVOICE';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row + 2;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['InvoiceDate'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['InvoiceDate']);

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice No';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['InvoiceNo'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['InvoiceNo'];
          scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
        end;

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['MasterDepartureDate'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['MasterDepartureDate']);

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['MasterCode'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['MasterCode'];
      scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Invoice';
      scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 3;

      if x_InvoiceFlag = 1 then
        begin
          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Net Price';
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Qty';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Amount';
          scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Cancel (%)';

          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlRight;

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.FontStyle := 'Bold';

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

        end
      else
        begin
          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'SAC Code';
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Unit Price';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Qty';
          scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Amount';
          scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'GST';
          scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Amt After Tax';
          scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := 'Cancel(%)';
          scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Place Of Supply';

          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'J'+IntToStr(x_row)].HorizontalAlignment := xlRight;
          scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Font.FontStyle := 'Bold';

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

        end;

      x_row := x_row + 2;

      GpSds.Next;

    end;

  GpSds.Free;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_TaxInvoiceRow),'K'+IntToStr(x_TaxInvoiceRow)].Font.Size := '12';


end;


procedure GstManualTourInvoice_Header(scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_EndRow, x_TaxInvoiceRow: integer;
  x_GstinRecipient, x_PlaceOfSupply, x_SupplyState, x_TaxPayableRcm, x_Cell: string;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_PrintTourGstInv ' + IntToStr(x_Invoices_id) + ',1';

  GpSds.Open;

  while (not GpSds.Eof) do
    begin

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Supplier Details:';
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Customer Details:';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 1;

      if GpSds['name'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['name'];
      if GpSds['Organisation'] <> null then
        scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['Organisation'];

      x_row := x_row + 1;

      if GpSds['CompanyAddress'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['CompanyAddress'];
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].VerticalAlignment := xlTop;
        end;
      if GpSds['ClientAddress'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['ClientAddress'];
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].VerticalAlignment := xlTop;
        end;

      x_row := x_row + 2;

      if GpSds['Pan'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No: ' + GpSds['Pan'];

      x_GstinRecipient := '';
      if GpSds['GstinRecipient'] <> null then
        x_GstinRecipient := GpSds['GstinRecipient'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Gstin Recipeint: ' + x_GstinRecipient;

      x_row := x_row + 1;

      if GpSds['CinNo'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Cin No: ' + GpSds['CinNo'];

      x_PlaceOfSupply := '';
      if GpSds['PlaceOfSupply'] <> null then
        x_PlaceOfSupply := GpSds['PlaceOfSupply'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Place of Supply: ' + x_PlaceOfSupply;

      x_row := x_row + 1;

      if GpSds['Gstin'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GSTIN: ' + GpSds['Gstin'];

      x_SupplyState := '';
      if GpSds['SupplyState'] <> null then
        x_SupplyState := GpSds['SupplyState'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Name of State: ' + x_SupplyState;

      x_TaxPayableRcm := '';
      if GpSds['TaxPayableRcm'] <> null then
        x_TaxPayableRcm := GpSds['TaxPayableRcm'];
      scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row+1),'E'+IntToStr(x_row+1)].Value := 'If Tax Payable Under RCM: ' + x_TaxPayableRcm;

      x_row := x_row + 2;

      x_Cell := 'G';
      if x_InvoiceFlag = 2 then
        x_Cell := 'K';

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 2;

      x_TaxInvoiceRow := x_row;
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'TAX INVOICE';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row + 2;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['InvoiceDate'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['InvoiceDate']);

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice No';
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      if GpSds['InvoiceNo'] <> null then
        begin
          scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['InvoiceNo'];
          scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
        end;

      x_row := x_row + 1;

      if (GpSds['MasterDepartureDate'] <> null) then
        begin

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
          if GpSds['MasterDepartureDate'] <> null then
            scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['MasterDepartureDate']);

          x_row := x_row + 1;

        end;

      if (GpSds['MasterCode'] <> null) then
        begin
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
          if GpSds['MasterCode'] <> null then
            scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['MasterCode'];

          x_row := x_row + 1;

        end;

      x_row := x_row + 3;

      if x_InvoiceFlag = 1 then
        begin
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Details';
          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Net Price';
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Qty';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Amount';
          scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Cancel (%)';

          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlRight;

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.FontStyle := 'Bold';

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

        end
      else
        begin
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Details';
          scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'SAC Code';
          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Unit Price';
          scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Qty';
          scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Amount';
          scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'GST';
          scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Amt After Tax';
          scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := 'Cancel(%)';
          scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Place of Supply';

          scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'J'+IntToStr(x_row)].HorizontalAlignment := xlRight;
          scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Font.FontStyle := 'Bold';

          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
          scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

        end;

      x_row := x_row + 2;

      GpSds.Next;

    end;

  GpSds.Free;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_TaxInvoiceRow),'A'+IntToStr(x_TaxInvoiceRow)].Font.Size := '10';


end;

procedure GstTourInvoice_PaxNames(scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_EndRow: integer;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_PrintTourGstInv ' + IntToStr(x_Invoices_id) + ',2';

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

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Book Element';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Start Date';
  scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'End Date';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeRight].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeRight].Weight := xlMedium;

  x_row := x_row + 2;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;


procedure GstTourInvoice_Details(scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag, x_Manual: integer);
var
  GpSds: TSQLDataSet;
  x_Cell, x_CurrencyCode, x_C_Gst_Str, x_S_Gst_Str, x_I_Gst_Str : string;
  x_StartRow, x_EndRow, x_option: integer;
  x_TotalAmt, x_GstAmt, x_ItemAmt, x_C_Gst, x_S_Gst, x_I_Gst : double;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_option := 3;
  if (x_Manual = 1) then
    x_option := 4;
  GpSds.CommandText := 'EXEC p_PrintTourGstInv ' + IntToStr(x_Invoices_id) + ',' + IntToStr(x_option);

  GpSds.Open;

  x_TotalAmt := 0.0;
  if GpSds['TotalInvoiceAmount'] <> null then
    x_TotalAmt := GpSds['TotalInvoiceAmount'];

  x_GstAmt := 0.0;
  if GpSds['TaxAmount'] <> null then
    x_GstAmt := GpSds['TaxAmount'];

  x_ItemAmt := 0.0;
  if GpSds['TotalItemAmount'] <> null then
    x_ItemAmt := GpSds['TotalItemAmount'];

  x_CurrencyCode := '';
  if GpSds['CurrencyCode'] <> null then
    x_CurrencyCode := GpSds['CurrencyCode'];

  x_C_Gst_Str := 'C GST';
  if GpSds['C_GST_Str'] <> null then
    x_C_Gst_Str := GpSds['C_GST_Str'];

  x_S_Gst_Str := 'S GST';
  if GpSds['S_GST_Str'] <> null then
    x_S_Gst_Str := GpSds['S_GST_Str'];

  x_I_Gst_Str := 'I GST';
  if GpSds['I_GST_Str'] <> null then
    x_I_Gst_Str := GpSds['I_GST_Str'];

  x_C_Gst := 0.0;
  if GpSds['C_GST'] <> null then
    x_C_Gst := GpSds['C_GST'];

  x_S_Gst := 0.0;
  if GpSds['S_GST'] <> null then
    x_S_Gst := GpSds['S_GST'];

  x_I_Gst := 0.0;
  if GpSds['I_GST'] <> null then
    x_I_Gst := GpSds['I_GST'];


  while (not GpSds.Eof) do
    begin

      // leave a line for cancellation
      if GpSds['ItemNo'] = 710 then
        x_row := x_row+1;

      if GpSds['Details'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Details'];

      if GpSds['RecType'] = 1 then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      if GpSds['RecType'] <> 1 then
        begin

          if GpSds['DateIn'] <> null then
            scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']);

          if GpSds['DateOut'] <> null then
            scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']);

          if x_InvoiceFlag = 1 then
            begin

              if (GpSds['RateAfterServTax'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['RateAfterServTax'];

              if (GpSds['Quantity'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['Quantity'];

              if GpSds['AmtAfterTax'] <> null then
                scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds['AmtAfterTax'];

              if (GpSds['CancelPerc'] <> null) and (GpSds['CancelPerc'] <> 0.0) then
                scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['CancelPerc'];

              scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0';
              scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].NumberFormat := '#,##0';

            end
          else
            begin

              if (GpSds['SacCode'] <> null) then
                scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['SacCode'];

              if (GpSds['UnitPrice'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['UnitPrice'];

              if (GpSds['Quantity'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds['Quantity'];

              if GpSds['Amount'] <> null then
                scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['Amount'];

              if GpSds['ServiceTax'] <> null then
                scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['ServiceTax'];

              if GpSds['AmtAfterTax'] <> null then
                scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['AmtAfterTax'];

              if (GpSds['CancelPerc'] <> null) and (GpSds['CancelPerc'] <> 0.0) then
                scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['CancelPerc'];

              if GpSds['PlaceOfSupplyLine'] <> null then
                scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['PlaceOfSupplyLine'];

              scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].NumberFormat := '#,##0';
              scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].NumberFormat := '#,##0';

            end;

        end;

      x_row := x_row + 1;

      GpSds.Next;

    end;

  x_row := x_row + 1;

  // Bold line before sub-total
  x_Cell := 'G';
  if x_InvoiceFlag <> 1 then
    x_Cell := 'K';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_Cell+IntToStr(x_row-1)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_Cell+IntToStr(x_row-1)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_Cell+IntToStr(x_row-1)].Borders[xlEdgeBottom].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';

  if x_TotalAmt <> 0.0 then
    begin
      x_Cell := 'F';
      if x_InvoiceFlag <> 1 then
        x_Cell := 'I';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_TotalAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  if (x_GstAmt <> 0.0) and (x_InvoiceFlag <> 1) then
    begin
      x_Cell := 'H';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_GstAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  if (x_ItemAmt <> 0.0) and (x_InvoiceFlag <> 1) then
    begin
      x_Cell := 'G';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_ItemAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  if x_InvoiceFlag = 2 then
    begin

      x_row := x_row + 2;

      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_C_Gst_Str;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_C_Gst;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_S_Gst_Str;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_S_Gst;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_I_Gst_Str;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_I_Gst;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 2;

    end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  if x_TotalAmt <> 0.0 then
    begin
      x_Cell := 'E';
      if x_InvoiceFlag <> 1 then
        x_Cell := 'H';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_CurrencyCode;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  if x_TotalAmt <> 0.0 then
    begin
      x_Cell := 'F';
      if x_InvoiceFlag <> 1 then
        x_Cell := 'I';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_TotalAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  x_row := x_row + 3;

  GpSds.Free;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;


procedure GstManualTourInvoice_Details(scExcelExport: TScExcelExport; var x_row: integer; x_Invoices_id, x_InvoiceFlag, x_Manual: integer);
var
  GpSds: TSQLDataSet;
  x_Cell, x_CurrencyCode, x_C_Gst_Str, x_S_Gst_Str, x_I_Gst_Str : string;
  x_StartRow, x_EndRow, x_option: integer;
  x_TotalAmt, x_GstAmt, x_ItemAmt, x_C_Gst, x_S_Gst, x_I_Gst : double;
begin

  x_StartRow := x_row;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_option := 3;
  if (x_Manual = 1) then
    x_option := 4;
  GpSds.CommandText := 'EXEC p_PrintTourGstInv ' + IntToStr(x_Invoices_id) + ',' + IntToStr(x_option);

  GpSds.Open;

  x_TotalAmt := 0.0;
  if GpSds['TotalInvoiceAmount'] <> null then
    x_TotalAmt := GpSds['TotalInvoiceAmount'];

  x_GstAmt := 0.0;
  if GpSds['TaxAmount'] <> null then
    x_GstAmt := GpSds['TaxAmount'];

  x_ItemAmt := 0.0;
  if GpSds['TotalItemAmount'] <> null then
    x_ItemAmt := GpSds['TotalItemAmount'];

  x_CurrencyCode := '';
  if GpSds['CurrencyCode'] <> null then
    x_CurrencyCode := GpSds['CurrencyCode'];

  x_C_Gst_Str := 'C GST';
  if GpSds['C_GST_Str'] <> null then
    x_C_Gst_Str := GpSds['C_GST_Str'];

  x_S_Gst_Str := 'S GST';
  if GpSds['S_GST_Str'] <> null then
    x_S_Gst_Str := GpSds['S_GST_Str'];

  x_I_Gst_Str := 'I GST';
  if GpSds['I_GST_Str'] <> null then
    x_I_Gst_Str := GpSds['I_GST_Str'];

  x_C_Gst := 0.0;
  if GpSds['C_GST'] <> null then
    x_C_Gst := GpSds['C_GST'];

  x_S_Gst := 0.0;
  if GpSds['S_GST'] <> null then
    x_S_Gst := GpSds['S_GST'];

  x_I_Gst := 0.0;
  if GpSds['I_GST'] <> null then
    x_I_Gst := GpSds['I_GST'];


  while (not GpSds.Eof) do
    begin

      // leave a line for cancellation
      if GpSds['ItemNo'] = 710 then
        x_row := x_row+1;

      if GpSds['Details'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Details'];

      if GpSds['RecType'] = 1 then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      if GpSds['RecType'] <> 1 then
        begin

          if GpSds['DateIn'] <> null then
            scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']);

          if GpSds['DateOut'] <> null then
            scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']);

          if x_InvoiceFlag = 1 then
            begin

              if (GpSds['RateAfterServTax'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['RateAfterServTax'];

              if (GpSds['Quantity'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['Quantity'];

              if GpSds['AmtAfterTax'] <> null then
                scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds['AmtAfterTax'];

              if (GpSds['CancelPerc'] <> null) and (GpSds['CancelPerc'] <> 0.0) then
                scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['CancelPerc'];

              scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0';
              scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].NumberFormat := '#,##0';

            end
          else
            begin

              if (GpSds['SacCode'] <> null) then
                begin
                  scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['SacCode'];
                  scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
                end;

              if (GpSds['UnitPrice'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['UnitPrice'];

              if (GpSds['Quantity'] <> null) and ((GpSds['ItemNo'] <> 710) and (GpSds['ItemNo'] <> 720)) then
                scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds['Quantity'];

              if GpSds['Amount'] <> null then
                scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['Amount'];

              if GpSds['ServiceTax'] <> null then
                scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['ServiceTax'];

              if GpSds['AmtAfterTax'] <> null then
                scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['AmtAfterTax'];

              if (GpSds['CancelPerc'] <> null) and (GpSds['CancelPerc'] <> 0.0) then
                scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['CancelPerc'];

              if (GpSds['PlaceOfSupplyLine'] <> null) then
                scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['PlaceOfSupplyLine'];

              scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].NumberFormat := '#,##0';
              scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].NumberFormat := '#,##0';

            end;

        end;

      x_row := x_row + 1;

      GpSds.Next;

    end;

  x_row := x_row + 1;

  // Bold line before sub-total
  x_Cell := 'G';
  if x_InvoiceFlag <> 1 then
    x_Cell := 'K';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_Cell+IntToStr(x_row-1)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_Cell+IntToStr(x_row-1)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row-1),x_Cell+IntToStr(x_row-1)].Borders[xlEdgeBottom].Weight := xlThin;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';

  if x_TotalAmt <> 0.0 then
    begin
      x_Cell := 'F';
      if x_InvoiceFlag <> 1 then
        x_Cell := 'I';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_TotalAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  if (x_GstAmt <> 0.0) and (x_InvoiceFlag <> 1) then
    begin
      x_Cell := 'H';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_GstAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  if (x_ItemAmt <> 0.0) and (x_InvoiceFlag <> 1) then
    begin
      x_Cell := 'G';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_ItemAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  if x_InvoiceFlag = 2 then
    begin

      x_row := x_row + 2;

      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_C_Gst_Str;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_C_Gst;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_S_Gst_Str;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_S_Gst;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 1;

      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_I_Gst_Str;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_I_Gst;
      scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 2;

    end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  if x_TotalAmt <> 0.0 then
    begin
      x_Cell := 'E';
      if x_InvoiceFlag <> 1 then
        x_Cell := 'H';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_CurrencyCode;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].HorizontalAlignment := xlRight;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  if x_TotalAmt <> 0.0 then
    begin
      x_Cell := 'F';
      if x_InvoiceFlag <> 1 then
        x_Cell := 'I';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := x_TotalAmt;
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].NumberFormat := '#,##0.00';
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  x_row := x_row + 3;

  GpSds.Free;

  x_EndRow := x_row-1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'K'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;

procedure GstTourInvoice_Summary (scExcelExport: TScExcelExport; x_invoices_id: integer; var x_row: integer; x_InvoiceFlag: integer);
var
  Gp1Sds, Gp2Sds: TSQLDataSet;
  x_Cell: string;
  x_StartRow, x_EndRow, x_tableRow, x_PrincipalAgents_id, x_month, x_year, x_companies_id, x_divisions_id, x_offices_id: integer;
begin

  x_StartRow := x_row;

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp1Sds.CommandType := ctQuery;

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  Gp1Sds.CommandText := 'SELECT Addressbook_id, Month(InvoiceDate) AS Month, Year(InvoiceDate) AS Year,' +
    'Companies_id, Divisions_id, Offices_id ' +
    'FROM Invoices WHERE Invoices_id = ' + IntToStr(x_invoices_id);

  Gp1Sds.Open;

  x_PrincipalAgents_id := Gp1Sds['Addressbook_id'];
  x_month := Gp1Sds['Month'];
  x_year := Gp1Sds['Year'];
  x_companies_id := Gp1Sds['Companies_id'];
  x_divisions_id := Gp1Sds['Divisions_id'];
  x_offices_id := Gp1Sds['Offices_id'];

  Gp1Sds.Close;

  Gp1Sds.CommandText := 'EXEC [p_PrintTourGstInvSummary] ' +  IntToStr(x_PrincipalAgents_id) + ',' +
    IntToStr(x_month) + ',' + IntToStr(x_year) + ',' + IntToStr(x_companies_id) + ',' +
    IntToStr(x_divisions_id) + ',' + IntToStr(x_offices_id) + ',1';

  Gp1Sds.Open;

  Gp2Sds.CommandText := 'EXEC [p_PrintTourGstInvSummary] ' +  IntToStr(x_PrincipalAgents_id) + ',' +
    IntToStr(x_month) + ',' + IntToStr(x_year) + ',' + IntToStr(x_companies_id) + ',' +
    IntToStr(x_divisions_id) + ',' + IntToStr(x_offices_id) + ',2';

  Gp2Sds.Open;


  if Gp1Sds['name'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Gp1Sds['name'];

  x_row := x_row + 1;

  if Gp1Sds['CompanyAddress'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Gp1Sds['CompanyAddress'];

  x_row := x_row + 2;

  if Gp1Sds['Pan'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No: ' + Gp1Sds['Pan'];

  x_row := x_row + 1;

  if Gp1Sds['CinNo'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Cin No: ' + Gp1Sds['CinNo'];

  x_row := x_row + 1;

  if Gp1Sds['Gstin'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GSTIN: ' + Gp1Sds['Gstin'];

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date';
  if Gp1Sds['InvoiceDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd-mmm-yy',Gp1Sds['InvoiceDate']);

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sent To';

  if Gp1Sds['Organisation'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['Organisation'];

  x_row := x_row + 1;

  if Gp1Sds['ClientAddress'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['ClientAddress'];

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Clients/Groups';
  if Gp1Sds['InvoiceDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('mmm-yyyy',Gp1Sds['InvoiceDate']);

  x_row := x_row + 3;
  if Gp1Sds['InvoiceDate'] <> null then
    scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Outstanding Invoices as of ' + FormatDateTime('dd-mmm-yy',Gp1Sds['InvoiceDate']);

  x_row := x_row + 3;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Name of the pax';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Invoice No';
  scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Booking No';
  scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Tour Code';
  scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Pax';
  scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Arrival Date';
  scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Amt Per Pax';
  scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Total';

  if x_InvoiceFlag = 2 then
    begin
      scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'GST';
      scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := 'I_GST';
      scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'C_GST';
      scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'S_GST';
    end;

  scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'L'+IntToStr(x_row)].HorizontalAlignment := xlRight;

  x_Cell := 'H';
  if x_InvoiceFlag <> 1 then
    x_Cell := 'L';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

  x_row := x_row + 2;

  x_tableRow := x_row;

  while not Gp2Sds.EOF do
    begin

      if Gp2Sds['PaxName'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Gp2Sds['PaxName'];

      if Gp2Sds['InvoiceNo'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp2Sds['InvoiceNo'];

      if Gp2Sds['Reference'] <> null then
        scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := '''' + Gp2Sds['Reference'];

      if Gp2Sds['MasterCode'] <> null then
        scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := Gp2Sds['MasterCode'];

      if Gp2Sds['NumPax'] <> null then
        scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := Gp2Sds['NumPax'];

      if Gp2Sds['ArrivalDate'] <> null then
        scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',Gp2Sds['ArrivalDate']);

      if Gp2Sds['InvoiceAmount'] <> null then
        scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := Gp2Sds['InvoiceAmount'];

      scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '=H'+IntToStr(x_row)+'/E'+IntToStr(x_row);
      scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      if x_InvoiceFlag = 2 then
        begin
          scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := Gp2Sds['TaxAmount'];
          scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := Gp2Sds['I_GST'];
          scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := Gp2Sds['C_GST'];
          scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := Gp2Sds['S_GST'];
          scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
        end;

      x_row := x_row + 1;

      Gp2Sds.Next;

    end;

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_tableRow),'E'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Total Due';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'L'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_Cell := 'H';
  if x_InvoiceFlag <> 1 then
    x_Cell := 'L';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),x_Cell+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  if Gp1Sds['CurrencyCode'] <> null then
    scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := Gp1Sds['CurrencyCode'];
  scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlRight;

  if Gp1Sds['TotalInvoiceAmount'] <> null then
    scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := Gp1Sds['TotalInvoiceAmount'];
  scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  if x_InvoiceFlag <> 1 then
    begin
      if Gp1Sds['TotalTaxAmount'] <> null then
        scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := Gp1Sds['TotalTaxAmount'];
      scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
    end;

  x_row := x_row + 3;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Please make payment to:';

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary Bank''s Name & Address:';
  if Gp1Sds['Ben_BankName'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['Ben_BankName'];

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary Bank''s SWIFT Code:';
  if Gp1Sds['Ben_BankSwift'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['Ben_BankSwift'];

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary''s Bank A/c No:';
  if Gp1Sds['Ben_BankAccountNo'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + Gp1Sds['Ben_BankAccountNo'];

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary''s  A/c Name / Title:';
  if Gp1Sds['Ben_BankAccountName'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + Gp1Sds['Ben_BankAccountName'];

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Please use the following correspondent bank:';

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Correspondent Bank:';
  if Gp1Sds['BankName'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['BankName'];

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Correspondent Bank''s Swift Code:';
  if Gp1Sds['BankSwiftCode'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['BankSwiftCode'];

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Correspondent Account Number:';
  if Gp1Sds['BankAccountNo'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + Gp1Sds['BankAccountNo'];

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'IBAN No.:';
  if Gp1Sds['BankIBanNo'] <> null then
    scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Gp1Sds['BankIBanNo'];

  Gp1Sds.Free;
  Gp2Sds.Free;

  x_EndRow := x_row;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_EndRow)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_EndRow)].Font.Name := 'Book Antiqua';

end;


procedure GST_ManualTourInvoice_CommonSettings(scExcelExport: TScExcelExport; x_InvoiceFlag: integer);
begin

  scExcelExport.ExcelWorkSheet.Range['A1','A1'].ColumnWidth := 68;
  scExcelExport.ExcelWorkSheet.Range['B1','C1'].ColumnWidth := 12;

  if x_InvoiceFlag = 1 then
    begin
      scExcelExport.ExcelWorkSheet.Range['D1','D1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['E1','E1'].ColumnWidth := 32;
      scExcelExport.ExcelWorkSheet.Range['F1','F1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['G1','G1'].ColumnWidth := 11;
    end
  else
    begin
      scExcelExport.ExcelWorkSheet.Range['D1','D1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['E1','E1'].ColumnWidth := 32;
      scExcelExport.ExcelWorkSheet.Range['F1','F1'].ColumnWidth := 8;
      scExcelExport.ExcelWorkSheet.Range['G1','G1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['H1','H1'].ColumnWidth := 9;
      scExcelExport.ExcelWorkSheet.Range['I1','I1'].ColumnWidth := 14;
      scExcelExport.ExcelWorkSheet.Range['J1','J1'].ColumnWidth := 11;
      scExcelExport.ExcelWorkSheet.Range['K1','K1'].ColumnWidth := 11;
    end;

end;

end.
