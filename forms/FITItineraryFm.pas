unit FITItineraryFm;

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
  cxPC, cxDBLookupComboBox;

type
  TFITItineraryForm = class(TForm)
    Panel2: TPanel;
    cxCloseBtn: TcxButton;
    cxButton1: TcxButton;
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
    RecreateItinerary1: TMenuItem;
    N1: TMenuItem;
    ComputeCost1: TMenuItem;
    N2: TMenuItem;
    DisplayCost1: TMenuItem;
    N3: TMenuItem;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    N4: TMenuItem;
    Itinerary1: TMenuItem;
    Inclusions: TMenuItem;
    QuoLinesCdsCost: TFloatField;
    QuoLinesCdsQuoCost: TFloatField;
    QuoLinesCdsServiceTax: TFloatField;
    DetailedItinerary1: TMenuItem;
    QuoLinesCdsP2P: TIntegerField;
    N5: TMenuItem;
    SetMargins1: TMenuItem;
    QuoLinesCdsMargin: TFloatField;
    SetMarginforthislineonly1: TMenuItem;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    QuoLinesCdsMasterMargin: TFloatField;
    QuoLinesCdsDriveType: TStringField;
    N6: TMenuItem;
    ChangeCarAgent1: TMenuItem;
    QuoLinesCdsCarAgent: TStringField;
    HotelsAgentsListing1: TMenuItem;
    HotelsLIsting1: TMenuItem;
    AgentsLising1: TMenuItem;
    N7: TMenuItem;
    DisplayCostBreakupforDriveAgent1: TMenuItem;
    QuoLinesCdsDayNo: TIntegerField;
    QuoLinesCdsFCurrQuoCost: TFloatField;
    QuoLinesCdsCurrencyCode: TStringField;
    DisplayMarginBreakupforAccommodation1: TMenuItem;
    DisplayCostingBreakupforthisline1: TMenuItem;
    WelcomeLetter1: TMenuItem;
    DisplayTravel1: TMenuItem;
    N8: TMenuItem;
    DetaileditineraryUnderTest1: TMenuItem;
    QuoLinesCdsNewDriveLine: TIntegerField;
    N9: TMenuItem;
    DisplaycostforanyDate1: TMenuItem;
    EditDetailedItinerary1: TMenuItem;
    QuoLinesCdsTotalCost: TFloatField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    QuoLinesGrid: TcxGrid;
    QuoLinesGridDBTableView1: TcxGridDBTableView;
    QuoLinesGridDBTableView1QuoLines_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1Quotations_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1LineNum: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoDate: TcxGridDBColumn;
    QuoLinesGridDBTableView1DayNo: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoTime: TcxGridDBColumn;
    QuoLinesGridDBTableView1City: TcxGridDBColumn;
    QuoLinesGridDBTableView1Type: TcxGridDBColumn;
    QuoLinesGridDBTableView1Car: TcxGridDBColumn;
    QuoLinesGridDBTableView1CarAgent: TcxGridDBColumn;
    QuoLinesGridDBTableView1Cost: TcxGridDBColumn;
    QuoLinesGridDBTableView1ServiceTax: TcxGridDBColumn;
    QuoLinesGridDBTableView1TotalCost: TcxGridDBColumn;
    QuoLinesGridDBTableView1Quote: TcxGridDBColumn;
    QuoLinesGridDBTableView1FCurrQuoCost: TcxGridDBColumn;
    QuoLinesGridDBTableView1CurrencyCode: TcxGridDBColumn;
    QuoLinesGridDBTableView1Margin: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoStringPax: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoString: TcxGridDBColumn;
    QuoLinesGridDBTableView1MasterMargin: TcxGridDBColumn;
    QuoLinesGridDBTableView1DriveType: TcxGridDBColumn;
    QuoLinesGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    AgentListSds: TSQLDataSet;
    AgentListDsp: TDataSetProvider;
    AgentListCds: TClientDataSet;
    AgentListDs: TDataSource;
    AgentListCdsQuo_AgentList_id: TIntegerField;
    AgentListCdsQuotations_id: TIntegerField;
    AgentListCdsAddressbook_id: TIntegerField;
    cxGrid1DBTableView1Quo_AgentList_id: TcxGridDBColumn;
    cxGrid1DBTableView1Quotations_id: TcxGridDBColumn;
    cxGrid1DBTableView1Addressbook_id: TcxGridDBColumn;
    AddressbookSds: TSQLDataSet;
    AddressbookDsp: TDataSetProvider;
    AddressbookCds: TClientDataSet;
    AddressbookDs: TDataSource;
    AddressbookCdsAddressbook_id: TIntegerField;
    AddressbookCdsOrganisation: TStringField;
    cxButton2: TcxButton;
    AgentListCdsSelected: TBooleanField;
    cxGrid1DBTableView1Selected: TcxGridDBColumn;
    DriversItinerary1: TMenuItem;
    AgentListCdsAlt_Addressbook_id: TIntegerField;
    cxGrid1DBTableView1Alt_Addressbook_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure InsertQuoLines;
    procedure RecreateItinerary1Click(Sender: TObject);
    procedure ComputeCost1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure DisplayCost1Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Itinerary1Click(Sender: TObject);
    procedure InclusionsClick(Sender: TObject);
    procedure DetailedItinerary1Click(Sender: TObject);
    procedure SetMargins1Click(Sender: TObject);
    procedure SetMarginforthislineonly1Click(Sender: TObject);
    procedure QuoLinesGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ChangeCarAgent1Click(Sender: TObject);
    procedure HotelsAgentsListing1Click(Sender: TObject);
    procedure HotelsLIsting1Click(Sender: TObject);
    procedure AgentsLising1Click(Sender: TObject);
    procedure DisplayCostBreakupforDriveAgent1Click(Sender: TObject);
    procedure DisplayMarginBreakupforAccommodation1Click(Sender: TObject);
    procedure DisplayCostingBreakupforthisline1Click(Sender: TObject);
    procedure WelcomeLetter1Click(Sender: TObject);
    function GetTickets(x_quotations_id, x_tickets_id: integer): integer;
    procedure DisplayTravel1Click(Sender: TObject);
    procedure DetaileditineraryUnderTest1Click(Sender: TObject);
    procedure DisplaycostforanyDate1Click(Sender: TObject);
    procedure EditDetailedItinerary1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure AgentListCdsAfterPost(DataSet: TDataSet);
    procedure DriversItinerary1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FITItineraryForm: TFITItineraryForm;
  _FITItineraryForm_Quotations_id: integer;
  _FITItineraryForm_Trial: integer;

