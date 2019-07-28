unit TrainStationsFm;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TTrainStationsForm = class(TCustom_1MG_Form)
    cxLabel1: TcxLabel;
    cxCityLCMB: TcxLookupComboBox;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesDs: TDataSource;
    CitiesCds: TClientDataSet;
    CitiesCdscity: TStringField;
    CitiesCdscities_id: TIntegerField;
    MasterCdstrainstations_id: TIntegerField;
    MasterCdsstation: TStringField;
    MasterCdsrailwaycode: TStringField;
    MasterCdsstationname: TStringField;
    MasterCdscities_id: TIntegerField;
    MasterCdsin_use: TBooleanField;
    MasterCdsFlag1: TIntegerField;
    MasterCdsDefaultOrder: TIntegerField;
    cxGrid1DBBandedTableView1TrainStations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Station: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RailwayCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StationName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1In_Use: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Flag1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DefaultOrder: TcxGridDBBandedColumn;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    function GetNextOrderNo: integer;
  end;

var
  TrainStationsForm: TTrainStationsForm;
  TrainStationsForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TTrainStationsForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  CitiesCds.Open;
  cxCityLCMB.EditValue := CitiesCds['Cities_id'];

  UsersCds.Open;

end;

procedure TTrainStationsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTrainStationsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TrainStationsForm := nil;
end;

procedure TTrainStationsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TrainStations';
  Custom_MasterKeyField := 'TrainStations_id';
  Custom_AdmLevel := TrainStationsForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TTrainStationsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTrainStationsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Station'] = null) or (Trim(MasterCds['Station']) = '') then
    raise Exception.Create('Please enter the Currency');

  if (MasterCds['RailwayCode'] = null) or (Trim(MasterCds['RailwayCode']) = '') then
    raise Exception.Create('Please enter the Railway Code');

  if (MasterCds['StationName'] = null) or (Trim(MasterCds['StationName']) = '') then
    raise Exception.Create('Please enter the Station Name');

  if (MasterCds['In_use'] = null) then
    raise Exception.Create('Please enter "In Use"');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['TrainStations_id'] = null then
    raise Exception.Create('TrainStations_id is not assigned');

end;

function TTrainStationsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM TrainStations ' +
    'WHERE Station = ' + QuotedStr(MasterCds['Station']) + ' ' +
    'AND RailwayCode = ' + QuotedStr(MasterCds['RailwayCode']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainStations_id <> ' + IntToStr(MasterCds['TrainStations_id']) + ') ';

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

procedure TTrainStationsForm.FilterData;
var
  x_Cities_id: Integer;
begin

  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Cities_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TTrainStationsForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TTrainStationsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxCityLCMB.EditValue = null then
    exit;

  MasterCds['Cities_id'] := cxCityLCMB.EditValue;
  MasterCds['In_use'] := True;
  MasterCds['DefaultOrder'] := GetNextOrderNo;
end;

function TTrainStationsForm.GetNextOrderNo: integer;
var
  x_QueryString: String;
  x_OrderNo: Integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(DefaultOrder) as MaxNo FROM TrainStations ' +
       'WHERE Cities_id =  ' + IntToStr(cxCityLCMB.EditValue) + ' ' +
       'AND DefaultOrder IS NOT NULL';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_OrderNo := 0;
  if (not GpSds.EOF) and (GpSds['MaxNo'] <> null) then
    x_OrderNo := GpSds['MaxNo'];

  x_OrderNo := x_OrderNo + 1;

  GpSds.Free;

  Result := x_OrderNo;
end;


end.
