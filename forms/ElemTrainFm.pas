unit ElemTrainFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, Buttons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TElemTrainForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxFromCityLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    FromCitiesSds: TSQLDataSet;
    FromCitiesDsp: TDataSetProvider;
    FromCitiesCds: TClientDataSet;
    FromCitiesCdscities_id: TIntegerField;
    FromCitiesCdscity: TStringField;
    FromCitiesCdscountry: TStringField;
    FromCitiesCdsstate: TStringField;
    FromCitiesDs: TDataSource;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrency: TStringField;
    CurrenciesDs: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    VehicleCdsAddressbook_id: TIntegerField;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    WefCdsWef: TSQLTimeStampField;
    VehicleCdsPax: TIntegerField;
    MasterCdsElemTickets_id: TIntegerField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsFrom_Cities_id: TIntegerField;
    MasterCdsTo_Cities_id: TIntegerField;
    MasterCdsFrom_TrainStations_id: TIntegerField;
    MasterCdsTo_TrainStations_id: TIntegerField;
    MasterCdsFlightNo: TStringField;
    MasterCdsTrainNo: TStringField;
    MasterCdsClass_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsTrains_id: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsTimings: TStringField;
    MasterCdsOvernight: TBooleanField;
    Label2: TLabel;
    cxToCityLCMB: TcxLookupComboBox;
    ToCitiesSds: TSQLDataSet;
    ToCitiesDsp: TDataSetProvider;
    ToCitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    ToCitiesDs: TDataSource;
    cxGrid1DBBandedTableView1ElemTickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1From_Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1To_Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1From_TrainStations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1To_TrainStations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FlightNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Trains_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Timings: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Overnight: TcxGridDBBandedColumn;
    MasterCdsac_cc_cost: TFMTBCDField;
    MasterCdsac_2t_cost: TFMTBCDField;
    MasterCdsac_3t_cost: TFMTBCDField;
    cxGrid1DBBandedTableView1Ac_cc_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Ac_2t_cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Ac_3t_cost: TcxGridDBBandedColumn;
    MasterCdsQuoted: TBooleanField;
    cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxFromCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxToCityLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure FilterWef;
  public
    { Public declarations }
  end;

var
  ElemTrainForm: TElemTrainForm;
  ElemTrainForm_Level: Integer;
  ElemTrainForm_NullDate: TDateTime;
  ElemTrainForm_From_Cities_id: integer;
  ElemTrainForm_To_Cities_id: integer;
  ElemTrainForm_Wef: TDateTime;

implementation

uses BackOfficeDM, GeneralUt, ElementsFm;

{$R *.dfm}

procedure TElemTrainForm.FormCreate(Sender: TObject);
begin

  ElemTrainForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;
  MasterSds.Params[2].Value := ElemTrainForm_NullDate;
  inherited;

  FromCitiesCds.Open;
  ToCitiesCds.Open;
  WefCds.Open;

  CurrenciesCds.Open;

  if ElemTrainForm_From_Cities_id <> null then
    cxFromCityLCMB.EditValue := ElemTrainForm_From_Cities_id;

  if ElemTrainForm_To_Cities_id <> null then
    cxToCityLCMB.EditValue := ElemTrainForm_To_Cities_id;

  if ElemTrainForm_Wef <> null then
    cxWefLCMB.EditValue := ElemTrainForm_Wef;

end;

procedure TElemTrainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ElementsForm.FilterData;
  Action := caFree;
end;

procedure TElemTrainForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemTrainForm := nil;
end;

procedure TElemTrainForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemTickets';
  Custom_MasterKeyField := 'ElemTickets_id';
  Custom_AdmLevel := ElemTrainForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemTrainForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemTrainForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

 if (MasterCds['From_Cities_id'] = null) then
    raise Exception.Create('Please enter the "From City"');

 if (MasterCds['To_Cities_id'] = null) then
    raise Exception.Create('Please enter the "To City"');

 if (MasterCds['Tickets_id'] = null) then
    raise Exception.Create('Please enter the "Ticket type"');

 if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

 if (MasterCds['Timings'] = null) then
    raise Exception.Create('Please enter the Timing');

 if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

 if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

 if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if MasterCds['ElemTickets_id'] = null then
    raise Exception.Create('ElemTickets_id is not assigned');

end;

function TElemTrainForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemTickets ' +
    'WHERE Tickets_id = ' + IntToStr(MasterCds['Tickets_id']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(MasterCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_Cities_id']) + ' ' +
    'AND TrainNo = ' + QuotedStr(MasterCds['TrainNo']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemTickets_id <> ' + IntToStr(MasterCds['ElemTickets_id']) + ') ';

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

procedure TElemTrainForm.FilterData;
var
  x_FromCities_id, x_ToCities_id: integer;
  x_wef: TDateTime;
begin

  x_FromCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  x_ToCities_id := -1;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  x_wef := ElemTrainForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_FromCities_id;
  MasterSds.Params[1].Value := x_ToCities_id;
  MasterSds.Params[2].Value := x_wef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TElemTrainForm.FilterWef;
var
  x_FromCities_id, x_ToCities_id: integer;
  x_wef: TDateTime;
begin

  x_FromCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  FromCitiesCds.Locate('Cities_id', x_FromCities_id, []);

  x_ToCities_id := -1;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  ToCitiesCds.Locate('Cities_id', x_ToCities_id, []);

  x_wef := ElemTrainForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  WefCds.Close;
  WefSds.Close;

  WefSds.Params[0].Value := x_FromCities_id;
  WefSds.Params[1].Value := x_ToCities_id;  

  WefSds.Open;
  WefCds.Open;

  if WefCds.Locate ('Wef', x_wef, []) then
    cxWefLCMB.EditValue := x_wef
  else if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.Clear;

end;


procedure TElemTrainForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxFromCityLCMB.EditValue = null then
    exit;

  if cxToCityLCMB.EditValue = null then
    exit;

  MasterCds['From_Cities_id'] := cxFromCityLCMB.EditValue;
  MasterCds['To_Cities_id'] := cxToCityLCMB.EditValue;

  if cxWefLCMB.EditValue <> null then
    MasterCds['Wef'] := cxWefLCMB.EditValue;

  MasterCds['Tickets_id'] := 2;
  MasterCds['Overnight'] := false;

end;

procedure TElemTrainForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := ElemTrainForm_NullDate;

  if MasterCds['Wef'] <> null then
    x_Wef := MasterCds['Wef'];

  WefCds.Close;
  WefCds.Open;

  if WefCds.Locate ('Wef', x_Wef, []) then
    cxWefLCMB.EditValue := x_Wef
  else if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.Clear;
end;

procedure TElemTrainForm.cxFromCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  inherited;

  x_Cities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_Cities_id := cxFromCityLCMB.EditValue;

  FromCitiesCds.Locate('Cities_id', x_Cities_id, []);

  FilterWef;
  FilterData;

end;

procedure TElemTrainForm.cxToCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  inherited;

  x_Cities_id := -1;

  if cxToCityLCMB.EditValue <> null then
    x_Cities_id := cxToCityLCMB.EditValue;

  ToCitiesCds.Locate('Cities_id', x_Cities_id, []);

  FilterWef;
  FilterData;

end;

end.
