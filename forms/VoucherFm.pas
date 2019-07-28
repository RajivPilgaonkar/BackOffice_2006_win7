unit VoucherFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_2DG_Type2_Fm, Menus, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxCheckBox, cxMemo,
  cxButtonEdit, cxRadioGroup, DateUtils, cxNavigator, cxDBNavigator;

type
  TVoucherForm = class(TCustom_1ML_2DG_Type2_Form)
    MasterCdsvouchers_id: TIntegerField;
    MasterCdsvoucherno: TIntegerField;
    MasterCdsyearref: TIntegerField;
    MasterCdsvoucherdate: TSQLTimeStampField;
    MasterCdsmastertourcode: TStringField;
    MasterCdsmastertourdate: TSQLTimeStampField;
    MasterCdstourref: TStringField;
    MasterCdsdescription: TStringField;
    MasterCdstourleader: TStringField;
    MasterCdsremarks1: TStringField;
    MasterCdsremarks2: TStringField;
    MasterCdsissuedon: TSQLTimeStampField;
    MasterCdsissuedby: TStringField;
    MasterCdsexpectedcost: TBCDField;
    MasterCdsamountbilled: TBCDField;
    MasterCdsamountpaid: TBCDField;
    MasterCdsadjexpectedcost: TBCDField;
    MasterCdstourcode: TStringField;
    MasterCdshotelagentremark: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsthrough_addressbook_id: TIntegerField;
    MasterCdspax: TIntegerField;
    MasterCdschecked: TBooleanField;
    MasterCdsfit: TBooleanField;
    MasterCdsmanual: TBooleanField;
    MasterCdsexchangerate: TBCDField;
    MasterCdscompanies_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsvouchertypes_id: TIntegerField;
    MasterCdsextraservices: TBooleanField;
    MasterCdsmodified: TBooleanField;
    MasterCdsbilled: TBCDField;
    MasterCdsextras: TBooleanField;
    MasterCdsoffices_id: TIntegerField;
    MasterCdsTL_Present: TBooleanField;
    MasterCdsreference: TStringField;
    MasterCdsIncludeInBalanceSheet: TBooleanField;
    MasterCdsQuoLines_LineNum: TIntegerField;
    Panel5: TPanel;
    Label6: TLabel;
    cxVoucherDateEdit: TcxDBDateEdit;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBExtraCkb: TcxDBCheckBox;
    Label7: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton1: TcxButton;
    Label10: TLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    Label11: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label12: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label13: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label14: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label16: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label17: TLabel;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    Label18: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label19: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label20: TLabel;
    Label21: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label22: TLabel;
    cxDBMemo3: TcxDBMemo;
    Label23: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label24: TLabel;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    Label25: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Detail1Cdsvoucherbillings_id: TIntegerField;
    Detail1Cdsbillno: TStringField;
    Detail1Cdsbilldate: TSQLTimeStampField;
    Detail1Cdsbillamount: TBCDField;
    Detail1Cdsvouchers_id: TIntegerField;
    Detail1Cdsremarks: TStringField;
    Detail1Cdstax: TBCDField;
    Detail1Cdsserialno: TIntegerField;
    Detail1Cdsprocessed: TSQLTimeStampField;
    cxGrid2DBBandedTableView1voucherbillings_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1billno: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1billdate: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1billamount: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1vouchers_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1remarks: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1tax: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1serialno: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1processed: TcxGridDBBandedColumn;
    Detail2Cdstransactiondate: TSQLTimeStampField;
    Detail2Cdscashvoucherno: TIntegerField;
    Detail2CdsVouchers_id: TIntegerField;
    Detail2Cdsdb: TBCDField;
    Detail2Cdsdetails: TStringField;
    Detail2Cdsledgers_id: TIntegerField;
    cxGridDBBandedTableView1transactiondate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cashvoucherno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Vouchers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1db: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1details: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ledgers_id: TcxGridDBBandedColumn;
    Label26: TLabel;
    Label27: TLabel;
    MasterCdsPaid: TFloatField;
    MasterCdsBalance: TFloatField;
    MasterCdsDifference: TFloatField;
    Label28: TLabel;
    Label29: TLabel;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeCds: TClientDataSet;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    MasterCodeDS: TDataSource;
    VoucherTypeSds: TSQLDataSet;
    VoucherTypeDsp: TDataSetProvider;
    VoucherTypeCds: TClientDataSet;
    VoucherTypeCdsVoucherTypes_id: TIntegerField;
    VoucherTypeCdsDescription: TStringField;
    VoucherTypeDs: TDataSource;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeDs: TDataSource;
    cxDBButtonEdit3: TcxDBButtonEdit;
    ServiceCitySds: TSQLDataSet;
    ServiceCityDsp: TDataSetProvider;
    ServiceCityCds: TClientDataSet;
    ServiceCityCdsCity: TStringField;
    ServiceCityCdsCities_id: TIntegerField;
    ServiceCityDs: TDataSource;
    MasterCdsCityLookup: TStringField;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsOrganisation: TStringField;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsCity: TStringField;
    AgentDs: TDataSource;
    cxVoucherNoRB: TcxRadioButton;
    cxVoucherDateRB: TcxRadioButton;
    cxSearchEdit: TcxTextEdit;
    UtilitiesPopup: TPopupMenu;
    CostBreakup1: TMenuItem;
    N6: TMenuItem;
    Refresh2: TMenuItem;
    N2: TMenuItem;
    SetIncludeinBalanceSheet1: TMenuItem;
    cxReportUtilities: TcxButton;
    ReportPopup: TPopupMenu;
    Differences1: TMenuItem;
    ZeroExpectedCost1: TMenuItem;
    MissingBillsAmtBilled001: TMenuItem;
    MissingBills2: TMenuItem;
    N5: TMenuItem;
    ManualVouchers2: TMenuItem;
    N4: TMenuItem;
    BedNights1: TMenuItem;
    Groups1: TMenuItem;
    FITs1: TMenuItem;
    BedNightsTourwise1: TMenuItem;
    Groups2: TMenuItem;
    FITs2: TMenuItem;
    PaidDifferences1: TMenuItem;
    N7: TMenuItem;
    VoucherListing1: TMenuItem;
    HotelCdsPostalCode: TStringField;
    HotelCdsnum: TIntegerField;
    cxDBNavigator1: TcxDBNavigator;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    ServiceCityCdsAddressbook_id: TIntegerField;
    Label30: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterEdit(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsaddressbook_idChange(Sender: TField);
    procedure MasterCdsthrough_addressbook_idChange(Sender: TField);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CostBreakup1Click(Sender: TObject);
    procedure Refresh2Click(Sender: TObject);
    procedure SetIncludeinBalanceSheet1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Differences1Click(Sender: TObject);
    procedure ZeroExpectedCost1Click(Sender: TObject);
    procedure MissingBillsAmtBilled001Click(Sender: TObject);
    procedure MissingBills2Click(Sender: TObject);
    procedure ManualVouchers2Click(Sender: TObject);
    procedure Groups1Click(Sender: TObject);
    procedure FITs1Click(Sender: TObject);
    procedure Groups2Click(Sender: TObject);
    procedure FITs2Click(Sender: TObject);
    procedure PaidDifferences1Click(Sender: TObject);
    procedure VoucherListing1Click(Sender: TObject);
    procedure cxDBCheckBox1Enter(Sender: TObject);
    procedure cxDBCheckBox2Enter(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DblClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure ResetServiceCity;
    procedure VoucherEntry;
    function GetNextVoucherNo (x_YearRef,x_companies_id: integer): integer;
    procedure UpdateBilledAmount;
    procedure VoucherSearch;
    function IncludeVouInBalanceSheet: Boolean;
    procedure SetVoucherFilter;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VoucherForm: TVoucherForm;
  VoucherForm_Companies_id: integer;
  VoucherForm_FromDate: TDateTime;
  VoucherForm_ToDate: TDateTime;
  VoucherForm_Level: integer;
  VoucherForm_Type: integer;
  VoucherForm_MasterTourCode: string;
  VoucherForm_MasterTourDate: TDateTime;
  VoucherForm_Vouchers_id: integer;

implementation

uses BackOfficeDM, GeneralUt, VouTicketsFm, VouAccommodationFm,
  VouServicesFm, VouTransportFm, VouPackagesFm, SearchSortFm,
  CostingTraceFm, ReportParameterFm, RptDifferencesFm,
  RptVouchersZeroCostFm, RptMissingBillsFm, RptManualVoucherFm,
  RptBedNightsFm, RptBedNightsTourFm, VoucherListFm, MainFm,
  VoucherPackagesFm;

{$R *.dfm}

procedure TVoucherForm.FormCreate(Sender: TObject);
begin

  Width := 1000;
  Height := 700;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Vouchers';
  cxTabSheet2.Caption := 'Bills';
  cxTabSheet3.Caption := 'Payments';

  ActivateInCustom;

  SetVoucherFilter;

  Panel1.Visible := false;

  inherited;

  MasterCodeCds.Open;
  VoucherTypeCds.Open;
  TourCodeCds.Open;
  CurrencyCds.Open;
  HotelCds.Open;
  AgentCds.Open;
  ServiceCityCds.Open;

end;

procedure TVoucherForm.SetVoucherFilter;
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin

  MasterCds.Close;
  MasterSds.Close;

  if VoucherForm_Type = 1 then
    begin
      MasterSds.CommandText :=
        'SELECT * FROM Vouchers ' +
        'WHERE Companies_id = :Companies_id ' +
        'AND VoucherDate >= :FromDate ' +
        'AND VoucherDate <= :ToDate ' +
        'ORDER BY YearRef, VoucherNo';
      MasterSds.Params[0].Value := VoucherForm_Companies_id;
      MasterSds.Params[1].Value := VoucherForm_FromDate;
      MasterSds.Params[2].Value := VoucherForm_ToDate;
    end
  else if VoucherForm_Type = 2 then
    begin
      MasterSds.CommandText :=
        'SELECT * FROM Vouchers ' +
        'WHERE Companies_id = :Companies_id ' +
        'AND MasterTourCode = :MasterTourCode ' +
        'AND MasterTourDate = :MasterTourDate ' +
        'ORDER BY YearRef, VoucherNo';
      MasterSds.Params[0].Value := VoucherForm_Companies_id;
      MasterSds.Params[1].Value := VoucherForm_MasterTourCode;
      MasterSds.Params[2].Value := VoucherForm_MasterTourDate;
    end
  else if VoucherForm_Type = 3 then
    begin
      MasterSds.CommandText :=
        'SELECT * FROM Vouchers ' +
        'WHERE Vouchers_id = :Vouchers_id ';
      MasterSds.Params[0].Value := VoucherForm_Vouchers_id;
    end;

  if VoucherForm_Type <> 1 then
    begin
      x_QueryString := 'SELECT MaxVoucherDate = MAX(VoucherDate), MinVoucherDate = MIN(VoucherDate) FROM Vouchers ' +
        'WHERE Companies_id = ' + IntToStr(VoucherForm_Companies_id) + ' ' +
        'AND MasterTourCode = ' + QuotedStr(VoucherForm_MasterTourCode) + ' ' +
        'AND MasterTourDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',VoucherForm_MasterTourDate)) + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := x_QueryString;
      GpSds.Open;

      if (not GpSds.eof) then
        begin
          VoucherForm_FromDate := GpSds['MinVoucherDate'];
          VoucherForm_ToDate := GpSds['MaxVoucherDate'];
        end;

      GpSds.Free;

    end;

