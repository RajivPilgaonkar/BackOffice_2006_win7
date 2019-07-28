unit QuoExclusionFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxCheckBox, cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox;

type
  TQuoExclusionForm = class(TCustom_1MG_1DG_Form)
    MasterCdsQuoExclusions_id: TIntegerField;
    MasterCdsQuoExclusion: TStringField;
    MasterCdsSrNo: TIntegerField;
    cxGrid1DBBandedTableView1QuoExclusions_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoExclusion: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    DetailCdsQuoExclusionDetails_id: TIntegerField;
    DetailCdsQuoExclusions_id: TIntegerField;
    DetailCdsQuoExclusionDetail: TMemoField;
    DetailCdsSrNo: TIntegerField;
    cxGrid2DBBandedTableView1QuoExclusionDetails_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1QuoExclusions_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    DetailCdsDisplay: TBooleanField;
    cxGrid2DBBandedTableView1Display: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    AgentExclusions1: TMenuItem;
    cxDBMemo1: TcxDBMemo;
    cxGrid2DBBandedTableView1QuoExclusionDetail: TcxGridDBBandedColumn;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    DetailCdsModifiedByUsers_id: TIntegerField;
    DetailCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
    procedure AgentExclusions1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function GetNextMasterSrNo: integer;
    function GetNextDetailSrNo(QuoExclusions_id: integer): integer;
  public
    { Public declarations }
  end;

var
  QuoExclusionForm: TQuoExclusionForm;
  _QuoExclusionForm_Level: integer;
  _QuoExclusionForm_Quotations_id: integer;

implementation

uses BackOfficeDM, QuoExclusionDisplayFm, MainFm;

{$R *.dfm}

procedure TQuoExclusionForm.FormCreate(Sender: TObject);
begin
  Caption := 'Quotation Exclusions';
  Panel1.Visible := true;
  ActivateInCustom;

  _QuoExclusionForm_Level := 4;

  inherited;

  UsersCds.Open;

end;

procedure TQuoExclusionForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoExclusionForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoExclusionForm := nil;
end;

procedure TQuoExclusionForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoExclusions';
  Custom_MasterKeyField := 'QuoExclusions_id';

  Custom_DetailCdsName := 'QuoExclusionDetails';
  Custom_DetailKeyField := 'QuoExclusionDetails_id';

  Custom_AdmLevel := _QuoExclusionForm_Level;

  Custom_FormWidth := 870;
  Custom_FormHeight := 700 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TQuoExclusionForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TQuoExclusionForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if MasterCds['QuoExclusion']= null then
    raise Exception.Create('Please enter the exclusion');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['QuoExclusions_id'] = null then
    raise Exception.Create('QuoExclusions_id is not assigned');

end;

procedure TQuoExclusionForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if DetailCds['QuoExclusionDetail'] = null then
    raise Exception.Create('Please enter the detail');

  DetailCds['ModifiedByUsers_id'] := g_users_id;
  DetailCds['ModifiedOn'] := Date;

  inherited;

  if DetailCds['QuoExclusionDetails_id'] = null then
    raise Exception.Create('QuoExclusionDetails_id not assigned');

end;

function TQuoExclusionForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM QuoExclusions ' +
    'WHERE QuoExclusion = ''' + Trim(MasterCds['QuoExclusion']) + ''' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (QuoExclusions_id <> ' + IntToStr(MasterCds['QuoExclusions_id']) + ') ';

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


function TQuoExclusionForm.GetNextMasterSrNo: integer;
var
  GpSds : TSQLDataSet;
  x_Max_SrNo: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MAX(SrNo) AS MaxSrNo FROM QuoExclusions ';
  GpSds.Open;

  x_Max_SrNo := 0;
  if (not GpSds.eof) and (GpSds['MaxSrNo'] <> null) then
    x_Max_SrNo := GpSds['MaxSrNo'];
  x_Max_SrNo := x_Max_SrNo + 1;

  GpSds.Free;

  Result := x_Max_SrNo;

end;

function TQuoExclusionForm.GetNextDetailSrNo(QuoExclusions_id: integer): integer;
var
  GpSds : TSQLDataSet;
  x_Max_SrNo: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MAX(SrNo) AS MaxSrNo FROM QuoExclusionDetails ' +
    'WHERE QuoExclusions_id = ' + IntToStr(QuoExclusions_id);
  GpSds.Open;

  x_Max_SrNo := 0;
  if (not GpSds.eof) and (GpSds['MaxSrNo'] <> null) then
    x_Max_SrNo := GpSds['MaxSrNo'];
  x_Max_SrNo := x_Max_SrNo + 1;

  GpSds.Free;

  Result := x_Max_SrNo;

end;


procedure TQuoExclusionForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['SrNo'] := GetNextMasterSrNo;
end;

procedure TQuoExclusionForm.DetailCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DetailCds['SrNo'] := GetNextDetailSrNo(MasterCds['QuoExclusions_id']);
  DetailCds['Display'] := true;
end;

procedure TQuoExclusionForm.AgentExclusions1Click(Sender: TObject);
begin
  inherited;

  QuoExclusionDisplayForm_level := 4;
  QuoExclusionDisplayForm_QuoExclusions_id := MasterCds['QuoExclusions_id'];
  QuoExclusionDisplayForm_Quotations_id := _QuoExclusionForm_Quotations_id;

  if QuoExclusionDisplayForm = nil then
    Application.CreateForm(TQuoExclusionDisplayForm, QuoExclusionDisplayForm);

end;

end.
