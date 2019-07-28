unit EntryTaxFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxContainer, cxLabel, cxDBLabel,
  cxButtons, ExtCtrls, Buttons;

type
  TEntryTaxForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxStateLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    SpeedButton1: TSpeedButton;
    StateSds: TSQLDataSet;
    StateDsp: TDataSetProvider;
    StateCds: TClientDataSet;
    StateCdsstates_id: TIntegerField;
    StateCdsstate: TStringField;
    StateDs: TDataSource;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleDS: TDataSource;
    cxGrid1DBBandedTableView1EntryTaxes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1States_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EntryTax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EmptyEntryTax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EntryValidityDays: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EntryTaxPerSeat: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn;
    WefCdsStates_id: TIntegerField;
    MasterCdsEntryTaxes_id: TIntegerField;
    MasterCdsStates_id: TIntegerField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsEntryTax: TFMTBCDField;
    MasterCdsEmptyEntryTax: TFMTBCDField;
    MasterCdsEntryValidityDays: TIntegerField;
    MasterCdsEntryTaxPerSeat: TFMTBCDField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWet;
  public
    { Public declarations }
  end;

var
  EntryTaxForm: TEntryTaxForm;
  EntryTaxForm_Level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TEntryTaxForm.FormCreate(Sender: TObject);
begin

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := StrToDate('01/01/2011');
  MasterSds.Params[1].Value := -1;

  inherited;

  StateCds.Open;
  WefCds.Open;
  VehicleCds.Open;

end;

procedure TEntryTaxForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TEntryTaxForm.FormDestroy(Sender: TObject);
begin
  inherited;
  EntryTaxForm := nil;
end;

procedure TEntryTaxForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'EntryTaxes';
  Custom_MasterKeyField := 'EntryTaxes_id';
  Custom_AdmLevel := EntryTaxForm_Level;

  Custom_FormWidth := 930;
  Custom_FormHeight := 450;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TEntryTaxForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TEntryTaxForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['States_id'] = null) then
    raise Exception.Create('Please select the state');

  if (MasterCds['Vehicles_id'] = null) then
    raise Exception.Create('Please enter the Class');

  if (MasterCds['EntryTax'] = null) then
    MasterCds['EntryTax'] := 0.0;

  if (MasterCds['EmptyEntryTax'] = null) then
    MasterCds['EmptyEntryTax'] := 0.0;

  if (MasterCds['EntryValidityDays'] = null) then
    MasterCds['EntryValidityDays'] := 0;

  if (MasterCds['EntryTaxPerSeat'] = null) then
    MasterCds['EntryTaxPerSeat'] := 0.0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['EntryTaxes_id'] = null then
    raise Exception.Create('EntryTaxes_id is not assigned');

end;

function TEntryTaxForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM EntryTaxes ' +
    'WHERE States_id = ' + IntToStr(MasterCds['States_id']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(MasterCds['Vehicles_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (EntryTaxes_id <> ' + IntToStr(MasterCds['EntryTaxes_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

procedure TEntryTaxForm.FilterData;
var
  x_States_id: integer;
  x_wef: TDateTime;
begin

  x_States_id := -1;

  if cxStateLCMB.EditValue <> null then
    x_States_id := cxStateLCMB.EditValue;

  x_wef := StrToDate('01/01/2011');

  if cxWefLcmb.EditValue <> null then
    x_wef := cxWefLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Wef;
  MasterSds.Params[1].Value := x_States_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TEntryTaxForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_States_id: integer;
begin
  inherited;
  x_States_id := -1;

  if cxStateLCMB.EditValue <> null then
    x_States_id := cxStateLCMB.EditValue;

  StateCds.Locate('States_id', x_States_id, []);

  if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef'];

  FilterData;
end;

procedure TEntryTaxForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TEntryTaxForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxStateLCMB.EditValue = null then
    exit;

  if cxWefLCMB.EditValue = null then
    exit;

  MasterCds['States_id'] := cxStateLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;

end;

procedure TEntryTaxForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if cxStateLCMB.EditValue = null then
    Abort;

  if cxWefLCMB.EditValue = null then
    Abort;

end;

procedure TEntryTaxForm.PostWet;
begin
  inherited;

  if MasterCds['wef'] <> cxWefLCMB.EditValue then
    begin
      if not WefCds.Locate ('wef', MasterCds['wef'], []) then
        begin
          WefCds.Close;
          WefCds.Open;
          if WefCds.Locate ('wef', MasterCds['wef'], []) then
            cxWefLCMB.EditValue := MasterCds['wef'];
        end;
    end;

end;


procedure TEntryTaxForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWet;
end;

procedure TEntryTaxForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  WefCds.Close;
  WefCds.Open;
  if WefCds.Locate ('wef', MasterCds['wef'], []) then
    cxWefLCMB.EditValue := MasterCds['wef'];
end;

end.
