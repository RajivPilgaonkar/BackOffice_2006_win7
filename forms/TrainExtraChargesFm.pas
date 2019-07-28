unit TrainExtraChargesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, Buttons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TTrainExtraChargesForm = class(TCustom_1MG_Form)
    MasterCdsTrainExtraCharges_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsTrainCategories_id: TIntegerField;
    MasterCdsSupplements_id: TIntegerField;
    MasterCdsClass_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsWet: TSQLTimeStampField;
    MasterCdsDistanceFrom: TIntegerField;
    MasterCdsDistanceTo: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    cxGrid1DBBandedTableView1TrainExtraCharges_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DistanceFrom: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DistanceTo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentCdsPostalCode: TStringField;
    AgentDs: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    Label1: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    TrainCategorySds: TSQLDataSet;
    TrainCategoryDsp: TDataSetProvider;
    TrainCategoryCds: TClientDataSet;
    TrainCategoryCdstraincategories_id: TIntegerField;
    TrainCategoryCdscategory: TStringField;
    TrainCategoryDs: TDataSource;
    SupplementSds: TSQLDataSet;
    SupplementDsp: TDataSetProvider;
    SupplementCds: TClientDataSet;
    SupplementCdssupplements_id: TIntegerField;
    SupplementCdssupplement: TStringField;
    SupplementCdsDistanceBased: TBooleanField;
    SupplementDs: TDataSource;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxTrainCategoryLCMB: TcxLookupComboBox;
    cxSupplementLCMB: TcxLookupComboBox;
    WefCdsWef: TSQLTimeStampField;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsTrainCategories_id: TIntegerField;
    ClassCdsClass_id: TIntegerField;
    ClassCdsClass: TStringField;
    ClassCdsCode: TStringField;
    ClassDs: TDataSource;
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
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxSupplementLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxTrainCategoryLCMBPropertiesEditValueChanged(
      Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWef;
    procedure SetSupplementDistanceBased;
    procedure ChangeLayout;
    procedure FilterWef;
  end;

var
  TrainExtraChargesForm: TTrainExtraChargesForm;
  TrainExtraChargesForm_Level: Integer;
  TrainExtraChargesForm_DistanceBased: Boolean;
  TrainExtraChargesForm_NullDate: TDateTime;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TTrainExtraChargesForm.FormCreate(Sender: TObject);
begin
  TrainExtraChargesForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;
  MasterSds.Params[2].Value := -1;
  MasterSds.Params[3].Value := TrainExtraChargesForm_NullDate;

  inherited;

  AgentCds.Open;
  TrainCategoryCds.Open;
  SupplementCds.Open;
  WefCds.Open;
  ClassCds.Open;
  UsersCds.Open;

end;

procedure TTrainExtraChargesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTrainExtraChargesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TrainExtraChargesForm := nil;
end;

procedure TTrainExtraChargesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TrainExtraCharges';
  Custom_MasterKeyField := 'TrainExtraCharges_id';
  Custom_AdmLevel := TrainExtraChargesForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TTrainExtraChargesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTrainExtraChargesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please select the agent');

  if (MasterCds['TrainCategories_id'] = null) then
    raise Exception.Create('Please enter the Train Category');

  if (MasterCds['Supplements_id'] = null) then
    raise Exception.Create('Please enter the Supplement');

  if (MasterCds['Class_id'] = null) then
   raise Exception.Create('Please enter the Class');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if MasterCds['TrainExtraCharges_id'] = null then
    raise Exception.Create('TrainExtraCharges_id is not assigned');
end;

function TTrainExtraChargesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TrainExtraCharges ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND TrainCategories_id = ' + IntToStr(MasterCds['TrainCategories_id']) + ' ' +
    'AND Supplements_id = ' + IntToStr(MasterCds['Supplements_id']) + ' ' +
    'AND Class_id = ' + IntToStr(MasterCds['Class_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if TrainExtraChargesForm_DistanceBased = true then
    x_QueryString := x_QueryString + 'AND DistanceFrom = ' + FloatToStr(MasterCds['DistanceFrom']);

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainExtraCharges_id <> ' + IntToStr(MasterCds['TrainExtraCharges_id']) + ') ';

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

procedure TTrainExtraChargesForm.FilterData;
var
  x_Addressbook_id, x_TrainCategories_id, x_Supplements_id : Integer;
  x_Wef: TDateTime;
begin
  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  x_TrainCategories_id := -1;

  if cxTrainCategoryLCMB.EditValue <> null then
    x_TrainCategories_id := cxTrainCategoryLCMB.EditValue;

  x_Supplements_id := -1;

  if cxSupplementLCMB.EditValue <> null then
    x_Supplements_id := cxSupplementLCMB.EditValue;

  x_Wef := TrainExtraChargesForm_NullDate;

  if cxWefLcmb.EditValue <> null then
    x_wef := cxWefLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Addressbook_id;
  MasterSds.Params[1].Value := x_TrainCategories_id;
  MasterSds.Params[2].Value := x_Supplements_id;
  MasterSds.Params[3].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TTrainExtraChargesForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

procedure TTrainExtraChargesForm.cxSupplementLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;

  SetSupplementDistanceBased;
  ChangeLayout;

  FilterData;
end;

procedure TTrainExtraChargesForm.cxTrainCategoryLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

procedure TTrainExtraChargesForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TTrainExtraChargesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    exit;

  if cxTrainCategoryLCMB.EditValue = null then
    exit;

  if cxSupplementLCMB.EditValue = null then
    exit;

  if cxWefLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
  MasterCds['TrainCategories_id'] := cxTrainCategoryLCMB.EditValue;
  MasterCds['Supplements_id'] := cxSupplementLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;
end;

procedure TTrainExtraChargesForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    Abort;

  if cxTrainCategoryLCMB.EditValue = null then
    Abort;

  if cxSupplementLCMB.EditValue = null then
    Abort;

  if cxWefLCMB.EditValue = null then
    Abort;

end;

procedure TTrainExtraChargesForm.PostWef;
var
  x_wef: TDateTime;
begin
  inherited;

  if MasterCds['wef'] <> cxWefLCMB.EditValue then
    begin
      x_wef := MasterCds['wef'];
      if not WefCds.Locate ('wef', x_wef, []) then
        begin
          FilterWef;
          if WefCds.Locate ('wef', x_wef, []) then
            cxWefLCMB.EditValue := x_wef;
        end;
    end;


end;

procedure TTrainExtraChargesForm.SetSupplementDistanceBased;
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
  x_Supplements_id: Integer;
begin
  x_Supplements_id := -1;
  if cxSupplementLCMB.EditValue <> null then
    x_Supplements_id := cxSupplementLCMB.EditValue;

  x_QueryString := 'SELECT DistanceBased FROM Supplements ' +
    'WHERE Supplements_id = ' + IntToStr(x_Supplements_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  TrainExtraChargesForm_DistanceBased := False;
  if (not GpSds.EOF) and (GpSds['DistanceBased'] <> null) then
    TrainExtraChargesForm_DistanceBased := GpSds['DistanceBased'];

end;

procedure TTrainExtraChargesForm.ChangeLayout;
begin
  if TrainExtraChargesForm_DistanceBased = true then
    begin
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceFrom').Visible := True;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceTo').Visible := True;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceFrom').VisibleForCustomization := True;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceTo').VisibleForCustomization := True;
    end
  else
    begin
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceFrom').Visible := False;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceTo').Visible := False;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceFrom').VisibleForCustomization := False;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DistanceTo').VisibleForCustomization := False;

    end;
