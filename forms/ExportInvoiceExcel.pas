unit ExportInvoiceExcel;

interface

uses
  ComObj,SysUtils,Dialogs,Variants,SqlExpr,BackOfficeDM,Graphics,Excel2000, OleServer, ActiveX;

procedure SaveDataToExcel (x_companies_id, x_divisions_id: integer;
                           x_FromDate, x_ToDate: TDateTime;
                           x_Invoices_id: integer; x_filename: string; x_type, x_option: integer;
                           x_PrincipalAgents_id: integer; x_PrincipalAgent: string);
procedure InvoiceHeader(var x_index: integer; var x_row: integer; GPSds: TSQLDataSet; x_type: integer);
procedure SaveInvoiceToExcel (x_Invoices_id, x_index: integer; var x_row: integer; x_type: integer);
procedure InvoiceDetails(x_index: integer; var x_row: integer; GPSds: TSQLDataSet);
procedure InvoiceDetails_TL(x_index: integer; var x_row: integer; GPSds: TSQLDataSet);
procedure SaveOutstandingInvoiceToExcel (GPSds: TSQLDataSet; x_index: integer; var x_row: integer; x_type: integer; x_ToDate: TDateTime);

var
  ExcelApp: OleVariant;

implementation

uses MultiInvoiceFm;

const

  // SheetType
  xlChart = -4109;
  xlWorksheet = -4167;

  // WBATemplate
  xlWBATWorksheet = -4167;
  xlWBATChart = -4109;

  // Page Setup
  xlPortrait = 1;
  xlLandscape = 2;
  xlPaperA4 = 9;

  // Format Cells
  xlBottom = -4107;
  xlLeft = -4131;
  xlRight = -4152;
  xlTop = -4160;

  // Text Alignment
  xlHAlignCenter = -4108;
  xlVAlignCenter = -4108;

  // Cell Borders
  xlThick = 4;
  xlThin = 2;


// Function to get the number of Rows in a Certain column
function GetLastLine(AColumn: Integer): Integer;
const
  xlUp = 3;
begin
  Result := ExcelApp.Range[Char(96 + AColumn) + IntToStr(65536)].end[xlUp].Rows.Row;
end;

procedure SaveDataToExcel (x_companies_id, x_divisions_id: integer;
                           x_FromDate, x_ToDate: TDateTime;
                           x_Invoices_id: integer; x_filename: string; x_type, x_option: integer;
                           x_PrincipalAgents_id: integer; x_PrincipalAgent: string);
var
  QueryString, QueryString1: string;
  x_Year, x_Month, x_Day: Word;
  GpSds: TSqlDataSet;
  x_index, x_row: integer;
