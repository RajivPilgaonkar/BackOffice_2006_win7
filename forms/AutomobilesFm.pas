unit AutomobilesFm;

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
  TAutomobilesForm = class(TCustom_1MG_Form)
    MasterCdsvehicles_id: TIntegerField;
    MasterCdsvehicle: TStringField;
    MasterCdspax: TIntegerField;
    MasterCdsvehiclecategories_id: TIntegerField;
    MasterCdsimage: TStringField;
    MasterCdsvehicle_plural: TStringField;
    MasterCdsSeatingCapacity: TIntegerField;
    cxGrid1DBBandedTableView1vehicles_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vehicle: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vehiclecategories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1image: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1vehicle_plural: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SeatingCapacity: TcxGridDBBandedColumn;
    VehicleCatSds: TSQLDataSet;
    VehicleCatDsp: TDataSetProvider;
    VehicleCatCds: TClientDataSet;
    VehicleCatCdsVehicleCategories_id: TIntegerField;
    VehicleCatCdsCategory: TStringField;
    VehicleCatDS: TDataSource;
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
  AutomobilesForm: TAutomobilesForm;
  AutomobilesForm_level: integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAutomobilesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;
  inherited;

  VehicleCatCds.Active := False;
  VehicleCatCds.Active := True;

  UsersCds.Open;

end;

procedure TAutomobilesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAutomobilesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AutomobilesForm := nil;
end;

procedure TAutomobilesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Vehicles';
  Custom_MasterKeyField := 'Vehicles_id';
  Custom_AdmLevel := AutomobilesForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TAutomobilesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAutomobilesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Vehicle'] = null) or (Trim(MasterCds['Vehicle']) = '') then
    raise Exception.Create('Please enter the Vehicle');

  if (MasterCds['Pax'] = null) or (Trim(MasterCds['Pax']) = '') then
    raise Exception.Create('Please enter the Pax');

  if (MasterCds['VehicleCategories_id'] = null) or (Trim(MasterCds['VehicleCategories_id']) = '') then
    raise Exception.Create('Please select the Vehicle Category');

  if (MasterCds['Vehicle_plural'] = null) or (Trim(MasterCds['Vehicle_plural']) = '') then
    raise Exception.Create('Please select the Vehicle_plural');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Vehicles_id'] = null then
    raise Exception.Create('Vehicles_id id is not assigned');
end;

function TAutomobilesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Vehicles ' +
    'WHERE Vehicle = ' + QuotedStr(Trim(MasterCds['Vehicle'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Vehicles_id <> ' + IntToStr(MasterCds['Vehicles_id']) + ') ';

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
