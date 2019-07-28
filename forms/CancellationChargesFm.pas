unit CancellationChargesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, Buttons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TCancellationChargesForm = class(TCustom_1MG_Form)
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    Label1: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    MasterCdscancellationcharges_id: TIntegerField;
    MasterCdsclass_id: TIntegerField;
    MasterCdsminimumkm: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    MasterCdscost: TBCDField;
    cxGrid1DBBandedTableView1CancellationCharges_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MinimumKm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    ClassDsp: TDataSetProvider;
    ClassSds: TSQLDataSet;
    WefCdsAddressbook_id: TIntegerField;
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
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWet;
  end;

var
  CancellationChargesForm: TCancellationChargesForm;
  CancellationChargesForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCancellationChargesForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := StrToDate('01/01/2011');
  MasterSds.Params[1].Value := -1;

  inherited;

  AgentCds.Open;
  WefCds.Open;
  ClassCds.Open;
  UsersCds.Open;
end;

procedure TCancellationChargesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCancellationChargesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CancellationChargesForm := nil;
end;

procedure TCancellationChargesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CancellationCharges';
  Custom_MasterKeyField := 'CancellationCharges_id';
  Custom_AdmLevel := CancellationChargesForm_Level;

  Custom_FormWidth := 720;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TCancellationChargesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCancellationChargesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please select the agent');

  if (MasterCds['Class_id'] = null) then
    raise Exception.Create('Please enter the Class');

  if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['CancellationCharges_id'] = null then
    raise Exception.Create('CancellationCharges_id is not assigned');
end;

function TCancellationChargesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CancellationCharges ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Class_id = ' + IntToStr(MasterCds['Class_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CancellationCharges_id <> ' + IntToStr(MasterCds['CancellationCharges_id']) + ') ';

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

procedure TCancellationChargesForm.FilterData;
var
  x_Addressbook_id: integer;
  x_Wef: TDateTime;
begin
  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  x_Wef := StrToDate('01/01/2011');

  if cxWefLcmb.EditValue <> null then
    x_Wef := cxWefLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Wef;
  MasterSds.Params[1].Value := x_Addressbook_id;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TCancellationChargesForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Agents_id: integer;
begin
  inherited;
  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef'];

  FilterData;
end;

procedure TCancellationChargesForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCancellationChargesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    exit;

  if cxWefLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['MinimumKm'] := 0;
  MasterCds['cost'] := 0.0;
end;

procedure TCancellationChargesForm.MasterCdsBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    Abort;

  if cxWefLCMB.EditValue = null then
    Abort;
end;

procedure TCancellationChargesForm.PostWet;
var
  x_wef: TDateTime;
begin
  inherited;

  if MasterCds['wef'] <> cxWefLCMB.EditValue then
    begin
      if not WefCds.Locate ('wef', MasterCds['wef'], []) then
        begin
          x_wef := MasterCds['wef'];
          WefCds.Close;
          WefCds.Open;
          if WefCds.Locate ('wef', x_wef, []) then
            cxWefLCMB.EditValue := x_wef;
        end;
    end;

end;

procedure TCancellationChargesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWet;
end;

procedure TCancellationChargesForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := StrToDate ('01/01/1970');

  if MasterCds['Wef'] <> null then
    x_Wef := MasterCds['Wef'];

  WefCds.Close;
  WefCds.Open;

  if WefCds.Locate ('Wef', x_Wef, []) then
    cxWefLCMB.EditValue := x_Wef
  else if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.Clear;
end;

end.
