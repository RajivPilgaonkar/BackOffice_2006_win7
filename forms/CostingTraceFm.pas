unit CostingTraceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, DBCtrls,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TCostingTraceForm = class(TForm)
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCDS: TClientDataSet;
    MasterDS: TDataSource;
    MasterCDSCostingTrace_id: TIntegerField;
    MasterCDSVouchers_id: TIntegerField;
    MasterCDSRecordType: TIntegerField;
    MasterCDSDescription: TStringField;
    MasterCDSQty: TFMTBCDField;
    MasterCDSRate: TFMTBCDField;
    MasterCDSCost: TFMTBCDField;
    MasterCDSCostingCode: TStringField;
    DBGrid1: TDBGrid;
    CostSds: TSQLDataSet;
    CostDsp: TDataSetProvider;
    CostCds: TClientDataSet;
    CostDs: TDataSource;
    CostCdsvouchers_id: TIntegerField;
    CostCdscostof: TIntegerField;
    CostCdsdescription: TStringField;
    CostCdscost: TFMTBCDField;
    CostCdscosttrace_id: TIntegerField;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    cxGridMasterDBBandedTableView1CostingTrace_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Vouchers_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1RecordType: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Description: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CostingCode: TcxGridDBBandedColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    MasterCDSGstPerc: TFMTBCDField;
    MasterCDSGst: TFMTBCDField;
    MasterCDSTotal: TFMTBCDField;
    MasterCDSMealCost: TFMTBCDField;
    MasterCDSAgentComm: TFMTBCDField;
    MasterCDSMarginPerc: TFMTBCDField;
    MasterCDSMargin: TFMTBCDField;
    MasterCDSGroupAmt: TFMTBCDField;
    cxGridMasterDBBandedTableView1GstPerc: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Gst: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Total: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1MealCost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1AgentComm: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1MarginPerc: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Margin: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1GroupAmt: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostingTraceForm: TCostingTraceForm;
  _CostingTraceForm_Level : Integer;
  _CostingTraceForm_Vouchers_id: integer;
  _CostingTraceForm_VoucherTypes_id: integer;
  _CostingTraceForm_Recompute: boolean;
  _CostingTraceForm_Gst: integer;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TCostingTraceForm.FormCreate(Sender: TObject);
var
  x_str: string;
begin
  MasterSds.Active := False;
  MasterCds.Active := False;

  CostSds.Active := False;
  CostCds.Active := False;

  x_str := '';
  if _CostingTraceForm_Gst = 1 then
    x_str := x_str + ' AND RecordType IN (1,2) ';

  MasterSds.CommandText := 'SELECT * FROM CostingTrace ' +
    'WHERE Vouchers_id = ' + IntToStr(_CostingTraceForm_Vouchers_id) + '  ' +
    x_str +
    'ORDER BY RecordType, CostingCode';

  MasterSds.Active := True;
  MasterCds.Active := True;

  if _CostingTraceForm_Gst <> 1 then
    begin

      cxGridMasterDBBandedTableView1GstPerc.Visible := false;
      cxGridMasterDBBandedTableView1Gst.Visible := false;
      cxGridMasterDBBandedTableView1Total.Visible := false;

      cxGridMasterDBBandedTableView1MealCost.Visible := false;
      cxGridMasterDBBandedTableView1AgentComm.Visible := false;

      cxGridMasterDBBandedTableView1Cost.Summary.FooterKind := skNone;
      cxGridMasterDBBandedTableView1Cost.Summary.FooterFormat := '';

    end;

  if (_CostingTraceForm_VoucherTypes_id <> 3) and (_CostingTraceForm_VoucherTypes_id <> 7) then
    begin
      cxGridMasterDBBandedTableView1MealCost.Visible := false;
      cxGridMasterDBBandedTableView1AgentComm.Visible := false;
    end;

  if (_CostingTraceForm_VoucherTypes_id <> 4) and (_CostingTraceForm_VoucherTypes_id <> 8) then
    begin
      cxGridMasterDBBandedTableView1GroupAmt.Visible := false;
    end;


  CostSds.CommandText := 'SELECT * FROM CostTrace ' +
    'WHERE Vouchers_id = ' + IntToStr(_CostingTraceForm_Vouchers_id) + '  ' +
    'ORDER BY costTrace_id ';

  CostSds.Active := True;
  CostCds.Active := True;

  _CostingTraceForm_Recompute := False;

end;

procedure TCostingTraceForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TCostingTraceForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_str: string;
begin

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _CostingTraceForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  // Procedure to re-calculate costs depending upon the vouchers ;
  // p_RecomputeCosts procedure to be defined ;
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT Checked, VoucherTypes_id FROM Vouchers WHERE Vouchers_id = ' +
    IntToStr(_CostingTraceForm_Vouchers_id);
  GpSds.Open;

  if GpSds['Checked'] = True then
    begin
      ShowMessage('Costs cannot be computed for this voucher since it has already been checked.');
      Abort;
    end;

  if MessageDlg('This will re-compute the costs for this voucher.Continue...? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      ShowMessage('Action cancelled by the user');
      Abort;
    end;

  x_str := '';

  if (_CostingTraceForm_VoucherTypes_id = 2) or (_CostingTraceForm_VoucherTypes_id = 6) then
    x_str := ' p_CostComputeTickets '
  else if (_CostingTraceForm_VoucherTypes_id = 3) or (_CostingTraceForm_VoucherTypes_id = 7) then
    x_str := ' p_CostComputeAccommodation '
  else if (_CostingTraceForm_VoucherTypes_id = 4) or (_CostingTraceForm_VoucherTypes_id = 8) then
    x_str := ' p_CostComputeServices '
  else if (_CostingTraceForm_VoucherTypes_id = 5) or (_CostingTraceForm_VoucherTypes_id = 13) then
    x_str := ' p_CostComputeCoach '
  else if (_CostingTraceForm_VoucherTypes_id = 9) then
    x_str := ' p_CostComputePackage ';

  if x_str > '' then
    begin
      GpSds.Close;
      GpSds.CommandText := 'EXEC ' + x_str + ' ' + IntToStr(_CostingTraceForm_Vouchers_id) ;
      GpSds.ExecSQL;
    end;

  MasterCds.Close;
  MasterSds.Close;
  MasterSds.Open;
  MasterCds.Open;

  GpSds.Free;

  _CostingTraceForm_Recompute := True;
end;


procedure TCostingTraceForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DBGrid1.DataSource = CostDs then
     DBGrid1.Color := clSilver

  else
    begin
      if MasterCDS['RecordType'] = 1 then
        DBGrid1.Canvas.brush.Color:=Colour_YELLOW
      else if MasterCDS['RecordType'] = 2 then
        DBGrid1.Canvas.brush.Color:=Colour_GREEN
      else if MasterCDS['RecordType'] = 3 then
        DBGrid1.Canvas.Brush.Color := Colour_RED
      else
        DBGrid1.Canvas.Font.Color := clBlack;
    end;

  DBGrid1.Canvas.Font.Color := clBlack;

  DBGrid1.DefaultDrawDataCell(Rect,Column.Field, State);
end;

procedure TCostingTraceForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnRecordType: TcxCustomGridTableItem;
begin

  AColumnRecordType := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('RecordType');

  if (ARecord.Values[AColumnRecordType.Index] = 1) then
    AStyle := cxStyleYellow
  else if (ARecord.Values[AColumnRecordType.Index] = 2) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnRecordType.Index] = 3) then
    AStyle := cxStyleRed;

end;

end.
