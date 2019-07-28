unit QuoLineCostTraceAgentFm;

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
  TQuoLineCostTraceAgentForm = class(TForm)
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCDS: TClientDataSet;
    MasterDS: TDataSource;
    DBGrid1: TDBGrid;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
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
    MasterCDSBreakTransCosts_id: TIntegerField;
    MasterCDSQuoLines_id: TIntegerField;
    MasterCDSDayNo: TIntegerField;
    MasterCDSRoute: TStringField;
    MasterCDSKms: TFMTBCDField;
    MasterCDSType: TIntegerField;
    MasterCDSQty: TFMTBCDField;
    MasterCDSCode: TStringField;
    cxGridMasterDBBandedTableView1BreakTransCosts_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DayNo: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Route: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Kms: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Type: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Code: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
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
  QuoLineCostTraceAgentForm: TQuoLineCostTraceAgentForm;
  _QuoLineCostTraceAgentForm_Level : Integer;
  _QuoLineCostTraceAgentForm_QuoLines_id: integer;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TQuoLineCostTraceAgentForm.FormCreate(Sender: TObject);
begin
  MasterSds.Close;
  MasterSds.CommandText := 'SELECT * FROM BreakTransCosts ' +
    'WHERE QuoLines_id = ' + IntToStr(_QuoLineCostTraceAgentForm_QuoLines_id) + '  ' +
    'ORDER BY Code, DayNo, BreakTransCosts_id ';
  MasterSds.Open;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TQuoLineCostTraceAgentForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoLineCostTraceAgentForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnRecordType: TcxCustomGridTableItem;
begin

  AColumnRecordType := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('Type');

  if (ARecord.Values[AColumnRecordType.Index] = 1) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnRecordType.Index] = 3) then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleYellow;

end;

procedure TQuoLineCostTraceAgentForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\CostingTraceAgent.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridMaster, True, True, False, cxGridMasterDBBandedTableView1);

end;

procedure TQuoLineCostTraceAgentForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridMaster;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Costing ';

  dxComponentPrinter.Preview(True,nil);

end;

end.
