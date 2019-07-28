unit QuoFixedRateAccFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls;

type
  TQuoFixedRateAccForm = class(TCustom_1MG_Form)
    MasterCdsQuoFixedRatesAccCosts_id: TIntegerField;
    MasterCdsNumPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsQuoFixedRatesAccommodation_id: TIntegerField;
    cxGrid1DBBandedTableView1QuoFixedRatesAccCosts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoFixedRatesAccommodation_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn;
    UpdateCosts1: TMenuItem;
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
  QuoFixedRateAccForm: TQuoFixedRateAccForm;
  QuoFixedRateAccForm_Level: Integer;
  QuoFixedRateAccForm_Acc_id: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateAccForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := QuoFixedRateAccForm_Acc_id;

  inherited;

end;

procedure TQuoFixedRateAccForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoFixedRateAccForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateAccForm := nil;
end;

procedure TQuoFixedRateAccForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoFixedRatesAccCosts';
  Custom_MasterKeyField := 'QuoFixedRatesAccCosts_id';
  Custom_AdmLevel := QuoFixedRateAccForm_Level;

  Custom_FormWidth := 720;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TQuoFixedRateAccForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TQuoFixedRateAccForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['QuoFixedRatesAccommodation_id'] = null) then
    raise Exception.Create('Please select an Accommodation line first');

  if (MasterCds['NumPax'] = null) then
    raise Exception.Create('Please enter the Num Pax');

  if (MasterCds['Cost'] = null) then
    raise Exception.Create('Please enter the Cost');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['QuoFixedRatesAccCosts_id'] = null then
    raise Exception.Create('QuoFixedRatesAccCosts_id is not assigned');

end;

function TQuoFixedRateAccForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM QuoFixedRatesAccCosts ' +
    'WHERE QuoFixedRatesAccommodation_id = ' + IntToStr(MasterCds['QuoFixedRatesAccommodation_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (QuoFixedRatesAccCosts_id <> ' + IntToStr(MasterCds['QuoFixedRatesAccCosts_id']) + ') ';

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


procedure TQuoFixedRateAccForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['QuoFixedRatesAccommodation_id'] := QuoFixedRateAccForm_Acc_id;
end;

procedure TQuoFixedRateAccForm.UpdateCosts1Click(Sender: TObject);
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('This will update costs 1-10. Are you sure?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  x_QueryString := 'EXEC p_QuoFixedRateAccCost ' +
    IntToStr(QuoFixedRateAccForm_Acc_id) + ',1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshData;

  ShowMessage('done');
end;

procedure TQuoFixedRateAccForm.RefreshData;
begin
  inherited;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[0].Value := QuoFixedRateAccForm_Acc_id;

  MasterSds.Active := true;
  MasterCds.Active := true;

end;


end.
