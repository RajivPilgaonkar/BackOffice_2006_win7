unit QuoExclusionAgentFm;

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
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit;

type
  TQuoExclusionAgentForm = class(TCustom_1MG_Form)
    MasterCdsQuoExclusionDetailsDisplay_id: TIntegerField;
    MasterCdsQuoExclusionDetails_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsDisplay: TBooleanField;
    cxGrid1DBBandedTableView1QuoExclusionDetailsDisplay_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoExclusionDetails_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Display: TcxGridDBBandedColumn;
    QuoExclSds: TSQLDataSet;
    QuoExclDsp: TDataSetProvider;
    QuoExclCds: TClientDataSet;
    QuoExclDs: TDataSource;
    cxButton1: TcxButton;
    QuoExclCdsQuoExclusionDetails_id: TIntegerField;
    QuoExclCdsQuoExclusionDetail: TStringField;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDS: TDataSource;
    Label1: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
  public
    procedure FilterData;
    { Public declarations }
  end;

var
  QuoExclusionAgentForm: TQuoExclusionAgentForm;
  QuoExclusionAgentForm_level: integer;
  QuoExclusionAgentForm_QuoExclusions_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoExclusionAgentForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  QuoExclCds.Open;

  FilterData;

  inherited;

  PrinAgentCds.Open;

end;

procedure TQuoExclusionAgentForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoExclusionAgentForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoExclusionAgentForm := nil;
end;

procedure TQuoExclusionAgentForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoExclusionDetailsDisplay';
  Custom_MasterKeyField := 'QuoExclusionDetailsDisplay_id';
  Custom_AdmLevel := QuoExclusionAgentForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TQuoExclusionAgentForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TQuoExclusionAgentForm.cxButton1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  x_addressbook_id: integer;
begin
  inherited;

  x_addressbook_id := 0;
  if cxAgentLCMB.EditValue <> null then
    x_addressbook_id := cxAgentLCMB.EditValue;

  if x_addressbook_id = 0 then
    raise exception.create('Agent not entered');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_AddExclusionDetailsDisplay ' +
    IntToStr(x_addressbook_id) + ',' +
    IntToStr(QuoExclusionAgentForm_QuoExclusions_id);

  GpSds.ExecSQL;

  GpSds.Free;

  //MasterCds.Active := false;
  //MasterCds.Active := true;

  FilterData;

end;



procedure TQuoExclusionAgentForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoExclusionAgentForm.FilterData;
var
  x_addressbook_id: integer;
begin
  inherited;

  x_addressbook_id := 0;
  if cxAgentLCMB.EditValue <> null then
    x_addressbook_id := cxAgentLCMB.EditValue;

  MasterCds.Active := false;
  MasterSds.Active := false;
  MasterSds.Params[0].Value := x_addressbook_id;
  MasterSds.Params[1].Value := QuoExclusionAgentForm_QuoExclusions_id;
  MasterSds.Active := true;
  MasterCds.Active := true;

end;

end.
