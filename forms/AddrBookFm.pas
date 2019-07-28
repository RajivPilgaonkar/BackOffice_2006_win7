unit AddrBookFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_2DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxButtonEdit, cxGroupBox, cxRadioGroup, DateUtils, Math, cxNavigator,
  cxDBNavigator, cxTimeEdit, cxMemo, jpeg;

type
  TAddrBookForm = class(TCustom_1ML_2DG_Form)
    Label1: TLabel;
    cxOrgEdit: TcxDBTextEdit;
    CurrenciesCds: TClientDataSet;
    CurrenciesDs: TDataSource;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesSds: TSQLDataSet;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    CitiesDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
    PopupMenu1: TPopupMenu;
    CopyTrains1: TMenuItem;
    cxRadioGroup: TcxRadioGroup;
    cxSearchTextEdit: TcxTextEdit;
    PopupMenu2: TPopupMenu;
    UpdateallStationswiththesamenametothisCityCode1: TMenuItem;
    N1: TMenuItem;
    RemoveallCitiesforthisStation1: TMenuItem;
    cxDBNavigator1: TcxDBNavigator;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsorganisation: TStringField;
    MasterCdsaddress: TStringField;
    MasterCdscity: TStringField;
    MasterCdspostalcode: TStringField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsphone: TStringField;
    MasterCdsfax: TStringField;
    MasterCdspan: TStringField;
    MasterCdsemail: TStringField;
    MasterCdswww: TStringField;
    MasterCdsbranch_cities_id: TIntegerField;
    MasterCdsnote: TMemoField;
    MasterCdsareacode: TStringField;
    MasterCdsbank_addressbook_id: TIntegerField;
    MasterCdsthrough_addressbook_id: TIntegerField;
    MasterCdsmailto_addressbook_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    MasterCdsstates_id: TIntegerField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsweb: TBooleanField;
    MasterCdscompany: TBooleanField;
    MasterCdstaxno: TStringField;
    MasterCdsIncludeInBalanceSheet: TBooleanField;
    MasterCdsInvoiceTo_Addressbook_id: TIntegerField;
    MasterCdsInvoiceOrderNo: TIntegerField;
    MasterCdsrtgs_beneficiary: TStringField;
    MasterCdsrtgs_BankAccountNo: TStringField;
    MasterCdsrtgs_Bank: TStringField;
    MasterCdsrtgs_BankAddress: TStringField;
    MasterCdsrtgs_BankBranchCode: TStringField;
    MasterCdsrtgs_RtgsBankCode: TStringField;
    MasterCdsCountryCode: TStringField;
    MasterCdsMailExcel: TBooleanField;
    MasterCdsCompositeReportTypes_id: TIntegerField;
    MasterCdsIndiaOffice: TStringField;
    Detail1Cdsaddressdetails_id: TIntegerField;
    Detail1Cdsaddressbook_id: TIntegerField;
    Detail1Cdssalutation: TStringField;
    Detail1Cdsfirstname: TStringField;
    Detail1Cdslastname: TStringField;
    Detail1Cdstitle: TStringField;
    Detail1Cdsextension: TStringField;
    Detail1Cdsemail: TStringField;
    Detail1Cdsphoneres: TStringField;
    Detail1Cdsmobile: TStringField;
    Detail1CdsOrderNo: TIntegerField;
    Detail2Cdsaddresscategories_id: TIntegerField;
    Detail2Cdsaddressbook_id: TIntegerField;
    Detail2Cdscategories_id: TIntegerField;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label6: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label9: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label10: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label11: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label3: TLabel;
    Label5: TLabel;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    Label7: TLabel;
    Label13: TLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    Label14: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label15: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label16: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label17: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label19: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label20: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label21: TLabel;
    cxDBMemo5: TcxDBMemo;
    Label22: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label23: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label24: TLabel;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    Label25: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    StatesSds: TSQLDataSet;
    StatesDsp: TDataSetProvider;
    StatesCds: TClientDataSet;
    StatesDs: TDataSource;
    StatesCdsStates_id: TIntegerField;
    StatesCdsState: TStringField;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesDs: TDataSource;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    OrgSds: TSQLDataSet;
    OrgSdsAddressbook_id: TIntegerField;
    OrgSdsOrganisation: TStringField;
    OrgSdsCity: TStringField;
    OrgDsp: TDataSetProvider;
    OrgCds: TClientDataSet;
    OrgCdsAddressbook_id: TIntegerField;
    OrgCdsOrganisation: TStringField;
    OrgCdsCity: TStringField;
    OrgDS: TDataSource;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrency: TStringField;
    CompRptSds: TSQLDataSet;
    CompRptDsp: TDataSetProvider;
    CompRptCds: TClientDataSet;
    CompRptCdsCompositeReportTypes_id: TIntegerField;
    CompRptCdsCompositeReportType: TStringField;
    CompRptDs: TDataSource;
    cxGrid2DBBandedTableView1addressdetails_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1salutation: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1firstname: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1lastname: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1title: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1extension: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1email: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1phoneres: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1mobile: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1addresscategories_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1categories_id: TcxGridDBBandedColumn;
    CategoriesSds: TSQLDataSet;
    CategoriesDsp: TDataSetProvider;
    CategoriesCds: TClientDataSet;
    CategoriesCdsCategories_id: TIntegerField;
    CategoriesCdsCategory: TStringField;
    CategoriesCdsDescription: TStringField;
    CategoriesDS: TDataSource;
    Image1: TImage;
    N2: TMenuItem;
    HotelRankings1: TMenuItem;
    MasterCdsorg_mobile: TStringField;
    Label26: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    MasterCdsPrintCo: TBooleanField;
    cxDBCheckBox3: TcxDBCheckBox;
    MasterCdsServiceTaxRegnNo: TStringField;
    Label27: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label28: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    MasterCdsGstin: TStringField;
    MasterCdsinv_prefix: TStringField;
    Label29: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    Label30: TLabel;
    Label31: TLabel;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    MasterCdsModifiedByUser: TStringField;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    MasterCdsReverseCharge: TBooleanField;
    cxDBCheckBox4: TcxDBCheckBox;
    GstVendorTypesSds: TSQLDataSet;
    GstVendorTypesDsp: TDataSetProvider;
    GstVendorTypesCds: TClientDataSet;
    GstVendorTypesDs: TDataSource;
    GstVendorTypesCdsGstVendorTypes_id: TIntegerField;
    GstVendorTypesCdsGstVendorType: TStringField;
    Label32: TLabel;
    MasterCdsGstVendorTypes_id: TIntegerField;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure cxSearchTextEditKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCdscities_idChange(Sender: TField);
    procedure MasterCdscountries_idChange(Sender: TField);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure CopyTrains1Click(Sender: TObject);
    procedure HotelRankings1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    function GetNextOrderNo: integer;
  end;

