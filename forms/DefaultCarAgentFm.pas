unit DefaultCarAgentFm;

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
  TDefaultCarAgentForm = class(TCustom_1MG_Form)
    MasterCdsDefaultCarAgents_id: TIntegerField;
    MasterCdsStartCities_id: TIntegerField;
    MasterCdsEndCities_id: TIntegerField;
    MasterCdsEnterStates_id: TIntegerField;
    MasterCdsEnterCities_id: TIntegerField;
    MasterCdsAgentAddressbook_id: TIntegerField;
    MasterCdsOrderNo: TIntegerField;
    cxGrid1DBBandedTableView1DefaultCarAgents_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StartCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EndCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EnterStates_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EnterCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    CitiesDS: TDataSource;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
    StatesDs: TDataSource;
    StatesSds: TSQLDataSet;
    StatesDsp: TDataSetProvider;
    StatesCds: TClientDataSet;
    StatesCdsstates_id: TIntegerField;
    StatesCdsstate: TStringField;
    StatesCdscountry: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
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
    function GetNextOrderNo: integer;
  end;

var
  DefaultCarAgentForm: TDefaultCarAgentForm;
  DefaultCarAgentForm_Level: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TDefaultCarAgentForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CitiesCds.Open;
  StatesCds.Open;
  AgentCds.Open;
  UsersCds.Open;

end;

procedure TDefaultCarAgentForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TDefaultCarAgentForm.FormDestroy(Sender: TObject);
begin
  inherited;
  DefaultCarAgentForm := nil;
end;

procedure TDefaultCarAgentForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'DefaultCarAgents';
  Custom_MasterKeyField := 'DefaultCarAgents_id';
  Custom_AdmLevel := DefaultCarAgentForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TDefaultCarAgentForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TDefaultCarAgentForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['OrderNo'] = null) then
    MasterCds['OrderNo'] := GetNextOrderNo;

  if (MasterCds['EnterStates_id'] = null) or (Trim(MasterCds['EnterStates_id']) = '') then
    raise Exception.Create('Please select the state');

  if (MasterCds['AgentAddressbook_id'] = null) or (Trim(MasterCds['AgentAddressbook_id']) = '') then
    raise Exception.Create('Please select the agent');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if MasterCds['DefaultCarAgents_id'] = null then
    raise Exception.Create('DefaultCarAgents_id id is not assigned');
end;

function TDefaultCarAgentForm.GetNextOrderNo: integer;
var
  x_QueryString: String;
  x_OrderNo: Integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(OrderNo) as MaxNo FROM DefaultCarAgents ';

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

procedure TDefaultCarAgentForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['OrderNo'] := GetNextOrderNo;
end;

end.
