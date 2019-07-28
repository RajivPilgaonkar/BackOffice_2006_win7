unit WebFm;

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
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox;

type
  TWebForm = class(TCustom_1MG_Form)
    MasterCdsWeb_id: TIntegerField;
    MasterCdsSrNo: TIntegerField;
    MasterCdsTitle: TStringField;
    MasterCdsPageName: TStringField;
    MasterCdsWriteUp: TMemoField;
    MasterCdsWebPages_id: TIntegerField;
    cxGrid1DBBandedTableView1Web_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PageName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WebPages_id: TcxGridDBBandedColumn;
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
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function GetNextSrNo: Integer;
  end;

var
  WebForm: TWebForm;
  WebForm_level: integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TWebForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

end;

procedure TWebForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TWebForm.FormDestroy(Sender: TObject);
begin
  inherited;
  WebForm := nil;
end;

procedure TWebForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Web';
  Custom_MasterKeyField := 'Web_id';
  Custom_AdmLevel := WebForm_level;

  Custom_FormWidth := 690;
  Custom_FormHeight := 700;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TWebForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TWebForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Title'] = null) or (Trim(MasterCds['Title']) = '') then
    raise Exception.Create('Please enter the Title');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Web_id'] = null then
    raise Exception.Create('Web_id id is not assigned');
end;

function TWebForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Web ' +
    'WHERE Title = ' + QuotedStr(Trim(MasterCds['Title'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Web_id <> ' + IntToStr(MasterCds['Web_id']) + ') ';

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

function TWebForm.GetNextSrNo: Integer;
var
  x_QueryString: String;
  x_MaxSrNo: Integer;
  GpSds: TSQLDataSet;
begin

  x_QueryString := 'SELECT MAX(SrNo) As MaxNo FROM Web WHERE SrNo IS NOT NULL';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_MaxSrNo := 1;
  if (not GpSds.Eof) and (GpSds['MaxNo'] <> null) then
    x_MaxSrNo := GpSds['MaxNo'] + 1;

  GpSds.Free;

  Result := x_MaxSrNo;
end;


procedure TWebForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['SrNo'] := GetNextSrNo;
end;

end.
