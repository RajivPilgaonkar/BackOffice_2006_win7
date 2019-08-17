unit ElemInterCitiesFm;

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
  TElemInterCitiesForm = class(TCustom_1MG_Form)
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
    MasterCdsElemIntercities_id: TIntegerField;
    Label4: TLabel;
    cxFromCityLCMB: TcxLookupComboBox;
    Label5: TLabel;
    cxToCityLCMB: TcxLookupComboBox;
    FromCitiesSds: TSQLDataSet;
    FromCitiesDsp: TDataSetProvider;
    FromCitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FromCitiesDs: TDataSource;
    ToCitiesSds: TSQLDataSet;
    ToCitiesDsp: TDataSetProvider;
    ToCitiesCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField8: TStringField;
    ToCitiesDs: TDataSource;
    MasterCdsFromCities_id: TIntegerField;
    MasterCdsToCities_id: TIntegerField;
    cxGrid1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxFromCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxToCityLCMBPropertiesEditValueChanged(Sender: TObject);
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
  ElemInterCitiesForm: TElemInterCitiesForm;
  ElemInterCitiesForm_Level: Integer;
  ElemInterCitiesForm_NullDate: TDateTime;
  ElemInterCitiesForm_Agents_id: integer;
  ElemInterCitiesForm_Wef: TDateTime;
  ElemInterCitiesForm_Cities_id: integer;
  ElemInterCitiesForm_FromCities_id: integer;
  ElemInterCitiesForm_ToCities_id: integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemInterCitiesForm.FormCreate(Sender: TObject);
begin

  ElemInterCitiesForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := ElemInterCitiesForm_NullDate;
  MasterSds.Params[2].Value := ElemInterCitiesForm_FromCities_id;
  MasterSds.Params[3].Value := ElemInterCitiesForm_ToCities_id;
  inherited;

  CitiesCds.Open;
  CodeCds.Open;
  AgentCds.Open;
  FromCitiesCds.Open;
  ToCitiesCds.Open;  
  WefCds.Open;

  if ElemInterCitiesForm_Cities_id <> null then
    cxCityLCMB.EditValue := ElemInterCitiesForm_Cities_id;

  if ElemInterCitiesForm_Agents_id <> null then
    cxAgentLCMB.EditValue := ElemInterCitiesForm_Agents_id;

  if ElemInterCitiesForm_Wef <> null then
    cxWefLCMB.EditValue := ElemInterCitiesForm_Wef;

  if ElemInterCitiesForm_FromCities_id <> null then
    cxFromCityLCMB.EditValue := ElemInterCitiesForm_FromCities_id;

  if ElemInterCitiesForm_ToCities_id <> null then
    cxToCityLCMB.EditValue := ElemInterCitiesForm_ToCities_id;

end;

procedure TElemInterCitiesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemInterCitiesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemInterCitiesForm := nil;
end;

procedure TElemInterCitiesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemInterCities';
  Custom_MasterKeyField := 'ElemInterCities_id';
  Custom_AdmLevel := ElemInterCitiesForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemInterCitiesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemInterCitiesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

 if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

 if (MasterCds['FromCities_id'] = null) then
    raise Exception.Create('Please enter the "From City"');

 if (MasterCds['ToCities_id'] = null) then
    raise Exception.Create('Please enter the "To City"');

 if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

 if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if MasterCds['ElemInterCities_id'] = null then
    raise Exception.Create('ElemInterCities_id is not assigned');

end;

function TElemInterCitiesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemInterCities ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND FromCities_id = ' + QuotedStr(MasterCds['FromCities_id']) + ' ' +
    'AND ToCities_id = ' + QuotedStr(MasterCds['ToCities_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemInterCities_id <> ' + IntToStr(MasterCds['ElemInterCities_id']) + ') ';

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

procedure TElemInterCitiesForm.FilterData;
var
  x_Agents_id, x_FromCities_id, x_ToCities_id: integer;
  x_wef: TDateTime;
begin

  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_wef := ElemInterCitiesForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  x_FromCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  x_ToCities_id := -1;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Agents_id;
  MasterSds.Params[1].Value := x_Wef;
  MasterSds.Params[2].Value := x_FromCities_id;
  MasterSds.Params[3].Value := x_ToCities_id;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TElemInterCitiesForm.FilterWef;
var
  x_Agents_id: integer;
  x_wef: TDateTime;
begin
  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  x_wef := ElemInterCitiesForm_NullDate;

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


procedure TElemInterCitiesForm.cxCityLCMBPropertiesEditValueChanged(
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

procedure TElemInterCitiesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxAgentLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;

  if cxWefLCMB.EditValue <> null then
    MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['Quoted'] := false;

end;

procedure TElemInterCitiesForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := ElemInterCitiesForm_NullDate;

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

procedure TElemInterCitiesForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Addressbook_id: integer;
begin
  inherited;

  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Addressbook_id, []);

  FromCitiesCds.Close;
  FromCitiesCds.Open;

  ToCitiesCds.Close;
  ToCitiesCds.Open;

  FilterWef;
  FilterData;
end;

procedure TElemInterCitiesForm.cxFromCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_FromCities_id: integer;
begin
  inherited;

  x_FromCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  FromCitiesCds.Locate('Cities_id', x_FromCities_id, []);

  FilterData;

end;

procedure TElemInterCitiesForm.cxToCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_ToCities_id: integer;
begin
  inherited;

  x_ToCities_id := -1;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  ToCitiesCds.Locate('Cities_id', x_ToCities_id, []);

  FilterData;

end;

end.
