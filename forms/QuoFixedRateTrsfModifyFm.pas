unit QuoFixedRateTrsfModifyFm;

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
  TQuoFixedRateTrsfModifyForm = class(TCustomMasterCxGridForm)
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxServiceLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    TrsfSds: TSQLDataSet;
    TrsfDsp: TDataSetProvider;
    TrsfCds: TClientDataSet;
    TrsfDs: TDataSource;
    TrsfCdsCities_id: TIntegerField;
    TrsfCdsServices_id: TIntegerField;
    TrsfCdsDescription: TStringField;
    MasterCdsQuoFixedRatesServices_id: TIntegerField;
    MasterCdsServices_id: TIntegerField;
    MasterCdsAgentAddressBook_id: TIntegerField;
    MasterCdsSightSeeing: TBooleanField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsCurrencies_id: TIntegerField;
    CustomMasterCxGridDBTableView1QuoFixedRatesServices_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Services_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AgentAddressBook_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SightSeeing: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Vehicles_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxServiceLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function IsRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  QuoFixedRateTrsfModifyForm: TQuoFixedRateTrsfModifyForm;
  _QuoFixedRateTrsfModifyForm_Level: integer;
  _QuoFixedRateTrsfModifyForm_Cities_id: integer;
  _QuoFixedRateTrsfModifyForm_Services_id: integer;
  _QuoFixedRateTrsfModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateTrsfModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesServices';
  MasterKeyField := 'QuoFixedRatesServices_id';
  AdmLevel := _QuoFixedRateTrsfModifyForm_Level;

  BackOfficeDataModule.CitiesCds.Open;
  TrsfSds.Open;
  TrsfCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.VehicleCds.Open;
  BackOfficeDataModule.AgentCds.Open;

  cxCityLCMB.EditValue := _QuoFixedRateTrsfModifyForm_Cities_id;
  cxServiceLCMB.EditValue := _QuoFixedRateTrsfModifyForm_Services_id;
  cxDateEdit.Date := _QuoFixedRateTrsfModifyForm_wef;

  FilterData;

  inherited;

end;

procedure TQuoFixedRateTrsfModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateTrsfModifyForm := nil;
end;

procedure TQuoFixedRateTrsfModifyForm.MasterCdsBeforePost(
  DataSet: TDataSet);
begin

 if (MasterCds['Services_id'] = null) then
    raise Exception.Create('Please enter the Service');

 if (MasterCds['AgentAddressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

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

function TQuoFixedRateTrsfModifyForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoFixedRatesServices ' +
    'WHERE AgentAddressbook_id = ' + IntToStr(MasterCds['AgentAddressbook_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef'])) + ' ' +
    'AND Services_id = ' + IntToStr(MasterCds['Services_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['Vehicles_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ' +
    'AND SightSeeing = 0';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (QuoFixedRatesServices_id <> ' + IntToStr(MasterCds['QuoFixedRatesServices_id']) + ') ';

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


procedure TQuoFixedRateTrsfModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateTrsfModifyForm.FilterData;
begin

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := -1;
  if cxServiceLCMB.EditValue <> null then
    MasterSds.Params[0].Value := cxServiceLCMB.EditValue;

  MasterSds.Params[1].Value := Date();
  if cxDateEdit.Date <> null then
    MasterSds.Params[1].Value := cxDateEdit.Date;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoFixedRateTrsfModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesServices';
  MasterKeyField := 'QuoFixedRatesServices_id';
  AdmLevel := _QuoFixedRateTrsfModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateTrsfModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['Services_id'] := cxServiceLCMB.EditValue;
  MasterCds['SightSeeing'] := false;  
end;

procedure TQuoFixedRateTrsfModifyForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  TrsfCds.Close;
  TrsfSds.Close;

  if cxCityLCMB.EditValue <> null then
    TrsfSds.Params[0].Value := cxCityLCMB.EditValue
  else
    TrsfSds.Params[0].Value := -1;

  TrsfSds.Open;
  TrsfCds.Open;

  if TrsfCds['Services_id'] <> null then
    cxServiceLCMB.EditValue := TrsfCds['Services_id'];

end;

procedure TQuoFixedRateTrsfModifyForm.cxServiceLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
