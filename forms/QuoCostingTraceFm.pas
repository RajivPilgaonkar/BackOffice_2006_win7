unit QuoCostingTraceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, DBCtrls,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox;

type
  TQuoCostingTraceForm = class(TForm)
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    cxButton2: TcxButton;
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCDS: TClientDataSet;
    MasterDS: TDataSource;
    MasterCDSRecordType: TIntegerField;
    MasterCDSDescription: TStringField;
    MasterCDSQty: TFMTBCDField;
    MasterCDSRate: TFMTBCDField;
    MasterCDSCost: TFMTBCDField;
    MasterCDSCostingCode: TStringField;
    DBGrid1: TDBGrid;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
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
    MasterCDSQuoCostingTrace_id: TIntegerField;
    MasterCDSQuoLines_id: TIntegerField;
    cxGridMasterDBBandedTableView1QuoCostingTrace_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn;
    cxStyleYellowLight: TcxStyle;
    MasterCDSTotal: TFMTBCDField;
    MasterCDSGstPerc: TFMTBCDField;
    MasterCDSGst: TFMTBCDField;
    MasterCDSMealCost: TFMTBCDField;
    MasterCDSAgentComm: TFMTBCDField;
    MasterCDSMarginPerc: TFMTBCDField;
    MasterCDSMargin: TFMTBCDField;
    cxGridMasterDBBandedTableView1Total: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1GstPerc: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Gst: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1MealCost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1AgentComm: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1MarginPerc: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Margin: TcxGridDBBandedColumn;
    MasterCDSGroupAmt: TFMTBCDField;
    cxGridMasterDBBandedTableView1GroupAmt: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
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
  QuoCostingTraceForm: TQuoCostingTraceForm;
  _QuoCostingTraceForm_Level : Integer;
  _QuoCostingTraceForm_Quotations_id: integer;
  _QuoCostingTraceForm_QuoLines_id: integer;
  _QuoCostingTraceForm_TrsType: integer;
  _QuoCostingTraceForm_Gst: integer;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TQuoCostingTraceForm.FormCreate(Sender: TObject);
var
  x_str: string;
begin
  MasterSds.Active := False;
  MasterCds.Active := False;

  x_str := '';
  if _QuoCostingTraceForm_Gst = 1 then
    x_str := x_str + ' AND RecordType IN (1,2) ';

  MasterSds.CommandText := 'SELECT * FROM QuoCostingTrace ' +
      'WHERE QuoLines_id = ' + IntToStr(_QuoCostingTraceForm_QuoLines_id) + '  ' +
      x_str +
      'ORDER BY RecordType, CostingCode, QuoCostingTrace_id';

  MasterSds.Active := True;
  MasterCds.Active := True;

  if _QuoCostingTraceForm_Gst <> 1 then
    begin
      cxGridMasterDBBandedTableView1GstPerc.Visible := false;
      cxGridMasterDBBandedTableView1Gst.Visible := false;
      cxGridMasterDBBandedTableView1Total.Visible := false;

      cxGridMasterDBBandedTableView1MealCost.Visible := false;
      cxGridMasterDBBandedTableView1AgentComm.Visible := false;

      cxGridMasterDBBandedTableView1MarginPerc.Visible := false;
      cxGridMasterDBBandedTableView1Margin.Visible := false;

      cxGridMasterDBBandedTableView1Cost.Summary.FooterKind := skNone;
      cxGridMasterDBBandedTableView1Cost.Summary.FooterFormat := '';

    end;

  if _QuoCostingTraceForm_TrsType <> 2 then
    begin
      cxGridMasterDBBandedTableView1MealCost.Visible := false;
      cxGridMasterDBBandedTableView1AgentComm.Visible := false;
    end;

  if _QuoCostingTraceForm_TrsType <> 3 then
    begin
      cxGridMasterDBBandedTableView1GroupAmt.Visible := false;
    end;

end;

procedure TQuoCostingTraceForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoCostingTraceForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if MasterCDS['RecordType'] = 1 then
    DBGrid1.Canvas.brush.Color:=Colour_YELLOW
  else if MasterCDS['RecordType'] = 2 then
    DBGrid1.Canvas.brush.Color:=Colour_GREEN
  else if MasterCDS['RecordType'] = 3 then
    DBGrid1.Canvas.Brush.Color := Colour_RED
  else
    DBGrid1.Canvas.Font.Color := clBlack;

  DBGrid1.Canvas.Font.Color := clBlack;

  DBGrid1.DefaultDrawDataCell(Rect,Column.Field, State);

end;

procedure TQuoCostingTraceForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnRecordType: TcxCustomGridTableItem;
begin

  AColumnRecordType := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('RecordType');

  if (ARecord.Values[AColumnRecordType.Index] = 1) then
    AStyle := cxStyleYellowLight
  else if (ARecord.Values[AColumnRecordType.Index] = 2) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnRecordType.Index] = 3) then
    AStyle := cxStyleRed;

end;

end.
