unit QuoFixedRateCarHireModifyFm;

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
  TQuoFixedRateCarHireModifyForm = class(TCustomMasterCxGridForm)
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    CustomMasterCxGridDBTableView1QuoFixedRatesCars_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ServiceCities_id: TcxGridDBColumn;
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
    MasterCdsQuoFixedRatesCars_id: TIntegerField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsServiceCities_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsWet: TSQLTimeStampField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsCurrencies_id: TIntegerField;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxServiceLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function IsRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  QuoFixedRateCarHireModifyForm: TQuoFixedRateCarHireModifyForm;
  _QuoFixedRateCarHireModifyForm_Level: integer;
  _QuoFixedRateCarHireModifyForm_Cities_id: integer;
  _QuoFixedRateCarHireModifyForm_Addressbook_id: integer;
  _QuoFixedRateCarHireModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateCarHireModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesCars';
  MasterKeyField := 'QuoFixedRatesCars_id';
  AdmLevel := _QuoFixedRateCarHireModifyForm_Level;

  BackOfficeDataModule.CitiesCds.Open;
  AgentSds.Open;
  AgentCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.VehicleCds.Open;

  cxCityLCMB.EditValue := _QuoFixedRateCarHireModifyForm_Cities_id;
  cxAgentLCMB.EditValue := _QuoFixedRateCarHireModifyForm_Addressbook_id;
  cxDateEdit.Date := _QuoFixedRateCarHireModifyForm_wef;

  FilterData;

  inherited;

end;

procedure TQuoFixedRateCarHireModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateCarHireModifyForm := nil;
end;

procedure TQuoFixedRateCarHireModifyForm.MasterCdsBeforePost(
  DataSet: TDataSet);
begin

 if (MasterCds['ServiceCities_id'] = null) then
    raise Exception.Create('Please enter the Service City');

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

function TQuoFixedRateCarHireModifyForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoFixedRatesCars ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef'])) + ' ' +
    'AND ServiceCities_id = ' + IntToStr(MasterCds['ServiceCities_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['Vehicles_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (QuoFixedRatesCars_id <> ' + IntToStr(MasterCds['QuoFixedRatesCars_id']) + ') ';

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


procedure TQuoFixedRateCarHireModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateCarHireModifyForm.FilterData;
begin

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := -1;
  if cxCityLCMB.EditValue <> null then
    MasterSds.Params[0].Value := cxCityLCMB.EditValue;

  MasterSds.Params[1].Value := -1;
  if cxAgentLCMB.EditValue <> null then
    MasterSds.Params[1].Value := cxAgentLCMB.EditValue;

  MasterSds.Params[2].Value := Date();
  if cxDateEdit.Date <> null then
    MasterSds.Params[2].Value := cxDateEdit.Date;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoFixedRateCarHireModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesCars';
  MasterKeyField := 'QuoFixedRatesCars_id';
  AdmLevel := _QuoFixedRateCarHireModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateCarHireModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['ServiceCities_id'] := cxCityLCMB.EditValue;
  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
end;

procedure TQuoFixedRateCarHireModifyForm.cxServiceLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateCarHireModifyForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
