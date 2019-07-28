unit Accounts2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, cxContainer,
  cxCheckBox, cxDBEdit, cxTextEdit, cxNavigator, cxDBNavigator,
  cxRadioGroup, cxMemo, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxLookAndFeelPainters,
  cxButtons, CustomMasterGridFm;

type
  TAccounts2Form = class(TCustomMasterCxGridForm)
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
    MainMenu1: TMainMenu;
    Utilities1: TMenuItem;
    Reports1: TMenuItem;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    Panel3: TPanel;
    ReceivablesOpt: TcxRadioButton;
    PayablesOpt: TcxRadioButton;
    Panel4: TPanel;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    IdRB: TcxRadioButton;
    JvRB: TcxRadioButton;
    DraftRB: TcxRadioButton;
    ChequeRB: TcxRadioButton;
    CvRB: TcxRadioButton;
    AccountsDS: TDataSource;
    AccountsCDS: TClientDataSet;
    AccountsDSP: TDataSetProvider;
    AccountsSDS: TSQLDataSet;
    AccountsCDSaccounts_id: TIntegerField;
    AccountsCDSaddressbook_id: TIntegerField;
    AccountsCDStransactiondate: TSQLTimeStampField;
    AccountsCDSchequeno: TIntegerField;
    AccountsCDSdatecleared: TSQLTimeStampField;
    AccountsCDSdraftno: TIntegerField;
    AccountsCDSoffices_id: TIntegerField;
    AccountsCDScashvoucherno: TIntegerField;
    AccountsCDScomments: TMemoField;
    AccountsCDScashvoucher: TBooleanField;
    AccountsCDSyearref: TIntegerField;
    AccountsCDScompanies_id: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    PartyDS: TDataSource;
    PartyCDS: TClientDataSet;
    PartyDSP: TDataSetProvider;
    PartySDS: TSQLDataSet;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    PartyCDSOrganisation: TStringField;
    PartyCDSaddressbook_id: TIntegerField;
    MasterCdsledgers_id: TIntegerField;
    MasterCdsaccounts_id: TIntegerField;
    MasterCdsaccountheads_id: TIntegerField;
    MasterCdsdetails: TStringField;
    MasterCdsdebit: TBCDField;
    MasterCdscredit: TBCDField;
    MasterCdsforexdebit: TBCDField;
    MasterCdsforexcredit: TBCDField;
    MasterCdsexchangerate: TFMTBCDField;
    MasterCdsbillno: TStringField;
    MasterCdsamountbilled: TBCDField;
    MasterCdsnotes: TBCDField;
    MasterCdstds: TBCDField;
    MasterCdsdivisions_id: TIntegerField;
    MasterCdsinvoiceno: TIntegerField;
    MasterCdsvoucherno: TIntegerField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsyearref: TIntegerField;
    MasterCdsoffices_id: TIntegerField;
    AccHeadNoStrDS: TDataSource;
    AccHeadNoStrCDS: TClientDataSet;
    AccHeadNoStrDSP: TDataSetProvider;
    AccHeadNoStrSDS: TSQLDataSet;
    AccHeadNoStrCDSDescription: TStringField;
    AccHeadNoStrCDSAccountheads_id: TIntegerField;
    AccHeadNoStrCDSFolios_id: TIntegerField;
    AccHeadNoStrCDSFolio: TStringField;
    AccHeadNoStrCDSAccountHeadsNo: TIntegerField;
    AccHeadNoStrCDSAccountHeadsNoStr: TStringField;
    CustomMasterCxGridDBTableView1accountheads_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1details: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1debit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1credit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1forexdebit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1forexcredit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1exchangerate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1billno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1amountbilled: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1notes: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tds: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1divisions_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1invoiceno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1voucherno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1currencies_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1yearref: TcxGridDBColumn;
    BalanceDS: TDataSource;
    BalanceCDS: TClientDataSet;
    BalanceDSP: TDataSetProvider;
    BalanceSDS: TSQLDataSet;
    BalanceCDSBalance: TFMTBCDField;
    BalanceCDSForexBalance: TFMTBCDField;
    BalanceCDSTotalTDS: TFMTBCDField;
    BalanceCDSAccounts_id: TIntegerField;
    PartyCDScities_id: TIntegerField;
    OfficeNameLbl: TLabel;
    DivisionDS: TDataSource;
    DivisionCDS: TClientDataSet;
    DivisionDSP: TDataSetProvider;
    DivisionSDS: TSQLDataSet;
    DivisionCDSDivisions_id: TIntegerField;
    DivisionCDSDivision: TStringField;
    DivisionCDSCompanies_id: TIntegerField;
    AccountHeadLbl: TLabel;
    FolioLbl: TLabel;
    TDSDS: TDataSource;
    TDSCDS: TClientDataSet;
    TDSDSP: TDataSetProvider;
    TDSSDS: TSQLDataSet;
    TDSCDSDb: TFMTBCDField;
    PopupMenu1: TPopupMenu;
    Clear1: TMenuItem;
    cxDBTextEdit4: TcxDBTextEdit;
    YearRefEdit: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure AccountsCDSAfterInsert(DataSet: TDataSet);
    procedure AccountsCDStransactiondateChange(Sender: TField);
    procedure AccountsCDSBeforePost(DataSet: TDataSet);
    procedure AccountsCDSAfterPost(DataSet: TDataSet);
    procedure AccountsCDSBeforeEdit(DataSet: TDataSet);
    procedure AccountsCDSAfterScroll(DataSet: TDataSet);
    procedure AccountsCDSBeforeScroll(DataSet: TDataSet);
    procedure AccountsCDSBeforeDelete(DataSet: TDataSet);
    procedure AccountsCDSAfterDelete(DataSet: TDataSet);

    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsyearrefChange(Sender: TField);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsvouchernoChange(Sender: TField);
    procedure MasterCdsforexcreditChange(Sender: TField);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsexchangerateChange(Sender: TField);
    procedure MasterCdsinvoicenoChange(Sender: TField);
    procedure MasterCdsforexdebitChange(Sender: TField);
