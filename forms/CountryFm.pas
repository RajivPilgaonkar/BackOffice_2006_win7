unit CountryFm;

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
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox;

type
  TCountryForm = class(TCustom_1MG_Form)
    MasterCdscountries_id: TIntegerField;
    MasterCdscountry: TStringField;
    MasterCdsisd: TIntegerField;
    MasterCdsgmt: TStringField;
    MasterCdscountrycode: TStringField;
    MasterCdswriteup: TMemoField;
    MasterCdscurrencies_id: TIntegerField;
    cxGrid1DBBandedTableView1Countries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Country: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ISD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GMT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CountryCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn;
    cxDBMemo1: TcxDBMemo;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesCdscurrencies_id: TIntegerField;
    CurrenciesCdscurrency: TStringField;
    CurrenciesCdscurrencycode: TStringField;
    CurrenciesDS: TDataSource;
    Splitter1: TSplitter;
    MasterCdsurl: TStringField;
    MasterCdsactive: TBooleanField;
    cxGrid1DBBandedTableView1url: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1active: TcxGridDBBandedColumn;
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
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  CountryForm: TCountryForm;
  CountryForm_Level: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCountryForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CurrenciesCds.Open;
  UsersCds.Open;

end;

procedure TCountryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCountryForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CountryForm := nil;
end;

procedure TCountryForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'countries';
  Custom_MasterKeyField := 'countries_id';
  Custom_AdmLevel := CountryForm_Level;

  Custom_FormWidth := 760;
  Custom_FormHeight := 555;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TCountryForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCountryForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Country'] = null) or (Trim(MasterCds['Country']) = '') then
    raise Exception.Create('Please enter the Country');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if MasterCds['Countries_id'] = null then
    raise Exception.Create('Countries_id id is not assigned');
end;

function TCountryForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Countries ' +
    'WHERE Country = ' + QuotedStr(Trim(MasterCds['Country'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Countries_id <> ' + IntToStr(MasterCds['Countries_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;

end;

procedure TCountryForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['active'] := false;
end;

end.
