unit ElemCityGroupsCostFm;

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
  TElemCityGroupsCostForm = class(TCustom_1MG_Form)
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
    MasterCdsNumPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsElemCityGroupsCosts_id: TIntegerField;
    MasterCdsElemCityGroups_id: TIntegerField;
    MasterCdsCostEscort: TFMTBCDField;
    MasterCdsCostTransport: TFMTBCDField;
    cxGrid1DBBandedTableView1CostTransport: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CostEscort: TcxGridDBBandedColumn;
    MasterCdsSystemCost: TFMTBCDField;
    cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsCostTransportChange(Sender: TField);
    procedure MasterCdsCostEscortChange(Sender: TField);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    //procedure RefreshData;
    procedure ComputeCost;
  public
    { Public declarations }
  end;

var
  ElemCityGroupsCostForm: TElemCityGroupsCostForm;
  ElemCityGroupsCostForm_Level: Integer;
  ElemCityGroupsCostForm_ElemCityGroups_id: Integer;
  ElemCityGroupsCostForm_Addressbook_id: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TElemCityGroupsCostForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := ElemCityGroupsCostForm_ElemCityGroups_id;

  inherited;

  VehicleSds.Params[0].Value :=  ElemCityGroupsCostForm_Addressbook_id;
  VehicleSds.Open;
  VehicleCds.Open;

end;

procedure TElemCityGroupsCostForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemCityGroupsCostForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemCityGroupsCostForm := nil;
end;

procedure TElemCityGroupsCostForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemCityGroupsCosts';
  Custom_MasterKeyField := 'ElemCityGroupsCosts_id';
  Custom_AdmLevel := ElemCityGroupsCostForm_Level;

  Custom_FormWidth := 725;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemCityGroupsCostForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemCityGroupsCostForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ElemCityGroups_id'] = null) then
    raise Exception.Create('Please select a Car entry first');

  if (MasterCds['NumPax'] = null) then
    raise Exception.Create('Please enter the Num Pax');

  if (MasterCds['CostEscort'] = null) then
    MasterCds['CostEscort'] := 0.0;

  if (MasterCds['CostTransport'] = null) then
    MasterCds['CostTransport'] := 0.0;

  MasterCds['Cost'] := MasterCds['CostEscort'] + MasterCds['CostTransport'];

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['ElemCityGroupsCosts_id'] = null then
    raise Exception.Create('ElemCityGroupsCosts_id is not assigned');

end;

function TElemCityGroupsCostForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemCityGroupsCosts ' +
    'WHERE ElemCityGroups_id = ' + IntToStr(MasterCds['ElemCityGroups_id']) + ' ' +
    'AND NumPax = ' + IntToStr(MasterCds['NumPax']) + ' ' ;

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemCityGroupsCosts_id <> ' + IntToStr(MasterCds['ElemCityGroupsCosts_id']) + ') ';

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


procedure TElemCityGroupsCostForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ElemCityGroups_id'] := ElemCityGroupsCostForm_ElemCityGroups_id;
end;

{
procedure TElemCityGroupsCostForm.RefreshData;
begin
  inherited;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[0].Value := ElemCityGroupsCostForm_ElemCityGroups_id;

  MasterSds.Active := true;
  MasterCds.Active := true;

end;
}

procedure TElemCityGroupsCostForm.MasterCdsCostTransportChange(
  Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemCityGroupsCostForm.MasterCdsCostEscortChange(
  Sender: TField);
begin
  inherited;
  ComputeCost;
end;

procedure TElemCityGroupsCostForm.ComputeCost;
var
  x_CostEscort, x_CostTransport: double;
begin
  inherited;
  x_CostEscort := 0.0;
  if MasterCds['CostEscort'] <> null then
    x_CostEscort := MasterCds['CostEscort'];

  x_CostTransport := 0.0;
  if MasterCds['CostTransport'] <> null then
    x_CostTransport := MasterCds['CostTransport'];

  MasterCds['Cost'] := RoundOff(x_CostEscort +  x_CostTransport);

end;

end.