//~~~
    procedure PayablesOptClick(Sender: TObject);
    procedure ReceivablesOptClick(Sender: TObject);

    procedure CloseBtnClick(Sender: TObject);
    procedure DisplayBalance;
    procedure FillVoucherDescription;
    procedure FillInvoiceDescription;
    procedure Clear1Click(Sender: TObject);
    procedure CustomMasterCxGridDblClick(Sender: TObject);
    procedure CustomMasterCxGridDBTableView1KeyPress(Sender: TObject;
      var Key: Char);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure SearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure Search;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Accounts2Form: TAccounts2Form;
  _AccountsForm_Level: Integer;
  _AccountsForm_CompanyID, _AccountsForm_OfficeID: integer;
  _AccountsTbl_State :TDataSetState;
  _Offices_id: Integer;
implementation

uses BackOfficeDM, BoQryFm, MainFm, GeneralUt, AccountHeadsSrchFm,
  cxGridDBDataDefinitions;

{$R *.dfm}

procedure TAccounts2Form.Search;
begin

  try
    AccountsCDS.DisableControls;

    // Search By ID
    if IdRB.Checked then
      begin
        if not AccountsCDS.Locate('Companies_id;Offices_id;Accounts_id',
          VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
            StrToInt(SearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
       end
    // Search By Cheque
    else if ChequeRB.Checked then
      begin
        if not AccountsCDS.Locate('Companies_id;Offices_id;ChequeNo',
          VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
            StrToInt(SearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end
    // Search By Cash Voucher
    else if CvRB.Checked then
      begin
        if (Length(YearRefEdit.Text) > 0) and (YearRefEdit.Text <> '') then
          begin
            if not AccountsCDS.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher;YearRef',
              VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
                StrToInt(SearchEdit.Text),True,StrToInt(YearRefEdit.Text)]),[]) then
              MessageDlg ('Not Found', mtError, [mbOK],0);
          end
        else
          begin
            if not AccountsCDS.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher',
              VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
                StrToInt(SearchEdit.Text),True]),[]) then
              MessageDlg ('Not Found', mtError, [mbOK],0);
          end;
      end
    // Search By Journal Voucher
    else if JvRB.Checked then
      begin
        if (Length(YearRefEdit.Text) > 0) and (YearRefEdit.Text <> '')then
          begin
            if not AccountsCDS.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher;YearRef',
              VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
                StrToInt(SearchEdit.Text),False,StrToInt(YearRefEdit.Text)]),[]) then
              MessageDlg ('Not Found', mtError, [mbOK],0);
          end
        else
          begin
            if not AccountsCDS.Locate('Companies_id;Offices_id;CashVoucherNo;CashVoucher',
              VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
                StrToInt(SearchEdit.Text),False]),[]) then
              MessageDlg ('Not Found', mtError, [mbOK],0);
          end;
      end
    // Search By Draft
    else if DraftRB.Checked then
      begin
        if not AccountsCDS.Locate('Companies_id;Offices_id;DraftNo',
          VarArrayOf([AccountsCDS['Companies_id'],AccountsCDS['Offices_id'],
            StrToInt(SearchEdit.Text)]),[]) then
          MessageDlg ('Not Found', mtError, [mbOK],0);
      end;


    AccountsCDS.EnableControls;

  except
    AccountsCDS.EnableControls;
  end;
