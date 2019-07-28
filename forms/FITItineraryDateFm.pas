unit FITItineraryDateFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxGroupBox, StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxTextEdit,
  cxCalendar, cxTimeEdit, cxCurrencyEdit, FMTBcd, DBClient, Provider,
  SqlExpr, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxLabel, cxMaskEdit, cxDropDownEdit;

type
  TFITItineraryDateForm = class(TForm)
    Panel2: TPanel;
    cxCloseBtn: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    QuoLinesGrid: TcxGrid;
    QuoLinesGridDBTableView1: TcxGridDBTableView;
    QuoLinesGridDBTableView1QuoLines_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1Quotations_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1LineNum: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoDate: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoTime: TcxGridDBColumn;
    QuoLinesGridDBTableView1City: TcxGridDBColumn;
    QuoLinesGridDBTableView1Type: TcxGridDBColumn;
    QuoLinesGridDBTableView1Car: TcxGridDBColumn;
    QuoLinesGridDBTableView1Cost: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoStringPax: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoString: TcxGridDBColumn;
    QuoLinesGridLevel1: TcxGridLevel;
    QuoLinesSds: TSQLDataSet;
    QuoLinesDsp: TDataSetProvider;
    QuoLinesCds: TClientDataSet;
    QuoLinesCdsQuoLines_id: TIntegerField;
    QuoLinesCdsQuotations_id: TIntegerField;
    QuoLinesCdsLineNum: TIntegerField;
    QuoLinesCdsQuoDate: TSQLTimeStampField;
    QuoLinesCdsCity: TStringField;
    QuoLinesCdsTrsType: TStringField;
    QuoLinesCdsQuoString: TStringField;
    QuoLinesCdsCar: TStringField;
    QuoLinesCdsQuoTime: TSQLTimeStampField;
    QuoLinesCdsQuoStringPax: TStringField;
    QuoLinesCdsNewCar: TIntegerField;
    QuoLinesDs: TDataSource;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    DisplayCost1: TMenuItem;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    QuoLinesGridDBTableView1Quote: TcxGridDBColumn;
    QuoLinesCdsCost: TFloatField;
    QuoLinesCdsQuoCost: TFloatField;
    QuoLinesCdsServiceTax: TFloatField;
    QuoLinesGridDBTableView1ServiceTax: TcxGridDBColumn;
    QuoLinesCdsP2P: TIntegerField;
    QuoLinesCdsMargin: TFloatField;
    QuoLinesGridDBTableView1Margin: TcxGridDBColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    QuoLinesCdsMasterMargin: TFloatField;
    QuoLinesGridDBTableView1MasterMargin: TcxGridDBColumn;
    QuoLinesCdsDriveType: TStringField;
    QuoLinesGridDBTableView1DriveType: TcxGridDBColumn;
    QuoLinesCdsCarAgent: TStringField;
    QuoLinesGridDBTableView1CarAgent: TcxGridDBColumn;
    DisplayCostBreakupforDriveAgent1: TMenuItem;
    QuoLinesCdsDayNo: TIntegerField;
    QuoLinesGridDBTableView1DayNo: TcxGridDBColumn;
    QuoLinesCdsFCurrQuoCost: TFloatField;
    QuoLinesCdsCurrencyCode: TStringField;
    QuoLinesGridDBTableView1FCurrQuoCost: TcxGridDBColumn;
    QuoLinesGridDBTableView1CurrencyCode: TcxGridDBColumn;
    DisplayMarginBreakupforAccommodation1: TMenuItem;
    DisplayCostingBreakupforthisline1: TMenuItem;
    N8: TMenuItem;
    QuoLinesCdsNewDriveLine: TIntegerField;
    cxDateEdit: TcxDateEdit;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure DisplayCost1Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure QuoLinesGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure DisplayCostBreakupforDriveAgent1Click(Sender: TObject);
    procedure DisplayMarginBreakupforAccommodation1Click(Sender: TObject);
    procedure DisplayCostingBreakupforthisline1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FITItineraryDateForm: TFITItineraryDateForm;
  _FITItineraryDateForm_Quotations_id: integer;

implementation

