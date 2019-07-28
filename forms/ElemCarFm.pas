unit ElemCarFm;

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
  TElemCarForm = class(TCustom_1MG_Form)
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
    ServicesCdsServices_id: TIntegerField;
    ServicesCdsDescription: TStringField;
    AgentCdsCities_id: TIntegerField;
    WefCdsWef: TSQLTimeStampField;
    ServicesCdsAddressbook_id: TIntegerField;
    CodeSds: TSQLDataSet;
    CodeDsp: TDataSetProvider;
    CodeCds: TClientDataSet;
    CodeCdsQuotationRef: TStringField;
    CodeCdsPaxName: TStringField;
    CodeDs: TDataSource;
    MasterCdsElemCars_id: TIntegerField;
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
    cxGrid1DBBandedTableView1QuotationRef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PaxName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Sector: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
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
  ElemCarForm: TElemCarForm;
  ElemCarForm_Level: Integer;
  ElemCarForm_NullDate: TDateTime;
  ElemCarForm_Agents_id: integer;
  ElemCarForm_Wef: TDateTime;
  ElemCarForm_Cities_id: integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemCarForm.FormCreate(Sender: TObject);
begin

  ElemCarForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := ElemCarForm_NullDate;
  inherited;

  CitiesCds.Open;
  CodeCds.Open;
  AgentCds.Open;
  WefCds.Open;

  if ElemCarForm_Cities_id <> null then
    cxCityLCMB.EditValue := ElemCarForm_Cities_id;

  if ElemCarForm_Agents_id <> null then
    cxAgentLCMB.EditValue := ElemCarForm_Agents_id;

  if ElemCarForm_Wef <> null then
    cxWefLCMB.EditValue := ElemCarForm_Wef;

end;

procedure TElemCarForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemCarForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemCarForm := nil;
end;

procedure TElemCarForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemCars';
  Custom_MasterKeyField := 'ElemCars_id';
  Custom_AdmLevel := ElemCarForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemCarForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemCarForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

 if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

 if (MasterCds['QuotationRef'] = null) then
    raise Exception.Create('Please enter the code');

 if (MasterCds['Sector'] = null) then
    raise Exception.Create('Please enter the sector');

 if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if MasterCds['ElemCars_id'] = null then
    raise Exception.Create('ElemCars_id is not assigned');

end;

function TElemCarForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemCars ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND QuotationRef = ' + QuotedStr(MasterCds['QuotationRef']) + ' ' +
    'AND Sector = ' + QuotedStr(MasterCds['Sector']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemCars_id <> ' + IntToStr(MasterCds['ElemCars_id']) + ') ';

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

procedure TElemCarForm.FilterData;
var
  x_Agents_id, x_Cities_id: integer;
  x_wef: TDateTime;
begin

  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_wef := ElemCarForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Agents_id;
  MasterSds.Params[1].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TElemCarForm.FilterWef;
var
  x_Agents_id: integer;
  x_wef: TDateTime;
begin
  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  x_wef := ElemCarForm_NullDate;

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


procedure TElemCarForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  inherited;

  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  CitiesCds.Locate('Cities_id', x_Cities_id, []);

  FilterData;
end;

procedure TElemCarForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;

  if cxWefLCMB.EditValue <> null then
    MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['Quoted'] := false;

end;

procedure TElemCarForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := ElemCarForm_NullDate;

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

procedure TElemCarForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

procedure TElemCarForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
