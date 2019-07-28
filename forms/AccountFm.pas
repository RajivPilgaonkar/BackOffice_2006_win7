unit AccountFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxNavigator, cxDBNavigator, cxContainer, cxLabel, cxDBLabel, StdCtrls,
  cxButtons, ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit,
  DBCtrls, cxCheckBox, cxRadioGroup, cxMemo, DateUtils, scExcelExport, ShlObj;

type
  TAccountForm = class(TCustom_1ML_1DG_Form)
    MasterCdsaccounts_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstransactiondate: TSQLTimeStampField;
    MasterCdschequeno: TIntegerField;
    MasterCdsdatecleared: TSQLTimeStampField;
    MasterCdsdraftno: TIntegerField;
    MasterCdsoffices_id: TIntegerField;
    MasterCdscashvoucherno: TIntegerField;
    MasterCdscomments: TMemoField;
    MasterCdscashvoucher: TBooleanField;
    MasterCdsyearref: TIntegerField;
    MasterCdscompanies_id: TIntegerField;
    MasterCdsInternetBankingNo: TStringField;
    Label1: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label7: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label2: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    CashEntry: TcxDBCheckBox;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label14: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label13: TLabel;
    DBText4: TDBText;
    DetailCdsledgers_id: TIntegerField;
    DetailCdsaccounts_id: TIntegerField;
    DetailCdsaccountheads_id: TIntegerField;
    DetailCdsdetails: TStringField;
    DetailCdsdebit: TBCDField;
    DetailCdscredit: TBCDField;
    DetailCdsforexdebit: TBCDField;
    DetailCdsforexcredit: TBCDField;
    DetailCdsexchangerate: TFMTBCDField;
    DetailCdsbillno: TStringField;
    DetailCdsamountbilled: TBCDField;
    DetailCdsnotes: TBCDField;
    DetailCdstds: TBCDField;
    DetailCdsdivisions_id: TIntegerField;
    DetailCdsinvoiceno: TIntegerField;
    DetailCdsvoucherno: TIntegerField;
    DetailCdscurrencies_id: TIntegerField;
    DetailCdsyearref: TIntegerField;
    DetailCdsoffices_id: TIntegerField;
    DivSds: TSQLDataSet;
    DivDsp: TDataSetProvider;
    DivCds: TClientDataSet;
    DivDs: TDataSource;
    DivCdsdivisions_id: TIntegerField;
    DivCdsdivision: TStringField;
    DivCdscompanies_id: TIntegerField;
    DivCdsdefaultdivision: TBooleanField;
    PartySds: TSQLDataSet;
    PartyDsp: TDataSetProvider;
    PartyCds: TClientDataSet;
    PartyCdsAddressbook_id: TIntegerField;
    PartyCdsOrganisation: TStringField;
    PartyCdsCity: TStringField;
    PartyCdsCities_id: TIntegerField;
    PartyCdsContact: TStringField;
    PartyDS: TDataSource;
    MasterCdsTotalDebitsTds: TFloatField;
    BalanceSds: TSQLDataSet;
    BalanceDsp: TDataSetProvider;
    BalanceCds: TClientDataSet;
    BalanceCdsBalance: TFMTBCDField;
    BalanceCdsForexBalance: TFMTBCDField;
    BalanceCdsTotalTDS: TFMTBCDField;
    BalanceCdsAccounts_id: TIntegerField;
    BalanceDS: TDataSource;
    Panel5: TPanel;
    PayablesOpt: TcxRadioButton;
    ReceivablesOpt: TcxRadioButton;
    DBText2: TDBText;
    Panel6: TPanel;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    AccountHeadsSds: TSQLDataSet;
    AccountHeadsDsp: TDataSetProvider;
    AccountHeadsCds: TClientDataSet;
    AccountHeadsDS: TDataSource;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyDs: TDataSource;
    AccountHeadsCdsAccountHeads_id: TIntegerField;
    AccountHeadsCdsAccountHeadsNo: TIntegerField;
    AccountHeadsCdsDescription: TStringField;
    AccountHeadsCdsfolio: TStringField;
    cxGrid1DBBandedTableView1ledgers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1accounts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1accountheads_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1details: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1debit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1credit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1forexdebit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1forexcredit: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchangerate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1billno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amountbilled: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1notes: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1divisions_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoiceno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1voucherno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1yearref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1offices_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    cx_IdOpt: TcxRadioButton;
    cx_ChqNoOpt: TcxRadioButton;
    cx_CvOpt: TcxRadioButton;
    cx_JvOpt: TcxRadioButton;
    cx_DraftNoOpt: TcxRadioButton;
    cx_ETrsOpt: TcxRadioButton;
    cxSearchEdit: TcxTextEdit;
    cxYearRefEdit: TcxTextEdit;
    cxLabel1: TcxLabel;
    DetailCdsAccountHead: TStringField;
    DetailCdsFolio: TStringField;
    ReportsPopup: TPopupMenu;
    PaymentAdvice1: TMenuItem;
    CreditAdvice1: TMenuItem;
    N1: TMenuItem;
    CashBook1: TMenuItem;
    BankBook1: TMenuItem;
    BankBookForex1: TMenuItem;
    JournalBook1: TMenuItem;
    N7: TMenuItem;
    Creditors1: TMenuItem;
    All1: TMenuItem;
    ByParty1: TMenuItem;
    Summary1: TMenuItem;
    SundryCreditors1: TMenuItem;
    All2: TMenuItem;
    ByParty2: TMenuItem;
    Summary2: TMenuItem;
    GenerateSundryCreditors1: TMenuItem;
    N2: TMenuItem;
    ransactions1: TMenuItem;
    All3: TMenuItem;
    SingleAccount1: TMenuItem;
    CashVoucher1: TMenuItem;
    N3: TMenuItem;
    rialBalance1: TMenuItem;
    All4: TMenuItem;
    SelectedAccount1: TMenuItem;
    BalanceSheet1: TMenuItem;
    BalanceSheetProvisional1: TMenuItem;
    ProfitLoss1: TMenuItem;
    ProfitLossProvisional1: TMenuItem;
    ProfitLossProvisional21: TMenuItem;
    N4: TMenuItem;
    Payments1: TMenuItem;
    All5: TMenuItem;
    ByParty3: TMenuItem;
    N5: TMenuItem;
    FORM10CCAE1: TMenuItem;
    BalanceCheck1: TMenuItem;
    N6: TMenuItem;
    ForexReport1: TMenuItem;
    N8: TMenuItem;
    Utilities1: TMenuItem;
    FilterbyDateRange1: TMenuItem;
    RenumberfromthisVoucher1: TMenuItem;
    DBText1: TDBText;
    N9: TMenuItem;
    ransporterServiceTaxCollected1: TMenuItem;
    ProfitLossOffice1: TMenuItem;
    OpenDialog: TOpenDialog;
    scExcelExport: TscExcelExport;
    DetailCdsCenvat: TFMTBCDField;
    cxGrid1DBBandedTableView1Cenvat: TcxGridDBBandedColumn;
    DetailCdsCessCenvat: TFMTBCDField;
    cxGrid1DBBandedTableView1CessCenvat: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    ShowHideETransColumn1: TMenuItem;
    DetailCdsInternetPaymentNo: TStringField;
    cxGrid1DBBandedTableView1InternetPaymentNo: TcxGridDBBandedColumn;
    N10: TMenuItem;
    MonthSds: TSQLDataSet;
    MonthDsp: TDataSetProvider;
    MonthCds: TClientDataSet;
    MonthDs: TDataSource;
    MonthCdsMonths_id: TIntegerField;
    MonthCdsMonthName: TStringField;
    MonthCdsMonthShortName: TStringField;
    MonthCdsMonthIndexName: TStringField;
    DetailCdsForMonths_id: TIntegerField;
    DetailCdsForYear: TIntegerField;
    cxGrid1DBBandedTableView1ForMonths_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ForYear: TcxGridDBBandedColumn;
    CenvatReportNew1: TMenuItem;
    ReportPosssibleCenvatEntryErrors1: TMenuItem;
    AutoEnterServiceTaxLines1: TMenuItem;
    N12: TMenuItem;
    ServiceTaxAmtTrsfEntry1: TMenuItem;
    Cenvat1: TMenuItem;
    MonthlyReco1: TMenuItem;
    UntaggedIDs1: TMenuItem;
    SetTDSAmounts1: TMenuItem;
    N14: TMenuItem;
    DetailCdsC_Gst: TFMTBCDField;
    DetailCdsS_Gst: TFMTBCDField;
    DetailCdsI_Gst: TFMTBCDField;
    cxGrid1DBBandedTableView1C_Gst: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1S_Gst: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1I_Gst: TcxGridDBBandedColumn;
    ShowHideGSTColumns1: TMenuItem;
    N15: TMenuItem;
    ServiceTax1: TMenuItem;
    InvoiceTypesSds: TSQLDataSet;
    InvoiceTypesDsp: TDataSetProvider;
    InvoiceTypesCds: TClientDataSet;
    InvoiceTypesDs: TDataSource;
    InvoiceTypesCdsinvoicetypes_id: TIntegerField;
    InvoiceTypesCdstype: TStringField;
    DetailCdsinvoiceTypes_id: TIntegerField;
    cxGrid1DBBandedTableView1invoiceTypes_id: TcxGridDBBandedColumn;
    GSTR21: TMenuItem;
    DetailCdsBillDate: TSQLTimeStampField;
    cxGrid1DBBandedTableView1BillDate: TcxGridDBBandedColumn;
    N11: TMenuItem;
    FIRCPayments1: TMenuItem;
    MasterCdsFIRC_no: TStringField;
    MasterCdsFIRC_date: TSQLTimeStampField;
    Label12: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label15: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    DetailCdsExchRateRecd: TFMTBCDField;
    cxGrid1DBBandedTableView1ExchRateRecd: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DetailCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure PayablesOptClick(Sender: TObject);
    procedure ReceivablesOptClick(Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxYearRefEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
      var Key: Char);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure MasterCdsBeforeScroll(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
    procedure DetailCdsvouchernoChange(Sender: TField);
    procedure DetailCdsyearrefChange(Sender: TField);
    procedure DetailCdsinvoicenoChange(Sender: TField);
    procedure DetailCdsCalcFields(DataSet: TDataSet);
    procedure PaymentAdvice1Click(Sender: TObject);
    procedure CreditAdvice1Click(Sender: TObject);
    procedure CashBook1Click(Sender: TObject);
    procedure BankBook1Click(Sender: TObject);
    procedure BankBookForex1Click(Sender: TObject);
    procedure JournalBook1Click(Sender: TObject);
    procedure All1Click(Sender: TObject);
    procedure ByParty1Click(Sender: TObject);
    procedure Summary1Click(Sender: TObject);
    procedure All2Click(Sender: TObject);
    procedure ByParty2Click(Sender: TObject);
    procedure Summary2Click(Sender: TObject);
    procedure GenerateSundryCreditors1Click(Sender: TObject);
    procedure All3Click(Sender: TObject);
    procedure SingleAccount1Click(Sender: TObject);
    procedure CashVoucher1Click(Sender: TObject);
    procedure All4Click(Sender: TObject);
    procedure SelectedAccount1Click(Sender: TObject);
    procedure BalanceSheet1Click(Sender: TObject);
    procedure BalanceSheetProvisional1Click(Sender: TObject);
    procedure ProfitLoss1Click(Sender: TObject);
    procedure ProfitLossProvisional1Click(Sender: TObject);
    procedure ProfitLossProvisional21Click(Sender: TObject);
    procedure All5Click(Sender: TObject);
    procedure ByParty3Click(Sender: TObject);
    procedure FORM10CCAE1Click(Sender: TObject);
    procedure BalanceCheck1Click(Sender: TObject);
    procedure ForexReport1Click(Sender: TObject);
    procedure FilterbyDateRange1Click(Sender: TObject);
    procedure RenumberfromthisVoucher1Click(Sender: TObject);
    procedure DetailCdsexchangerateChange(Sender: TField);
    procedure DetailCdsforexdebitChange(Sender: TField);
    procedure DetailCdsforexcreditChange(Sender: TField);
    procedure ransporterServiceTaxCollected1Click(Sender: TObject);
    procedure ProfitLossOffice1Click(Sender: TObject);
    procedure ShowHideETransColumn1Click(Sender: TObject);
    procedure CenvatReportNew1Click(Sender: TObject);
    procedure ReportPosssibleCenvatEntryErrors1Click(Sender: TObject);
    procedure AutoEnterServiceTaxLines1Click(Sender: TObject);
    procedure ServiceTaxAmtTrsfEntry1Click(Sender: TObject);
    procedure MonthlyReco1Click(Sender: TObject);
    procedure UntaggedIDs1Click(Sender: TObject);
    procedure SetTDSAmounts1Click(Sender: TObject);
    procedure ShowHideGSTColumns1Click(Sender: TObject);
    procedure GSTR21Click(Sender: TObject);
    procedure FIRCPayments1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function GetNextCashVoucherNo (x_YearRef,x_companies_id, x_offices_id: integer; x_option: integer): integer;
    function TotalTds: double;
    procedure DisplayGridColumns(x_Show: Boolean);
    procedure AccountSearch;
    procedure GetAccountHeads;
    procedure ComputeTds;
    function GetOfficeName(x_Offices_id: integer): string;
    function DebitCreditMatch(x_Accounts_id: integer): Boolean;
    procedure FillInvoiceDescription;
    procedure FillVoucherDescription;
    procedure ComputeRupeeAmount;
    function GetDesktopPath(Sender: TObject): string;
  public
    { Public declarations }
  end;

var
  AccountForm: TAccountForm;
  AccountForm_Level: integer;
  AccountForm_Companies_id: integer;
  AccountForm_Offices_id: integer;
  AccountForm_FromDate: TDatetime;
  AccountForm_ToDate: TDatetime;

implementation

uses BackOfficeDM, GeneralUt, SearchSortFm, RptAccountPayAdviceFm,
  RptAccountsCreditAdviceFm, ReportParameterFm, RptCashBookFm,
  RptJournalFm, RptAccountsTrialBalAllFm, RptAccountAllCreditorsFm,
  RptAccountsTrsAllFm, TrialBalanceFm, RptAccountsCashVoucherFm,
  RptAccountsBalanceSheetFm, RptAccountsProfitLossFm,
  RptAccountsPaymentMadeFm, RptAccounts10CCAEAnnexFm,
  RptAccountsBalanceCheckFm, RptAccountsForexFm,
  RptAccountsServTaxTranspFm, Gstr2Fm,
  Accounts_FIRCPayments_ExcelReportsUt;

const xlShiftDown = $FFFFFEEE7;

{$R *.dfm}

procedure TAccountForm.FormCreate(Sender: TObject);
begin

  Caption := GetOfficeName(AccountForm_Offices_id) + ' Office' ;

  Width := 1350;
  Height := 750;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Accounts';
  cxTabSheet2.Caption := 'Ledgers';

  ActivateInCustom;

  MasterSds.Params[0].Value := AccountForm_Companies_id;
  MasterSds.Params[1].Value := AccountForm_Offices_id;
  MasterSds.Params[2].Value := AccountForm_FromDate;
  MasterSds.Params[3].Value := AccountForm_ToDate;

  Panel1.Visible := false;
  DisplayGridColumns(true);

  inherited;

  PartyCds.Open;
  DivCds.Open;
  AccountHeadsCds.Open;
  CurrencyCds.Open;
  BalanceCds.Open;
  MonthCds.Open;
  InvoiceTypesCds.Open;

  cxYearRefEdit.Text := IntToStr(YearOf(AccountForm_ToDate));

end;

procedure TAccountForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Accounts';
  Custom_MasterKeyField := 'Accounts_id';

  Custom_DetailCdsName := 'Ledgers';
  Custom_DetailKeyField := 'Ledgers_id';

  Custom_AdmLevel := AccountForm_Level;

  Custom_FormWidth := Width;
  Custom_FormHeight := Height - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TAccountForm.FormDestroy(Sender: TObject);
begin
  AccountForm := nil;
  inherited;
end;

procedure TAccountForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_option : integer;
begin

  if MasterCds['TransactionDate'] = null then
    raise Exception.Create ('Please enter the Transaction Date');

  MasterCds['YearRef'] := CalcCentury(MasterCds['TransactionDate'],4);

  if MasterCds['Companies_id'] = null then
    raise Exception.Create ('Please enter company');

  if MasterCds['Offices_id'] = null then
    raise Exception.Create ('Please enter office');

  if MasterCds['CashVoucher'] = null then
    raise Exception.Create ('Please enter if cash voucher');

  if (MasterCds.State = dsInsert) then
    begin

      if MasterCds['CashVoucher'] = true then
        x_option := 1
      else
        x_option := 2;

      MasterCds['CashVoucherNo'] :=
        GetNextCashVoucherNo (MasterCds['YearRef'],MasterCds['companies_id'], MasterCds['offices_id'], x_option);
    end;

  if ((MasterCds['CashVoucherNo']=null) or (MasterCds['CashVoucherNo']<1)) then
    raise Exception.create ('Cannot save cash voucher unless cash voucher number > 0');

//  if IsMasterRecordDuplicate then
//    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['Accounts_id'] = null then
    raise Exception.Create('Accounts_id is not assigned');

end;

procedure TAccountForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '' ;
  GpSds.CommandText := 'SELECT COUNT(*) AS x_cnt FROM Ledgers ' +
    ' WHERE Accounts_id = ' + IntToStr(MasterCds['Accounts_id']);
  GpSds.Open;

  if GpSds['x_cnt'] > 0 then
    begin
      if MessageDlg('This account has ledgers.Delete...? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

          GpSds.Close;
          GpSds.CommandText := 'DELETE FROM Ledgers WHERE Accounts_id = ' +
            IntToStr(MasterCds['Accounts_id']);
          GpSds.ExecSQL;

          DetailCds.Active := false;
          DetailCds.Active := true;

        end;

    end;

  GpSds.Free;

end;

procedure TAccountForm.DetailCdsBeforePost(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
begin

  if DetailCds['Details'] = null then
    raise Exception.Create('Please enter the details');

  DetailCds['Details'] := UpperCase(DetailCds['Details']);

  if DetailCds['Currencies_id'] = null then
    raise Exception.Create('Please enter the currency');

  if DetailCds['Accounts_id'] = null then
    raise Exception.Create('Please enter the header first');

  if DetailCds['AccountHeads_id'] = null then
    raise Exception.Create('Please enter the account head');

  if DetailCds['Cenvat'] = null then
    DetailCds['Cenvat'] := 0;

  if DetailCds['CessCenvat'] = null then
    DetailCds['CessCenvat'] := 0;

  if DetailCds['Debit'] = null then
    DetailCds['Debit'] := 0;

  if DetailCds['Credit'] = null then
    DetailCds['Credit'] := 0;

  if DetailCds['ForexDebit'] = null then
    DetailCds['ForexDebit'] := 0;

  if DetailCds['ForexCredit'] = null then
    DetailCds['ForexCredit'] := 0;

  if DetailCds['TDS'] = null then
    DetailCds['TDS'] := 0;

  if (DetailCds['ForMonths_id']<>null) and (DetailCds['ForYear']<>null) then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'SELECT MAX(YEAR(transactionDate)*12 + MONTH(transactionDate)) AS YearRef ' +
        'FROM Accounts ';
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['YearRef'] <> null) and (DetailCds['ForYear']*12 + DetailCds['ForMonths_id'] > GpSds['YearRef']) then
        begin
          GpSds.Free;
          raise exception.create('Cannot enter a future date in "For Month"/"For Year" ');
        end
      else if (DetailCds['ForYear']*12 + DetailCds['ForMonths_id'] <= (2017*12+1)) then
        begin
          GpSds.Free;
          raise exception.create('Cannot enter a date before Jan 2017 ');
        end
      else if (DetailCds['InternetPaymentNo']=null) or (trim(DetailCds['InternetPaymentNo'])='') then
        begin
          GpSds.Free;
          raise exception.create('Please enter the Internet Payment No');
        end
      else
        GpSds.Free;

    end;

  //if ((DetailCds['InternetPaymentNo']<>null) and (trim(DetailCds['InternetPaymentNo'])>'')) and ((DetailCds['ForMonths_id']=null) or (DetailCds['ForYear']=null)) then
  //  raise exception.create('Please enter "For Month"/"For Year');

  //if (IsDetailRecordDuplicate) then
  //  raise exception.create ('Duplicate Record found');

  inherited;

  if (DetailCds['Ledgers_id'] = null) then
    raise Exception.Create('Ledgers_id is not assigned');

end;

procedure TAccountForm.DetailCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BalanceCds.Close;
  BalanceCds.Open;
end;

procedure TAccountForm.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BalanceCds.Close;
  BalanceCds.Open;
end;

procedure TAccountForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Companies_id'] := AccountForm_Companies_id;
  MasterCds['Offices_id'] := AccountForm_Offices_id;
  MasterCds['TransactionDate'] := Date();
  MasterCds['CashVoucher'] := true;
  MasterCds['YearRef'] := CalcCentury(Date(),4);

end;

procedure TAccountForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  MasterCds['TotalDebitsTds'] := TotalTds;
end;

function TAccountForm.GetNextCashVoucherNo (x_YearRef,x_companies_id, x_offices_id: integer; x_option: integer): integer;
var
  x_NextCashVoucherNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextCashVoucherNo(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ',' + IntToStr(x_Offices_id) + ',' +
    IntToStr(x_option) + ') as NextCashVoucherNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextCashVoucherNo := GpSds['NextCashVoucherNo'];

  GpSds.Free;

  Result := x_NextCashVoucherNo;

end;

function TAccountForm.TotalTds: double;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_Tds: double;
begin

  if ((MasterCds['Addressbook_id'] = null) or
      (MasterCds['TransactionDate'] = null) or
      (MasterCds['Companies_id'] = null)) then
    begin
      x_Tds := 0.0;
    end
  else
    begin

      QueryString := 'SELECT dbo.fn_AccountsTds (' +
        IntToStr(MasterCds['Addressbook_id']) + ',''' +
        FormatDateTime ('mm/dd/yyyy', MasterCds['TransactionDate']) + ''', ' +
        IntToStr(MasterCds['Companies_id']) + ') as Tds ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Tds := GpSds['Tds'];

      GpSds.Free;

    end;

  Result := x_Tds;

end;

procedure TAccountForm.DisplayGridColumns(x_Show: Boolean);
begin

  cxGrid1DBBandedTableView1VoucherNo.Visible := x_Show;
  cxGrid1DBBandedTableView1BillNo.Visible := x_Show;
  cxGrid1DBBandedTableView1BillDate.Visible := x_Show;
  cxGrid1DBBandedTableView1Divisions_id.Visible := (not x_Show);
  cxGrid1DBBandedTableView1InvoiceNo.Visible := (not x_Show);
  cxGrid1DBBandedTableView1invoiceTypes_id.Visible := (not x_Show);
  cxGrid1DBBandedTableView1Notes.Visible := x_Show;

end;


procedure TAccountForm.PayablesOptClick(Sender: TObject);
begin
  inherited;
  DisplayGridColumns(true);
end;

procedure TAccountForm.ReceivablesOptClick(Sender: TObject);
begin
  inherited;
  DisplayGridColumns(false);
end;

procedure TAccountForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    AccountSearch;

end;

procedure TAccountForm.cxYearRefEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    AccountSearch;

end;

procedure TAccountForm.AccountSearch;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  if trim(cxYearRefEdit.Text) = '' then
    cxYearRefEdit.Text := CalcCentury(Date(),4);

  try
    MasterCds.DisableControls;

    // Search By ID
    if cx_IdOpt.Checked = true then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;Accounts_id',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
       end

    // Search By Cheque
    else if cx_ChqNoOpt.Checked = true then
      begin


        QueryString := 'SELECT COUNT(*) AS x_count FROM accounts ' +
                        'WHERE TransactionDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_FromDate)) + ' AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_ToDate)) + ' ' +
                        'AND  ChequeNo LIKE ''%' + cxSearchEdit.Text + '%'' ' +
                        'AND Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
                        'AND Offices_id = ' + IntToStr(MasterCds['Offices_id']) + ' ';

        GpSds := TSQLDataSet.Create(nil);
        GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
        GpSds.CommandType := ctQuery;
        GpSds.CommandText := QueryString;
        GpSds.Open;

        if (GpSds['x_count'] > 1) then
          begin
            QueryString := 'SELECT Accounts_id, a.transactiondate, a1.organisation, a.chequeno FROM accounts a ' +
                           'LEFT JOIN addressbook a1 ON a.addressbook_id = a1.addressbook_id ' +
                           'WHERE TransactionDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_FromDate)) + ' AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_ToDate)) + ' ' +
                           'AND  ChequeNo LIKE ''%' + cxSearchEdit.Text + '%'' ' +
                           'AND Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
                           'AND Offices_id = ' + IntToStr(MasterCds['Offices_id']) + ' ';

            GpSds.Close;
            GpSds.CommandText := QueryString;
            GpSds.Open;

            if SearchSortForm = nil then
              Application.CreateForm(TSearchSortForm, SearchSortForm);

            SearchSortForm.SearchSds.Close;
            SearchSortForm.SearchSds.CommandText := QueryString;
            SearchSortForm.SearchSds.Open;

            SearchSortForm.SearchCds.Open;

            for i := 0 to 3 do
              begin
                SearchSortForm.SearchGridDBTableView1.CreateColumn;
              end;

            //*=== Set the Grid Fields ===*//
            SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Accounts_id';
            SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'transactiondate';
            SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'organisation';
            SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'chequeno';

            //*=== Set the Grid Columns' width ===*//
            SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
            SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
            SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 200;
            SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;

            //*=== Set the Grid Column Headers ===*//
            SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Trs. Date';
            SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Organisation';
            SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Cheque No.';

            SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Accounts_id';

            SearchSortForm.ShowModal;

            if (SearchSortForm.ModalResult = mrOK) then
              begin
                MasterCds.Locate('Accounts_id',
                          VarArrayOf([SearchSortForm.SearchCds['Accounts_id']]),[]);
              end;

            SearchSortForm.Free;
            SearchSortForm := nil;

        end

        else
          begin
            if not MasterCds.Locate('Companies_id;Offices_id;ChequeNo',
              VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
                StrToInt(cxSearchEdit.Text)]),[]) then
              MessageDlg ('Not Found', mtError, [mbOK],0);
          end;

      end

    // Search By Cash Voucher
    else if cx_CvOpt.Checked = true then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher;YearRef',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text),True,StrToInt(cxYearRefEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Journal Voucher
    else if cx_JvOpt.Checked = true then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher;YearRef',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text),False,StrToInt(cxYearRefEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Draft
    else if cx_DraftNoOpt.Checked = true then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;DraftNo',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Internet Banking No
    else if cx_ETrsOpt.Checked = true then
      begin

        QueryString := 'SELECT COUNT(*) AS x_count FROM accounts ' +
                        'WHERE TransactionDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_FromDate)) + ' AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_ToDate)) + ' ' +
                        'AND  InternetBankingNo LIKE ''%' + cxSearchEdit.Text + '%'' ' +
                        'AND Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
                        'AND Offices_id = ' + IntToStr(MasterCds['Offices_id']) + ' ';

        GpSds := TSQLDataSet.Create(nil);
        GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
        GpSds.CommandType := ctQuery;
        GpSds.CommandText := QueryString;
        GpSds.Open;

        if (GpSds['x_count'] > 1) then
          begin
            QueryString := 'SELECT Accounts_id, a.transactiondate, a1.organisation, a.InternetBankingNo FROM accounts a ' +
                           'LEFT JOIN addressbook a1 ON a.addressbook_id = a1.addressbook_id ' +
                           'WHERE TransactionDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_FromDate)) + ' AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccountForm_ToDate)) + ' ' +
                           'AND  InternetBankingNo LIKE ''%' + cxSearchEdit.Text + '%'' ' +
                           'AND Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
                           'AND Offices_id = ' + IntToStr(MasterCds['Offices_id']) + ' ';

            GpSds.Close;
            GpSds.CommandText := QueryString;
            GpSds.Open;

            if SearchSortForm = nil then
              Application.CreateForm(TSearchSortForm, SearchSortForm);

            SearchSortForm.SearchSds.Close;
            SearchSortForm.SearchSds.CommandText := QueryString;
            SearchSortForm.SearchSds.Open;

            SearchSortForm.SearchCds.Open;

            for i := 0 to 3 do
              begin
                SearchSortForm.SearchGridDBTableView1.CreateColumn;
              end;

            //*=== Set the Grid Fields ===*//
            SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Accounts_id';
            SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'transactiondate';
            SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'organisation';
            SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'InternetBankingNo';

            //*=== Set the Grid Columns' width ===*//
            SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
            SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
            SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 200;
            SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;

            //*=== Set the Grid Column Headers ===*//
            SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Trs. Date';
            SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Organisation';
            SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'E-Trs No.';

            SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Accounts_id';

            SearchSortForm.ShowModal;

            if (SearchSortForm.ModalResult = mrOK) then
              begin
                MasterCds.Locate('Accounts_id',
                          VarArrayOf([SearchSortForm.SearchCds['Accounts_id']]),[]);
              end;

            SearchSortForm.Free;
            SearchSortForm := nil;

        end

        else
          begin
            if not MasterCds.Locate('Companies_id;Offices_id;InternetBankingNo',
              VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
                cxSearchEdit.Text]),[]) then
            MessageDlg ('Not Found', mtError, [mbOK],0);
          end;

      end;

    MasterCds.EnableControls;

  except
    MasterCds.EnableControls;
  end;

end;


procedure TAccountForm.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key=#13) and (cxGrid1DBBandedTableView1AccountHeads_id.Focused = True) then
    GetAccountHeads;
end;

procedure TAccountForm.GetAccountHeads;
var
 i : integer;
begin

  if DetailCds.State = dsBrowse then
    DetailCds.Edit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, ' +
        'AH.Folios_id, F.Folio, AH.Accountheads_id ' +
        'FROM AccountHeads AS AH LEFT JOIN Folios  AS F ' +
        'ON AH.Folios_id = F.Folios_id ' +
        'WHERE AH.Accountheads_id = ' + IntToStr(DetailCds['AccountHeads_id']) + ' ' +
        'AND AH.Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
        'ORDER BY AH.Description ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 4 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'AccountHeadsNo';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Folios_id';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Folio';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'AccountHeads_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Account Head';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Description';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Folio';

  SearchSortForm.ShowModal;

  if SearchSortForm.ModalResult = mrOk then
    begin
      if DetailCds.State = dsBrowse then
        DetailCds.Edit;
      if SearchSortForm.SearchCds['AccountHeads_id'] <> null then
        DetailCds['AccountHeads_id'] := SearchSortForm.SearchCds['AccountHeads_id'];
    end;

  SearchSortForm.Release;
  SearchSortForm := nil;

end;


procedure TAccountForm.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_count: integer;
begin
  inherited;

  QueryString := 'SELECT x_count = count(*) from Ledgers where Accounts_id = ' + IntToStr(MasterCds['Accounts_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  if (x_count = 0) and (DetailCds.State = dsBrowse) then
    begin
      DetailCds.Insert;
      exit;
    end;

  if (cxGrid1DBBandedTableView1Tds.Focused = True) then
    ComputeTds;

end;

procedure TAccountForm.ComputeTds;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_tds: double;
  x_ClickedOK: Boolean;
  x_NewString: string;
begin

  if DetailCds.State = dsBrowse then
    DetailCds.Edit;

  if DetailCds['Debit'] <> null then
    begin

      QueryString := 'SELECT numericvalue FROM defaults WHERE defaults_id = 6';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_NewString := FloatToStr(GpSds['numericvalue']);

      x_ClickedOK:= InputQuery('Enter TDS %', 'Enter TDS %', x_NewString);

      if x_ClickedOK then
        begin

          x_tds := (StrToFloat(x_NewString)/100.0) *  DetailCds['Debit'];

          DetailCds['TDS'] := round(x_tds+0.01);

        end;

      GpSds.Free;

    end;

end;


function TAccountForm.GetOfficeName(x_Offices_id: integer): string;
var
  x_Office: string;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT offices from Offices where offices_id = ' +
    IntToStr(x_Offices_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['Offices'] <> null then
    x_Office := GpSds['Offices']
  else
    x_Office := '';

  GpSds.Free;

  Result := x_Office;

end;

function TAccountForm.DebitCreditMatch(x_Accounts_id: integer): Boolean;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_Match: boolean;
begin

  QueryString := 'SELECT dbo.fn_AccountsDebitCreditMatch (' + IntToStr(x_Accounts_id) + ') as x_Match ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Match := GpSds['x_Match'];

  GpSds.Free;

  Result := x_Match;

end;



procedure TAccountForm.MasterCdsBeforeScroll(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['Accounts_id'] = null then
    exit;

  if not DebitCreditMatch(MasterCds['Accounts_id']) then
    ShowMessage ('Debits & Credits do not match');

end;

procedure TAccountForm.DetailCdsAfterInsert(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT number FROM Defaults WHERE Item = ''Currency'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['number']<>null) then
    DetailCds['Currencies_id'] := GpSds['number'];

  QueryString := 'SELECT number FROM Defaults WHERE Item = ''Division'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['number']<>null) then
    DetailCds['Divisions_id'] := GpSds['number'];

  DetailCds['TDS'] := 0.0;
  DetailCds['Cenvat'] := 0.0;
  DetailCds['CessCenvat'] := 0.0;
  DetailCds['ExchangeRate'] := 1.0;
  DetailCds['ForexDebit'] := 0.0;
  DetailCds['ForexCredit'] := 0.0;
  if MasterCds['YearRef'] <> null then
    DetailCds['YearRef'] := MasterCds['YearRef'];

  GpSds.Free;
end;


procedure TAccountForm.FillVoucherDescription;
var
  GpSds: TSQLDataSet;
  QueryString, x_d: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (DetailCds['VoucherNo'] <> null) and (DetailCds['YearRef'] <> null) and
     (DetailCds['VoucherNo'] > 0) then
    begin

      QueryString := 'SELECT V.Description,V.TourLeader,V.TourRef ' +
        'FROM Vouchers AS V WHERE V.VoucherNo = ' +
        IntToStr(DetailCds['VoucherNo']) + ' AND ' +
        'V.YearRef = ' + IntToStr(DetailCds['YearRef']) + ' ' +
        'AND v.IncludeInBalanceSheet = 1';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_d := '';

      if not GpSds.EOF then
        begin

          if GpSds['Description'] <> null then
            x_d := x_d + Trim(GpSds['Description']) + ' ';

          if GpSds['TourLeader'] <> null then
            x_d := x_d + Trim(GpSds['TourLeader']) + ' ';

          if GpSds['TourRef'] <> null then
            x_d := x_d + Trim(GpSds['TourRef']) + ' ';

          DetailCds['Details'] := Uppercase(x_d);

        end;

    end;

  GpSds.Free;

end;

procedure TAccountForm.FillInvoiceDescription;
var
  GpSds: TSQLDataSet;
  x_d: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (DetailCds['InvoiceNo'] <> null) and (DetailCds['YearRef'] <> null) and (DetailCds['InvoiceTypes_id'] <> null) and
     (DetailCds['InvoiceNo'] > 0) then
    begin

      GpSds.CommandText := 'SELECT I.MasterCode, I.MasterDepartureDate, Currencies_id ' +
        'FROM Invoices I ' +
        'WHERE I.InvoiceNo = ' + IntToStr(DetailCds['InvoiceNo']) +
        ' AND I.YearRef = ' + IntToStr(DetailCds['YearRef']) +
        ' AND divisions_id = ' + IntToStr(DetailCds['divisions_id']) +
        ' AND InvoiceTypes_id = ' + IntToStr(DetailCds['InvoiceTypes_id']);
      GpSds.Open;

      GpSds.First;

      x_d := '';

      if not GpSds.EOF then
        begin

          if GpSds['MasterCode'] <> null then
            x_d := x_d + Trim(GpSds['MasterCode']) + ' / ';

          if GpSds['MasterDepartureDate'] <> null then
            x_d := x_d + FormatDateTime('dd/mm/yyyy',GpSds['MasterDepartureDate']) + ' ';

          DetailCds['Details'] := Uppercase(x_d);

          if GpSds['Currencies_id'] <> null then
            DetailCds['Currencies_id'] := GpSds['Currencies_id'];

        end;

    end;

  GpSds.Free;

end;


procedure TAccountForm.DetailCdsvouchernoChange(Sender: TField);
begin
  inherited;
  FillVoucherDescription;
end;

procedure TAccountForm.DetailCdsyearrefChange(Sender: TField);
begin
  inherited;
  FillVoucherDescription;
  FillInvoiceDescription;
end;

procedure TAccountForm.DetailCdsinvoicenoChange(Sender: TField);
begin
  inherited;
  FillInvoiceDescription;
end;

procedure TAccountForm.DetailCdsCalcFields(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if DetailCds['Accountheads_id'] = null then
    begin
      DetailCds['Folio'] := '';
      DetailCds['AccountHead'] := '';
    end
  else
    begin

      GpSds.Close;
      GpSds.CommandText := 'SELECT Description, Accountheads_id, F.Folios_id, Folio, '+
       ' AccountHeadsNo ' +
       ' FROM AccountHeads AH LEFT JOIN Folios F ' +
       ' ON AH.Folios_id = F.Folios_id ' +
       ' WHERE AH.AccountHeads_id = ' + IntToStr(DetailCds['AccountHeads_id']) +
       ' AND AH.Companies_id = ' + IntToStr(AccountForm_Companies_id) + ' ' +
       ' ORDER BY Accountheads_id, Description ';
      GpSds.Open;

      if (not GpSds.EOF) then
        begin
          if GpSds['Folio'] <> null then
            DetailCds['Folio'] := GpSds['Folio']
          else
            DetailCds['Folio'] := '';

          if GpSds['Description'] <> null then
            DetailCds['AccountHead'] := GpSds['Description']
          else
            DetailCds['AccountHead'] := '';
        end;
    end;

  GpSds.Free;


end;

procedure TAccountForm.PaymentAdvice1Click(Sender: TObject);
begin
  inherited;

  if MasterCds['Accounts_id'] = Null then
    exit;

  if RptAccountPayAdviceForm = nil then
    Application.CreateForm(TRptAccountPayAdviceForm, RptAccountPayAdviceForm);

  RptAccountPayAdviceForm.PayAdviceSds.Close;
  RptAccountPayAdviceForm.PayAdviceSds.CommandText := '';
  RptAccountPayAdviceForm.PayAdviceSds.CommandText := 'Select * from dbo.fn_Rpt_Accounts_PayAdvice(' + IntToStr(MasterCds['Accounts_id']) + ')';

  RptAccountPayAdviceForm.PayAdviceSds.Open;
  RptAccountPayAdviceForm.PayAdviceCds.Open;
  RptAccountPayAdviceForm.PayAdviceCds.Refresh;

  RptAccountPayAdviceForm.QuickRep1.PreviewModal;

  RptAccountPayAdviceForm.Release;
  RptAccountPayAdviceForm := nil;

end;

procedure TAccountForm.CreditAdvice1Click(Sender: TObject);
begin
  inherited;

  if MasterCds['Accounts_id'] = Null then
    exit;

  if RptAccountsCreditAdviceForm = nil then
    Application.CreateForm(TRptAccountsCreditAdviceForm, RptAccountsCreditAdviceForm);

  RptAccountsCreditAdviceForm.CreditAdviceSds.Close;
  RptAccountsCreditAdviceForm.CreditAdviceSds.CommandText := '';
  RptAccountsCreditAdviceForm.CreditAdviceSds.CommandText := 'Select * From dbo.fn_Rpt_Accounts_CreditAdvice(' +
         IntToStr(MasterCds['Accounts_id'])  + ') ' +
         'ORDER BY OrderNo, BillNo';

  RptAccountsCreditAdviceForm.CreditAdviceSds.Open;
  RptAccountsCreditAdviceForm.CreditAdviceCds.Close;
  RptAccountsCreditAdviceForm.CreditAdviceCds.Open;
  //RptAccountsCreditAdviceForm.CreditAdviceCds.Refresh;

  RptAccountsCreditAdviceForm.QuickRep1.PreviewModal;

  RptAccountsCreditAdviceForm.Release;
  RptAccountsCreditAdviceForm := nil;

end;

procedure TAccountForm.CashBook1Click(Sender: TObject);
var
  x_accounts_id, i: integer;
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: word;
begin

  _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Active := False;
      SearchSortForm.SearchCds.Active := False;
      SearchSortForm.SearchSds.CommandText := '';
      SearchSortForm.SearchSds.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, AH.AccountHeads_id ' +
                    ' FROM Folios F LEFT JOIN AccountHeads AH ON F.Folios_id = AH.Folios_id ' +
                    ' WHERE F.Folios_id = 250 ' +
                    ' AND AH.Companies_id = ' + VarToStr(_ret1[2]);    //IntToStr(_AccountsForm_Companies_id);

      SearchSortForm.SearchSds.Active := True;
      SearchSortForm.SearchCds.Active := True;

      for i := 0 to 1 do
        SearchSortForm.SearchGridDBTableView1.CreateColumn;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'AccountHeadsNo';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Account Head';
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Description';

      SearchSortForm.ShowModal;

      x_accounts_id := 0;
      if (not SearchSortForm.SearchCds.EOF) and (SearchSortForm.SearchCds['AccountHeads_id'] <> Null) then
        x_accounts_id := SearchSortForm.SearchCds['AccountHeads_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'Exec p_CashBook ' + IntToStr(x_accounts_id) + ',' +
                VarToStr(_ret1[2]) + ',' + VarToStr(_ret1[3]) + ',''' +
                FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret1[1])) + ''',''' +
                FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret2[1])) + ''', 0, 1 ';
      GpSds.ExecSQL;

      GpSds.Free;

      if RptCashBookForm = nil then
        Application.CreateForm(TRptCashBookForm,RptCashBookForm);

      RptCashBookForm.CashLabel.Caption := 'Cash Book';
      RptCashBookForm.AccountLabel.Caption := SearchSortForm.SearchCds['Description'];
      RptCashBookForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text + ', ' +
              ReportParameterForm.cxOfficeLCMB.Text;
      RptCashBookForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',VarToDateTime(_ret1[1])) + ' to ' +
            FormatDateTime('dd/mm/yyyy',VarToDateTime(_ret2[1]));

      RptCashBookForm.CashBookSds.Close;
      RptCashBookForm.CashBookSds.Open;

      RptCashBookForm.CashBookCds.Close;
      RptCashBookForm.CashBookCds.Open;

      RptCashBookForm.QuickRep1.PreviewModal;
      RptCashBookForm.Release;
      RptCashBookForm := nil;

      SearchSortForm.Release;
      SearchSortForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.BankBook1Click(Sender: TObject);
var
  x_accounts_id, i : integer;
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: word;
begin

  _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Active := False;
      SearchSortForm.SearchCds.Active := False;
      SearchSortForm.SearchSds.CommandText := '';
      SearchSortForm.SearchSds.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, AH.AccountHeads_id ' +
                    ' FROM Folios F LEFT JOIN AccountHeads AH ON F.Folios_id = AH.Folios_id ' +
                    ' WHERE F.Folios_id = 200 ' +
                    ' AND AH.Companies_id = ' + VarToStr(_ret1[2]);    //IntToStr(_AccountsForm_Companies_id);

      SearchSortForm.SearchSds.Active := True;
      SearchSortForm.SearchCds.Active := True;

      for i := 0 to 1 do
        SearchSortForm.SearchGridDBTableView1.CreateColumn;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'AccountHeadsNo';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Account Head';
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Description';

      SearchSortForm.ShowModal;

      x_accounts_id := 0;
      if (not SearchSortForm.SearchCds.EOF) and (SearchSortForm.SearchCds['AccountHeads_id'] <> Null) then
        x_accounts_id := SearchSortForm.SearchCds['AccountHeads_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'Exec p_CashBook ' + IntToStr(x_accounts_id) + ',' +
                VarToStr(_ret1[2]) + ',' + VarToStr(_ret1[3]) + ',''' +
                FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret1[1])) + ''',''' +
                FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret2[1])) + ''', 0, 1 ';
      GpSds.ExecSQL;

      GpSds.Free;

      if RptCashBookForm = nil then
        Application.CreateForm(TRptCashBookForm,RptCashBookForm);

      RptCashBookForm.CashLabel.Caption := 'Bank Book';
      RptCashBookForm.AccountLabel.Caption := SearchSortForm.SearchCds['Description'];
      RptCashBookForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text + ', ' +
              ReportParameterForm.cxOfficeLCMB.Text;
      RptCashBookForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',VarToDateTime(_ret1[1])) + ' to ' +
            FormatDateTime('dd/mm/yyyy',VarToDateTime(_ret2[1]));

      RptCashBookForm.CashBookSds.Close;
      RptCashBookForm.CashBookSds.Open;

      RptCashBookForm.CashBookCds.Close;
      RptCashBookForm.CashBookCds.Open;

      RptCashBookForm.QuickRep1.PreviewModal;
      RptCashBookForm.Release;
      RptCashBookForm := nil;

      SearchSortForm.Release;
      SearchSortForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.BankBookForex1Click(Sender: TObject);
var
  x_accounts_id, i : integer;
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: word;
begin


 _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Active := False;
      SearchSortForm.SearchCds.Active := False;
      SearchSortForm.SearchSds.CommandText := '';
      SearchSortForm.SearchSds.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, AH.AccountHeads_id ' +
                    ' FROM Folios F LEFT JOIN AccountHeads AH ON F.Folios_id = AH.Folios_id ' +
                    ' WHERE F.Folios_id = 200 ' +
                    ' AND AH.Companies_id = ' + VarToStr(_ret1[2]);    //IntToStr(_AccountsForm_Companies_id);

      SearchSortForm.SearchSds.Active := True;
      SearchSortForm.SearchCds.Active := True;

      for i := 0 to 1 do
        SearchSortForm.SearchGridDBTableView1.CreateColumn;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'AccountHeadsNo';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Account Head';
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Description';

      SearchSortForm.ShowModal;

      x_accounts_id := 0;
      if (not SearchSortForm.SearchCds.EOF) and (SearchSortForm.SearchCds['AccountHeads_id'] <> Null) then
        x_accounts_id := SearchSortForm.SearchCds['AccountHeads_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'Exec p_CashBook ' + IntToStr(x_accounts_id) + ',' +
                VarToStr(_ret1[2]) + ',' + VarToStr(_ret1[3]) + ',''' +
                FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret1[1])) + ''',''' +
                FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret2[1])) + ''', 1, 1 ';
      GpSds.ExecSQL;

      GpSds.Free;

      if RptCashBookForm = nil then
        Application.CreateForm(TRptCashBookForm,RptCashBookForm);

      RptCashBookForm.CashLabel.Caption := 'Bank Book - Forex';
      RptCashBookForm.AccountLabel.Caption := SearchSortForm.SearchCds['Description'];
      RptCashBookForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text + ', ' +
              ReportParameterForm.cxOfficeLCMB.Text;
      RptCashBookForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',VarToDateTime(_ret1[1])) + ' to ' +
            FormatDateTime('dd/mm/yyyy',VarToDateTime(_ret2[1]));

      RptCashBookForm.CashBookSds.Close;
      RptCashBookForm.CashBookSds.Open;

      RptCashBookForm.CashBookCds.Close;
      RptCashBookForm.CashBookCds.Open;

      RptCashBookForm.QuickRep1.PreviewModal;
      RptCashBookForm.Release;
      RptCashBookForm := nil;

      SearchSortForm.Release;
      SearchSortForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.JournalBook1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: word;
begin
  inherited;

  _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptJournalForm = nil then
        Application.CreateForm(TRptJournalForm, RptJournalForm);

      RptJournalForm.JournalSds.Close;
      RptJournalForm.JournalSds.CommandText :=
        RptJournalForm.JournalSds.CommandText +
        ' AND A.TransactionDate BETWEEN ''' +
        FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''' AND ''' +
        FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' ' +
        'AND A.Companies_id = ' + IntToStr(ReportParameterForm.cxCompanyLCMB.EditValue) + ' ' +
        'AND A.Offices_id = ' + IntToStr(ReportParameterForm.cxOfficeLCMB.EditValue) + ' ' +
        'ORDER BY A.TransactionDate, A.CashVoucherNo, AH.AccountHeadsNo ';

      RptJournalForm.JournalSds.Open;
      RptJournalForm.JournalCds.Close;
      RptJournalForm.JournalCds.Open;

      RptJournalForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptJournalForm.CompanyOfficeLabel.Caption :=
        Trim(ReportParameterForm.cxCompanyLCMB.Text) + ', ' + Trim(ReportParameterForm.cxOfficeLCMB.Text);

      RptJournalForm.QuickRep1.PreviewModal;

      RptJournalForm.Release;
      RptJournalForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.All1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'EXEC p_TmpTrialBalance ' +
                ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
                ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
                VarToStr(_ret1[2]) ;

      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.Free;

      if RptAccountsTrialBalAllForm = nil then
        Application.CreateForm(TRptAccountsTrialBalAllForm, RptAccountsTrialBalAllForm);

      RptAccountsTrialBalAllForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsTrialBalAllForm.TrialBalanceCds.Close;
      RptAccountsTrialBalAllForm.TrialBalanceSds.Close;
      RptAccountsTrialBalAllForm.TrialBalanceSds.CommandText := '';
      RptAccountsTrialBalAllForm.TrialBalanceSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_TrialBalance(' +
                          VarToStr(_ret1[2]) + ')' ;

      RptAccountsTrialBalAllForm.TrialBalanceSds.Open;
      RptAccountsTrialBalAllForm.TrialBalanceCds.Close;
      RptAccountsTrialBalAllForm.TrialBalanceCds.Open;

      RptAccountsTrialBalAllForm.QuickRepTrialBalance.PreviewModal;
      RptAccountsTrialBalAllForm.Release;
      RptAccountsTrialBalAllForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ByParty1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  inherited;

  _inputstr := '20000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptAccountAllCreditorsForm = nil then
        Application.CreateForm(TRptAccountAllCreditorsForm, RptAccountAllCreditorsForm);

      _RptAccountAllCreditorsForm_Mode := 2;
      RptAccountAllCreditorsForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountAllCreditorsForm.DateRangeLabel.Visible := False;

      RptAccountAllCreditorsForm.AllCreditorsSds.close;
      RptAccountAllCreditorsForm.AllCreditorsSds.CommandText :=
        RptAccountAllCreditorsForm.AllCreditorsSds.CommandText +
        ' AND A.Addressbook_id = ' + VarToStr(_ret1[6]) +
        ' ORDER by A.organisation, T.YearRef, V.voucherno';

      RptAccountAllCreditorsForm.AllCreditorsSds.Open;
      RptAccountAllCreditorsForm.AllCreditorsCds.Close;
      RptAccountAllCreditorsForm.AllCreditorsCds.Open;

      RptAccountAllCreditorsForm.QuickRepCreditors.PreviewModal;

      RptAccountAllCreditorsForm.Release;
      RptAccountAllCreditorsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.Summary1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptAccountAllCreditorsForm = nil then
        Application.CreateForm(TRptAccountAllCreditorsForm, RptAccountAllCreditorsForm);

      _RptAccountAllCreditorsForm_Mode := 1;
      RptAccountAllCreditorsForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountAllCreditorsForm.DateRangeLabel.Visible := False;

      RptAccountAllCreditorsForm.AllCreditorsSds.close;
      RptAccountAllCreditorsForm.AllCreditorsSds.CommandText :=
        RptAccountAllCreditorsForm.AllCreditorsSds.CommandText +
        ' ORDER by A.organisation, T.YearRef, V.voucherno';

      RptAccountAllCreditorsForm.AllCreditorsSds.Open;
      RptAccountAllCreditorsForm.AllCreditorsCds.Close;
      RptAccountAllCreditorsForm.AllCreditorsCds.Open;

      RptAccountAllCreditorsForm.QRGroup1.Enabled := False;
      RptAccountAllCreditorsForm.DetailBand1.Enabled := False;
      RptAccountAllCreditorsForm.QRDBOrgFooterLabel.Enabled := True;
      RptAccountAllCreditorsForm.QRShapeFooter.Enabled := False;

      RptAccountAllCreditorsForm.QuickRepCreditors.PreviewModal;

      RptAccountAllCreditorsForm.Release;
      RptAccountAllCreditorsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.All2Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptAccountAllCreditorsForm = nil then
        Application.CreateForm(TRptAccountAllCreditorsForm, RptAccountAllCreditorsForm);

      _RptAccountAllCreditorsForm_Mode := 1;
      RptAccountAllCreditorsForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountAllCreditorsForm.DateRangeLabel.Visible := False;

      RptAccountAllCreditorsForm.AllCreditorsSds.close;
      RptAccountAllCreditorsForm.AllCreditorsSds.CommandText :=
        RptAccountAllCreditorsForm.AllCreditorsSds.CommandText +
        'AND COALESCE(t.paidamt, 0.0) = 0.0 ' +
        ' ORDER by A.organisation, T.YearRef, V.voucherno';

{
        RptAccountAllCreditorsForm.AllCreditorsSds.CommandText +
        'AND COALESCE(t.billedamt, 0.0) = 0.0 AND COALESCE(t.paidamt, 0.0) = 0.0 ' +
        ' ORDER by A.organisation, T.YearRef, V.voucherno';
}

      RptAccountAllCreditorsForm.AllCreditorsSds.Open;
      RptAccountAllCreditorsForm.AllCreditorsCds.Close;
      RptAccountAllCreditorsForm.AllCreditorsCds.Open;

      RptAccountAllCreditorsForm.QuickRepCreditors.PreviewModal;

      RptAccountAllCreditorsForm.Release;
      RptAccountAllCreditorsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ByParty2Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin

  _inputstr := '20000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptAccountAllCreditorsForm = nil then
        Application.CreateForm(TRptAccountAllCreditorsForm, RptAccountAllCreditorsForm);

      _RptAccountAllCreditorsForm_Mode := 2;
      RptAccountAllCreditorsForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountAllCreditorsForm.DateRangeLabel.Visible := False;

      RptAccountAllCreditorsForm.AllCreditorsSds.close;
      RptAccountAllCreditorsForm.AllCreditorsSds.CommandText :=
        RptAccountAllCreditorsForm.AllCreditorsSds.CommandText +
        ' AND A.Addressbook_id = ' + VarToStr(_ret1[6]) +
        ' AND COALESCE(t.paidamt, 0.0) = 0.0 ' +
{        ' AND COALESCE(t.billedamt, 0.0) = 0.0 AND COALESCE(t.paidamt, 0.0) = 0.0 ' +}
        ' ORDER by A.organisation, T.YearRef, V.voucherno';

      RptAccountAllCreditorsForm.AllCreditorsSds.Open;
      RptAccountAllCreditorsForm.AllCreditorsCds.Close;
      RptAccountAllCreditorsForm.AllCreditorsCds.Open;

      RptAccountAllCreditorsForm.QuickRepCreditors.PreviewModal;

      RptAccountAllCreditorsForm.Release;
      RptAccountAllCreditorsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.Summary2Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  inherited;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptAccountAllCreditorsForm = nil then
        Application.CreateForm(TRptAccountAllCreditorsForm, RptAccountAllCreditorsForm);

      _RptAccountAllCreditorsForm_Mode := 1;
      RptAccountAllCreditorsForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountAllCreditorsForm.DateRangeLabel.Visible := False;

      RptAccountAllCreditorsForm.AllCreditorsSds.close;
      RptAccountAllCreditorsForm.AllCreditorsSds.CommandText :=
        RptAccountAllCreditorsForm.AllCreditorsSds.CommandText +
{        ' AND COALESCE(t.billedamt, 0.0) = 0.0 AND COALESCE(t.paidamt, 0.0) = 0.0 ' +}
        'AND COALESCE(t.paidamt, 0.0) = 0.0 ' +
        ' ORDER by A.organisation, T.YearRef, V.voucherno';

      RptAccountAllCreditorsForm.AllCreditorsSds.Open;
      RptAccountAllCreditorsForm.AllCreditorsCds.Close;
      RptAccountAllCreditorsForm.AllCreditorsCds.Open;

      RptAccountAllCreditorsForm.QRGroup1.Enabled := False;
      RptAccountAllCreditorsForm.DetailBand1.Enabled := False;
      RptAccountAllCreditorsForm.QRDBOrgFooterLabel.Enabled := True;
      RptAccountAllCreditorsForm.QRShapeFooter.Enabled := False;

      RptAccountAllCreditorsForm.QuickRepCreditors.PreviewModal;

      RptAccountAllCreditorsForm.Release;
      RptAccountAllCreditorsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.GenerateSundryCreditors1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText:= 'EXEC p_TmpSundryCreditors ' +  ''' ' +
            FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''' ,' + ''' ' +
            FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' ,' + '13,25 ';

      GpSds.ExecSQL;
      GpSds.Close;
     GpSds.Free;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.All3Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
  x_office_str: string;
begin
  _inputstr := '22100000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      x_office_str := ' ';

      if ReportParameterForm.cxOfficeCkb.Checked = True then
        x_office_str := ' AND Offices_id = ' + VarToStr(_ret1[3]) ;

      if RptAccountsTrsAllForm = nil then
        Application.CreateForm(TRptAccountsTrsAllForm, RptAccountsTrsAllForm);

      RptAccountsTrsAllForm.QRLabel1.Caption := ' Ledgers ';
      RptAccountsTrsAllForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      if ReportParameterForm.cxOfficeCkb.Checked = True then
        RptAccountsTrsAllForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text + ', ' +
          ReportParameterForm.cxOfficeLCMB.Text
      else
        RptAccountsTrsAllForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text;
      RptAccountsTrsAllForm.AllTrsCds.Close;
      RptAccountsTrsAllForm.AllTrsSds.Close;
      RptAccountsTrsAllForm.AllTrsSds.CommandText := '';
      RptAccountsTrsAllForm.AllTrsSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_TrsAll( ' + ''' ' +
            FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''' ,' + ''' ' +
            FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' ,' +
            VarToStr(_ret1[2]) + ')'  +
            ' WHERE (1=1)' + x_office_str  + ' ' +
            '	ORDER BY AccountHeadsNo, TrsClr, TransactionDate ';

      RptAccountsTrsAllForm.AllTrsSds.Open;
      RptAccountsTrsAllForm.AllTrsCds.Close;
      RptAccountsTrsAllForm.AllTrsCds.Open;

      RptAccountsTrsAllForm.QuickRep1.PreviewModal;

      RptAccountsTrsAllForm.Release;
      RptAccountsTrsAllForm := nil;

    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.SingleAccount1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
  x_office_str: string;
begin
  _inputstr := '22100000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      x_office_str := ' ';

      if ReportParameterForm.cxOfficeCkb.Checked = True then
         x_office_str := ' AND Offices_id = ' + VarToStr(_ret1[3]) + ' ' ;

      if TrialBalanceForm = nil then
        Application.CreateForm(TTrialBalanceForm,TrialBalanceForm);

      TrialBalanceForm.FromDateEdit.Date := ReportParameterForm.cxDateEdit1.Date;
      TrialBalanceForm.ToDateEdit.Date := ReportParameterForm.cxDateEdit2.Date;
      _TrialBalanceForm_CompanyID := (_ret1[2]);

      TrialBalanceForm.ShowModal;

      if TrialBalanceForm.ModalResult = mrCancel then
         Exit;

      if not TrialBalanceForm.MasterCds.EOF then
        begin
          if RptAccountsTrsAllForm = nil then
            Application.CreateForm(TRptAccountsTrsAllForm, RptAccountsTrsAllForm);

          RptAccountsTrsAllForm.DateRangeLabel.Caption := 'From ' +
                FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
                FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

          if ReportParameterForm.cxOfficeCkb.Checked = True then
            RptAccountsTrsAllForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text + ', ' +
              ReportParameterForm.cxOfficeLCMB.Text
          else
            RptAccountsTrsAllForm.CompOfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text;

          RptAccountsTrsAllForm.AllTrsSds.Close;
          RptAccountsTrsAllForm.AllTrsCds.Close;
          RptAccountsTrsAllForm.AllTrsSds.CommandText := '';
          RptAccountsTrsAllForm.AllTrsSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_TrsAll(' +
                ''' ' + FormatDateTime('mm/dd/yyyy', ReportParameterForm.cxDateEdit1.Date) + ''' ,' +
                ''' ' + FormatDateTime('mm/dd/yyyy', ReportParameterForm.cxDateEdit2.Date) + ''' ,' +
                IntToStr(AccountForm_Companies_id) + ')' + ' WHERE (1=1) ' +
                x_office_str  +
                ' AND AccountHeads_id = ' + IntToStr(TrialBalanceForm.MasterCds['AccountHeads_id']) + ' ' +
                //' AND TrsClrNo = 1 ' +
                ' ORDER BY TrsClr, TransactionDate';


          RptAccountsTrsAllForm.AllTrsSds.Open;
          RptAccountsTrsAllForm.AllTrsCds.Close;
          RptAccountsTrsAllForm.AllTrsCds.Open;

          RptAccountsTrsAllForm.QuickRep1.PreviewModal;

          RptAccountsTrsAllForm.Release;
          RptAccountsTrsAllForm := nil;

        end;

      TrialBalanceForm.Free;
      TrialBalanceForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.CashVoucher1Click(Sender: TObject);
var
  x_cv_tf,x_cv_label: string;
begin
  _inputstr := '02200022';

  if ReportParameterForm = Nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.cxCashChk.Visible := True;
  ReportParameterForm.cxCashChk.Checked := True;
  ReportParameterForm.CashLbl.Visible := True;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin
      if ReportParameterForm.cxCashChk.Checked then
        begin
          x_cv_tf := '1';
          x_cv_label := 'Cash Voucher';
        end
      else
        begin
          x_cv_tf := '0';
          x_cv_label := 'Journal Voucher';
        end;

      if RptAccountsCashVoucherForm = nil then
        Application.CreateForm(TRptAccountsCashVoucherForm, RptAccountsCashVoucherForm);

      RptAccountsCashVoucherForm.CashVoucherSds.Close;
      RptAccountsCashVoucherForm.CashVoucherSds.CommandText := '';
      RptAccountsCashVoucherForm.CashVoucherSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_Cashvoucher(' +
                    VarToStr(_ret1[2]) + ',' + VarToStr(_ret1[3]) + ',' +
                    VarToStr(_ret1[8]) + ',' + VarToStr(_ret2[8]) + ',' +
                    ReportParameterForm.YearEdit.Text + ',' + x_cv_tf + ')' ;

//                    VarToStr(_ret2[7]) + ',' + cv_tf + ')' ;

//                    VouRangeForm.FromVouEdit.Text + ',' + VouRangeForm.ToVouEdit.Text + ',' +
//                    VouRangeForm.YearRefEdit.Text + ',' + cv_tf + ')' ;

      RptAccountsCashVoucherForm.CashVoucherSds.Open;
      RptAccountsCashVoucherForm.CashVoucherCds.Open;
      RptAccountsCashVoucherForm.CashVoucherCds.Refresh;

      RptAccountsCashVoucherForm.CashVoucherLabel.Caption := x_cv_label;

      RptAccountsCashVoucherForm.CompanyOfficeLabel.Caption :=
        Trim(ReportParameterForm.cxCompanyLCMB.Text) + ', ' + Trim(ReportParameterForm.cxOfficeLCMB.Text);

      RptAccountsCashVoucherForm.QuickRep1.PreviewModal;

      RptAccountsCashVoucherForm.Release;
      RptAccountsCashVoucherForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := Nil;


end;

procedure TAccountForm.All4Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'EXEC p_TmpTrialBalance ' +
                ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
                ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
                VarToStr(_ret1[2]) ;

      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.Free;

      if RptAccountsTrialBalAllForm = nil then
        Application.CreateForm(TRptAccountsTrialBalAllForm, RptAccountsTrialBalAllForm);

      RptAccountsTrialBalAllForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsTrialBalAllForm.TrialBalanceCds.Close;
      RptAccountsTrialBalAllForm.TrialBalanceSds.Close;
      RptAccountsTrialBalAllForm.TrialBalanceSds.CommandText := '';
      RptAccountsTrialBalAllForm.TrialBalanceSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_TrialBalance(' +
                          VarToStr(_ret1[2]) + ')' ;

      RptAccountsTrialBalAllForm.TrialBalanceSds.Open;
      RptAccountsTrialBalAllForm.TrialBalanceCds.Close;
      RptAccountsTrialBalAllForm.TrialBalanceCds.Open;

      RptAccountsTrialBalAllForm.QuickRepTrialBalance.PreviewModal;
      RptAccountsTrialBalAllForm.Release;
      RptAccountsTrialBalAllForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.SelectedAccount1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
  GpSds: TSQLDataSet;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if TrialBalanceForm = nil then
        Application.CreateForm(TTrialBalanceForm,TrialBalanceForm);

      TrialBalanceForm.FromDateEdit.Date := ReportParameterForm.cxDateEdit1.Date;
      TrialBalanceForm.ToDateEdit.Date :=  ReportParameterForm.cxDateEdit2.Date;
      _TrialBalanceForm_CompanyID := _ret1[2];

      TrialBalanceForm.ShowModal;

      if TrialBalanceForm.ModalResult = mrCancel then
         Exit;

      if not TrialBalanceForm.MasterCds.EOF then
        begin
          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
          GpSds.Close;
          GpSds.CommandText := 'EXEC p_TmpTrialBalance ' +
                    ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
                    ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
                    VarToStr(_ret1[2]) ;

          GpSds.ExecSQL;

          GpSds.Close;
          GpSds.Free;

          if RptAccountsTrialBalAllForm = nil then
            Application.CreateForm(TRptAccountsTrialBalAllForm, RptAccountsTrialBalAllForm);

          RptAccountsTrialBalAllForm.TrialBalanceSds.Close;
          RptAccountsTrialBalAllForm.TrialBalanceSds.CommandText := '';
          RptAccountsTrialBalAllForm.TrialBalanceSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_TrialBalance(' +
                  VarToStr(_ret1[2]) + ')' +
                  ' WHERE AccountHeadsNo = ' + IntToStr(TrialBalanceForm.MasterCds['AccountHeadsNo']);

          RptAccountsTrialBalAllForm.TrialBalanceSds.Open;
          RptAccountsTrialBalAllForm.TrialBalanceCds.Close;
          RptAccountsTrialBalAllForm.TrialBalanceCds.Open;

          RptAccountsTrialBalAllForm.QuickRepTrialBalance.PreviewModal;

          RptAccountsTrialBalAllForm.Release;
          RptAccountsTrialBalAllForm := nil;

        end;

      TrialBalanceForm.Release;
      TrialBalanceForm := nil;

    end;
    ReportParameterForm.Free;
    ReportParameterForm := nil;

end;

procedure TAccountForm.BalanceSheet1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'Exec p_TmpBalanceSheet ' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
            VarToStr(_ret1[2]) + ',1';

      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.Free;

      if RptAccountsBalanceSheetForm = nil then
        Application.CreateForm(TRptAccountsBalanceSheetForm, RptAccountsBalanceSheetForm);

      RptAccountsBalanceSheetForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsBalanceSheetForm.BalanceSheetSds.Close;
      RptAccountsBalanceSheetForm.BalanceSheetSds.CommandText := 'SELECT * FROM dbo.fn_Rpt_Accounts_BalanceSheet() ' ;

      RptAccountsBalanceSheetForm.BalanceSheetSds.Open;
      RptAccountsBalanceSheetForm.BalanceSheetCds.Close;
      RptAccountsBalanceSheetForm.BalanceSheetCds.Open;

      RptAccountsBalanceSheetForm.QuickRepBalanceSheet.PreviewModal;

      RptAccountsBalanceSheetForm.Release;
      RptAccountsBalanceSheetForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.BalanceSheetProvisional1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'Exec p_TmpBalanceSheet ' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
            VarToStr(_ret1[2]) + ',2';

      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.Free;

      if RptAccountsBalanceSheetForm = nil then
        Application.CreateForm(TRptAccountsBalanceSheetForm, RptAccountsBalanceSheetForm);

      RptAccountsBalanceSheetForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsBalanceSheetForm.BalanceSheetSds.Close;
      RptAccountsBalanceSheetForm.BalanceSheetSds.CommandText := 'SELECT * FROM dbo.fn_Rpt_Accounts_BalanceSheet() ' ;

      RptAccountsBalanceSheetForm.BalanceSheetSds.Open;
      RptAccountsBalanceSheetForm.BalanceSheetCds.Close;
      RptAccountsBalanceSheetForm.BalanceSheetCds.Open;

      RptAccountsBalanceSheetForm.QuickRepBalanceSheet.PreviewModal;

      RptAccountsBalanceSheetForm.Release;
      RptAccountsBalanceSheetForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ProfitLoss1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'EXEC p_TmpProfitLoss ' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
            VarToStr(_ret1[2]) + ',1' ;

      GpSds.ExecSQL;
      GpSds.Close;
      GpSds.Free;

      if RptAccountsProfitLossForm = nil then
        Application.CreateForm(TRptAccountsProfitLossForm, RptAccountsProfitLossForm);

      RptAccountsProfitLossForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsProfitLossForm.ProfitLossSds.Close;
      RptAccountsProfitLossForm.ProfitLossSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_ProfitLoss() ' ;

      RptAccountsProfitLossForm.ProfitLossSds.Open;
      RptAccountsProfitLossForm.ProfitLossCds.Close;
      RptAccountsProfitLossForm.ProfitLossCds.Open;

      RptAccountsProfitLossForm.QuickRepProfitLoss.PreviewModal;

      RptAccountsProfitLossForm.Release;
      RptAccountsProfitLossForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ProfitLossProvisional1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'EXEC p_TmpProfitLoss ' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
            VarToStr(_ret1[2]) + ',2' ;

      GpSds.ExecSQL;
      GpSds.Close;
      GpSds.Free;

      if RptAccountsProfitLossForm = nil then
        Application.CreateForm(TRptAccountsProfitLossForm, RptAccountsProfitLossForm);

      RptAccountsProfitLossForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsProfitLossForm.ProfitLossSds.Close;
      RptAccountsProfitLossForm.ProfitLossSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_ProfitLoss() ' ;

      RptAccountsProfitLossForm.ProfitLossSds.Open;
      RptAccountsProfitLossForm.ProfitLossCds.Close;
      RptAccountsProfitLossForm.ProfitLossCds.Open;

      RptAccountsProfitLossForm.QuickRepProfitLoss.PreviewModal;

      RptAccountsProfitLossForm.Release;
      RptAccountsProfitLossForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ProfitLossProvisional21Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'EXEC p_TmpProfitLoss ' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
            VarToStr(_ret1[2]) + ',2' ;

      GpSds.ExecSQL;
      GpSds.Close;
      GpSds.Free;

      if RptAccountsProfitLossForm = nil then
        Application.CreateForm(TRptAccountsProfitLossForm, RptAccountsProfitLossForm);

      RptAccountsProfitLossForm.QRDateAsOn.Caption := FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsProfitLossForm.ProfitLossSds.Close;
      RptAccountsProfitLossForm.ProfitLossSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_ProfitLoss() ' ;

      RptAccountsProfitLossForm.ProfitLossSds.Open;
      RptAccountsProfitLossForm.ProfitLossCds.Close;
      RptAccountsProfitLossForm.ProfitLossCds.Open;

      RptAccountsProfitLossForm.QuickRepProfitLoss.PreviewModal;

      RptAccountsProfitLossForm.Release;
      RptAccountsProfitLossForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.All5Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin
      if RptAccountsPaymentMadeForm = nil then
        Application.CreateForm(TRptAccountsPaymentMadeForm, RptAccountsPaymentMadeForm);

      RptAccountsPaymentMadeForm.PaymentMadeSds.Close;
      RptAccountsPaymentMadeForm.PaymentMadeSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_PaymentMade( ' +
             VarToStr(_ret1[2]) + ', ''' +
             FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' + '''' +
             FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' ) ' +
             ' ORDER BY OrgCity, CashVoucherNo, TransactionDate ';

      RptAccountsPaymentMadeForm.PaymentMadeSds.Open;
      RptAccountsPaymentMadeForm.PaymentMadeCds.Close;
      RptAccountsPaymentMadeForm.PaymentMadeCds.Open;

      RptAccountsPaymentMadeForm.DateRangeLabel.Caption :=
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsPaymentMadeForm.CompanyLabel.Caption :=
        Trim(ReportParameterForm.cxCompanyLCMB.Text);

      RptAccountsPaymentMadeForm.QuickRep1.PreviewModal;

      RptAccountsPaymentMadeForm.Release;
      RptAccountsPaymentMadeForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ByParty3Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  _inputstr := '22000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptAccountsPaymentMadeForm = nil then
        Application.CreateForm(TRptAccountsPaymentMadeForm, RptAccountsPaymentMadeForm);

      RptAccountsPaymentMadeForm.PaymentMadeSds.Close;
      RptAccountsPaymentMadeForm.PaymentMadeSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_PaymentMade( ' +
             VarToStr(_ret1[2]) + ', ''' +
             FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' + '''' +
             FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' ) ' +
             ' WHERE Addressbook_id = ' + VarToStr(_ret1[6]) +
             ' ORDER BY OrgCity, CashVoucherNo, TransactionDate ';

      RptAccountsPaymentMadeForm.PaymentMadeSds.Open;
      RptAccountsPaymentMadeForm.PaymentMadeCds.Close;
      RptAccountsPaymentMadeForm.PaymentMadeCds.Open;

      RptAccountsPaymentMadeForm.DateRangeLabel.Caption :=
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      RptAccountsPaymentMadeForm.CompanyLabel.Caption :=
        Trim(ReportParameterForm.cxCompanyLCMB.Text);

      RptAccountsPaymentMadeForm.QuickRep1.PreviewModal;

      RptAccountsPaymentMadeForm.Release;
      RptAccountsPaymentMadeForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.FORM10CCAE1Click(Sender: TObject);
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin
      if RptAccounts10CCAEAnnexForm = nil then
         Application.CreateForm(TRptAccounts10CCAEAnnexForm, RptAccounts10CCAEAnnexForm);

      RptAccounts10CCAEAnnexForm.Form10CCAESds.Close;
      RptAccounts10CCAEAnnexForm.Form10CCAESds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_Form10CCAEAnnexA( ' +
                           Trim(ReportParameterForm.YearEdit.Text) + ')' ;

      RptAccounts10CCAEAnnexForm.Form10CCAESds.Open;
      RptAccounts10CCAEAnnexForm.Form10CCAECds.Close;
      RptAccounts10CCAEAnnexForm.Form10CCAECds.Open;

      RptAccounts10CCAEAnnexForm.QuickRep1.PreviewModal;
      RptAccounts10CCAEAnnexForm.Release;
      RptAccounts10CCAEAnnexForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.BalanceCheck1Click(Sender: TObject);
begin
  inherited;

  if RptAccountsBalanceCheckForm = nil then
    Application.CreateForm(TRptAccountsBalanceCheckForm, RptAccountsBalanceCheckForm);

  RptAccountsBalanceCheckForm.BalanceCheckSds.Open;
  RptAccountsBalanceCheckForm.BalanceCheckCds.Close;
  RptAccountsBalanceCheckForm.BalanceCheckCds.Open;

  RptAccountsBalanceCheckForm.QuickRep1.PreviewModal;

  RptAccountsBalanceCheckForm.Release;
  RptAccountsBalanceCheckForm := nil;

end;

procedure TAccountForm.ForexReport1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
  x_QryStr :String;
begin
  x_QryStr := '';

  _inputstr := '22100000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := AccountForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin
      if TrialBalanceForm = nil then
        Application.CreateForm(TTrialBalanceForm,TrialBalanceForm);

      TrialBalanceForm.FromDateEdit.Date := ReportParameterForm.cxDateEdit1.Date;
      TrialBalanceForm.ToDateEdit.Date := ReportParameterForm.cxDateEdit2.Date;
      _TrialBalanceForm_CompanyID := _ret1[2];

      TrialBalanceForm.ShowModal;

      if not TrialBalanceForm.MasterCds.EOF then
        begin
          if RptAccountsForexForm = nil then
            Application.CreateForm(TRptAccountsForexForm,RptAccountsForexForm);

          if ReportParameterForm.cxOfficeCkb.Checked = True then
            RptAccountsForexForm.OfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text + ', ' +
            ReportParameterForm.cxOfficeLCMB.Text
          else
            RptAccountsForexForm.OfficeLabel.Caption := ReportParameterForm.cxCompanyLCMB.Text;


          RptAccountsForexForm.DateRangeLabel.Caption := 'From ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

          if ReportParameterForm.cxOfficeCkb.Checked then
             x_QryStr := ' AND Offices_id = ' + VarToStr(_ret1[3]);

          RptAccountsForexForm.ForexSds.Close;
          RptAccountsForexForm.ForexSds.CommandText := '';
          RptAccountsForexForm.ForexSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_Forex( ' +
                VarToStr(_ret1[2]) + ' ,' +
                IntToStr(TrialBalanceForm.MasterCds['AccountHeads_id']) + ' ,' + ''' ' +
                FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''' , ' + ''' ' +
                FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' )'  +
                ' WHERE (1=1) ' + x_QryStr ;

          RptAccountsForexForm.ForexSds.Open;
          RptAccountsForexForm.ForexCds.Close;
          RptAccountsForexForm.ForexCds.Open;

          RptAccountsForexForm.QuickRep1.PreviewModal;

          RptAccountsForexForm.Release;
          RptAccountsForexForm := nil;

        end;

      TrialBalanceForm.Free;
      TrialBalanceForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.FilterbyDateRange1Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  _def1[1] := AccountForm_FromDate;
  _def2[1] := AccountForm_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      DetailCds.Active := false;
      MasterCds.Active := false;

      AccountForm_FromDate := ReportParameterForm.cxDateEdit1.Date;
      AccountForm_ToDate := ReportParameterForm.cxDateEdit2.Date;

      MasterSds.Params[2].Value := AccountForm_FromDate;
      MasterSds.Params[3].Value := AccountForm_ToDate;

      MasterCds.Active := true;
      DetailCds.Active := true;

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TAccountForm.RenumberfromthisVoucher1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  x_CashVoucher, x_VoucherType: string;
begin
  inherited;

  if MasterCds['CashVoucher'] = true then
    x_VoucherType := 'Cash'
  else
    x_VoucherType := 'Journal';

  if MessageDlg ('This will renumber the ' + x_VoucherType + ' vouchers for the current office ' +
    'beginning from the current voucher. Are you sure?', mtWarning,
    [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if MasterCds['CashVoucher'] = true then
    x_CashVoucher := '1'
  else
    x_CashVoucher := '0';

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_RenumberCashVouchers ' +
            IntToStr(MasterCds['CashVoucherNo']) + ',' +
            x_CashVoucher + ', ' +
            IntToStr(MasterCds['Companies_id']) + ',' +
            IntToStr(MasterCds['Offices_id']) + ',' +
            IntToStr(MasterCds['YearRef']);
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Close;
  MasterCds.Open;

  Showmessage ('Vouchers Renumbered');

end;

procedure TAccountForm.DetailCdsexchangerateChange(Sender: TField);
begin
  inherited;
  ComputeRupeeAmount;
end;

procedure TAccountForm.ComputeRupeeAmount;
begin

  if (DetailCds['ExchangeRate'] <> null) and (DetailCds['ForexDebit'] <> null) then
    DetailCds['Debit'] := DetailCds['ExchangeRate'] * DetailCds['ForexDebit'];

  if (DetailCds['ExchangeRate'] <> null) and (DetailCds['ForexCredit'] <> null) then
    DetailCds['Credit'] := DetailCds['ExchangeRate'] * DetailCds['ForexCredit'];
end;


procedure TAccountForm.DetailCdsforexdebitChange(Sender: TField);
begin
  inherited;
  ComputeRupeeAmount;
end;

procedure TAccountForm.DetailCdsforexcreditChange(Sender: TField);
begin
  inherited;
  ComputeRupeeAmount;
end;

procedure TAccountForm.ransporterServiceTaxCollected1Click(
  Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  inherited;

  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin
      if RptAccountsServTaxTranspForm = nil then
        Application.CreateForm(TRptAccountsServTaxTranspForm, RptAccountsServTaxTranspForm);

      RptAccountsServTaxTranspForm.CashVoucherSds.Close;
      RptAccountsServTaxTranspForm.CashVoucherSds.CommandText :=
            'exec p_ServiceTax_Accounts_Transp ' +
             VarToStr(_ret1[2]) + ', ''' +
             FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' + '''' +
             FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''', 1 ';

      RptAccountsServTaxTranspForm.CashVoucherSds.Open;
      RptAccountsServTaxTranspForm.CashVoucherCds.Close;
      RptAccountsServTaxTranspForm.CashVoucherCds.Open;

      RptAccountsServTaxTranspForm.DateRangeLabel.Caption :=
        'Transporter Service Tax Amt Collected between ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' and ' +
        FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);


//      RptAccountsServTaxTranspForm.CompanyLabel.Caption :=
//        Trim(ReportParameterForm.cxCompanyLCMB.Text);

      RptAccountsServTaxTranspForm.QuickRep1.PreviewModal;

      RptAccountsServTaxTranspForm.Release;
      RptAccountsServTaxTranspForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountForm.ProfitLossOffice1Click(Sender: TObject);
var
  GpSds, Gp2Sds: TSQLDataSet;
  x_Year,x_Month,x_Day: Word;
  x_months_id, x_row, x_MaxLineNum: integer;
  x_Balance: double;
  x_CellCol, x_FileName, x_AccountHeadsNo, x_Path: string;
begin
  inherited;

  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  x_months_id := 0;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'EXEC p_TmpProfitLoss ' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
            ''' ' + FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''',' +
            VarToStr(_ret1[2]) + ',2' ;

      GpSds.ExecSQL;
      GpSds.Close;
      GpSds.Free;

      x_months_id := MonthOf(ReportParameterForm.cxDateEdit2.Date);
      if x_months_id <= 3 then
        x_months_id := 9 + x_months_id
      else
        x_months_id := x_months_id -3;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  ShowMessage('Please select the source Template file of the previous month:');

  x_FileName := '';
  if OpenDialog.Execute then
    x_FileName := OpenDialog.FileName;

  if x_FileName = '' then
    exit;


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'DELETE FROM TmpTrialBalance ' +
    'WHERE ((Debit = 0.0) AND (Credit = 0.0)) ';
  GpSds.ExecSQL;

  GpSds.Close;
  GpSds.CommandText := 'DELETE FROM TmpTrialBalance ' +
    'WHERE ((AccountHeadsNo >= 900000) OR (AccountHeadsNo < 600000)) ';
  GpSds.ExecSQL;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_FileName;

  scExcelExport.WorksheetName := 'Monthly_PL';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_row := 2;
  x_MaxLineNum := 1000;


  while (x_row < x_MaxLineNum) and
        (Trim(scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value) <> 'END') do
    begin

      if (Trim(scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value) > '') then
        begin

          x_AccountHeadsNo := Trim(scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value);

          GpSds.Close;
          GpSds.CommandText := 'SELECT SUM(COALESCE(Debit,0.0)-COALESCE(Credit,0.0)) AS Balance FROM TmpTrialBalance WHERE AccountHeadsNo = ' +
            QuotedStr(x_AccountHeadsNo);
          GpSds.Open;

          if not GpSds.EOF then
            begin

              x_Balance := 0.0;
              if (GpSds['Balance'] <> null) then
                x_Balance := GpSds['Balance'];

              if (x_AccountHeadsNo >= '600000') and (x_AccountHeadsNo <= '699999') then
                x_Balance := -1.0 * x_Balance;

              x_CellCol := 'G';
              x_CellCol := SkipNextCol(x_CellCol, (x_months_id-1)*3);
              if trim(scExcelExport.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value) > '' then
                x_CellCol := SkipNextCol(x_CellCol, 1);

              scExcelExport.ExcelWorkSheet.Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := x_Balance;

             Gp2Sds.Close;
             Gp2Sds.CommandText := 'UPDATE TmpTrialBalance SET Used = COALESCE(Used,0) + 1 ' +
              'WHERE AccountHeadsNo = ' +
               QuotedStr(x_AccountHeadsNo);
             Gp2Sds.ExecSQL;

            end;

        end;

      x_row := x_row + 1;

    end;

  x_row := x_row + 1;

  GpSds.Close;
  GpSds.CommandText := 'SELECT AccountHeadsNo, COALESCE(Debit,0.0)-COALESCE(Credit,0.0) AS Balance ' +
    'FROM TmpTrialBalance ' +
    'WHERE ((COALESCE(Used,0) = 0) OR (COALESCE(Used,0) > 1)) ';
  GpSds.Open;

  while (not GpSds.Eof) do
    begin

      scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].EntireRow.Insert(true);
      scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['AccountHeadsNo'];

      GpSds.Next;
    end;

  if (x_months_id > 9) then
    x_months_id := x_months_id - 9
  else
    x_months_id := x_months_id + 3;

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Monthly_PL_' + IntToStr(x_months_id) + '.xlsx';

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;
  Gp2Sds.Free;

  ShowMessage('Saved as Monthly_PL_' + IntToStr(x_months_id) + '.xlsx on the desktop');

end;

function TAccountForm.GetDesktopPath(Sender: TObject): string;
var
  pidl: PItemIDList;
  buf: array[0..MAX_PATH] of Char;
  x_Path: string;
begin

  x_Path := '';
  if Succeeded(ShGetSpecialFolderLocation(Handle, CSIDL_DESKTOP, pidl)) then
  begin
    if ShGetPathfromIDList(pidl, buf) then
      x_Path := buf;
    FreePIDL(pidl);
  end;

  Result := x_Path;

end;



procedure TAccountForm.ShowHideETransColumn1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1InternetPaymentNo.Visible := not cxGrid1DBBandedTableView1InternetPaymentNo.Visible;
  //cxGrid1DBBandedTableView1ForMonths_id.Visible := not cxGrid1DBBandedTableView1ForMonths_id.Visible;
  //cxGrid1DBBandedTableView1ForYear.Visible := not cxGrid1DBBandedTableView1ForYear.Visible;
end;

procedure TAccountForm.CenvatReportNew1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_row : integer;
  x_Path, x_FileName, x_Cell : string;
  x_FromDate, x_ToDate: TDateTime;
  x_proceed: boolean;
  Year, Month, Day: Word;
  x_Month, x_Year: integer;
begin
  inherited;

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  _inputstr := '00000020';

  DecodeDate(Date(), Year, Month, Day);
  if (Day > 5) then
    begin
      x_FromDate := EncodeDate(Year, Month, 1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
    end
  else
    begin
      x_FromDate := IncMonth(EncodeDate(Year, Month, 1),-1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
    end;

  DecodeDate(x_ToDate, Year, Month, Day);

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthCkb.Enabled := False;

  ReportParameterForm.VouNoEdit.Visible := False;
  ReportParameterForm.cxMonthLCMB.EditValue := Month;
  ReportParameterForm.YearEdit.Text := IntToStr(Year);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.ShowModal;

  x_Month := Month;
  x_Year := Year;

  x_proceed := false;
  if ReportParameterForm.ModalResult = MrOk then
    begin

      x_Month := ReportParameterForm.cxMonthLCMB.EditValue;
      x_Year := StrToInt(ReportParameterForm.YearEdit.Text);

      x_proceed := true;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  if not x_proceed then
    exit;

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\BackOffice_Rpt\CenvatClaimed.xlsx';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_CenvatClaimed_2] ' +
      IntToStr(x_Month) + ',' +
      IntToStr(x_Year) + ',' +
      IntToStr(MasterCds['Offices_id']) + ',' +
      IntToStr(MasterCds['Companies_id']) + ',' +
      '2';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\CenvatClaimed.xlsx';

  scExcelExport.WorksheetName := 'Cenvat';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  scExcelExport.ExcelWorkSheet.Range['A1','A1'].Value := 'RECORD OF CENVAT CREDIT AVAILED ON INPUT SERVICES AND UTILIZED FOR THE PERIOD ' +
    FormatDateTime('dd/mm/yyyy',x_FromDate) + ' to ' +  FormatDateTime('dd/mm/yyyy',x_ToDate);

  x_StartRow := 6;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['EntryNo'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['EntryNo'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['EntryDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['EntryDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['DescService'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DescService'];
    scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].WrapText := False;

    x_Cell := NextColumn(x_Cell);
    if GpSds['Organisation'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Organisation'];
    scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].WrapText := False;

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceTaxRegnNo'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceTaxRegnNo'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['InvoiceDetails'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['InvoiceDetails'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['InvoiceAmt'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['InvoiceAmt']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cenvat'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['Cenvat']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['CessCenvat'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['CessCenvat']);

    x_Cell := NextColumn(x_Cell);
    x_Cell := NextColumn(x_Cell);

    x_Cell := NextColumn(x_Cell);
    if GpSds['CenvatCB'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['CenvatCB']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['CessCenvatCB'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := FormatFloat('#,##0.00',GpSds['CessCenvatCB']);


    x_Cell := NextColumn(x_Cell);
    if GpSds['ChqNo'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ChqNo'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ChqDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['ChqDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['BankName'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BankName'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['VoucherRef'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['VoucherRef'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['BillVoucherRef'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BillVoucherRef'];

    x_Cell := NextColumn(x_Cell);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Ledgers_id'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Ledgers_id'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Accounts_id'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Accounts_id'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['PymtAccounts_id'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PymtAccounts_id'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CessSB'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CessSB'];

    x_Cell := SkipNextCol(x_Cell, 3);
    scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '=I' + IntToStr(x_row) + '-W' + IntToStr(x_row);

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  x_row := x_row + 2;
  scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=SUM(H' + IntToStr(x_StartRow) + ':H' + IntToStr(x_row-2) + ')';
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-2) + ')';
  scExcelExport.ExcelWorkSheet.Range['W'+IntToStr(x_row),'W'+IntToStr(x_row)].Value := '=SUM(W' + IntToStr(x_StartRow) + ':W' + IntToStr(x_row-2) + ')';
  scExcelExport.ExcelWorkSheet.Range['Z'+IntToStr(x_row),'Z'+IntToStr(x_row)].Value := '=SUM(Z' + IntToStr(x_StartRow) + ':Z' + IntToStr(x_row-2) + ')';


  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage('Saved as ' + x_FileName);


end;

procedure TAccountForm.ReportPosssibleCenvatEntryErrors1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_FromDate, x_ToDate: TDateTime;
  Year, Month, Day: Word;
  QueryString: string;
  x_Month, x_Year, i: integer;
begin
  inherited;

  _inputstr := '00000020';

  DecodeDate(Date(), Year, Month, Day);
  if (Day > 5) then
    begin
      x_FromDate := EncodeDate(Year, Month, 1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
      DecodeDate(x_ToDate, Year, Month, Day);
    end
  else
    begin
      x_FromDate := IncMonth(EncodeDate(Year, Month, 1),-1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
      DecodeDate(x_ToDate, Year, Month, Day);
    end;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthCkb.Enabled := False;

  ReportParameterForm.VouNoEdit.Visible := False;
  ReportParameterForm.cxMonthLCMB.EditValue := Month;
  ReportParameterForm.YearEdit.Text := IntToStr(Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      x_Month := ReportParameterForm.cxMonthLCMB.EditValue;
      x_Year := StrToInt(ReportParameterForm.YearEdit.Text);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'exec [p_CenvatClaimed_2] ' +
          IntToStr(x_Month) + ',' +
          IntToStr(x_Year) + ',' +
          IntToStr(MasterCds['Offices_id']) + ',' +
          IntToStr(MasterCds['Companies_id']) + ',' +
          '1';
      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.CommandText := 'exec [p_CenvatCompare] ' +
          IntToStr(x_Month) + ',' +
          IntToStr(x_Year) + ',' +
          IntToStr(MasterCds['Offices_id']) + ',' +
          IntToStr(MasterCds['Companies_id']);
      GpSds.ExecSQL;


      QueryString := 'SELECT c.Accounts_id, a.transactionDate, a1.Organisation ' +
        'FROM CenvatCompare c LEFT JOIN Accounts a ON c.Accounts_id = a.Accounts_id ' +
        'LEFT JOIN Addressbook a1 ON a.Addressbook_id = a1.Addressbook_id ' +
        'WHERE ST1_Amt <> ST2_Amt';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Accounts_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TransactionDate';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Organisation';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 200;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Accounts_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Transaction Date';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Pax Name';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Accounts_id';

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          MasterCds.Locate('Accounts_id',
            VarArrayOf([SearchSortForm.SearchCds['Accounts_id']]),[]);
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

      GpSds.Free;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TAccountForm.AutoEnterServiceTaxLines1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (DetailCds['ledgers_id'] = null) or (DetailCds.State = dsEdit) then
    raise exception.Create('Please save the record first');

  if (DetailCds['BillNo'] = null) or (trim(DetailCds['BillNo']) = '') then
    raise exception.Create('Please enter the bill number');

  if (DetailCds['InternetPaymentNo'] = null) or (trim(DetailCds['InternetPaymentNo']) = '') then
    raise exception.Create('Please enter the E-transaction number');

  if (DetailCds['ForMonths_id'] = null) or (DetailCds['ForYear'] = null) then
    raise exception.Create('Please enter the "for month/year"');

  cxGrid1DBBandedTableView1InternetPaymentNo.Visible := true;
  cxGrid1DBBandedTableView1ForMonths_id.Visible := true;
  cxGrid1DBBandedTableView1ForYear.Visible := true;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_AutoAddServTaxLines] ' +
          IntToStr(DetailCds['ledgers_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  AccountHeadsCds.Close;
  AccountHeadsCds.Open;

  DetailCds.Active := false;
  DetailCds.Active := true;

end;

procedure TAccountForm.ServiceTaxAmtTrsfEntry1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (not DetailCds.Eof) then
    raise exception.Create('Records already entered');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_CenvatClaim_Transfer] ' +
          IntToStr(MasterCds['accounts_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := false;
  DetailCds.Active := true;

end;

procedure TAccountForm.MonthlyReco1Click(Sender: TObject);
var
  x_FromDate, x_ToDate: TDateTime;
  Year, Month, Day: Word;
  QueryString: string;
  x_Month, x_Year, i: integer;
  x_proceed: boolean;
begin
  inherited;

  _inputstr := '00000020';

  DecodeDate(Date(), Year, Month, Day);
  if (Day > 5) then
    begin
      x_FromDate := EncodeDate(Year, Month, 1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
    end
  else
    begin
      x_FromDate := IncMonth(EncodeDate(Year, Month, 1),-1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
    end;

  DecodeDate(x_ToDate, Year, Month, Day);

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthCkb.Enabled := False;

  ReportParameterForm.VouNoEdit.Visible := False;
  ReportParameterForm.cxMonthLCMB.EditValue := Month;
  ReportParameterForm.YearEdit.Text := IntToStr(Year);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.ShowModal;

  x_Month := Month;
  x_Year := Year;

  x_proceed := false;
  if ReportParameterForm.ModalResult = MrOk then
    begin

      x_Month := ReportParameterForm.cxMonthLCMB.EditValue;
      x_Year := StrToInt(ReportParameterForm.YearEdit.Text);

      x_proceed := true;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  if not x_proceed then
    exit;


  QueryString := 'exec [p_CenvatReco] ' +
          IntToStr(x_Month) + ',' +
          IntToStr(x_Year) + ',' +
          IntToStr(MasterCds['Offices_id']) + ',' +
          IntToStr(MasterCds['Companies_id']) + ',' +
          '2';


  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 3 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'MonthShortName';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'ForYear';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Amt';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'KKCess';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Month';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Year';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'ST';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'KK Cess';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Month';

  SearchSortForm.ShowModal;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TAccountForm.UntaggedIDs1Click(Sender: TObject);
var
  x_FromDate, x_ToDate: TDateTime;
  Year, Month, Day: Word;
  QueryString: string;
  x_Month, x_Year, i: integer;
  x_proceed: boolean;
begin
  inherited;

  _inputstr := '00000020';

  DecodeDate(Date(), Year, Month, Day);
  if (Day > 5) then
    begin
      x_FromDate := EncodeDate(Year, Month, 1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
    end
  else
    begin
      x_FromDate := IncMonth(EncodeDate(Year, Month, 1),-1);
      x_ToDate := IncDay(IncMonth(x_FromDate,1),-1);
    end;

  DecodeDate(x_ToDate, Year, Month, Day);

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthCkb.Enabled := False;

  ReportParameterForm.VouNoEdit.Visible := False;
  ReportParameterForm.cxMonthLCMB.EditValue := Month;
  ReportParameterForm.YearEdit.Text := IntToStr(Year);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.ShowModal;

  x_Month := Month;
  x_Year := Year;

  x_proceed := false;
  if ReportParameterForm.ModalResult = MrOk then
    begin

      x_Month := ReportParameterForm.cxMonthLCMB.EditValue;
      x_Year := StrToInt(ReportParameterForm.YearEdit.Text);

      x_proceed := true;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  if not x_proceed then
    exit;


  QueryString := 'exec [p_CenvatReco] ' +
          IntToStr(x_Month) + ',' +
          IntToStr(x_Year) + ',' +
          IntToStr(MasterCds['Offices_id']) + ',' +
          IntToStr(MasterCds['Companies_id']) + ',' +
          '3';


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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Accounts_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'BillNo';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Amt';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Accounts_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Bill No';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Amt';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Accounts_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      MasterCds.Locate('Accounts_id',
        VarArrayOf([SearchSortForm.SearchCds['Accounts_id']]),[]);
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TAccountForm.SetTDSAmounts1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_ClickedOK: Boolean;
  x_NewString: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  GpSds.Close;
  GpSds.CommandText := 'SELECT * FROM ledgers l ' +
	                      'LEFT JOIN accountheads ah ON l.accountheads_id = ah.accountheads_id ' +
	                      'WHERE l.accounts_id = ' + IntToStr(MasterCds['Accounts_id']) + ' ' +
	                      'AND ah.accountheadsno IN (702000, 712000, 708000)';
  GpSds.Open;

  if (GpSds.Eof) then
    begin
      GpSds.Free;
      raise exception.Create('Only for accountheads (702000, 712000, 708000) ');
    end;

  GpSds.Close;
  GpSds.CommandText := 'SELECT TdsAmt = SUM(Tds) FROM ledgers WHERE accounts_id = ' + IntToStr(MasterCds['Accounts_id']) + ' ';
  GpSds.Open;

  if (GpSds.Eof) or (GpSds['TdsAmt']>0.0) then
    begin
      GpSds.Free;
      raise exception.Create('Tds Amt already entered');
    end;


  GpSds.Close;
  GpSds.CommandText := 'SELECT numericvalue FROM defaults WHERE defaults_id = 6';
  GpSds.Open;

  x_NewString := FloatToStr(GpSds['numericvalue']);

  x_ClickedOK:= InputQuery('Enter TDS %', 'Enter TDS %', x_NewString);

  if x_ClickedOK then
    begin

      GpSds.Close;
      GpSds.CommandText := 'exec [p_GenTdsValues] ' +
          IntToStr(MasterCds['accounts_id']) + ',' +
          x_NewString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

  DetailCds.Active := false;
  DetailCds.Active := true;

end;

procedure TAccountForm.ShowHideGSTColumns1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1C_GST.Visible := not cxGrid1DBBandedTableView1C_GST.Visible;
  cxGrid1DBBandedTableView1S_GST.Visible := not cxGrid1DBBandedTableView1S_GST.Visible;
  cxGrid1DBBandedTableView1I_GST.Visible := not cxGrid1DBBandedTableView1I_GST.Visible;

end;

procedure TAccountForm.GSTR21Click(Sender: TObject);
begin
  inherited;

  Gstr2Form_FromDate := IncMonth(StrToDate('01/' + IntToStr(MonthOf(Date())) + '/' + IntToStr(YearOf(Date()))), -4);
  Gstr2Form_ToDate := Date();

  Gstr2Form_Level := AccountForm_Level;

  If Gstr2Form_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if Gstr2Form = nil then
    Application.CreateForm(TGstr2Form, Gstr2Form);

end;

procedure TAccountForm.FIRCPayments1Click(Sender: TObject);
var
  x_Year,x_Month,x_Day: Word;
begin
  inherited;

  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),x_Year,x_Month,x_Day);
  if x_Month <= 3 then
    x_Year := x_Year - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(x_Year,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := AccountForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      Accounts_FIRCPayments (scExcelExport, ReportParameterForm.cxDateEdit1.Date, ReportParameterForm.cxDateEdit2.Date);

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

end.
