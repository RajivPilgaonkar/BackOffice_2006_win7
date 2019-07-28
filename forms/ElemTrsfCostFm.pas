unit ElemTrsfCostFm;

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
  cxDBLookupComboBox, cxTextEdit;

type
  TElemTrsfCostForm = class(TCustom_1MG_Form)
    MasterCdsElemServicesCosts_id: TIntegerField;
    MasterCdsElemServices_id: TIntegerField;
    MasterCdsNumPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    cxGrid1DBBandedTableView1ElemServicesCosts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ElemServices_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    MasterCdsVehicles_id: TIntegerField;
    cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsAddressbook_id: TIntegerField;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleCdsPax: TIntegerField;
    VehicleDs: TDataSource;
    MasterCdsSystemCost: TFMTBCDField;
    cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn;
    MasterCdsTransportCost: TFMTBCDField;
    cxGrid1DBBandedTableView1TransportCost: TcxGridDBBandedColumn;
    MasterCdsMiscCost: TFMTBCDField;
    MasterCdsGuideCost: TFMTBCDField;
    MasterCdsEntranceFees: TFMTBCDField;
    cxGrid1DBBandedTableView1MiscCost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GuideCost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EntranceFees: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsTransportCostChange(Sender: TField);
    procedure MasterCdsMiscCostChange(Sender: TField);
    procedure MasterCdsGuideCostChange(Sender: TField);
    procedure MasterCdsEntranceFeesChange(Sender: TField);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure RefreshData;
  public
    procedure ComputeCost;
    { Public declarations }
  end;

var
  ElemTrsfCostForm: TElemTrsfCostForm;
  ElemTrsfCostForm_Level: Integer;
  ElemTrsfCostForm_ElemServices_id: Integer;
  ElemTrsfCostForm_Addressbook_id: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemTrsfCostForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := ElemTrsfCostForm_ElemServices_id;

  inherited;

  VehicleSds.Params[0].Value :=  ElemTrsfCostForm_Addressbook_id;
  VehicleSds.Open;
  VehicleCds.Open;

end;

procedure TElemTrsfCostForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemTrsfCostForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemTrsfCostForm := nil;
end;

procedure TElemTrsfCostForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemServicesCosts';
  Custom_MasterKeyField := 'ElemServicesCosts_id';
  Custom_AdmLevel := ElemTrsfCostForm_Level;

  Custom_FormWidth := 900;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemTrsfCostForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemTrsfCostForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ElemServices_id'] = null) then
    raise Exception.Create('Please select an Service line first');

  if (MasterCds['NumPax'] = null) then
    raise Exception.Create('Please enter the Num Pax');

  if (MasterCds['TransportCost'] = null) then
    MasterCds['TransportCost'] := 0.0;

  if (MasterCds['MiscCost'] = null) then
    MasterCds['MiscCost'] := 0.0;

  if (MasterCds['GuideCost'] = null) then
    MasterCds['GuideCost'] := 0.0;

  if (MasterCds['EntranceFees'] = null) then
    MasterCds['EntranceFees'] := 0.0;

  MasterCds['Cost'] := MasterCds['TransportCost'] + MasterCds['MiscCost'] + MasterCds['GuideCost'] + MasterCds['EntranceFees'];

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['ElemServicesCosts_id'] = null then
    raise Exception.Create('ElemServicesCosts_id is not assigned');

end;

function TElemTrsfCostForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemServicesCosts ' +
    'WHERE ElemServices_id = ' + IntToStr(MasterCds['ElemServices_id']) + ' ' +
    'AND NumPax = ' + IntToStr(MasterCds['NumPax']) + ' ' ;

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemServicesCosts_id <> ' + IntToStr(MasterCds['ElemServicesCosts_id']) + ') ';

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


procedure TElemTrsfCostForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ElemServices_id'] := ElemTrsfCostForm_ElemServices_id;
end;

procedure TElemTrsfCostForm.RefreshData;
begin
  inherited;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[0].Value := ElemTrsfCostForm_ElemServices_id;

  MasterSds.Active := true;
  MasterCds.Active := true;

end;

procedure TElemTrsfCostForm.ComputeCost;
var
  x_CostTransport, x_CostMisc, x_CostGuide, x_CostEntrance: double;
begin
  inherited;
  x_CostTransport := 0.0;
  if MasterCds['TransportCost'] <> null then
    x_CostTransport := MasterCds['TransportCost'];

  x_CostMisc := 0.0;
  if MasterCds['MiscCost'] <> null then
    x_CostMisc := MasterCds['MiscCost'];

  x_CostGuide := 0.0;
  if MasterCds['GuideCost'] <> null then
    x_CostGuide := MasterCds['GuideCost'];

  x_CostEntrance := 0.0;
  if MasterCds['EntranceFees'] <> null then
    x_CostEntrance := MasterCds['EntranceFees'];

  MasterCds['Cost'] := RoundOff(x_CostTransport + x_CostMisc + x_CostGuide + x_CostEntrance);

end;

procedure TElemTrsfCostForm.MasterCdsTransportCostChange(Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemTrsfCostForm.MasterCdsMiscCostChange(Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemTrsfCostForm.MasterCdsGuideCostChange(Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemTrsfCostForm.MasterCdsEntranceFeesChange(Sender: TField);
begin
  inherited;
  ComputeCost;
end;

end.
