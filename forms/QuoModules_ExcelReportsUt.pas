unit QuoModules_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes;

procedure QuoModule_Invoice_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_QuoModules_id, x_option, x_Months_id, x_YearRef, x_PrincipalAgents_id, x_ServiceTax_Option: integer);
procedure QuoModule_Quotation_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_QuoModules_id, x_option, x_Months_id, x_YearRef, x_PrincipalAgents_id, x_ServiceTaxOption: integer);
procedure QuoModule_Header (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet);
procedure QuoModule_Quotation_Header (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_ServiceTaxOption: integer);
procedure QuoModule_Details (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet);
procedure QuoModule_Quotation_Details (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_ServiceTaxOption: integer);
procedure QuoModule_OutstandingInvoices (scExcelExport:TScExcelExport; var x_row: integer);
function GetConsultant(x_PrincipalAgents_id: integer): string;
function GetServiceTaxAmt (x_QuoModules_id: integer): double;
procedure QuoModule_Header_Inv (var x_row, x_Invoices_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_QuoModules_id: integer);
procedure Invoice_Details (var x_row, x_Invoices_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_QuoModules_id: integer);
function GetTaxableAmt (x_Invoices_id: integer): double;

implementation

uses BackOfficeDM, Variants, GeneralUt;

var
  _x_count: integer;
  _x_InvoiceDate: TDateTime;
  _x_Organisation: string;
  _x_Address: string;
  _x_City: string;
  _x_PostalCode: string;
  _x_Country: string;
  _x_Consultant: string;
  _x_Currency: string;
  _x_Pax: array[0..1000] of string;
  _x_InvoiceNo: array[0..1000] of string;
  _x_RefNo: array[0..1000] of string;
  _x_TourCode: array[0..1000] of string;
  _x_NumPax: array[0..1000] of integer;
  _x_Date: array[0..1000] of string;
  _x_Total: array[0..1000] of string;
  _x_ServiceTax: array[0..1000] of string;
  _x_ServiceTaxExclCess: array[0..1000] of string;
  _x_SbCess: array[0..1000] of string;
  _x_KkCess: array[0..1000] of string;
  _x_ServiceTaxAmt: array[0..1000] of string;
  _x_ServiceTaxExclCessAmt: array[0..1000] of string;
  _x_SbCessAmt: array[0..1000] of string;
  _x_KkCessAmt: array[0..1000] of string;
  _x_CurrencyCode: array[0..1000] of string;
  _x_Invoices_id: integer;
  _x_ServiceTax_option: integer;
  _x_ServiceTaxPerc: double;
  _x_ServiceTaxExclCessPerc: double;
  _x_SbCessPerc: double;
  _x_KkCessPerc: double;
  _x_BankAccountNo: string;
  _x_BankName: string;
  _x_BankAddress: string;
  _x_BankSwiftCode: string;
  _x_BankSortCode: string;
  _x_BankIbanNo: string;

  _x_Ben_BankName: string;
  _x_Ben_BankSwift: string;
  _x_Ben_BankAccountNo: string;
  _x_Ben_BankAccountName: string;

  _x_Months_id: integer;
  _x_YearRef: integer;

  _x_Company_Org: string;
  _x_Company_Addr_Line1: string;
  _x_Company_Addr_Line2: string;
  _x_Company_Addr_Line3: string;


procedure QuoModule_Invoice_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_QuoModules_id, x_option, x_Months_id, x_YearRef, x_PrincipalAgents_id, x_ServiceTax_Option: integer);
var
  GpSds, Gp2Sds: TSQLDataSet;
  x_QueryString, x_Str, x_Str2, x_LeftStr: string;
  x_row, x_StartRow, x_GroupNo: integer;
  x_PrevAssetModules_id: integer;
  x_NewGroup: boolean;
