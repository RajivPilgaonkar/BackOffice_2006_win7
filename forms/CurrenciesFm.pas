unit CurrenciesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox, cxTextEdit, cxMemo, cxDBEdit;

type
  TCurrenciesForm = class(TCustom_1MG_Form)
    MasterCdscurrencycode: TStringField;
    MasterCdscurrency: TStringField;
    MasterCdssymbol: TStringField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsterminalid: TIntegerField;
    MasterCdsmerchantid: TIntegerField;
    cxGrid1DBBandedTableView1currencycode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currency: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1symbol: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1hdfccode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1terminalid: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1merchantid: TcxGridDBBandedColumn;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesDs: TDataSource;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    MasterCdshdfccode: TStringField;
    MasterCdsBankAccountNo: TStringField;
    MasterCdsBankAddress: TStringField;
    MasterCdsBankSwiftCode: TStringField;
    MasterCdsBankSortCode: TStringField;
    cxDBMemo1: TcxDBMemo;
    cxGrid1DBBandedTableView1BankAccountNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BankSwiftCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BankSortCode: TcxGridDBBandedColumn;
    MasterCdsBankIbanNo: TStringField;
    cxGrid1DBBandedTableView1BankIbanNo: TcxGridDBBandedColumn;
    MasterCdsBankName: TStringField;
    cxGrid1DBBandedTableView1BankName: TcxGridDBBandedColumn;
    cxTabSheet2: TcxTabSheet;
    cxMemoPymtAccount: TcxMemo;
    cxLabel1: TcxLabel;
    cxMemoBeneficiary: TcxMemo;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    MasterCdsactive: TBooleanField;
    cxGrid1DBBandedTableView1active: TcxGridDBBandedColumn;
    MasterCdsBen_BankAccountNo: TStringField;
    MasterCdsBen_BankAccountName: TStringField;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    MasterCdsBen_BankName: TStringField;
    MasterCdsBen_BankSwift: TStringField;
    cxLabel7: TcxLabel;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure SetAccountPymtInfo;
  end;

var
  CurrenciesForm: TCurrenciesForm;
  CurrenciesForm_level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCurrenciesForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CountriesCds.Open;
  UsersCds.Open;

  cxPageControl1.ActivePageIndex := 0;

  SetAccountPymtInfo;

end;

procedure TCurrenciesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCurrenciesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CurrenciesForm := nil;
end;

procedure TCurrenciesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Currencies';
  Custom_MasterKeyField := 'Currencies_id';
  Custom_AdmLevel := CurrenciesForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TCurrenciesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCurrenciesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Currency'] = null) or (Trim(MasterCds['Currency']) = '') then
    raise Exception.Create('Please enter the currency');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Currencies_id'] = null then
    raise Exception.Create('Currencies_id id is not assigned');

end;

function TCurrenciesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Currencies ' +
    'WHERE Currency = ' + QuotedStr(Trim(MasterCds['Currency'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Currencies_id <> ' + IntToStr(MasterCds['Currencies_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TCurrenciesForm.SetAccountPymtInfo;
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT text FROM Defaults WHERE Defaults_id = 43';

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['text'] <> null) then
    cxMemoPymtAccount.Text := GpSds['text'];

  x_QueryString := 'SELECT text FROM Defaults WHERE Defaults_id = 44';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['text'] <> null) then
    cxMemoBeneficiary.Text := GpSds['text'];

  GpSds.Free;

end;


procedure TCurrenciesForm.cxButton1Click(Sender: TObject);
var
  x_QueryString, x_text: string;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_text := cxMemoPymtAccount.Text;

  x_QueryString := 'UPDATE Defaults SET text = ' + QuotedStr(x_text) + ' WHERE Defaults_id = 43';

  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_text := cxMemoBeneficiary.Text;

  x_QueryString := 'UPDATE Defaults SET text = ' + QuotedStr(x_text) + ' WHERE Defaults_id = 44';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TCurrenciesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Active'] := false;
end;

end.
