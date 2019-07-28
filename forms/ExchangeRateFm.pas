unit ExchangeRateFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxContainer, cxLabel, cxDBLabel,
  cxButtons, ExtCtrls;

type
  TExchangeRateForm = class(TCustom_1MG_Form)
    MasterCdscurrencydetails_id: TIntegerField;
    MasterCdsexchangerate: TBCDField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    cxGrid1DBBandedTableView1currencydetails_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchangerate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn;
    Label1: TLabel;
    cxCurrencyLCMB: TcxLookupComboBox;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesDs: TDataSource;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrencyCode: TStringField;
    CurrenciesCdsCountry: TStringField;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCurrencyLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  ExchangeRateForm: TExchangeRateForm;
  ExchangeRateForm_Level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TExchangeRateForm.FormCreate(Sender: TObject);
begin

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  CurrenciesCds.Open;
  UsersCds.Open;

  cxCurrencyLCMB.EditValue := CurrenciesCds['Currencies_id'];

end;

procedure TExchangeRateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TExchangeRateForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ExchangeRateForm := nil;
end;

procedure TExchangeRateForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CurrencyDetails';
  Custom_MasterKeyField := 'CurrencyDetails_id';
  Custom_AdmLevel := ExchangeRateForm_level;

  Custom_FormWidth := 430;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TExchangeRateForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TExchangeRateForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ExchangeRate'] = null) or (MasterCds['ExchangeRate'] < 0.0) then
    raise Exception.Create('Please enter the exchange rate');

  if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the currency');

  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['CurrencyDetails_id'] = null then
    raise Exception.Create('CurrencyDetails_id is not assigned');

end;

function TExchangeRateForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM CurrencyDetails ' +
    'WHERE Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CurrencyDetails_id <> ' + IntToStr(MasterCds['CurrencyDetails_id']) + ') ';

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

procedure TExchangeRateForm.FilterData;
var
  x_Currencies_id: integer;
begin

  x_Currencies_id := -1;

  if cxCurrencyLCMB.EditValue <> null then
    x_Currencies_id := cxCurrencyLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Currencies_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TExchangeRateForm.cxCurrencyLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TExchangeRateForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxCurrencyLCMB.EditValue = null then
    exit;

  MasterCds['Currencies_id'] := cxCurrencyLCMB.EditValue;
end;

end.
