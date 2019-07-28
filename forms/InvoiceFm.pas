unit InvoiceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCalendar, cxDBLookupComboBox, cxNavigator,
  cxDBNavigator, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  cxMemo, cxDBEdit, cxCheckBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxMaskEdit, cxTextEdit, StdCtrls, cxContainer, cxGroupBox,
  DBCtrls, cxButtonEdit, cxRadioGroup, Menus, cxDBLabel, cxLabel,
  cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, DateUtils,
  scExcelExport;

type
  TInvoiceForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TcxLabel;
    TourCodeLbl: TcxLabel;
    Label8: TcxLabel;
    Label2: TcxLabel;
    TourDateLbl: TcxLabel;
    Label9: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    Label11: TcxLabel;
    Label4: TcxLabel;
    Label6: TcxLabel;
    Label15: TcxLabel;
    TourCodeEdit: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    TourDateEdit: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    Panel4: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    InvoiceTab: TcxTabSheet;
    InvoiceGrid: TcxGrid;
    InvoiceGridDBTableView1: TcxGridDBTableView;
    InvoiceGridDBTableView1bookingref: TcxGridDBColumn;
    InvoiceGridDBTableView1tourdate: TcxGridDBColumn;
    InvoiceGridDBTableView1details: TcxGridDBColumn;
    InvoiceGridDBTableView1roomsizes_id: TcxGridDBColumn;
    InvoiceGridDBTableView1unitprice: TcxGridDBColumn;
    InvoiceGridDBTableView1quantity: TcxGridDBColumn;
    InvoiceGridDBTableView1nights: TcxGridDBColumn;
    InvoiceGridDBTableView1amount: TcxGridDBColumn;
    InvoiceGridDBTableView1tourcode: TcxGridDBColumn;
    InvoiceGridDBTableView1itemno: TcxGridDBColumn;
    InvoiceGridDBTableView1servicetaxperc: TcxGridDBColumn;
    InvoiceGridDBTableView1localpayment: TcxGridDBColumn;
    InvoiceGridLevel1: TcxGridLevel;
    PaymentsTab: TcxTabSheet;
    PaymentsGrid: TcxGrid;
    PaymentsGridcxGridDBTableView1: TcxGridDBTableView;
    PaymentsGridcxGridDBTableView1transactiondate: TcxGridDBColumn;
    PaymentsGridcxGridDBTableView1cashvoucherno: TcxGridDBColumn;
    PaymentsGridcxGridDBTableView1Db: TcxGridDBColumn;
    PaymentsGridcxGridDBTableView1Details: TcxGridDBColumn;
    PaymentsGridcxGridLevel1: TcxGridLevel;
    cxDBNavigator1: TcxDBNavigator;
    MasterCdsinvoices_id: TIntegerField;
    MasterCdsinvoiceno: TIntegerField;
    MasterCdsyearref: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstourcode: TStringField;
    MasterCdstourdate: TSQLTimeStampField;
    MasterCdsinvoicedate: TSQLTimeStampField;
    MasterCdsnote: TMemoField;
    MasterCdscredit: TIntegerField;
    MasterCdsdivisions_id: TIntegerField;
    MasterCdsfit: TBooleanField;
    MasterCdscompanies_id: TIntegerField;
    MasterCdstaxes_id: TIntegerField;
    MasterCdstaxamount: TBCDField;
    MasterCdsinvoicetypes_id: TIntegerField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsoffices_id: TIntegerField;
    MasterCdsexchangerate: TBCDField;
    MasterCdsyears_id: TIntegerField;
    MasterCdsmonths_id: TIntegerField;
    MasterCdstl_type: TIntegerField;
    MasterCdsMasterCode: TStringField;
    MasterCdsMasterDepartureDate: TSQLTimeStampField;
    DBText1: TDBText;
    DBText2: TDBText;
    CustomerDsp: TDataSetProvider;
    CustomerCds: TClientDataSet;
    CustomerDS: TDataSource;
    CustomerSds: TSQLDataSet;
    CustomerCdsAddressbook_id: TIntegerField;
    CustomerCdsOrganisation: TStringField;
    CustomerCdsCity: TStringField;
    CustomerCdsCities_id: TIntegerField;
    CustomerCdsContact: TStringField;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Detail1Cdsproducts_id: TIntegerField;
    Detail1Cdsdetails: TStringField;
    Detail1Cdsunitprice: TBCDField;
    Detail1Cdsquantity: TIntegerField;
    Detail1Cdsamount: TBCDField;
    Detail1Cdstourdate: TSQLTimeStampField;
    Detail1Cdsinvoices_id: TIntegerField;
    Detail1Cdsroomtypes_id: TIntegerField;
    Detail1Cdsitemno: TIntegerField;
    Detail1Cdsbookingref: TStringField;
    Detail1Cdstourcode: TStringField;
    Detail1Cdsroomsizes_id: TIntegerField;
    Detail1Cdsnights: TIntegerField;
    Detail1Cdsinvoicedetails_id: TIntegerField;
    Detail1Cdslocalpayment: TBCDField;
    Detail1Cdsservicetaxperc: TBCDField;
    Detail1Cdsbookingsaccommodation_id: TIntegerField;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    ShowDetails1: TMenuItem;
    MasterCdsTotalInvoiceAmount: TFMTBCDField;
    Label3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDisplayBalanceGB: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    MasterCdsPaidAmount: TFloatField;
    cxLabel3: TcxLabel;
    MasterCdsDiff: TFloatField;
    cxChkDisplayBalance: TcxCheckBox;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    MasterCdstaxpercentage: TBCDField;
    cxButton1: TcxButton;
    ReportPopup: TPopupMenu;
    BoatInvoice1: TMenuItem;
    N1: TMenuItem;
    InvoicesDue1: TMenuItem;
    InvoicesDue2: TMenuItem;
    PaymentDS: TDataSource;
    PaymentCds: TClientDataSet;
    PaymentCdstransactiondate: TSQLTimeStampField;
    PaymentCdscashvoucherno: TIntegerField;
    PaymentCdsDb: TFMTBCDField;
    PaymentCdsDetails: TStringField;
    PaymentDsp: TDataSetProvider;
    PaymentSds: TSQLDataSet;
    PaymentCdsInvoiceNo: TIntegerField;
    PaymentCdsYearRef: TIntegerField;
    PaymentCdsDivisions_id: TIntegerField;
    PaymentCdsCurrencies_id: TIntegerField;
    PaymentCdsLedgers_id: TIntegerField;
    N2: TMenuItem;
    ourInvoiceExcel1: TMenuItem;
    scExcelExport1: TscExcelExport;
    ManualTourInvoiceExcelPerLine1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure InvoiceGridDBTableView1detailsPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsquantityChange(Sender: TField);
    procedure Detail1CdsunitpriceChange(Sender: TField);
    procedure InvoiceSearch;
    function GetNextInvoiceNo (x_YearRef,x_companies_id, x_divisions_id: integer): integer;
    function GetNextSeriesInvoiceNo (x_YearRef,x_companies_id, x_divisions_id, x_InvoiceTypes_id: integer): integer;
    function GetNextItemNo (x_invoices_id: integer): integer;
    procedure UpdateInvoiceAmount (x_invoices_id: integer);
    procedure ComputeInvoiceDetailsAmount;
    procedure ShowAccommodation;
    procedure ShowTickets;
    procedure ShowDetails1Click(Sender: TObject);
    procedure Detail1CdsnightsChange(Sender: TField);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    function PaidAmt: double;
    procedure cxChkDisplayBalanceClick(Sender: TObject);
    procedure InvoiceGridDBTableView1DblClick(Sender: TObject);
    procedure BoatInvoice1Click(Sender: TObject);
    procedure InvoicesDue1Click(Sender: TObject);
    procedure InvoicesDue2Click(Sender: TObject);
    function GetInvoiceType(x_invoiceTypes_id: integer): string;
    procedure ourInvoiceExcel1Click(Sender: TObject);
    procedure ManualTourInvoiceExcelPerLine1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceForm: TInvoiceForm;
  _InvoiceForm_Level: integer;
  _InvoiceForm_Offices_id: integer;
  _InvoiceForm_Divisions_id: integer;
  _InvoiceForm_Companies_id: integer;
  _InvoiceForm_Type: integer;
  _InvoiceForm_FromDate, _InvoiceForm_ToDate: TDateTime;
  _InvoiceForm_MasterCode: string;
  _InvoiceForm_MasterDepDate: TDateTime;
  _InvoiceForm_Invoices_id: integer;
  _InvoiceForm_Months_id, _InvoiceForm_years_id: integer;


