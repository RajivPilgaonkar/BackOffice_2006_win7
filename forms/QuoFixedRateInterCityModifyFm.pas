unit QuoFixedRateInterCityModifyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  FMTBcd, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, cxTextEdit,
  cxLabel, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxGroupBox, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TQuoFixedRateInterCityModifyForm = class(TCustomMasterCxGridForm)
    Label2: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    CustomMasterCxGridDBTableView1QuoFixedRatesInterCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Vehicles_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentDS: TDataSource;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    MasterCdsQuoFixedRatesInterCities_id: TIntegerField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsFromCities_id: TIntegerField;
    MasterCdsToCities_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsWet: TSQLTimeStampField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsCurrencies_id: TIntegerField;
    CustomMasterCxGridDBTableView1ToCities_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function IsRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  QuoFixedRateInterCityModifyForm: TQuoFixedRateInterCityModifyForm;
  _QuoFixedRateInterCityModifyForm_Level: integer;
  _QuoFixedRateInterCityModifyForm_Addressbook_id: integer;
  _QuoFixedRateInterCityModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateInterCityModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesInterCities';
  MasterKeyField := 'QuoFixedRatesInterCities_id';
  AdmLevel := _QuoFixedRateInterCityModifyForm_Level;

  AgentSds.Open;
  AgentCds.Open;
  BackOfficeDataModule.CitiesCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.VehicleCds.Open;

  cxAgentLCMB.EditValue := _QuoFixedRateInterCityModifyForm_Addressbook_id;
  cxDateEdit.Date := _QuoFixedRateInterCityModifyForm_wef;

  FilterData;

  inherited;

end;

procedure TQuoFixedRateInterCityModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateInterCityModifyForm := nil;
end;

procedure TQuoFixedRateInterCityModifyForm.MasterCdsBeforePost(
  DataSet: TDataSet);
begin

 if (MasterCds['FromCities_id'] = null) then
    raise Exception.Create('Please enter the From City');

 if (MasterCds['ToCities_id'] = null) then
    raise Exception.Create('Please enter the To City');

 if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

 if (MasterCds['Vehicles_id'] = null) then
    raise Exception.Create('Please enter the Vehicle');

 if (MasterCds['Wef'] = null) then
    raise Exception.Create('Please enter the wef');

 if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

 if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

end;

function TQuoFixedRateInterCityModifyForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoFixedRatesInterCities ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef'])) + ' ' +
    'AND FromCities_id = ' + IntToStr(MasterCds['FromCities_id']) + ' ' +
    'AND ToCities_id = ' + IntToStr(MasterCds['ToCities_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['Vehicles_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (QuoFixedRatesInterCities_id <> ' + IntToStr(MasterCds['QuoFixedRatesInterCities_id']) + ') ';

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


procedure TQuoFixedRateInterCityModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateInterCityModifyForm.FilterData;
begin

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := -1;
  if cxAgentLCMB.EditValue <> null then
    MasterSds.Params[0].Value := cxAgentLCMB.EditValue;

  MasterSds.Params[1].Value := Date();
  if cxDateEdit.Date <> null then
    MasterSds.Params[1].Value := cxDateEdit.Date;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoFixedRateInterCityModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesInterCities';
  MasterKeyField := 'QuoFixedRatesInterCities_id';
  AdmLevel := _QuoFixedRateInterCityModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateInterCityModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
end;

procedure TQuoFixedRateInterCityModifyForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
