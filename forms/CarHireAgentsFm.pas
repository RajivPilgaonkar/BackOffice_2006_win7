unit CarHireAgentsFm;

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
  TCarHireAgentsForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxCityLcmb: TcxLookupComboBox;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    MasterCdscarhireagents_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    MasterCdsvehicles_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    cxGrid1DBBandedTableView1CarHireAgents_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AddressBook_id: TcxGridDBBandedColumn;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    AgentDsp: TDataSetProvider;
    AgentSds: TSQLDataSet;
    VehicleDS: TDataSource;
    VehicleCds: TClientDataSet;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleDsp: TDataSetProvider;
    VehicleSds: TSQLDataSet;
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
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
  end;

var
  CarHireAgentsForm: TCarHireAgentsForm;
  CarHireAgentsForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCarHireAgentsForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  AgentCds.Open;
  VehicleCds.Open;
  
  CitiesCds.Open;
  UsersCds.Open;
  cxCityLcmb.EditValue := CitiesCds['Cities_id'];
end;

procedure TCarHireAgentsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCarHireAgentsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CarHireAgentsForm := nil;
end;

procedure TCarHireAgentsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CarHireAgents';
  Custom_MasterKeyField := 'CarHireAgents_id';
  Custom_AdmLevel := CarHireAgentsForm_Level;

  Custom_FormWidth := 570;
  Custom_FormHeight := 540;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TCarHireAgentsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCarHireAgentsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Cities_id'] = null) then
    raise Exception.Create('Please enter the City');

  if (MasterCds['Vehicles_id'] = null) then
    raise Exception.Create('Please enter the vehicle');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
  
  inherited;

  if MasterCds['CarHireAgents_id'] = null then
    raise Exception.Create('CarHireAgents_id is not assigned');

end;

function TCarHireAgentsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM CarHireAgents ' +
    'WHERE cities_id = ' + IntToStr(MasterCds['cities_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['vehicles_id']) + ' ' +
    'AND AddressBook_id = ' + IntToStr(MasterCds['AddressBook_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CarHireAgents_id <> ' + IntToStr(MasterCds['CarHireAgents_id']) + ') ';

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

procedure TCarHireAgentsForm.FilterData;
var
  x_Cities_id: Integer;
begin
  x_Cities_id := -1;

  if cxCityLcmb.EditValue <> null then
    x_Cities_id := cxCityLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Cities_id;

  MasterSds.Active := True;
  MasterCds.Active := True;               
end;

procedure TCarHireAgentsForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCarHireAgentsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxCityLcmb.EditValue = null then
    exit;

  MasterCds['Cities_id'] := cxCityLcmb.EditValue;
end;

end.
