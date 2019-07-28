unit AgentBoardNameFm;

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
  TAgentBoardNameForm = class(TCustom_1MG_Form)
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    AgentDsp: TDataSetProvider;
    AgentSds: TSQLDataSet;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsAgentData_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsBoardName: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1AgentData_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BoardName: TcxGridDBBandedColumn;
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
  AgentBoardNameForm: TAgentBoardNameForm;
  AgentBoardNameForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAgentBoardNameForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  AgentCds.Open;

  UsersCds.Open;
end;

procedure TAgentBoardNameForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAgentBoardNameForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AgentBoardNameForm := nil;
end;

procedure TAgentBoardNameForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'AgentData';
  Custom_MasterKeyField := 'AgentData_id';
  Custom_AdmLevel := AgentBoardNameForm_Level;

  Custom_FormWidth := 570;
  Custom_FormHeight := 540;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAgentBoardNameForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAgentBoardNameForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['AgentData_id'] = null then
    raise Exception.Create('AgentData_id is not assigned');

end;

function TAgentBoardNameForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM AgentData ' +
    'WHERE AddressBook_id = ' + IntToStr(MasterCds['AddressBook_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AgentData_id <> ' + IntToStr(MasterCds['AgentData_id']) + ') ';

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
