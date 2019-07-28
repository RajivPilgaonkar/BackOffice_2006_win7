unit MasterCategoriesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls;

type
  TMasterCategoriesForm = class(TCustom_1MG_Form)
    MasterCdsMasterCategories_id: TIntegerField;
    MasterCdsMasterCategory: TStringField;
    cxGrid1DBBandedTableView1MasterCategories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MasterCategory: TcxGridDBBandedColumn;
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
  MasterCategoriesForm: TMasterCategoriesForm;
  MasterCategoriesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TMasterCategoriesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;
end;

procedure TMasterCategoriesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TMasterCategoriesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterCategoriesForm := nil;
end;

procedure TMasterCategoriesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'MasterCategories';
  Custom_MasterKeyField := 'MasterCategories_id';
  Custom_AdmLevel := MasterCategoriesForm_Level;

  Custom_FormWidth := 500;
  Custom_FormHeight := 540;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TMasterCategoriesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TMasterCategoriesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['MasterCategory'] = null) or (Trim(MasterCds['MasterCategory']) = '') then
    raise Exception.Create('Please enter the Master Category');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['MasterCategories_id'] = null then
    raise Exception.Create('MasterCategories_id id is not assigned');
end;

function TMasterCategoriesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM MasterCategories ' +
    'WHERE MasterCategory = ' + QuotedStr(Trim(MasterCds['MasterCategory'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MasterCategories_id <> ' + IntToStr(MasterCds['MasterCategories_id']) + ') ';

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