implementation

uses BackOfficeDM, QuoLineCostTraceFm, GeneralUt, RpQuoItineraryFm,
  RpQuoInclusionFm, RpQuoDetailedItineraryFm, QuoCitywiseFm,
  FitMarginQuoFm, MainFm, CarHireAgentQuoLineFm, RpQuoHotelAgentFm,
  QuoLineCostTraceAgentFm, QuoLineAccMarginTraceFm, QuoCostingTraceFm,
  RpQuoWelcomeFm, QuoDisplayTravelFm, RpQuoDetailedItinerary2Fm,
  FITItineraryDateFm, QuoPrintFm, RptQuoDriverItinFm;

{$R *.dfm}

procedure TFITItineraryForm.FormCreate(Sender: TObject);
begin

  QuoLinesSds.Close;
  QuoLinesSds.CommandText :=
    'EXEC p_QuoQuote ' + IntToStr(_FITItineraryForm_Quotations_id) + ',1';
  QuoLinesSds.Open;

  InsertQuoLines;

  QuoLinesCds.Close;
  QuoLinesCds.Open;

  cxPageControl1.ActivePageIndex := 0;

  AddressbookCds.Open;

  AgentListCds.Close;
  AgentListSds.Close;
  AgentListSds.Params[0].Value := _FITItineraryForm_Quotations_id;
  AgentListSds.Open;
  AgentListCds.Open;