end;

procedure TAccounts2Form.FillInvoiceDescription;
var
  tQry: TSQLQuery;
  d: string;
begin

  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (MasterCDS['InvoiceNo']<>null) and (MasterCDS['YearRef']<>null) and
     (MasterCDS['InvoiceNo'] > 0 ) then
    begin
      tQry.SQL.Clear;
      tQry.SQL.Add ('SELECT I.TourCode, I.TourDate, Currencies_id ' +
        'FROM Invoices I WHERE I.InvoiceNo = ' + IntToStr(MasterCDS['InvoiceNo']) + ' AND ' +
        'I.YearRef = ' + IntToStr(MasterCDS['YearRef']) + ' AND Divisions_id = ' + IntToStr(MasterCDS['Divisions_id']));
      tQry.Open;

      d := '';
      if not tQry.EOF then
        begin
          if tQry['TourCode'] <> null then
            d := d + Trim(tQry['TourCode']) + ' / ';
          if tQry['TourDate'] <> null then
            d := d + FormatDateTime('dd/mm/yyyy',tQry['TourDate']) + ' ';

          MasterCDS['Details'] := Uppercase(d);

          if tQry['Currencies_id'] <> null then
            MasterCDS['Currencies_id'] := tQry['Currencies_id'];
        end;
    end;
  tQry.Free;
end;

procedure TAccounts2Form.FillVoucherDescription;
var
  tQry: TSQLQuery;
  d: string;
begin

  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (MasterCDS['VoucherNo']<>null) and (MasterCDS['YearRef']<>null) and
     (MasterCDS['VoucherNo'] > 0) then
    begin
      tQry.SQL.Clear;
      tQry.SQL.Add ('SELECT Description, TourLeader, TourRef ' +
        'FROM Vouchers WHERE VoucherNo = ' + IntToStr(MasterCDS['VoucherNo']) + ' AND ' +
        'YearRef = ' + IntToStr(MasterCDS['YearRef']) );
      tQry.Open;

      tQry.First;

      d := '';

      if not tQry.EOF then
        begin
          if tQry['Description'] <> null then
            d := d + Trim(tQry['Description']) + ' ';

          if tQry['TourLeader'] <> null then
            d := d + Trim(tQry['TourLeader']) + ' ';

          if tQry['TourRef'] <> null then
            d := d + Trim(tQry['TourRef']) + ' ';

          MasterCDS['Details'] := Uppercase(d);
        end;
    end;
  tQry.Free;
end;

procedure TAccounts2Form.DisplayBalance;
begin
  BalanceSDS.Active := False;
  BalanceCDS.Active := False;
  BalanceSDS.Params[0].Value := AccountsCDSaccounts_id.Value;
  BalanceSDS.Active := True;
  BalanceCDS.Active := True;
end;

procedure TAccounts2Form.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TAccounts2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  AccountsForm := nil;
end;