begin

  _x_Months_id := x_Months_id;
  _x_YearRef := x_YearRef;

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  _x_count := 0;

  if x_option = 1 then
    x_str := 'AND i.QuoModules_id = ' + IntToStr(x_QuoModules_id) + ' '
  else if x_option = 2 then
    x_str := 'AND ((YEAR(i.InvoiceDate)*12) + MONTH(i.InvoiceDate)) = ' + IntToStr((x_YearRef*12)+x_Months_id) + ' ' +
             'AND i.Addressbook_id = ' + IntToStr(x_PrincipalAgents_id) + ' ';

  x_str2 := '';
  x_LeftStr := '';
  if (x_Months_id = 3) or (x_Months_id = 4) then
    begin
      if x_ServiceTax_Option = 2 then
        x_str2 := 'AND i.LinkedInvoices_id IS NULL'
      else if x_ServiceTax_Option = 3 then
        x_str2 := 'AND MONTH(i2.InvoiceDate) = MONTH(i.InvoiceDate) ';

      if x_ServiceTax_Option = 3 then
        x_LeftStr := 'INNER JOIN InvoiceDetails id2 ON qd.QuoModuleDetails_id = id2.QuoModuleDetails_id ' +
                     'INNER JOIN Invoices i2 ON id2.Invoices_id = i2.Invoices_id';
    end;

  x_QueryString := 'SELECT i.Invoices_id, q.QuoModules_id, q.QuotationDate, i.InvoiceDate, q.QuotationNo, q.PaxName, ' +
       'q.NumPax, q.ArrivalDate, i.MasterCode, i.MasterDepartureDate, c.CurrencyCode, i.InvoiceNo, i.InvoiceDate, ' +
       'qd.DateIn, qd.DateOut, qd.QuoModuleDetails, qd.Qty, qd.Rate, qd.Cost, qd.CancelPerc, ' +
       'a.Organisation, ' +
       'replace(replace(replace(Address, char(13),'' ''), char(10), '' ''), char(9), '' '') As Address, ' +
       'a.City, a.PostalCode, co.Country, qd.ServTaxPerc, qd.ServTaxAmt, qd.TotalAmt, qd.RateAfterServTax, qd.TrsType ' +
       'FROM Invoices i ' +
       'INNER JOIN QuoModules q ON i.QuoModules_id = q.QuoModules_id ' +
       'INNER JOIN QuoModuleDetails qd ON q.QuoModules_id = qd.QuoModules_id ' +
       'LEFT JOIN Currencies c ON i.Currencies_id = c.Currencies_id ' +
       'LEFT JOIN Addressbook a ON i.Addressbook_id = a.Addressbook_id ' +
       'LEFT JOIN Countries co ON a.Countries_id = co.Countries_id ' +
       'WHERE q.Trial = 0 ' +
       'AND i.QuoModules_id IS NOT NULL ' +
       'AND i.InvoiceDate IS NOT NULL ' +
       'AND i.InvoiceNo IS NOT NULL ' +
       x_Str +
       'ORDER BY q.QuotationNo, qd.MainOrderNo, qd.SubOrderNo ';

  x_QueryString := 'SELECT SUM(COALESCE(RateAfterServTax,0.0)*COALESCE(Qty,0.0)) AS Amt FROM QuoModuleDetails ' +
    'WHERE QuoModules_id = ' + IntToStr(x_QuoModules_id);


  if x_ServiceTax_Option = 1 then
    x_QueryString := 'SELECT i.Invoices_id, q.QuoModules_id, q.QuotationDate, i.InvoiceDate, q.QuotationNo, q.PaxName, ' +
         'q.NumPax, q.ArrivalDate, i.MasterCode, i.MasterDepartureDate, c.CurrencyCode, i.InvoiceNo, i.InvoiceDate, ' +
         'qd.DateIn, qd.DateOut, qd.QuoModuleDetails, qd.Qty, qd.Rate, qd.Cost, qd.CancelPerc, ' +
         'a.Organisation, ' +
         'replace(replace(replace(Address, char(13),''''), char(10), ''''), char(9), '''') As Address, ' +
         'a.City, a.PostalCode, co.Country, qd.ServTaxPerc, qd.ServTaxAmt, qd.TotalAmt, qd.RateAfterServTax, qd.TrsType, ' +
         'c.BankAccountNo, c.BankSwiftCode, c.BankSortCode, c.BankIbanNo, c.BankName, BankAddress, ' +
         'COALESCE((SELECT SUM(COALESCE(qmd3.RateAfterServTax,0.0)*COALESCE(qmd3.Qty,0.0)/100.0) FROM QuoModuleDetails qmd3 WHERE qmd3.QuoModuleDetails_id = qd.QuoModuleDetails_id),0.0) AS TotalServiceTax, ' +
         '(SELECT WebQuotation FROM Quotations qu WHERE qu.TourCode = q.TourCode AND qu.Trial = 0) AS WebQuotation, ' +
         'c.Ben_BankName, c.Ben_BankSwift, c.Ben_BankAccountNo, c.Ben_BankAccountName ' +
         'FROM Invoices i ' +
         'INNER JOIN QuoModules q ON i.QuoModules_id = q.QuoModules_id ' +
         'INNER JOIN QuoModuleDetails qd ON q.QuoModules_id = qd.QuoModules_id ' +
         'LEFT JOIN Currencies c ON i.Currencies_id = c.Currencies_id ' +
         'LEFT JOIN Addressbook a ON i.Addressbook_id = a.Addressbook_id ' +
         'LEFT JOIN Countries co ON a.Countries_id = co.Countries_id ' +
         x_LeftStr + ' ' +
         'WHERE q.Trial = 0 ' +
         'AND i.QuoModules_id IS NOT NULL ' +
         'AND i.InvoiceDate IS NOT NULL ' +
         'AND i.InvoiceNo IS NOT NULL ' +
         x_Str + ' ' +
         x_Str2 + ' ' +
         ' AND EXISTS (SELECT * FROM Masters m2 LEFT JOIN MasterDepartureDates mdd2 ON m2.Masters_id = mdd2.masters_id ' +
                       'WHERE i.MasterCode = m2.MasterCode AND i.MasterDepartureDate = mdd2.TourDate ' +
                       'AND mdd2.ReturnDate <= ''09/30/2011'') ' +
         'ORDER BY c.CurrencyCode, q.QuotationNo, qd.MainOrderNo, qd.SubOrderNo '

  else
    x_QueryString := 'SELECT i.Invoices_id, q.QuoModules_id, q.QuotationDate, i.InvoiceDate, q.QuotationNo, q.PaxName, ' +
         'q.NumPax, q.ArrivalDate, i.MasterCode, i.MasterDepartureDate, c.CurrencyCode, i.InvoiceNo, i.InvoiceDate, ' +
         'qd.DateIn, qd.DateOut, qd.QuoModuleDetails, qd.Qty, qd.Rate, qd.Cost, qd.CancelPerc, ' +
         'a.Organisation, ' +
         'replace(replace(replace(Address, char(13),''''), char(10), ''''), char(9), '''') As Address, ' +
         'a.City, a.PostalCode, co.Country, qd.ServTaxPerc, qd.ServTaxAmt, qd.TotalAmt, qd.RateAfterServTax, qd.TrsType, ' +
         'c.BankAccountNo, c.BankSwiftCode, c.BankSortCode, c.BankIbanNo, c.BankName, BankAddress, ' +
         'COALESCE((SELECT SUM(COALESCE(qmd3.RateAfterServTax,0.0)*COALESCE(qmd3.Qty,0.0)/100.0) FROM QuoModuleDetails qmd3 WHERE qmd3.QuoModuleDetails_id = qd.QuoModuleDetails_id),0.0) AS TotalServiceTax, ' +
         '(SELECT WebQuotation FROM Quotations qu WHERE qu.TourCode = q.TourCode AND qu.Trial = 0) AS WebQuotation, ' +
         'c.Ben_BankName, c.Ben_BankSwift, c.Ben_BankAccountNo, c.Ben_BankAccountName ' +
         'FROM Invoices i ' +
         'INNER JOIN QuoModules q ON i.QuoModules_id = q.QuoModules_id ' +
         'INNER JOIN QuoModuleDetails qd ON q.QuoModules_id = qd.QuoModules_id ' +
         'LEFT JOIN Currencies c ON i.Currencies_id = c.Currencies_id ' +
         'LEFT JOIN Addressbook a ON i.Addressbook_id = a.Addressbook_id ' +
         'LEFT JOIN Countries co ON a.Countries_id = co.Countries_id ' +
         x_LeftStr + ' ' +
         'WHERE q.Trial = 0 ' +
         'AND i.QuoModules_id IS NOT NULL ' +
         'AND i.InvoiceDate IS NOT NULL ' +
         'AND i.InvoiceNo IS NOT NULL ' +
         x_Str + ' ' +
         x_Str2 + ' ' +
         ' AND EXISTS (SELECT * FROM Masters m2 LEFT JOIN MasterDepartureDates mdd2 ON m2.Masters_id = mdd2.masters_id ' +
                       'WHERE i.MasterCode = m2.MasterCode AND i.MasterDepartureDate = mdd2.TourDate ' +
                       'AND mdd2.ReturnDate > ''09/30/2011'') ' +
         ' AND EXISTS (SELECT * FROM InvoiceDetails id2 ' +
                       'WHERE i.Invoices_id = id2.Invoices_id ' +
                       'AND id2.QuoModuleDetails_id = qd.QuoModuleDetails_id) ' +
         'ORDER BY c.CurrencyCode, i.InvoiceDate, q.QuotationNo, qd.MainOrderNo, qd.SubOrderNo ';


  if x_option = 3 then
    x_QueryString := 'SELECT i.Invoices_id, i.InvoiceDate, i.MasterCode, i.MasterDepartureDate, c.CurrencyCode,' +
       'i.InvoiceNo, i.InvoiceDate, ' +
       'id.Details, id.UnitPrice, id.Quantity, id.Amount, id.ServiceTaxPerc, id.SbCessPerc, ' +
       'a.Organisation, ' +
       'replace(replace(replace(Address, char(13),''''), char(10), ''''), char(9), '''') As Address, ' +
       'a.City, a.PostalCode, co.Country, ' +
       'c.BankAccountNo, c.BankSwiftCode, c.BankSortCode, c.BankIbanNo, c.BankName, BankAddress, ' +
       'c.Ben_BankName, c.Ben_BankSwift, c.Ben_BankAccountNo, c.Ben_BankAccountName ' +
       'FROM Invoices i ' +
            'LEFT JOIN InvoiceDetails id ON i.Invoices_id = id.Invoices_id ' +
            'LEFT JOIN Currencies c ON i.Currencies_id = c.Currencies_id ' +
            'LEFT JOIN Addressbook a ON i.Addressbook_id = a.Addressbook_id ' +
            'LEFT JOIN Countries co ON a.Countries_id = co.Countries_id ' +
       'WHERE i.Invoices_id = ' + IntToStr(x_QuoModules_id) + ' ' +
       'ORDER BY id.ItemNo, id.InvoiceDetails_id';


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  _x_BankAccountNo := '';
  _x_BankName := '';
  _x_BankAddress := '';
  _x_BankSwiftCode := '';
  _x_BankSortCode := '';
  _x_BankIbanNo := '';

  _x_Ben_BankName := '';
  _x_Ben_BankSwift := '';
  _x_Ben_BankAccountNo := '';
  _x_Ben_BankAccountName := '';

  if (GpSds['BankAccountNo'] <> null) and (trim(GpSds['BankAccountNo']) > '') then
    _x_BankAccountNo := GpSds['BankAccountNo'];

  if (GpSds['BankName'] <> null) and (trim(GpSds['BankName']) > '') then
    _x_BankName := GpSds['BankName'];

  if (GpSds['BankAddress'] <> null) and (trim(GpSds['BankAddress']) > '') then
    _x_BankAddress := GpSds['BankAddress'];

  if (GpSds['BankSwiftCode'] <> null) and (trim(GpSds['BankSwiftCode']) > '') then
    _x_BankSwiftCode := GpSds['BankSwiftCode'];

  if (GpSds['BankSortCode'] <> null) and (trim(GpSds['BankSortCode']) > '') then
    _x_BankSortCode := GpSds['BankSortCode'];

  if (GpSds['BankIbanNo'] <> null) and (trim(GpSds['BankIbanNo']) > '') then
    _x_BankIbanNo := GpSds['BankIbanNo'];

  if (GpSds['Ben_BankName'] <> null) and (trim(GpSds['Ben_BankName']) > '') then
    _x_Ben_BankName := GpSds['Ben_BankName'];

  if (GpSds['Ben_BankSwift'] <> null) and (trim(GpSds['Ben_BankSwift']) > '') then
    _x_Ben_BankSwift := GpSds['Ben_BankSwift'];

  if (GpSds['Ben_BankAccountNo'] <> null) and (trim(GpSds['Ben_BankAccountNo']) > '') then
    _x_Ben_BankAccountNo := GpSds['Ben_BankAccountNo'];

  if (GpSds['Ben_BankAccountName'] <> null) and (trim(GpSds['Ben_BankAccountName']) > '') then
    _x_Ben_BankAccountName := GpSds['Ben_BankAccountName'];

  _x_InvoiceDate := StrToDate('01/01/2000');
  if GpSds['InvoiceDate'] <> null then
    _x_InvoiceDate := GpSds['InvoiceDate'];

  _x_Organisation := '';
  if GpSds['Organisation'] <> null then
    _x_Organisation := GpSds['Organisation'];

  _x_Address := '';
  if GpSds['Address'] <> null then
    _x_Address := GpSds['Address'];

  _x_City := '';
  if GpSds['City'] <> null then
    _x_City := GpSds['City'];

  _x_PostalCode := '';
  if GpSds['PostalCode'] <> null then
    _x_PostalCode := GpSds['PostalCode'];

  _x_Country := '';
  if GpSds['Country'] <> null then
    _x_Country := GpSds['Country'];


  // Company Address
  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp2Sds.Close;
  Gp2Sds.CommandText := 'select a.organisation, a.address, a.city, a.postalcode, s.state, c.country ' +
      ' from addressbook a ' +
      ' left join states s on a.states_id = s.states_id ' +
      ' left join countries c on a.countries_id = c.countries_id ' +
      ' where a.addressbook_id = 68 ';
  Gp2Sds.Open;

  _x_Company_Org := '';
  if Gp2Sds['organisation'] <> null then
    _x_Company_Org := Gp2Sds['organisation'];

  _x_Company_Addr_Line1 := '';
  if Gp2Sds['address'] <> null then
    _x_Company_Addr_Line1 := Gp2Sds['address'];

  _x_Company_Addr_Line2 := '';
  if Gp2Sds['city'] <> null then
    _x_Company_Addr_Line2 := Gp2Sds['city'];
  if Gp2Sds['state'] <> null then
    begin
      if _x_Company_Addr_Line2 > '' then
        _x_Company_Addr_Line2 := _x_Company_Addr_Line2 + ', ';
      _x_Company_Addr_Line2 := _x_Company_Addr_Line2 + Gp2Sds['state'];
    end;
  if Gp2Sds['postalcode'] <> null then
    begin
      if _x_Company_Addr_Line2 > '' then
        _x_Company_Addr_Line2 := _x_Company_Addr_Line2 + ' - ';
      _x_Company_Addr_Line2 := _x_Company_Addr_Line2 + Gp2Sds['postalcode'];
    end;

  _x_Company_Addr_Line3 := '';
  if Gp2Sds['country'] <> null then
    _x_Company_Addr_Line3 := Gp2Sds['country'];

  _x_consultant := GetConsultant(x_PrincipalAgents_id);

  _x_Currency := '';
  if GpSds['CurrencyCode'] <> null then
    _x_Currency := GpSds['CurrencyCode'];

  _x_ServiceTax_option := x_ServiceTax_Option;

  x_row := 1;
  x_StartRow := x_row;
  x_PrevAssetModules_id := -1;
  x_GroupNo := 0;

  if (x_option = 1) or (x_option = 2) then
    begin

      while not GpSds.Eof do
        begin

          _x_invoices_id := GpSds['Invoices_id'];

          x_NewGroup := false;

          if x_PrevAssetModules_id <> GpSds['QuoModules_id'] then
            begin
              x_NewGroup := true;
              x_GroupNo := x_GroupNo + 1;
            end;

          if x_NewGroup then
            begin

              x_PrevAssetModules_id := GpSds['QuoModules_id'];

              QuoModule_Header (x_row, x_PrevAssetModules_id, scExcelExport, GpSds);

              x_row := x_row + 1;

              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].Font.Size := '10';
              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].Font.Name := 'Book Antiqua';
              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].ColumnWidth := 44;
              scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].ColumnWidth := 12.0;
              scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].ColumnWidth := 10.2;
              scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'G'+IntToStr(x_row)].ColumnWidth := 4.5;
              scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].ColumnWidth := 12.0;
              scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].ColumnWidth := 11.0;

              if (x_GroupNo mod 2) > 0 then
                scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].Interior.Color := $00CCFFFF
              else
                scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row+1),'I'+IntToStr(x_row+1)].PageBreak := xlPageBreakManual;

              x_row := x_row + 1;
              x_StartRow := x_row;

              x_row := x_row + 2;

            end;

        end;

    end;

  if (x_option = 3) then
    begin

      while not GpSds.Eof do
        begin

          _x_invoices_id := GpSds['Invoices_id'];

          x_NewGroup := false;

          if x_PrevAssetModules_id <> GpSds['Invoices_id'] then
            begin
              x_NewGroup := true;
              x_GroupNo := x_GroupNo + 1;
            end;

          if x_NewGroup then
            begin

              x_PrevAssetModules_id := GpSds['Invoices_id'];

              QuoModule_Header_Inv (x_row, x_PrevAssetModules_id, scExcelExport, GpSds, x_QuoModules_id);

              x_row := x_row + 1;

              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].Font.Size := '10';
              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].Font.Name := 'Book Antiqua';
              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].ColumnWidth := 44;
              scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].ColumnWidth := 12.0;
              scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].ColumnWidth := 10.2;
              scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'G'+IntToStr(x_row)].ColumnWidth := 4.5;
              scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].ColumnWidth := 12.0;
              scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].ColumnWidth := 11.0;

              if (x_GroupNo mod 2) > 0 then
                scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].Interior.Color := $00CCFFFF
              else
                scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row+1),'I'+IntToStr(x_row+1)].PageBreak := xlPageBreakManual;

              x_row := x_row + 1;
              x_StartRow := x_row;

              x_row := x_row + 2;

            end;

        end;

    end;


  if x_option = 2 then
    begin
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row+1),'I'+IntToStr(x_row+1)].PageBreak := xlPageBreakManual;
      QuoModule_OutstandingInvoices (scExcelExport, x_row);
    end;

  scExcelExport.ExcelWorkSheet.Range['D1','E1'].EntireColumn.Hidden := True;
  scExcelExport.ExcelWorkSheet.Range['K1','M1'].EntireColumn.Hidden := True;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;



function GetConsultant(x_PrincipalAgents_id: integer): string;
var
  GpSds : TSQLDataSet;
  x_QueryString: string;
  x_consultant: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT Consultant FROM Consultants WHERE Addressbook_id = ' + IntToStr(x_PrincipalAgents_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_consultant := '';
  if (not GpSds.EOF) and (GpSds['Consultant'] <> null) then
    x_consultant := GpSds['Consultant'];

  GpSds.Free;

  Result := x_consultant;
end;



procedure QuoModule_Header (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet);
var
  Gp2Sds : TSQLDataSet;
  x_Pan, x_TourCode, x_QueryString, x_sal, x_ServiceTaxNo, x_CinNo, x_GstinNo: string;
  BookSds: TSQLDataSet;
begin

  x_TourCode := '';
  if GpSds['MasterCode'] <> null then
    x_TourCode := GpSds['MasterCode'];

  _x_Pax[_x_count] := '';
  if GpSds['PaxName'] <> null then
    _x_Pax[_x_count] := GpSds['PaxName'];

  BookSds := TSQLDataSet.Create(nil);
  BookSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT f.BookingsClients_id, f.Male, f.[Name], f.CancelledOn, f.Reference, ' +
      'f.Bookings_id, f.TourLeader, f.TourLeaderTrainee, f.TourCode, f.TourDate, bd.SingleSupplement ' +
      'FROM dbo.fn_GetMasterPaxListOnTour (' + QuotedStr(x_TourCode) + ',' + QuotedStr(FormatDateTime('mm/dd/yyyy',GpSds['MasterDepartureDate'])) + ', 2) f ' +
      'LEFT JOIN BookingDetails bd ON f.BookingsClients_id = bd.BookingsClients_id AND f.TourCode = bd.TourCode AND f.TourDate = bd.TourDate ';

  BookSds.Close;
  BookSds.CommandText := x_QueryString;
  BookSds.Open;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Org;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].WrapText := false;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line2;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line3;
      x_row := x_row + 2;

      x_Pan := GetPanNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No: ' + x_Pan;

      x_row := x_row + 1;
      x_ServiceTaxNo := GetServiceTaxNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax No.: ' + x_ServiceTaxNo;

      x_row := x_row + 1;
      x_CinNo := GetCinNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Cin No.: ' + x_CinNo;

      x_row := x_row + 1;
      x_GstinNo := GetGstinNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GSTIN: ' + x_GstinNo;

      x_row := x_row + 1;
      //Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'TOUR OPERATOR/PANAJI (GOA)/8/2000-2001';

      x_row := x_row + 3;

      if (GpSds['WebQuotation'] = null) or (GpSds['WebQuotation'] = false) then
        begin

          if GpSds['Organisation'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Organisation'];
          x_row := x_row + 1;
          if GpSds['Address'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Address'];
          x_row := x_row + 1;
          if GpSds['City'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['City'];
          if GpSds['PostalCode'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value + ' ' + GpSds['PostalCode'];
          x_row := x_row + 1;
          if GpSds['Country'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Country'];

        end
      else
        begin

          Gp2Sds := TSQLDataSet.Create(nil);
          Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

          Gp2Sds.Close;
          Gp2Sds.CommandText := 'SELECT q.PaxName, q.Email FROM Invoices i ' +
            'INNER JOIN QuoModules qm ON qm.QuoModules_id = i.QuoModules_id ' +
            'INNER JOIN Quotations q ON q.TourCode = qm.TourCode ' +
            'WHERE i.QuoModules_id = ' + IntToStr(x_QuoModules_id) +  ' ' +
            'AND i.Invoices_id = ' + IntToStr(GpSds['Invoices_id']);
          Gp2Sds.Open;

          if Gp2Sds['PaxName'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Gp2Sds['PaxName'];
          x_row := x_row + 1;
          if Gp2Sds['Email'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Gp2Sds['Email'];
          x_row := x_row + 1;
          x_row := x_row + 1;

          Gp2Sds.Free;

        end;

      x_row := x_row + 3;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date';
      if GpSds['InvoiceDate'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['InvoiceDate']);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice No';
      if GpSds['InvoiceNo'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + VarToStr(GpSds['InvoiceNo']);
      _x_InvoiceNo[_x_count] := '=B' + IntToStr(x_row);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
      if GpSds['MasterDepartureDate'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['MasterDepartureDate']);
      _x_Date[_x_count] := '=B' + IntToStr(x_row);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
      if GpSds['MasterCode'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['MasterCode'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      _x_TourCode[_x_count] := '=B' + IntToStr(x_row);
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Invoice';

      if GpSds['CurrencyCode'] <> null then
        _x_CurrencyCode[_x_count] := GpSds['CurrencyCode']
      else
        _x_CurrencyCode[_x_count] := '';

      Range['A'+IntToStr(x_row-3),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 3;
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Unit Price';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'ST (%)';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Net Price';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Qty';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Amount';
      Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Cancel(%)';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Serv Tax Amt';
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 3;
      if BookSds['Reference'] <> null then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := BookSds['Reference'];
          _x_RefNo[_x_count] := '=A' + IntToStr(x_row);
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
          x_row := x_row + 1;

          while not BookSds.Eof do
            begin
              if BookSds['Name'] <> null then
                begin

                  if BookSds['Male'] = null then
                    x_sal := ''
                  else if BookSds['Male'] = true then
                    x_sal := 'Mr. '
                  else
                    x_sal := 'Ms.';

                  Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_sal + ' ' + BookSds['Name'];
                  x_row := x_row + 1;
                End;

                BookSds.Next;
            end;

          BookSds.First;

        end;

      if GpSds['NumPax'] then
        _x_NumPax[_x_count] := GpSds['NumPax'];

      if GpSds['NumPax'] <> null then
        _x_NumPax[_x_count] := GpSds['NumPax']
      else
        _x_NumPax[_x_count] := 1;


      x_row := x_row + 3;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Book Element';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Start Date';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'End Date';
      Range['B'+IntToStr(x_row),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeRight].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeRight].Weight := xlMedium;

      x_row := x_row + 2;

    end;

  QuoModule_Details (x_row, x_QuoModules_id, scExcelExport, GpSds);
  x_row := x_row + 1;

  BookSds.Free;

end;

procedure QuoModule_Header_Inv (var x_row, x_Invoices_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_QuoModules_id: integer);
var
  x_Pan, x_TourCode, x_QueryString, x_sal, x_ServiceTaxNo, x_CinNo: string;
  BookSds: TSQLDataSet;
begin

  x_TourCode := '';
  if GpSds['MasterCode'] <> null then
    x_TourCode := GpSds['MasterCode'];

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Org;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].WrapText := false;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line2;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line3;
      x_row := x_row + 2;

      x_Pan := GetPanNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No: ' + x_Pan;

      x_row := x_row + 1;
      x_ServiceTaxNo := GetServiceTaxNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax No.: ' + x_ServiceTaxNo;

      x_row := x_row + 1;
      x_CinNo := GetCinNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Cin No.: ' + x_CinNo;

      x_row := x_row + 1;
      //Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'TOUR OPERATOR/PANAJI (GOA)/8/2000-2001';

      x_row := x_row + 3;
      if GpSds['Organisation'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Organisation'];
      x_row := x_row + 1;
      if GpSds['Address'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Address'];
      x_row := x_row + 1;
      if GpSds['City'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['City'];
      if GpSds['PostalCode'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value + ' ' + GpSds['PostalCode'];
      x_row := x_row + 1;
      if GpSds['Country'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Country'];

      x_row := x_row + 3;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date';
      if GpSds['InvoiceDate'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['InvoiceDate']);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice No';
      if GpSds['InvoiceNo'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + VarToStr(GpSds['InvoiceNo']);
      _x_InvoiceNo[_x_count] := '=B' + IntToStr(x_row);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
      if GpSds['MasterDepartureDate'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['MasterDepartureDate']);
      _x_Date[_x_count] := '=B' + IntToStr(x_row);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
      if GpSds['MasterCode'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['MasterCode'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      _x_TourCode[_x_count] := '=B' + IntToStr(x_row);
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Invoice';

      Range['A'+IntToStr(x_row-3),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 3;
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Unit Price';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'ST (%)';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Net Price';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Qty';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Amount';
      Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Cancel(%)';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Serv Tax Amt';
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 3;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Details';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := '';
      Range['B'+IntToStr(x_row),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeRight].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'C'+IntToStr(x_row)].Borders[xlEdgeRight].Weight := xlMedium;

      x_row := x_row + 2;

    end;

  Invoice_Details (x_row, x_Invoices_id, scExcelExport, GpSds, x_QuoModules_id);
  x_row := x_row + 1;

end;


procedure Invoice_Details (var x_row, x_Invoices_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_QuoModules_id: integer);
var
  x_CellCol, x_CurrencyCode, x_QueryString: string;
  x_StartRow, x_ItemNo: integer;
  x_ServiceTaxPerc, x_ServiceTaxTotal, x_ServiceTaxExclCessPerc: double;
  x_CessPerc, x_CessTotal, x_SbCessPerc, x_KkCessPerc: double;
  Gp1Sds : TSQLDataSet;
  x_Rate_CellCol, x_ST_CellCol, x_Net_CellCol, x_Qty_CellCol: string;
begin

  x_ServiceTaxPerc := GetServiceTax(GpSds['InvoiceDate'], 15);
  _x_ServiceTaxPerc := x_ServiceTaxPerc;

  x_ServiceTaxExclCessPerc := GetServiceTax(GpSds['InvoiceDate'], 26);
  _x_ServiceTaxExclCessPerc := x_ServiceTaxExclCessPerc;

  x_SbCessPerc := GetServiceTax(GpSds['InvoiceDate'], 24);
  _x_SbCessPerc := x_SbCessPerc;

  x_KkCessPerc := GetServiceTax(GpSds['InvoiceDate'], 25);
  _x_KkCessPerc := x_KkCessPerc;

  x_CurrencyCode := '';
  if GpSds['CurrencyCode'] <> null then
    x_CurrencyCode := GpSds['CurrencyCode'];

  x_StartRow := x_row;

  while (not GpSds.EOF) and (GpSds['Invoices_id'] = x_Invoices_id) do
    begin

      with scExcelExport.ExcelWorkSheet do
        begin

          x_CellCol := 'A';
          if GpSds['Details'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Details'];

          x_CellCol := NextColumn(x_CellCol);
          x_CellCol := NextColumn(x_CellCol);

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['UnitPrice'] <> null) and (GpSds['UnitPrice'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['UnitPrice'];
          x_Rate_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
          if (_x_ServiceTax_option = 1) then
            begin
              //Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 0.0;
            end
          else if (GpSds['ServiceTaxPerc'] <> 0.0) then
            begin
              if (GpSds['ServiceTaxPerc'] <> 0.0) and (GpSds['UnitPrice'] <> 0.0) then
                Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['ServiceTaxPerc'];
            end;
          x_ST_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
{
          if GpSds['Rate'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '=ROUND(' + x_Rate_CellCol + IntToStr(x_row) + '*(1.0 + ' + x_ST_CellCol + IntToStr(x_row) + '/100.0),0)';
}
          if (_x_ServiceTax_option = 1) then
            begin
              if (GpSds['UnitPrice'] <> null) and (GpSds['UnitPrice'] <> 0.0) then
                Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['UnitPrice'];
            end
          else if (GpSds['UnitPrice'] <> null) and (GpSds['UnitPrice'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '=ROUND(' + x_Rate_CellCol + IntToStr(x_row) + '*(1.0 + ' + x_ST_CellCol + IntToStr(x_row) + '/100.0),0)';

          x_Net_CellCol := x_CellCol;
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0.00';

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Quantity'] <> null) and (GpSds['Quantity'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Quantity'];
          x_Qty_CellCol := x_CellCol;
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0';

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Quantity'] <> null) and (GpSds['Quantity'] <> 0.0) and (GpSds['UnitPrice'] <> null) and (GpSds['UnitPrice'] <> 0.0) then
            begin
              Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '=' + x_Net_CellCol + IntToStr(x_row) + '*' + x_Qty_CellCol + IntToStr(x_row);
              Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0.00';
            end;

          x_row := x_row + 1;

        end;

      GpSds.Next;

    end;

  x_row := x_row + 1;


  // Formatting

  x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlDouble;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=SUM(H' + IntToStr(x_StartRow) + ':H' + IntToStr(x_row-1) + ')';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
      _x_ServiceTaxAmt[_x_count] := '=L' + IntToStr(x_row);

      x_row := x_row + 1;
      if (_x_ServiceTax_option = 1) or (_x_ServiceTax_option = 3) then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax @' + FormatFloat('#,##0.000%', x_ServiceTaxPerc);
          if _x_ServiceTax_option = 3 then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value + ' (included in net price)';

          x_ServiceTaxTotal := GetServiceTaxAmt(x_QuoModules_id);

          if _x_ServiceTax_option = 1 then
            Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=H' + IntToStr(x_row-1) + '*(' + FloatToStr(x_ServiceTaxPerc) + '/100)'
          else
            Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_ServiceTaxTotal;

          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].NumberFormat := '#,##0.00';
        end;
      _x_ServiceTax[_x_count] := '=H' + IntToStr(x_row);

      if (_x_ServiceTax_option = 3) then
      _x_ServiceTax[_x_count] := '=B' + IntToStr(x_row);

      Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0%';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].NumberFormat := '#,##0%';

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      if x_CurrencyCode <> null then
        Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := x_CurrencyCode;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=H' + IntToStr(x_row-3) + '+H' + IntToStr(x_row-2);
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
      _x_Total[_x_count] := '=H' + IntToStr(x_row);

      _x_count := _x_count + 1;

    end;

end;




procedure QuoModule_Details (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet);
var
  x_CellCol, x_CurrencyCode, x_QueryString: string;
  x_StartRow, x_ItemNo, x_numSkip: integer;
  x_ServiceTaxPerc, x_ServiceTaxTotal, x_ServiceTaxExclCessPerc, x_SbCessPerc, x_KkCessPerc: double;
  x_GstPerc, x_GstTotal: double;
  Gp1Sds : TSQLDataSet;
  x_Rate_CellCol, x_ST_CellCol, x_Net_CellCol, x_Qty_CellCol: string;
  x_total_tax_perc, x_TotalAmt, x_InvoiceBasicAmt, x_ServiceTaxAmt, x_SbCessAmt, x_KkCessAmt, x_AmtBeforeCancellation: double;
begin

  x_ServiceTaxPerc := GetServiceTax(GpSds['InvoiceDate'], 15);
  _x_ServiceTaxPerc := x_ServiceTaxPerc;

  x_ServiceTaxExclCessPerc := GetServiceTax(GpSds['InvoiceDate'], 26);
  if (x_ServiceTaxExclCessPerc = 0) then
    x_ServiceTaxExclCessPerc := _x_ServiceTaxPerc;
  _x_ServiceTaxExclCessPerc := x_ServiceTaxExclCessPerc;

  x_SbCessPerc := GetServiceTax(GpSds['InvoiceDate'], 24);
  _x_SbCessPerc := x_SbCessPerc;

  x_KkCessPerc := GetServiceTax(GpSds['InvoiceDate'], 25);
  _x_KkCessPerc := x_KkCessPerc;

  x_GstPerc := GetServiceTax(GpSds['InvoiceDate'], 28);
  if (x_GstPerc > 0.0) then
    begin
      x_ServiceTaxPerc := x_GstPerc;
      _x_ServiceTaxPerc := x_ServiceTaxPerc;

      x_ServiceTaxExclCessPerc := x_ServiceTaxPerc;
      x_ServiceTaxExclCessPerc := x_ServiceTaxPerc;

      x_SbCessPerc := 0.0;
      _x_SbCessPerc := 0.0;

      x_KkCessPerc := 0.0;
      _x_KkCessPerc := 0.0;

    end;


  x_CurrencyCode := '';
  if GpSds['CurrencyCode'] <> null then
    x_CurrencyCode := GpSds['CurrencyCode'];

  x_AmtBeforeCancellation := 0.0;

  x_StartRow := x_row;

  while (not GpSds.EOF) and (GpSds['QuoModules_id'] = x_QuoModules_id) do
    begin

      with scExcelExport.ExcelWorkSheet do
        begin

          x_CellCol := 'A';
          if GpSds['QuoModuleDetails'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['QuoModuleDetails'];

          if GpSds['TrsType'] = 7 then
            Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.FontStyle := 'Bold';

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['DateIn'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']);
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].HorizontalAlignment := xlCenter;

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['DateOut'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']);
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].HorizontalAlignment := xlCenter;

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Rate'] <> null) and (GpSds['Rate'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Rate'];
          x_Rate_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
          if (_x_ServiceTax_option = 1) then
            begin
              //Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 0.0
            end
          else
            begin
              if (x_ServiceTaxPerc <> 0.0) then
                Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := x_ServiceTaxPerc;
            end;
          x_ST_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
{
          if GpSds['Rate'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '=ROUND(' + x_Rate_CellCol + IntToStr(x_row) + '*(1.0 + ' + x_ST_CellCol + IntToStr(x_row) + '/100.0),0)';
}
          if (_x_ServiceTax_option = 1) then
            begin
              if (GpSds['Rate'] <> null) and (GpSds['Rate'] <> 0.0) then
                Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Rate'];
            end
          else
            if (GpSds['RateAfterServTax'] <> null) and (GpSds['RateAfterServTax'] <> 0.0) then
              Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['RateAfterServTax'];

          x_Net_CellCol := x_CellCol;
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0.00';

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Qty'] <> null) and (GpSds['Qty'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Qty'];
          x_Qty_CellCol := x_CellCol;
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0';

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Cost'] <> null) and (GpSds['Cost'] <> 0.0) then
            begin
              Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '=' + x_Net_CellCol + IntToStr(x_row) + '*' + x_Qty_CellCol + IntToStr(x_row);
              Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0.00';
              x_AmtBeforeCancellation := x_AmtBeforeCancellation + Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value;
            end;

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['CancelPerc'] <> null) and (GpSds['CancelPerc'] > 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['CancelPerc'];

          x_CellCol := SkipNextCol(x_CellCol,3);
          if (GpSds['ServTaxAmt'] <> null) and (GpSds['ServTaxAmt'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['ServTaxAmt'];

          x_row := x_row + 1;

        end;

      GpSds.Next;

    end;

  x_row := x_row + 1;



  // Cancellations

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT ItemNo, Details, UnitPrice, Quantity, Amount FROM InvoiceDetails ' +
    'WHERE Invoices_id = ' + IntToStr(_x_invoices_id) + ' ' +
    'AND ItemNo IN (710, 720) ' +
    'ORDER BY ItemNo, CancelPerc';

  Gp1Sds.Close;
  Gp1Sds.CommandText := x_QueryString;
  Gp1Sds.Open;

  x_ItemNo := 710;

  while (not Gp1Sds.EOF) do
    begin

      with scExcelExport.ExcelWorkSheet do
        begin

          if x_ItemNo <> Gp1Sds['ItemNo'] then
            x_row := x_row + 1;

          x_CellCol := 'A';
          if Gp1Sds['Details'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := Gp1Sds['Details'];

          x_CellCol := SkipNextCol(x_CellCol, 6);

          x_CellCol := NextColumn(x_CellCol);
          if (Gp1Sds['Amount'] <> null) and (Gp1Sds['ItemNo'] = 710) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value :=
              '=SUM(' + x_CellCol + IntToStr(x_StartRow) + ':' + x_CellCol + IntToStr(x_row-1) + ') * -1.0'
          else if (Gp1Sds['Amount'] <> null) and (Gp1Sds['Amount'] <> 0.0) and (_x_ServiceTax_option = 1) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := Gp1Sds['Amount']
          else if (Gp1Sds['Amount'] <> null) and (Gp1Sds['Amount'] <> 0.0) and ((_x_ServiceTax_option = 2) or (_x_ServiceTax_option = 3)) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := Gp1Sds['Amount'] * (1 + x_ServiceTaxPerc/100.0);

          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].NumberFormat := '#,##0.00';

          x_row := x_row + 1;

          x_ItemNo := Gp1Sds['ItemNo'];

        end;

      Gp1Sds.Next;

    end;


  Gp1Sds.Free;

  // total tax perc
  x_total_tax_perc := x_ServiceTaxExclCessPerc + x_SbCessPerc + x_KkCessPerc;

  // Formatting

  x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlDouble;
      Range['A'+IntToStr(x_row),'I'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=SUM(H' + IntToStr(x_StartRow) + ':H' + IntToStr(x_row-1) + ')';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
      _x_ServiceTaxAmt[_x_count] := '=L' + IntToStr(x_row);

      // Total Amt including tax & cess
      x_TotalAmt := x_AmtBeforeCancellation;
      x_InvoiceBasicAmt := SimpleRoundTo(x_TotalAmt/(1 + x_total_tax_perc/100),-2);
      x_ServiceTaxAmt := SimpleRoundTo((x_ServiceTaxExclCessPerc/100)*x_InvoiceBasicAmt,-2);
      x_SbCessAmt := SimpleRoundTo((x_SbCessPerc/100)*x_InvoiceBasicAmt,-2);
      //x_KkCessAmt := x_TotalAmt - (x_InvoiceBasicAmt+x_ServiceTaxAmt+x_SbCessAmt);
      x_KkCessAmt := SimpleRoundTo((x_KkCessPerc/100)*x_InvoiceBasicAmt,-2);
      x_ServiceTaxAmt := x_TotalAmt - (x_InvoiceBasicAmt+x_SbCessAmt+x_KkCessAmt);

      // Service Tax Excl Cess
      x_row := x_row + 1;
      if (_x_ServiceTax_option = 1) or (_x_ServiceTax_option = 3) then
        begin


          if (x_GstPerc > 0.0) then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GST @' + FormatFloat('#,##0.000%', x_ServiceTaxExclCessPerc)
          else
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax @' + FormatFloat('#,##0.000%', x_ServiceTaxExclCessPerc);

          if (x_GstPerc = 0.0) and (x_SbCessPerc > 0) then
            Range['A'+IntToStr(x_row+1),'A'+IntToStr(x_row+1)].Value := 'Swacch Bharat Cess @' + FormatFloat('#,##0.000%', x_SbCessPerc);

          if (x_GstPerc = 0.0) and (x_KkCessPerc > 0) then
            Range['A'+IntToStr(x_row+2),'A'+IntToStr(x_row+2)].Value := 'Krishi Kalyan Cess @' + FormatFloat('#,##0.000%', x_KkCessPerc);


          if _x_ServiceTax_option = 3 then
            begin

              Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value + ' (included in net price)';

              if (x_GstPerc = 0.0) and (x_SbCessPerc > 0) then
                Range['A'+IntToStr(x_row+1),'A'+IntToStr(x_row+1)].Value := Range['A'+IntToStr(x_row+1),'A'+IntToStr(x_row+1)].Value + ' (included in net price)';

              if (x_GstPerc = 0.0) and (x_KkCessPerc > 0) then
                Range['A'+IntToStr(x_row+2),'A'+IntToStr(x_row+2)].Value := Range['A'+IntToStr(x_row+2),'A'+IntToStr(x_row+2)].Value + ' (included in net price)';

            end;

          //x_ServiceTaxTotal := GetServiceTaxAmt(x_QuoModules_id);

          if _x_ServiceTax_option = 1 then
            Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=H' + IntToStr(x_row-1) + '*(' + FloatToStr(x_ServiceTaxPerc) + '/100)'
          else
            begin
              Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_ServiceTaxAmt;

              if (x_GstPerc = 0.0) and (x_SbCessPerc > 0) then
                Range['B'+IntToStr(x_row+1),'B'+IntToStr(x_row+1)].Value := x_SbCessAmt;

              if (x_GstPerc = 0.0) and (x_KkCessPerc > 0) then
                Range['B'+IntToStr(x_row+2),'B'+IntToStr(x_row+2)].Value := x_KkCessAmt;

            end;

          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].NumberFormat := '#,##0.00';
          if (x_SbCessPerc > 0) then
            Range['B'+IntToStr(x_row+1),'B'+IntToStr(x_row+1)].NumberFormat := '#,##0.00';
          if (x_KkCessPerc > 0) then
            Range['B'+IntToStr(x_row+2),'B'+IntToStr(x_row+2)].NumberFormat := '#,##0.00';

        end;
      _x_ServiceTax[_x_count] := '=H' + IntToStr(x_row);
      if (_x_ServiceTax_option = 3) then
        begin
          _x_ServiceTax[_x_count] := '=B' + IntToStr(x_row);
          _x_ServiceTaxExclCessAmt[_x_count] := '=B' + IntToStr(x_row);
          if (x_SbCessPerc > 0) then
            _x_SbCessAmt[_x_count] := '=B' + IntToStr(x_row+1);
          if (x_KkCessPerc > 0) then
            _x_KkCessAmt[_x_count] := '=B' + IntToStr(x_row+2);
        end;

      Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0%';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].NumberFormat := '#,##0%';

      x_numSkip := 2;

      if (x_SbCessPerc > 0) then
        x_numSkip := x_numSkip+1;

      if (x_KkCessPerc > 0) then
        x_numSkip := x_numSkip+1;

      x_row := x_row + x_numSkip;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      if x_CurrencyCode <> null then
        Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := x_CurrencyCode;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=H' + IntToStr(x_row-(x_numSkip+1));
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
      _x_Total[_x_count] := '=H' + IntToStr(x_row);

      _x_count := _x_count + 1;

    end;

end;

procedure QuoModule_OutstandingInvoices (scExcelExport:TScExcelExport; var x_row: integer);
var
  x_StartRow, x_cnt, x_table_row, x_table_end_row, i: integer;
  x_Pan, x_LocalBankAccount, x_Beneficiary, x_QueryString, x_ServiceTaxNo, x_CinNo: string;
  Gp1Sds : TSQLDataSet;
  strList: TStringList;
begin

  strList := TStringList.Create;

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT text FROM Defaults WHERE Defaults_id = 43';

  Gp1Sds.Close;
  Gp1Sds.CommandText := x_QueryString;
  Gp1Sds.Open;

  x_LocalBankAccount := '';
  if (not Gp1Sds.EOF) and (Gp1Sds['text']<>null) then
    x_LocalBankAccount := Gp1Sds['text'];

  x_QueryString := 'SELECT text FROM Defaults WHERE Defaults_id = 44';

  Gp1Sds.Close;
  Gp1Sds.CommandText := x_QueryString;
  Gp1Sds.Open;

  x_Beneficiary := '';
  if (not Gp1Sds.EOF) and (Gp1Sds['text']<>null) then
    x_Beneficiary := Gp1Sds['text'];

  Gp1Sds.Free;


  with scExcelExport.ExcelWorkSheet do
    begin

      x_StartRow := x_row;

      x_row := x_row+2;


      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Org;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].WrapText := false;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line2;
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Company_Addr_Line3;
      x_row := x_row + 2;

      x_Pan := GetPanNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'PAN No: ' + x_Pan;

      x_row := x_row + 1;
      x_ServiceTaxNo := GetServiceTaxNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Service Tax No.: ' + x_ServiceTaxNo;

      x_row := x_row + 1;
      x_CinNo := GetCinNo(1);
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Cin No.: ' + x_CinNo;

      x_row := x_row + 1;
      //Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'TOUR OPERATOR/PANAJI (GOA)/8/2000-2001';

      x_row := x_row + 3;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Invoice Date';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd-mmm-yy', _x_InvoiceDate);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sent To';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_Organisation;

      x_row := x_row + 1;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_Address;
      x_row := x_row + 1;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_City;
      x_row := x_row + 1;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_PostalCode;
      x_row := x_row + 1;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_Country;

      x_row := x_row + 2;
{
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Attention';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_consultant;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
}
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Client/Groups';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('mmm yyyy', _x_InvoiceDate);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 3;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Outstanding Invoices as per ' + FormatDateTime('dd-mmm-yy', _x_InvoiceDate);

      x_row := x_row + 3;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Name of the pax';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Invoice No';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Booking No.';

      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Tour Code';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Pax';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Arrival Date';
      Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Amt Per Pax';
      Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := 'Total';
      Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Service Tax';
      Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'SB Cess';
      Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := 'KK Cess';

      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
      Range['G'+IntToStr(x_row),'H'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
      Range['I'+IntToStr(x_row),'M'+IntToStr(x_row)].HorizontalAlignment := xlRight;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeRight].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeRight].Weight := xlMedium;

      x_row := x_row + 2;

      x_cnt := 0;

      x_table_row := x_row;

      while (x_cnt < _x_count) do
        begin

          if (x_cnt > 0) and (_x_CurrencyCode[x_cnt] <> _x_CurrencyCode[x_cnt-1]) then
            begin

              scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_table_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
              scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_table_row),'M'+IntToStr(x_row)].NumberFormat := '#,##0.00';

              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlDouble;
              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

              x_row := x_row + 1;

              scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Total Due';
              scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value :=  _x_CurrencyCode[x_cnt-1];
              scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
              scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := '=SUM(J' + IntToStr(x_table_row) + ':J' + IntToStr(x_row-1) + ')';

              scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_table_row) + ':K' + IntToStr(x_row-1) + ')';
              scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_table_row) + ':L' + IntToStr(x_row-1) + ')';
              scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := '=SUM(M' + IntToStr(x_table_row) + ':M' + IntToStr(x_row-1) + ')';

              scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'J'+IntToStr(x_row)].Font.FontStyle := 'Bold';

              x_row := x_row + 3;
              x_table_row := x_row;

            end;

          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := _x_Pax[x_cnt];

          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := _x_InvoiceNo[x_cnt];
          Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

          Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := _x_RefNo[x_cnt];
          Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

          Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := _x_TourCode[x_cnt];
          Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

          Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := _x_NumPax[x_cnt];
          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := _x_Date[x_cnt];
          Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=J' + IntToStr(x_row) + '/G' + IntToStr(x_row);
          Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := _x_Total[x_cnt];
          Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := _x_ServiceTaxExclCessAmt[x_cnt];

          Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := _x_SbCessAmt[x_cnt];
          Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := _x_KkCessAmt[x_cnt];

          Range['G'+IntToStr(x_row),'H'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
          Range['I'+IntToStr(x_row),'M'+IntToStr(x_row)].HorizontalAlignment := xlRight;

          x_cnt := x_cnt + 1;
          x_row := x_row + 1;
        end;

    end;

  x_table_end_row := x_row;

  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_table_row),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_table_row),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlDouble;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'M'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Total Due';
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := _x_CurrencyCode[x_cnt-1];
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := '=SUM(J' + IntToStr(x_table_row) + ':J' + IntToStr(x_row-1) + ')';

  scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_table_row) + ':K' + IntToStr(x_row-1) + ')';
  scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_table_row) + ':L' + IntToStr(x_row-1) + ')';
  scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := '=SUM(M' + IntToStr(x_table_row) + ':M' + IntToStr(x_row-1) + ')';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'J'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 3;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Please make payment to:';

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary Bank''s Name & Address:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_Ben_BankName;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary Bank''s SWIFT Code:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_Ben_BankSwift;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary''s Bank A/c No:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_Ben_BankAccountNo;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Beneficiary''s  A/c Name / Title:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_Ben_BankAccountName;

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Please use the following correspondent bank:';

  x_row := x_row + 2;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Correspondent Bank:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankName + ', ' + StringReplace(_x_BankAddress, #13#10, ' ', [rfReplaceAll]);

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Correspondent Bank''s Swift Code:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankSwiftCode;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Correspondent Account Number:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankAccountNo;

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'IBAN No.:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankIbanNo;

  x_row := x_row + 1;

{
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'ACCOUNT NAME:';

  strList.text := x_LocalBankAccount;

  for i := 0 to strList.Count-1 do
    begin
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := strList[i];
      x_row := x_row + 1;
    end;

  x_row := x_row + 2;
  if _x_BankIbanNo > '' then
    begin
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'IBAN NO:';
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankIbanNo;
      x_row := x_row + 1;
    end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'ACCOUNT NO:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankAccountNo;

  x_row := x_row + 1;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'BANK:';
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankName;
  x_row := x_row + 1;

  strList.text := _x_BankAddress;

  for i := 0 to strList.Count-1 do
    begin
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := strList[i];
      x_row := x_row + 1;
    end;

  x_row := x_row + 1;

  if _x_BankSwiftCode > '' then
    begin
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'SWIFT CODE:';
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankSwiftCode;
      x_row := x_row + 1;
    end;

  if _x_BankSortCode > '' then
    begin
      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'SORT CODE:';
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + _x_BankSortCode;
      x_row := x_row + 1;
    end;


  x_row := x_row + 2;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'MESSAGE FOR BENEFICIARY:';

  strList.text := x_Beneficiary;

  for i := 0 to strList.Count-1 do
    begin
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := strList[i];
      x_row := x_row + 1;
    end;

}

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_table_row),'M'+IntToStr(x_table_end_row)].Font.Size := '9';
  scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_table_row),'C'+IntToStr(x_table_end_row)].Font.Size := '8';

end;

procedure QuoModule_Quotation_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_QuoModules_id, x_option, x_Months_id, x_YearRef, x_PrincipalAgents_id, x_ServiceTaxOption: integer);
var
  GpSds : TSQLDataSet;
  x_QueryString, x_Str: string;
  x_row, x_StartRow, x_GroupNo: integer;
  x_PrevAssetModules_id: integer;
  x_NewGroup: boolean;
begin

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  _x_count := 0;

  x_QueryString := 'EXEC p_RptQuoModules ' + IntToStr(x_QuoModules_id) + ', 1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_row := 1;
  x_StartRow := x_row;
  x_PrevAssetModules_id := -1;
  x_GroupNo := 0;

  QuoModule_Quotation_Header (x_row, x_QuoModules_id, scExcelExport, GpSds, x_ServiceTaxOption);

  x_row := x_row + 1;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].Font.Size := '12';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].Font.Name := 'Book Antiqua';
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].ColumnWidth := 44;
  scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].ColumnWidth := 12.0;
  scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_StartRow),'E'+IntToStr(x_row)].ColumnWidth := 10.2;
  scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].ColumnWidth := 10.2;
  scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'G'+IntToStr(x_row)].ColumnWidth := 4.5;
  scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].ColumnWidth := 12.0;
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'M'+IntToStr(x_row)].ColumnWidth := 11.0;

  x_row := x_row + 1;
  x_StartRow := x_row;

  scExcelExport.ExcelWorkSheet.Range['D1','E1'].EntireColumn.Hidden := true;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure QuoModule_Quotation_Header (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_ServiceTaxOption: integer);
var
  i: integer;
  x_Pan, x_TourCode, x_QueryString, x_sal, x2: string;
  BookSds: TSQLDataSet;
  x_TourDate: TDateTime;
  x: char;
begin

  x_TourCode := '';
  if GpSds['TourCode'] <> null then
    x_TourCode := GpSds['TourCode'];

  if GpSds['TourDate'] <> null then
    x_TourDate := GpSds['TourDate'];

  BookSds := TSQLDataSet.Create(nil);
  BookSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT PaxName = ' +
                   'CASE WHEN COALESCE(f.Male,1) = 1 THEN ''Mr. '' + COALESCE(f.Name,'''') ' +
                   'ELSE ''Ms. '' + COALESCE(f.Name,'''') ' +
                   'END ' +
                   'FROM [dbo].[fn_GetMasterPaxListOnTour] (' + QuotedStr(x_TourCode) + ',' +
                   QuotedStr(FormatDateTime('mm/dd/yyyy', x_TourDate)) + ' , 1) f ';

  BookSds.Close;
  BookSds.CommandText := x_QueryString;
  BookSds.Open;

  with scExcelExport.ExcelWorkSheet do
    begin

      x_row := x_row + 1;
      if GpSds['Organisation'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['Organisation'];
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].VerticalAlignment := xlTop;
      x_row := x_row + 1;
      if GpSds['Addr'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := '''' + GpSds['Addr'];
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].EntireRow.Autofit;

      x_row := x_row + 1;
      if GpSds['City'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := '''' + GpSds['City'];
      x_row := x_row + 1;
      if GpSds['Country'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := '''' + GpSds['Country'];
      x_row := x_row + 1;

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Quotation Prepared For:';
      if GpSds['PaxName'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + GpSds['PaxName'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Prepared By:';
      if GpSds['UserName'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + GpSds['UserName'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Email address:';
      if GpSds['Email'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + GpSds['Email'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Quotation Date:';
      if GpSds['QuotationDate'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['QuotationDate']);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      Range['A'+IntToStr(x_row-4),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Booking Number';
      if GpSds['Reference'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + GpSds['Reference'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Code';
      if GpSds['TourCode'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + VarToStr(GpSds['TourCode']);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Tour Date';
      if GpSds['TourCode'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['TourDate']);
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'No. of Pax';
      if GpSds['NumPax'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['NumPax'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Room Type';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].VerticalAlignment := xlTop;
      if GpSds['RoomType'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['RoomType'];
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].VerticalAlignment := xlTop;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].EntireRow.Autofit;

      Range['A'+IntToStr(x_row-5),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 2;
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'QUOTATION';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      x_row := x_row + 1;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 3;
      if GpSds['Reference'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := '''' + GpSds['Reference'];
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

      x_row := x_row + 1;
      while not BookSds.Eof do
        begin
          if BookSds['PaxName'] <> null then
            begin
              Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := '''' + BookSds['PaxName'];
              Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].HorizontalAlignment := xlLeft;
              x_row := x_row + 1;
            end;

          BookSds.Next;
        end;

      x_row := x_row + 3;

      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Book Element';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Start Date';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'End Date';
      Range['B'+IntToStr(x_row),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Unit Price';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Service Tax (%)';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Net Price';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Qty';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Amount';
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeRight].LineStyle := xlContinuous;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeRight].Weight := xlMedium;

      x_row := x_row + 2;

    end;

  QuoModule_Quotation_Details (x_row, x_QuoModules_id, scExcelExport, GpSds, x_ServiceTaxOption);

  x_row := x_row + 1;

  BookSds.Free;

end;


procedure QuoModule_Quotation_Details (var x_row, x_QuoModules_id: integer; scExcelExport:TScExcelExport; GpSds: TSQLDataSet; x_ServiceTaxOption: integer);
var
  x_CellCol, x_CurrencyCode, x_QueryString: string;
  x_StartRow, x_ItemNo, x_SubTotal_row: integer;
  x_ServiceTaxPerc, x_ServiceTaxExclCessPerc, x_SbCessPerc, x_KkCessPerc: double;
  Gp1Sds : TSQLDataSet;
  x_Rate_CellCol, x_ServiceTax_CellCol, x_NetPrice_CellCol, x_Qty_CellCol: string;
begin

  x_ServiceTaxPerc := GetServiceTax(GpSds['TourDate'], 15);
  _x_ServiceTaxPerc := x_ServiceTaxPerc;

  x_ServiceTaxExclCessPerc := GetServiceTax(GpSds['TourDate'], 26);
  _x_ServiceTaxExclCessPerc := x_ServiceTaxExclCessPerc;

  x_SbCessPerc := GetServiceTax(GpSds['TourDate'], 24);
  _x_SbCessPerc := x_SbCessPerc;

  x_KkCessPerc := GetServiceTax(GpSds['TourDate'], 25);
  _x_KkCessPerc := x_KkCessPerc;

  x_StartRow := x_row;

  while (not GpSds.EOF) do
    begin

      with scExcelExport.ExcelWorkSheet do
        begin

          x_CellCol := 'A';
          if GpSds['QuoModuleDetails'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['QuoModuleDetails'];

          if GpSds['TrsType'] = 7 then
            Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.FontStyle := 'Bold';

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['DateIn'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']);
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].HorizontalAlignment := xlCenter;

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['DateOut'] <> null then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']);
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].HorizontalAlignment := xlCenter;

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Rate'] <> null) and (GpSds['Rate'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Rate'];
          x_Rate_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
          if x_ServiceTaxOption = 1 then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := 0.0
          else if (x_ServiceTaxPerc <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := x_ServiceTaxPerc;
          x_ServiceTax_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
{
          Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value :=
            '=ROUND((' + x_Rate_CellCol + IntToStr(x_row) + '*(1 + ' + x_ServiceTax_CellCol + IntToStr(x_row) + '/100.0)),0)';
}
          if (x_ServiceTaxOption = 1) and (GpSds['Rate'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Rate']
          else
            if (GpSds['RateAfterServTax'] <> null) and (GpSds['RateAfterServTax'] <> 0.0) then
              Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['RateAfterServTax'];
          x_NetPrice_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Qty'] <> null) and (GpSds['Qty'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['Qty'];
          x_Qty_CellCol := x_CellCol;

          x_CellCol := NextColumn(x_CellCol);
          if (GpSds['Qty'] <> null) and (GpSds['Qty'] <> 0.0) and (GpSds['Rate'] <> null) and (GpSds['Rate'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value :=
              '=' + x_NetPrice_CellCol + IntToStr(x_row) + '*' + x_Qty_CellCol + IntToStr(x_row);

          x_CellCol := SkipNextCol(x_CellCol,3);
          if (GpSds['ServTaxAmt'] <> null) and (GpSds['ServTaxAmt'] <> 0.0) then
            Range[x_CellCol +IntToStr(x_row),x_CellCol +IntToStr(x_row)].Value := GpSds['ServTaxAmt'];

          x_row := x_row + 1;

        end;

      GpSds.Next;

    end;

  GpSds.First;

  // Formatting

  x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeBottom].LineStyle := xlDouble;
      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Borders[xlEdgeBottom].Weight := xlMedium;

      x_row := x_row + 1;
      x_SubTotal_row := x_row;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Sub-Total';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=SUM(H' + IntToStr(x_StartRow) + ':H' + IntToStr(x_row-1) + ')';
      Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';

      x_row := x_row + 1;
      if (x_ServiceTaxOption = 1) and (GpSds['ServiceTaxStr'] <> null) then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['ServiceTaxStr'];

      if (x_ServiceTaxOption = 1) and (GpSds['ServiceTax'] <> null) then
        begin
//          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['ServiceTax'];
//          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GetServiceTaxAmt(x_QuoModules_id);
          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=H' + IntToStr(x_row-1) + '*(' + FloatToStr(x_ServiceTaxPerc) + '/100)';
          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
        end;

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Grand Total';
      if GpSds['CurrencyCode'] <> null then
        Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['CurrencyCode'];
      if GpSds['GrandTotal'] <> null then
        begin
          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value :=
            '=SUM(H' + IntToStr(x_SubTotal_row) + ':H' + IntToStr(x_row-1) + ')';
          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
        end;

      Range['A'+IntToStr(x_row),'H'+IntToStr(x_row)].Font.FontStyle := 'Bold';

    end;

end;

function GetServiceTaxAmt (x_QuoModules_id: integer): double;
var
  x_QueryString: string;
  Gp1Sds : TSQLDataSet;
  x_GrandAmt, x_SubAmt, x_amt: double;
begin

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT SUM(COALESCE(RateAfterServTax,0.0)*COALESCE(Qty,0.0)) AS Amt FROM QuoModuleDetails ' +
    'WHERE QuoModules_id = ' + IntToStr(x_QuoModules_id);

  if _x_ServiceTax_option = 3 then
    x_QueryString := 'SELECT SUM(COALESCE(qmd.RateAfterServTax,0.0)*COALESCE(qmd.Qty,0.0)) AS Amt FROM QuoModuleDetails qmd ' +
      'INNER JOIN InvoiceDetails id1 ON qmd.QuoModuleDetails_id = id1.QuoModuleDetails_id ' +
      'INNER JOIN Invoices i1 ON id1.Invoices_id = i1.Invoices_id ' +
      'WHERE qmd.QuoModules_id = ' + IntToStr(x_QuoModules_id) + ' ' +
      'AND MONTH(i1.InvoiceDate) = ' + IntToStr(_x_Months_id)  + ' ' +
      'AND YEAR(i1.InvoiceDate) = ' + IntToStr(_x_YearRef)  + ' ';

  Gp1Sds.Close;
  Gp1Sds.CommandText := x_QueryString;
  Gp1Sds.Open;

  x_GrandAmt := 0.0;
  if Gp1Sds['Amt'] <> null then
    x_GrandAmt := Gp1Sds['Amt'];

  Gp1Sds.Free;

  x_amt := x_GrandAmt / (1.0 + _x_ServiceTaxPerc/100.0);

  x_amt := x_GrandAmt - x_amt;

  Result := x_amt;

end;


function GetTaxableAmt (x_Invoices_id: integer): double;
var
  x_QueryString: string;
  Gp1Sds : TSQLDataSet;
  x_TaxableAmt, x_amt: double;
begin

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT SUM(COALESCE(Amount,0.0)) AS Amt FROM InvoiceDetails id1 ' +
    'WHERE id1.Invoices_id = ' + IntToStr(x_Invoices_id) + ' ' +
    'AND ItemNo NOT IN (710,720)';

  Gp1Sds.Close;
  Gp1Sds.CommandText := x_QueryString;
  Gp1Sds.Open;

  x_TaxableAmt := 0.0;
  if Gp1Sds['Amt'] <> null then
    x_TaxableAmt := Gp1Sds['Amt'];

  Gp1Sds.Free;

  x_amt := x_TaxableAmt / (1.0 + _x_ServiceTaxPerc/100.0);

  Result := x_amt;

end;


end.