end;

procedure TFITItineraryForm.InsertQuoLines;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(_FITItineraryForm_Quotations_id);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] = 0 then
    begin
      QueryString := 'EXEC p_InsertQuoLines ' + IntToStr(_FITItineraryForm_Quotations_id);
      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'EXEC p_UpdateQuoStrings ' + IntToStr(_FITItineraryForm_Quotations_id);
      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'EXEC p_UpdateQuoStrings ' + IntToStr(_FITItineraryForm_Quotations_id);
      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QuoLinesCds.Close;
      QuoLinesCds.Open;

    end;

  GpSds.Free;

end;


procedure TFITItineraryForm.RecreateItinerary1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to recreate this itinerary?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoLinesDrives WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(_FITItineraryForm_Quotations_id) + ' AND q.QuoLines_id = QuoLinesDrives.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoLinesDrivesStates WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(_FITItineraryForm_Quotations_id) + ' AND q.QuoLines_id = QuoLinesDrivesStates.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM BreakTransCosts WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(_FITItineraryForm_Quotations_id) + ' AND q.QuoLines_id = BreakTransCosts.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoLineCostTrace WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(_FITItineraryForm_Quotations_id) + ' AND q.QuoLines_id = QuoLineCostTrace.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(_FITItineraryForm_Quotations_id);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  InsertQuoLines;
end;

procedure TFITItineraryForm.ComputeCost1Click(Sender: TObject);
begin

  if (QuoLinesCds['TrsType'] <> 'Drive') or (QuoLinesCds['NewDriveLine'] <> 1) then
    raise exception.create ('Please highlight the row where you hired the car before displaying the trace');

  _QuoLineCostTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoLineCostTraceForm = nil then
    Application.CreateForm(TQuoLineCostTraceForm, QuoLineCostTraceForm);

  QuoLineCostTraceForm.ShowModal;

  QuoLineCostTraceForm.Free;
  QuoLineCostTraceForm := nil;

end;

procedure TFITItineraryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

  if QuoCitywiseForm <> nil then
    begin
      QuoCitywiseForm.Detail1Cds.Active := False;
      QuoCitywiseForm.Detail1Cds.Active := True;
    end;
end;

procedure TFITItineraryForm.FormDestroy(Sender: TObject);
begin
  FITItineraryForm := nil;
end;

procedure TFITItineraryForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFITItineraryForm.DisplayCost1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QuoLinesCds.Active := False;

  QueryString := 'EXEC p_UpdateQuoCosts ' + IntToStr(_FITItineraryForm_Quotations_id) + ',0, 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  QuoLinesCds.Active := False;
  QuoLinesCds.Active := True;

end;

procedure TFITItineraryForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\FitItinerary.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW (SaveDialog.FileName, QuoLinesGrid, True, True, False, QuoLinesGridDBTableView1);

end;

procedure TFITItineraryForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := QuoLinesGrid;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Pax Itinerary ';

  dxComponentPrinter.Preview(True,nil);


end;

procedure TFITItineraryForm.Itinerary1Click(Sender: TObject);
begin
  _RpQuoItineraryForm_Type := 1;

  if RpQuoItineraryForm = nil then
    Application.CreateForm(TRpQuoItineraryForm, RpQuoItineraryForm);

  RpQuoItineraryForm.ReportCds.Close;
  RpQuoItineraryForm.ReportSds.Close;
  RpQuoItineraryForm.ReportSds.CommandText :=
    'EXEC p_Rpt_DetailedItinerary2 ' + IntToStr(_FITItineraryForm_Quotations_id) + ', 2';
  RpQuoItineraryForm.ReportSds.Open;
  RpQuoItineraryForm.ReportCds.Open;

  RpQuoItineraryForm.QuickRep1.PreviewModal;

  RpQuoItineraryForm.Release;
  RpQuoItineraryForm := nil;