procedure TAccounts2Form.FormCreate(Sender: TObject);
begin
  //Activate accounts table
  AccountsCDS.Active := False;
  AccountsCDS.Active := True;

  //Activate ledgers table
  MasterCdsName := 'Ledgers';
  MasterKeyField := 'Ledgers_id';
  AdmLevel := _AccountsForm_Level;

  //Activate all look up query components
  PartyCDS.Active := False;
  PartyCDS.Active := True;
  AccHeadNoStrCDS.Active := False;
  AccHeadNoStrCDS.Active := True;
  DivisionSDS.Active := False;
  DivisionCDS.Active := False;
  DivisionSDS.Params[0].Value := g_companies_id;
  DivisionSDS.Active := True;
  DivisionCDS.Active := True;

  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active := True;
  inherited;
  //Activate the TDS Query
{  TDSSDS.Active := False;
  TDSCDS.Active := False;
  TDSSDS.Params[0].Value := AccountsCDS['TransactionDate'];
  TDSSDS.Params[1].Value := StrToInt(AccountsCDS['AddressBook_id']);
  TDSSDS.Active := True;
  TDSCDS.Active := True;
 }
  OfficeNameLbl.Caption := VarToStr(BoQryForm.OfficeCDSOffices.Value);
  _Offices_id := BoQryForm.OfficeLookUpCmb.EditValue;
  PayablesOpt.Checked := True;
end;

procedure TAccounts2Form.AccountsCDSAfterScroll(DataSet: TDataSet);
var
  YearRef: String;
  yr: Integer;
