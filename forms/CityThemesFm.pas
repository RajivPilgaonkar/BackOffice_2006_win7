unit CityThemesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons, Menus, cxDBLookupComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit, cxLabel,
  cxContainer, cxGroupBox;

type
  TCityThemesForm = class(TCustomMasterCxGridForm)
    CityNameLabel: TLabel;
    ThemeSds: TSQLDataSet;
    ThemeDsp: TDataSetProvider;
    ThemeDs: TDataSource;
    ThemeCds: TClientDataSet;
    ThemeCdsThemes_id: TIntegerField;
    ThemeCdsTitle: TStringField;
    MasterCdsCityThemes_id: TIntegerField;
    MasterCdsCities_id: TIntegerField;
    MasterCdsThemes_id: TIntegerField;
    MasterCdsSubThemes_id: TIntegerField;
    CustomMasterCxGridDBTableView1CityThemes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Themes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SubThemes_id: TcxGridDBColumn;
    SubThemeSds: TSQLDataSet;
    SubThemeDsp: TDataSetProvider;
    SubThemeDs: TDataSource;
    SubThemeCds: TClientDataSet;
    SubThemeCdsSubThemes_id: TIntegerField;
    SubThemeCdsSubTheme: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CityThemesForm: TCityThemesForm;
  _CityThemesForm_Level: Integer;
  _CityThemesForm_Cities_id: Integer;
  _CityThemesForm_City: String;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCityThemesForm.FormCreate(Sender: TObject);
begin

  ThemeCds.Open;
  SubThemeCds.Open;

  MasterCdsName := 'CityThemes';
  MasterKeyField := 'CityThemes_id';
  AdmLevel := _CityThemesForm_Level;
  MasterCds.Filtered := True;
  MasterCds.Filter := 'Cities_id = ' + IntToStr(_CityThemesForm_Cities_id);
  inherited;

//  BackOfficeDataModule.CitiesCds.Open;

  CityNameLabel.Caption := _CityThemesForm_City;

end;

procedure TCityThemesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CityThemesForm := nil;
end;

procedure TCityThemesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Cities_id'] = null) then
    raise Exception.Create('Please enter the city.');

  if (MasterCds['Themes_id'] = null) then
    raise Exception.Create('Please enter the theme.');

  if (MasterCds['SubThemes_id'] = null) then
    raise Exception.Create('Please enter the subtheme.');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TCityThemesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CityThemes ' +
    'WHERE Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ' ' +
    'AND Themes_id = ' + IntToStr(MasterCds['Themes_id']) + ' ' +
    'AND SubThemes_id = ' + IntToStr(MasterCds['SubThemes_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (CityThemes_id <> ' + IntToStr(MasterCds['CityThemes_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;



procedure TCityThemesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Cities_id'] := _CityThemesForm_Cities_id;
end;

end.