end;

procedure TFITItineraryForm.InclusionsClick(Sender: TObject);
begin

  _RpQuoInclusionForm_Type := 1;

  if RpQuoInclusionForm = nil then
    Application.CreateForm(TRpQuoInclusionForm, RpQuoInclusionForm);

  RpQuoInclusionForm.ReportSds.Close;
  RpQuoInclusionForm.ReportSds.CommandText :=
    'EXEC p_RptQuoItinerary ' + IntToStr(_FITItineraryForm_Quotations_id) + ', 2';
  RpQuoInclusionForm.ReportSds.Open;

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportCds.Open;

  RpQuoInclusionForm.QuickRep1.PreviewModal;

  RpQuoInclusionForm.Release;
  RpQuoInclusionForm := nil;


end;

procedure TFITItineraryForm.DetailedItinerary1Click(Sender: TObject);
begin

  if RpQuoDetailedItineraryForm = nil then
    Application.CreateForm(TRpQuoDetailedItineraryForm, RpQuoDetailedItineraryForm);

  RpQuoDetailedItineraryForm.ReportSds.Close;
  RpQuoDetailedItineraryForm.ReportSds.CommandText :=
    'EXEC p_Rpt_DetailedItinerary ' + IntToStr(_FITItineraryForm_Quotations_id) + ', 1';
  RpQuoDetailedItineraryForm.ReportSds.Open;

  RpQuoDetailedItineraryForm.ReportCds.Close;
  RpQuoDetailedItineraryForm.ReportCds.Open;

  RpQuoDetailedItineraryForm.QuickRep1.PreviewModal;

  RpQuoDetailedItineraryForm.Release;
  RpQuoDetailedItineraryForm := nil;


end;

procedure TFITItineraryForm.SetMargins1Click(Sender: TObject);
begin

  _FitMarginQuoForm_Level := GetUserLevel(g_users_id, 12040);

  _FitMarginQuoForm_Quotations_id := _FITItineraryForm_Quotations_id;

  If _FitMarginQuoForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FitMarginQuoForm = nil then
    Application.CreateForm(TFitMarginQuoForm,FitMarginQuoForm);

end;

procedure TFITItineraryForm.SetMarginforthislineonly1Click(
  Sender: TObject);
var
  ClickedOk: boolean;
  GpSds : TSQLDataSet;
  QueryString, NewString: string;
begin

  ClickedOK:= InputQuery('Enter Margin', 'Enter Margin', NewString);

  if ClickedOK then
    begin

      try
        QueryString := 'UPDATE QuoLines SET Margin2 = ' + NewString + ' ' +
          'WHERE QuoLines_id = ' + IntToStr(QuoLinesCds['QuoLines_id']);

        GpSds := TSQLDataSet.Create(nil);
        GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
        GpSds.CommandType := ctQuery;

        GpSds.CommandText := QueryString;
        GpSds.ExecSQL;

        GpSds.Free;
      except
      end;

    end;

end;