begin


  QueryString := 'SELECT i.invoices_id, tl_type ' +
   ' FROM Invoices I ' +
   ' WHERE (i.Companies_id = ' + IntToStr(x_companies_id) + ') ' +
   ' AND (i.Divisions_id = ' + IntToStr(x_divisions_id) + ') ';

   if x_PrincipalAgents_id > 0 then
     QueryString := QueryString +
       ' AND (i.MasterCode IN ' +
       '(SELECT MasterCode FROM Masters WHERE Addressbook_id = ' + IntToStr(x_PrincipalAgents_id) + '))';

  QueryString1 := QueryString;

  DecodeDate (x_FromDate, x_Year, x_Month, x_Day);

  if (x_type = 1) or (x_type = 4) then
    begin
      QueryString := QueryString + ' AND (i.MasterDepartureDate BETWEEN ''' +
        FormatDateTime('mm/dd/yyyy',x_FromDate) + ''' AND ''' +
        FormatDateTime('mm/dd/yyyy',x_ToDate) + ''') ' +
        'AND (COALESCE(i.tl_type,0)=0) '
    end
  else if x_type = 2 then
    begin
      QueryString := QueryString + ' AND (i.Months_id = ' + IntToStr(x_Month) + ') ' +
          ' AND (i.Years_id = ' + IntToStr(x_Year) + ') ' +
          ' AND (i.tl_type IN (1,2)) ';
    end
  else if x_type = 3 then
    begin
      QueryString := QueryString + ' AND (i.Invoices_id = ' + IntToStr(x_Invoices_id) + ') ';
    end
  else if x_type = 5 then
    begin
      QueryString := 'SELECT * FROM dbo.fn_GetOutstandingInvoices (''' +
        FormatDateTime('mm/dd/yyyy',x_FromDate) + ''',''' +
        FormatDateTime('mm/dd/yyyy',x_ToDate) + ''',' +
        '0,' + IntToStr(x_companies_id) + ',' + IntToStr(x_divisions_id) + ',' +
        IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY tl_type, InvoiceNo, InvoiceDate';
    end;

  if (x_type <> 5) then
    QueryString := QueryString + ' ORDER BY I.InvoiceNo ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GPSds.Close;
  GPSds.CommandText := QueryString;
  GPSds.Open;

  x_index := 1;
  x_row := 2;

  if (x_type <> 5) then
    begin
      while not GpSds.Eof do
        begin
          SaveInvoiceToExcel (GpSds['Invoices_id'], x_index, x_row, x_type);
          //x_index := x_index + 1;
          GpSds.Next;
        end;
    end;

  if (x_type = 4) then
    begin
      QueryString := QueryString1 + ' AND (i.Months_id = ' + IntToStr(x_Month) + ') ' +
          ' AND (i.Years_id = ' + IntToStr(x_Year) + ') ' +
          ' AND (i.tl_type IN (1,2)) ORDER BY I.InvoiceNo ';

      GPSds.Close;
      GPSds.CommandText := QueryString;
      GPSds.Open;

      while not GpSds.Eof do
        begin
          SaveInvoiceToExcel (GpSds['Invoices_id'], x_index, x_row, 2);
          GpSds.Next;
        end;

      QueryString := 'SELECT * FROM dbo.fn_GetOutstandingInvoices (''' +
        FormatDateTime('mm/dd/yyyy',x_FromDate) + ''',''' +
        FormatDateTime('mm/dd/yyyy',x_ToDate) + ''',' +
        '0,' + IntToStr(x_companies_id) + ',' + IntToStr(x_divisions_id) + ',' +
        IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY tl_type, InvoiceNo, InvoiceDate';;

      GPSds.Close;
      GPSds.CommandText := QueryString;
      GPSds.Open;

      SaveOutstandingInvoiceToExcel (GpSds, x_index, x_row, x_type, x_ToDate);

    end;

  if (x_type = 5) then
    SaveOutstandingInvoiceToExcel (GpSds, x_index, x_row, x_type, x_ToDate);

  GpSds.Free;

end;

procedure SaveInvoiceToExcel (x_Invoices_id, x_index: integer; var x_row: integer; x_type: integer);
var
  QueryString: string;
  Gp1Sds: TSqlDataSet;
begin

  QueryString := 'SELECT A.Organisation, ' +
   ' CASE WHEN A.InvoiceTo_Addressbook_id IS NULL THEN COALESCE(A.address,'' '') ELSE COALESCE(A2.address,'' '') END AS Addr, ' +
   ' CASE WHEN A.InvoiceTo_Addressbook_id IS NULL THEN ' +
   ' COALESCE(A.City,'' '') + '', '' + COALESCE(A.postalCode,'' '') ELSE ' +
   ' COALESCE(A2.City,'' '') + '', '' + COALESCE(A2.postalCode,'' '') END AS City, ' +
   ' CASE WHEN A.InvoiceTo_Addressbook_id IS NULL THEN C.Country ELSE C2.Country END AS Country,  ' +
   'I.InvoiceDate, I.InvoiceNo, I.MasterCode, I.MasterDepartureDate,  '+
   ' I.TaxPercentage, I.TaxAmount, I.tl_type, '+
   ' ID.ItemNo, ID.Details, ID.UnitPrice, ID.TourCode, '+
   ' ID.Quantity, ID.Nights, '+
   ' ID.TourCode As SubTourCode, ID.BookingRef, '+
   ' I.TaxPercentage, I.TaxAmount, I.invoices_id, rs.roomsize, ID.serviceTaxPerc, '+
   ' (ID.ServiceTaxPerc * ID.Amount) / 100 AS ServiceTax, ID.LocalPayment ' +
   ' FROM Invoices I ' +
   ' LEFT JOIN InvoiceDetails ID ON I.Invoices_id = ID.Invoices_id ' +
   ' LEFT JOIN roomsizes rs ON rs.roomsizes_id = ID.roomsizes_id ' +
   ' LEFT JOIN Addressbook A ON I.Addressbook_id = A.Addressbook_id ' +
   ' LEFT JOIN Addressbook A2 ON A.InvoiceTo_Addressbook_id = A2.Addressbook_id ' +
   ' LEFT JOIN Countries C ON A.Countries_id = C.Countries_id ' +
   ' LEFT JOIN Countries C2 ON A2.Countries_id = C2.Countries_id ' +
   ' WHERE (i.Invoices_id = ' + IntToStr(x_invoices_id) + ') ';

  if (x_type = 1) or (x_type = 3) or (x_type = 4) then
    QueryString := QueryString + ' ORDER BY COALESCE(A.InvoiceOrderNo,100), ID.TourCode, ID.BookingRef, ID.ItemNo '
  else
    QueryString := QueryString + ' ORDER BY COALESCE(A.InvoiceOrderNo,100), ID.BookingRef, ID.ItemNo, ID.TourCode ';

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp1Sds.CommandType := ctQuery;

  GP1Sds.Close;
  GP1Sds.CommandText := QueryString;
  GP1Sds.Open;

  InvoiceHeader(x_index, x_row, Gp1Sds, x_type);

  if (x_type = 1) or (x_type = 3) or (x_type = 4) then
    InvoiceDetails(x_index, x_row, GP1Sds)
  else
    InvoiceDetails_TL(x_index, x_row, GP1Sds);

  x_row := x_row + 4;

  Gp1Sds.Free;

end;

procedure SaveOutstandingInvoiceToExcel (GPSds: TSQLDataSet; x_index: integer; var x_row: integer; x_type: integer; x_ToDate: TDateTime);
var
  x_start_row: integer;
begin

  with MultiInvoiceForm.scExcelExport1.ExcelWorkSheet do
    begin

      x_start_row := x_row;

      Range['A1','A1'].ColumnWidth := 25;
      Range['B1','D1'].ColumnWidth := 11;

      Range['E'+IntToStr(x_row),'G'+IntToStr(x_row+200)].NumberFormat := '#,##0';

      Range['A'+IntToStr(x_row),'D'+IntToStr(x_row+200)].Cells.HorizontalAlignment := xlLeft;
      Range['E'+IntToStr(x_row),'G'+IntToStr(x_row+200)].Cells.HorizontalAlignment := xlRight;

      //x_Sheet.PageSetup.PrintTitleRows := '$1..$5';
      PageSetup.Orientation := xlPortrait;
      //x_Sheet.PageSetup.FitToPagesWide;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].NumberFormat := 'dd-mmm-yyyy';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value :=
        'Outstanding Invoices as per ' + FormatDateTime('dd-mmm-yyyy', x_ToDate);

      x_row := x_row+2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].RowHeight := '40';
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].WrapText := True;
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlThin;

      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice No';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Tour Code';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Tour Date';
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Invoice Date';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Total Amount';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Service Tax';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Local Payment';

      x_row := x_row+1;

      while not GpSds.EOF do
        begin

          if GpSds['InvoiceNo'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['InvoiceNo'];

          if GpSds['MasterCode'] <> null then
            Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['MasterCode'];

          if GpSds['MasterDepartureDate'] <> null then
            begin
              Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].NumberFormat := 'dd-mmm-yyyy';
              Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := FormatDateTime('dd-mmm-yyyy',GpSds['MasterDepartureDate']);
            end;

          if GpSds['InvoiceDate'] <> null then
            begin
              Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].NumberFormat := 'dd-mmm-yyyy';
              Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := FormatDateTime('dd-mmm-yyyy',GpSds['InvoiceDate']);
            end;

          if (GpSds['InvoiceAmount'] <> null)  then
            Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['InvoiceAmount'];

          if GpSds['servicetaxAmount'] <> null then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds['ServicetaxAmount'];

          if GpSds['LocalPaymentAmount'] <> null then
            Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['LocalPaymentAmount'];

          x_row := x_row+1;

          GpSds.Next;
        end;

      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlThin;

      x_row := x_row + 2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := '=SUM(E'+IntToStr(x_start_row+3) + ':E'+IntToStr(x_row-2)+')';
      Range['G'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=SUM(F'+IntToStr(x_start_row+3) + ':F'+IntToStr(x_row-2)+')';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '=SUM(G'+IntToStr(x_start_row+3) + ':G'+IntToStr(x_row-2)+')';

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Minus Local Payments';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := '=G'+IntToStr(x_row-1);

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := '=E'+IntToStr(x_row-2) + '-E'+IntToStr(x_row-1);

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'E'+IntToStr(x_row)].PageBreak := Integer(xlPageBreakManual);

    end;

end;



procedure InvoiceHeader(var x_index: integer; var x_row: integer; GPSds: TSQLDataSet; x_type: integer);
begin

  with MultiInvoiceForm.scExcelExport1.ExcelWorkSheet do
    begin

      Range['A1','A1'].ColumnWidth := 25;
      Range['B1','D1'].ColumnWidth := 11;

      Range['C1','F500'].NumberFormat := '#,##0';

      Range['A'+IntToStr(x_row),'A'+IntToStr(500)].Cells.HorizontalAlignment := xlLeft;

      //x_Sheet.PageSetup.PrintTitleRows := '$1..$5';
      PageSetup.Orientation := xlPortrait;
      //x_Sheet.PageSetup.FitToPagesWide;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No.: AAACO 0488 P';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax No.';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;

      x_row := x_row+1;

      //Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'TOUR OPERATOR/PANAJI (GOA)/8/2000-2001';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;

      x_row := x_row+2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'To,';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;

      x_row := x_row+1;

      if GpSds['Organisation'] <> null then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Organisation'];
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
        end;

      x_row := x_row+1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].RowHeight := '66';

      if GpSds['Addr'] <> null then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Addr'];
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
        end;

      x_row := x_row+1;
      if GpSds['City'] <> null then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['City'];
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
        end;

      x_row := x_row+1;
      if GpSds['Country'] <> null then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Country'];
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
        end;

      x_row := x_row+2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date :';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';

      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;
      if GpSds['InvoiceDate'] <> null then
        begin
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].NumberFormat := 'dd-mmm-yyyy';
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := FormatDateTime('dd-mmm-yyyy',GpSds['InvoiceDate']);
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '12';
        end;

      x_row := x_row+1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice No :';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';

      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;
      if GpSds['InvoiceNo'] <> null then
        begin
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Trim(IntToStr(GpSds['InvoiceNo']));
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '12';
        end;
      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';

      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;
      if (GpSds['MasterCode'] <> null) and (x_type <> 2) then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := Trim(GpSds['MasterCode'])+' '
      else if (x_type = 2) and (GpSds['tl_type'] = 1) then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'T/L-A'
      else if (x_type = 2) and (GpSds['tl_type'] = 2) then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'T/L-B';

      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '12';

      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Invoice';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.Size := '14';

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';

      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;

      if GpSds['MasterDepartureDate'] <> null then
        begin
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].NumberFormat := 'dd-mmm-yyyy';
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := FormatDateTime('dd-mmm-yyyy',GpSds['MasterDepartureDate']);
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '12';
        end;

//      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Service Tax No: Tour Operator / Panaji / 8 / 2000';
//      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Font.Size := '8';
//      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Cells.HorizontalAlignment := xlRight;

      x_row := x_row+3;

      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.Size := '12';

      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlThin;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Details';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Type';

      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Unit Price';
      Range['D'+IntToStr(x_row),'G'+IntToStr(x_row)].Cells.HorizontalAlignment := xlRight;

      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Qty';

      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Amount';

      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'LP';

      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Cells.HorizontalAlignment := xlLeft;
      Range['D'+IntToStr(x_row),'G'+IntToStr(x_row)].Cells.HorizontalAlignment := xlRight;
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlThin;

    end;

end;

procedure InvoiceDetails(x_index: integer; var x_row: integer; GPSds: TSQLDataSet);
var
  x_start_row: integer;
  x_TourCode, y_TourCode, x_BookingRef, y_BookingRef: string;
  x_newTourCode, x_newRef: Boolean;
begin

  with MultiInvoiceForm.scExcelExport1.ExcelWorkSheet do
    begin

      x_start_row := x_row;

      x_TourCode := '!@#';
      x_BookingRef := '!@#';

      while not GpSds.EOF do
        begin

           if GpSds['TourCode'] <> null then
             y_TourCode := GpSds['TourCode']
           else
             y_TourCode := '';

           if y_TourCode <> x_TourCode then
             x_NewTourCode := True
           else
             x_NewTourCode := False;

           if GpSds['BookingRef'] <> null then
             y_BookingRef := GpSds['BookingRef']
           else
             y_BookingRef := '';

           if y_BookingRef <> x_BookingRef then
             x_NewRef := True
           else
             x_NewRef := False;

           if x_NewTourCode then
             begin
               if x_row <> x_Start_Row then
                 x_row := x_row+2;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := y_TourCode;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Color := clBlue;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
             end;

           if x_NewRef then
             begin
               x_row := x_row+1;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := y_BookingRef;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
             end;

           x_row := x_row + 1;

           if GpSds['Details'] <> null then
             Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Details'];
           if GpSds['RoomSize'] <> null then
             Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := GpSds['RoomSize'];
           if (GpSds['UnitPrice'] <> null) and (GpSds['UnitPrice'] <> 0.0) then
             Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := FloatToStr(GpSds['UnitPrice']);
           if (GpSds['Quantity'] <> null) and (GpSds['Quantity'] <> 0.0) then
             Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := FloatToStr(GpSds['Quantity']);
           if (GpSds['UnitPrice'] <> null) and (GpSds['Quantity'] <> null) and (GpSds['UnitPrice'] <> 0.0) and (GpSds['Quantity'] <> 0.0) then
             Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=D'+IntToStr(x_row)+'*E'+IntToStr(x_row);
           if (GpSds['LocalPayment'] <> null) and (GpSds['LocalPayment'] <> 0.0) then
             Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := FloatToStr(GpSds['LocalPayment']);

           Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.Size := '12';


           x_TourCode := y_TourCode;

           x_BookingRef := y_BookingRef;

           GpSds.Next;

        end;

      x_row := x_row + 1;

      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlThin;

      x_row := x_row + 2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=SUM(F'+IntToStr(x_start_row+1) + ':F'+IntToStr(x_row-2)+')';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '=SUM(G'+IntToStr(x_start_row+1) + ':G'+IntToStr(x_row-2)+')';
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax @3.09%';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=ROUND(F'+IntToStr(x_row-1)+'*(3.09/100),0)';
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row+2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=F'+IntToStr(x_row-2) + '+F'+IntToStr(x_row-3);
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].PageBreak := Integer(xlPageBreakManual);

    end;


end;


procedure InvoiceDetails_TL(x_index: integer; var x_row: integer; GPSds: TSQLDataSet);
var
  x_start_row, x_count: integer;
  y_TourCode, x_BookingRef, y_BookingRef: string;
  x_newRef: Boolean;
  x_tl_type: integer;
begin

  x_tl_type := GpSds['tl_type'];

  with MultiInvoiceForm.scExcelExport1.ExcelWorkSheet do
    begin

      x_start_row := x_row;
      x_count := 0;

      x_BookingRef := '!@#';

      while not GpSds.EOF do
        begin

           if GpSds['TourCode'] <> null then
             y_TourCode := GpSds['TourCode']
           else
             y_TourCode := '';

           if GpSds['BookingRef'] <> null then
             y_BookingRef := GpSds['BookingRef']
           else
             y_BookingRef := '';

           if y_BookingRef <> x_BookingRef then
             x_NewRef := True
           else
             x_NewRef := False;

           if x_NewRef then
             begin
               x_row := x_row+1;
               x_count := x_count + 1;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_count;
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
               Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '12';
             end;

           x_row := x_row + 1;

           if GpSds['Details'] <> null then
             Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Details'];
           if GpSds['RoomSize'] <> null then
             Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := GpSds['RoomSize'];
           if (GpSds['UnitPrice'] <> null) and (GpSds['UnitPrice'] <> 0.0) then
             Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := FloatToStr(GpSds['UnitPrice']);
           if (GpSds['Quantity'] <> null) and (GpSds['Quantity'] <> 0.0) then
             Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := FloatToStr(GpSds['Quantity']);
           if (GpSds['UnitPrice'] <> null) and (GpSds['Quantity'] <> null) and (GpSds['UnitPrice'] <> 0.0) and (GpSds['Quantity'] <> 0.0) then
             Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=D'+IntToStr(x_row)+'*E'+IntToStr(x_row);
           if (GpSds['LocalPayment'] <> null) and (GpSds['LocalPayment'] <> 0.0) then
             Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := FloatToStr(GpSds['LocalPayment']);

           Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.Size := '12';

           x_BookingRef := y_BookingRef;

           GpSds.Next;

        end;

      x_row := x_row + 1;

      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlThin;

      x_row := x_row + 2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=SUM(F'+IntToStr(x_start_row+1) + ':F'+IntToStr(x_row-2)+')';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '=SUM(G'+IntToStr(x_start_row+1) + ':G'+IntToStr(x_row-2)+')';
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row+1;

      if x_tl_type = 1 then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax @3.09%';
          Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=ROUND(F'+IntToStr(x_row-1)+'*(3.09/100),0)';
          Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.Size := '12';
        end;

      x_row := x_row+2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '=F'+IntToStr(x_row-2) + '+F'+IntToStr(x_row-3);
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.Size := '12';

      x_row := x_row+1;

      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].PageBreak := Integer(xlPageBreakManual);

    end;

end;


end.
