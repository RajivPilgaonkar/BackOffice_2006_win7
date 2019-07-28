unit WebPagesFm;

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
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox;

type
  TWebPagesForm = class(TCustom_1MG_1DG_Form)
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo5: TcxDBMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxPageControl4: TcxPageControl;
    MasterCdsWebPages_id: TIntegerField;
    MasterCdsPageName: TStringField;
    MasterCdsurl: TStringField;
    MasterCdsOneLiner: TStringField;
    DetailCdsWeb_id: TIntegerField;
    DetailCdsSrNo: TIntegerField;
    DetailCdsTitle: TStringField;
    DetailCdsPageName: TStringField;
    DetailCdsWriteUp: TMemoField;
    DetailCdsWebPages_id: TIntegerField;
    cxGrid1DBBandedTableView1WebPages_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PageName: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Web_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Title: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PageName: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    MasterCdsMeta_Descr: TMemoField;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Keywords: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    DetailCdsModifiedByUsers_id: TIntegerField;
    DetailCdsModifiedOn: TSQLTimeStampField;
    cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    function GetNextSrNo: integer;
  end;

var
  WebPagesForm: TWebPagesForm;
  WebPagesForm_Level: Integer;
implementation

uses GeneralUt, BackOfficeDM, MainFm;

{$R *.dfm}

procedure TWebPagesForm.FormCreate(Sender: TObject);
begin
  Caption := 'Web Pages';
  cxButtonUtilities.Visible := false;

  ActivateInCustom;

  inherited;
  UsersCds.Open;

  cxPageControl4.ActivePageIndex := 0;

end;

procedure TWebPagesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TWebPagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  WebPagesForm := nil;
end;

procedure TWebPagesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'WebPages';
  Custom_MasterKeyField := 'WebPages_id';

  Custom_DetailCdsName := 'Web';
  Custom_DetailKeyField := 'Web_id';

  Custom_AdmLevel := WebPagesForm_Level;

  Custom_FormWidth := 885;
  Custom_FormHeight := 625;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TWebPagesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TWebPagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['PageName'] = null) or (Trim(MasterCds['PageName']) = '') then
    raise Exception.Create('Please select a Page Name');

  if (MasterCds['url'] = null) or (Trim(MasterCds['url']) = '')  then
    raise Exception.Create('Please enter the URL');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if (MasterCds['WebPages_id'] = null) then
    raise Exception.Create('WebPages_id is not assigned');
end;

procedure TWebPagesForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if DetailCds['Title'] = null then
    raise Exception.Create('Please enter the title');

  if DetailCds['WebPages_id'] = null then
    raise Exception.Create('Please enter the WebPages_id');

  if DetailCds['SrNo'] = null then
    DetailCds['SrNo'] := GetNextSrNo;

  DetailCds['ModifiedByUsers_id'] := g_users_id;
  DetailCds['ModifiedOn'] := Date;

  if IsDetailRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if DetailCds['Web_id'] = null then
    raise Exception.Create('Web_id is not assigned');
end;

function TWebPagesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM WebPages ' +
    'WHERE PageName = ''' + MasterCds['PageName'] + ''' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (WebPages_id <> ' + IntToStr(MasterCds['WebPages_id']) + ') ';

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

function TWebPagesForm.IsDetailRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Web ' +
    'WHERE Title = ' + QuotedStr(DetailCds['Title']) + ' ';

  if DetailCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Web_id <> ' + IntToStr(DetailCds['Web_id']) + ') ';

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

function TWebPagesForm.GetNextSrNo: integer;
var
  x_QueryString: String;
  x_MaxSrNo: Integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(SrNo) As MaxNo FROM Web  ' +
    ' WHERE WebPages_id = ' + IntToStr(MasterCds['WebPages_id']) + ' AND SrNo IS NOT NULL';

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

procedure TWebPagesForm.DetailCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DetailCds['SrNo'] := GetNextSrNo;
end;

end.