procedure TFITItineraryForm.QuoLinesGridDBTableView1StylesGetContentStyle(
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

procedure TFITItineraryForm.ChangeCarAgent1Click(Sender: TObject);
begin

  ShowMessage ('Please change this from the "Edit Day" option');

{
  if QuoLinesCds['QuoLines_id'] = null then
    exit;

  if (QuoLinesCds['Car'] = null) or (QuoLinesCds['Car'] <> 'Car') then
    raise exception.create('Change change Agent only for Drive lines');

  if (QuoLinesCds['NewCar'] = null) or (QuoLinesCds['NewCar'] <> 1) then
    raise exception.create('Change change Agent at the start of a Drive');

  _CarHireAgentQuoLineForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if CarHireAgentQuoLineForm = nil then
    Application.CreateForm(TCarHireAgentQuoLineForm, CarHireAgentQuoLineForm);

  CarHireAgentQuoLineForm.Visible := False;

  CarHireAgentQuoLineForm.ShowModal;

  CarHireAgentQuoLineForm.Free;
  CarHireAgentQuoLineForm := nil;
}

end;

procedure TFITItineraryForm.HotelsAgentsListing1Click(Sender: TObject);
begin

  if AgentListCds.State = dsEdit then
    AgentListCds.Post;

  if RpQuoHotelAgentForm = nil then
    Application.CreateForm(TRpQuoHotelAgentForm, RpQuoHotelAgentForm);

  RpQuoHotelAgentForm.ReportSds.Close;
  RpQuoHotelAgentForm.ReportSds.CommandText :=
    'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(_FITItineraryForm_Quotations_id) + ',3';
  RpQuoHotelAgentForm.ReportSds.Open;

  RpQuoHotelAgentForm.ReportCds.Close;
  RpQuoHotelAgentForm.ReportCds.Open;

  RpQuoHotelAgentForm.QRTitleLabel.Caption := 'Hotels & Agents';
  RpQuoHotelAgentForm.QRColumnLabel.Caption := 'Hotel/Agent';

  RpQuoHotelAgentForm.QuickRep1.PreviewModal;

  RpQuoHotelAgentForm.Release;
  RpQuoHotelAgentForm := nil;


end;

procedure TFITItineraryForm.HotelsLIsting1Click(Sender: TObject);
begin
  if AgentListCds.State = dsEdit then
    AgentListCds.Post;

  if RpQuoHotelAgentForm = nil then
    Application.CreateForm(TRpQuoHotelAgentForm, RpQuoHotelAgentForm);

  RpQuoHotelAgentForm.ReportSds.Close;
  RpQuoHotelAgentForm.ReportSds.CommandText :=
    'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(_FITItineraryForm_Quotations_id) + ',2';
  RpQuoHotelAgentForm.ReportSds.Open;

  RpQuoHotelAgentForm.ReportCds.Close;
  RpQuoHotelAgentForm.ReportCds.Open;

  RpQuoHotelAgentForm.QRTitleLabel.Caption := 'Hotels';
  RpQuoHotelAgentForm.QRColumnLabel.Caption := 'Hotel';
  RpQuoHotelAgentForm.QRDBAgentType.Enabled := False;

  RpQuoHotelAgentForm.QuickRep1.PreviewModal;

  RpQuoHotelAgentForm.Release;
  RpQuoHotelAgentForm := nil;


end;

procedure TFITItineraryForm.AgentsLising1Click(Sender: TObject);
begin

  if AgentListCds.State = dsEdit then
    AgentListCds.Post;

  if RpQuoHotelAgentForm = nil then
    Application.CreateForm(TRpQuoHotelAgentForm, RpQuoHotelAgentForm);

  RpQuoHotelAgentForm.ReportSds.Close;
  RpQuoHotelAgentForm.ReportSds.CommandText :=
    'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(_FITItineraryForm_Quotations_id) + ',1';
  RpQuoHotelAgentForm.ReportSds.Open;

  RpQuoHotelAgentForm.ReportCds.Close;
  RpQuoHotelAgentForm.ReportCds.Open;

  RpQuoHotelAgentForm.QRTitleLabel.Caption := 'Agents';
  RpQuoHotelAgentForm.QRColumnLabel.Caption := 'Agent';
  RpQuoHotelAgentForm.QRDBAgentType.Enabled := False;

  RpQuoHotelAgentForm.QuickRep1.PreviewModal;

  RpQuoHotelAgentForm.Release;
  RpQuoHotelAgentForm := nil;


end;

procedure TFITItineraryForm.DisplayCostBreakupforDriveAgent1Click(
  Sender: TObject);
begin

  if (QuoLinesCds['TrsType'] <> 'Drive') or (QuoLinesCds['NewDriveLine'] <> 1) then
    raise exception.create ('Please highlight the row where you hired the car before displaying the trace');

  _QuoLineCostTraceAgentForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoLineCostTraceAgentForm = nil then
    Application.CreateForm(TQuoLineCostTraceAgentForm, QuoLineCostTraceAgentForm);

  QuoLineCostTraceAgentForm.ShowModal;

  QuoLineCostTraceAgentForm.Free;
  QuoLineCostTraceAgentForm := nil;

end;

procedure TFITItineraryForm.DisplayMarginBreakupforAccommodation1Click(
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

procedure TFITItineraryForm.DisplayCostingBreakupforthisline1Click(
  Sender: TObject);
begin

  _QuoCostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _QuoCostingTraceForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _QuoCostingTraceForm_Quotations_id := QuoLinesCds['Quotations_id'];
  _QuoCostingTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoCostingTraceForm = nil then
    Application.CreateForm(TQuoCostingTraceForm, QuoCostingTraceForm);

  QuoCostingTraceForm.ShowModal;

  QuoCostingTraceForm.Free;
  QuoCostingTraceForm := nil;


end;

procedure TFITItineraryForm.WelcomeLetter1Click(Sender: TObject);
begin


  _RpQuoWelcomeForm_Quotations_id := _FITItineraryForm_Quotations_id;

  if RpQuoWelcomeForm = nil then
    Application.CreateForm(TRpQuoWelcomeForm, RpQuoWelcomeForm);

  RpQuoWelcomeForm.QuoLinesCds.Close;
  RpQuoWelcomeForm.QuoLinesSds.Close;

  RpQuoWelcomeForm.ReportCds.Close;
  RpQuoWelcomeForm.ReportSds.Close;

  RpQuoWelcomeForm.ReportSds.Params[0].Value := _FITItineraryForm_Quotations_id;

  RpQuoWelcomeForm.ReportSds.Open;
  RpQuoWelcomeForm.ReportCds.Open;

  RpQuoWelcomeForm.QuoLinesSds.Open;
  RpQuoWelcomeForm.QuoLinesCds.Open;

  RpQuoWelcomeForm.QuickRep1.PreviewModal;

  RpQuoWelcomeForm.Release;
  RpQuoWelcomeForm := nil;

end;

function TFITItineraryForm.GetTickets(x_quotations_id, x_tickets_id: integer): integer;
var
  GpSds : TSQLDataSet;
  x_count: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE Quotations_id = ' + IntToStr(x_quotations_id) + ' ' +
    'AND Tickets_id = ' + IntToStr(x_tickets_id);
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


procedure TFITItineraryForm.DisplayTravel1Click(Sender: TObject);
begin

  _QuoDisplayTravelForm_Level := GetUserLevel(g_users_id, 9080);

  If _QuoDisplayTravelForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _QuoDisplayTravelForm_Quotations_id := QuoLinesCds['Quotations_id'];

  if QuoDisplayTravelForm = nil then
    Application.CreateForm(TQuoDisplayTravelForm, QuoDisplayTravelForm);

  QuoDisplayTravelForm.ShowModal;

  QuoDisplayTravelForm.Free;
  QuoDisplayTravelForm := nil;

end;

procedure TFITItineraryForm.DetaileditineraryUnderTest1Click(
  Sender: TObject);
begin

  _RpQuoDetailedItinerary2Form_Type := 1;

  if RpQuoDetailedItinerary2Form = nil then
    Application.CreateForm(TRpQuoDetailedItinerary2Form, RpQuoDetailedItinerary2Form);

  RpQuoDetailedItinerary2Form.ReportCds.Close;
  RpQuoDetailedItinerary2Form.ReportSds.Close;

  RpQuoDetailedItinerary2Form.ReportSds.CommandText :=
    'EXEC p_Rpt_DetailedItinerary2 ' + IntToStr(_FITItineraryForm_Quotations_id) + ', 1';

  RpQuoDetailedItinerary2Form.ReportSds.Open;
  RpQuoDetailedItinerary2Form.ReportCds.Open;

  RpQuoDetailedItinerary2Form.QuickRep1.PreviewModal;

  RpQuoDetailedItinerary2Form.Release;
  RpQuoDetailedItinerary2Form := nil;


end;

procedure TFITItineraryForm.DisplaycostforanyDate1Click(Sender: TObject);
begin

  if _FITItineraryForm_Trial = 0 then
    raise exception.Create('Only meant for web / trial');

  _FITItineraryDateForm_Quotations_id := _FITItineraryForm_Quotations_id;

  if FITItineraryDateForm = nil then
    Application.CreateForm(TFITItineraryDateForm, FITItineraryDateForm);

  FITItineraryDateForm.FormStyle := fsNormal;
  FITItineraryDateForm.Visible := false;

  FITItineraryDateForm.ShowModal;

  FITItineraryDateForm.Free;
  FITItineraryDateForm := nil;

end;

procedure TFITItineraryForm.EditDetailedItinerary1Click(Sender: TObject);
begin

  _QuoPrintForm_Level := 4;
  _QuoPrintForm_Quotations_id := _FITItineraryForm_Quotations_id;

  if QuoCitywiseForm.MasterCds['NumPax'] <> null then
    _QuoPrintForm_NumPax := QuoCitywiseForm.MasterCds['NumPax']
  else
    _QuoPrintForm_NumPax := 1;

  _QuoPrintForm_Currency := QuoCitywiseForm.CurrencyLCB.Text;

  _QuoPrintForm_Currencies_id := 0;
  if QuoCitywiseForm.MasterCds['Currencies_id'] <> null then
    _QuoPrintForm_Currencies_id := QuoCitywiseForm.MasterCds['Currencies_id'];

  _QuoPrintForm_QuotationDateEntered := 1;
  if QuoCitywiseForm.MasterCds['QuotationSendDate'] <> null then
    _QuoPrintForm_QuotationDate := QuoCitywiseForm.MasterCds['QuotationSendDate']
  else
    _QuoPrintForm_QuotationDateEntered := 0;

  _QuoPrintForm_QuotationNo := QuoCitywiseForm.MasterCds['QuotationNo'];
  _QuoPrintForm_StartDate := QuoCitywiseForm.MasterCds['StartDate'];
  _QuoPrintForm_PaxName := QuoCitywiseForm.MasterCds['PaxName'];
  _QuoPrintForm_Email := '';
  if QuoCitywiseForm.MasterCds['Email'] <> null then
    _QuoPrintForm_Email := QuoCitywiseForm.MasterCds['Email'];

  if QuoPrintForm = nil then
    Application.CreateForm(TQuoPrintForm, QuoPrintForm);

end;

procedure TFITItineraryForm.cxButton2Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(_FITItineraryForm_Quotations_id) + ',1';
  GpSds.ExecSQL;

  GpSds.Free;

  AgentListCds.Close;
  AgentListSds.Close;
  AgentListSds.Params[0].Value := _FITItineraryForm_Quotations_id;
  AgentListSds.Open;
  AgentListCds.Open;

end;

procedure TFITItineraryForm.AgentListCdsAfterPost(DataSet: TDataSet);
begin
  AgentListCds.ApplyUpdates(0);
  AgentListCds.RefreshRecord;
end;

procedure TFITItineraryForm.DriversItinerary1Click(Sender: TObject);
begin

  if RptQuoDriverItinForm = nil then
    Application.CreateForm(TRptQuoDriverItinForm, RptQuoDriverItinForm);

  RptQuoDriverItinForm.DriverItinCds.Close;
  RptQuoDriverItinForm.DriverItinSds.Close;

  RptQuoDriverItinForm.DriverItinSds.CommandText :=
    'EXEC p_DriverItin ' + IntToStr(_FITItineraryForm_Quotations_id);

  RptQuoDriverItinForm.DriverItinSds.Open;
  RptQuoDriverItinForm.DriverItinCds.Open;

  RptQuoDriverItinForm.QuickRep1.PreviewModal;

  RptQuoDriverItinForm.Release;
  RptQuoDriverItinForm := nil;

end;

end.
