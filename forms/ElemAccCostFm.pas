unit ElemAccCostFm;

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
  cxTextEdit;

type
  TElemAccCostForm = class(TCustom_1MG_Form)
    MasterCdsNumPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    cxGrid1DBBandedTableView1ElemAccommodationCosts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ElemAccommodation_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    UpdateCosts1: TMenuItem;
    MasterCdsElemAccommodationCosts_id: TIntegerField;
    MasterCdsElemAccommodation_id: TIntegerField;
    MasterCdsSystemCost: TFMTBCDField;
    cxGrid1DBBandedTableView1SystemCost: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure UpdateCosts1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  ElemAccCostForm: TElemAccCostForm;
  ElemAccCostForm_Level: Integer;
  ElemAccCostForm_Acc_id: Integer;

implementation

uses BackOfficeDM, ElementsFm;

{$R *.dfm}

procedure TElemAccCostForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := ElemAccCostForm_Acc_id;

  inherited;

end;

procedure TElemAccCostForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TElemAccCostForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemAccCostForm := nil;
end;

procedure TElemAccCostForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemAccommodationCosts';
  Custom_MasterKeyField := 'ElemAccommodationCosts_id';
  Custom_AdmLevel := ElemAccCostForm_Level;

  Custom_FormWidth := 500;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemAccCostForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemAccCostForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['ElemAccommodation_id'] = null) then
    raise Exception.Create('Please select an Accommodation line first');

  if (MasterCds['NumPax'] = null) then
    raise Exception.Create('Please enter the Num Pax');

  if (MasterCds['Cost'] = null) then
    raise Exception.Create('Please enter the Cost');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['ElemAccommodationCosts_id'] = null then
    raise Exception.Create('ElemAccommodationCosts_id is not assigned');

end;

function TElemAccCostForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemAccommodationCosts ' +
    'WHERE ElemAccommodation_id = ' + IntToStr(MasterCds['ElemAccommodation_id']) + ' ' +
    'AND NumPax = ' + IntToStr(MasterCds['NumPax']) + ' ' ;

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemAccommodationCosts_id <> ' + IntToStr(MasterCds['ElemAccommodationCosts_id']) + ') ';

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


procedure TElemAccCostForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ElemAccommodation_id'] := ElemAccCostForm_Acc_id;
end;

procedure TElemAccCostForm.UpdateCosts1Click(Sender: TObject);
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('This will update costs 1-10. Are you sure?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  x_QueryString := 'EXEC [p_ElemAccFillCost] ' +
    IntToStr(ElemAccCostForm_Acc_id) + ',1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshData;

end;

procedure TElemAccCostForm.RefreshData;
begin
  inherited;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[0].Value := ElemAccCostForm_Acc_id;

  MasterSds.Active := true;
  MasterCds.Active := true;

end;


end.
