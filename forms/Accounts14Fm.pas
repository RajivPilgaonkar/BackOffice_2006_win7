unit AccountsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, ExtCtrls, Menus, SqlExpr, DB,
  DBClient, Provider, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask;

type
  TAccountsForm = class(TCustomMasterGridForm)
    PanelBottom: TPanel;
    PanelCalc: TPanel;
    PanelTop: TPanel;
    PanelPayRcv: TPanel;
    MainMenu1: TMainMenu;
    Utilities1: TMenuItem;
    Reports1: TMenuItem;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBNavigator1: TDBNavigator;
    ReceivableOpt: TRadioButton;
    PayablesOpt: TRadioButton;
    DBText5: TDBText;
    DBText6: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Label13: TLabel;
    Edit1: TEdit;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    AccountsDS: TDataSource;
    AccountsCDS: TClientDataSet;
    AccountsTbl: TSQLTable;
    AccountsDSP: TDataSetProvider;
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
    DBCheckBox1: TDBCheckBox;
    PartyQry: TSQLQuery;
    PartyCDS: TClientDataSet;
    PartyDSP: TDataSetProvider;
    PartyCDSorgcity: TStringField;
    PartyCDSaddressbook_id: TIntegerField;
    AccountsCDSPartyLookUp: TStringField;
    TdsCDS: TClientDataSet;
    TdsDSP: TDataSetProvider;
    TdsDS: TDataSource;
    TdsQry: TSQLQuery;
    MasterCDSledgers_id: TIntegerField;
    MasterCDSaccounts_id: TIntegerField;
    MasterCDSaccountheads_id: TIntegerField;
    MasterCDSdetails: TStringField;
    MasterCDSdebit: TBCDField;
    MasterCDScredit: TBCDField;
    MasterCDSforexdebit: TBCDField;
    MasterCDSforexcredit: TBCDField;
    MasterCDSexchangerate: TFMTBCDField;
    MasterCDSbillno: TStringField;
    MasterCDSamountbilled: TBCDField;
    MasterCDSnotes: TBCDField;
    MasterCDStds: TBCDField;
    MasterCDSdivisions_id: TIntegerField;
    MasterCDSinvoiceno: TIntegerField;
    MasterCDSvoucherno: TIntegerField;
    MasterCDScurrencies_id: TIntegerField;
    MasterCDSyearref: TIntegerField;
    MasterCDSoffices_id: TIntegerField;
    AccHeadQry: TSQLQuery;
    AccHeadCDS: TClientDataSet;
    AccHeadDSP: TDataSetProvider;
    AccHeadCDSAccountHeads_id: TIntegerField;
    AccHeadCDSAccountHeadSNo: TIntegerField;
    MasterCDSAccHeadookUp: TStringField;
    DivQry: TSQLQuery;
    DivDSP: TDataSetProvider;
    DivCDS: TClientDataSet;
    DivCDSDivisions_id: TIntegerField;
    DivCDSDivision: TStringField;
    MasterCDSDivisionLookUp: TStringField;
    CurrQry: TSQLQuery;
    CurrCDS: TClientDataSet;
    CurrDSP: TDataSetProvider;
    CurrCDSCurrencies_id: TIntegerField;
    CurrCDSCurrency: TStringField;
    MasterCDSCurrencyLookUp: TStringField;
    CurrCDSCurrencyCode: TStringField;
    procedure PayablesOptClick(Sender: TObject);
    procedure ReceivableOptClick(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure AccountsCDSBeforePost(DataSet: TDataSet);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountsForm: TAccountsForm;
  _AccountsForm_CompanyID, _AccountsForm_OfficeID: integer;
  _AccountsForm_Level: Integer;
implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TAccountsForm.PayablesOptClick(Sender: TObject);
begin
  inherited;
  if PayablesOpt.Checked then
    begin
      CustomMasterDBGrid.Columns[2].Visible := True;
      CustomMasterDBGrid.Columns[3].Visible := True;
      CustomMasterDBGrid.Columns[15].Visible := True;
      CustomMasterDBGrid.Columns[4].Visible := False;
      CustomMasterDBGrid.Columns[5].Visible := False;
    end
  else
    begin
      CustomMasterDBGrid.Columns[2].Visible := False;
      CustomMasterDBGrid.Columns[3].Visible := False;
      CustomMasterDBGrid.Columns[15].Visible := False;
      CustomMasterDBGrid.Columns[4].Visible := True;
      CustomMasterDBGrid.Columns[5].Visible := True;
    end;
end;

procedure TAccountsForm.ReceivableOptClick(Sender: TObject);
begin
  inherited;
  if ReceivableOpt.Checked then
    begin
      CustomMasterDBGrid.Columns[2].Visible := False;
      CustomMasterDBGrid.Columns[3].Visible := False;
      CustomMasterDBGrid.Columns[15].Visible := False;
      CustomMasterDBGrid.Columns[4].Visible := True;
      CustomMasterDBGrid.Columns[5].Visible := True;
    end
  else
    begin
      CustomMasterDBGrid.Columns[2].Visible := True;
      CustomMasterDBGrid.Columns[3].Visible := True;
      CustomMasterDBGrid.Columns[15].Visible := True;
      CustomMasterDBGrid.Columns[4].Visible := False;
      CustomMasterDBGrid.Columns[5].Visible := False;
    end; 
end;

procedure TAccountsForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
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

procedure TAccountsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AccountsForm := nil;
end;

procedure TAccountsForm.FormCreate(Sender: TObject);
begin
  inherited;
  MasterTblName := 'Ledgers';
  MasterKeyField := 'Ledgers_id';
  AdmLevel := _AccountsForm_Level;

  AccountsCDS.Active := True;
end;

procedure TAccountsForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AccountsCDS['Companies_id'] := _AccountsForm_CompanyID;
  AccountsCDS['Offices_id'] := _AccountsForm_OfficeID;
  AccountsCDS['TransactionDate'] := Date();
  AccountsCDS['CashVoucher'] := True;
  AccountsCDS['YearRef'] := CalcCentury(Date(),4);

end;

procedure TAccountsForm.AccountsCDSBeforePost(DataSet: TDataSet);
var
  CashVoucher: String;
begin
  inherited;
  if AccountsCDS['Companies_id'] = null then
    raise Exception.Create ('Please enter company');

  if AccountsCDS['Offices_id'] = null then
    raise Exception.Create ('Please enter office');

  if AccountsCDS['TransactionDate'] = null then
    raise Exception.Create ('Please enter transation date');

  if AccountsCDS['CashVoucher'] = null then
    raise Exception.Create ('Please enter if cash voucher');

  // Should be changed to True / False in postgres
  if AccountsCDS['CashVoucher'] then
    CashVoucher := '1'
  else
    CashVoucher := '0';

    //Cash Voucher No. generation

end;

procedure TAccountsForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  AccountsCDS.ApplyUpdates(0);
  AccountsCDS.Refresh;
end;

end.
