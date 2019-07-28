unit TrackTrainSectorsFm;

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
  cxDBLookupComboBox, cxButtonEdit;

type
  TTrackTrainSectorsForm = class(TCustom_1MG_Form)
    MasterCdsTrainTrackSectors_id: TIntegerField;
    MasterCdsTrainNo: TStringField;
    MasterCdsFromTrainStations_id: TIntegerField;
    MasterCdsToTrainStations_id: TIntegerField;
    cxGrid1DBBandedTableView1TrainTrackSectors_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromTrainStations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToTrainStations_id: TcxGridDBBandedColumn;
    TrainStationSds: TSQLDataSet;
    TrainStationDsp: TDataSetProvider;
    TrainStationCds: TClientDataSet;
    TrainStationCdstrainstations_id: TIntegerField;
    TrainStationCdsstation: TStringField;
    TrainStationCdsrailwaycode: TStringField;
    TrainStationCdsstationname: TStringField;
    TrainStationCdscities_id: TIntegerField;
    TrainStationCdsin_use: TBooleanField;
    TrainStationDs: TDataSource;
    MasterCdsFromTrainStationsLookUp: TStringField;
    MasterCdsToTrainStationsLookUp: TStringField;
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
    procedure cxGrid1DBBandedTableView1FromTrainStations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGrid1DBBandedTableView1ToTrainStations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsRecordConsistent: Boolean;
    procedure GetTrainStations_id(x_Option: Integer);
  end;

var
  TrackTrainSectorsForm: TTrackTrainSectorsForm;
  TrackTrainSectorsForm_Level: Integer;

implementation

uses BackOfficeDM, SearchSortFm, MainFm;

{$R *.dfm}

procedure TTrackTrainSectorsForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;
  TrainStationCds.Open;
  UsersCds.Open;
end;

procedure TTrackTrainSectorsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTrackTrainSectorsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TrackTrainSectorsForm := nil;
end;

procedure TTrackTrainSectorsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TrainTrackSectors';
  Custom_MasterKeyField := 'TrainTrackSectors_id';
  Custom_AdmLevel := TrackTrainSectorsForm_Level;

  Custom_FormWidth := 600;
  Custom_FormHeight := 590;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TTrackTrainSectorsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTrackTrainSectorsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['TrainNo'] = null) or (Trim(MasterCds['TrainNo']) = '') then
    raise Exception.Create('Please enter the Train No');

  if (MasterCds['FromTrainStations_id'] = null) or (Trim(MasterCds['FromTrainStations_id']) = '') then
    raise Exception.Create('Please select the From Train Stations ');

  if (MasterCds['ToTrainStations_id'] = null) or (Trim(MasterCds['ToTrainStations_id']) = '') then
    raise Exception.Create('Please select the To Train Stations ');

  if (not IsRecordConsistent) then
    raise exception.create ('Invalid Train / TrainStation combination');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['TrainTrackSectors_id'] = null then
    raise Exception.Create('TrainTrackSectors_id id is not assigned');

end;

function TTrackTrainSectorsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TrainTrackSectors ' +
    'WHERE TrainNo = ' + QuotedStr(Trim(MasterCds['TrainNo'])) + ' ' +
    'AND FromTrainStations_id = ' + IntToStr(MasterCds['FromTrainStations_id']) +  ' ' +
    'AND ToTrainStations_id = ' + IntToStr(MasterCds['ToTrainStations_id']);

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainTrackSectors_id <> ' + IntToStr(MasterCds['TrainTrackSectors_id']) + ') ';

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

function TTrackTrainSectorsForm.IsRecordConsistent: Boolean;
var
  x_QueryString: String;
  x_ok: Boolean;
  GpSds: TSQLDataSet;
begin
  x_ok := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM Trains t ' +
    'LEFT JOIN TrainDetails td ON t.Trains_id = td.Trains_id ' +
    'WHERE t.TrainNo = ' + QuotedStr(Trim(MasterCds['TrainNo'])) + ' ' +
    'AND td.TrainStations_id = ' + IntToStr(MasterCds['FromTrainStations_id']);

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] = 0) then
    x_ok := False;

  if x_ok = true then
    begin
      x_QueryString := 'SELECT COUNT(*) AS x_count ' +
        'FROM Trains t ' +
        'LEFT JOIN TrainDetails td ON t.Trains_id = td.Trains_id ' +
        'WHERE t.TrainNo = ' + QuotedStr(Trim(MasterCds['TrainNo'])) + ' ' +
        'AND td.TrainStations_id = ' + IntToStr(MasterCds['ToTrainStations_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.Open;

      if (GpSds['x_count'] = 0) then
        x_ok := False;
    end;

  GpSds.Free;

  Result := x_ok;
end;

procedure TTrackTrainSectorsForm.GetTrainStations_id(x_Option: Integer);
var
  x_QueryString: String;
  x_Trains_id, i: Integer;
  GpSds: TSQLDataSet;
begin
  if (MasterCds['TrainNo']=null) or (trim(MasterCds['TrainNo'])='') then
    exit;

  if MasterCds.State in [dsBrowse] then
    MasterCds.Edit;

  x_QueryString := 'SELECT Trains_id FROM Trains ' +
    'WHERE TrainNo = ''' + MasterCds['TrainNo'] + ''' ' +
    'ORDER BY wef DESC';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  GpSds.First;

  x_Trains_id := -1;
  if (not GpSds.EOF) and (GpSds['Trains_id'] <> null) then
    x_Trains_id := GpSds['Trains_id'];

  x_QueryString := 'SELECT td.TrainDetails_id, td.TrainStations_id, c.City, ts.StationName, CONVERT(VARCHAR(5),td.Arrival,108) AS Arrival, td.kms ' +
     'FROM TrainDetails td ' +
     'LEFT JOIN Cities c ON td.Cities_id = c.Cities_id ' +
     'LEFT JOIN TrainStations ts ON td.TrainStations_id = ts.TrainStations_id ' +
     'WHERE td.Trains_id = ' + IntToStr(x_Trains_id) + ' ' +
     'AND coalesce(td.Cities_id,0) > 0 ' +
     'ORDER BY kms';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 5 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainDetails_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'StationName';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'Arrival';
  SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'kms';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Station';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Arrival';
  SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Kms';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainDetails_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if MasterCds.State = dsBrowse then
        MasterCds.Edit;
      if x_Option = 1 then
        MasterCds['FromTrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id']
      else if x_Option = 2 then
        MasterCds['ToTrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id']
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

  GpSds.Free;
end;

procedure TTrackTrainSectorsForm.cxGrid1DBBandedTableView1FromTrainStations_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  GetTrainStations_id(1);
end;

procedure TTrackTrainSectorsForm.cxGrid1DBBandedTableView1ToTrainStations_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  GetTrainStations_id(2);
end;

end.
