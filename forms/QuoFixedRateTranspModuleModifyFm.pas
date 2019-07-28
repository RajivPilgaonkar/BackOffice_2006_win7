unit QuoFixedRateTranspModuleModifyFm;

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
  TQuoFixedRateTranspModuleModifyForm = class(TCustomMasterCxGridForm)
    Label2: TLabel;
    cxModuleLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    CustomMasterCxGridDBTableView1QuoFixedRatesCars_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ServiceCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Vehicles_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn;
    FixedItinSds: TSQLDataSet;
    FixedItinDsp: TDataSetProvider;
    FixedItinCds: TClientDataSet;
    FixedItinDs: TDataSource;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    FixedItinCdsFixedItin_id: TIntegerField;
    FixedItinCdsTitle: TStringField;
    MasterCdsQuoFixedRatesTranspModules_id: TIntegerField;
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxModuleLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function IsRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  QuoFixedRateTranspModuleModifyForm: TQuoFixedRateTranspModuleModifyForm;
  _QuoFixedRateTranspModuleModifyForm_Level: integer;
  _QuoFixedRateTranspModuleModifyForm_FixedItin_id: integer;
  _QuoFixedRateTranspModuleModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateTranspModuleModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesTranspModules';
  MasterKeyField := 'QuoFixedRatesTranspModules_id';
  AdmLevel := _QuoFixedRateTranspModuleModifyForm_Level;

  FixedItinSds.Open;
  FixedItinCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.VehicleCds.Open;

  cxModuleLCMB.EditValue := _QuoFixedRateTranspModuleModifyForm_FixedItin_id;
  cxDateEdit.Date := _QuoFixedRateTranspModuleModifyForm_wef;

  FilterData;

  inherited;

end;

procedure TQuoFixedRateTranspModuleModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateTranspModuleModifyForm := nil;
end;

procedure TQuoFixedRateTranspModuleModifyForm.MasterCdsBeforePost(
  DataSet: TDataSet);
begin

 if (MasterCds['FixedItin_id'] = null) then
    raise Exception.Create('Please enter the Module');

 if (MasterCds['Vehicles_id'] = null) then
    raise Exception.Create('Please enter the Vehicle');

 if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

 if (MasterCds['Wef'] = null) then
    raise Exception.Create('Please enter the wef');

 if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

end;

function TQuoFixedRateTranspModuleModifyForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoFixedRatesTranspModules ' +
    'WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef'])) + ' ' +
    'AND FixedItin_id = ' + IntToStr(MasterCds['FixedItin_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['Vehicles_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (QuoFixedRatesTranspModules_id <> ' + IntToStr(MasterCds['QuoFixedRatesTranspModules_id']) + ') ';

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


procedure TQuoFixedRateTranspModuleModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateTranspModuleModifyForm.FilterData;
begin

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := -1;
  if cxModuleLCMB.EditValue <> null then
    MasterSds.Params[0].Value := cxModuleLCMB.EditValue;

  MasterSds.Params[1].Value := Date();
  if cxDateEdit.Date <> null then
    MasterSds.Params[1].Value := cxDateEdit.Date;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoFixedRateTranspModuleModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesTranspModules';
  MasterKeyField := 'QuoFixedRatesTranspModules_id';
  AdmLevel := _QuoFixedRateTranspModuleModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateTranspModuleModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['FixedItin_id'] := cxModuleLCMB.EditValue;
end;

procedure TQuoFixedRateTranspModuleModifyForm.cxModuleLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
