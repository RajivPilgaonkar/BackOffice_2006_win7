unit AccountsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxNavigator, cxDBNavigator, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxCheckBox, StdCtrls, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, DBCtrls, cxRadioGroup, cxGroupBox,
  Menus, DateUtils, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TAccountsForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    CashEntry: TcxDBCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    SearchLbl: TLabel;
    KeyIdDbText: TDBText;
    CloseBtn: TcxButton;
    GroupBox1: TcxGroupBox;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridDBTableView1accountheads_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1yearref: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1voucherno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1billno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1divisions_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1invoiceno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1details: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1amountbilled: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1debit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1credit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1currencies_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1forexdebit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1forexcredit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tds: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1exchangerate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1notes: TcxGridDBColumn;
    CustomMasterCxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    ReceivablesOpt: TcxRadioButton;
    PayablesOpt: TcxRadioButton;
    Panel5: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
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
    PartySds: TSQLDataSet;
    PartyDsp: TDataSetProvider;
    PartyCds: TClientDataSet;
    PartyCdsAddressbook_id: TIntegerField;
    PartyCdsOrganisation: TStringField;
    PartyCdsCity: TStringField;
    PartyCdsCities_id: TIntegerField;
    PartyCdsContact: TStringField;
    PartyDS: TDataSource;
    Detail1Cdsledgers_id: TIntegerField;
    Detail1Cdsaccounts_id: TIntegerField;
    Detail1Cdsaccountheads_id: TIntegerField;
    Detail1Cdsdetails: TStringField;
    Detail1Cdsdebit: TBCDField;
    Detail1Cdscredit: TBCDField;
    Detail1Cdsforexdebit: TBCDField;
    Detail1Cdsforexcredit: TBCDField;
    Detail1Cdsexchangerate: TFMTBCDField;
    Detail1Cdsbillno: TStringField;
    Detail1Cdsamountbilled: TBCDField;
    Detail1Cdsnotes: TBCDField;
    Detail1Cdstds: TBCDField;
    Detail1Cdsdivisions_id: TIntegerField;
    Detail1Cdsinvoiceno: TIntegerField;
    Detail1Cdsvoucherno: TIntegerField;
    Detail1Cdscurrencies_id: TIntegerField;
    Detail1Cdsyearref: TIntegerField;
    Detail1Cdsoffices_id: TIntegerField;
    AccountHeadsDS: TDataSource;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    cxYearRefEdit: TcxTextEdit;
    BalanceSds: TSQLDataSet;
    BalanceDsp: TDataSetProvider;
    BalanceCds: TClientDataSet;
    BalanceDS: TDataSource;
    BalanceCdsBalance: TFMTBCDField;
    BalanceCdsForexBalance: TFMTBCDField;
    BalanceCdsTotalTDS: TFMTBCDField;
    MasterCdsTotalDebitsTds: TFloatField;
    DBText1: TDBText;
    DBText2: TDBText;
    Detail1CdsFolio: TStringField;
    Detail1CdsAccountHead: TStringField;
    AccountHeadsCds: TClientDataSet;
    AccountHeadsSds: TSQLDataSet;
    AccountHeadsDsp: TDataSetProvider;
    AccountHeadsCdsaccountheads_id: TIntegerField;
    AccountHeadsCdsaccountheadsno: TIntegerField;
    AccountHeadsCdsdescription: TStringField;
    AccountHeadsCdsfolios_id: TIntegerField;
    AccountHeadsCdscompanies_id: TIntegerField;
    AccountHeadsCdsaddressbook_id: TIntegerField;
    AccountHeadsCdsactive: TBooleanField;
    cxButton1: TcxButton;
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
    ProfitLoss1: TMenuItem;
    N4: TMenuItem;
    Payments1: TMenuItem;
    All5: TMenuItem;
    ByParty3: TMenuItem;
    N5: TMenuItem;
    FORM10CCAE1: TMenuItem;
    BalanceCheck1: TMenuItem;
    N6: TMenuItem;
    ForexReport1: TMenuItem;
    cxButton2: TcxButton;
    FilterPopup: TPopupMenu;
    ByDateRange1: TMenuItem;
    MasterCdsOfficeName: TStringField;
    Label12: TLabel;
    DBText4: TDBText;
    Label13: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    Titlelabel: TLabel;
    BalanceCdsAccounts_id: TIntegerField;
    CustomMasterCxGridDBTableView1DBColumn1: TcxGridDBColumn;
    FolioSds: TSQLDataSet;
    FolioDsp: TDataSetProvider;
    FolioCds: TClientDataSet;
    FolioDS: TDataSource;
    FolioCdsfolios_id: TIntegerField;
    FolioCdsfolio: TStringField;
    FolioCdsfoliocategories_id: TIntegerField;
    AccountHeadsCdsFolioName: TStringField;
    N8: TMenuItem;
    RenumberfromthisVoucher1: TMenuItem;
    MasterCdsInternetBankingNo: TStringField;
    Label14: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    ProfitLossProvisional1: TMenuItem;
    BalanceSheetProvisional1: TMenuItem;
    ProfitLossProvisional21: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure PayablesOptClick(Sender: TObject);
    procedure ReceivablesOptClick(Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxYearRefEditKeyPress(Sender: TObject; var Key: Char);
    procedure CustomMasterCxGridDBTableView1KeyPress(Sender: TObject;
      var Key: Char);
    procedure GetAccountHeads;
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterCdsBeforeScroll(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsvouchernoChange(Sender: TField);
    procedure Detail1CdsyearrefChange(Sender: TField);
    procedure Detail1CdsinvoicenoChange(Sender: TField);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure DisplayGridColumns(x_Show: Boolean);
    function GetNextCashVoucherNo (x_YearRef,x_companies_id, x_offices_id: integer; x_option: integer): integer;
    procedure AccountSearch;
    procedure ComputeTds;
    function TotalTds: double;
    function DebitCreditMatch(x_Accounts_id: integer): Boolean;
    procedure FillVoucherDescription;
    procedure FillInvoiceDescription;
    function GetOfficeName(x_Offices_id: integer): string;
    procedure Detail1CdsCalcFields(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure PaymentAdvice1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
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
    procedure ProfitLoss1Click(Sender: TObject);
    procedure All5Click(Sender: TObject);
    procedure ByParty3Click(Sender: TObject);
    procedure FORM10CCAE1Click(Sender: TObject);
    procedure BalanceCheck1Click(Sender: TObject);
    procedure ForexReport1Click(Sender: TObject);
    procedure ByDateRange1Click(Sender: TObject);
    procedure FilterAccounts;
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsexchangerateChange(Sender: TField);
    procedure ComputeRupeeAmount;
    procedure Detail1CdsforexdebitChange(Sender: TField);
    procedure Detail1CdsforexcreditChange(Sender: TField);
    procedure RenumberfromthisVoucher1Click(Sender: TObject);
    procedure ProfitLossProvisional1Click(Sender: TObject);
    procedure BalanceSheetProvisional1Click(Sender: TObject);
    procedure ProfitLossProvisional21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountsForm: TAccountsForm;
  _AccountsForm_Level: integer;
  _AccountsForm_Companies_id: integer;
  _AccountsForm_Offices_id: integer;
  _AccountsForm_FromDate, _AccountsForm_ToDate: TDateTime;

implementation

uses BackOfficeDM, SearchSortFm, MainFm, GeneralUt, RptAccountPayAdviceFm,
  RptAccountsCreditAdviceFm, ReportParameterFm, RptCashBookFm,
  RptJournalFm, RptAccountAllCreditorsFm, RptAccountsTrsAllFm,
  TrialBalanceFm, RptAccountsCashVoucherFm, RptAccountsTrialBalAllFm,
  RptAccountsBalanceSheetFm, RptAccountsProfitLossFm,
  RptAccountsPaymentMadeFm, RptAccounts10CCAEAnnexFm,
  RptAccountsBalanceCheckFm, RptAccountsForexFm;

{$R *.dfm}

procedure TAccountsForm.FormCreate(Sender: TObject);
begin

  MasterCds.Active := False;
  MasterCds.Filter := 'Companies_id = ' + IntToStr(_AccountsForm_Companies_id) + ' ' +
    'AND Offices_id = ' + IntToStr(_AccountsForm_Offices_id) + ' ' +
    'AND TransactionDate >= ''' + FormatDateTime('dd/mm/yyyy',g_FromDate) +
    ''' AND TransactionDate <=''' + FormatDateTime('dd/mm/yyyy',g_ToDate) + ''' ';


  MasterCds.Filtered := True;

  MasterCdsName := 'Accounts';
  MasterKeyField := 'Accounts_id';

  Detail1CdsName := 'Ledgers';
  Detail1KeyField := 'Ledgers_id';

  AdmLevel := _AccountsForm_Level;

  inherited;

  PartyCds.Active := True;

  BackOfficeDataModule.DivisionSds.Active := False;
  BackOfficeDataModule.DivisionSds.CommandText :=
    'SELECT * FROM Divisions WHERE Companies_id = ' + IntToStr(g_companies_id) + ' ' +
    'ORDER BY Division';
  BackOfficeDataModule.DivisionSds.Active := True;
  BackOfficeDataModule.DivisionCds.Active := True;

  BackOfficeDataModule.CurrenciesCds.Active := True;

  AccountHeadsSds.Close;
  AccountHeadsSds.CommandText := 'SELECT * FROM AccountHeads ' +
   ' WHERE companies_id = ' + IntToStr(_AccountsForm_Companies_id) + ' ' +
   ' ORDER BY Accountheads_id, Description ';
  AccountHeadsSds.Open;
  AccountHeadsCds.Close;
  AccountHeadsCds.Open;

  BalanceCds.Close;
  BalanceCds.Open;

  BackOfficeDataModule.OfficeCds.Close;
  BackOfficeDataModule.OfficeCds.Open;

  BalanceCds.Active := True;


  DisplayGridColumns(True);

  AccountsForm.Caption := GetOfficeName(_AccountsForm_Offices_id) + ' Office' ;
  AccountsForm.TitleLabel.Caption := GetOfficeName(_AccountsForm_Offices_id) + ' Office' ;

  cxYearRefEdit.Text := IntToStr(YearOf(g_ToDate));

end;

function TAccountsForm.GetOfficeName(x_Offices_id: integer): string;
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

procedure TAccountsForm.DisplayGridColumns(x_Show: Boolean);
begin

  CustomMasterCxGridDBTableView1VoucherNo.Visible := x_Show;
  CustomMasterCxGridDBTableView1BillNo.Visible := x_Show;
  CustomMasterCxGridDBTableView1Divisions_id.Visible := (not x_Show);
  CustomMasterCxGridDBTableView1InvoiceNo.Visible := (not x_Show);
  CustomMasterCxGridDBTableView1Notes.Visible := x_Show;

end;


procedure TAccountsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AccountsForm := nil;
end;

procedure TAccountsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Companies_id'] := _AccountsForm_Companies_id;
  MasterCds['Offices_id'] := _AccountsForm_Offices_id;
  MasterCds['TransactionDate'] := Date();
  MasterCds['CashVoucher'] := True;
  MasterCds['YearRef'] := CalcCentury(Date(),4);

end;

procedure TAccountsForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_option : integer;
begin
  inherited;

  if MasterCds['TransactionDate'] = null then
    raise Exception.Create ('Please enter the Transaction Date');

  MasterCds['YearRef'] := CalcCentury(MasterCds['TransactionDate'],4);

  if MasterCds['Companies_id'] = null then
    raise Exception.Create ('Please enter company');

  if MasterCds['Offices_id'] = null then
    raise Exception.Create ('Please enter office');

  if MasterCds['TransactionDate'] = null then
    raise Exception.Create ('Please enter transation date');

  if MasterCds['CashVoucher'] = null then
    raise Exception.Create ('Please enter if cash voucher');

  if (MasterCds.State = dsInsert) then
    begin

      if MasterCds['CashVoucher'] = True then
        x_option := 1
      else
        x_option := 2;

      MasterCds['CashVoucherNo'] :=
        GetNextCashVoucherNo (MasterCds['YearRef'],MasterCds['companies_id'], MasterCds['offices_id'], x_option);
    end;

  //if (MasterCds['CashVoucher'] = true) and
  if ((MasterCds['CashVoucherNo']=null) or (MasterCds['CashVoucherNo']<1)) then
    raise Exception.create ('Cannot save cash voucher unless cash voucher number > 0');

end;

function TAccountsForm.GetNextCashVoucherNo (x_YearRef,x_companies_id, x_offices_id: integer; x_option: integer): integer;
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


procedure TAccountsForm.PayablesOptClick(Sender: TObject);
begin
  inherited;
  DisplayGridColumns(True);
end;

procedure TAccountsForm.ReceivablesOptClick(Sender: TObject);
begin
  inherited;
  DisplayGridColumns(False);
end;

procedure TAccountsForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    AccountSearch;
end;

procedure TAccountsForm.AccountSearch;
begin

  if trim(cxYearRefEdit.Text) = '' then
    cxYearRefEdit.Text := CalcCentury(Date(),4);

  try
    MasterCds.DisableControls;

    // Search By ID
    if cxSearchGB.ItemIndex = 0 then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;Accounts_id',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
       end

    // Search By Cheque
    else if cxSearchGB.ItemIndex = 1 then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;ChequeNo',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Cash Voucher
    else if cxSearchGB.ItemIndex = 2 then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher;YearRef',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text),True,StrToInt(cxYearRefEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Journal Voucher
    else if cxSearchGB.ItemIndex = 3 then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher;YearRef',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text),False,StrToInt(cxYearRefEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Draft
    else if  cxSearchGB.ItemIndex = 4 then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;DraftNo',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            StrToInt(cxSearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end

    // Search By Internet Banking No
    else if  cxSearchGB.ItemIndex = 5 then
      begin
        if not MasterCds.Locate('Companies_id;Offices_id;InternetBankingNo',
          VarArrayOf([MasterCds['Companies_id'],MasterCds['Offices_id'],
            cxSearchEdit.Text]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end;

    MasterCds.EnableControls;

  except
    MasterCds.EnableControls;
  end;

end;


procedure TAccountsForm.cxYearRefEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    AccountSearch;
end;

procedure TAccountsForm.CustomMasterCxGridDBTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;

  if (key=#13) and (CustomMasterCxGridDBTableView1Accountheads_id.Focused = True) then
    GetAccountHeads;

end;

procedure TAccountsForm.GetAccountHeads;
var
 i : integer;
begin

  if Detail1Cds.State = dsBrowse then
    Detail1Cds.Edit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, ' +
        'AH.Folios_id, F.Folio, AH.Accountheads_id ' +
        'FROM AccountHeads AS AH LEFT JOIN Folios  AS F ' +
        'ON AH.Folios_id = F.Folios_id ' +
        'WHERE AH.Accountheads_id = ' + IntToStr(Detail1Cds['AccountHeads_id']) + ' ' +
        'AND AH.Companies_id = ' + IntToStr(Detail1Cds['Companies_id']) + ' ' +
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
      if Detail1Cds.State = dsBrowse then
        Detail1Cds.Edit;
      if SearchSortForm.SearchCds['AccountHeads_id'] <> null then
        Detail1Cds['AccountHeads_id'] := SearchSortForm.SearchCds['AccountHeads_id'];
    end;

  SearchSortForm.Release;
  SearchSortForm := nil;

end;


procedure TAccountsForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_count: integer;
begin
  inherited;

  QueryString := 'SELECT x_count = count(*) from Ledgers where Accounts_id = ' + IntTOStr(MasterCds['Accounts_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  if (x_count = 0) and (Detail1Cds.State = dsBrowse) then
    begin
      Detail1Cds.Insert;
      exit;
    end;

  if (CustomMasterCxGridDBTableView1Tds.Focused = True) then
    ComputeTds;

end;

procedure TAccountsForm.ComputeTds;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  tds: double;
  ClickedOK: Boolean;
  NewString: string;
begin

  if Detail1Cds.State = dsBrowse then
    Detail1Cds.Edit;

  if Detail1Cds['Debit'] <> null then
    begin

      QueryString := 'SELECT numericvalue FROM defaults WHERE defaults_id = 6';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      NewString := FloatToStr(GpSds['numericvalue']);

      ClickedOK:= InputQuery('Enter TDS %', 'Enter TDS %', NewString);

      if ClickedOK then
        begin

          tds := (StrToFloat(NewString)/100.0) *  Detail1Cds['Debit'];

          Detail1Cds['TDS'] := round(tds+0.01);

        end;

      GpSds.Free;

    end;

end;

function TAccountsForm.TotalTds: double;
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


function TAccountsForm.DebitCreditMatch(x_Accounts_id: integer): Boolean;
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

procedure TAccountsForm.MasterCdsBeforeScroll(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['Accounts_id'] = null then
    exit;

  if not DebitCreditMatch(MasterCds['Accounts_id']) then
    ShowMessage ('Debits & Credits do not match');

end;

procedure TAccountsForm.Detail1CdsAfterInsert(DataSet: TDataSet);
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
    Detail1Cds['Currencies_id'] := GpSds['number'];

  QueryString := 'SELECT number FROM Defaults WHERE Item = ''Division'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['number']<>null) then
    Detail1Cds['Divisions_id'] := GpSds['number'];

  Detail1Cds['TDS'] := 0.0;
  Detail1Cds['ExchangeRate'] := 1.0;
  Detail1Cds['ForexDebit'] := 0.0;
  Detail1Cds['ForexCredit'] := 0.0;
  if MasterCds['YearRef'] <> null then
    Detail1Cds['YearRef'] := MasterCds['YearRef'];

  GpSds.Free;

end;

procedure TAccountsForm.FillVoucherDescription;
var
  GpSds: TSQLDataSet;
  QueryString, d: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (Detail1Cds['VoucherNo']<>null) and (Detail1Cds['YearRef']<>null) and
     (Detail1Cds['VoucherNo']>0) then
    begin

      QueryString := 'SELECT V.Description,V.TourLeader,V.TourRef ' +
        'FROM Vouchers AS V WHERE V.VoucherNo = ' +
        IntToStr(Detail1Cds['VoucherNo']) + ' AND ' +
        'V.YearRef = ' + IntToStr(Detail1Cds['YearRef']) + ' ' +
        'AND v.IncludeInBalanceSheet = 1';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      d := '';

      if not GpSds.EOF then
        begin

          if GpSds['Description'] <> null then
            d := d + Trim(GpSds['Description']) + ' ';

          if GpSds['TourLeader'] <> null then
            d := d + Trim(GpSds['TourLeader']) + ' ';

          if GpSds['TourRef'] <> null then
            d := d + Trim(GpSds['TourRef']) + ' ';

          Detail1Cds['Details'] := Uppercase(d);

        end;

    end;

  GpSds.Free;

end;

procedure TAccountsForm.FillInvoiceDescription;
var
  GpSds: TSQLDataSet;
  d: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (Detail1Cds['InvoiceNo']<>null) and (Detail1Cds['YearRef']<>null) and
     (Detail1Cds['InvoiceNo']>0) then
    begin
      GPSds.CommandText := 'SELECT I.MasterCode, I.MasterDepartureDate, Currencies_id ' +
        'FROM Invoices I ' +
        'WHERE I.InvoiceNo = ' + IntToStr(Detail1Cds['InvoiceNo']) +
        ' AND I.YearRef = ' + IntToStr(Detail1Cds['YearRef']) +
        ' AND divisions_id = ' + IntToStr(Detail1Cds['divisions_id']);
      GpSds.Open;

      GpSds.First;

      d := '';

      if not GpSds.EOF then
        begin

          if GpSds['MasterCode'] <> null then
            d := d + Trim(GpSds['MasterCode']) + ' / ';

          if GpSds['MasterDepartureDate'] <> null then
            d := d + FormatDateTime('dd/mm/yyyy',GpSds['MasterDepartureDate']) + ' ';

          Detail1Cds['Details'] := Uppercase(d);

          if GpSds['Currencies_id'] <> null then
            Detail1Cds['Currencies_id'] := GpSds['Currencies_id'];

        end;

    end;

  GpSds.Free;

end;

procedure TAccountsForm.Detail1CdsvouchernoChange(Sender: TField);
begin
  inherited;
  FillVoucherDescription;
end;

procedure TAccountsForm.Detail1CdsyearrefChange(Sender: TField);
begin
  inherited;
  FillVoucherDescription;
  FillInvoiceDescription
end;

procedure TAccountsForm.Detail1CdsinvoicenoChange(Sender: TField);
begin
  inherited;
  FillInvoiceDescription;
end;

procedure TAccountsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Detail1Cds['Details'] = null then
    raise Exception.Create('Please enter the details');

  Detail1Cds['Details'] := UpperCase(Detail1Cds['Details']);

  if Detail1Cds['Currencies_id'] = null then
    raise Exception.Create('Please enter the currency');

  if Detail1Cds['Accounts_id'] = null then
    raise Exception.Create('Please enter the header first');

  if Detail1Cds['AccountHeads_id'] = null then
    raise Exception.Create('Please enter the account head');

  if Detail1Cds['Debit'] = null then
    Detail1Cds['Debit'] := 0;

  if Detail1Cds['Credit'] = null then
    Detail1Cds['Credit'] := 0;

  if Detail1Cds['ForexDebit'] = null then
    Detail1Cds['ForexDebit'] := 0;

  if Detail1Cds['ForexCredit'] = null then
    Detail1Cds['ForexCredit'] := 0;

  if Detail1Cds['TDS'] = null then
    Detail1Cds['TDS'] := 0;

end;

procedure TAccountsForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  MasterCds['TotalDebitsTds'] := TotalTds;
end;

procedure TAccountsForm.Detail1CdsCalcFields(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if Detail1Cds['Accountheads_id'] = null then
    begin
      Detail1Cds['Folio'] := '';
      Detail1Cds['AccountHead'] := '';
    end
  else
    begin

      GpSds.Close;
      GpSds.CommandText := 'SELECT Description, Accountheads_id, F.Folios_id, Folio, '+
       ' AccountHeadsNo ' +
       ' FROM AccountHeads AH LEFT JOIN Folios F ' +
       ' ON AH.Folios_id = F.Folios_id ' +
       ' WHERE AH.AccountHeads_id = ' + IntToStr(Detail1Cds['AccountHeads_id']) +
       ' AND AH.Companies_id = ' + IntToStr(_AccountsForm_Companies_id) + ' ' +
       ' ORDER BY Accountheads_id, Description ';
      GpSds.Open;

      if (not GpSds.EOF) then
        begin
          if GpSds['Folio'] <> null then
            Detail1Cds['Folio'] := GpSds['Folio']
          else
            Detail1Cds['Folio'] := '';

          if GpSds['Description'] <> null then
            Detail1Cds['AccountHead'] := GpSds['Description']
          else
            Detail1Cds['AccountHead'] := '';
        end;
    end;

  GpSds.Free;

end;

procedure TAccountsForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '' ;
  GpSds.CommandText := 'SELECT COUNT(*) AS Cnt FROM Ledgers ' +
    ' WHERE Accounts_id = ' + IntToStr(MasterCdsaccounts_id.Value);
  GpSds.Open;

  if GpSds['Cnt'] > 0 then
    begin
      if MessageDlg('This account has ledgers.Delete...? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

          GpSds.Close;
          GpSds.CommandText := 'DELETE FROM Ledgers WHERE Accounts_id = ' +
            IntToStr(MasterCdsaccounts_id.Value);
          GpSds.ExecSQL;

          Detail1Cds.Active := False;
          Detail1Cds.Active := True;

        end
      else
        Abort;
    end;

  GpSds.Free;


end;

procedure TAccountsForm.PaymentAdvice1Click(Sender: TObject);
begin
  inherited;

  if MasterCds['Accounts_id'] = Null then
    Exit;

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

procedure TAccountsForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TAccountsForm.CreditAdvice1Click(Sender: TObject);
begin
  inherited;

  if MasterCds['Accounts_id'] = Null then
    Exit;

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

procedure TAccountsForm.CashBook1Click(Sender: TObject);
var
  Accounts_id, i: integer;
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: word;
begin

 _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

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

      Accounts_id := 0;
      if (not SearchSortForm.SearchCds.EOF) and (SearchSortForm.SearchCds['AccountHeads_id'] <> Null) then
        Accounts_id := SearchSortForm.SearchCds['AccountHeads_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'Exec p_CashBook ' + IntToStr(Accounts_id) + ',' +
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

procedure TAccountsForm.BankBook1Click(Sender: TObject);
var
  Accounts_id, i : integer;
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: word;
begin


 _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

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

      Accounts_id := 0;
      if (not SearchSortForm.SearchCds.EOF) and (SearchSortForm.SearchCds['AccountHeads_id'] <> Null) then
        Accounts_id := SearchSortForm.SearchCds['AccountHeads_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'Exec p_CashBook ' + IntToStr(Accounts_id) + ',' +
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

procedure TAccountsForm.BankBookForex1Click(Sender: TObject);
var
  Accounts_id, i : integer;
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: word;
begin


 _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

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

      Accounts_id := 0;
      if (not SearchSortForm.SearchCds.EOF) and (SearchSortForm.SearchCds['AccountHeads_id'] <> Null) then
        Accounts_id := SearchSortForm.SearchCds['AccountHeads_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := 'Exec p_CashBook ' + IntToStr(Accounts_id) + ',' +
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

procedure TAccountsForm.JournalBook1Click(Sender: TObject);
var
  xYear,xMonth,xDay: word;
begin

  _inputstr := '22200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

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

procedure TAccountsForm.All1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

      RptAccountAllCreditorsForm.QuickRepCreditors.PreviewModal;

      RptAccountAllCreditorsForm.Release;
      RptAccountAllCreditorsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TAccountsForm.ByParty1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '20000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

procedure TAccountsForm.Summary1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

procedure TAccountsForm.All2Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin


  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

procedure TAccountsForm.ByParty2Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin

  _inputstr := '20000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

procedure TAccountsForm.Summary2Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin


  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

procedure TAccountsForm.GenerateSundryCreditors1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.Close;
      GpSds.CommandText := '';
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

procedure TAccountsForm.All3Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
  office_str: string;
begin
  _inputstr := '22100000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      office_str := ' ';

      if ReportParameterForm.cxOfficeCkb.Checked = True then
        office_str := ' AND Offices_id = ' + VarToStr(_ret1[3]) ;

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
            ' WHERE (1=1)' + office_str  + ' ' +
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

procedure TAccountsForm.SingleAccount1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
  office_str: string;
begin
  _inputstr := '22100000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      office_str := ' ';

      if ReportParameterForm.cxOfficeCkb.Checked = True then
         office_str := ' AND Offices_id = ' + VarToStr(_ret1[3]) + ' ' ;

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
                IntToStr(_AccountsForm_Companies_id) + ')' + ' WHERE (1=1) ' +
                office_str  +
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

procedure TAccountsForm.CashVoucher1Click(Sender: TObject);
var
  cv_tf,cv_label: string;
begin
  _inputstr := '02200022';

  if ReportParameterForm = Nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;
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
          cv_tf := '1';
          cv_label := 'Cash Voucher';
        end
      else
        begin
          cv_tf := '0';
          cv_label := 'Journal Voucher';
        end;

      if RptAccountsCashVoucherForm = nil then
        Application.CreateForm(TRptAccountsCashVoucherForm, RptAccountsCashVoucherForm);

      RptAccountsCashVoucherForm.CashVoucherSds.Close;
      RptAccountsCashVoucherForm.CashVoucherSds.CommandText := '';
      RptAccountsCashVoucherForm.CashVoucherSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_Cashvoucher(' +
                    VarToStr(_ret1[2]) + ',' + VarToStr(_ret1[3]) + ',' +
                    VarToStr(_ret1[8]) + ',' + VarToStr(_ret2[8]) + ',' +
                    ReportParameterForm.YearEdit.Text + ',' + cv_tf + ')' ;

//                    VarToStr(_ret2[7]) + ',' + cv_tf + ')' ;

//                    VouRangeForm.FromVouEdit.Text + ',' + VouRangeForm.ToVouEdit.Text + ',' +
//                    VouRangeForm.YearRefEdit.Text + ',' + cv_tf + ')' ;

      RptAccountsCashVoucherForm.CashVoucherSds.Open;
      RptAccountsCashVoucherForm.CashVoucherCds.Open;
      RptAccountsCashVoucherForm.CashVoucherCds.Refresh;

      RptAccountsCashVoucherForm.CashVoucherLabel.Caption := cv_label;

      RptAccountsCashVoucherForm.CompanyOfficeLabel.Caption :=
        Trim(ReportParameterForm.cxCompanyLCMB.Text) + ', ' + Trim(ReportParameterForm.cxOfficeLCMB.Text);

      RptAccountsCashVoucherForm.QuickRep1.PreviewModal;

      RptAccountsCashVoucherForm.Release;
      RptAccountsCashVoucherForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := Nil;


end;

procedure TAccountsForm.All4Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
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

procedure TAccountsForm.SelectedAccount1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
  GpSds: TSQLDataSet;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

procedure TAccountsForm.BalanceSheet1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
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

procedure TAccountsForm.ProfitLoss1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

procedure TAccountsForm.All5Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

procedure TAccountsForm.ByParty3Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

procedure TAccountsForm.FORM10CCAE1Click(Sender: TObject);
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

procedure TAccountsForm.BalanceCheck1Click(Sender: TObject);
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

procedure TAccountsForm.ForexReport1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
  QryStr :String;
begin
  QryStr := '';

  _inputstr := '22100000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := _AccountsForm_Offices_id;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
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
             QryStr:= ' AND Offices_id = ' + VarToStr(_ret1[3]);

          RptAccountsForexForm.ForexSds.Close;
          RptAccountsForexForm.ForexSds.CommandText := '';
          RptAccountsForexForm.ForexSds.CommandText := 'SELECT * FROM fn_Rpt_Accounts_Forex( ' +
                VarToStr(_ret1[2]) + ' ,' +
                IntToStr(TrialBalanceForm.MasterCds['AccountHeads_id']) + ' ,' + ''' ' +
                FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''' , ' + ''' ' +
                FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit2.Date) + ''' )'  +
                ' WHERE (1=1) ' + QryStr ;

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

procedure TAccountsForm.ByDateRange1Click(Sender: TObject);
begin
  inherited;

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _AccountsForm_FromDate := ReportParameterForm.cxDateEdit1.Date;
      _AccountsForm_ToDate := ReportParameterForm.cxDateEdit2.Date;

      FilterAccounts;

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TAccountsForm.FilterAccounts;
begin

  MasterCds.Active := False;

  MasterCds.Filter := 'Companies_id = ' + IntToStr(_AccountsForm_Companies_id) + ' ' +
    'AND Offices_id = ' + IntToStr(_AccountsForm_Offices_id) + ' ' +
    'AND TransactionDate >= ''' + FormatDateTime('dd/mm/yyyy',_AccountsForm_FromDate) +
    ''' AND TransactionDate <= ''' + FormatDateTime('dd/mm/yyyy',_AccountsForm_ToDate) + ''' ';

  MasterCds.Filtered := True;

  MasterCds.Active := True;

end;


procedure TAccountsForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BalanceCds.Close;
  BalanceCds.Open;
end;

procedure TAccountsForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BalanceCds.Close;
  BalanceCds.Open;

end;

procedure TAccountsForm.Detail1CdsexchangerateChange(Sender: TField);
begin
  inherited;
  ComputeRupeeAmount;
end;

procedure TAccountsForm.ComputeRupeeAmount;
begin

  if (Detail1Cds['ExchangeRate'] <> null) and (Detail1Cds['ForexDebit'] <> null) then
    Detail1Cds['Debit'] := Detail1Cds['ExchangeRate'] * Detail1Cds['ForexDebit'];

  if (Detail1Cds['ExchangeRate'] <> null) and (Detail1Cds['ForexCredit'] <> null) then
    Detail1Cds['Credit'] := Detail1Cds['ExchangeRate'] * Detail1Cds['ForexCredit'];
end;


procedure TAccountsForm.Detail1CdsforexdebitChange(Sender: TField);
begin
  inherited;
  ComputeRupeeAmount;
end;

procedure TAccountsForm.Detail1CdsforexcreditChange(Sender: TField);
begin
  inherited;
  ComputeRupeeAmount;
end;

procedure TAccountsForm.RenumberfromthisVoucher1Click(Sender: TObject);
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
  GpSds.CommandText := 'Exec p_RenumberCashVouchers ' +
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


procedure TAccountsForm.ProfitLossProvisional1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

procedure TAccountsForm.BalanceSheetProvisional1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

procedure TAccountsForm.ProfitLossProvisional21Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: Word;
begin
  _inputstr := '22000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _AccountsForm_Companies_id;

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

end.
