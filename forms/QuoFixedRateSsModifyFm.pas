unit QuoFixedRateSsModifyFm;

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
  TQuoFixedRateSsModifyForm = class(TCustomMasterCxGridForm)
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxServiceLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    SsSds: TSQLDataSet;
    SsDsp: TDataSetProvider;
    SsCds: TClientDataSet;
    SsDs: TDataSource;
    SsCdsCities_id: TIntegerField;
    SsCdsServices_id: TIntegerField;
    SsCdsDescription: TStringField;
    MasterCdsQuoFixedRatesServices_id: TIntegerField;
    MasterCdsServices_id: TIntegerField;
    MasterCdsAgentAddressBook_id: TIntegerField;
    MasterCdsSightSeeing: TBooleanField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsCurrencies_id: TIntegerField;
    CustomMasterCxGridDBTableView1QuoFixedRatesServices_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Services_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AgentAddressBook_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SightSeeing: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn;
    MasterCdsCost_1: TFMTBCDField;
    MasterCdsCost_2: TFMTBCDField;
    MasterCdsCost_3: TFMTBCDField;
    MasterCdsCost_4: TFMTBCDField;
    MasterCdsCost_5: TFMTBCDField;
    MasterCdsCost_6: TFMTBCDField;
    MasterCdsCost_7: TFMTBCDField;
    MasterCdsCost_8: TFMTBCDField;
    MasterCdsCost_9: TFMTBCDField;
    MasterCdsCost_10: TFMTBCDField;
    CustomMasterCxGridDBTableView1Cost_1: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_2: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_3: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_4: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_5: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_6: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_7: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_8: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_9: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost_10: TcxGridDBColumn;
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
  QuoFixedRateSsModifyForm: TQuoFixedRateSsModifyForm;
  _QuoFixedRateSsModifyForm_Level: integer;
  _QuoFixedRateSsModifyForm_Cities_id: integer;
  _QuoFixedRateSsModifyForm_Services_id: integer;
  _QuoFixedRateSsModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateSsModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesServices';
  MasterKeyField := 'QuoFixedRatesServices_id';
  AdmLevel := _QuoFixedRateSsModifyForm_Level;

  BackOfficeDataModule.CitiesCds.Open;
  SsSds.Open;
  SsCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.VehicleCds.Open;
  BackOfficeDataModule.AgentCds.Open;

  cxCityLCMB.EditValue := _QuoFixedRateSsModifyForm_Cities_id;
  cxServiceLCMB.EditValue := _QuoFixedRateSsModifyForm_Services_id;
  cxDateEdit.Date := _QuoFixedRateSsModifyForm_wef;

  FilterData;

  inherited;

end;

procedure TQuoFixedRateSsModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateSsModifyForm := nil;
end;

procedure TQuoFixedRateSsModifyForm.MasterCdsBeforePost(
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

 if (MasterCds['Cost_1'] = null) then
    MasterCds['Cost_1'] := 0.0;

 if (MasterCds['Cost_2'] = null) then
    MasterCds['Cost_2'] := 0.0;

 if (MasterCds['Cost_3'] = null) then
    MasterCds['Cost_3'] := 0.0;

 if (MasterCds['Cost_4'] = null) then
    MasterCds['Cost_4'] := 0.0;

 if (MasterCds['Cost_5'] = null) then
    MasterCds['Cost_5'] := 0.0;

 if (MasterCds['Cost_6'] = null) then
    MasterCds['Cost_6'] := 0.0;

 if (MasterCds['Cost_7'] = null) then
    MasterCds['Cost_7'] := 0.0;

 if (MasterCds['Cost_8'] = null) then
    MasterCds['Cost_8'] := 0.0;

 if (MasterCds['Cost_9'] = null) then
    MasterCds['Cost_9'] := 0.0;

 if (MasterCds['Cost_10'] = null) then
    MasterCds['Cost_10'] := 0.0;

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

end;

function TQuoFixedRateSsModifyForm.IsRecordDuplicate: Boolean;
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
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ' +
    'AND SightSeeing = 1';

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


procedure TQuoFixedRateSsModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateSsModifyForm.FilterData;
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


procedure TQuoFixedRateSsModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesServices';
  MasterKeyField := 'QuoFixedRatesServices_id';
  AdmLevel := _QuoFixedRateSsModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateSsModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['Services_id'] := cxServiceLCMB.EditValue;
  MasterCds['SightSeeing'] := true;
end;

procedure TQuoFixedRateSsModifyForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  SsCds.Close;
  SsSds.Close;

  if cxCityLCMB.EditValue <> null then
    SsSds.Params[0].Value := cxCityLCMB.EditValue
  else
    SsSds.Params[0].Value := -1;

  SsSds.Open;
  SsCds.Open;

  if SsCds['Services_id'] <> null then
    cxServiceLCMB.EditValue := SsCds['Services_id'];

end;

procedure TQuoFixedRateSsModifyForm.cxServiceLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
