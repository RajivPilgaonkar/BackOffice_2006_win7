unit VouBillFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, StdCtrls, ExtCtrls, ImgList, Menus,
  cxLookAndFeelPainters, ToolWin, ComCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  FMTBcd, DB, DBClient, Provider, SqlExpr, cxLabel, Buttons, cxCheckBox,
  cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ActnList,
  DBClientActns, DBActns, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxButtonEdit,
  cxNavigator, cxDBNavigator, DateUtils, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TVouBillForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    GroupBox2: TcxGroupBox;
    ImageList1: TImageList;
    NavImageList1: TImageList;
    NavImageList2: TImageList;
    NavImageList3: TImageList;
    BilledTxt: TcxDBTextEdit;
    PaidTxt: TcxDBTextEdit;
    BalanceTxt: TcxDBTextEdit;
    DifferenceTxt: TcxDBTextEdit;
    VoucherSds: TSQLDataSet;
    VoucherDsp: TDataSetProvider;
    VoucherCds: TClientDataSet;
    VoucherDs: TDataSource;
    VoucherCdsvouchers_id: TIntegerField;
    VoucherCdsvoucherno: TIntegerField;
    VoucherCdsyearref: TIntegerField;
    VoucherCdsvoucherdate: TSQLTimeStampField;
    VoucherCdsmastertourcode: TStringField;
    VoucherCdsmastertourdate: TSQLTimeStampField;
    VoucherCdstourref: TStringField;
    VoucherCdsdescription: TStringField;
    VoucherCdstourleader: TStringField;
    VoucherCdsremarks1: TStringField;
    VoucherCdsremarks2: TStringField;
    VoucherCdsissuedon: TSQLTimeStampField;
    VoucherCdsissuedby: TStringField;
    VoucherCdsexpectedcost: TBCDField;
    VoucherCdsamountbilled: TBCDField;
    VoucherCdsamountpaid: TBCDField;
    VoucherCdsadjexpectedcost: TBCDField;
    VoucherCdstourcode: TStringField;
    VoucherCdstourdate: TSQLTimeStampField;
    VoucherCdshotelagentremark: TStringField;
    VoucherCdsaddressbook_id: TIntegerField;
    VoucherCdsthrough_addressbook_id: TIntegerField;
    VoucherCdspax: TIntegerField;
    VoucherCdschecked: TBooleanField;
    VoucherCdsfit: TBooleanField;
    VoucherCdsmanual: TBooleanField;
    VoucherCdsexchangerate: TBCDField;
    VoucherCdscompanies_id: TIntegerField;
    VoucherCdscities_id: TIntegerField;
    VoucherCdscountries_id: TIntegerField;
    VoucherCdscurrencies_id: TIntegerField;
    VoucherCdsvouchertypes_id: TIntegerField;
    VoucherCdsextraservices: TBooleanField;
    VoucherCdsmodified: TBooleanField;
    VoucherCdsbilled: TBCDField;
    VoucherCdsextras: TBooleanField;
    VoucherCdsoffices_id: TIntegerField;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    SpeedButton1: TSpeedButton;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    ManualChk: TcxDBCheckBox;
    ModifiedChk: TcxDBCheckBox;
    ExtraChk: TcxDBCheckBox;
    VoucherNoTxt: TcxDBTextEdit;
    YearRefTxt: TcxDBTextEdit;
    LeaderTxt: TcxDBTextEdit;
    AgentStayText: TcxDBTextEdit;
    DescriptionTxt: TcxDBMemo;
    Remarks1Txt: TcxDBMemo;
    Remarks2Txt: TcxDBMemo;
    TourRefTxt: TcxDBTextEdit;
    IssuedByTxt: TcxDBTextEdit;
    IssuedOnTxt: TcxDBTextEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    FitChk: TcxDBCheckBox;
    ExtraServiceChk: TcxDBCheckBox;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    CheckedChk: TcxDBCheckBox;
    ExpCostTxt: TcxDBTextEdit;
    AdjExpCostTxt: TcxDBTextEdit;
    PaxTxt: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    ExchangerateTxt: TcxDBTextEdit;
    VouTypeLcmb: TcxDBLookupComboBox;
    HotelLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    CurrencyLcmb: TcxDBLookupComboBox;
    TourCodeLcmb: TcxDBLookupComboBox;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    ClientDataSetApply1: TClientDataSetApply;
    ClientDataSetRevert1: TClientDataSetRevert;
    ClientDataSetUndo1: TClientDataSetUndo;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    VoucherBillingSds: TSQLDataSet;
    VoucherBillingDsp: TDataSetProvider;
    VoucherBillingCds: TClientDataSet;
    VoucherBillingDs: TDataSource;
    PaymentSds: TSQLDataSet;
    PaymentDsp: TDataSetProvider;
    PaymentCds: TClientDataSet;
    PaymentDs: TDataSource;
    VoucherBillingCdsvoucherbillings_id: TIntegerField;
    VoucherBillingCdsbillno: TStringField;
    VoucherBillingCdsbilldate: TSQLTimeStampField;
    VoucherBillingCdsbillamount: TBCDField;
    VoucherBillingCdsvouchers_id: TIntegerField;
    VoucherBillingCdsremarks: TStringField;
    VoucherBillingCdstax: TBCDField;
    VoucherBillingCdsserialno: TIntegerField;
    VoucherBillingCdsprocessed: TSQLTimeStampField;
    cxGrid1DBTableView1billno: TcxGridDBColumn;
    cxGrid1DBTableView1billdate: TcxGridDBColumn;
    cxGrid1DBTableView1billamount: TcxGridDBColumn;
    cxGrid1DBTableView1remarks: TcxGridDBColumn;
    PaymentCdstransactiondate: TSQLTimeStampField;
    PaymentCdscashvoucherno: TIntegerField;
    PaymentCdsdb: TBCDField;
    PaymentCdsdetails: TStringField;
    cxGridDBTableView1transactiondate: TcxGridDBColumn;
    cxGridDBTableView1cashvoucherno: TcxGridDBColumn;
    cxGridDBTableView1db: TcxGridDBColumn;
    cxGridDBTableView1details: TcxGridDBColumn;
    VoucherTypeSds: TSQLDataSet;
    VoucherTypeDsp: TDataSetProvider;
    VoucherTypeCds: TClientDataSet;
    VoucherTypeDs: TDataSource;
    VoucherTypeCdsVoucherTypes_id: TIntegerField;
    VoucherTypeCdsDescription: TStringField;
    ServiceCitySds: TSQLDataSet;
    ServiceCityDsp: TDataSetProvider;
    ServiceCityCds: TClientDataSet;
    ServiceCityDs: TDataSource;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDs: TDataSource;
    AgentCdsOrganisation: TStringField;
    AgentCdsAddressbook_id: TIntegerField;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    ServiceCityCdsCity: TStringField;
    ServiceCityCdsCities_id: TIntegerField;
    ServiceCityCdsAddressbook_id: TIntegerField;
    cxButton1: TcxButton;
    cxDbMasterTourCodeLCMB: TcxDBLookupComboBox;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    AgentCdsCity: TStringField;
    TourDateSds: TSQLDataSet;
    TourDateDsp: TDataSetProvider;
    TourDateCds: TClientDataSet;
    TourDateDS: TDataSource;
    TourDateCdsTourCode: TStringField;
    TourDateCdsTourDate: TSQLTimeStampField;
    Panel3: TPanel;
    cxButton2: TcxButton;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    VoucherCdsCityLookup: TStringField;
    cxDBButtonEdit3: TcxDBButtonEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxButton3: TcxButton;
    FilterPopup: TPopupMenu;
    ByDateRange1: TMenuItem;
    ByTour1: TMenuItem;
    N3: TMenuItem;
    OrderByVoucherNo1: TMenuItem;
    OrderByVoucherDate1: TMenuItem;
    cxReportButton: TcxButton;
    ReportPopup: TPopupMenu;
    Differences1: TMenuItem;
    MissingBills2: TMenuItem;
    ManualVouchers2: TMenuItem;
    ZeroExpectedCost1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    VoucherCdsTL_Present: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxButton4: TcxButton;
    UtilitiesPopup: TPopupMenu;
    CostBreakup1: TMenuItem;
    N6: TMenuItem;
    Refresh2: TMenuItem;
    VoucherCdsPaid: TFloatField;
    VoucherCdsBalance: TFloatField;
    VoucherCdsDifference: TFloatField;
    PaidDifferences1: TMenuItem;
    cxDBDateEdit1: TcxDBDateEdit;
    PopupMenu1: TPopupMenu;
    UpdateBilledAmount1: TMenuItem;
    N1: TMenuItem;
    DisplayBilledAmount1: TMenuItem;
    cxLabel1: TcxLabel;
    cxRefTextEdit: TcxDBTextEdit;
    VoucherCdsreference: TStringField;
    cxButton5: TcxButton;
    BedNights1: TMenuItem;
    Groups1: TMenuItem;
    FITs1: TMenuItem;
    VoucherCdsIncludeInBalanceSheet: TBooleanField;
    N2: TMenuItem;
    SetIncludeinBalanceSheet1: TMenuItem;
    MissingBillsAmtBilled001: TMenuItem;
    BedNightsTourwise1: TMenuItem;
    Groups2: TMenuItem;
    FITs2: TMenuItem;
    N7: TMenuItem;
    VoucherListing1: TMenuItem;
    procedure VoucherEntry();
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VoucherCdsBeforePost(DataSet: TDataSet);
    procedure VoucherCdsAfterPost(DataSet: TDataSet);
    procedure VoucherCdsBeforeInsert(DataSet: TDataSet);
    procedure VoucherCdsAfterInsert(DataSet: TDataSet);
    procedure VoucherCdsBeforeEdit(DataSet: TDataSet);
    procedure VoucherCdsBeforeDelete(DataSet: TDataSet);
    procedure VoucherCdsAfterDelete(DataSet: TDataSet);
    procedure VoucherCdsAfterScroll(DataSet: TDataSet);
    procedure VoucherBillingCdsBeforePost(DataSet: TDataSet);
    procedure VoucherBillingCdsAfterPost(DataSet: TDataSet);
    procedure VoucherBillingCdsBeforeInsert(DataSet: TDataSet);
    procedure VoucherBillingCdsBeforeEdit(DataSet: TDataSet);
    procedure VoucherBillingCdsBeforeDelete(DataSet: TDataSet);
    procedure VoucherBillingCdsAfterDelete(DataSet: TDataSet);
    procedure VoucherBillingCdsAfterScroll(DataSet: TDataSet);
    procedure VoucherCdsaddressbook_idChange(Sender: TField);
    procedure VoucherCdsthrough_addressbook_idChange(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure VoucherSearch();
    procedure VoucherCdsCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    function IsRecordDuplicate: Boolean;
    function GetNextVoucherNo (x_YearRef,x_companies_id: integer): integer;
    function GetExchangeRate (x_Currencies_id: integer; x_Date: TDateTime): double;
    function GetDefaultCurrencyAddr (x_addressbook_id: integer): integer;
    procedure VoucherCdsAfterEdit(DataSet: TDataSet);
    procedure ResetServiceCity;
    procedure cxDbMasterTourCodeLCMBPropertiesEditValueChanged(
      Sender: TObject);
    function GetThroughAddressbook (x_Addressbook_id: integer): integer;
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure TourCodeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure VoucherBillingCdsAfterInsert(DataSet: TDataSet);
    procedure FilterVoucher;
    procedure ByDateRange1Click(Sender: TObject);
    procedure ByTour1Click(Sender: TObject);
    procedure OrderByVoucherNo1Click(Sender: TObject);
    procedure OrderByVoucherDate1Click(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure Differences1Click(Sender: TObject);
    procedure ZeroExpectedCost1Click(Sender: TObject);
    procedure MissingBills2Click(Sender: TObject);
    procedure ManualVouchers2Click(Sender: TObject);
    procedure CostBreakup1Click(Sender: TObject);
    procedure Refresh2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure UpdateBilledAmount;
    procedure PaidDifferences1Click(Sender: TObject);
    procedure UpdateBilledAmount1Click(Sender: TObject);
    procedure DisplayBilledAmount1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton5Click(Sender: TObject);
    procedure Groups1Click(Sender: TObject);
    procedure FITs1Click(Sender: TObject);
    function IncludeVouInBalanceSheet: Boolean;
    procedure SetIncludeinBalanceSheet1Click(Sender: TObject);
    procedure MissingBillsAmtBilled001Click(Sender: TObject);
    procedure Groups2Click(Sender: TObject);
    procedure FITs2Click(Sender: TObject);
    procedure VoucherListing1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouBillForm: TVouBillForm;
  _VouBillForm_Level: Integer;
  _VouBillForm_Type: integer;
  _VouBillForm_FromDate, _VouBillForm_ToDate: TDateTime;
  _VouBillForm_MasterCode: string;
  _VouBillForm_MasterDepDate: TDateTime;
  _VouBillForm_Vouchers_id: integer;

implementation

uses BackOfficeDM, GeneralUt, MainFm,  SearchFm, SelNameFm,
  BoQryFm, VouTicketsFm, VouAccommodationFm, VouServicesFm, VouTransportFm,
  VouPackagesFm, SearchSortFm, ReportParameterFm, ItinDepDatesFm,
  RptDifferencesFm, RptVouchersZeroCostFm, RptMissingBillsFm,
  RptManualVoucherFm, RptBedNightsFm, CostingTraceFm, RptBedNightsTourFm,
  VoucherListFm, VoucherFm;

var
  VouTbl_State,VouBillTbl_State: TDataSetState;
  TableArray: Array[0..0] of TDataSource;
  PrevVouType: Integer;
  AdmLevel: Integer;


{$R *.dfm}


procedure TVouBillForm.VoucherEntry;
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin

  if VoucherCds.State = dsInsert then
    raise Exception.Create('Please save the voucher first ...!');

  if VoucherCds['VoucherTypes_id'] = null then
    raise Exception.Create('Please enter the voucher type');

  if VoucherCds.State = dsEdit then
    VoucherCds.Post;

  QueryString := 'EXEC dbo.p_InsertVoucherDetails ' + IntToStr(VoucherCds['Vouchers_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  // Tickets
  if (VoucherCdsVoucherTypes_id.Value in [2,6]) then
    begin
      _VouTicketsForm_Level := _VouBillForm_Level;
      _VouTicketsForm_CallType := 1;
       if VouTicketsForm = Nil then
          Application.CreateForm(TVouTicketsForm, VouTicketsForm);
       VouTicketsForm.ShowModal;

       if VouTicketsForm.ModalResult = mrOK then
         VoucherCds.RefreshRecord;

       VouTicketsForm.Release;
       VouTicketsForm := nil;
    end

  // Accommodation
  else if (VoucherCdsVoucherTypes_id.Value in [3,7]) then
    begin
      _VouAccommodationForm_Level := _VouBillForm_Level;
      _VouAccommodationForm_CallType := 1;
      if VouAccommodationForm = Nil then
        Application.CreateForm(TVouAccommodationForm, VouAccommodationForm);
        VouAccommodationForm.ShowModal;

       if VouAccommodationForm.ModalResult = mrOK then
         VoucherCds.RefreshRecord;

        VouAccommodationForm.Release;
        VouAccommodationForm := nil
    end

  // Services
  else if (VoucherCdsVoucherTypes_id.Value in [4,8]) then
    begin
      _VouServicesForm_Level := _VouBillForm_Level;
      _VouServicesForm_CallType := 1;
      if VouServicesForm = Nil then
        Application.CreateForm(TVouServicesForm, VouServicesForm);
        VouServicesForm.ShowModal;

       if VouServicesForm.ModalResult = mrOK then
         VoucherCds.RefreshRecord;

        VouServicesForm.Release;
        VouServicesForm := nil;
    end

  // Transport
  else if (VoucherCDSVoucherTypes_id.Value in [5,13]) then
    begin
      _VouTransportForm_Level := _VouBillForm_Level;
      _VouTransportForm_CallType := 1;
      if VouTransportForm = Nil then
        Application.CreateForm(TVouTransportForm, VouTransportForm);
        VouTransportForm.ShowModal;

       if VouTransportForm.ModalResult = mrOK then
         VoucherCds.RefreshRecord;

        VouTransportForm.Release;
        VouTransportForm := nil;
    end

  // Packages
  else if (VoucherCdsVoucherTypes_id.Value in [9,10]) then
    begin                        
      _VouPackagesForm_Level := _VouBillForm_Level;
      if VouPackagesForm = Nil then
        Application.CreateForm(TVouPackagesForm, VouPackagesForm);
        VouPackagesForm.ShowModal;

       if VouPackagesForm.ModalResult = mrOK then
         VoucherCds.RefreshRecord;

        VouPackagesForm.Release;
        VouPackagesForm := nil;
  end;

end;

procedure TVouBillForm.FormCreate(Sender: TObject);
begin

  AdmLevel := _VouBillForm_Level;

  BackOfficeDataModule.MasterCodeCds.Active := True;
  BackOfficeDataModule.TourCode2Cds.Active := True;
  BackOfficeDataModule.CompanyCds.Active := True;
  BackOfficeDataModule.CountriesCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;
  VoucherTypeCds.Active := True;
  //MasterDateCds.Active := True;
  TourDateCds.Active := True;
  HotelCds.Active := True;
  AgentCds.Active := True;
  ServiceCityCds.Active := True;

  cxPageControl1.ActivePageIndex := 0;

  FilterVoucher;

end;

procedure TVouBillForm.FilterVoucher;
begin

  if _VouBillForm_Type = 1 then
    begin
      VoucherCds.IndexFieldNames := 'VoucherNo;VoucherDate';
      VoucherCds.Filter := '(MasterTourCode =  ''' +  _VouBillForm_MasterCode + ''' ' +
                           ' AND '+
                           'MasterTourDate = ''' + FormatDateTime('dd/mm/yyyy',_VouBillForm_MasterDepDate) + ''')';
      VoucherCds.Filtered := True;
    end

  else if _VouBillForm_Type = 2 then
    begin
      VoucherCds.IndexFieldNames := 'VoucherNo;VoucherDate';
      VoucherCds.Filter := '(VoucherDate >=  ''' + FormatDateTime('dd/mm/yyyy',_VouBillForm_FromDate) + ''' ' +
                           ' AND '+
                           'VoucherDate <= ''' + FormatDateTime('dd/mm/yyyy',_VouBillForm_ToDate) + ''')';
      VoucherCds.Filtered := True;
    end

  else if _VouBillForm_Type = 3 then
    begin
      VoucherCds.IndexFieldNames := 'Vouchers_id';
      VoucherCds.Filter := '(Vouchers_id =  ' + IntToStr(_VouBillForm_Vouchers_id) + ') ';
      VoucherCds.Filtered := True;
    end;

  VoucherCds.Filter := VoucherCds.Filter + ' AND (Companies_id = ' + IntToStr(g_companies_id) + ') ';

  VoucherCds.Active := True;
  VoucherBillingCds.Active := True;
  PaymentCds.Active := True;

end;


procedure TVouBillForm.FormDestroy(Sender: TObject);
begin
  VouBillForm := nil;
end;

procedure TVouBillForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  VoucherBillingCds.Active := True;
  VoucherCds.Active := True;

  Action:=caFree;
end;




procedure TVouBillForm.VoucherCdsBeforePost(DataSet: TDataSet);
begin

  if VoucherCds['Pax'] = Null then
    VoucherCds['Pax']:=0;

  if VoucherCds['VoucherDate'] = Null then
    Raise Exception.Create('Enter the Voucher Date');

  if VoucherCds['Currencies_id'] = Null then
    Raise Exception.Create('Enter the Currency');

  if (VoucherCds['ExchangeRate'] = Null) or (VoucherCds['ExchangeRate'] = 0.0) then
    VoucherCds['ExchangeRate'] := GetExchangeRate (VoucherCds['Currencies_id'], VoucherCds['VoucherDate']);

  if VoucherCds['VoucherTypes_id'] = Null then
    Raise Exception.Create('Enter the Voucher Type');

  if VoucherCds.State = dsInsert then
    begin
      VoucherCds['YearRef'] := CalcCentury(VoucherCds['VoucherDate'],4);
      VoucherCds['VoucherNo'] := GetNextVoucherNo (VoucherCds['YearRef'],g_companies_id);
      VoucherCds['Vouchers_id'] := GetNextId('Vouchers','Vouchers_id');
    end;

  if VoucherCds['ExchangeRate'] = Null then
    Raise Exception.Create('Enter the Exchange Rate');

  if VoucherCds['YearRef'] = Null then
    Raise Exception.Create('Enter the Year Ref');

  if VoucherCds['VoucherNo'] = Null then
    Raise Exception.Create('Enter the Voucher No');

  if VoucherCds['Vouchers_id'] = Null then
    Raise Exception.Create('Enter the Vouchers_id');

  if VoucherCds['Extras'] = Null then
    Raise Exception.Create('Enter if Extras');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  VoucherCds['IncludeInBalanceSheet'] := IncludeVouInBalanceSheet;

  //VoucherCds['Billed'] := BilledAmt;

  VouTbl_State := VoucherCds.State;

end;

function TVouBillForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Vouchers ' +
    'WHERE Companies_id = ' + IntToStr(VoucherCds['Companies_id']) + ' ' +
    'AND VoucherNo = ' + IntToStr(VoucherCds['VoucherNo']) + ' ' +
    'AND YearRef = ' + IntToStr(VoucherCds['YearRef']) + ' ';

  if VoucherCds.State = dsEdit then
    QueryString := QueryString + ' AND (Vouchers_id <> ' + IntToStr(VoucherCds['Vouchers_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


function TVouBillForm.GetNextVoucherNo (x_YearRef,x_companies_id: integer): integer;
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

function TVouBillForm.GetThroughAddressbook (x_Addressbook_id: integer): integer;
var
  x_ThroughAddressbook_id: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  //x_option := 1;

  //if x_Addressbook_id > 0 then
  //  x_option := 2;

  QueryString := 'SELECT Through_Addressbook_id FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) ;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['Through_Addressbook_id'] <> null then
    x_ThroughAddressbook_id := GpSds['Through_Addressbook_id']
  else
    x_ThroughAddressbook_id := 0;

  GpSds.Free;

  Result := x_ThroughAddressbook_id;

end;


function TVouBillForm.GetDefaultCurrencyAddr (x_Addressbook_id: integer): integer;
var
  x_DefaultCurrencies_id, x_option: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  x_option := 1;

  if x_Addressbook_id > 0 then
    x_option := 2;

  QueryString := 'SELECT dbo.fn_GetDefaultCurrency(' + IntToStr(x_option) + ',' +
    IntToStr(x_Addressbook_id) + ') as DefaultCurrencies_id';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_DefaultCurrencies_id := GpSds['DefaultCurrencies_id'];

  GpSds.Free;

  Result := x_DefaultCurrencies_id;

end;



function TVouBillForm.GetExchangeRate (x_Currencies_id: integer; x_Date: TDateTime): double;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ExchRate: double;
begin

  QueryString := 'SELECT dbo.fn_GetExchangeRate (' +
    IntToStr(x_Currencies_id) + ',''' +
    FormatDateTime('mm/dd/yyyy',x_Date) + ''') AS ExchRate';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ExchRate := GpSds['ExchRate'];

  GpSds.Free;

  Result := x_ExchRate;

end;

procedure TVouBillForm.VoucherCdsAfterPost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  VoucherCds.ApplyUpdates(0);

  QueryString := 'EXEC dbo.p_UpdatePaxInVouchers ' + IntToStr(VoucherCds['Vouchers_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TVouBillForm.VoucherCdsBeforeInsert(DataSet: TDataSet);
begin
 if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := VoucherBillingDS;
  PostDsTables(TableArray);

end;

procedure TVouBillForm.VoucherCdsAfterInsert(DataSet: TDataSet);
begin
  VoucherCds['VoucherDate'] := Date();
  VoucherCds['Manual'] := True;
  VoucherCds['Modified'] := True;
  VoucherCds['Checked'] := False;
  VoucherCds['FIT'] := False;
  VoucherCds['Extras'] := False;
  VoucherCds['TL_Present'] := False;
  VoucherCds['ExpectedCost'] := 0.0;
  VoucherCds['AdjExpectedCost'] := 0.0;
  VoucherCds['Pax'] := 0;
  VoucherCds['ExchangeRate'] := 0.0;
  VoucherCds['AmountBilled'] := 0.0;
  VoucherCds['AmountPaid'] := 0.0;
  VoucherCds['ExtraServices'] := False;
  VoucherCds['IssuedOn'] := Date();
  VoucherCds['Companies_id'] := g_Companies_id;
  VoucherCds['Currencies_id'] := GetDefaultCurrencyAddr(0);
  VoucherCds['IssuedBy'] := GetAdmUserName(g_users_id);
  VoucherCds['IncludeInBalanceSheet'] := True;  
end;

procedure TVouBillForm.VoucherCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if VoucherCds['VoucherTypes_id'] <> null then
    PrevVouType:= VoucherCdsvouchertypes_id.Value;

  TableArray[0] := VoucherBillingDS;
  PostDsTables(TableArray);

end;

procedure TVouBillForm.VoucherCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin

  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

   if VoucherCds['Manual'] = False then
      raise Exception.Create('Cannot delete an automatically generated voucher' + chr(13) +
        'You will have to rollback the vouchers for the master tour to delete the voucher');

  QueryString := 'EXEC dbo.p_DeleteVoucherDetails ' + IntToStr(VoucherCds['Vouchers_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TVouBillForm.VoucherCdsAfterDelete(DataSet: TDataSet);
begin
  VoucherCds.ApplyUpdates(0);
end;

procedure TVouBillForm.VoucherCdsAfterScroll(DataSet: TDataSet);
var
   Curr_Id : Integer;
begin

  ResetServiceCity;

   if VoucherCds['VoucherTypes_id'] <> null then
     PrevVouType := VoucherCdsvouchertypes_id.Value;

   if (VoucherCds['VoucherNo']<>null) and (VoucherCds['YearRef']<>null) then
     begin
       if VoucherCds['Currencies_id'] = null then
          Curr_Id := GetDefaultCurrency
       else
          Curr_Id := VoucherCds['Currencies_id'];

       PaymentSds.Close;
       PaymentSds.CommandText := '';
       PaymentSds.CommandText := ' select  a.transactiondate, a.cashvoucherno, '+
       ' (case when ' + IntToStr(Curr_Id) + ' = ' + IntToStr(GetDefaultCurrency) + ' then '+
       ' (coalesce(l.debit,0)-coalesce(l.credit,0)) '+
       ' else (coalesce(l.forexdebit,0)-coalesce(l.forexcredit,0)) '+
       ' end) as db, l.details '+
       ' from accounts a '+
       ' left join ledgers l '+
       ' on l.accounts_id=a.accounts_id '+
       ' where l.voucherno='+ IntToStr(VoucherCdsvoucherno.Value) +
       ' and l.yearref='+ IntToStr(VoucherCdsyearref.Value);
       PaymentSds.Open;
       PaymentCds.Close;
       PaymentCds.Open;
       //PayQry.First;
     end;

  if VoucherBillingCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if VoucherBillingCds.RecordCount = 0 then
        cxTabSheet1.ImageIndex := -1
      else
        cxTabSheet1.ImageIndex := 11;
    end;

  if PaymentCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if PaymentCds.RecordCount = 0 then
        cxTabSheet2.ImageIndex := -1
      else
        cxTabSheet2.ImageIndex := 16;
    End;


end;

procedure TVouBillForm.VoucherBillingCdsBeforePost(DataSet: TDataSet);
begin

  if VoucherBillingCds['Vouchers_id'] = null then
    raise exception.create ('Please select a voucher for the billing record');

  if VoucherBillingCds['BillAmount'] = null then
    raise exception.create ('Please enter a bill amount');

  if VoucherBillingCds.State = dsInsert then
    VoucherBillingCds['VoucherBillings_id'] := GetNextId('VoucherBillings','VoucherBillings_id');

  VouBillTbl_State := VoucherBillingCds.State;

end;

procedure TVouBillForm.VoucherBillingCdsAfterPost(DataSet: TDataSet);
begin
   VoucherBillingCds.ApplyUpdates(0);

   UpdateBilledAmount;

   //VoucherCds.RefreshRecord;
   //VoucherCds.Refresh;
end;

procedure TVouBillForm.UpdateBilledAmount;
var
   Bill_amt: Real;
   BillSds: TSQLDataSet;
begin
   BillSds := TSQLDataSet.Create(nil);
   BillSds.SQLConnection := BackOfficeDataModule.SQLConnection;

   BillSds.Close;
   BillSds.CommandText := '';
   BillSds.CommandText := 'SELECT COALESCE(SUM(COALESCE(BillAmount,0)),0) As BillAmt '+
   ' FROM VoucherBillings '+
   ' WHERE Vouchers_id=' + IntToStr(VoucherCds['Vouchers_id']);
   BillSds.Open;

   if BillSds['BillAmt']=Null then
      Bill_amt:=0
   else
      Bill_amt:=BillSds['BillAmt'];

   BillSds.Close;
   BillSds.CommandText := '';
   BillSds.CommandText := 'UPDATE Vouchers SET AmountBilled= ' + FloatToStr(Bill_amt) +
   ' WHERE Vouchers_id= ' + IntToStr(VoucherCds['Vouchers_id']);
   BillSds.ExecSQL;
   BillSds.Close;
   BillSds.Free;

end;


procedure TVouBillForm.VoucherBillingCdsBeforeInsert(DataSet: TDataSet);
begin
 if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := VoucherDS;
  PostDsTables(TableArray);

end;

procedure TVouBillForm.VoucherBillingCdsBeforeEdit(DataSet: TDataSet);
begin
 if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := VoucherDS;
  PostDsTables(TableArray);

end;

procedure TVouBillForm.VoucherBillingCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TVouBillForm.VoucherBillingCdsAfterDelete(DataSet: TDataSet);
begin
  VoucherBillingCds.ApplyUpdates(0);

  UpdateBilledAmount;

  //VoucherCds.RefreshRecord;
  //VoucherCds.Refresh;

end;

procedure TVouBillForm.VoucherBillingCdsAfterScroll(DataSet: TDataSet);
var
   Curr_Id : Integer;
begin
   if VoucherCds['VoucherTypes_id'] <> null then
     PrevVouType := VoucherCdsvouchertypes_id.Value;

   if (VoucherCds['VoucherNo']<>null) and (VoucherCds['YearRef']<>null) then
     begin
       if VoucherCds['Currencies_id'] = null then
          Curr_Id := GetDefaultCurrency
       else
          Curr_Id := VoucherCds['Currencies_id'];

       PaymentSds.Close;
       PaymentSds.CommandText := '';
       PaymentSds.CommandText := ' select  a.transactiondate, a.cashvoucherno, '+
       ' (case when ' + IntToStr(Curr_Id) + ' = ' + IntToStr(GetDefaultCurrency) + ' then '+
       ' (coalesce(l.debit,0)-coalesce(l.credit,0)) '+
       ' else (coalesce(l.forexdebit,0)-coalesce(l.forexcredit,0)) '+
       ' end) as db, l.details '+
       ' from accounts a '+
       ' left join ledgers l '+
       ' on l.accounts_id=a.accounts_id '+
       ' where l.voucherno='+IntToStr(VoucherCdsvoucherno.Value) +
       ' and l.yearref='+ IntToStr(VoucherCdsyearref.Value);
       PaymentSds.Open;
       PaymentSds.First;
     end;
end;

procedure TVouBillForm.VoucherCdsaddressbook_idChange(Sender: TField);
var
   x_Addressbook_id, x_ThroughAddressbook_id : Integer;
begin

   if VoucherCds['Addressbook_id'] = null then
     x_Addressbook_id := 0
   else
     x_Addressbook_id := VoucherCds['Addressbook_id'];

   VoucherCds['Currencies_id'] := GetDefaultCurrencyAddr(x_Addressbook_id);

   if x_Addressbook_id > 0 then
     begin
       x_ThroughAddressbook_id := GetThroughAddressbook (x_Addressbook_id);
       if x_ThroughAddressbook_id  > 0 then
         VoucherCds['Through_Addressbook_id'] := x_ThroughAddressbook_id;
     end;

   ResetServiceCity;

end;

procedure TVouBillForm.ResetServiceCity;
begin

 if VoucherCds['AddressBook_id'] = null then
   begin
     ServiceCitySds.Close;
     ServiceCitySds.CommandText := '';
     ServiceCitySds.CommandText := 'SELECT DISTINCT City, Cities_id, 0 as Addressbook_id FROM Cities ORDER BY City ' ;
     ServiceCitySds.DataSource := nil;

     ServiceCityCds.MasterSource := nil;
     ServiceCityCds.MasterFields := '';

     ServiceCityCds.Active := False;
     ServiceCityCds.Active := True;
   end
 else
   begin
     ServiceCitySds.Close;
     ServiceCitySds.CommandText := '';
     ServiceCitySds.CommandText := 'SELECT DISTINCT C.City as City, S.Cities_id as Cities_id, S.Addressbook_id as Addressbook_id FROM CostServices S' +
     ' left join Cities C on C.cities_id = S.cities_id '+
     ' where S.addressbook_id = :Addressbook_id ' +
     ' order by C.city ' ;
     ServiceCitySds.DataSource := VoucherDs;

     ServiceCityCds.MasterSource := VoucherDs;
     ServiceCityCds.MasterFields := 'Addressbook_id';

     ServiceCityCds.Active := False;
     ServiceCityCds.Active := True;
   end;

end;


procedure TVouBillForm.VoucherCdsthrough_addressbook_idChange(
  Sender: TField);
var
   x_Addressbook_id : Integer;
begin

   if VoucherCds['Through_Addressbook_id'] = null then
     begin
       if VoucherCds['Addressbook_id'] = null then
         x_Addressbook_id := 0
       else
         x_Addressbook_id := VoucherCds['Addressbook_id'];
     end
   else
     x_Addressbook_id := VoucherCds['Through_Addressbook_id'];

   VoucherCds['Currencies_id'] := GetDefaultCurrencyAddr(x_Addressbook_id);

end;

procedure TVouBillForm.SpeedButton1Click(Sender: TObject);
begin
  VoucherEntry;
  //VoucherCds.Refresh;
end;

procedure TVouBillForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    VoucherSearch;
end;


procedure TVouBillForm.VoucherSearch;
var
  QueryString: string;
  i: integer;
begin

  if cxSearchGB.ItemIndex = 0 then
    QueryString := 'SELECT Vouchers_id, VoucherNo, YearRef, VoucherDate, Mastertourcode, Description, TourRef, TourLeader, A.Organisation ' +
            'from Vouchers v LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
            'WHERE VoucherNo = ''' + cxSearchEdit.Text + ''' ' +
            'AND VoucherDate >= ''' + FormatDateTime('mm/dd/yyyy', _VouBillForm_FromDate) + ''' ' +
            'AND VoucherDate <= ''' + FormatDateTime('mm/dd/yyyy', _VouBillForm_ToDate) + ''' ' +
            'Order By VoucherDate DESC'

  else if cxSearchGB.ItemIndex = 1 then
    QueryString := 'SELECT Vouchers_id, VoucherNo, YearRef, VoucherDate, Mastertourcode, Description, TourRef, TourLeader, A.Organisation ' +
            'FROM Vouchers v LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
            'WHERE VoucherDate = ''' + FormatDateTime('mm/dd/yyyy', StrToDate(cxSearchEdit.Text)) + ''' ' +
            'AND VoucherDate >= ''' + FormatDateTime('mm/dd/yyyy', _VouBillForm_FromDate) + ''' ' +
            'AND VoucherDate <= ''' + FormatDateTime('mm/dd/yyyy', _VouBillForm_ToDate) + ''' ' +
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
        VoucherCds.Locate ('Vouchers_id', SearchSortForm.SearchCds['Vouchers_id'],[]);
      end
    else if not SearchSortForm.SearchCds.EOF then
      begin

        SearchSortForm.ShowModal;

        if (SearchSortForm.ModalResult = mrOK) then
          begin

            {VoucherCds.Active := False;
            VoucherCds.Filter := 'Vouchers_id = ' + IntToStr(SearchSortForm.SearchCds['Vouchers_id']);
            VoucherCds.Filtered := True;
            VoucherCds.Active := True; }

            VoucherCds.Locate('Vouchers_id',SearchSortForm.SearchCds['Vouchers_id'],[]);
          end;

      end
    else
      Showmessage ('Not found');

    SearchSortForm.Free;
    SearchSortForm := nil;
end;

procedure TVouBillForm.VoucherCdsCalcFields(DataSet: TDataSet);
var
   GPSds: TSQLDataSet;
   x_Billed, x_ExpectedCost: double;
begin

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  // Obtain Paid Amount
  GPSds.Close;
  GPSds.CommandText := 'SELECT (CASE WHEN (V.Currencies_id=' + IntToStr(GetDefaultCurrency) + ') OR (V.Currencies_id IS NULL) '+
               ' THEN COALESCE((SUM(COALESCE(L.Debit,0)-COALESCE(L.Credit,0))), 0) '+
               ' ELSE COALESCE(SUM(COALESCE(L.ForexDebit,0)- COALESCE(L.ForexCredit,0)),0) '+
               ' END) as VouPaid FROM Ledgers L, vouchers V '+
               ' where v.vouchers_id = '+ IntToStr(VoucherCdsvouchers_id.Value) +
               ' and v.voucherno=l.voucherno and v.yearref=l.yearref ' +
               ' group by v.currencies_id ';
  GPSds.Open;

  if GPSds['VouPaid'] = null then
    VoucherCdsPaid.Value := 0
  else
    VoucherCdsPaid.Value := GPSds['VouPaid'];

  x_Billed := 0.0;
  if VoucherCds['AmountBilled'] <> null then
    x_Billed := VoucherCds['AmountBilled'];

  VoucherCds['Balance'] := x_Billed - VoucherCds['Paid'];

  x_ExpectedCost := 0.0;
  if (VoucherCds['AdjExpectedCost'] <> null) and (VoucherCds['AdjExpectedCost'] > 0.0) then
    x_ExpectedCost := VoucherCds['AdjExpectedCost']
  else if (VoucherCds['ExpectedCost'] <> null) and (VoucherCds['ExpectedCost'] > 0.0) then
    x_ExpectedCost := VoucherCds['ExpectedCost'];

  VoucherCds['Difference'] := x_Billed - x_ExpectedCost;

  GPSds.Close;
  GPSds.Free;

end;

procedure TVouBillForm.cxButton1Click(Sender: TObject);
var
  AH_type: string;
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  if VoucherCds.State=dsBrowse then
     VoucherCds.Edit;

  AH_type:='';

  if (VoucherCdsVoucherTypes_id.Value in [3,7]) then
    AH_type := 'A'
  else if (VoucherCdsVoucherTypes_id.Value in [4,8]) then
    AH_type := 'H'
  else
    exit;

  QueryString := 'SELECT Addressbook_id, Organisation, City FROM dbo.fn_Addressbook  (2,''' + AH_type + ''')';

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
        IntToStr(VoucherCds['VoucherTypes_id']) + ',' +
        IntToStr(VoucherCds['Pax']) + ') AS Remark';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      VoucherCds['HotelAgentRemark'] := GpSds['Remark'];

      GpSds.Free;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TVouBillForm.VoucherCdsAfterEdit(DataSet: TDataSet);
begin
   VoucherCds['Modified'] := 1;
end;

procedure TVouBillForm.cxDbMasterTourCodeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if (CxDbMasterTourCodeLCMB.EditValue <> null) and (BackOfficeDataModule.MasterCodeCds.State = dsBrowse) then
      BackOfficeDataModule.MasterCodeCds.Locate('MasterCode',CxDbMasterTourCodeLCMB.EditValue,[]);
  except
  end;

end;

procedure TVouBillForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
 try
    if HotelLcmb.EditValue <> null then
      HotelCds.Locate('AddressBook_id',HotelLcmb.EditValue,[]);
  except
  end;

end;

procedure TVouBillForm.TourCodeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if TourCodeLCMB.EditValue <> null then
      BackOfficeDataModule.TourCode2Cds.Locate('TourCode',TourCodeLCMB.EditValue,[]);
  except
  end;

end;

procedure TVouBillForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if VoucherCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the voucher record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if VoucherBillingCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the bill record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;

end;

procedure TVouBillForm.VoucherBillingCdsAfterInsert(DataSet: TDataSet);
begin
  VoucherBillingCds['Vouchers_id'] := VoucherCds['vouchers_id'];
end;

procedure TVouBillForm.ByDateRange1Click(Sender: TObject);
begin
  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _VouBillForm_FromDate := VarToDateTime(_ret1[1]);
      _VouBillForm_ToDate := VarToDateTime(_ret2[1]);
      _VouBillForm_Type := 2;

      FilterVoucher;

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;


end;

procedure TVouBillForm.ByTour1Click(Sender: TObject);
begin

  // should be set Before Create of Form
  _ItinDepDatesForm_ModeType := 0;
  _ItinDepDatesForm_FwdPeriodType := 2;
  _ItinDepDatesForm_BackPeriodType := 2;

  if ItinDepDatesForm = nil then
    Application.CreateForm(TItinDepDatesForm, ItinDepDatesForm);
  ItinDepDatesForm.ShowModal;

  if ItinDepDatesForm.ModalResult = MrOk then
    begin

      _VouBillForm_MasterCode := _ItinDepDatesForm_MasterCode;;
      _VouBillForm_MasterDepDate := _ItinDepDatesForm_MasterTourDate;
      _VouBillForm_Type := 1;

      FilterVoucher;

    end;

  ItinDepDatesForm.Free;
  ItinDepDatesForm := nil;


end;

procedure TVouBillForm.OrderByVoucherNo1Click(Sender: TObject);
begin

  VoucherCds.Active := False;
  VoucherCds.IndexFieldNames := 'VoucherNo';
  VoucherCds.Active := True;

end;

procedure TVouBillForm.OrderByVoucherDate1Click(Sender: TObject);
begin

  VoucherCds.Active := False;
  VoucherCds.IndexFieldNames := 'VoucherDate';
  VoucherCds.Active := True;


end;

procedure TVouBillForm.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if VoucherCds['MasterTourCode'] = null then
    exit;

  QueryString := 'SELECT m.MasterCode, mdd.TourDate ' +
          'FROM MasterDepartureDates mdd, Masters m ' +
          'WHERE m.Masters_id = mdd.Masters_id ' +
          'AND m.MasterCode = ''' + trim(VoucherCds['MasterTourCode']) + ''' ' +
          'ORDER BY mdd.TourDate DESC';

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
            if VoucherCds.State = dsBrowse then
              VoucherCds.Edit;
            VoucherCds['MasterTourDate'] := SearchSortForm.SearchCds['TourDate'];
          end;

      end;

    SearchSortForm.Free;
    SearchSortForm := nil;


end;

procedure TVouBillForm.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if VoucherCds['Addressbook_id'] = null then
    exit;

  QueryString := 'SELECT DISTINCT S.Cities_id, S.Addressbook_id, C.City ' +
          'FROM CostServices S ' +
          'LEFT JOIN Cities C On C.Cities_id = S.Cities_id ' +
          'WHERE S.Addressbook_id = ' + IntToStr(VoucherCds['Addressbook_id']) + ' ' +
          'ORDER BY C.City';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

    SearchSortForm.SearchSds.Close;
    SearchSortForm.SearchSds.CommandText := QueryString;
    SearchSortForm.SearchSds.Open;

    for i := 0 to 2 do
      begin
        SearchSortForm.SearchGridDBTableView1.CreateColumn;
      end;

    //*=== Set the Grid Fields ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Cities_id';
    SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Addressbook_id';
    SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

    //*=== Set the Grid Columns' width ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
    SearchSortForm.SearchGridDBTableView1.Columns[1].Visible := False;
    SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 200;

    //*=== Set the Grid Column Headers ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Service City';

    SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Cities_id';

    SearchSortForm.SearchCds.Open;

    if not SearchSortForm.SearchCds.EOF then
      begin

        SearchSortForm.ShowModal;

        if (SearchSortForm.ModalResult = mrOK) then
          begin
            if VoucherCds.State = dsBrowse then
              VoucherCds.Edit;
            VoucherCds['Cities_id'] := SearchSortForm.SearchCds['Cities_id'];
          end;

      end;

    SearchSortForm.Free;
    SearchSortForm := nil;


end;

procedure TVouBillForm.cxDBButtonEdit3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if VoucherCds['TourCode'] = null then
    exit;

  QueryString := 'SELECT t.TourCode, dd.TourDate ' +
          'FROM TourDepartureDates dd, TourCodes t ' +
          'WHERE t.TourCodes_id = dd.TourCodes_id ' +
          'AND t.TourCode = ''' + trim(VoucherCds['TourCode']) + ''' ' +
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
            if VoucherCds.State = dsBrowse then
              VoucherCds.Edit;
            VoucherCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];
          end;

      end;

    SearchSortForm.Free;
    SearchSortForm := nil;


end;

procedure TVouBillForm.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TVouBillForm.Differences1Click(Sender: TObject);
var
  x_year: Word;
begin

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

procedure TVouBillForm.ZeroExpectedCost1Click(Sender: TObject);
var
  x_year: Word;
begin

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

procedure TVouBillForm.MissingBills2Click(Sender: TObject);
var
  x_year: Word;
begin

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

procedure TVouBillForm.ManualVouchers2Click(Sender: TObject);
begin

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

procedure TVouBillForm.CostBreakup1Click(Sender: TObject);
begin

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _CostingTraceForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if VoucherCds.State = dsEdit then
    VoucherCds.Post;

  _CostingTraceForm_Vouchers_id := VoucherCds['Vouchers_id'];
  _CostingTraceForm_VoucherTypes_id := VoucherCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  if _CostingTraceForm_Recompute = True then
    VoucherCds.RefreshRecord;

  CostingTraceForm.Free;
  CostingTraceForm := nil;


end;

procedure TVouBillForm.Refresh2Click(Sender: TObject);
begin
  VoucherCds.RefreshRecord;
end;

procedure TVouBillForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if VoucherBillingCds.EOF then
    VoucherBillingCds.Insert;

end;

procedure TVouBillForm.PaidDifferences1Click(Sender: TObject);
var
  x_year: Word;
begin

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

procedure TVouBillForm.UpdateBilledAmount1Click(Sender: TObject);
begin

  VoucherCds.Refresh;

end;


procedure TVouBillForm.DisplayBilledAmount1Click(Sender: TObject);
var
   GPSds: TSQLDataSet;
   x_AmountBilled: double;
begin

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  // Obtain Paid Amount
  GPSds.Close;
  GPSds.CommandText := 'SELECT COALESCE(AmountBilled, 0.0) AS Billed '+
               'FROM Vouchers ' +
               'WHERE Vouchers_id = ' + IntToStr(VoucherCdsvouchers_id.Value);
  GPSds.Open;

  if GPSds['Billed'] = null then
    x_AmountBilled := 0
  else
    x_AmountBilled := GPSds['Billed'];

  GPSds.Close;
  GPSds.Free;

  ShowMessage (FormatFloat('#,##.00', x_AmountBilled));


end;

procedure TVouBillForm.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key = VK_F3 then
    DisplayBilledAmount1Click(nil);


end;

procedure TVouBillForm.cxButton5Click(Sender: TObject);
var
   GPSds: TSQLDataSet;
   x_TLName: string;
begin

  if Trim(cxRefTextEdit.Text) <> '' then
    begin

      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      // Obtain Paid Amount
      GPSds.Close;
      GPSds.CommandText := 'SELECT MAX(Name) As TLName FROM BookingsClients bc, Bookings b '+
                   'WHERE bc.Bookings_id = b.Bookings_id ' +
                   'AND Reference = ''' + Trim(VoucherCdsReference.Value) + '''';
      GPSds.Open;

      if GPSds['TLName'] = null then
        x_TLName := ''
      else
        x_TLName := GPSds['TLName'];

      GPSds.Close;
      GPSds.Free;

      ShowMessage ('Pax - ' + x_TLName);

    end;

end;

procedure TVouBillForm.Groups1Click(Sender: TObject);
begin


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

procedure TVouBillForm.FITs1Click(Sender: TObject);
begin

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

function TVouBillForm.IncludeVouInBalanceSheet: Boolean;
var
  QueryString: string;
  x_include: boolean;
  GpSds: TSQLDataSet;
begin

  x_include := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if VoucherCds['Through_Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT COALESCE(IncludeInBalanceSheet,1) AS IncludeInBalanceSheet ' +
        'FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(VoucherCds['Through_Addressbook_id']);

      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_include := GpSds['IncludeInBalanceSheet'];

    end
  else if VoucherCds['Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT COALESCE(IncludeInBalanceSheet,1) AS IncludeInBalanceSheet ' +
        'FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(VoucherCds['Addressbook_id']);

      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_include := GpSds['IncludeInBalanceSheet'];

    end;

  GpSds.Free;

  Result := x_include;

end;




procedure TVouBillForm.SetIncludeinBalanceSheet1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'EXEC p_zz_IncludeInBS ';

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('"Include in Balance Sheet" set for Vouchers Oct 1 2006 onwards');

end;

procedure TVouBillForm.MissingBillsAmtBilled001Click(Sender: TObject);
var
  x_year: Word;
begin


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

procedure TVouBillForm.Groups2Click(Sender: TObject);
begin

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

procedure TVouBillForm.FITs2Click(Sender: TObject);
begin


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

procedure TVouBillForm.VoucherListing1Click(Sender: TObject);
begin
  if VoucherListForm = nil then
    Application.CreateForm(TVoucherListForm,VoucherListForm);

end;

procedure TVouBillForm.Panel3Click(Sender: TObject);
begin

  VoucherForm_Companies_id := 1;
  VoucherForm_FromDate := _VouBillForm_FromDate;
  VoucherForm_ToDate := _VouBillForm_ToDate;
  VoucherForm_Level := 4;
  VoucherForm_Type := 1;

  if VoucherForm = nil then
    Application.CreateForm(TVoucherForm, VoucherForm);

end;

end.
