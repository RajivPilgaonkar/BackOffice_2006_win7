unit EntryTaxesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBCtrls,
  DBClient, Provider, SqlExpr, StdCtrls, Buttons, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLookAndFeelPainters, cxButtons, Menus, cxCalendar,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel,
  cxGroupBox;

type
  TEntryTaxForm = class(TCustomMasterCxGridForm)
    GroupBox2: TcxGroupBox;
    StateSds: TSQLDataSet;
    StateDsp: TDataSetProvider;
    StateCds: TClientDataSet;
    StateDs: TDataSource;
    cxStateLCMB: TcxLookupComboBox;
    StateCdsstates_id: TIntegerField;
    StateCdsstate: TStringField;
    MasterCdsEntryTaxes_id: TIntegerField;
    MasterCdsStates_id: TIntegerField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsEntryTax: TFMTBCDField;
    MasterCdsEmptyEntryTax: TFMTBCDField;
    MasterCdsEntryValidityDays: TIntegerField;
    MasterCdsEntryTaxPerSeat: TFMTBCDField;
    CustomMasterCxGridDBTableView1EntryTaxes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1States_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Vehicles_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EntryTax: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EmptyEntryTax: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EntryValidityDays: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EntryTaxPerSeat: TcxGridDBColumn;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    GroupBox3: TcxGroupBox;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    cxWefLCMB: TcxLookupComboBox;
    cxButtonUpdate: TcxButton;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure FilterData;
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxWefLCMBEnter(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure ChangeWefCombo;
    function DoesWefExist: Boolean;
    procedure cxStateLCMBExit(Sender: TObject);
    procedure cxWefLCMBExit(Sender: TObject);
    procedure cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxStateLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryTaxForm: TEntryTaxForm;
  _EntryTaxForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, SearchSortFm, EntryTax2Fm, MainFm;

var
  _IsNewWef:  Boolean;


{$R *.dfm}

procedure TEntryTaxForm.FormCreate(Sender: TObject);
begin
  StateSds.Active := True;
  StateCds.Active := True;

  BackOfficeDataModule.VehicleSds.Active := True;
  BackOfficeDataModule.VehicleCds.Active := True;

  MasterCdsName := 'EntryTaxes';
  MasterKeyField := 'EntryTaxes_id';

  AdmLevel := _EntryTaxForm_Level;

  inherited;

  cxStateLCMB.EditValue := StateCdsStates_id.Value;

  FilterData;

  ChangeWefCombo;

end;

procedure TEntryTaxForm.FormDestroy(Sender: TObject);
begin
  inherited;
  EntryTaxForm := nil;
end;

procedure TEntryTaxForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['States_id'] = null then
    raise Exception.Create('Please select the State');

  if MasterCds['Vehicles_id'] = null then
    raise Exception.Create('Please select the Vehicle');

  if MasterCds['wef'] = null then
    raise Exception.Create('Please select the wef');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  _IsNewWef := False;

  if DoesWefExist = false then
    begin
      _IsNewWef := True;
    end;


end;

function TEntryTaxForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM EntryTaxes ' +
    'WHERE States_id = ' + IntToStr(MasterCds['States_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['Vehicles_id']) + ' ' +
    'AND Wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (EntryTaxes_id <> ' + IntToStr(MasterCds['EntryTaxes_id']) + ') ';

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


procedure TEntryTaxForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  MasterCds['States_id'] := cxStateLCMB.EditValue;

  try
    if cxWefLCMB.Text <> '' then
      MasterCds['Wef'] := cxWefLCMB.Text;
  except
  end;

end;

procedure TEntryTaxForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (cxStateLCMB.EditValue = null) or (cxStateLCMB.EditValue = 0) then
    raise exception.create ('Please select a State first');
end;

procedure TEntryTaxForm.FilterData;
var
  x_Filter, StateFilter, DateFilter : string;
begin
  inherited;

  if Trim(cxWefLCMB.Text) = '' then
    x_filter := ' (1=2) '
  else
    x_filter := ' (1=1) ';

  StateFilter := '';
  try
    if (cxStateLcmb.EditValue <> null) and (cxStateLcmb.EditValue <> 0) then
       StateFilter := ' AND (States_id = ' + IntToStr(cxStateLcmb.EditValue) + ') '
    else
       StateFilter := ' AND (States_id = -1) '
  except
  end;

  DateFilter := '';
  try
    if Trim(cxWefLCMB.Text) <> '' then
       DateFilter := ' AND (Wef = ''' + FormatDateTime('dd/mm/yyyy', StrToDate(cxWefLCMB.Text) ) + ''') ';
  except
  end;


  MasterCds.Active := False;
  MasterCds.Filter := x_Filter + StateFilter + DateFilter;
  MasterCds.Filtered := True;
  MasterCds.Active := True;
  MasterCds.Last;

end;

procedure TEntryTaxForm.ChangeWefCombo;
var
  x_Filter, StateFilter, DateFilter : string;
begin
  inherited;

  x_Filter := ' WHERE (1=1) ';

  StateFilter := '';
  try
    if (cxStateLcmb.EditValue <> null) and (cxStateLcmb.EditValue <> 0) then
       StateFilter := ' AND (States_id = ' + IntToStr(cxStateLcmb.EditValue) + ') '
    else
       StateFilter := ' AND (States_id = -1) '
  except
  end;

  x_Filter := 'SELECT DISTINCT wef FROM EntryTaxes ' +
    x_Filter + StateFilter +
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

procedure TEntryTaxForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  if _IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TEntryTaxForm.cxWefLCMBEnter(Sender: TObject);
begin
  inherited;
  ChangeWefCombo;
end;

procedure TEntryTaxForm.cxButtonUpdateClick(Sender: TObject);
begin
  inherited;
  ChangeWefCombo;
  FilterData;

end;

function TEntryTaxForm.DoesWefExist: Boolean;
var
  QueryString, x_filter, StateFilter: string;
  x_WefExist: boolean;
  GpSds: TSQLDataSet;
begin

  x_WefExist := False;

  x_Filter := ' WHERE (1=1) ';

  StateFilter := '';
  try
    if (cxStateLcmb.EditValue <> null) and (cxStateLcmb.EditValue <> 0) then
       StateFilter := ' AND (States_id = ' + IntToStr(cxStateLcmb.EditValue) + ') '
    else
       StateFilter := ' AND (States_id = -1) '
  except
  end;

  QueryString := 'SELECT x_count = COUNT(*) FROM EntryTaxes ' +
    x_filter + StateFilter +
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


procedure TEntryTaxForm.cxStateLCMBExit(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TEntryTaxForm.cxWefLCMBExit(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TEntryTaxForm.cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterData;
end;

procedure TEntryTaxForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TEntryTaxForm.cxStateLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if (CxStateLCMB.EditValue <> null) and (StateCds.State <> dsInactive) then
      begin
        cxButtonUpdateClick(nil);
      end;

  except
  end;

end;

procedure TEntryTaxForm.BitBtn1Click(Sender: TObject);
begin
  inherited;

  EntryTax2Form_Level := GetUserLevel(g_users_id, 9120);

  EntryTax2Form_Level := 4;

  If EntryTax2Form_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if EntryTax2Form = nil then
    Application.CreateForm(TEntryTax2Form,EntryTax2Form);

end;

end.
