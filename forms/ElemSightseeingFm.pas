unit ElemSightseeingFm;

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
  TElemSightseeingForm = class(TCustom_1MG_Form)
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
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesDs: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    MasterCdsElemServices_id: TIntegerField;
    MasterCdsServices_id: TIntegerField;
    MasterCdsAgentAddressBook_id: TIntegerField;
    MasterCdsSightSeeing: TBooleanField;
    MasterCdsWef: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ElemServices_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Services_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AgentAddressBook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    ServicesCdsServices_id: TIntegerField;
    ServicesCdsDescription: TStringField;
    AgentCdsCities_id: TIntegerField;
    WefCdsWef: TSQLTimeStampField;
    ServicesCdsAddressbook_id: TIntegerField;
    MasterCdsQuoted: TBooleanField;
    cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn;
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
  ElemSightseeingForm: TElemSightseeingForm;
  ElemSightseeingForm_Level: Integer;
  ElemSightseeingForm_NullDate: TDateTime;
  ElemSightseeingForm_Cities_id: integer;
  ElemSightseeingForm_Agents_id: integer;
  ElemSightseeingForm_Services_id: integer;
  ElemSightseeingForm_Wef: TDateTime;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemSightseeingForm.FormCreate(Sender: TObject);
begin

  ElemSightseeingForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := ElemSightseeingForm_NullDate;
  inherited;

  CitiesCds.Open;
  AgentCds.Open;
  WefCds.Open;

  ServicesCds.Open;

  if ElemSightseeingForm_Cities_id <> null then
    cxCityLCMB.EditValue := ElemSightseeingForm_Cities_id;

  if ElemSightseeingForm_Agents_id <> null then
    cxAgentLCMB.EditValue := ElemSightseeingForm_Agents_id;

  if ElemSightseeingForm_Wef <> null then
    cxWefLCMB.EditValue := ElemSightseeingForm_Wef;

  ServicesCds.Locate('Services_id', ElemSightseeingForm_Services_id, []);

end;

procedure TElemSightseeingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemSightseeingForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemSightseeingForm := nil;
end;

procedure TElemSightseeingForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemServices';
  Custom_MasterKeyField := 'ElemServices_id';
  Custom_AdmLevel := ElemSightseeingForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemSightseeingForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemSightseeingForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

 if (MasterCds['Services_id'] = null) then
    raise Exception.Create('Please enter the Service');

 if (MasterCds['AgentAddressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

 if (MasterCds['SightSeeing'] = null) then
    raise Exception.Create('Please enter if SightSeeing');

 if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if MasterCds['ElemServices_id'] = null then
    raise Exception.Create('ElemServices_id is not assigned');

end;

function TElemSightseeingForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemServices ' +
    'WHERE AgentAddressbook_id = ' + IntToStr(MasterCds['AgentAddressbook_id']) + ' ' +
    'AND Services_id = ' + IntToStr(MasterCds['Services_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemServices_id <> ' + IntToStr(MasterCds['ElemServices_id']) + ') ';

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

procedure TElemSightseeingForm.FilterData;
var
  x_Agents_id, x_Cities_id: integer;
  x_wef: TDateTime;
begin

  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  x_wef := ElemSightseeingForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Agents_id;
  MasterSds.Params[1].Value := x_Wef;
  MasterSds.Params[2].Value := x_Cities_id;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TElemSightseeingForm.FilterWef;
var
  x_Agents_id: integer;
  x_wef: TDateTime;
begin
  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  x_wef := ElemSightseeingForm_NullDate;

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


procedure TElemSightseeingForm.cxCityLCMBPropertiesEditValueChanged(
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

procedure TElemSightseeingForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    exit;

  MasterCds['AgentAddressbook_id'] := cxAgentLCMB.EditValue;

  if cxWefLCMB.EditValue <> null then
    MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['Sightseeing'] := true;

end;

procedure TElemSightseeingForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := ElemSightseeingForm_NullDate;

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

procedure TElemSightseeingForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

end.
