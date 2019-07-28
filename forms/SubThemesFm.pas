unit SubThemesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DBClient, Provider, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxContainer, cxDBLabel, StdCtrls,
  cxButtons, ExtCtrls, cxMemo, cxDBEdit;

type
  TSubThemesForm = class(TCustom_1MG_1DG_Form)
    ThemeSds: TSQLDataSet;
    ThemeDsp: TDataSetProvider;
    ThemeCds: TClientDataSet;
    ThemeDs: TDataSource;
    cxThemeLCMB: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxTabSheet4: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxTabSheet5: TcxTabSheet;
    cxDBMemo4: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    ThemeCdsThemes_id: TIntegerField;
    MasterCdsSubThemes_id: TIntegerField;
    MasterCdsThemes_id: TIntegerField;
    MasterCdsTitle: TStringField;
    MasterCdsOneLiner: TStringField;
    MasterCdsIntroduction: TMemoField;
    MasterCdsSubTheme: TMemoField;
    MasterCdsurl: TStringField;
    DetailCdsCityThemes_id: TIntegerField;
    DetailCdsCities_id: TIntegerField;
    DetailCdsThemes_id: TIntegerField;
    DetailCdsSubThemes_id: TIntegerField;
    DetailCdsCitySubTheme: TMemoField;
    cxGrid1DBBandedTableView1SubThemes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1CityThemes_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    CitiesDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
    ThemeCdsPageName: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxThemeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
  end;

var
  SubThemesForm: TSubThemesForm;
  SubThemesForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TSubThemesForm.FormCreate(Sender: TObject);
begin
  Caption := 'Sub Themes';
  cxButtonUtilities.Visible := false;

  ActivateInCustom;

  inherited;
  ThemeCds.Open;
  CitiesCds.Open;
  UsersCds.Open;

  cxThemeLCMB.EditValue := ThemeCds['Themes_id'];

  cxPageControl3.ActivePageIndex := 0;
end;

procedure TSubThemesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TSubThemesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  SubThemesForm := nil;
end;

procedure TSubThemesForm.ActivateInCustom;
begin

  Custom_MasterCdsName := 'SubThemes';
  Custom_MasterKeyField := 'SubThemes_id';

  Custom_DetailCdsName := 'CityThemes';
  Custom_DetailKeyField := 'CityThemes_id';

  Custom_AdmLevel := SubThemesForm_Level;

  Custom_FormWidth := 870;
  Custom_FormHeight := 640;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TSubThemesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TSubThemesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Themes_id'] = null)  then
    raise Exception.Create('Please select a theme');

  if (MasterCds['Title'] = null) or (Trim(MasterCds['Title']) = '')  then
    raise Exception.Create('Please enter the title');

  if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
    MasterCds['url'] := GetUrlString(MasterCds['Title']);

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if (MasterCds['SubThemes_id'] = null) then
    raise Exception.Create('SubThemes_id is not assigned');
end;

procedure TSubThemesForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if (DetailCds['SubThemes_id'] = null) then
    raise Exception.Create('Please select a sub theme');

  if (DetailCds['Cities_id'] = null) or (Trim(DetailCds['Cities_id']) = '')  then
    raise Exception.Create('Please enter a city');

  if IsDetailRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if (DetailCds['CityThemes_id'] = null) then
    raise Exception.Create('CityThemes_id is not assigned');
end;

function TSubThemesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM SubThemes ' +
    'WHERE Themes_id = ' + IntToStr(MasterCds['Themes_id']) + ' ' +
    'AND Title = ' + QuotedStr(MasterCds['Title']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (SubThemes_id <> ' + IntToStr(MasterCds['SubThemes_id']) + ') ';

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

function TSubThemesForm.IsDetailRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CityThemes ' +
    'WHERE SubThemes_id = ' + IntToStr(DetailCds['SubThemes_id']) + ' ' +
    'AND Cities_id = ' + IntToStr(DetailCds['Cities_id']) + ' ';

  if DetailCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CityThemes_id <> ' + IntToStr(DetailCds['CityThemes_id']) + ') ';

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

procedure TSubThemesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxThemeLCMB.EditValue <> null then
    MasterCds['Themes_id'] := cxThemeLCMB.EditValue;
end;

procedure TSubThemesForm.cxThemeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxThemeLCMB.EditValue <> null then
    ThemeCds.Locate('Themes_id', cxThemeLCMB.EditValue, []);
end;

procedure TSubThemesForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if cxThemeLCMB.EditValue = null then
    raise exception.create ('Please select a theme first');

end;

end.
