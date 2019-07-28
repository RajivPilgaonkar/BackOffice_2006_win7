unit CurrencyDetailsFm;

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
  TCurrencyDetailsForm = class(TCustom_1MG_Form)
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  public
    { Public declarations }
  end;

var
  CurrencyDetailsForm: TCurrencyDetailsForm;
  CurrencyDetailsForm_level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCurrencyDetailsForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CurrenciesCds.Open;

end;

procedure TCurrencyDetailsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCurrencyDetailsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CurrencyDetailsForm := nil;
end;

procedure TCurrencyDetailsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ExchangeRates';
  Custom_MasterKeyField := 'ExchangeRates_id';
  Custom_AdmLevel := CurrencyDetailsForm_level;

  Custom_FormWidth := 430;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TCurrencyDetailsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCurrencyDetailsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ExchangeRate'] = null) or (MasterCds['ExchangeRate'] < 0.0) then
    raise Exception.Create('Please enter the exchange rate');

  if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the currency');

  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['CurrencyDetails_id'] = null then
    raise Exception.Create('CurrencyDetails_id is not assigned');

end;

function TCurrencyDetailsForm.IsMasterRecordDuplicate: Boolean;
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


end.
