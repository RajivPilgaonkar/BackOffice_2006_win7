unit FixedItinCostingFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox,
  cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel,
  cxGroupBox, cxMemo, cxDBEdit;

type
  TFixedItinCostingForm = class(TCustomMasterCxGridForm)
    MasterCdsFixedItinCosts_id: TIntegerField;
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsWet: TSQLTimeStampField;
    MasterCdsFromPax: TIntegerField;
    MasterCdsToPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsCostSS: TFMTBCDField;
    CustomMasterCxGridDBTableView1FixedItinCosts_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromPax: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToPax: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1CostSS: TcxGridDBColumn;
    cxWefLCMB: TcxLookupComboBox;
    Label1: TLabel;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    cxButtonUpdate: TcxButton;
    Label2: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxCurrencyLCMB: TcxLookupComboBox;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsPrincipalAgents_id: TIntegerField;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDS: TDataSource;
    PopupMenu1: TPopupMenu;
    ChangeCostSSforall1: TMenuItem;
    N1: TMenuItem;
    ChangeWetforall1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure ItinFilter;
    procedure ChangeWefCombo;
    function DoesWefExist: Boolean;
    procedure cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    function GetNumPax: integer;
    procedure FilterData;
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCurrencyLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    function GetPrevCostSS: double;
    procedure InsertWetFromPrev;
    procedure ChangeCostSSforall1Click(Sender: TObject);
    procedure ChangeWetforall1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixedItinCostingForm: TFixedItinCostingForm;
  _FixedItinCostingForm_Level: Integer;
  _FixedItinCostingForm_FixedItin_id: Integer;
  _FixedItinCostingForm_Addressbook_id: Integer;

implementation

uses BackOfficeDM, GeneralUt;

var
  _FixedItinCostingForm_IsNewWef:  Boolean;

{$R *.dfm}

procedure TFixedItinCostingForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'FixedItinCosts';
  MasterKeyField := 'FixedItinCosts_id';

  if _FixedItinCostingForm_Addressbook_id > 0 then
    PrinAgentSds.CommandText := 'select * from dbo.fn_addressbook(2,''OA'') ' +
      'where Addressbook_id = ' + IntToStr(_FixedItinCostingForm_Addressbook_id)
  else
    PrinAgentSds.CommandText := 'select * from dbo.fn_addressbook(2,''OA'') ' +
      'where Addressbook_id <> ' + IntToStr(2137);

  AdmLevel := _FixedItinCostingForm_Level;

  PrinAgentCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;

  if _FixedItinCostingForm_Addressbook_id > 0 then
    cxAgentLcmb.EditValue := GetDefaultPrincipalAgent
  else
    cxAgentLcmb.EditValue := 68;

//  cxCurrencyLcmb.EditValue := GetDefaultCurrency;
  cxCurrencyLcmb.EditValue := 27;

  ChangeWefCombo;

//  ItinFilter;

  FilterData;

  inherited;

end;

procedure TFixedItinCostingForm.FilterData;
begin

  MasterCds.Active := False;

  MasterSds.Active := False;
  MasterSds.Params[0].Value := _FixedItinCostingForm_FixedItin_id;
  MasterSds.Params[1].Value := null;
  if cxWefLCMB.Text > '' then
    MasterSds.Params[1].Value := cxWefLCMB.EditValue;
  MasterSds.Params[2].Value := null;
  if cxAgentLCMB.EditValue <> null then
    MasterSds.Params[2].Value := cxAgentLCMB.EditValue;
  MasterSds.Params[3].Value := null;
  if cxCurrencyLCMB.EditValue <> null then
    MasterSds.Params[3].Value := cxCurrencyLCMB.EditValue;
  MasterSds.Active := True;

  MasterCds.Active := True;
end;


procedure TFixedItinCostingForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FixedItinCostingForm := nil;
end;