var
  AddrBookForm: TAddrBookForm;
  AddrBookForm_Level: Integer;

implementation

uses BackOfficeDM, SearchSortFm, GeneralUt, SelOprFm, TrainCopyFm,
  AddrCategorySearchFm, HotelRankingFm, MainFm;

{$R *.dfm}

procedure TAddrBookForm.FormCreate(Sender: TObject);
begin
  Caption := 'Addressbook';
  Panel1.Visible := False;
  ActivateInCustom;

  inherited;

  CitiesCds.Open;
  StatesCds.Open;
  CountriesCds.Open;
  OrgCds.Open;
  CurrenciesCds.Open;
  CompRptCds.Open;
  CategoriesCds.Open;
  UsersCds.Open;
  GstVendorTypesCds.Open;

end;

procedure TAddrBookForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAddrBookForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AddrBookForm := nil;
end;

procedure TAddrBookForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Addressbook';
  Custom_MasterKeyField := 'Addressbook_id';

  Custom_Detail1CdsName := 'AddressDetails';
  Custom_Detail1KeyField := 'AddressDetails_id';

  Custom_Detail2CdsName := 'AddressCategories';
  Custom_Detail2KeyField := 'AddressCategories_id';

  Custom_AdmLevel := AddrBookForm_Level;

  Custom_FormWidth := 1120;
  Custom_FormHeight := 640 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAddrBookForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxOrgEdit.SetFocus;
