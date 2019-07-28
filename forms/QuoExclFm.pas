unit QuoExclFm;

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
  cxCheckBox, cxDBLookupComboBox, cxMemo;

type
  TQuoExclForm = class(TCustom_1MG_1DG_Form)
    cxGrid1DBBandedTableView1QuoExcl_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoExclusion: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1QuoExclDetails_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1QuoExcl_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1QuoExclusionDetail: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Display: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    AgentExclusions1: TMenuItem;
    MasterCdsQuoExcl_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsQuoExclusions_id: TIntegerField;
    MasterCdsSrNo: TIntegerField;
    QuoExclusionSds: TSQLDataSet;
    QuoExclusionDsp: TDataSetProvider;
    QuoExclusionCds: TClientDataSet;
    QuoExclusionDs: TDataSource;
    QuoExclusionCdsQuoExclusions_id: TIntegerField;
    QuoExclusionCdsQuoExclusion: TStringField;
    QuoExclusionCdsSrNo: TIntegerField;
    DetailCdsQuoExclDetails_id: TIntegerField;
    DetailCdsQuoExcl_id: TIntegerField;
    DetailCdsQuoExclusionDetails_id: TIntegerField;
    DetailCdsSrNo: TIntegerField;
    DetailCdsDisplay: TBooleanField;
    QuoExclusionDetailsSds: TSQLDataSet;
    QuoExclusionDetailsDsp: TDataSetProvider;
    QuoExclusionDetailsCds: TClientDataSet;
    QuoExclusionDetailsDs: TDataSource;
    QuoExclusionDetailsCdsQuoExclusionDetails_id: TIntegerField;
    QuoExclusionDetailsCdsQuoExclusions_id: TIntegerField;
    QuoExclusionDetailsCdsQuoExclusionDetail: TMemoField;
    QuoExclusionDetailsCdsSrNo: TIntegerField;
    QuoExclusionDetailsCdsDisplay: TBooleanField;
    MasterCdsQuoExclusion: TStringField;
    DetailCdsQuoExclusionDetail: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
  QuoExclForm: TQuoExclForm;
  _QuoExclForm_Level: integer;
  _QuoExclForm_Quotations_id: integer;

implementation

uses BackOfficeDM, QuoExclusionDisplayFm;

{$R *.dfm}

procedure TQuoExclForm.FormCreate(Sender: TObject);
begin
  Caption := 'Quotation Exclusions';
  Panel1.Visible := False;
  ActivateInCustom;

  _QuoExclForm_Level := 4;

  MasterSds.Params[0].Value := _QuoExclForm_Quotations_id;

  QuoExclusionCds.Open;
  QuoExclusionDetailsCds.Open;

  inherited;

end;

procedure TQuoExclForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoExclForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoExclForm := nil;
end;

procedure TQuoExclForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoExcl';
  Custom_MasterKeyField := 'QuoExcl_id';

  Custom_DetailCdsName := 'QuoExclDetails';
  Custom_DetailKeyField := 'QuoExclDetails_id';

  Custom_AdmLevel := _QuoExclForm_Level;

  Custom_FormWidth := 870;
  Custom_FormHeight := 700 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TQuoExclForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

function TQuoExclForm.IsMasterRecordDuplicate: Boolean;
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


function TQuoExclForm.GetNextMasterSrNo: integer;
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

function TQuoExclForm.GetNextDetailSrNo(QuoExclusions_id: integer): integer;
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


procedure TQuoExclForm.AgentExclusions1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_AddQuoExclusions ' + IntToStr(_QuoExclForm_Quotations_id) + ' ';
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := false;
  MasterCds.Active := false;

  MasterCds.Active := true;
  DetailCds.Active := true;

end;

end.
