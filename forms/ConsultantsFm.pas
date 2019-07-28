unit ConsultantsFm;

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
  cxDBLookupComboBox, cxMemo, cxDBEdit;

type
  TConsultantsForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxAgentLcmb: TcxLookupComboBox;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentDS: TDataSource;
    MasterCdsConsultants_id: TIntegerField;
    MasterCdsConsultant: TStringField;
    MasterCdsEmail: TStringField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsWriteUp: TMemoField;
    MasterCdsPwd: TStringField;
    MasterCdsactive: TBooleanField;
    cxGrid1DBBandedTableView1Consultants_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Consultant: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Email: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Pwd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Active: TcxGridDBBandedColumn;
    cxDBMemo1: TcxDBMemo;
    Splitter1: TSplitter;
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
    procedure cxAgentLcmbPropertiesEditValueChanged(Sender: TObject);
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
  ConsultantsForm: TConsultantsForm;
  ConsultantsForm_Level: Integer;
  
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TConsultantsForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  PrinAgentCds.Open;
  UsersCds.Open;

  cxAgentLcmb.EditValue := PrinAgentCds['Addressbook_id'];
end;

procedure TConsultantsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TConsultantsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ConsultantsForm := nil;
end;

procedure TConsultantsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Consultants';
  Custom_MasterKeyField := 'Consultants_id';
  Custom_AdmLevel := ConsultantsForm_Level;

  Custom_FormWidth := 845;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TConsultantsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TConsultantsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please select the principal agent');

  if (MasterCds['Consultant'] = null) then
    raise Exception.Create('Please enter the Consultant');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if MasterCds['Consultants_id'] = null then
    raise Exception.Create('Consultants_id is not assigned');
end;

function TConsultantsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Consultants ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Consultant = ' + QuotedStr(MasterCds['Consultant']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Consultants_id <> ' + IntToStr(MasterCds['Consultants_id']) + ') ';

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

procedure TConsultantsForm.FilterData;
var
  x_Agents_id: Integer;
begin
  x_Agents_id := -1;

  if cxAgentLcmb.EditValue <> null then
    x_Agents_id := cxAgentLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Agents_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TConsultantsForm.cxAgentLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TConsultantsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLcmb.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLcmb.EditValue;
  MasterCds['Active'] := true;  
end;

end.