end;

procedure TAddrBookForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['City'] = null) or (Trim(MasterCds['City']) = '') then
    raise Exception.Create('Please enter the City');

  if (MasterCds['Countries_id'] = null) then
    raise Exception.Create('Please enter the Country');

  if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

{
  if (MasterCds['Organisation'] = null) or (Trim(MasterCds['Organisation']) = '') then
    raise Exception.Create('Please enter the Organisation');
}

  if (MasterCds['Organisation'] = null) then
    MasterCds['Organisation'] := '';

  if (trim(MasterCds['Organisation']) > '') and (IsMasterRecordDuplicate) then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Addressbook_id'] = null then
    raise Exception.Create('Addressbook_id is not assigned');
end;

procedure TAddrBookForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin

  if (Detail1Cds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter/select an organisation first');

  if (Detail1Cds['Lastname'] = null) or (Trim(Detail1Cds['LastName']) = '') then
    raise Exception.Create('Please enter the Last Name');

  if (Detail1Cds['FirstName'] = null) then
    Detail1Cds['FirstName'] := '';

  if (Detail1Cds['Salutation'] = null) or (Trim(Detail1Cds['Salutation']) = '') then
    raise Exception.Create('Please enter the Salutation');

  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail1Cds['AddressDetails_id'] = null then
    raise Exception.Create('AddressDetails_id not assigned');
end;

procedure TAddrBookForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin

  if (Detail2Cds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter/select an organisation first');

  if Detail2Cds['Categories_id'] = null then
    raise Exception.Create('Please enter the Category');

  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['AddressCategories_id'] = null then
    raise Exception.Create('AddressCategories_id not assigned');
end;

function TAddrBookForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := '';

  if MasterCds['Cities_id'] <> null then
    x_QueryString := x_QueryString + ' AND (Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ') '
  else if MasterCds['City'] <> null then
    x_QueryString := x_QueryString + ' AND (City = ''' + MasterCds['City'] + ''') ';

  if MasterCds['Countries_id'] <> null then
    x_QueryString := x_QueryString + ' AND (Countries_id = ' + IntToStr(MasterCds['Countries_id']) + ') ';

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Addressbook ' +
    'WHERE Organisation = ' + QuotedStr(Trim(MasterCds['Organisation'])) + ' ' +
    x_QueryString;

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Addressbook_id <> ' + IntToStr(MasterCds['Addressbook_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

function TAddrBookForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM AddressDetails ' +
    'WHERE Addressbook_id = ' + IntToStr(Detail1Cds['Addressbook_id']) + ' ' +
    'AND LastName = ' + QuotedStr(Detail1Cds['LastName']) + ' ' +
    'AND FirstName = ' + QuotedStr(Detail1Cds['FirstName']) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AddressDetails_id <> ' + IntToStr(Detail1Cds['AddressDetails_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

function TAddrBookForm.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM AddressCategories ' +
    'WHERE Addressbook_id = ' + IntToStr(Detail2Cds['Addressbook_id']) + ' ' +
    'AND Categories_id = ' + IntToStr(Detail2Cds['Categories_id']) + ' ';

  if Detail2Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AddressCategories_id <> ' + IntToStr(Detail2Cds['AddressCategories_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;

end;

procedure TAddrBookForm.cxSearchTextEditKeyPress(Sender: TObject; var Key: Char);
var
  i: integer;
  x_str: string;
begin

  if ((key <> #13) or (length(trim(cxSearchTextEdit.Text)) = 0)) then
    exit;

  if cxRadioGroup.ItemIndex = 0 then
    x_str := 'SELECT Addressbook_id, Organisation, City, null AS Firstname, null As LastName, 0 as AddressDetails_id ' +
             'FROM Addressbook ' +
             'WHERE Organisation LIKE ''%' + Trim(cxSearchTextEdit.Text) + '%'' ' +
             'ORDER BY Organisation'
  else if cxRadioGroup.ItemIndex = 1 then
    x_str := 'SELECT a.Addressbook_id, a.Organisation, a.City, ad.FirstName, ad.LastName, ad.AddressDetails_id ' +
             'FROM Addressbook a LEFT JOIN AddressDetails ad on a.addressbook_id = ad.addressbook_id ' +
             'WHERE (Lastname LIKE ''%' + Trim(cxSearchTextEdit.Text) + '%'') ' +
             'OR (FirstName LIKE ''%' + Trim(cxSearchTextEdit.Text) + '%'') ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;

  SearchSortForm.SearchSds.CommandText := x_str;

  SearchSortForm.SearchSds.Open;
  SearchSortForm.SearchCds.Open;

  for i := 0 to 5 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'FirstName';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'LastName';
  SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'AddressDetails_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[5].Visible := false;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'First Name';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Last Name';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id;AddressDetails_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          MasterCds.Locate ('Addressbook_id', SearchSortForm.SearchCds['Addressbook_id'],[]);
        end;
    end
  else
    ShowMessage('Record not found');

  SearchSortForm.Free;
  SearchSortForm := nil;
    
end;


procedure TAddrBookForm.MasterCdscities_idChange(Sender: TField);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if (MasterCds['Cities_id'] <> null) then
    begin

      QueryString := 'SELECT City FROM Cities WHERE Cities_id = ' + IntToStr(MasterCds['Cities_id']);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Active := True;

      if (not GpSds.EOF) and (GpSds['City'] <> null) then
        MasterCds['City'] := GpSds['City'];

      GpSds.Free;

    end;

end;

procedure TAddrBookForm.MasterCdscountries_idChange(Sender: TField);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if (MasterCds['Countries_id'] <> null) then
    begin

      QueryString := 'SELECT Currencies_id FROM Countries WHERE Countries_id = ' + IntToStr(MasterCds['Countries_id']);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Active := True;

      if (not GpSds.EOF) and (GpSds['Currencies_id'] <> null) then
        MasterCds['Currencies_id'] := GpSds['Currencies_id'];

      GpSds.Free;

    end;

end;

procedure TAddrBookForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['IncludeInBalanceSheet'] := true;
  MasterCds['MailExcel'] := false;
  MasterCds['PrintCo'] := false;
  MasterCds['ReverseCharge'] := false;
end;

function TAddrBookForm.GetNextOrderNo: integer;
var
  x_QueryString: String;
  x_OrderNo: Integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(OrderNo) as MaxNo FROM AddressDetails ' +
       'WHERE Addressbook_id =  ' + IntToStr(MasterCds['Addressbook_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_OrderNo := 0;
  if (not GpSds.EOF) and (GpSds['MaxNo'] <> null) then
    x_OrderNo := GpSds['MaxNo'];

  x_OrderNo := x_OrderNo + 1;

  GpSds.Free;

  Result := x_OrderNo;
end;



procedure TAddrBookForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['OrderNo'] := GetNextOrderNo;
end;

procedure TAddrBookForm.CopyTrains1Click(Sender: TObject);
begin
  inherited;

  if AddrCategorySearchForm = nil then
    Application.CreateForm(TAddrCategorySearchForm,AddrCategorySearchForm);

end;

procedure TAddrBookForm.HotelRankings1Click(Sender: TObject);
begin
  inherited;

  HotelRankingForm_Level := AddrBookForm_Level;

  if HotelRankingForm = nil then
    Application.CreateForm(THotelRankingForm,HotelRankingForm);

end;

end.