implementation

uses BackOfficeDM, MainFm, GeneralUt, SearchSortFm, ReportParameterFm,
  RptInvoiceBoatFm, RptInvIssuedAnnexBFm, RptInvoiceDueFm,
  QuoModules_ExcelReportsUt;

var
  MasterCds_State, Detail1Cds_State : TDataSetState;

{$R *.dfm}

procedure TInvoiceForm.FormCreate(Sender: TObject);
begin

  // Hide Certain Fields for Boat Division
  if _InvoiceForm_Divisions_id = 1 then
    begin
      TourCodeEdit.Enabled:=False;
      TourCodeLbl.Enabled:=False;
      TourDateEdit.Enabled:=False;
      TourDateLbl.Enabled:= False;

      InvoiceGridDBTableView1BookingRef.Visible := False;
      InvoiceGridDBTableView1RoomSizes_id.Visible := False;
      InvoiceGridDBTableView1Nights.Visible := False;
      InvoiceGridDBTableView1TourCode.Visible := False;
      InvoiceGridDBTableView1LocalPayment.Visible := False;
      InvoiceGridDBTableView1Amount.Options.Editing := True;
      Detail1Cds.IndexFieldNames := 'Invoices_id;ItemNo;TourDate';
    end;

  if _InvoiceForm_Type = 1 then
    begin
      MasterCds.IndexFieldNames := 'InvoiceDate';
      MasterCds.Filter := '(MasterCode =  ''' +  _InvoiceForm_MasterCode + ''' ' +
                           ' AND '+
                           'MasterDepartureDate = ''' + FormatDateTime('dd/mm/yyyy',_InvoiceForm_MasterDepDate) + ''')';
      MasterCds.Filtered := True;
    end
  else if _InvoiceForm_Type = 2 then
    begin
      MasterCds.IndexFieldNames := 'InvoiceNo';
      MasterCds.Filter := '(InvoiceDate >=  ''' + FormatDateTime('dd/mm/yyyy',_InvoiceForm_FromDate) + ''' ' +
                           ' AND '+
                           'InvoiceDate <= ''' + FormatDateTime('dd/mm/yyyy',_InvoiceForm_ToDate) + ''')';
      MasterCds.Filtered := True;
    end
  else if _InvoiceForm_Type = 3 then
    begin
      MasterCds.IndexFieldNames := 'Invoices_id';
      MasterCds.Filter := '(Invoices_id =  ' + IntToStr(_InvoiceForm_Invoices_id) + ') ';
      MasterCds.Filtered := True;
    end
  else if _InvoiceForm_Type = 4 then
    begin
      MasterCds.IndexFieldNames := 'Invoices_id';
      MasterCds.Filter := '(Months_id =  ' + IntToStr(_InvoiceForm_Months_id) + ') AND ' +
                          '(Years_id =  ' + IntToStr(_InvoiceForm_Years_id) + ') AND ' +
                          '((TL_Type = 1) OR (TL_Type = 2))';
      MasterCds.Filtered := True;
    end;


  MasterCds.Active := False;
  MasterCds.Filter := MasterCds.Filter + 'AND Divisions_id = ' + IntToStr(_InvoiceForm_Divisions_id) + ' ' +
    'AND Companies_id = ' + IntToStr(_InvoiceForm_Companies_id);
  MasterCds.Filtered := True;

  MasterCdsName := 'Invoices';
  MasterKeyField := 'Invoices_id';

  Detail1CdsName := 'InvoiceDetails';
  Detail1KeyField := 'InvoiceDetails_id';

  AdmLevel := _InvoiceForm_Level;
  inherited;

  BackOfficeDataModule.InvoiceTypeCds.Active := True;

  BackOfficeDataModule.RoomSizeCds.Active := True;
  BackOfficeDataModule.TaxCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;  

  PaymentCds.Active := True;

  CustomerCds.Active := True;

end;

procedure TInvoiceForm.FormDestroy(Sender: TObject);
begin
  inherited;
  InvoiceForm := nil;
end;

procedure TInvoiceForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Companies_id'] := g_Companies_id;
  MasterCds['Divisions_id'] := _InvoiceForm_Divisions_id;
  MasterCds['Offices_id'] := _InvoiceForm_Offices_id;
  MasterCds['InvoiceDate'] := Date;
  MasterCds['FIT'] := False;
  MasterCds['InvoiceTypes_id'] := 1;

  // Tours Division - Dollars --- Boat Division Rs.
  if MasterCds['Divisions_id'] = 0 then
    MasterCds['Currencies_id'] := 25
  else
    MasterCds['Currencies_id'] := GetDefaultCurrency;

  MasterCds['Taxes_id'] := 4;

  MasterCds['YearRef'] := CalcCentury(MasterCds['InvoiceDate'],4);

end;

procedure TInvoiceForm.InvoiceGridDBTableView1detailsPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
begin
  inherited;

  if (MasterCds['Divisions_id'] <> 1)  then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText := 'SELECT Details,UnitPrice,ProductID ' +
    'FROM ProductsBoat ' +
    'ORDER BY Details ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 2 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Details';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'UnitPrice';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'ProductID';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 300;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Details';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Unit Price';

  SearchSortForm.ShowModal;

  if SearchSortForm.ModalResult = mrOk then
    begin
      if Detail1Cds.State = dsBrowse then
        Detail1Cds.Edit;
      Detail1Cds['Details'] := SearchSortForm.SearchCds['Details'];
      Detail1Cds['UnitPrice'] := SearchSortForm.SearchCds['UnitPrice'];
    end;

  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TInvoiceForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    InvoiceSearch;
end;


procedure TInvoiceForm.InvoiceSearch;
var
  QueryString: string;
  i: integer;
begin

  if cxSearchGB.ItemIndex = 0 then
    QueryString := 'SELECT i.Invoices_id, i.InvoiceNo, i.InvoiceDate, f.Organisation, i.MasterCode, i.MasterDepartureDate ' +
            'FROM Invoices i LEFT JOIN dbo.fn_Addressbook(3,'''') f ON i.Addressbook_id = f.Addressbook_id ' +
            'WHERE InvoiceNo = ''' + cxSearchEdit.Text + ''' ' + 
            'Order By InvoiceDate DESC';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

    SearchSortForm.SearchSds.Close;
    SearchSortForm.SearchSds.CommandText := QueryString;
    SearchSortForm.SearchSds.Open;

    SearchSortForm.SearchCds.Open;

    for i := 0 to 5 do
      begin
        SearchSortForm.SearchGridDBTableView1.CreateColumn;
      end;

    //*=== Set the Grid Fields ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Invoices_id';
    SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'InvoiceNo';
    SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'InvoiceDate';
    SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Organisation';
    SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'MasterCode';
    SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'MasterDepartureDate';

    //*=== Set the Grid Columns' width ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
    SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 150;
    SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 80;

    //*=== Set the Grid Column Headers ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Invoice No';
    SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Invoice Date';
    SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Customer';
    SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Master Code';
    SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Master Date';

    SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Invoices_id';

    if (SearchSortForm.SearchCds.RecordCount = 1) then
      begin
        MasterCds.Locate ('Invoices_id', SearchSortForm.SearchCds['Invoices_id'],[]);
      end
    else if not SearchSortForm.SearchCds.EOF then
      begin

        SearchSortForm.ShowModal;

        if (SearchSortForm.ModalResult = mrOK) then
          begin
            MasterCds.Locate('Invoices_id',SearchSortForm.SearchCds['Invoices_id'],[]);
          end;

      end
    else
      Showmessage ('Not found');

    SearchSortForm.Free;
    SearchSortForm := nil;
end;

function TInvoiceForm.GetNextInvoiceNo (x_YearRef,x_companies_id, x_divisions_id: integer): integer;
var
  x_NextInvoiceNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextInvoiceNo(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ',' + IntToStr(x_Divisions_id) + ') as NextInvoiceNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextInvoiceNo := GpSds['NextInvoiceNo'];

  GpSds.Free;

  Result := x_NextInvoiceNo;

end;

function TInvoiceForm.GetNextSeriesInvoiceNo (x_YearRef,x_companies_id, x_divisions_id, x_InvoiceTypes_id: integer): integer;
var
  x_NextInvoiceNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextSeriesInvoiceNo(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ',' + IntToStr(x_Divisions_id) + ',' +
    IntToStr(x_InvoiceTypes_id) + ') as NextInvoiceNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextInvoiceNo := GpSds['NextInvoiceNo'];

  GpSds.Free;

  Result := x_NextInvoiceNo;

end;


function TInvoiceForm.GetNextItemNo (x_invoices_id: integer): integer;
var
  x_NextItemNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextInvoiceItemNo(' + IntToStr(x_invoices_id) +  ') ' +
    ' as NextItemNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextItemNo := GpSds['NextItemNo'];

  GpSds.Free;

  Result := x_NextItemNo;

end;

procedure TInvoiceForm.UpdateInvoiceAmount (x_invoices_id: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_UpdateInvoiceAmount ' + IntToStr(x_invoices_id) +  ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TInvoiceForm.ComputeInvoiceDetailsAmount;
var
  x_Nights, x_Quantity: integer;
  x_UnitPrice: double;
begin

  if Detail1Cds['Nights'] = null then
    x_Nights := 1
  else
    x_Nights := Detail1Cds['Nights'];

  if Detail1Cds['UnitPrice'] = null then
    x_UnitPrice := 0.0
  else
    x_UnitPrice := Detail1Cds['UnitPrice'];

  if Detail1Cds['Quantity'] = null then
    x_Quantity := 0
  else
    x_Quantity := Detail1Cds['Quantity'];

  Detail1Cds['Amount'] := x_UnitPrice * x_Quantity * x_Nights;

end;


procedure TInvoiceForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['InvoiceDate'] = Null then
    Raise Exception.Create('Enter the Invoice Date');

  //if (MasterCds['Divisions_id'] = 1) and (MasterCds['Addressbook_id'] = Null) then
  //  Raise Exception.Create('Enter the Customer');

  if MasterCds['Currencies_id'] = Null then
    Raise Exception.Create('Enter the Currency');

  if MasterCds['InvoiceTypes_id'] = Null then
    Raise Exception.Create('Enter the Invoice Type');

  if MasterCds['Taxes_id'] = Null then
    Raise Exception.Create('Enter the Tax Type');

  MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    begin
      MasterCds['YearRef'] := CalcCentury(MasterCds['InvoiceDate'],4);
      if _InvoiceForm_Type = 2 then
        MasterCds['InvoiceNo'] := GetNextSeriesInvoiceNo (MasterCds['YearRef'],g_companies_id, _InvoiceForm_Divisions_id, MasterCds['InvoiceTypes_id'])
      else
        MasterCds['InvoiceNo'] := GetNextInvoiceNo (MasterCds['YearRef'],g_companies_id, _InvoiceForm_Divisions_id);
      MasterCds['Invoices_id'] := GetNextId('Invoices','Invoices_id');
    end;

end;

procedure TInvoiceForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Detail1Cds['Details'] = null then
    raise exception.create ('Please enter the details');

  if Detail1Cds['Quantity'] = null then
    raise exception.create ('Please enter the quantity');

  if Detail1Cds['UnitPrice'] = null then
    raise exception.create ('Please enter the unit price');

  Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    begin
      Detail1Cds['InvoiceDetails_id'] := GetNextId('InvoiceDetails','InvoiceDetails_id');
      Detail1Cds['ItemNo'] := GetNextItemNo(Detail1Cds['Invoices_id']);
    end;
end;

procedure TInvoiceForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['Invoices_id'] := MasterCds['Invoices_id'];
  Detail1Cds['LocalPayment'] := 0.0;
  if _InvoiceForm_Type = 2 then
    begin
      if MasterCds['InvoiceDate'] <> null then
        Detail1Cds['ServiceTaxPerc'] := GetServiceTax(MasterCds['InvoiceDate'], 16);
    end;

end;


procedure TInvoiceForm.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['Invoices_id'] = null then
    raise exception.create ('Please fill in Invoice Header first');
end;

procedure TInvoiceForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateInvoiceAmount (Detail1Cds['Invoices_id']);
  MasterCds.RefreshRecord;
end;

procedure TInvoiceForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if MasterCds_State = dsEdit then
    begin
      UpdateInvoiceAmount (MasterCds['Invoices_id']);
      MasterCds.RefreshRecord;
    end;
end;

procedure TInvoiceForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateInvoiceAmount (MasterCds['Invoices_id']);
  MasterCds.RefreshRecord;
end;

procedure TInvoiceForm.Detail1CdsquantityChange(Sender: TField);
begin
  inherited;
  ComputeInvoiceDetailsAmount;
end;

procedure TInvoiceForm.Detail1CdsunitpriceChange(Sender: TField);
begin
  inherited;
  ComputeInvoiceDetailsAmount;
end;

procedure TInvoiceForm.ShowAccommodation;
var
  GpSds: TSQLDataSet;
  str: string;
begin

  if (Detail1Cds['BookingsAccommodation_id'] = null) or
    (Detail1Cds['BookingsAccommodation_id'] = 0) then
    begin
      ShowMessage ('No details available');
      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT ba.DateIn, ba.DateOut, a.organisation, rs.roomsize, ' +
    'rt.roomtype, mp.mealplan ' +
    'from bookingsAccommodation ba left join addressbook a on ba.addressbook_id = a.addressbook_id ' +
    'left join roomtypes rt on ba.roomtypes_id = rt.roomtypes_id ' +
    'left join roomsizes rs on ba.roomsizes_id = rs.roomsizes_id ' +
    'left join mealplans mp on ba.mealplans_id = mp.mealplans_id ' +
    'where ba.bookingsaccommodation_id = ' + IntToStr(Detail1Cds['BookingsAccommodation_id']);
  GpSds.Open;

  str := '';
  if GpSds['DateIn'] <> null then
    str := str + 'Date In : ' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']) + chr(13);
  if GpSds['DateOut'] <> null then
    str := str + 'Date Out : ' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']) + chr(13);
  if GpSds['organisation'] <> null then
    str := str + 'Hotel : ' + GpSds['organisation'] + chr(13);
  if GpSds['roomsize'] <> null then
    str := str + 'Room Size : ' + GpSds['roomsize'] + chr(13);
  if GpSds['roomtype'] <> null then
    str := str + 'Room Type : ' + GpSds['roomtype'] + chr(13);
  if GpSds['mealplan'] <> null then
    str := str + 'Meal Plan : ' + GpSds['mealplan'] + chr(13);

  GpSds.Free;

  ShowMessage(str);

end;

procedure TInvoiceForm.ShowTickets;
var
  GpSds: TSQLDataSet;
  str: string;
begin
  if (Detail1Cds['BookingsAccommodation_id'] = null) or
    (Detail1Cds['BookingsAccommodation_id'] = 0) then
    begin
      ShowMessage ('No details available');
      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT traveldate, a.organisation, c1.city as fromcity, ' +
    'c2.city as tocity, t.details ' +
    'from bookingstickets btk left join addressbook a on btk.addressbook_id = a.addressbook_id ' +
    'left join cities c1 on btk.from_cities_id = c1.cities_id ' +
    'left join cities c2 on btk.to_cities_id = c2.cities_id ' +
    'left join tickets t on btk.tickets_id = t.tickets_id ' +
    'where btk.bookingstickets_id = ' + IntToStr(MasterCds['BookingsAccommodation_id']);
  GpSds.Open;

  str := '';
  if GpSds['TravelDate'] <> null then
    str := str + 'TravelDate : ' + FormatDateTime('dd/mm/yyyy',GpSds['TravelDate']) + chr(13);
  if GpSds['organisation'] <> null then
    str := str + 'Agent : ' + GpSds['organisation'] + chr(13);
  if GpSds['fromcity'] <> null then
    str := str + 'From City : ' + GpSds['fromcity'] + chr(13);
  if GpSds['tocity'] <> null then
    str := str + 'To City : ' + GpSds['tocity'] + chr(13);
  if GpSds['Details'] <> null then
    str := str + 'Mode : ' + GpSds['Details'] + chr(13);

  GpSds.Free;

  ShowMessage(str);

end;



procedure TInvoiceForm.ShowDetails1Click(Sender: TObject);
begin
  inherited;

  if MasterCds['ItemNo'] = 400 then
    ShowAccommodation
  else if MasterCds['ItemNo'] = 600 then
    ShowTickets;

end;

procedure TInvoiceForm.Detail1CdsnightsChange(Sender: TField);
begin
  inherited;
  ComputeInvoiceDetailsAmount;
end;

procedure TInvoiceForm.MasterCdsCalcFields(DataSet: TDataSet);
var
  x_Invoiced: double;
begin
  inherited;

  if not cxChkDisplayBalance.Checked then
    exit;

  if MasterCds['Invoices_id'] <> null then
    begin

      MasterCds['PaidAmount'] := PaidAmt;

      if MasterCds['TotalInvoiceAmount'] <> null then
        x_Invoiced := MasterCds['TotalInvoiceAmount']
      else
        x_Invoiced := 0.0;

      MasterCds['Diff'] := x_Invoiced - MasterCds['PaidAmount'];

    end;

end;

function TInvoiceForm.PaidAmt: double;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_pymt: double;
begin
  inherited;

  QueryString := 'SELECT dbo.fn_InvoicePayment(' + IntToStr(MasterCds['InvoiceNo']) +  ', ' +
    IntToStr(MasterCds['YearRef']) + ',' + IntToStr(MasterCds['Divisions_id']) + ',' +
    IntToStr(MasterCds['Currencies_id']) + ') as Pymt ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Pymt'] <> null) then
    x_pymt := GpSds['Pymt']
  else
    x_pymt := 0.0;

  GpSds.Free;

  Result := x_pymt;

end;


procedure TInvoiceForm.cxChkDisplayBalanceClick(Sender: TObject);
begin
  inherited;

  if cxChkDisplayBalance.Checked then
    cxDisplayBalanceGB.Visible := True
  else
    cxDisplayBalanceGB.Visible := False;

end;

procedure TInvoiceForm.InvoiceGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TInvoiceForm.BoatInvoice1Click(Sender: TObject);
var
  yearref, min_no, max_no, x_InvoiceTypes_id: integer;
  x_InvoiceType: string;
begin


  yearref:=0;
  min_no:=0;
  max_no:=0;
  _inputstr := '00000012';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.FromEdit.Text := MasterCds['InvoiceNo'];
  ReportParameterForm.ToEdit.Text := MasterCds['InvoiceNo'];

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      yearref := StrToInt(ReportParameterForm.YearEdit.Text);
      min_no := StrToInt(VarToStr(_ret1[8]));
      max_no := StrToInt(VarToStr(_ret2[8]));

      if RptInvoiceBoatForm = nil then
        Application.CreateForm(TRptInvoiceBoatForm, RptInvoiceBoatForm);

      RptInvoiceBoatForm.InvoiceBoatSds.Close;

      x_InvoiceTypes_id := 1;
      if MasterCds['InvoiceTypes_id'] <> null then
        x_InvoiceTypes_id := MasterCds['InvoiceTypes_id'];

      RptInvoiceBoatForm.InvoiceBoatSds.CommandText :=
        'select * from dbo.fn_Rpt_Inv_PrintRange(' +
        IntToStr(min_no) + ',' + IntToStr(max_no) + ',' + IntToStr(yearref) + ',1,' +
        IntToStr(x_InvoiceTypes_id) + ')';

      RptInvoiceBoatForm.InvoiceBoatSds.Open;

      RptInvoiceBoatForm.InvoiceBoatCds.Close;
      RptInvoiceBoatForm.InvoiceBoatCds.Open;

      x_InvoiceType := GetInvoiceType(x_invoiceTypes_id);

      RptInvoiceBoatForm.QRLabelInvoice.Caption := x_InvoiceType;

      RptInvoiceBoatForm.QRInvoice.PreviewModal;

      RptInvoiceBoatForm.Release;
      RptInvoiceBoatForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

function TInvoiceForm.GetInvoiceType(x_invoiceTypes_id: integer): string;
var
  GpSds: TSQLDataSet;
  x_InvoiceType: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Type As InvoiceType FROM InvoiceTypes ' +
    'WHERE InvoiceTypes_id = ' + IntToStr(x_InvoiceTypes_id);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['InvoiceType'] <> null) then
    x_InvoiceType := GpSds['InvoiceType'];

  GpSds.Free;

  Result := x_InvoiceType;

end;


procedure TInvoiceForm.InvoicesDue1Click(Sender: TObject);
var
  yearref, min_no, max_no: integer;
begin

  yearref:=0;
  min_no:=0;
  max_no:=0;
  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      yearref := StrToInt(ReportParameterForm.YearEdit.Text);

      if RptInvIssuedAnnexBForm = nil then
        Application.CreateForm(TRptInvIssuedAnnexBForm, RptInvIssuedAnnexBForm);

      RptInvIssuedAnnexBForm.AnnexBSds.Close;

      RptInvIssuedAnnexBForm.AnnexBSds.CommandText :=
        'select * from dbo.fn_Rpt_Inv_Issued_AnnexB (' +
        IntToStr(yearref) + ',0)';

      RptInvIssuedAnnexBForm.AnnexBSds.Open;

      RptInvIssuedAnnexBForm.AnnexBCds.Close;
      RptInvIssuedAnnexBForm.AnnexBCds.Open;

      RptInvIssuedAnnexBForm.QuickRep1.PreviewModal;

      RptInvIssuedAnnexBForm.Release;
      RptInvIssuedAnnexBForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TInvoiceForm.InvoicesDue2Click(Sender: TObject);
var
  yearref, min_no, max_no: integer;
begin

  yearref:=0;
  min_no:=0;
  max_no:=0;
  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      yearref := StrToInt(ReportParameterForm.YearEdit.Text);

      if RptInvoiceDueForm = nil then
        Application.CreateForm(TRptInvoiceDueForm, RptInvoiceDueForm);

      RptInvoiceDueForm.InvoiceDueSds.Close;

      RptInvoiceDueForm.InvoiceDueSds.CommandText :=
        'select * from dbo.fn_Rpt_Inv_InvoiceDue (' +
        IntToStr(yearref) + ',1,0)';

      RptInvoiceDueForm.InvoiceDueSds.Open;

      RptInvoiceDueForm.InvoiceDueCds.Close;
      RptInvoiceDueForm.InvoiceDueCds.Open;

      RptInvoiceDueForm.QuickRep1.PreviewModal;

      RptInvoiceDueForm.Release;
      RptInvoiceDueForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TInvoiceForm.ourInvoiceExcel1Click(Sender: TObject);
var
  x_FileName: string;
  x_Months_id, x_YearRef: integer;
begin
  inherited;

  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(MasterCds['InvoiceDate']);
  x_YearRef := YearOf(MasterCds['InvoiceDate']);

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, MasterCds['Invoices_id'], 3, x_Months_id, x_YearRef, 0, 1);

  ShowMessage('Saved As ' + x_FileName);


end;

procedure TInvoiceForm.ManualTourInvoiceExcelPerLine1Click(
  Sender: TObject);
var
  x_FileName: string;
  x_Months_id, x_YearRef: integer;
begin
  inherited;

  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(MasterCds['InvoiceDate']);
  x_YearRef := YearOf(MasterCds['InvoiceDate']);

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, MasterCds['Invoices_id'], 3, x_Months_id, x_YearRef, 0, 2);

  ShowMessage('Saved As ' + x_FileName);


end;

end.