begin
  inherited;
  YearRef := CalcCentury (AccountsCDS['TransactionDate'],4);
  yr := StrToInt(YearRef) - 1;

  TDSSDS.Close;
  TDSCDS.Active := False;

  TDSSDS.CommandText := '';
  if (AccountsCDS['TransactionDate'] <> null)
      and (AccountsCDS['Addressbook_id'] <> null) and
            (AccountsCDS['Addressbook_id'] <> 0) then
    begin
      TDSSDS.CommandText := 'SELECT SUM(L.Debit) AS Db FROM Accounts A '+
        ' LEFT JOIN Ledgers L '+
        '      LEFT JOIN Accountheads AH ON AH.accountheads_id = L.accountheads_id '+
        '      ON A.Accounts_id = L.Accounts_id '+
        ' WHERE (A.TransactionDate >= ''01/04/' + IntToStr(yr) + ''') ' +
        ' AND (A.TransactionDate <= ''' + FormatDateTime('mm/dd/yyyy',AccountsCDS['TransactionDate']) + ''' )' +
        ' AND (A.Addressbook_id = ' + IntToStr(AccountsCDS['Addressbook_id']) + ') ' +
        ' AND (A.Companies_id = ' + IntToStr(g_companies_id) + ')' +
        ' AND (COALESCE(L.TDS, 0)<>0) ';
    end
  else
    TDSSDS.CommandText := 'select CAST(0 as numeric(15,2)) as Db ';

  TDSSDS.Active := True;
  TDSCDS.Active := True;

  DisplayBalance;
end;

procedure TAccounts2Form.AccountsCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  AccountsCDS.ApplyUpdates(0);
  AccountsCDS.Refresh;
  if _AccountsTbl_State = dsInsert then
    AccountsCDS.Last;
end;

procedure TAccounts2Form.AccountsCDSBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TAccounts2Form.AccountsCDSBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TAccounts2Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
  if AccountsCDS['Accounts_id'] = null then
    Raise Exception.Create('Please enter the account for this ledger');

  if AccountsCDS.State = dsEdit then
    Raise Exception.Create('Please save the account first');
end;

procedure TAccounts2Form.AccountsCDSAfterDelete(DataSet: TDataSet);
begin
  inherited;
  AccountsCDS.ApplyUpdates(0);
  AccountsCDS.Refresh;
end;

procedure TAccounts2Form.MasterCdsAfterScroll(DataSet: TDataSet);
var
  tQry: TSQLQuery;
begin
  inherited;
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add('SELECT Description FROM AccountHeads ' +
    ' WHERE AccountHeads_id = ' + IntToStr(MasterCdsaccountheads_id.Value) );
  tQry.Open;

  AccountHeadLbl.Caption := VarToStr(tQry['Description']);

  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add ('SELECT AH.Folios_id, Folio ' +
    ' FROM AccountHeads AH LEFT JOIN Folios F  ON AH.Folios_id = F.Folios_id ' +
    ' WHERE AH.Accountheads_id = ' +  IntToStr(MasterCdsaccountheads_id.Value) );
  tQry.Open;

  FolioLbl.Caption := VarToStr(tQry['Folio']);

  DisplayBalance;

  tQry.Free;
end;


procedure TAccounts2Form.PayablesOptClick(Sender: TObject);
begin
  inherited;
  if PayablesOpt.Checked then
    begin
      CustomMasterCxGridDBTableView1divisions_id.Visible := False;
      CustomMasterCxGridDBTableView1invoiceno.Visible := False;
      CustomMasterCxGridDBTableView1voucherno.Visible := True;
      CustomMasterCxGridDBTableView1billno.Visible := True;
      CustomMasterCxGridDBTableView1voucherno.Visible := False;
      CustomMasterCxGridDBTableView1billno.Visible := False;
    end;
end;

procedure TAccounts2Form.ReceivablesOptClick(Sender: TObject);
begin
  inherited;
  if ReceivablesOpt.Checked then
    begin
      CustomMasterCxGridDBTableView1divisions_id.Visible := True;
      CustomMasterCxGridDBTableView1invoiceno.Visible := True;
      CustomMasterCxGridDBTableView1voucherno.Visible := False;
      CustomMasterCxGridDBTableView1billno.Visible := False;
      CustomMasterCxGridDBTableView1voucherno.Visible := True;
      CustomMasterCxGridDBTableView1billno.Visible := True;
    end;
end;

procedure TAccounts2Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if MasterCDS['Details'] <> null then
    MasterCDS['Details'] := UpperCase(MasterCDS['Details']);

  if MasterCDS['Currencies_id'] = null then
    raise Exception.Create('Please enter the currency');

  if MasterCDS['Accounts_id'] = null then
    raise Exception.Create('Please enter the header first');

  if MasterCDS['AccountHeads_id'] = null then
    raise Exception.Create('Please enter the account head');

  if MasterCDS['Debit'] = null then
    MasterCDS['Debit'] := 0;

  if MasterCDS['Credit'] = null then
    MasterCDS['Credit'] := 0;

  if MasterCDS['ForexDebit'] = null then
    MasterCDS['ForexDebit'] := 0;

  if MasterCDS['ForexCredit'] = null then
    MasterCDS['ForexCredit'] := 0;

  if MasterCDS['TDS'] = null then
    MasterCDS['TDS'] := 0;
end;

procedure TAccounts2Form.AccountsCDSBeforePost(DataSet: TDataSet);
var
  tQry: TSQLQuery;
  CashVoucher: String;
begin
  inherited;
  if AccountsCDS['TransactionDate'] = null then
    raise Exception.Create ('Please enter transation date');

  if AccountsCDS['CashVoucher'] = null then
    raise Exception.Create ('Please enter if cash voucher');

  if AccountsCDS.State = dsInsert then
    begin
      _AccountsTbl_State := AccountsCDS.State;

      if AccountsCDS.State = dsInsert then
        AccountsCDS['Accounts_id'] := GetNextId('Accounts','Accounts_id');

      if AccountsCDS['CashVoucher'] then
        CashVoucher := '1'
      else
        CashVoucher := '0';
      tQry := TSQLQuery.Create(nil);
      tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

      tQry.Close;
      tQry.SQL.Clear;
      tQry.SQL.Add('SELECT MAX(COALESCE(CashVoucherNo,0)) As MaxCV FROM ' +
        'Accounts WHERE Companies_id = ' + VarToStr(AccountsCDS['Companies_id']) +
        ' AND Offices_id = ' + VarToStr(AccountsCDS['Offices_id']) +
        ' AND CashVoucher = ' + CashVoucher +
        ' AND YearRef = ' + VarToStr(AccountsCDS['YearRef']));
      tQry.Open;
      tQry.First;
      if not tQry.EOF then
        begin
          if tQry['MaxCV'] = null then
            AccountsCDS['CashVoucherNo'] := 1
          else
            AccountsCDS['CashVoucherNo'] := tQry['MaxCV'] + 1;
        end
      else
        AccountsCDS['CashVoucherNo'] := 1;

      if (AccountsCDS['CashVoucher'] = True) and
        ((AccountsCDS['CashVoucherNo'] = null) or (AccountsCDS['CashVoucherNo'] = 0)) then
        raise Exception.Create('Cannot save cash voucher unless cash voucher number > 0');

      tQry.Free;
    end;
end;

procedure TAccounts2Form.AccountsCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AccountsCDS['Companies_id'] := g_companies_id;
  AccountsCDS['Offices_id'] := _Offices_id;
  AccountsCDS['TransactionDate'] := Date();
  AccountsCDS['CashVoucher'] := True;
  AccountsCDS['YearRef'] := CalcCentury(Date(),4);
end;

procedure TAccounts2Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Tbl_State = dsInsert then
    MasterCds.Last;
  DisplayBalance;
end;

procedure TAccounts2Form.AccountsCDStransactiondateChange(Sender: TField);
begin
  inherited;
  if AccountsCDS['TransactionDate'] <> null then
    AccountsCDS['YearRef'] := CalcCentury(AccountsCDS['TransactionDate'],4)
  else
    AccountsCDSyearref.Clear;
end;

procedure TAccounts2Form.AccountsCDSBeforeScroll(DataSet: TDataSet);
var
  tQry: TSQLQuery;
begin
  inherited;
  if AccountsCDS['Accounts_id'] <> null then
    begin
      tQry := TSQLQuery.Create(nil);
      tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

      tQry.Close;
      tQry.SQL.Clear;
      tQry.SQL.Add ('SELECT COALESCE(SUM(Credit),0) As Credit, COALESCE(SUM(Debit),0) As Debit ' +
            ' FROM Ledgers WHERE Accounts_id = ' + IntToStr(AccountsCDSaccounts_id.Value));
      tQry.Open;

      if (not tQry.EOF) and (tQry['Credit'] <> null) and (tQry['Debit']<>null)
        and (tQry['Credit'] <> tQry['Debit']) then
        ShowMessage('Credits / Debits do not balance');

      tQry.Close;

      tQry.Free;
    end;
end;

procedure TAccounts2Form.Clear1Click(Sender: TObject);
begin
  inherited;
  if AccountsCDS.State = dsBrowse then
    AccountsCDS.Edit;

  if ActiveControl = cxDBDateEdit1 then               // Check if transaction date is the active control 
    AccountsCDSTransactionDate.Clear
  else if ActiveControl = cxDBDateEdit2 then          // Check if clearance date edit is the active control
    AccountsCDSDateCleared.Clear
  else if ActiveControl = cxDBLookupComboBox1 then    // Check if party look up control is the active control
    AccountsCDSAddressbook_id.Clear;
end;

procedure TAccounts2Form.MasterCdsAfterInsert(DataSet: TDataSet);
var
  tQry: TSQLQuery;
begin
  inherited;
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;
  
  // Obtain default currency
  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add('SELECT number FROM defaults ' +
    'WHERE Item = ''Currency'' ');
  tQry.Open;
  if (not tQry.EOF) and (tQry['number']<>null) then
    MasterCds['Currencies_id'] := tQry['number'];

  // Obtain default division
  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add('SELECT number FROM defaults ' +
    'WHERE Item = ''Division'' ');
  tQry.Open;
  if (not tQry.EOF) and (tQry['number']<>null) then
    MasterCds['Divisions_id'] := tQry['number'];

    // to be worked upon
{  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add('SELECT * FROM fn_Year_Ref(''' + FormatDateTime('mm/dd/yyyy', AccountsCDS['TransactionDate'])+ ''') AS YearRef');
  tQry.Open;

  if not tQry.Eof and tQry['YearRef'] <> null then
     MasterCdsyearref.Value := tQry['YearRef'];
  tQry.Close;
}
  MasterCds['TDS'] := 0.0;
  MasterCds['ExchangeRate'] := 1.0;
  MasterCds['Accounts_id'] := AccountsCDS['Accounts_id'];
  tQry.Free;

end;

procedure TAccounts2Form.MasterCdsyearrefChange(Sender: TField);
begin
  inherited;
  FillVoucherDescription;
  FillInvoiceDescription;
end;

procedure TAccounts2Form.MasterCdsvouchernoChange(Sender: TField);
begin
  inherited;
  FillVoucherDescription;
end;

procedure TAccounts2Form.MasterCdsforexcreditChange(Sender: TField);
begin
  inherited;
  if ((MasterCds['forexcredit'] <> null) and (MasterCds['exchangerate'] <> null)) then
    MasterCds['credit'] := MasterCds['exchangerate'] * MasterCds['forexcredit'];
end;

procedure TAccounts2Form.MasterCdsexchangerateChange(Sender: TField);
begin
  inherited;
  if ((MasterCds['ForexDebit'] <> null) and (MasterCds['ExchangeRate'] <> null)) then
     MasterCds['Debit'] := MasterCds['ExchangeRate'] * MasterCds['ForexDebit'];
  if ((MasterCds['ForexCredit'] <> null) and (MasterCds['ExchangeRate'] <> null)) then
     MasterCds['Credit'] := MasterCds['ExchangeRate'] * MasterCds['ForexCredit'];
end;

procedure TAccounts2Form.MasterCdsinvoicenoChange(Sender: TField);
begin
  inherited;
  FillInvoiceDescription;
end;

procedure TAccounts2Form.MasterCdsforexdebitChange(Sender: TField);
begin
  inherited;
  if ((MasterCds['ForexDebit'] <> null) and (MasterCds['ExchangeRate'] <> null)) then
    MasterCds['Debit'] := MasterCds['ExchangeRate'] * MasterCds['ForexDebit'];
end;

procedure TAccounts2Form.CustomMasterCxGridDblClick(Sender: TObject);
var
  tds: double;
  InputString: string;
  tQry: TSQLQuery;
begin
  inherited;
  //to be worked upon
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

//  if CustomMasterCxGridDBTableView1.Control.IsFocused then
   if CustomMasterCxGridDBTableView1.Columns[13].Focused then
  //    if CustomMasterCxGridDBTableView1.Control.IsFocused then
    ShowMessage('TDS Column');
{    begin

      if LedgerTbl.State = dsBrowse then
        LedgerTbl.Edit;

      if LedgerTbl['Debit'] <> null then
        begin
          TDSVal_Query.Close;
          TDSVal_Query.SQL.Clear;
          TDSVal_Query.SQL.Add('SELECT numericvalue FROM defaults WHERE defaults_id = 6');
          TDSVal_Query.Open;

          InputString:= InputBox('Enter TDS %', 'Enter TDS %', FloatToStr(TDSVal_Query['numericvalue']));
          TDSVal_Query.Close;

          tds := (StrToFloat(InputString)/100.0) *  LedgerTbl['Debit'];

          //tds := 0.022 * LedgerTbl['Debit'];

          //tds := round(tds + 0.001);

          LedgerTbl['TDS'] := tds;

        end;

    end;

   TDSVal_Query.Free;
   }
end;

procedure TAccounts2Form.CustomMasterCxGridDBTableView1KeyPress(
  Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  inherited;
  if (key = #13) and (CustomMasterCxGridDBTableView1.Columns[0].Focused) then
    begin
      if MasterCds.State = dsBrowse then
        MasterCds.Edit;
      if AccountHeadsSrchForm = Nil then
        Application.CreateForm(TAccountHeadsSrchForm, AccountHeadsSrchForm);

      if MasterCds['AccountHeads_id'] <> null then
        begin
          AccountHeadsSrchForm.MasterSDS.Active :=  False;
          AccountHeadsSrchForm.MasterCds.Active := False;
          AccountHeadsSrchForm.MasterSDS.CommandText := '';
          AccountHeadsSrchForm.MasterSDS.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description,  AH.Folios_id, ' +
                  ' F.Folio, AH.Accountheads_id FROM AccountHeads AS AH LEFT JOIN Folios  AS F  ' +
                  ' ON AH.Folios_id = F.Folios_id WHERE AH.Accountheads_id = ' + IntToStr(MasterCds['AccountHeads_id']) +
                  ' AND AH.Companies_id =  ' + IntToStr(g_companies_id) +
                  ' ORDER BY AH.Description' ;
          AccountHeadsSrchForm.MasterSDS.Open;
          AccountHeadsSrchForm.MasterSDS.Active := True;
          AccountHeadsSrchForm.MasterCds.Active := True;
        end;
      AccountHeadsSrchForm.ShowModal;

      if AccountHeadsSrchForm.ModalResult = mrOK then
        begin
          if AccountHeadsSrchForm.MasterCds['AccountHeads_id'] <> null then
            MasterCds['AccountHeads_id'] := AccountHeadsSrchForm.MasterCds['AccountHeads_id'];
        end;
    AccountHeadsSrchForm.Release;
    AccountHeadsSrchForm := Nil;
  end;
end;

procedure TAccounts2Form.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  //to be woked upon
  if CustomMasterCxGridDBTableView1.Columns[13].Focused then
    ShowMessage('TDS Column');
end;

procedure TAccounts2Form.SearchEditKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Search;
end;

end.