end;

procedure TVoucherForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Vouchers';
  Custom_MasterKeyField := 'Vouchers_id';

  Custom_Detail1CdsName := 'VoucherBillings';
  Custom_Detail1KeyField := 'VoucherBillings_id';

  Custom_Detail2CdsName := 'Ledgers';
  Custom_Detail2KeyField := 'Ledgers_id';

  Custom_AdmLevel := VoucherForm_Level;

  Custom_FormWidth := 1000;
  Custom_FormHeight := 700 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TVoucherForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxVoucherDateEdit.SetFocus;
end;

procedure TVoucherForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (MasterCds['Pax']= null) then
    MasterCds['Pax'] := 0;

  if (MasterCds['VoucherDate']= null) then
    raise Exception.Create('Please select the voucher date');

  if (MasterCds['Currencies_id']= null) then
    raise Exception.Create('Please enter the currency');

  if (MasterCds['VoucherTypes_id']= null) then
    raise Exception.Create('Please enter the voucher type');

  if (MasterCds['ExchangeRate'] = null) or (MasterCds['ExchangeRate'] = 0.0) then
    MasterCds['ExchangeRate'] := GetExchangeRate (MasterCds['Currencies_id'], MasterCds['VoucherDate']);

  if (MasterCds['YearRef']= null) then
    raise Exception.Create('Please enter the Year Ref');

  if (MasterCds['VoucherNo']= null) then
    raise Exception.Create('Please enter the Voucher No');

  if MasterCds['Extras'] = null then
    raise Exception.Create('Enter if Extras');

  if MasterCds['Manual'] = null then
    raise Exception.Create('Enter if Manual');

  if MasterCds['Modified'] = null then
    raise Exception.Create('Enter if Modified');

  if MasterCds['fit'] = null then
    raise Exception.Create('Enter if FIT');

  if MasterCds['ExtraServices'] = null then
    raise Exception.Create('Enter if ExtraServices');

  if MasterCds['TL_Present'] = null then
    raise Exception.Create('Enter if TL_Present');

  if MasterCds['Checked'] = null then
    raise Exception.Create('Enter if Checked');

  MasterCds['IncludeInBalanceSheet'] := IncludeVouInBalanceSheet;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  if MasterCds.State = dsInsert then
    begin
      MasterCds['YearRef'] := CalcCentury(MasterCds['VoucherDate'],4);
      MasterCds['VoucherNo'] := GetNextVoucherNo (MasterCds['YearRef'],VoucherForm_companies_id);
    end;

  inherited;

  if MasterCds['Vouchers_id'] = null then
    raise Exception.Create('Vouchers_id is not assigned');