uses BackOfficeDM, QuoLineCostTraceFm, GeneralUt, RpQuoItineraryFm,
  RpQuoInclusionFm, RpQuoDetailedItineraryFm, QuoCitywiseFm,
  FitMarginQuoFm, MainFm, CarHireAgentQuoLineFm, RpQuoHotelAgentFm,
  QuoLineCostTraceAgentFm, QuoLineAccMarginTraceFm, QuoCostingTraceFm,
  RpQuoWelcomeFm, QuoDisplayTravelFm, RpQuoDetailedItinerary2Fm,
  QuoLineCostTraceAgentDateFm, QuoCostingTraceDateFm;

{$R *.dfm}

procedure TFITItineraryDateForm.FormCreate(Sender: TObject);
begin

  QuoLinesSds.Close;
  QuoLinesSds.CommandText :=
    'EXEC p_QuoQuote ' + IntToStr(_FITItineraryDateForm_Quotations_id) + ',2';

  QuoLinesSds.Open;

  QuoLinesCds.Close;
  QuoLinesCds.Open;

  QuoLinesGridDBTableView1.DataController.GotoFirst;

  if QuoLinesCds['QuoDate'] <> null then
    cxDateEdit.Date := QuoLinesCds['QuoDate'];

end;

procedure TFITItineraryDateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFITItineraryDateForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFITItineraryDateForm.DisplayCost1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QuoLinesCds.Active := False;

  QueryString := 'EXEC p_UpdateQuoCostsDate ' + IntToStr(_FITItineraryDateForm_Quotations_id) + ',0, 1, ''' +
                 FormatDateTime('mm/dd/yyyy', cxDateEdit.Date) + '''';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  QuoLinesCds.Active := False;
  QuoLinesCds.Active := True;

end;

procedure TFITItineraryDateForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\FitItinerary.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW (SaveDialog.FileName, QuoLinesGrid, True, True, False, QuoLinesGridDBTableView1);

end;

procedure TFITItineraryDateForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := QuoLinesGrid;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Pax Itinerary ';

  dxComponentPrinter.Preview(True,nil);


end;

procedure TFITItineraryDateForm.QuoLinesGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn, AColumn2: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Margin');
  AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('MasterMargin');

  if ARecord.Values[AColumn.Index] <> ARecord.Values[AColumn2.Index] then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleGreen;

end;

procedure TFITItineraryDateForm.DisplayCostBreakupforDriveAgent1Click(
  Sender: TObject);
begin

  if (QuoLinesCds['TrsType'] <> 'Drive') or (QuoLinesCds['NewDriveLine'] <> 1) then
    raise exception.create ('Please highlight the row where you hired the car before displaying the trace');

  _QuoLineCostTraceAgentDateForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoLineCostTraceAgentDateForm = nil then
    Application.CreateForm(TQuoLineCostTraceAgentDateForm, QuoLineCostTraceAgentDateForm);

  QuoLineCostTraceAgentDateForm.ShowModal;

  QuoLineCostTraceAgentDateForm.Free;
  QuoLineCostTraceAgentDateForm := nil;

end;

procedure TFITItineraryDateForm.DisplayMarginBreakupforAccommodation1Click(
  Sender: TObject);
begin
  if (QuoLinesCds['TrsType'] <> 'Acc') then
    raise exception.create ('Please highlight an accommodation row');

  _QuoLineAccMarginTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoLineAccMarginTraceForm = nil then
    Application.CreateForm(TQuoLineAccMarginTraceForm, QuoLineAccMarginTraceForm);

  QuoLineAccMarginTraceForm.ShowModal;

  QuoLineAccMarginTraceForm.Free;
  QuoLineAccMarginTraceForm := nil;

end;

procedure TFITItineraryDateForm.DisplayCostingBreakupforthisline1Click(
  Sender: TObject);
begin

  _QuoCostingTraceDateForm_Level := GetUserLevel(g_users_id, 9080);

  If _QuoCostingTraceDateForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _QuoCostingTraceDateForm_Quotations_id := QuoLinesCds['Quotations_id'];
  _QuoCostingTraceDateForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoCostingTraceDateForm = nil then
    Application.CreateForm(TQuoCostingTraceDateForm, QuoCostingTraceDateForm);

  QuoCostingTraceDateForm.ShowModal;

  QuoCostingTraceDateForm.Free;
  QuoCostingTraceDateForm := nil;


end;

end.
