unit Currencies2Fm;

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
  cxDBLookupComboBox;

type
  TCurrencies2Form = class(TCustom_1MG_Form)
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  Currencies2Form: TCurrencies2Form;
  Currencies2Form_level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCurrencies2Form.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CountriesCds.Open;

end;

procedure TCurrencies2Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCurrencies2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  Currencies2Form := nil;
end;

procedure TCurrencies2Form.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Currencies';
  Custom_MasterKeyField := 'Currencies_id';
  Custom_AdmLevel := Currencies2Form_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TCurrencies2Form.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCurrencies2Form.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Currency'] = null) or (Trim(MasterCds['Currency']) = '') then
    raise Exception.Create('Please enter the currency');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['Currencies_id'] = null then
    raise Exception.Create('Currencies_id id is not assigned');

end;

function TCurrencies2Form.IsMasterRecordDuplicate: Boolean;
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


end.
