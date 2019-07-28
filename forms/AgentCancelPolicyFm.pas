unit AgentCancelPolicyFm;

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
  TAgentCancelPolicyForm = class(TCustom_1MG_Form)
    MasterCdsAgentCancelPolicy_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsFromDays: TIntegerField;
    MasterCdsToDays: TIntegerField;
    MasterCdsCancelPerc: TFMTBCDField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    Label1: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDs: TDataSource;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentCdsPostalCode: TStringField;
    cxGrid1DBBandedTableView1AgentCancelPolicy_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromDays: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToDays: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CancelPerc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn;
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
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  AgentCancelPolicyForm: TAgentCancelPolicyForm;
  AgentCancelPolicyForm_Level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAgentCancelPolicyForm.FormCreate(Sender: TObject);
begin

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  AgentCds.Open;
  UsersCds.Open;

end;

procedure TAgentCancelPolicyForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAgentCancelPolicyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AgentCancelPolicyForm := nil;
end;

procedure TAgentCancelPolicyForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'AgentCancelPolicy';
  Custom_MasterKeyField := 'AgentCancelPolicy_id';
  Custom_AdmLevel := AgentCancelPolicyForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TAgentCancelPolicyForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAgentCancelPolicyForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please select the agent');

  if (MasterCds['FromDays'] = null) then
    raise Exception.Create('Please enter From Days');

  if (MasterCds['ToDays'] = null) then
    raise Exception.Create('Please enter To Days');

  if (MasterCds['CancelPerc'] = null) then
    raise Exception.Create('Please enter Cancel(%)');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
  
  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['AgentCancelPolicy_id'] = null then
    raise Exception.Create('AgentCancelPolicy_id is not assigned');

end;

function TAgentCancelPolicyForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM AgentCancelPolicy ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND FromDays = ' + IntToStr(MasterCds['FromDays']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AgentCancelPolicy_id <> ' + IntToStr(MasterCds['AgentCancelPolicy_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

procedure TAgentCancelPolicyForm.FilterData;
var
  x_Addressbook_id: integer;
begin

  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Addressbook_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TAgentCancelPolicyForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TAgentCancelPolicyForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;

end;

end.