end;

procedure TTrainExtraChargesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWef;
end;

procedure TTrainExtraChargesForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FilterWef;
end;

procedure TTrainExtraChargesForm.FilterWef;
var
  x_TrainCategories_id, x_Addressbook_id, x_Supplements_id: integer;
  x_wef: TDateTime;
begin
  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Addressbook_id, []);

  x_TrainCategories_id := -1;

  if cxTrainCategoryLCMB.EditValue <> null then
    x_TrainCategories_id := cxTrainCategoryLCMB.EditValue;

  TrainCategoryCds.Locate('TrainCategories_id', x_TrainCategories_id, []);

  x_Supplements_id := -1;

  if cxSupplementLCMB.EditValue <> null then
    x_Supplements_id := cxSupplementLCMB.EditValue;

  SupplementCds.Locate('Supplements_id', x_Supplements_id, []);

  x_wef := TrainExtraChargesForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  WefCds.Close;
  WefSds.Close;

  WefSds.Params[0].Value := x_Addressbook_id;
  WefSds.Params[1].Value := x_TrainCategories_id;
  WefSds.Params[2].Value := x_Supplements_id;

  WefSds.Open;
  WefCds.Open;

  if WefCds.Locate ('wef', x_wef, []) then
    cxWefLCMB.EditValue := x_wef
  else if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef']
  else
    cxWefLCMB.Clear;

end;


end.
