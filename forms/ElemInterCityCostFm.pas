unit ElemInterCityCostFm;

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
  TElemInterCityCostForm = class(TCustom_1MG_Form)
    cxGrid1DBBandedTableView1ElemInterCitiesCosts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ElemInterCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    VehicleCdsAddressbook_id: TIntegerField;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    MasterCdsElemInterCitiesCosts_id: TIntegerField;
    MasterCdsElemInterCities_id: TIntegerField;
    MasterCdsNumPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsTransportCost: TFMTBCDField;
    MasterCdsRepCost: TFMTBCDField;
    MasterCdsGuideCost: TFMTBCDField;
    cxGrid1DBBandedTableView1TransportCost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RepCost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GuideCost: TcxGridDBBandedColumn;
    MasterCdsSystemCost: TFMTBCDField;
    cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsTransportCostChange(Sender: TField);
    procedure MasterCdsRepCostChange(Sender: TField);
    procedure MasterCdsGuideCostChange(Sender: TField);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure RefreshData;
    procedure ComputeCost;
  public
    { Public declarations }
  end;

var
  ElemInterCityCostForm: TElemInterCityCostForm;
  ElemInterCityCostForm_Level: Integer;
  ElemInterCityCostForm_ElemInterCities_id: Integer;
  ElemInterCityCostForm_Addressbook_id: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemInterCityCostForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := ElemInterCityCostForm_ElemInterCities_id;

  inherited;

  VehicleSds.Params[0].Value :=  ElemInterCityCostForm_Addressbook_id;
  VehicleSds.Open;
  VehicleCds.Open;

end;

procedure TElemInterCityCostForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemInterCityCostForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemInterCityCostForm := nil;
end;

procedure TElemInterCityCostForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemInterCitiesCosts';
  Custom_MasterKeyField := 'ElemInterCitiesCosts_id';
  Custom_AdmLevel := ElemInterCityCostForm_Level;

  Custom_FormWidth := 725;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemInterCityCostForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemInterCityCostForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ElemInterCities_id'] = null) then
    raise Exception.Create('Please select a Car entry first');

  if (MasterCds['NumPax'] = null) then
    raise Exception.Create('Please enter the Num Pax');

  if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['ElemInterCitiesCosts_id'] = null then
    raise Exception.Create('ElemInterCitiesCosts_id is not assigned');

end;

function TElemInterCityCostForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemInterCitiesCosts ' +
    'WHERE ElemInterCities_id = ' + IntToStr(MasterCds['ElemInterCities_id']) + ' ' +
    'AND NumPax = ' + IntToStr(MasterCds['NumPax']) + ' ' ;    

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemInterCitiesCosts_id <> ' + IntToStr(MasterCds['ElemInterCitiesCosts_id']) + ') ';

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


procedure TElemInterCityCostForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ElemInterCities_id'] := ElemInterCityCostForm_ElemInterCities_id;
end;

procedure TElemInterCityCostForm.RefreshData;
begin
  inherited;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[0].Value := ElemInterCityCostForm_ElemInterCities_id;

  MasterSds.Active := true;
  MasterCds.Active := true;

end;


procedure TElemInterCityCostForm.MasterCdsTransportCostChange(
  Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemInterCityCostForm.MasterCdsRepCostChange(Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemInterCityCostForm.MasterCdsGuideCostChange(Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemInterCityCostForm.ComputeCost;
var
  x_CostTransport, x_CostRep, x_CostGuide: double;
begin
  inherited;
  x_CostTransport := 0.0;
  if MasterCds['TransportCost'] <> null then
    x_CostTransport := MasterCds['TransportCost'];

  x_CostRep := 0.0;
  if MasterCds['RepCost'] <> null then
    x_CostRep := MasterCds['RepCost'];

  x_CostGuide := 0.0;
  if MasterCds['GuideCost'] <> null then
    x_CostGuide := MasterCds['GuideCost'];

  MasterCds['Cost'] := RoundOff(x_CostTransport +  x_CostRep + x_CostGuide);

end;

end.