end;

procedure TVoucherForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin

  if Detail1Cds['Vouchers_id'] = null then
    raise exception.create ('Please select a voucher for the billing record');

  if Detail1Cds['BillAmount'] = null then
    raise exception.create ('Please enter a bill amount');

  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail1Cds['VoucherBillings_id'] = null then
    raise exception.Create('VoucherBillings_id is not assigned');

end;

function TVoucherForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := false;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Vouchers ' +
    'WHERE Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
    'AND VoucherNo = ' + IntToStr(MasterCds['VoucherNo']) + ' ' +
    'AND YearRef = ' + IntToStr(MasterCds['YearRef']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Vouchers_id <> ' + IntToStr(MasterCds['Vouchers_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := true;

  GpSds.Free;

  Result := x_duplicate;

end;

function TVoucherForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := false;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM VoucherBillings ' +
    'WHERE Vouchers_id = ' + IntToStr(Detail1Cds['Vouchers_id']) + ' ' +
    'AND BillNo = ' + QuotedStr(Detail1Cds['BillNo']) + ' ' +
    'AND BillDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['BillDate'])) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (VoucherBillings_id <> ' + IntToStr(Detail1Cds['VoucherBillings_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := true;

  GpSds.Free;

  Result := x_Duplicate;
end;



procedure TVoucherForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['VoucherDate'] := Date();
  MasterCds['Manual'] := true;
  MasterCds['Modified'] := true;
  MasterCds['Checked'] := false;
  MasterCds['FIT'] := false;
  MasterCds['Extras'] := false;
  MasterCds['TL_Present'] := false;
  MasterCds['ExpectedCost'] := 0.0;
  MasterCds['AdjExpectedCost'] := 0.0;
  MasterCds['Pax'] := 0;
  MasterCds['ExchangeRate'] := 0.0;
  MasterCds['AmountBilled'] := 0.0;
  MasterCds['AmountPaid'] := 0.0;
  MasterCds['ExtraServices'] := false;
  MasterCds['IssuedOn'] := Date();
  MasterCds['Companies_id'] := VoucherForm_Companies_id;
{  MasterCds['Currencies_id'] := GetDefaultCurrencyAddr(0);}
{  MasterCds['IssuedBy'] := GetAdmUserName(VoucherForm_users_id);}
  MasterCds['IncludeInBalanceSheet'] := True;

end;

procedure TVoucherForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['Vouchers_id'] := MasterCds['vouchers_id'];
end;

procedure TVoucherForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VoucherForm := nil;
end;

procedure TVoucherForm.MasterCdsAfterEdit(DataSet: TDataSet);
begin
  inherited;
   MasterCds['Modified'] := true;
end;

procedure TVoucherForm.MasterCdsAfterPost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  QueryString := 'EXEC dbo.p_UpdatePaxInVouchers ' + IntToStr(MasterCds['Vouchers_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TVoucherForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ResetServiceCity;
end;

procedure TVoucherForm.ResetServiceCity;
begin

  ServiceCityCds.Close;
  ServiceCitySds.Close;
  if MasterCds['AddressBook_id'] = null then
    begin
      ServiceCitySds.Params[0].Value := 0;
    end
  else
    begin
      ServiceCitySds.Params[0].Value := MasterCds['AddressBook_id'];
    end;
  ServiceCitySds.Open;
  ServiceCityCds.Open;

end;

procedure TVoucherForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if (VoucherForm_Level < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if MasterCds['Manual'] = False then
    raise Exception.Create('Cannot delete an automatically generated voucher' + chr(13) +
                           'You will have to rollback the vouchers for the master tour to delete the voucher');

  QueryString := 'EXEC dbo.p_DeleteVoucherDetails ' + IntToStr(MasterCds['Vouchers_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TVoucherForm.MasterCdsCalcFields(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
  x_Billed, x_ExpectedCost: double;
  x_currencies_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_currencies_id := GetDefaultCurrency;

  // Obtain Paid Amount
  GpSds.Close;
  GpSds.CommandText := 'SELECT (CASE WHEN (V.Currencies_id=' + IntToStr(x_currencies_id) + ') OR (V.Currencies_id IS NULL) '+
               ' THEN COALESCE((SUM(COALESCE(L.Debit,0)-COALESCE(L.Credit,0))), 0) '+
               ' ELSE COALESCE(SUM(COALESCE(L.ForexDebit,0)- COALESCE(L.ForexCredit,0)),0) '+
               ' END) AS VouPaid FROM Ledgers L ' +
               ' INNER JOIN Vouchers v ON v.voucherno=l.voucherno AND v.yearref=l.yearref ' +
               ' WHERE v.vouchers_id = '+ IntToStr(MasterCds['Vouchers_id']) + ' ' +
               ' GROUP BY v.currencies_id ';
  GpSds.Open;

  if GpSds['VouPaid'] = null then
    MasterCds['Paid'] := 0
  else
    MasterCds['Paid'] := GpSds['VouPaid'];

  x_Billed := 0.0;
  if MasterCds['AmountBilled'] <> null then
    x_Billed := MasterCds['AmountBilled'];

  MasterCds['Balance'] := x_Billed - MasterCds['Paid'];

  x_ExpectedCost := 0.0;
  if (MasterCds['AdjExpectedCost'] <> null) and (MasterCds['AdjExpectedCost'] > 0.0) then
    x_ExpectedCost := MasterCds['AdjExpectedCost']
  else if (MasterCds['ExpectedCost'] <> null) and (MasterCds['ExpectedCost'] > 0.0) then
    x_ExpectedCost := MasterCds['ExpectedCost'];

  MasterCds['Difference'] := x_Billed - x_ExpectedCost;

  GpSds.Close;
  GpSds.Free;

end;

procedure TVoucherForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateBilledAmount;
  MasterCds.RefreshRecord;
end;

procedure TVoucherForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateBilledAmount;
  MasterCds.RefreshRecord;
end;

procedure TVoucherForm.VoucherEntry;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_VouchersPackages_id: integer;
begin

  if MasterCds.State = dsInsert then
    raise Exception.Create('Please save the voucher first ...!');

  if MasterCds['VoucherTypes_id'] = null then
    raise Exception.Create('Please enter the voucher type');

  if MasterCds.State = dsEdit then
    MasterCds.Post;

  QueryString := 'EXEC dbo.p_InsertVoucherDetails ' + IntToStr(MasterCds['Vouchers_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  // Tickets
  if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [2,6]) then
    begin
      _VouTicketsForm_Level := VoucherForm_Level;
      _VouTicketsForm_CallType := 2;
      if VouTicketsForm = nil then
        Application.CreateForm(TVouTicketsForm, VouTicketsForm);
      VouTicketsForm.ShowModal;

      if VouTicketsForm.ModalResult = mrOK then
        MasterCds.RefreshRecord;

      VouTicketsForm.Release;
      VouTicketsForm := nil;
    end

  // Accommodation
  else if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [3,7]) then
    begin
      _VouAccommodationForm_Level := VoucherForm_Level;
      _VouAccommodationForm_CallType := 2;
      if VouAccommodationForm = nil then
        Application.CreateForm(TVouAccommodationForm, VouAccommodationForm);
      VouAccommodationForm.ShowModal;

      if VouAccommodationForm.ModalResult = mrOK then
        MasterCds.RefreshRecord;

      VouAccommodationForm.Release;
      VouAccommodationForm := nil
    end

  // Services
  else if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [4,8]) then
    begin
      _VouServicesForm_Level := VoucherForm_Level;
      _VouServicesForm_CallType := 2;
      if VouServicesForm = nil then
        Application.CreateForm(TVouServicesForm, VouServicesForm);
      VouServicesForm.ShowModal;

      if VouServicesForm.ModalResult = mrOK then
        MasterCds.RefreshRecord;

      VouServicesForm.Release;
      VouServicesForm := nil;
    end

  // Transport
  else if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [5,13]) then
    begin
      _VouTransportForm_Level := VoucherForm_Level;
      _VouTransportForm_CallType := 2;
      if VouTransportForm = Nil then
        Application.CreateForm(TVouTransportForm, VouTransportForm);
      VouTransportForm.ShowModal;

      if VouTransportForm.ModalResult = mrOK then
        MasterCds.RefreshRecord;

      VouTransportForm.Release;
      VouTransportForm := nil;
    end

  // Packages
  else if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [9,10]) then
    begin
    {
      _VouPackagesForm_Level := VoucherForm_Level;
      if VouPackagesForm = Nil then
        Application.CreateForm(TVouPackagesForm, VouPackagesForm);
      VouPackagesForm.ShowModal;

      if VouPackagesForm.ModalResult = mrOK then
        MasterCds.RefreshRecord;

      VouPackagesForm.Release;
      VouPackagesForm := nil;
    }

    GpSds.Close;
    GpSds.CommandText := 'SELECT MAX(VouchersPackages_id) AS VouchersPackages_id FROM VouchersPackages ' +
      'WHERE Vouchers_id = ' + IntToStr(MasterCds['Vouchers_id']);
    GpSds.Open;

    x_VouchersPackages_id := -1;
    if (not GpSds.Eof) and (GpSds['VouchersPackages_id'] <> null) then
      x_VouchersPackages_id := GpSds['VouchersPackages_id'];

    VoucherPackagesForm_level := VoucherForm_Level;
    VoucherPackagesForm_VoucherPackages_id := x_VouchersPackages_id;

    if VoucherPackagesForm = nil then
      Application.CreateForm(TVoucherPackagesForm, VoucherPackagesForm);

    VoucherPackagesForm.Visible := false;
    VoucherPackagesForm.ShowModal;

    MasterCds.RefreshRecord;

    VoucherPackagesForm.Release;
    VoucherPackagesForm := nil;
  end;

  GpSds.Free;


end;

function TVoucherForm.GetNextVoucherNo (x_YearRef,x_companies_id: integer): integer;
var
  x_NextVoucherNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextVoucherNo(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ') as NextVoucherNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextVoucherNo := GpSds['NextVoucherNo'];

  GpSds.Free;

  Result := x_NextVoucherNo;

end;

procedure TVoucherForm.UpdateBilledAmount;
var
  x_amt: Real;
  GpSds: TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT COALESCE(SUM(COALESCE(BillAmount,0)),0) As BillAmt '+
                       ' FROM VoucherBillings '+
                       ' WHERE Vouchers_id=' + IntToStr(MasterCds['Vouchers_id']);
  GpSds.Open;

  if GpSds['BillAmt'] = null then
    x_amt:=0
   else
     x_amt := GpSds['BillAmt'];

  GpSds.Close;
  GpSds.CommandText := 'UPDATE Vouchers SET AmountBilled = ' + FloatToStr(x_amt) +
   ' WHERE Vouchers_id= ' + IntToStr(MasterCds['Vouchers_id']);
  GpSds.ExecSQL;

  GpSds.Free;

end;


procedure TVoucherForm.MasterCdsaddressbook_idChange(Sender: TField);
var
   x_Addressbook_id, x_ThroughAddressbook_id : Integer;
begin
  inherited;

   if MasterCds['Addressbook_id'] = null then
     x_Addressbook_id := 0
   else
     x_Addressbook_id := MasterCds['Addressbook_id'];

   MasterCds['Currencies_id'] := GetDefaultCurrencyAddr(x_Addressbook_id);

   if x_Addressbook_id > 0 then
     begin
       x_ThroughAddressbook_id := GetThroughAddressbook (x_Addressbook_id);
       if x_ThroughAddressbook_id  > 0 then
         MasterCds['Through_Addressbook_id'] := x_ThroughAddressbook_id;
     end;

   ResetServiceCity;

end;

procedure TVoucherForm.MasterCdsthrough_addressbook_idChange(
  Sender: TField);
var
   x_Addressbook_id : Integer;
begin
  inherited;

   if MasterCds['Through_Addressbook_id'] = null then
     begin
       if MasterCds['Addressbook_id'] = null then
         x_Addressbook_id := 0
       else
         x_Addressbook_id := MasterCds['Addressbook_id'];
     end
   else
     x_Addressbook_id := MasterCds['Through_Addressbook_id'];

   MasterCds['Currencies_id'] := GetDefaultCurrencyAddr(x_Addressbook_id);

end;

procedure TVoucherForm.VoucherSearch;
var
  QueryString: string;
  i: integer;
begin

  if cxVoucherNoRB.Checked then
    QueryString := 'SELECT Vouchers_id, VoucherNo, YearRef, VoucherDate, Mastertourcode, Description, TourRef, TourLeader, A.Organisation ' +
            'FROM Vouchers v LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
            'WHERE VoucherNo = ''' + cxSearchEdit.Text + ''' ' +
            'AND VoucherDate >= ''' + FormatDateTime('mm/dd/yyyy', VoucherForm_FromDate) + ''' ' +
            'AND VoucherDate <= ''' + FormatDateTime('mm/dd/yyyy', VoucherForm_ToDate) + ''' ' +
            'ORDER BY VoucherDate DESC'

  else if cxVoucherDateRB.Checked then
    QueryString := 'SELECT Vouchers_id, VoucherNo, YearRef, VoucherDate, Mastertourcode, Description, TourRef, TourLeader, A.Organisation ' +
            'FROM Vouchers v LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
            'WHERE VoucherDate = ''' + FormatDateTime('mm/dd/yyyy', StrToDate(cxSearchEdit.Text)) + ''' ' +
            'ORDER BY VoucherDate DESC';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

    SearchSortForm.SearchSds.Close;
    SearchSortForm.SearchSds.CommandText := QueryString;
    SearchSortForm.SearchSds.Open;

    SearchSortForm.SearchCds.Open;

    for i := 0 to 8 do
      begin
        SearchSortForm.SearchGridDBTableView1.CreateColumn;
      end;

    //*=== Set the Grid Fields ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Vouchers_id';
    SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'VoucherNo';
    SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'VoucherDate';
    SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'TourRef';
    SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'Description';
    SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'TourLeader';
    SearchSortForm.SearchGridDBTableView1.Columns[6].DataBinding.FieldName := 'Organisation';
    SearchSortForm.SearchGridDBTableView1.Columns[7].DataBinding.FieldName := 'MasterTourCode';
    SearchSortForm.SearchGridDBTableView1.Columns[8].DataBinding.FieldName := 'YearRef';

    //*=== Set the Grid Columns' width ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
    SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
    SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
    SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 150;
    SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 100;
    SearchSortForm.SearchGridDBTableView1.Columns[6].Width := 120;
    SearchSortForm.SearchGridDBTableView1.Columns[7].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[8].Width := 80;

    //*=== Set the Grid Column Headers ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Voucher No';
    SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Voucher Date';
    SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Tour Ref';
    SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Description';
    SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Tour Leader';
    SearchSortForm.SearchGridDBTableView1.Columns[6].Caption := 'Organisation';
    SearchSortForm.SearchGridDBTableView1.Columns[7].Caption := 'Master Code';
    SearchSortForm.SearchGridDBTableView1.Columns[8].Caption := 'Year Ref';

    SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Vouchers_id';

    if (SearchSortForm.SearchCds.RecordCount = 1) then
      begin
        MasterCds.Locate ('Vouchers_id', SearchSortForm.SearchCds['Vouchers_id'],[]);
      end
    else if not SearchSortForm.SearchCds.EOF then
      begin

        SearchSortForm.ShowModal;

        if (SearchSortForm.ModalResult = mrOK) then
          begin
            MasterCds.Locate('Vouchers_id',SearchSortForm.SearchCds['Vouchers_id'],[]);
          end;

      end
    else
      Showmessage ('Not found');

    SearchSortForm.Free;
    SearchSortForm := nil;
end;


procedure TVoucherForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    VoucherSearch;
end;

procedure TVoucherForm.cxButton2Click(Sender: TObject);
begin
  inherited;
  VoucherEntry;
end;

procedure TVoucherForm.cxButton3Click(Sender: TObject);
var
  x_AH_type: string;
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin
  inherited;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  x_AH_type := '';

  if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [3,7]) then
    x_AH_type := 'A'
  else if (VarToIntDef(MasterCds['VoucherTypes_id'],0) in [4,8]) then
    x_AH_type := 'H'
  else
    exit;

  QueryString := 'SELECT Addressbook_id, Organisation, City FROM dbo.fn_Addressbook  (2,''' + x_AH_type + ''')';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin

      QueryString := 'SELECT dbo.fn_GetHotelAgentDesc (' +
        IntToStr(SearchSortForm.SearchCds['Addressbook_id']) + ',' +
        IntToStr(MasterCds['VoucherTypes_id']) + ',' +
        IntToStr(MasterCds['Pax']) + ') AS Remark';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      MasterCds['HotelAgentRemark'] := GpSds['Remark'];

      GpSds.Free;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TVoucherForm.cxDBButtonEdit3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if MasterCds['TourCode'] = null then
    exit;

  QueryString := 'SELECT t.TourCode, dd.TourDate ' +
          'FROM TourDepartureDates dd, TourCodes t ' +
          'WHERE t.TourCodes_id = dd.TourCodes_id ' +
          'AND t.TourCode = ''' + trim(MasterCds['TourCode']) + ''' ' +
          'ORDER BY dd.TourDate DESC';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TourCode';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourDate';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Departure Date';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TourDate';

  SearchSortForm.SearchCds.Open;

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if MasterCds.State = dsBrowse then
            MasterCds.Edit;
          MasterCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];
        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TVoucherForm.CostBreakup1Click(Sender: TObject);
begin
  inherited;

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _CostingTraceForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if MasterCds.State = dsEdit then
    MasterCds.Post;

  _CostingTraceForm_Gst := 0;
  if MasterCds['VoucherDate'] >= StrToDate('01/07/2017') then
    _CostingTraceForm_Gst := 1;

  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];
  _CostingTraceForm_VoucherTypes_id := MasterCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  if _CostingTraceForm_Recompute = True then
    MasterCds.RefreshRecord;

  CostingTraceForm.Free;
  CostingTraceForm := nil;

end;

procedure TVoucherForm.Refresh2Click(Sender: TObject);
begin
  inherited;
  MasterCds.RefreshRecord;
end;

procedure TVoucherForm.SetIncludeinBalanceSheet1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you want to execute this?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'EXEC p_zz_IncludeInBS ';

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('"Include in Balance Sheet" set for Vouchers Oct 1 2006 onwards');

end;

procedure TVoucherForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_TLName: string;
begin
  inherited;

  if MasterCds['Reference'] <> null then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      // Obtain Paid Amount
      GpSds.Close;
      GpSds.CommandText := 'SELECT MAX(Name) As TLName FROM BookingsClients bc, Bookings b '+
                   'WHERE bc.Bookings_id = b.Bookings_id ' +
                   'AND Reference = ''' + Trim(MasterCds['Reference']) + '''';
      GpSds.Open;

      if GpSds['TLName'] = null then
        x_TLName := ''
      else
        x_TLName := GpSds['TLName'];

      GpSds.Close;
      GpSds.Free;

      ShowMessage ('Pax - ' + x_TLName);

    end;

end;

function TVoucherForm.IncludeVouInBalanceSheet: Boolean;
var
  QueryString: string;
  x_include: boolean;
  GpSds: TSQLDataSet;
begin

  x_include := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if MasterCds['Through_Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT COALESCE(IncludeInBalanceSheet,1) AS IncludeInBalanceSheet ' +
        'FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Through_Addressbook_id']);

      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_include := GpSds['IncludeInBalanceSheet'];

    end
  else if MasterCds['Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT COALESCE(IncludeInBalanceSheet,1) AS IncludeInBalanceSheet ' +
        'FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']);

      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_include := GpSds['IncludeInBalanceSheet'];

    end;

  GpSds.Free;

  Result := x_include;

end;


procedure TVoucherForm.Differences1Click(Sender: TObject);
var
  x_year: Word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      // Differences report form - set as INVISIBLE as it displays report & form together
      // Maybe because it was set as MdiChild as athen changed to Normal
      if RptDifferencesForm = nil then
        Application.CreateForm(TRptDifferencesForm, RptDifferencesForm);

      RptDifferencesForm.DifferencesCds.Close;
      RptDifferencesForm.DifferencesSds.Close;

      RptDifferencesForm.DifferencesSds.CommandText :=
        'select * from dbo.fn_Rpt_Vou_Difference (' +
        ReportParameterForm.YearEdit.Text + ', 1, 1) ' +
        'WHERE ABS(ExpectedCost - Billed) > 5.0 ' +
        'ORDER BY Organisation, VoucherNo, VoucherDate';

      RptDifferencesForm.DifferencesSds.Open;
      RptDifferencesForm.DifferencesCds.Open;

      RptDifferencesForm.QuickRep1.PreviewModal;

      RptDifferencesForm.Release;
      RptDifferencesForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.ZeroExpectedCost1Click(Sender: TObject);
var
  x_year: Word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptVouchersZeroCostForm = nil then
        Application.CreateForm(TRptVouchersZeroCostForm, RptVouchersZeroCostForm);

      RptVouchersZeroCostForm.VouchersZeroCostSds.Close;
      // Differences report form - set as INVISIBLE as it displays report & form together
      // Maybe because it was set as MdiChild as athen changed to Normal
      RptVouchersZeroCostForm.VouchersZeroCostSds.CommandText :=
        'select * from dbo.fn_Rpt_Vou_ZeroCost (' +
        ReportParameterForm.YearEdit.Text + ') ' +
        'ORDER BY OrgCity, VoucherNo, VoucherDate';

      RptVouchersZeroCostForm.VouchersZeroCostSds.Open;
      RptVouchersZeroCostForm.VouchersZeroCostCds.Close;
      RptVouchersZeroCostForm.VouchersZeroCostCds.Open;

      RptVouchersZeroCostForm.QuickRep1.PreviewModal;

      RptVouchersZeroCostForm.Release;
      RptVouchersZeroCostForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.MissingBillsAmtBilled001Click(Sender: TObject);
var
  x_year: Word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptVouchersZeroCostForm = nil then
        Application.CreateForm(TRptVouchersZeroCostForm, RptVouchersZeroCostForm);

      RptVouchersZeroCostForm.VouchersZeroCostSds.Close;
      // Differences report form - set as INVISIBLE as it displays report & form together
      // Maybe because it was set as MdiChild as athen changed to Normal
      RptVouchersZeroCostForm.VouchersZeroCostSds.CommandText :=
        'select * from dbo.fn_Rpt_Vou_ZeroCost2 (' +
        ReportParameterForm.YearEdit.Text + ') ' +
        'ORDER BY OrgCity, VoucherNo, VoucherDate';

      RptVouchersZeroCostForm.VouchersZeroCostSds.Open;
      RptVouchersZeroCostForm.VouchersZeroCostCds.Close;
      RptVouchersZeroCostForm.VouchersZeroCostCds.Open;

      RptVouchersZeroCostForm.QuickRep1.PreviewModal;

      RptVouchersZeroCostForm.Release;
      RptVouchersZeroCostForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.MissingBills2Click(Sender: TObject);
var
  x_year: Word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      // Differences report form - set as INVISIBLE as it displays report & form together
      // Maybe because it was set as MdiChild as athen changed to Normal
      if RptMissingBillsForm = nil then
        Application.CreateForm(TRptMissingBillsForm, RptMissingBillsForm);

      RptMissingBillsForm.MissBillCds.Close;
      RptMissingBillsForm.MissBillSds.Close;

      RptMissingBillsForm.MissBillSds.CommandText :=
        'select * from dbo.fn_Rpt_Vou_Difference (' +
        ReportParameterForm.YearEdit.Text + ', 2, 1) ' +
        'ORDER BY Organisation, VoucherNo, VoucherDate';

      RptMissingBillsForm.MissBillSds.Open;
      RptMissingBillsForm.MissBillCds.Open;

      RptMissingBillsForm.QuickRep1.PreviewModal;

      RptMissingBillsForm.Release;
      RptMissingBillsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.ManualVouchers2Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := StartOfYear(Date());
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptManualVoucherForm = nil then
        Application.CreateForm(TRptManualVoucherForm, RptManualVoucherForm);

      RptManualVoucherForm.ManualVouCds.Close;
      RptManualVoucherForm.ManualVouSds.Close;

      RptManualVoucherForm.ManualVouSds.CommandText :=
        RptManualVoucherForm.ManualVouSds.CommandText +
        ' AND VoucherDate BETWEEN ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''' AND ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''' ';

      RptManualVoucherForm.ManualVouSds.Open;
      RptManualVoucherForm.ManualVouCds.Open;

      RptManualVoucherForm.QuickRep1.PreviewModal;

      RptManualVoucherForm.Release;
      RptManualVoucherForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.Groups1Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := StartOfYear(Date());
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptBedNightsForm = nil then
        Application.CreateForm(TRptBedNightsForm, RptBedNightsForm);

      RptBedNightsForm.BedNightsCds.Close;
      RptBedNightsForm.BedNightsSds.Close;

      RptBedNightsForm.BedNightsSds.CommandText :=
        'SELECT * FROM dbo.fn_Rpt_Vou_BedNights(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''',''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', 0) ' +
        'WHERE BedNights > 0 ' +
        'ORDER BY Organisation, xYearMonth';
      RptBedNightsForm.BedNightsSds.Open;
      RptBedNightsForm.bednightsCds.Open;

      RptBedNightsForm.DateRangeLabel.Caption := 'From ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptBedNightsForm.QuickRep1.PreviewModal;

      RptBedNightsForm.Release;
      RptBedNightsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.FITs1Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := StartOfYear(Date());
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptBedNightsForm = nil then
        Application.CreateForm(TRptBedNightsForm, RptBedNightsForm);

      RptBedNightsForm.BedNightsCds.Close;
      RptBedNightsForm.BedNightsSds.Close;

      RptBedNightsForm.BedNightsSds.CommandText :=
        'SELECT * FROM dbo.fn_Rpt_Vou_BedNights(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''',''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', 1) ' +
        'WHERE BedNights > 0 ' +
        'ORDER BY Organisation, xYearMonth';
      RptBedNightsForm.BedNightsSds.Open;
      RptBedNightsForm.bednightsCds.Open;

      RptBedNightsForm.DateRangeLabel.Caption := 'From ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptBedNightsForm.QuickRep1.PreviewModal;

      RptBedNightsForm.Release;
      RptBedNightsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;
  
end;

procedure TVoucherForm.Groups2Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := StartOfYear(Date());
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptBedNightsTourForm = nil then
        Application.CreateForm(TRptBedNightsTourForm, RptBedNightsTourForm);

      RptBedNightsTourForm.BedNightsCds.Close;
      RptBedNightsTourForm.BedNightsSds.Close;

      RptBedNightsTourForm.BedNightsSds.CommandText :=
        'SELECT * FROM dbo.fn_Rpt_Vou_BedNights_Tours(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''',''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', 0) ' +
        'WHERE BedNights > 0 ' +
        'ORDER BY TourDate, TourCode';
      RptBedNightsTourForm.BedNightsSds.Open;
      RptBedNightsTourForm.bednightsCds.Open;

      RptBedNightsTourForm.DateRangeLabel.Caption := 'From ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptBedNightsTourForm.QuickRep1.PreviewModal;

      RptBedNightsTourForm.Release;
      RptBedNightsTourForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.FITs2Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := StartOfYear(Date());
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptBedNightsTourForm = nil then
        Application.CreateForm(TRptBedNightsTourForm, RptBedNightsTourForm);

      RptBedNightsTourForm.BedNightsCds.Close;
      RptBedNightsTourForm.BedNightsSds.Close;

      RptBedNightsTourForm.BedNightsSds.CommandText :=
        'SELECT * FROM dbo.fn_Rpt_Vou_BedNights_Tours(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''',''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', 1) ' +
        'WHERE BedNights > 0 ' +
        'ORDER BY TourDate, TourCode';
      RptBedNightsTourForm.BedNightsSds.Open;
      RptBedNightsTourForm.bednightsCds.Open;

      RptBedNightsTourForm.DateRangeLabel.Caption := 'From ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptBedNightsTourForm.QuickRep1.PreviewModal;

      RptBedNightsTourForm.Release;
      RptBedNightsTourForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.PaidDifferences1Click(Sender: TObject);
var
  x_year: Word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      // Differences report form - set as INVISIBLE as it displays report & form together
      // Maybe because it was set as MdiChild as athen changed to Normal
      if RptDifferencesForm = nil then
        Application.CreateForm(TRptDifferencesForm, RptDifferencesForm);

      RptDifferencesForm.DifferencesCds.Close;
      RptDifferencesForm.DifferencesSds.Close;

      RptDifferencesForm.DifferencesSds.CommandText :=
        'select * from dbo.fn_Rpt_Vou_Difference (' +
        ReportParameterForm.YearEdit.Text + ', 1, 2) ' +
        'WHERE ABS(Paid - Billed) > 5.0 ' +
        'ORDER BY Organisation, VoucherNo, VoucherDate';

      RptDifferencesForm.DifferencesSds.Open;
      RptDifferencesForm.DifferencesCds.Open;

      RptDifferencesForm.QuickRep1.PreviewModal;

      RptDifferencesForm.Release;
      RptDifferencesForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherForm.VoucherListing1Click(Sender: TObject);
begin
  inherited;
  if VoucherListForm = nil then
    Application.CreateForm(TVoucherListForm,VoucherListForm);

end;

procedure TVoucherForm.cxDBCheckBox1Enter(Sender: TObject);
begin
  inherited;
  // Read only does not work. So just to overcome the bug of DevExpress
  cxDBExtraCkb.SetFocus;
end;

procedure TVoucherForm.cxDBCheckBox2Enter(Sender: TObject);
begin
  inherited;
  // Read only does not work. So just to overcome the bug of DevExpress
  cxDBExtraCkb.SetFocus;
end;

procedure TVoucherForm.cxGrid2DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Detail1Cds.Eof then
    Detail1Cds.Insert;

end;

procedure TVoucherForm.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin

  if MasterCds['MasterTourCode'] = null then
    exit;

  x_QueryString := 'SELECT m.MasterCode, mdd.TourDate ' +
          'FROM MasterDepartureDates mdd, Masters m ' +
          'WHERE m.Masters_id = mdd.Masters_id ' +
          'AND m.MasterCode = ''' + trim(MasterCds['MasterTourCode']) + ''' ' +
          'ORDER BY mdd.TourDate DESC';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'MasterCode';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourDate';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Departure Date';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TourDate';

  SearchSortForm.SearchCds.Open;

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if MasterCds.State = dsBrowse then
            MasterCds.Edit;
          MasterCds['MasterTourDate'] := SearchSortForm.SearchCds['TourDate'];
        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
