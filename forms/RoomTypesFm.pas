unit RoomTypesFm;

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
  cxDBLookupComboBox;

type
  TRoomTypesForm = class(TCustom_1MG_Form)
    MasterCdsroomtypes_id: TIntegerField;
    MasterCdsroomtype: TStringField;
    MasterCdsac: TBooleanField;
    cxGrid1DBBandedTableView1roomtypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1roomtype: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ac: TcxGridDBBandedColumn;
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
  RoomTypesForm: TRoomTypesForm;
  RoomTypesForm_Level: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TRoomTypesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

end;

procedure TRoomTypesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRoomTypesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  RoomTypesForm := nil;
end;

procedure TRoomTypesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'RoomTypes';
  Custom_MasterKeyField := 'RoomTypes_id';
  Custom_AdmLevel := RoomTypesForm_Level;

  Custom_FormWidth := 490;
  Custom_FormHeight := 525;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TRoomTypesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TRoomTypesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['RoomType'] = null) or (Trim(MasterCds['RoomType']) = '') then
    raise Exception.Create('Please enter the Room Type');

  if (MasterCds['AC'] = null) then
    raise Exception.Create('Please enter the AC');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
  
  inherited;

  if MasterCds['RoomTypes_id'] = null then
    raise Exception.Create('RoomTypes_id id is not assigned');

end;

function TRoomTypesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin               
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM RoomTypes ' +
    'WHERE RoomType = ' + QuotedStr(Trim(MasterCds['RoomType'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (RoomTypes_id <> ' + IntToStr(MasterCds['RoomTypes_id']) + ') ';

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

procedure TRoomTypesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['AC'] := True;
end;

end.