procedure TFixedItinCostingForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if _FixedItinCostingForm_FixedItin_id = null then
    raise exception.create ('Please select an itinerary');

  if _FixedItinCostingForm_FixedItin_id <> null then
    MasterCds['FixedItin_id'] := _FixedItinCostingForm_FixedItin_id;

  if (MasterCds['Wef'] = null) then
    raise Exception.Create('Please enter the "Wef"');

  if (MasterCds['PrincipalAgents_id'] = null) then
    raise Exception.Create('Please enter the "Principal Agent"');

  if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

  if (MasterCds['FromPax'] = null) then
    raise Exception.Create('Please enter the "From Pax"');

  if (MasterCds['ToPax'] = null) then
    raise Exception.Create('Please enter the "To Pax"');

  if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

  if (MasterCds['CostSS'] = null) then
    MasterCds['CostSS'] := 0.0;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  _FixedItinCostingForm_IsNewWef := False;

  if DoesWefExist = false then
    begin
      _FixedItinCostingForm_IsNewWef := True;
    end;

end;

function TFixedItinCostingForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM FixeditinCosts ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id) + ' ' +
    'AND Wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['Wef']) + ''' ' +
    'AND FromPax = ' + IntToStr(MasterCds['FromPax']) + ' ' +
    'AND ToPax = ' + IntToStr(MasterCds['ToPax']) + ' ' +
    'AND PrincipalAgents_id = ' + IntToStr(MasterCds['PrincipalAgents_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (FixeditinCosts_id <> ' + IntToStr(MasterCds['FixeditinCosts_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TFixedItinCostingForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  if _FixedItinCostingForm_IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TFixedItinCostingForm.cxButtonUpdateClick(Sender: TObject);
begin
  inherited;

  ChangeWefCombo;
  FilterData;
//  ItinFilter;

end;

procedure TFixedItinCostingForm.ItinFilter;
var
  x_Filter, x_ItinFilter: string;
begin

  if Trim(cxWefLCMB.Text) = '' then
    x_Filter := ' (1=2) '
  else
    x_Filter := ' Wef = ''' + cxWefLCMB.Text + ''' ';

  x_ItinFilter :=  ' AND FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id);

  MasterCds.Active := False;
  MasterCds.Filter := x_Filter + x_ItinFilter;
  MasterCds.Filtered := True;
  MasterCds.Active := True;
  MasterCds.Last;

end;


procedure TFixedItinCostingForm.ChangeWefCombo;
var
  x_Filter, x_ItinFilter : string;
begin
  inherited;

  x_Filter := ' WHERE (1=1) ';

  x_ItinFilter :=  ' AND FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id);

  x_Filter := 'SELECT DISTINCT wef FROM FixedItinCosts ' +
    x_Filter + x_ItinFilter + ' ' +
    ' ORDER BY Wef DESC';

  WefSds.Close;
  WefSds.CommandText := x_Filter;

  WefCds.Close;
  WefCds.Open;

  if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.EditValue := null;

end;

function TFixedItinCostingForm.DoesWefExist: Boolean;
var
  QueryString, x_Filter, x_ItinFilter: string;
  x_WefExist: boolean;
  GpSds: TSQLDataSet;
begin

  x_WefExist := False;

  x_Filter := ' WHERE (1=1) ';

  x_ItinFilter :=  ' AND FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id);

  QueryString := 'SELECT x_count = COUNT(*) FROM FixedItinCosts ' +
    x_Filter + x_ItinFilter +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_WefExist := True;

  GpSds.Free;

  Result := x_wefExist;

end;



procedure TFixedItinCostingForm.cxWefLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterData;
end;

procedure TFixedItinCostingForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if trim(cxWefLCMB.Text) > '' then
    MasterCds['Wef'] := StrToDate(cxWefLCMB.Text);

  if cxAgentLcmb.EditValue <> null then
    MasterCds['PrincipalAgents_id'] := cxAgentLcmb.EditValue;

  if cxCurrencyLcmb.EditValue <> null then
    MasterCds['Currencies_id'] := cxCurrencyLCMB.EditValue;

  MasterCds['FromPax'] := GetNumPax+1;
  MasterCds['ToPax'] := MasterCds['FromPax'];

  MasterCds['CostSS'] := GetPrevCostSS;

  InsertWetFromPrev;
end;

function TFixedItinCostingForm.GetNumPax: integer;
var
  QueryString, x_Filter, x_ItinFilter: string;
  x_Pax, x_Agents_id, x_Currencies_id: integer;
  GpSds: TSQLDataSet;
begin
  inherited;

  x_Agents_id := -1;
  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_Currencies_id := -1;
  if cxCurrencyLCMB.EditValue <> null then
    x_Currencies_id := cxCurrencyLCMB.EditValue;

  QueryString := 'SELECT x_Max = MAX(ToPax) FROM FixedItinCosts ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id) + ' ' +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ' +
    ' AND PrincipalAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' AND Currencies_id = ' + IntToStr(x_Currencies_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  x_Pax := 0;
  if (GpSds['x_Max'] <> null) then
    x_Pax := GpSds['x_Max'];

  GpSds.Free;

  Result := x_Pax;

end;


procedure TFixedItinCostingForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TFixedItinCostingForm.cxCurrencyLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TFixedItinCostingForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

function TFixedItinCostingForm.GetPrevCostSS: double;
var
  QueryString: string;
  x_Agents_id, x_Currencies_id: integer;
  GpSds: TSQLDataSet;
  x_Cost: double;
begin
  inherited;

  x_Agents_id := -1;
  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_Currencies_id := -1;
  if cxCurrencyLCMB.EditValue <> null then
    x_Currencies_id := cxCurrencyLCMB.EditValue;

  QueryString := 'SELECT x_Cost = MAX(CostSS) FROM FixedItinCosts ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id) + ' ' +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ' +
    ' AND ToPax < ' + IntToStr(MasterCds['ToPax']) + ' ' +
    ' AND PrincipalAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' AND Currencies_id = ' + IntToStr(x_Currencies_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  x_Cost := 0.0;
  if (GpSds['x_Cost'] <> null) then
    x_Cost := GpSds['x_Cost'];

  GpSds.Free;

  Result := x_Cost;

end;

procedure TFixedItinCostingForm.InsertWetFromPrev;
var
  QueryString: string;
  x_Agents_id, x_Currencies_id: integer;
  GpSds: TSQLDataSet;
  x_Wet: TDateTime;
begin
  inherited;

  x_Agents_id := -1;
  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_Currencies_id := -1;
  if cxCurrencyLCMB.EditValue <> null then
    x_Currencies_id := cxCurrencyLCMB.EditValue;

  QueryString := 'SELECT x_wet = MAX(Wet) FROM FixedItinCosts ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id) + ' ' +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ' +
    ' AND ToPax < ' + IntToStr(MasterCds['ToPax']) + ' ' +
    ' AND PrincipalAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' AND Currencies_id = ' + IntToStr(x_Currencies_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_Wet'] <> null) then
    MasterCds['Wet'] := GpSds['x_Wet'];

  GpSds.Free;

end;


procedure TFixedItinCostingForm.ChangeCostSSforall1Click(Sender: TObject);
var
  QueryString: string;
  x_Agents_id, x_Currencies_id: integer;
  GpSds: TSQLDataSet;
  x_Cost: double;
begin
  inherited;

  x_Agents_id := -1;
  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_Currencies_id := -1;
  if cxCurrencyLCMB.EditValue <> null then
    x_Currencies_id := cxCurrencyLCMB.EditValue;

  x_Cost := 0.0;
  if MasterCds['CostSS'] <> null then
    x_Cost := MasterCds['CostSS'];

  QueryString := 'UPDATE FixedItinCosts SET CostSS = ' + FloatToStr(x_Cost) + ' ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id) + ' ' +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ' +
    ' AND PrincipalAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' AND Currencies_id = ' + IntToStr(x_Currencies_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  FilterData;

end;

procedure TFixedItinCostingForm.ChangeWetforall1Click(Sender: TObject);
var
  QueryString: string;
  x_Agents_id, x_Currencies_id: integer;
  GpSds: TSQLDataSet;
  x_Wet: TDateTime;
begin
  inherited;

  x_Agents_id := -1;
  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  x_Currencies_id := -1;
  if cxCurrencyLCMB.EditValue <> null then
    x_Currencies_id := cxCurrencyLCMB.EditValue;

  if MasterCds['Wet'] <> null then
    begin

      QueryString := 'UPDATE FixedItinCosts SET Wet = ''' + FormatDateTime('mm/dd/yyyy', MasterCds['Wet']) + ''' ' +
        'WHERE FixedItin_id = ' + IntToStr(_FixedItinCostingForm_FixedItin_id) + ' ' +
        ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ' +
        ' AND PrincipalAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
        ' AND Currencies_id = ' + IntToStr(x_Currencies_id);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      GpSds.Free;

      FilterData;

    end;

end;

end.

