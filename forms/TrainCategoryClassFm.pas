unit TrainCategoryClassFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, DBClient, Provider, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxContainer, cxDBLabel, StdCtrls,
  cxButtons, ExtCtrls;

type
  TTrainCategoryClassForm = class(TCustom_1MG_Form)
    TrainCategorySds: TSQLDataSet;
    TrainCategoryDsp: TDataSetProvider;
    TrainCategoryCds: TClientDataSet;
    TrainCategoryCdstraincategories_id: TIntegerField;
    TrainCategoryCdscategory: TStringField;
    TrainCategoryDs: TDataSource;
    cxLabel1: TcxLabel;
    cxTrainCategoryLCMB: TcxLookupComboBox;
    MasterCdsTrainCategoryClasses_id: TIntegerField;
    MasterCdsTrainCategories_id: TIntegerField;
    MasterCdsClass_id: TIntegerField;
    cxGrid1DBBandedTableView1TrainCategoryClasses_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TrainCategories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn;
    ClassDs: TDataSource;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDsp: TDataSetProvider;
    ClassSds: TSQLDataSet;
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
    procedure cxTrainCategoryLCMBPropertiesEditValueChanged(
      Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
  end;

var
  TrainCategoryClassForm: TTrainCategoryClassForm;
  TrainCategoryClassForm_Level: Integer;
  
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TTrainCategoryClassForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  TrainCategoryCds.Open;
  ClassCds.Open;
  UsersCds.Open;
  
  cxTrainCategoryLCMB.EditValue := TrainCategoryCds['TrainCategories_id'];
end;

procedure TTrainCategoryClassForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTrainCategoryClassForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TrainCategoryClassForm := nil;
end;

procedure TTrainCategoryClassForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TrainCategoryClasses ';
  Custom_MasterKeyField := 'TrainCategoryClasses_id';
  Custom_AdmLevel := TrainCategoryClassForm_Level;

  Custom_FormWidth := 555;
  Custom_FormHeight := 590;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TTrainCategoryClassForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTrainCategoryClassForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['TrainCategories_id'] = null) then
    raise Exception.Create('Please enter the Category');

  if (MasterCds['Class_id'] = null) then
    raise Exception.Create('Please enter the Class');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['TrainCategoryClasses_id'] = null then
    raise Exception.Create('TrainCategoryClasses_id is not assigned');
end;

function TTrainCategoryClassForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TrainCategoryClasses ' +
    'WHERE TrainCategories_id = ' + IntToStr(MasterCds['TrainCategories_id']) + ' ' +
    'AND Class_id = ' + IntToStr(MasterCds['Class_id']);

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainCategoryClasses_id <> ' + IntToStr(MasterCds['TrainCategoryClasses_id']) + ') ';

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

procedure TTrainCategoryClassForm.FilterData;
var
  x_TrainCategories_id: Integer;
begin
  x_TrainCategories_id := -1;

  if cxTrainCategoryLCMB.EditValue <> null then
    x_TrainCategories_id := cxTrainCategoryLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_TrainCategories_id;

  MasterSds.Active := True;
  MasterCds.Active := True;                     
end;

procedure TTrainCategoryClassForm.cxTrainCategoryLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TTrainCategoryClassForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxTrainCategoryLCMB.EditValue = null then
    exit;

  MasterCds['TrainCategories_id'] := cxTrainCategoryLCMB.EditValue;
end;

end.
