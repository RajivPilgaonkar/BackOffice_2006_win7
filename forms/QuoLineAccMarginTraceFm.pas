unit QuoLineAccMarginTraceFm;

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
  TQuoLineAccMarginTraceForm = class(TForm)
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
    MasterCDSQuoLineMarginDetails_id: TIntegerField;
    MasterCDSQuoLines_id: TIntegerField;
    MasterCDSRemarks: TStringField;
    MasterCDSCost: TFMTBCDField;
    MasterCDSMargin: TFMTBCDField;
    MasterCDSMarginAmt: TFMTBCDField;
    cxGridMasterDBBandedTableView1QuoLineMarginDetails_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Margin: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1MarginAmt: TcxGridDBBandedColumn;
    MasterCDSQty: TFMTBCDField;
    MasterCDSTotalMargin: TFMTBCDField;
    cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TotalMargin: TcxGridDBBandedColumn;
    MasterCDSTotalCost: TFMTBCDField;
    cxGridMasterDBBandedTableView1TotalCost: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoLineAccMarginTraceForm: TQuoLineAccMarginTraceForm;
  _QuoLineAccMarginTraceForm_Level : Integer;
  _QuoLineAccMarginTraceForm_QuoLines_id: integer;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TQuoLineAccMarginTraceForm.FormCreate(Sender: TObject);
begin
  MasterSds.Close;
  MasterSds.CommandText := 'SELECT * FROM QuoLineMarginDetails ' +
    'WHERE QuoLines_id = ' + IntToStr(_QuoLineAccMarginTraceForm_QuoLines_id) + '  ' +
    'ORDER BY QuoLineMarginDetails_id ';
  MasterSds.Open;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TQuoLineAccMarginTraceForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoLineAccMarginTraceForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\AccMarginTrace.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridMaster, True, True, False, cxGridMasterDBBandedTableView1);

end;

procedure TQuoLineAccMarginTraceForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridMaster;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Accommodation Margin Trace ';

  dxComponentPrinter.Preview(True,nil);

end;

end.

