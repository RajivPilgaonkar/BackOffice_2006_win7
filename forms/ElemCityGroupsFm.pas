unit ElemCityGroupsFm;

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
  TElemCityGroupsForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    AgentDs: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    AgentCdsCities_id: TIntegerField;
    WefCdsWef: TSQLTimeStampField;
    CodeSds: TSQLDataSet;
    CodeDsp: TDataSetProvider;
    CodeCds: TClientDataSet;
    CodeCdsQuotationRef: TStringField;
    CodeCdsPaxName: TStringField;
    CodeDs: TDataSource;
    MasterCdsAddressBook_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsWet: TSQLTimeStampField;
    MasterCdsQuoted: TBooleanField;
    MasterCdsQuotationRef: TStringField;
    MasterCdsPaxName: TStringField;
    MasterCdsSector: TStringField;
    cxGrid1DBBandedTableView1ElemCars_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AddressBook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CarHireGroup: TcxGridDBBandedColumn;
    MasterCdsElemCityGroups_id: TIntegerField;
    MasterCdsCarHireGroup: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure FilterWef;
  public
    { Public declarations }
  end;

var
  ElemCityGroupsForm: TElemCityGroupsForm;
  ElemCityGroupsForm_Level: Integer;
  ElemCityGroupsForm_NullDate: TDateTime;
  ElemCityGroupsForm_Agents_id: integer;
  ElemCityGroupsForm_Wef: TDateTime;
  ElemCityGroupsForm_Cities_id: integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemCityGroupsForm.FormCreate(Sender: TObject);
begin

  ElemCityGroupsForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := ElemCityGroupsForm_NullDate;
  inherited;

  CitiesCds.Open;
  CodeCds.Open;
  AgentCds.Open;
  WefCds.Open;

  if ElemCityGroupsForm_Cities_id <> null then
    cxCityLCMB.EditValue := ElemCityGroupsForm_Cities_id;

  if ElemCityGroupsForm_Agents_id <> null then
    cxAgentLCMB.EditValue := ElemCityGroupsForm_Agents_id;

  if ElemCityGroupsForm_Wef <> null then
    cxWefLCMB.EditValue := ElemCityGroupsForm_Wef;

end;

procedure TElemCityGroupsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemCityGroupsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemCityGroupsForm := nil;
end;

procedure TElemCityGroupsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemCityGroups';
  Custom_MasterKeyField := 'ElemCityGroups_id';
  Custom_AdmLevel := ElemCityGroupsForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemCityGroupsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemCityGroupsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

 if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

 if (MasterCds['CarHireGroup'] = null) then
    raise Exception.Create('Please enter the sector');

 if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

 if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if MasterCds['ElemCityGroups_id'] = null then
    raise Exception.Create('ElemCityGroups_id is not assigned');

end;

function TElemCityGroupsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemCityGroups ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND CarHireGroup = ' + QuotedStr(MasterCds['CarHireGroup']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemCityGroups_id <> ' + IntToStr(MasterCds['ElemCityGroups_id']) + ') ';

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

procedure TElemCityGroupsForm.FilterData;
var
  x_Agents_id, x_Cities_id: integer;
  x_wef: TDateTime;
begin

  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_wef := ElemCityGroupsForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Agents_id;
  MasterSds.Params[1].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TElemCityGroupsForm.FilterWef;
var
  x_Agents_id: integer;
  x_wef: TDateTime;
begin
  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  x_wef := ElemCityGroupsForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  WefCds.Close;
  WefSds.Close;

  WefSds.Params[0].Value := x_Agents_id;

  WefSds.Open;
  WefCds.Open;

  if WefCds.Locate ('Wef', x_wef, []) then
    cxWefLCMB.EditValue := x_wef
  else if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.Clear;

end;


procedure TElemCityGroupsForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  inherited;

  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  CitiesCds.Locate('Cities_id', x_Cities_id, []);

end;

procedure TElemCityGroupsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;

  if cxWefLCMB.EditValue <> null then
    MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['Quoted'] := false;

end;

procedure TElemCityGroupsForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := ElemCityGroupsForm_NullDate;

  if MasterCds['Wef'] <> null then
    x_Wef := MasterCds['Wef'];

  WefCds.Close;
  WefCds.Open;

  if WefCds.Locate ('Wef', x_Wef, []) then
    cxWefLCMB.EditValue := x_Wef
  else if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.Clear;
end;

procedure TElemCityGroupsForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

end.
