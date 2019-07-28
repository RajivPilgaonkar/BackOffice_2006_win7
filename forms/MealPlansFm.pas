unit MealPlansFm;

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
  cxDBLookupComboBox;

type
  TMealPlansForm = class(TCustom_1MG_Form)
    MasterCdsmealplans_id: TIntegerField;
    MasterCdsmealplan: TStringField;
    MasterCdsplan: TStringField;
    cxGrid1DBBandedTableView1mealplans_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mealplan: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1plan: TcxGridDBBandedColumn;
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
  MealPlansForm: TMealPlansForm;
  MealPlansForm_Level: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TMealPlansForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

end;

procedure TMealPlansForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TMealPlansForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MealPlansForm := nil;
end;

procedure TMealPlansForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'MealPlans';
  Custom_MasterKeyField := 'MealPlans_id';
  Custom_AdmLevel := MealPlansForm_Level;

  Custom_FormWidth := 450;
  Custom_FormHeight := 450;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TMealPlansForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TMealPlansForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['MealPlan'] = null) or (Trim(MasterCds['MealPlan']) = '') then
    raise Exception.Create('Please enter the meal plan');

  if (MasterCds['Plan'] = null) or (Trim(MasterCds['Plan']) = '') then
    raise Exception.Create('Please enter the plan');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if MasterCds['MealPlans_id'] = null then
    raise Exception.Create('MealPlans id is not assigned');

end;

function TMealPlansForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM MealPlans ' +
    'WHERE [Plan] = ' + QuotedStr(Trim(MasterCds['Plan'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MealPlans_id <> ' + IntToStr(MasterCds['MealPlans_id']) + ') ';

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
