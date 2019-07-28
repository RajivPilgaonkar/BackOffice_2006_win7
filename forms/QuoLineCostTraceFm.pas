unit QuoLineCostTraceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, DBCtrls,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridBandedTableView, cxGridDBBandedTableView, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk;

type
  TQuoLineCostTraceForm = class(TForm)
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
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
    MasterCDSQuoLineCostTrace_id: TIntegerField;
    MasterCDSQuoLines_id: TIntegerField;
    MasterCDSIteration: TIntegerField;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterDBBandedTableView1CostingTrace_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CostingCode: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Description: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1RecordType: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterLevel1: TcxGridLevel;
    cxGridMasterDBBandedTableView1Iteration: TcxGridDBBandedColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoLineCostTraceForm: TQuoLineCostTraceForm;
  _QuoLineCostTraceForm_Level : Integer;
  _QuoLineCostTraceForm_QuoLines_id: integer;
  _QuoLineCostTraceForm_VoucherTypes_id: integer;
  _QuoLineCostTraceForm_Recompute: boolean;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TQuoLineCostTraceForm.FormCreate(Sender: TObject);
begin
  MasterSds.Close;
  MasterSds.CommandText := 'SELECT * FROM QuoLineCostTrace ' +
    'WHERE QuoLines_id = ' + IntToStr(_QuoLineCostTraceForm_QuoLines_id) + '  ' +
    'ORDER BY Iteration, RecordType, CostingCode, Iteration2';
  MasterSds.Open;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TQuoLineCostTraceForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoLineCostTraceForm.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TQuoLineCostTraceForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
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

procedure TQuoLineCostTraceForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\CostingTrace.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridMaster, True, True, False, cxGridMasterDBBandedTableView1);

end;

procedure TQuoLineCostTraceForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridMaster;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Costing ';

  dxComponentPrinter.Preview(True,nil);

end;

end.
