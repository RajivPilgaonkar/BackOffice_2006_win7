unit MasterTransportFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  DBCtrls, cxNavigator, cxDBNavigator, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxTextEdit, DBClient, Provider, SqlExpr, ExtCtrls,
  cxSpinEdit, cxTimeEdit, cxCheckBox, cxLookAndFeelPainters, cxButtons,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGroupBox;

type
  TMasterTransportForm = class(TCustom1M1DForm)
    GroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    KeyIdDbText: TDBText;
    MasterCdsmastertransport_id: TIntegerField;
    MasterCdsfromplace: TStringField;
    MasterCdsfromday: TIntegerField;
    MasterCdsfromtime: TSQLTimeStampField;
    MasterCdstoplace: TStringField;
    MasterCdstoday: TIntegerField;
    MasterCdstotime: TSQLTimeStampField;
    MasterCdsremarks: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstours: TStringField;
    MasterCdsac: TBooleanField;
    MasterCdsdropoffdays: TIntegerField;
    MasterCdskms: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsdropoffkms: TIntegerField;
    Detail1Cdsmastertransporttours_id: TIntegerField;
    Detail1Cdsmastertransport_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Label15: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label16: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsMasters_id: TIntegerField;
    TourCodeDs: TDataSource;
    cxDBNavigator1: TcxDBNavigator;
    cxButton1: TcxButton;
    UpdateBtn: TcxButton;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    cxAgentCityLCMB: TcxLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDistanceButton: TcxButton;
    Label17: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    MasterCdsDriveTypes_id: TIntegerField;
    MasterCdsCarHireGroups_id: TIntegerField;
    Label18: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure TourString;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure UpdateBtnClick(Sender: TObject);
    procedure cxAgentCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure cxDistanceButtonClick(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterTransportForm: TMasterTransportForm;
  _MasterTransportForm_Mode: String;
  _MasterTransportForm_Level: Integer;

implementation

uses BackOfficeDM, MasterFm, GeneralUt;

{$R *.dfm}

function TMasterTransportForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterTransport ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND from_cities_id = ' + IntToStr(MasterCds['from_cities_id']) + ' ' +
    'AND to_cities_id = ' + IntToStr(MasterCds['to_cities_id']) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND fromday = ' + IntToStr(MasterCds['fromday']) + ' ' +
    'AND today = ' + IntToStr(MasterCds['today']) + ' ' ;

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterTransport_id <> ' + IntToStr(MasterCds['MasterTransport_id']) + ') ';

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

function TMasterTransportForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterTransportTours ' +
    'WHERE MasterTransport_id = ' + IntToStr(Detail1Cds['MasterTransport_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterTransportTours_id <> ' + IntToStr(Detail1Cds['MasterTransportTours_id']) + ') ';

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

procedure TMasterTransportForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;
  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['MasterTransport_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;

end;

procedure TMasterTransportForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.DriveTypesCds.Active := False;
  BackOfficeDataModule.DriveTypesCds.Active := True;

  BackOfficeDataModule.CarHireGroupsCds.Active := False;
  BackOfficeDataModule.CarHireGroupsCds.Active := True;

  BackOfficeDataModule.AgentCityCds.Active := False;
  BackOfficeDataModule.AgentCityCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  BackOfficeDataModule.TourCodeCds.Active := False;
  BackOfficeDataModule.TourCodeCds.Active := True;

  MasterCdsName := 'MasterTransport';
  MasterKeyField := 'MasterTransport_id';
  Detail1CdsName := 'MasterTransportTours';
  Detail1KeyField := 'MasterTransportTours_id';

  AdmLevel := _MasterForm_Level;

  MasterSds.DataSource := MasterForm.MasterDs;
  MasterCds.MasterSource := MasterForm.MasterDs;

  inherited;

  if _MasterTransportForm_Mode = 'I' then
    MasterCds.Insert
  else if (_MasterTransportForm_Mode = 'E') and (MasterForm.TransportCds['MasterTransport_id'] <> null) then
    MasterCds.Locate('MasterTransport_id', MasterForm.TransportCds['MasterTransport_id'],[]);

end;

procedure TMasterTransportForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterTransportForm := nil;
end;

procedure TMasterTransportForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TMasterTransportForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
   TourString;
end;

procedure TMasterTransportForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCDSfromday,'"FROM DAY"');
  validateblanks(MasterCDSfromtime,'"FROM TIME"');
  validateblanks(MasterCDSfrom_cities_id,'"FROM CITY"');
  validateblanks(MasterCDStoday,'"TO DAY"');
  validateblanks(MasterCDStotime,'"TO TIME"');
  validateblanks(MasterCDSto_cities_id,'"TO CITY"');
//  validateblanks(MasterTransportTblKms,'DISTANCE IN KMS');

  if MasterCds['DriveTypes_id'] = null then
    MasterCds['DriveTypes_id'] := 1;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterTransportForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
 if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['MasterTransport_id'] = null) then
    raise Exception.Create('Please enter the Transport Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterTransportForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterTransportTours ' +
    'WHERE MasterTransport_id = ' + IntToStr(MasterCds['MasterTransport_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TMasterTransportForm.UpdateBtnClick(Sender: TObject);
begin
  inherited;
  TourString;
end;

procedure TMasterTransportForm.cxAgentCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CxAgentCityLCMB.EditValue <> null then
      BackOfficeDataModule.AgentCityCds.Locate('Cities_id',CxAgentCityLCMB.EditValue,[]);
  except
  end;

end;

procedure TMasterTransportForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  cxAgentCityLCMB.EditValue := 0;

  if MasterCds['Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT cities_id FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['cities_id']<>null) then
        begin
          cxAgentCityLCMB.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;

    end;

end;

procedure TMasterTransportForm.cxDistanceButtonClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if (MasterCds['masters_id']=null) or (masterCds['From_Cities_id']=null) or (masterCds['To_Cities_id']=null) then
    exit;

  if MasterCds.State=dsBrowse then
    MasterCds.Edit;

  QueryString := 'select dbo.fn_distanceinkms(' +
    IntToStr(MasterCDSfrom_cities_id.Value) + ',' +
    IntToStr(MasterCDSto_cities_id.Value) + ') as kms';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['kms']<>null) then
    begin
      MasterCDSdropoffkms.Value :=GpSds['kms'];
    end;

  GpSds.Free;

end;

procedure TMasterTransportForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['AC'] := True;
  cxAgentCityLcmb.EditValue := 0;
end;

procedure TMasterTransportForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TMasterTransportForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds.First;
  if Detail1Cds.Eof then
    begin
      ShowMessage ('Please enter the Tours');
      Detail1Cds.Insert;
      CustomMasterCxGrid.SetFocus;
    end;

end;

end.
