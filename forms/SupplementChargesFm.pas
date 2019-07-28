unit SupplementChargesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxContainer, cxLabel, cxDBLabel,
  cxButtons, ExtCtrls, Buttons;

type
  TSupplementChargesForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentCdsPostalCode: TStringField;
    AgentDs: TDataSource;
    Label2: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    MasterCdssupplementarycharges_id: TIntegerField;
    MasterCdsclass_id: TIntegerField;
    MasterCdsminimumkm: TIntegerField;
    MasterCdssupplements_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    MasterCdscost: TBCDField;
    cxGrid1DBBandedTableView1supplementarycharges_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1class_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1minimumkm: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1supplements_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cost: TcxGridDBBandedColumn;
    SpeedButton1: TSpeedButton;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassDs: TDataSource;
    ClassCdsclass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    SuppSds: TSQLDataSet;
    SuppDsp: TDataSetProvider;
    SuppCds: TClientDataSet;
    SuppDs: TDataSource;
    SuppCdssupplements_id: TIntegerField;
    SuppCdssupplement: TStringField;
    SuppCdsDistanceBased: TBooleanField;
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
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWet;
  public
    { Public declarations }
  end;

var
  SupplementChargesForm: TSupplementChargesForm;
  SupplementChargesForm_Level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TSupplementChargesForm.FormCreate(Sender: TObject);
begin

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := StrToDate('01/01/2011');
  MasterSds.Params[1].Value := -1;

  inherited;

  AgentCds.Open;
  WefCds.Open;
  ClassCds.Open;
  SuppCds.Open;
  UsersCds.Open;

end;

procedure TSupplementChargesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TSupplementChargesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  SupplementChargesForm := nil;
end;

procedure TSupplementChargesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'SupplementaryCharges';
  Custom_MasterKeyField := 'SupplementaryCharges_id';
  Custom_AdmLevel := SupplementChargesForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TSupplementChargesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TSupplementChargesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please select the agent');

  if (MasterCds['Class_id'] = null) then
    raise Exception.Create('Please enter the Class');

  if (MasterCds['Supplements_id'] = null) then
    raise Exception.Create('Please enter the Supplement');

  if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['SupplementaryCharges_id'] = null then
    raise Exception.Create('SupplementaryCharges_id is not assigned');

end;

function TSupplementChargesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM SupplementaryCharges ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Supplements_id = ' + IntToStr(MasterCds['Supplements_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (SupplementaryCharges_id <> ' + IntToStr(MasterCds['SupplementaryCharges_id']) + ') ';

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

procedure TSupplementChargesForm.FilterData;
var
  x_Addressbook_id: integer;
  x_wef: TDateTime;
begin

  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  x_wef := StrToDate('01/01/2011');

  if cxWefLcmb.EditValue <> null then
    x_wef := cxWefLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Wef;
  MasterSds.Params[1].Value := x_Addressbook_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TSupplementChargesForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Agents_id: integer;
begin
  inherited;
  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef'];

  FilterData;
end;

procedure TSupplementChargesForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TSupplementChargesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    exit;

  if cxWefLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;

end;

procedure TSupplementChargesForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    Abort;

  if cxWefLCMB.EditValue = null then
    Abort;

end;

procedure TSupplementChargesForm.PostWet;
begin
  inherited;

  if MasterCds['wef'] <> cxWefLCMB.EditValue then
    begin
      if not WefCds.Locate ('wef', MasterCds['wef'], []) then
        begin
          WefCds.Close;
          WefCds.Open;
          if WefCds.Locate ('wef', MasterCds['wef'], []) then
            cxWefLCMB.EditValue := MasterCds['wef'];
        end;
    end;

end;


procedure TSupplementChargesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWet;
end;

procedure TSupplementChargesForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  WefCds.Close;
  WefCds.Open;
  if WefCds.Locate ('wef', MasterCds['wef'], []) then
    cxWefLCMB.EditValue := MasterCds['wef'];
end;

end.
