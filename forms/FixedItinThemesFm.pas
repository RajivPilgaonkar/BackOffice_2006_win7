unit FixedItinThemesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, DBClient, Provider, SqlExpr, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer,
  cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxDBLookupComboBox;

type
  TFixedItinThemesForm = class(TCustom_1MG_Form)
    ThemesDS: TDataSource;
    ThemesCds: TClientDataSet;
    ThemesDsp: TDataSetProvider;
    ThemesSds: TSQLDataSet;
    MasterCdsFixedItinThemes_id: TIntegerField;
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsThemes_id: TIntegerField;
    ThemesCdsthemes_id: TIntegerField;
    ThemesCdstitle: TStringField;
    cxGrid1DBBandedTableView1FixedItinThemes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FixedItin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Themes_id: TcxGridDBBandedColumn;
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
  end;

var
  FixedItinThemesForm: TFixedItinThemesForm;
  FixedItinThemesForm_Level: Integer;
  FixedItinThemesForm_FixedItin_id: Integer;
implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TFixedItinThemesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterCds.Close;
  MasterSds.Close;
  MasterSds.Params[0].Value := FixedItinThemesForm_FixedItin_id;

  inherited;

  ThemesCds.Open;
end;

procedure TFixedItinThemesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFixedItinThemesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FixedItinThemesForm := nil;
end;

procedure TFixedItinThemesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'FixedItinThemes';
  Custom_MasterKeyField := 'FixedItinThemes_id';
  Custom_AdmLevel := FixedItinThemesForm_Level;

  Custom_FormWidth := 490;
  Custom_FormHeight := 550;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TFixedItinThemesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TFixedItinThemesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['FixedItin_id'] = null) then
    raise Exception.Create('Please select the Tour');

  if (MasterCds['Themes_id'] = null) then
    raise Exception.Create('Please select the Theme');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['FixedItinThemes_id'] = null then
    raise Exception.Create('FixedItinThemes_id is not assigned');

end;

function TFixedItinThemesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM FixedItinThemes ' +
    'WHERE FixedItin_id = ' + IntToStr(MasterCds['FixedItin_id']) + ' ' +
    'AND Themes_id = ' + IntToStr(MasterCds['Themes_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (FixedItinThemes_id <> ' + IntToStr(MasterCds['FixedItinThemes_id']) + ') ';

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

procedure TFixedItinThemesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['FixedItin_id'] := FixedItinThemesForm_FixedItin_id;
end;


end.
