unit ElemCarCostFm;

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
  TElemCarCostForm = class(TCustom_1MG_Form)
    cxGrid1DBBandedTableView1ElemCarsCosts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ElemCars_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    MasterCdsElemCarsCosts_id: TIntegerField;
    MasterCdsElemCars_id: TIntegerField;
    MasterCdsNumPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsVehicles_id: TIntegerField;
    VehicleCdsAddressbook_id: TIntegerField;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    MasterCdsSystemCost: TFMTBCDField;
    cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    //procedure RefreshData;
  public
    { Public declarations }
  end;

var
  ElemCarCostForm: TElemCarCostForm;
  ElemCarCostForm_Level: Integer;
  ElemCarCostForm_ElemCars_id: Integer;
  ElemCarCostForm_Addressbook_id: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TElemCarCostForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := ElemCarCostForm_ElemCars_id;

  inherited;

  VehicleSds.Params[0].Value :=  ElemCarCostForm_Addressbook_id;
  VehicleSds.Open;
  VehicleCds.Open;

end;

procedure TElemCarCostForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemCarCostForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemCarCostForm := nil;
end;

procedure TElemCarCostForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemCarsCosts';
  Custom_MasterKeyField := 'ElemCarsCosts_id';
  Custom_AdmLevel := ElemCarCostForm_Level;

  Custom_FormWidth := 725;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemCarCostForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemCarCostForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ElemCars_id'] = null) then
    raise Exception.Create('Please select a Car entry first');

  if (MasterCds['NumPax'] = null) then
    raise Exception.Create('Please enter the Num Pax');

  if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['ElemCarsCosts_id'] = null then
    raise Exception.Create('ElemCarsCosts_id is not assigned');

end;

function TElemCarCostForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemCarsCosts ' +
    'WHERE ElemCars_id = ' + IntToStr(MasterCds['ElemCars_id']) + ' ' +
    'AND NumPax = ' + IntToStr(MasterCds['NumPax']) + ' ' ;    

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemCarsCosts_id <> ' + IntToStr(MasterCds['ElemCarsCosts_id']) + ') ';

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


procedure TElemCarCostForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ElemCars_id'] := ElemCarCostForm_ElemCars_id;
end;

{
procedure TElemCarCostForm.RefreshData;
begin
  inherited;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[0].Value := ElemCarCostForm_ElemCars_id;

  MasterSds.Active := true;
  MasterCds.Active := true;

end;
}

end.
