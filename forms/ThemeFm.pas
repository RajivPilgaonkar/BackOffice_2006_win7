unit ThemeFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxDBEdit,
  cxTextEdit, cxMemo, cxDBLookupComboBox;

type
  TThemeForm = class(TCustom_1MG_Form)
    Splitter1: TSplitter;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxTabSheet3: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxTabSheet4: TcxTabSheet;
    cxDBMemo4: TcxDBMemo;
    cxTabSheet5: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    MasterCdsThemes_id: TIntegerField;
    MasterCdsOneLiner: TStringField;
    MasterCdsIntroduction: TMemoField;
    MasterCdsTheme: TMemoField;
    MasterCdsurl: TStringField;
    cxGrid1DBBandedTableView1Themes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn;
    MasterCdsPageName: TStringField;
    cxLabel5: TcxLabel;
    cxDBMemo3: TcxDBMemo;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Descr: TStringField;
    MasterCdsMeta_Keywords: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  ThemeForm: TThemeForm;
  ThemeForm_Level: Integer;
implementation

uses GeneralUt, BackOfficeDM, MainFm;

{$R *.dfm}

procedure TThemeForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

  cxPageControl2.ActivePageIndex := 0;
end;

procedure TThemeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TThemeForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ThemeForm := nil;
end;

procedure TThemeForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Themes';
  Custom_MasterKeyField := 'Themes_id';
  Custom_AdmLevel := ThemeForm_Level;

  Custom_FormWidth := 870;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TThemeForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TThemeForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['PageName'] = null) or (Trim(MasterCds['PageName']) = '') then
    raise Exception.Create('Please enter the PageName.');

  if (MasterCds['Url'] = null) or (trim(MasterCds['Url']) = '') then
    MasterCds['Url'] := GetUrlString(MasterCds['PageName']);

  if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Themes_id'] = null then
    raise Exception.Create('Themes_id is is not assigned');
end;

function TThemeForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Themes ' +
    'WHERE PageName = ' + QuotedStr(Trim(MasterCds['PageName'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Themes_id <> ' + IntToStr(MasterCds['Themes_id']) + ') ';

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
