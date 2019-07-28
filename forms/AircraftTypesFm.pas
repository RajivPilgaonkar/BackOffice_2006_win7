unit AircraftTypesFm;

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
  TAircraftTypesForm = class(TCustom_1MG_Form)
    MasterCdsaircrafttypes_id: TIntegerField;
    MasterCdsaircraft: TStringField;
    cxGrid1DBBandedTableView1aircrafttypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1aircraft: TcxGridDBBandedColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  AircraftTypesForm: TAircraftTypesForm;
  AircraftTypesForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAircraftTypesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;
  
end;

procedure TAircraftTypesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAircraftTypesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AircraftTypesForm := nil;
end;

procedure TAircraftTypesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'AircraftTypes';
  Custom_MasterKeyField := 'AircraftTypes_id';
  Custom_AdmLevel := AircraftTypesForm_Level;

  Custom_FormWidth := 480;
  Custom_FormHeight := 485;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAircraftTypesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAircraftTypesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Aircraft'] = null) or (Trim(MasterCds['Aircraft']) = '') then
    raise Exception.Create('Please enter the Aircraft');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['AircraftTypes_id'] = null then
    raise Exception.Create('AircraftTypes_id id is not assigned');

end;

function TAircraftTypesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM AircraftTypes ' +
    'WHERE Aircraft = ' + QuotedStr(Trim(MasterCds['Aircraft'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AircraftTypes_id <> ' + IntToStr(MasterCds['AircraftTypes_id']) + ') ';

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


end.
