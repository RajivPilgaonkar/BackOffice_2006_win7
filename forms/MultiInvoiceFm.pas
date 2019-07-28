unit MultiInvoiceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ComCtrls, StdCtrls,
  Buttons, Mask, ExtCtrls, cxLookAndFeelPainters, cxButtons, cxCheckBox,
  Menus, cxCalendar, cxButtonEdit, cxDBLookupComboBox, ExcelXP, OleServer, ActiveX,
  scExcelExport, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, DateUtils, ShlObj;

type
  TMultiInvoiceForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    FromDateEdit: TMaskEdit;
    ToDateEdit: TMaskEdit;
    Panel2: TPanel;
    Progbar: TProgressBar;
    InvoiceGrid: TcxGrid;
    InvoiceGridDBTableView1: TcxGridDBTableView;
    InvoiceGridLevel1: TcxGridLevel;
    MasterTourSds: TSQLDataSet;
    MasterTourDsp: TDataSetProvider;
    MasterTourDS: TDataSource;
    MasterTourCds: TClientDataSet;
    InvoiceGridDBTableView1MasterCode: TcxGridDBColumn;
    InvoiceGridDBTableView1MasterDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1NumPax: TcxGridDBColumn;
    InvoiceGridDBTableView1NumCancelled: TcxGridDBColumn;
    cxDisplayButton: TcxButton;
    InvoiceGridDBTableView1Fit: TcxGridDBColumn;
    MasterTourCdsMasters_id: TIntegerField;
    MasterTourCdsMasterCode: TStringField;
    MasterTourCdsMasterDepDate: TSQLTimeStampField;
    MasterTourCdsNumPax: TIntegerField;
    MasterTourCdsNumCancelled: TIntegerField;
    MasterTourCdsFIT: TBooleanField;
    MasterTourCdsStatus: TIntegerField;
    Panel3: TPanel;
    Label3: TLabel;
    InvDateEdit: TMaskEdit;
    InvoiceGridDBTableView1InvoiceNo: TcxGridDBColumn;
    MasterTourCdsInvoiceNo: TIntegerField;
    MasterTourCdsInvoiceDate: TSQLTimeStampField;
    InvoiceGridDBTableView1InvoiceDate: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    GenerateInvoiceMenu: TPopupMenu;
    GenerateInvoices2: TMenuItem;
    N7: TMenuItem;
    GenerateTourLeaderInvoicesforExpensesBookings1: TMenuItem;
    objectGenerateTourLeaderInvoicesVouchers1TMenuItem1: TMenuItem;
    GenerateSingleInvoice1: TMenuItem;
    cxButton4: TcxButton;
    DeleteInvoiceMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    GenerateTourLeaderInvoicesforExpensesBookings2: TMenuItem;
    GenerateTourLeaderInvoicesforAllowancesVouchers1: TMenuItem;
    N8: TMenuItem;
    MasterTourCdsInvoices_id: TIntegerField;
    TL_Exp_Label: TLabel;
    TL_All_Label: TLabel;
    cxButton6: TcxButton;
    ViewInvoiceMenu: TPopupMenu;
    ViewCurrentInvoice1: TMenuItem;
    ViewallInvoices1: TMenuItem;
    ViewallTourLeaderInvoices1: TMenuItem;
    cxButton7: TcxButton;
    ExportMenu: TPopupMenu;
    SaveAllAsSingleExcelFile1: TMenuItem;
    N1: TMenuItem;
    SaveSelectedAsExcelFile1: TMenuItem;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    scExcelExport1: TscExcelExport;
    cxButton8: TcxButton;
    SaveTourLeaderExpensesBookings1: TMenuItem;
    SaveAllInvoicesAsSingleExcelFileonebelowanother1: TMenuItem;
    SaveOutstandingInvoices1: TMenuItem;
    MasterTourCdsOrderNo: TIntegerField;
    N2: TMenuItem;
    FITSaveallasExcel1: TMenuItem;
    FITSaveCurrentasExcel1: TMenuItem;
    MasterTourCdsItineraries_id: TIntegerField;
    MasterTourCdsItineraryCreated: TStringField;
    MasterTourCdsNumVouchers: TIntegerField;
    MasterTourCdsNumManualVouchers: TIntegerField;
    MasterTourCdsTourNo: TIntegerField;
    MasterTourCdsNumMail: TIntegerField;
    MasterTourCdsSendMail: TBooleanField;
    MasterTourCdsQuoModules_id: TIntegerField;
    ServiceTaxperInvoice1: TMenuItem;
    ServiceTaxperItemFormat1: TMenuItem;
    FITSaveAllasExcel2: TMenuItem;
    FITSaveCurrentasExcel2: TMenuItem;
    N3: TMenuItem;
    OfficeReportExcel1: TMenuItem;
    InvoiceGridDBTableView1ErrorNo: TcxGridDBColumn;
    MasterTourCdsTourDepDate: TSQLTimeStampField;
    MasterTourCdsQuoDepDate: TSQLTimeStampField;
    MasterTourCdsQuoModDepDate: TSQLTimeStampField;
    MasterTourCdsErrorNo: TIntegerField;
    InvoiceGridDBTableView1TourDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1QuoDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1QuoModDepDate: TcxGridDBColumn;
    N4: TMenuItem;
    CompareCosts1: TMenuItem;
    N5: TMenuItem;
    GST1: TMenuItem;
    SaveAllasExcel1: TMenuItem;
    N6: TMenuItem;
    SaveAllasExcelSu1: TMenuItem;
    N9: TMenuItem;
    InvoiceExchRateMaster1: TMenuItem;
    GSTR1ExcelForOffice1: TMenuItem;
    SetExchangeRateinInvoices1: TMenuItem;
    GSTR11: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    ransfertoAccounts1: TMenuItem;
    CreateAccountingEntries1: TMenuItem;
    EnterAcHeadsforPrincipalAgents1: TMenuItem;
    GSTR1Export1: TMenuItem;
    EnterAdvances1: TMenuItem;
    N12: TMenuItem;
    SaveAllasExcelDept1: TMenuItem;
    procedure FilterInvoices;
    procedure cxDisplayButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GenerateMultiInvoices (x_TourCode: string; x_TourDate: TDateTime; x_InvDate: TDateTime);
    procedure FormCreate(Sender: TObject);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure FromDateEditExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure GenerateInvoices2Click(Sender: TObject);
    procedure GenerateTourLeaderInvoicesforExpensesBookings1Click(
      Sender: TObject);
    procedure objectGenerateTourLeaderInvoicesVouchers1TMenuItem1Click(
      Sender: TObject);
    procedure GenerateSingleInvoice1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure GenerateTourLeaderInvoicesforExpensesBookings2Click(
      Sender: TObject);
    procedure GenerateTourLeaderInvoicesforAllowancesVouchers1Click(
      Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure ViewCurrentInvoice1Click(Sender: TObject);
    procedure ViewallInvoices1Click(Sender: TObject);
    procedure ViewallTourLeaderInvoices1Click(Sender: TObject);
    procedure TourLeaderExpenseLabel;
    procedure TourLeaderAllowanceLabel;
    procedure SaveAllAsSingleExcelFile1Click(Sender: TObject);
    procedure InitializeExcel;
    procedure SaveSelectedAsExcelFile1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure SaveTourLeaderExpensesBookings1Click(Sender: TObject);
    procedure SaveAllInvoicesAsSingleExcelFileonebelowanother1Click(
      Sender: TObject);
    procedure SaveOutstandingInvoices1Click(Sender: TObject);
    procedure FITSaveCurrentasExcel1Click(Sender: TObject);
    procedure FITSaveallasExcel1Click(Sender: TObject);
    procedure FITSaveAllasExcel2Click(Sender: TObject);
    procedure FITSaveCurrentasExcel2Click(Sender: TObject);
    procedure OfficeReportExcel1Click(Sender: TObject);
    procedure CompareCosts1Click(Sender: TObject);
    procedure SaveAllasExcel1Click(Sender: TObject);
    procedure SaveAllasExcelSu1Click(Sender: TObject);
    procedure InvoiceExchRateMaster1Click(Sender: TObject);
    procedure GSTR1ExcelForOffice1Click(Sender: TObject);
    procedure SetExchangeRateinInvoices1Click(Sender: TObject);
    procedure EnterAcHeadsforPrincipalAgents1Click(Sender: TObject);
    procedure CreateAccountingEntries1Click(Sender: TObject);
    procedure GSTR1Export1Click(Sender: TObject);
    procedure EnterAdvances1Click(Sender: TObject);
    procedure SaveAllasExcelDept1Click(Sender: TObject);
  private
    { Private declarations }
    procedure TourGstInvoice(x_type: integer);
    procedure TourGstDeptInvoice(x_type: integer);
    function GetDesktopPath(Sender: TObject): string;
    procedure AddAdvances (scExcelExport1: TscExcelExport; var x_row: integer);
    procedure AddAdvancesAdj (scExcelExport1: TscExcelExport; var x_row: integer);
    procedure AddGstr3B (scExcelExport1: TscExcelExport; var x_row: integer);
    procedure AddGstr1 (scExcelExport1: TscExcelExport; var x_row: integer);
    procedure AddHsn (scExcelExport1: TscExcelExport; var x_row: integer);
  public
    { Public declarations }
  end;

var
  MultiInvoiceForm: TMultiInvoiceForm;
  _MultiInvoiceForm_Level: integer;

implementation

uses BackOfficeDM, MainFm, GeneralUt, ExportInvoiceExcel,
  PrincipalAgentFm, QuoModules_ExcelReportsUt, InvVouCostCompareFm,
  Gst_TourInvoice_ExcelReportsUt, InvoicesFm, InvExchangeRateFm,
  PrinAgentAcHeadsFm, GstAdvancesFm, GstAdvAdjFm,
  Gst_TourInvoiceDept_ExcelReportsUt;


{$R *.dfm}

procedure TMultiInvoiceForm.FilterInvoices;
var
  x_FromDate, x_ToDate: TDateTime;
  x_FromDate_str, x_ToDate_str: string;
begin

  try
    x_FromDate := StrToDate(FromDateEdit.Text);
    x_ToDate := StrToDate(ToDateEdit.Text);
    x_FromDate_str := FormatDateTime('mm/dd/yyyy',x_FromDate);
    x_ToDate_str := FormatDateTime('mm/dd/yyyy',x_ToDate);
  except
    exit;
  end;

  MasterTourSds.Close;
  MasterTourSds.CommandText := 'EXEC p_GetMasterToursDateRange ''' +
    x_FromDate_str + ''',''' + x_ToDate_str + ''', 1 ';

  MasterTourCds.Close;
  MasterTourCds.Open;

  TourLeaderExpenseLabel;
  TourLeaderAllowanceLabel;

end;

procedure TMultiInvoiceForm.TourLeaderExpenseLabel;
var
  GpSds: TSQLDataSet;
  x_year, x_month, x_day: word;
  x_count: integer;
begin

  DecodeDate (StrToDate(InvDateEdit.Text),x_year, x_month, x_day);

  //_InvoiceForm_Months_id := x_month;
  //_InvoiceForm_Years_id := x_year;
  //_InvoiceForm_Type := 4;


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  DecodeDate (StrToDate(InvDateEdit.Text),x_year, x_month, x_day);

  GPSds.Close;
  GPSds.CommandText := 'SELECT COUNT(*) AS x_count ' +
    'FROM Invoices ' +
    'WHERE Companies_id = ' + IntToStr(g_companies_id) + ' ' +
    'AND Divisions_id = 0 ' +
    'AND Months_id = ' + IntToStr(x_month) + ' ' +
    'AND Years_id = ' + IntToStr(x_year) + ' ' +
    'AND TL_Type = 1';
  GPSds.Open;

  x_count := GPSds['x_count'];

  GPSds.Free;

  if x_count > 0 then
    begin
      TL_Exp_Label.Caption := 'Tour Leader Expense Voucher Generated';
      TL_Exp_Label.Font.Color := clGreen;
    end
  else
    begin
      TL_Exp_Label.Caption := 'Tour Leader Expense Voucher Not Generated';
      TL_Exp_Label.Font.Color := clRed;
    end;


end;

procedure TMultiInvoiceForm.TourLeaderAllowanceLabel;
var
  GpSds: TSQLDataSet;
  x_year, x_month, x_day: word;
  x_count: integer;
begin

  DecodeDate (StrToDate(InvDateEdit.Text),x_year, x_month, x_day);

  //_InvoiceForm_Months_id := x_month;
  //_InvoiceForm_Years_id := x_year;
  //_InvoiceForm_Type := 4;


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  DecodeDate (StrToDate(InvDateEdit.Text),x_year, x_month, x_day);

  GPSds.Close;
  GPSds.CommandText := 'SELECT COUNT(*) AS x_count ' +
    'FROM Invoices ' +
    'WHERE Companies_id = ' + IntToStr(g_companies_id) + ' ' +
    'AND Divisions_id = 0 ' +
    'AND Months_id = ' + IntToStr(x_month) + ' ' +
    'AND Years_id = ' + IntToStr(x_year) + ' ' +
    'AND TL_Type = 2';
  GPSds.Open;

  x_count := GPSds['x_count'];

  GPSds.Free;

  if x_count > 0 then
    begin
      TL_All_Label.Caption := 'Tour Leader Allowance Voucher Generated';
      TL_All_Label.Font.Color := clGreen;
    end
  else
    begin
      TL_All_Label.Caption := 'Tour Leader Allowance Voucher Not Generated';
      TL_All_Label.Font.Color := clRed;
    end;

end;



procedure TMultiInvoiceForm.cxDisplayButtonClick(Sender: TObject);
begin
  FilterInvoices;
end;

procedure TMultiInvoiceForm.GenerateMultiInvoices (x_TourCode: string; x_TourDate: TDateTime; x_InvDate: TDateTime);
var
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  ProgBar.position := 0;
  ProgBar.Min := 0;
  ProgBar.max := MasterTourCds.RecordCount;

  MasterTourCds.First;
  while not MasterTourCds.EOF do
    begin

      //=== Already Invoiced ===//
      if (MasterTourCds['status'] = 1) then
        begin
          MasterTourCds.Next;
          ProgBar.Position := ProgBar.Position + 1;
          continue;
        end;

      //=== If only for specific tour ===//
      if (x_TourCode > '') and
         ((MasterTourCds['MasterCode'] <> x_TourCode) or (MasterTourCds['MasterDepDate'] <> x_TourDate)) then
        begin
          MasterTourCds.Next;
          ProgBar.Position := ProgBar.Position + 1;
          continue;
        end;


      //=== Master Info Incomplete ===//
      if (MasterTourCds['MasterCode'] = null) or (MasterTourCds['MasterDepDate'] = null) or
         (MasterTourCds['fit'] = null) then
        begin
          ShowMessage ('Unable to process ' + MasterTourCds['MasterCode'] + ' --- ' +
            FormatDateTime('dd/mm/yyyy',MasterTourCds['MasterDepDate']) + ' ' + chr(13) +
            'Since master information was incomplete for the tour');
          MasterTourCds.Next;
          continue;
        end;

      //=== Generate Invoice ===//
      GPSds.Close;
      GPSds.CommandText := 'EXEC p_GenerateInvoice ' + IntToStr(MasterTourCds['Masters_id']) + ',''' +
        FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''',''' +
        FormatDateTime('mm/dd/yyyy',x_InvDate) + ''',' +
        IntToStr(g_companies_id) + ',' + IntToStr(0) + ',25, 2 ';
      GPSds.ExecSQL;

      ProgBar.Position := ProgBar.Position + 1;

      MasterTourCds.Next;

    end;

  GPSds.Close;

  ProgBar.position := 0;

end;

procedure TMultiInvoiceForm.FormDestroy(Sender: TObject);
begin
  MultiInvoiceForm := nil;
end;

procedure TMultiInvoiceForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMultiInvoiceForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
var
  x_Year, x_month, x_Day : Word;
  x_YearNext, x_MonthNext : Word;
  x_YearEnd, x_MonthEnd, x_DayEnd : Word;
  x_DateEnd: TDateTime;
begin

  DecodeDate(x_Date, x_Year, x_Month, x_Day);
  if x_month = 12 then
    begin
      x_MonthNext := 1;
      x_yearNext := x_Year + 1;
    end
  else
    begin
      x_MonthNext := x_Month + 1;
      x_yearNext := x_Year;
    end;

  x_DateEnd := StrToDate('01/' + padl(IntToStr(x_MonthNext),'0',2) + '/' + padl(IntToStr(x_YearNext),'0',4));
  x_DateEnd := x_DateEnd - 1;

  DecodeDate(x_DateEnd, x_YearEnd, x_MonthEnd, x_DayEnd);

  if x_option = 1 then
    begin
      FromDateEdit.Text := '01/' + padl(IntToStr(x_Month),'0',2) + '/' + padl(IntToStr(x_Year),'0',4);
      ToDateEdit.Text := padl(IntToStr(x_DayEnd),'0',2) + '/' + padl(IntToStr(x_MonthEnd),'0',2) + '/' + padl(IntToStr(x_YearEnd),'0',4);
    end
  else if x_option = 2 then
    begin
      ToDateEdit.Text := padl(IntToStr(x_DayEnd),'0',2) + '/' + padl(IntToStr(x_MonthEnd),'0',2) + '/' + padl(IntToStr(x_YearEnd),'0',4);
    end;

end;


procedure TMultiInvoiceForm.FormCreate(Sender: TObject);
begin

  MultiInvoiceForm.Height := 650;
  MultiInvoiceForm.Width := 800;

  AutoDateRange (Date(),1);
  InvDateEdit.Text := ToDateEdit.Text;

  FilterInvoices;
end;

procedure TMultiInvoiceForm.FromDateEditExit(Sender: TObject);
begin
  AutoDateRange (StrToDate(FromDateEdit.Text),2);
  InvDateEdit.Text := ToDateEdit.Text;
end;

procedure TMultiInvoiceForm.cxButton1Click(Sender: TObject);
begin
  AutoDateRange (StrToDate(FromDateEdit.Text)-27,1);
  InvDateEdit.Text := ToDateEdit.Text;
end;

procedure TMultiInvoiceForm.cxButton2Click(Sender: TObject);
begin
  AutoDateRange (StrToDate(FromDateEdit.Text)+33,1);
  InvDateEdit.Text := ToDateEdit.Text;
end;

procedure TMultiInvoiceForm.GenerateInvoices2Click(Sender: TObject);
var
  x_Masters_id: integer;
  x_MasterDepDate: TDateTime;
begin

  if MessageDlg ('Please ensure that all ErrorNo = 0 && all cancellation percentages (if applicable) are entered correctly in Quotation Modules Presto. Generate Invoices?',
                  mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg('Are you sure you want to generate all the tour invoices ?', mtInformation,
    [mbYes, mbNo], 0) <> mrYes then
    exit;

  x_Masters_id := MasterTourCds['Masters_id'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];

  GenerateMultiInvoices ('', StrToDate('01/01/1900'), StrToDate(InvDateEdit.Text));
  FilterInvoices;

  MasterTourCds.Locate('Masters_id;MasterDepDate',VarArrayOf([x_Masters_id, x_MasterDepDate]), []);

  ShowMessage ('Invoices Generated');

end;

procedure TMultiInvoiceForm.GenerateTourLeaderInvoicesforExpensesBookings1Click(
  Sender: TObject);
var
  FromDate, ToDate, InvDate: TDateTime;
  x_FromYear, x_ToYear, x_FromMonth, x_ToMonth, x_FromDay, x_ToDay: Word;
  x_InvYear, x_InvMonth, x_InvDay: Word;
  GpSds: TSQLDataSet;
begin

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg('Are you sure you want to generate the invoices for TL bookings?', mtInformation,
    [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    FromDate := StrToDate(FromDateEdit.Text);
    ToDate := StrToDate(ToDateEdit.Text);
    InvDate := StrToDate(InvDateEdit.Text);
  except
    raise exception.create('Invalid date');
  end;

  DecodeDate(FromDate, x_FromYear, x_FromMonth, x_FromDay);
  DecodeDate(ToDate, x_ToYear, x_ToMonth, x_ToDay);
  DecodeDate(InvDate, x_InvYear, x_InvMonth, x_InvDay);

  if (x_FromMonth <> x_ToMonth) then
    begin
      raise exception.create('Can generate only 1 month at a time. Check date range..');
      exit;
    end;

  if (x_FromYear <> x_ToYear) then
    begin
      raise exception.create('Can generate only 1 month at a time. Check date range..');
      exit;
    end;

  if (x_FromYear <> x_InvYear) then
    begin
      raise exception.create('Invoice date should be between "From Date" and "To Date".');
      exit;
    end;

  if (x_FromMonth <> x_InvMonth) then
    begin
      raise exception.create('Invoice date should be between "From Date" and "To Date".');
      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  //=== Generate Tour Leader Invoice ===//
  GPSds.Close;
  GPSds.CommandText := 'EXEC p_GenerateInvoice_TL_Bookings null, null, ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(InvDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ',' + IntToStr(0) + ',25, 2, ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + '''';
  GPSds.ExecSQL;

  GPSds.Free;

  FilterInvoices;  

  ShowMessage ('Invoice Created');

end;

procedure TMultiInvoiceForm.objectGenerateTourLeaderInvoicesVouchers1TMenuItem1Click(
  Sender: TObject);
var
  FromDate, ToDate: TDateTime;
  x_FromYear, x_ToYear, x_FromMonth, x_ToMonth, x_FromDay, x_ToDay: Word;
  GpSds: TSQLDataSet;
begin

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  if MessageDlg('Are you sure you want to generate the invoices for TL vouchers?', mtInformation,
    [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    FromDate := StrToDate(FromDateEdit.Text);
    ToDate := StrToDate(ToDateEdit.Text);
  except
    raise exception.create('Invalid date');
  end;

  DecodeDate(FromDate, x_FromYear, x_FromMonth, x_FromDay);
  DecodeDate(ToDate, x_ToYear, x_ToMonth, x_ToDay);

  if (x_FromMonth <> x_ToMonth) then
    begin
      raise exception.create('Can generate only 1 month at a time. Check date range..');
      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  //=== Generate Tour Leader Invoice ===//
  GPSds.Close;
  GPSds.CommandText := 'EXEC p_GenerateInvoice_TL_Vouchers ' + IntToStr(MasterTourCds['Masters_id']) + ',''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(InvDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ',' + IntToStr(0) + ',13, 2,''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + '''';
  GPSds.ExecSQL;

  GPSds.Free;

  FilterInvoices;  

  ShowMessage ('Invoice Created');

end;

procedure TMultiInvoiceForm.GenerateSingleInvoice1Click(Sender: TObject);
var
  x_MasterCode: string;
  x_MasterDepDate: TDateTime;
begin


  if MasterTourCds['ErrorNo'] > 0 then
    raise exception.create ('Please correct the error first');

  if MessageDlg ('Please ensure that cancellation percentages (if applicable) are entered correctly in Quotation Modules Presto. Continue?',
                  mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  GenerateMultiInvoices (MasterTourCds['MasterCode'], MasterTourCds['MasterDepDate'], StrToDate(InvDateEdit.Text));

  x_MasterCode := MasterTourCds['MasterCode'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];

  FilterInvoices;

  MasterTourCds.Locate ('MasterCode; MasterDepDate', VarArrayOf([x_MasterCode, x_MasterDepDate]), []);

end;

procedure TMultiInvoiceForm.MenuItem1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;
    
  if MessageDlg ('Are you sure you want to delete all invoices on ' + InvDateEdit.Text + '? ',
    mtInformation, [mbYes, mbNo], 0) <> mryes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := ' EXEC p_DeleteInvoices null, ''' +
    FormatDateTime('mm/dd/yyyy',strToDate(InvDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ',' + IntToStr(g_Divisions_id) + ',1, 0';

  GpSds.ExecSQL;

  GpSds.Free;

  FilterInvoices;

end;

procedure TMultiInvoiceForm.GenerateTourLeaderInvoicesforExpensesBookings2Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg ('Are you sure you want to delete Tour Leader (Bookings) invoices for ' +
      FormatDateTime('mmm yyyy', strToDate(FromDateEdit.Text)) + ' ? ',
    mtInformation, [mbYes, mbNo], 0) <> mryes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := ' EXEC p_DeleteInvoices null, ''' +
    FormatDateTime('mm/dd/yyyy',strToDate(InvDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ',' + IntToStr(0) + ',1, 1';

  GpSds.ExecSQL;

  GpSds.Free;

  FilterInvoices;

end;

procedure TMultiInvoiceForm.GenerateTourLeaderInvoicesforAllowancesVouchers1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg ('Are you sure you want to delete Tour Leader (Vouchers) invoices for ' +
      FormatDateTime('mmm yyyy', strToDate(FromDateEdit.Text)) + ' ? ',
    mtInformation, [mbYes, mbNo], 0) <> mryes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := ' EXEC p_DeleteInvoices null, ''' +
    FormatDateTime('mm/dd/yyyy',strToDate(InvDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ',' + IntToStr(0) + ',1, 2';

  GpSds.ExecSQL;

  GpSds.Free;

  FilterInvoices;

end;

procedure TMultiInvoiceForm.MenuItem2Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Masters_id: integer;
  x_MasterDepDate: TDateTime;
begin

  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourCds['InvoiceNo'] = null then
    raise exception.create ('Please select a tour where the invoice has been generated');

  x_Masters_id := MasterTourCds['Masters_id'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];

  if MessageDlg ('Are you sure you want to delete the selected invoice ?',
    mtInformation, [mbYes, mbNo], 0) <> mryes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := ' EXEC p_DeleteInvoices ' + IntToStr(MasterTourCds['Invoices_id']) + ', ''' +
    FormatDateTime('mm/dd/yyyy',strToDate(InvDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ',' + IntToStr(g_Divisions_id) + ',2, 0';

  GpSds.ExecSQL;

  GpSds.Free;

  FilterInvoices;

  MasterTourCds.Locate('Masters_id;MasterDepDate',VarArrayOf([x_Masters_id, x_MasterDepDate]), []);

  ShowMessage ('Invoice Deleted');

end;

procedure TMultiInvoiceForm.ViewCurrentInvoice1Click(Sender: TObject);
begin

  if MasterTourCds['Invoices_id'] = null then
    raise exception.create ('No invoice to display');

  InvoicesForm_Companies_id:= g_companies_id;

  //if g_companies_id = 1 then
  //  _InvoiceForm_Divisions_id := 0
  //else if g_companies_id = 2 then
  //  _InvoiceForm_Divisions_id := 2;

  InvoicesForm_Offices_id := 2;
  InvoicesForm_Invoices_id := MasterTourCds['Invoices_id'];

  InvoicesForm_FromDate := StrToDate(FromDateEdit.Text);
  InvoicesForm_ToDate := StrToDate(ToDateEdit.Text);
  InvoicesForm_Type := 3;
  InvoicesForm_InvoiceTypes_id :=1;

  InvoicesForm_Level := _MultiInvoiceForm_Level;

  if InvoicesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if InvoicesForm = nil then
    Application.CreateForm(TInvoicesForm, InvoicesForm);

end;

procedure TMultiInvoiceForm.ViewallInvoices1Click(Sender: TObject);
begin

  if MasterTourCds['Invoices_id'] = null then
    raise exception.create ('No invoice to display');

  InvoicesForm_Companies_id:= g_companies_id;

  //if g_companies_id = 1 then
  //  _InvoiceForm_Divisions_id := 0
  //else if g_companies_id = 2 then
  //  _InvoiceForm_Divisions_id := 2;

  InvoicesForm_Offices_id := 2;
  InvoicesForm_Invoices_id := MasterTourCds['Invoices_id'];

  InvoicesForm_FromDate := StrToDate(FromDateEdit.Text);
  InvoicesForm_ToDate := StrToDate(ToDateEdit.Text);
  InvoicesForm_Type := 2;
  InvoicesForm_InvoiceTypes_id :=1;

  InvoicesForm_Level := _MultiInvoiceForm_Level;

  if InvoicesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if InvoicesForm = nil then
    Application.CreateForm(TInvoicesForm, InvoicesForm);

end;

procedure TMultiInvoiceForm.ViewallTourLeaderInvoices1Click(
  Sender: TObject);
var
  x_year, x_month, x_day: word;
begin

  if MasterTourCds['Invoices_id'] = null then
    raise exception.create ('No invoice to display');

  InvoicesForm_Companies_id:= g_companies_id;

  //if g_companies_id = 1 then
  //  _InvoiceForm_Divisions_id := 0
  //else if g_companies_id = 2 then
  //  _InvoiceForm_Divisions_id := 2;

  InvoicesForm_Offices_id := 2;
  InvoicesForm_Invoices_id := MasterTourCds['Invoices_id'];

  DecodeDate (StrToDate(InvDateEdit.Text),x_year, x_month, x_day);

  InvoicesForm_Months_id := x_month;
  InvoicesForm_Years_id := x_year;

  InvoicesForm_FromDate := StrToDate(FromDateEdit.Text);
  InvoicesForm_ToDate := StrToDate(ToDateEdit.Text);
  InvoicesForm_Type := 4;
  InvoicesForm_InvoiceTypes_id :=1;

  InvoicesForm_Level := _MultiInvoiceForm_Level;

  if InvoicesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if InvoicesForm = nil then
    Application.CreateForm(TInvoicesForm, InvoicesForm);

end;

procedure TMultiInvoiceForm.InitializeExcel;
begin
  scExcelExport1.ExcelVisible:=True;
  scExcelExport1.LoadDefaultProperties;
  scExcelExport1.WorksheetName:='Invoices';
  scExcelExport1.ConnectTo := ctNewExcel;
  scExcelExport1.Connect;
end;


procedure TMultiInvoiceForm.SaveAllAsSingleExcelFile1Click(
  Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent, x_FileName: string;
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 6020);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  InitializeExcel;

  MasterTourCds.First;

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;

  SaveDataToExcel (g_companies_id, 0, StrToDate(FromDateEdit.Text),
                   StrToDate(ToDateEdit.Text), 0,
                   '',1,0, x_PrincipalAgents_id, x_PrincipalAgent);

  x_FileName := g_ReportDir + '\Invoices.xls';

  scExcelExport1.SaveAs(x_FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  Showmessage ('Saved as ' + x_FileName);


end;



procedure TMultiInvoiceForm.SaveSelectedAsExcelFile1Click(Sender: TObject);
var
  x_str: string;
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 6020);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  InitializeExcel;

  x_str := '';

  if MasterTourCds['MasterCode'] <> null then
    x_str := MasterTourCds['MasterCode'];

  if MasterTourCds['MasterDepDate'] <> null then
    x_str := x_str + '_' + FormatDateTime('mmm dd yyyy',MasterTourCds['MasterDepDate']);

  x_str := g_ReportDir + '\Invoices_' + x_str + '.xls';

  SaveDataToExcel (g_companies_id, 0, StrToDate(FromDateEdit.Text),
                   StrToDate(ToDateEdit.Text), MasterTourCds['Invoices_id'],
                   '',3,0,0,'');

  scExcelExport1.SaveAs(x_str,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  Showmessage ('Saved as ' + x_str);

end;

procedure TMultiInvoiceForm.cxButton8Click(Sender: TObject);
begin
  Close;
end;

procedure TMultiInvoiceForm.SaveTourLeaderExpensesBookings1Click(
  Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent, x_FileName: string;
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 6020);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  InitializeExcel;

  MasterTourCds.First;

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;

  SaveDataToExcel (g_companies_id, 0, StrToDate(FromDateEdit.Text),
                   StrToDate(ToDateEdit.Text), 0,
                   '',2,0, x_PrincipalAgents_id, x_PrincipalAgent);

  x_FileName := g_ReportDir + '\Invoices_TL.xls';

  scExcelExport1.SaveAs(x_FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  Showmessage ('Saved as ' + x_FileName);


end;

procedure TMultiInvoiceForm.SaveAllInvoicesAsSingleExcelFileonebelowanother1Click(
  Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent, x_FileName: string;
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 6020);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  InitializeExcel;

  MasterTourCds.First;

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;

  SaveDataToExcel (g_companies_id, 0, StrToDate(FromDateEdit.Text),
                   StrToDate(ToDateEdit.Text), 0,
                   '',4,0, x_PrincipalAgents_id, x_PrincipalAgent);

  x_FileName := g_ReportDir + '\Invoices.xls';

  scExcelExport1.SaveAs(x_FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  Showmessage ('Saved as ' + x_FileName);



end;

procedure TMultiInvoiceForm.SaveOutstandingInvoices1Click(Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent, x_FileName: string;
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 6020);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  InitializeExcel;

  MasterTourCds.First;

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;

  SaveDataToExcel (g_companies_id, 0, StrToDate(FromDateEdit.Text),
                   StrToDate(ToDateEdit.Text), 0,
                   '',5,0, x_PrincipalAgents_id, x_PrincipalAgent);

  x_FileName := g_ReportDir + '\Invoices_Outstanding.xls';

  scExcelExport1.SaveAs(x_FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  Showmessage ('Saved as ' + x_FileName);


end;

procedure TMultiInvoiceForm.FITSaveCurrentasExcel1Click(Sender: TObject);
var
  x_FileName: string;
begin
  inherited;

  x_FileName := g_ReportDir + '\Invoice.xls';

  if MasterTourCds['QuoModules_id'] <> null then
    QuoModule_Invoice_Excel(scExcelExport1, x_FileName, MasterTourCds['QuoModules_id'], 1, 0, 0, 0, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TMultiInvoiceForm.FITSaveallasExcel1Click(Sender: TObject);
var
  x_FileName, x_PrincipalAgent: string;
  x_Months_id, x_YearRef, x_PrincipalAgents_id: integer;
begin

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;


  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  x_YearRef := YearOf(StrToDate(FromDateEdit.Text));

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, 0, 2, x_Months_id, x_YearRef, x_PrincipalAgents_id, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TMultiInvoiceForm.FITSaveAllasExcel2Click(Sender: TObject);
var
  x_FileName, x_PrincipalAgent: string;
  x_Months_id, x_YearRef, x_PrincipalAgents_id: integer;
begin

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;


  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  x_YearRef := YearOf(StrToDate(FromDateEdit.Text));

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, 0, 2, x_Months_id, x_YearRef, x_PrincipalAgents_id, 2);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TMultiInvoiceForm.FITSaveCurrentasExcel2Click(Sender: TObject);
var
  x_FileName: string;
begin

  x_FileName := g_ReportDir + '\Invoice.xls';

  if MasterTourCds['QuoModules_id'] <> null then
    QuoModule_Invoice_Excel(scExcelExport1, x_FileName, MasterTourCds['QuoModules_id'], 1, 0, 0, 0, 2);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TMultiInvoiceForm.OfficeReportExcel1Click(Sender: TObject);
var
  x_FileName, x_PrincipalAgent: string;
  x_Months_id, x_YearRef, x_PrincipalAgents_id: integer;
begin

  if PrincipalAgentForm = nil then
    Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

  PrincipalAgentForm.ShowModal;

  x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
  x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

  PrincipalAgentForm.Free;
  PrincipalAgentForm := nil;


  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  x_YearRef := YearOf(StrToDate(FromDateEdit.Text));

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, 0, 2, x_Months_id, x_YearRef, x_PrincipalAgents_id, 3);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TMultiInvoiceForm.CompareCosts1Click(Sender: TObject);
begin

  InvVouCostCompareForm_FromDate := StrToDate(FromDateEdit.Text);

  if InvVouCostCompareForm =  nil then
    Application.CreateForm(TInvVouCostCompareForm, InvVouCostCompareForm);

end;

procedure TMultiInvoiceForm.SaveAllasExcel1Click(Sender: TObject);
begin

  TourGstInvoice(1);

end;

procedure TMultiInvoiceForm.SaveAllasExcelSu1Click(Sender: TObject);
begin

  TourGstInvoice(2);

end;


procedure TMultiInvoiceForm.TourGstInvoice(x_type: integer);
var
  GpSds: TSQLDataSet;
  x_FromDate, x_ToDate: TDateTime;
  x_PrincipalAgents_id, x_Months_id, x_YearRef: integer;
  x_FileName, x_prefix, x_postfix, x_agent: string;
begin

  x_FromDate := StrToDate(FromDateEdit.Text);
  x_ToDate := StrToDate(ToDateEdit.Text);

  x_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  x_YearRef := YearOf(StrToDate(FromDateEdit.Text));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MonthShortName FROM Months WHERE Months_id = ' + IntToStr(x_Months_id);
  GpSds.Open;
  x_prefix := 'Invoices_';
  if (not GpSds.Eof) and (GpSds['MonthShortName'] <> null) then
    x_prefix := x_prefix + GpSds['MonthShortName'] + '_' + IntToStr(x_YearRef) + '_';

  x_postfix := '';
  if x_type = 2 then
    x_postfix := x_postfix + '_office';

  GpSds.Close;
  GpSds.CommandText := 'SELECT DISTINCT i.addressbook_id, a.organisation, a.Inv_prefix, ' +
        'REPLACE(LTRIM(RTRIM(a.organisation)), '' '', ''_'') AS [FileName] ' +
        'FROM Invoices i ' +
        'LEFT JOIN addressbook a ON i.addressbook_id = a.addressbook_id ' +
        'WHERE i.invoicedate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ' ' +
        'AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) +
        'AND i.companies_id = 1 ' +
        'AND i.divisions_id = 0 ' +
        'AND i.offices_id = 2 ' +
        'AND i.addressbook_id IS NOT NULL ' +
        'AND i.QuoModules_id IS NOT NULL';

  GpSds.Open;

  while not (GpSds.EOF) do
    begin
      x_PrincipalAgents_id := GpSds['Addressbook_id'];

      x_agent := '';
      if (GpSds['Inv_Prefix'] <> null) and (trim(GpSds['Inv_Prefix']) > '') then
        x_agent := trim(GpSds['Inv_Prefix'])
      else if (GpSds['FileName'] <> null) then
        x_agent := trim(GpSds['FileName']);

      x_FileName := g_ReportDir + '\' + x_prefix + x_agent + x_postfix;

      GST_TourInvoice_Excel(scExcelExport1, x_FromDate, x_ToDate, x_PrincipalAgents_id, x_FileName, x_type);

      GpSds.Next;
    end;

  GpSds.Free;

  ShowMessage('Invoices saved in Desktop\BackOffice_Rpt folder');

end;

procedure TMultiInvoiceForm.TourGstDeptInvoice(x_type: integer);
var
  GpSds: TSQLDataSet;
  x_FromDate, x_ToDate: TDateTime;
  x_PrincipalAgents_id, x_Months_id, x_YearRef: integer;
  x_FileName, x_prefix, x_postfix, x_agent: string;
begin

  x_FromDate := StrToDate(FromDateEdit.Text);
  x_ToDate := StrToDate(ToDateEdit.Text);

  x_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  x_YearRef := YearOf(StrToDate(FromDateEdit.Text));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MonthShortName FROM Months WHERE Months_id = ' + IntToStr(x_Months_id);
  GpSds.Open;
  x_prefix := 'Invoices_';
  if (not GpSds.Eof) and (GpSds['MonthShortName'] <> null) then
    x_prefix := x_prefix + GpSds['MonthShortName'] + '_' + IntToStr(x_YearRef) + '_';

  x_postfix := '';
  if x_type = 2 then
    x_postfix := x_postfix + '_dept';

  GpSds.Close;
  GpSds.CommandText := 'SELECT DISTINCT i.addressbook_id, a.organisation, a.Inv_prefix, ' +
        'REPLACE(LTRIM(RTRIM(a.organisation)), '' '', ''_'') AS [FileName] ' +
        'FROM Invoices i ' +
        'LEFT JOIN addressbook a ON i.addressbook_id = a.addressbook_id ' +
        'WHERE i.invoicedate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ' ' +
        'AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) +
        'AND i.companies_id = 1 ' +
        'AND i.divisions_id = 0 ' +
        'AND i.offices_id = 2 ' +
        'AND i.addressbook_id IS NOT NULL ' +
        'AND i.QuoModules_id IS NOT NULL';

  GpSds.Open;

  while not (GpSds.EOF) do
    begin
      x_PrincipalAgents_id := GpSds['Addressbook_id'];

      x_agent := '';
      if (GpSds['Inv_Prefix'] <> null) and (trim(GpSds['Inv_Prefix']) > '') then
        x_agent := trim(GpSds['Inv_Prefix'])
      else if (GpSds['FileName'] <> null) then
        x_agent := trim(GpSds['FileName']);

      x_FileName := g_ReportDir + '\' + x_prefix + x_agent + x_postfix;

      GST_TourInvoiceDept_Excel(scExcelExport1, x_FromDate, x_ToDate, x_PrincipalAgents_id, x_FileName, x_type);

      GpSds.Next;
    end;

  GpSds.Free;

  ShowMessage('Invoices saved in Desktop\BackOffice_Rpt folder');

end;

function TMultiInvoiceForm.GetDesktopPath(Sender: TObject): string;
var
  pidl: PItemIDList;
  buf: array[0..MAX_PATH] of Char;
  x_Path: string;
begin

  x_Path := '';
  if Succeeded(ShGetSpecialFolderLocation(Handle, CSIDL_DESKTOP, pidl)) then
  begin
    if ShGetPathfromIDList(pidl, buf) then
      x_Path := buf;
    FreePIDL(pidl);
  end;

  Result := x_Path;

end;



procedure TMultiInvoiceForm.InvoiceExchRateMaster1Click(Sender: TObject);
begin

  InvExchangeRateForm_Level := _MultiInvoiceForm_Level;

  If InvExchangeRateForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if InvExchangeRateForm = nil then
    Application.CreateForm(TInvExchangeRateForm, InvExchangeRateForm);

end;

procedure TMultiInvoiceForm.GSTR1ExcelForOffice1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_row, x_Months_id, x_YearRef : integer;
  x_Path, x_FileName, x_Cell, x_InvSuffix : string;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\BackOffice_Rpt\GSTR1_FullData';

  x_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  x_YearRef := YearOf(StrToDate(FromDateEdit.Text));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MonthShortName FROM Months WHERE Months_id = ' + IntToStr(x_Months_id);
  GpSds.Open;
  if (not GpSds.Eof) and (GpSds['MonthShortName'] <> null) then
    x_FileName := x_FileName + '_' + GpSds['MonthShortName'] + '_' + IntToStr(x_YearRef);
  x_FileName := x_FileName + '.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '1';
  GpSds.Open;

  scExcelExport1.CloseAllExcelApps;

  scExcelExport1.ExcelVisible := True;
  scExcelExport1.LoadDefaultProperties;

  scExcelExport1.Filename := ExtractFilePath(Application.ExeName) + 'Excel\GSTR1_FullData_Template.xlsx';

  scExcelExport1.WorksheetName := 'GSTR1';

  scExcelExport1.ConnectTo := ctNewExcel;
  scExcelExport1.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['Division'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Division'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['GstDocType'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['GstDocType'];

    x_InvSuffix := '';
    if GpSds['InvSuffix'] <> null then
      x_InvSuffix := GpSds['InvSuffix'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['InvoiceNo'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := IntToStr(GpSds['InvoiceNo']) + x_InvSuffix;

    x_Cell := NextColumn(x_Cell);
    if GpSds['InvoiceDate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['InvoiceDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Organisation'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Organisation'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CurrencyCode'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CurrencyCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CurrTotalInvoiceAmount'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CurrTotalInvoiceAmount'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ExchRate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ExchRate'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TotalInvoiceAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TotalInvoiceAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxPercentage'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxPercentage'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxableAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ForInvoiceNo'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ForInvoiceNo'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ForInvoiceDate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['ForInvoiceDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['CrDbReason'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CrDbReason'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['PlaceOfSupply'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PlaceOfSupply'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['I_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['C_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['S_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['SacCode'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['SacCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['GstinRecipient'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['GstinRecipient'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport1.ExcelWorkSheet.Range['B'+IntToStr(x_StartRow),'B'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'G'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_StartRow),'Q'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_StartRow),'R'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_StartRow),'S'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=SUM(Q' + IntToStr(x_StartRow) + ':Q' + IntToStr(x_row-1) + ')';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=SUM(R' + IntToStr(x_StartRow) + ':R' + IntToStr(x_row-1) + ')';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=SUM(S' + IntToStr(x_StartRow) + ':S' + IntToStr(x_row-1) + ')';

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'U'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'U'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'U'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  AddAdvances (scExcelExport1, x_row);
  AddAdvancesAdj (scExcelExport1, x_row);
  AddGstr3B (scExcelExport1, x_row);
  AddGstr1 (scExcelExport1, x_row);
  AddHsn (scExcelExport1, x_row);

  scExcelExport1.SaveAs(x_FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  ShowMessage('Saved as ' + x_FileName);

end;

procedure TMultiInvoiceForm.AddAdvances (scExcelExport1: TscExcelExport; var x_row: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow: integer;
  x_Cell: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_GstAdvances] ' +
      IntToStr(MonthOf(StrToDate(FromDateEdit.Text))) + ',' +
      IntToStr(YearOf(StrToDate(FromDateEdit.Text)));
  GpSds.Open;

  x_row := x_row + 5;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Advances';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;
  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Accounts_id';
  scExcelExport1.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Date';
  scExcelExport1.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Customer';
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Currency';
  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Forex';
  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Exch Rate';
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Advance Recd.';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := 'Rate (%)';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Taxable Value';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Tax';
  scExcelExport1.ExcelWorkSheet.Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := 'Place Of Supply';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := 'I_GST';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := 'C_GST';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := 'S_GST';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'L'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'S'+IntToStr(x_row)].HorizontalAlignment := xlRight;

  x_row := x_row + 1;
  x_StartRow := x_row;

  while not GpSds.EOF do
  begin

    x_Cell := 'C';
    if GpSds['Accounts_id'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Accounts_id'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransactionDate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['TransactionDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Party'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Party'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CurrencyCode'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CurrencyCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Forex'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Forex'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ExchRate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ExchRate'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['AdvAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['AdvAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Rate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Rate'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxableValue'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableValue'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Tax'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Tax'];

    x_Cell := 'P';
    if GpSds['PlaceOfSupply'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PlaceOfSupply'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['I_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['C_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['S_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_StartRow),'G'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_StartRow),'Q'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_StartRow),'R'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_StartRow),'S'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  if ((x_row-1) >= x_StartRow) then
    begin
      scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=SUM(Q' + IntToStr(x_StartRow) + ':Q' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=SUM(R' + IntToStr(x_StartRow) + ':R' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=SUM(S' + IntToStr(x_StartRow) + ':S' + IntToStr(x_row-1) + ')';
    end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;


  GpSds.Free;
end;

procedure TMultiInvoiceForm.AddAdvancesAdj (scExcelExport1: TscExcelExport; var x_row: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow: integer;
  x_Cell: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_GstAdvancesAdj] ' +
      IntToStr(MonthOf(StrToDate(FromDateEdit.Text))) + ',' +
      IntToStr(YearOf(StrToDate(FromDateEdit.Text)));
  GpSds.Open;

  x_row := x_row + 5;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Advance Adjustment';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;
  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Accounts_id';
  scExcelExport1.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Adj. Date';
  scExcelExport1.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Customer';
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Currency';
  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'Recd. Period';
  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '';
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Adj Amt';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := 'Rate (%)';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Taxable Value';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Tax';
  scExcelExport1.ExcelWorkSheet.Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := 'Place Of Supply';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := 'I_GST';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := 'C_GST';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := 'S_GST';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'L'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'S'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

  x_row := x_row + 1;
  x_StartRow := x_row;

  while not GpSds.EOF do
  begin

    x_Cell := 'C';
    if GpSds['Accounts_id'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Accounts_id'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['AdjDate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['AdjDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Party'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Party'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CurrencyCode'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CurrencyCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['RecdPeriod'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['RecdPeriod'];

    x_Cell := NextColumn(x_Cell);

    x_Cell := NextColumn(x_Cell);
    if GpSds['AdjAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['AdjAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Rate'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Rate'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxableValue'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableValue'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Tax'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Tax'];

    x_Cell := 'P';
    if GpSds['PlaceOfSupply'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PlaceOfSupply'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['I_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['C_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['S_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_StartRow),'Q'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_StartRow),'R'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_StartRow),'S'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  if ((x_row-1) >= x_StartRow) then
    begin
      scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=SUM(Q' + IntToStr(x_StartRow) + ':Q' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=SUM(R' + IntToStr(x_StartRow) + ':R' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=SUM(S' + IntToStr(x_StartRow) + ':S' + IntToStr(x_row-1) + ')';
    end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  GpSds.Free;
end;


procedure TMultiInvoiceForm.AddGstr3B (scExcelExport1: TscExcelExport; var x_row: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow: integer;
  x_Cell: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '6';
  GpSds.Open;

  x_row := x_row + 5;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GSTR 3B';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Total Invoice Amt';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Taxable Value';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Tax';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := 'I_GST';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := 'C_GST';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := 'S_GST';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'L'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'S'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

  x_row := x_row + 1;
  x_StartRow := x_row;

  while not GpSds.EOF do
  begin

    x_Cell := 'I';
    if GpSds['TotalInvoiceAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TotalInvoiceAmt'];

    x_Cell := NextColumn(x_Cell);
    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxableAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxAmt'];

    x_Cell := 'Q';
    if GpSds['I_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['C_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['S_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_StartRow),'Q'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_StartRow),'R'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_StartRow),'S'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  if ((x_row-1) >= x_StartRow) then
    begin
      scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=SUM(Q' + IntToStr(x_StartRow) + ':Q' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=SUM(R' + IntToStr(x_StartRow) + ':R' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=SUM(S' + IntToStr(x_StartRow) + ':S' + IntToStr(x_row-1) + ')';
    end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  GpSds.Free;
end;

procedure TMultiInvoiceForm.AddGstr1 (scExcelExport1: TscExcelExport; var x_row: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow: integer;
  x_Cell: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '7';
  GpSds.Open;

  x_row := x_row + 5;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'GSTR 1';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Total Invoice Amt';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Taxable Value';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Tax';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := 'I_GST';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := 'C_GST';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := 'S_GST';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'L'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'S'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

  x_row := x_row + 1;
  x_StartRow := x_row;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['GstDocType'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['GstDocType'];

    x_Cell := 'I';
    if GpSds['TotalInvoiceAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TotalInvoiceAmt'];

    x_Cell := NextColumn(x_Cell);
    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxableAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxAmt'];

    x_Cell := 'Q';
    if GpSds['I_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['C_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['S_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_StartRow),'Q'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_StartRow),'R'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_StartRow),'S'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  if ((x_row-1) >= x_StartRow) then
    begin
      scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=SUM(Q' + IntToStr(x_StartRow) + ':Q' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=SUM(R' + IntToStr(x_StartRow) + ':R' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=SUM(S' + IntToStr(x_StartRow) + ':S' + IntToStr(x_row-1) + ')';
    end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  GpSds.Free;
end;

procedure TMultiInvoiceForm.AddHsn (scExcelExport1: TscExcelExport; var x_row: integer);
var
  GpSds: TSQLDataSet;
  x_StartRow: integer;
  x_Cell: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '8';
  GpSds.Open;

  x_row := x_row + 5;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'HSN';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  x_row := x_row + 1;
  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Total Invoice Amt';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Taxable Value';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := 'Tax';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := 'I_GST';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := 'C_GST';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := 'S_GST';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Interior.Color := $00CCFFCC;

  scExcelExport1.ExcelWorkSheet.Range['H'+IntToStr(x_row),'I'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'L'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'S'+IntToStr(x_row)].HorizontalAlignment := xlRight;
  scExcelExport1.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].HorizontalAlignment := xlLeft;

  x_row := x_row + 1;
  x_StartRow := x_row;

  while not GpSds.EOF do
  begin

    x_Cell := 'I';
    if GpSds['TotalInvoiceAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TotalInvoiceAmt'];

    x_Cell := NextColumn(x_Cell);
    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxableAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableAmt'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TaxAmt'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxAmt'];

    x_Cell := 'Q';
    if GpSds['I_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['C_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['S_GST'] <> null then
      scExcelExport1.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Size := '10';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'H'+IntToStr(x_row)].Font.Name := 'Book Antiqua';

  scExcelExport1.ExcelWorkSheet.Range['C'+IntToStr(x_StartRow),'C'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['F'+IntToStr(x_StartRow),'F'+IntToStr(x_row)].HorizontalAlignment := xlCenter;
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].HorizontalAlignment := xlCenter;

  scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_StartRow),'I'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['J'+IntToStr(x_StartRow),'J'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_StartRow),'K'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_StartRow),'L'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_StartRow),'Q'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_StartRow),'R'+IntToStr(x_row)].NumberFormat := '#,##0.00';
  scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_StartRow),'S'+IntToStr(x_row)].NumberFormat := '#,##0.00';

  if ((x_row-1) >= x_StartRow) then
    begin
      scExcelExport1.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=SUM(L' + IntToStr(x_StartRow) + ':L' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=SUM(Q' + IntToStr(x_StartRow) + ':Q' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=SUM(R' + IntToStr(x_StartRow) + ':R' + IntToStr(x_row-1) + ')';
      scExcelExport1.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=SUM(S' + IntToStr(x_StartRow) + ':S' + IntToStr(x_row-1) + ')';
    end;

  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport1.ExcelWorkSheet.Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  GpSds.Free;
end;


procedure TMultiInvoiceForm.SetExchangeRateinInvoices1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  if MessageDlg('This will set the exchange rates from the master into the invoices for this period. Are you sure? ', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GPSds.Close;
  GPSds.CommandText := 'EXEC [p_SetInvExchRate] ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''',' +
    IntToStr(g_companies_id) + ', 0';
  GPSds.ExecSQL;

  GPSds.Free;

  ShowMessage('done');

end;

procedure TMultiInvoiceForm.EnterAcHeadsforPrincipalAgents1Click(
  Sender: TObject);
begin

  PrinAgentAcHeadsForm_Level := 4;

  if PrinAgentAcHeadsForm = nil then
    Application.CreateForm(TPrinAgentAcHeadsForm, PrinAgentAcHeadsForm);

end;

procedure TMultiInvoiceForm.CreateAccountingEntries1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  if MessageDlg('Are you sure you want to generate the accounting entries for the above invoices ?', mtInformation,
    [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GPSds.Close;
  GPSds.CommandText := 'EXEC [p_CreateAccountTrsFromInv] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
        IntToStr(g_companies_id) + ',0,2,1';
  GPSds.ExecSQL;

  GPSds.Free;

  ShowMessage ('Done');


end;

procedure TMultiInvoiceForm.GSTR1Export1Click(Sender: TObject);
var
  x_Path, x_FileName1, x_FileName2, x_FileName3, x_FileName4, x_FileName5, x_FileName6, x_FileName7, x_FileName8, x_FileName9, x_FileName10, x_str : string;
  x_InvSuffix: string;
  f1, f2, f3, f4, f5, f6, f7, f8, f9, f10: textFile;
  GpSds, Gp2Sds, Gp3Sds, Gp4Sds, Gp5Sds, Gp6Sds: TSQLDataSet;
begin

  x_Path := GetDesktopPath(nil);
  x_FileName1 := x_Path + '\BackOffice_Rpt\GSTR1_Exp.csv';
  x_FileName2 := x_Path + '\BackOffice_Rpt\GSTR1_B2CL.csv';
  x_FileName3 := x_Path + '\BackOffice_Rpt\GSTR1_B2CS.csv';
  x_FileName4 := x_Path + '\BackOffice_Rpt\GSTR1_Cdnur.csv';
  x_FileName5 := x_Path + '\BackOffice_Rpt\GSTR1_Hsn.csv';
  x_FileName6 := x_Path + '\BackOffice_Rpt\GSTR1_B2B.csv';
  x_FileName7 := x_Path + '\BackOffice_Rpt\GSTR1_At.csv';
  x_FileName8 := x_Path + '\BackOffice_Rpt\GSTR1_AtAdj.csv';
  x_FileName9 := x_Path + '\BackOffice_Rpt\GSTR1_B2CL_exp.csv';
  x_FileName10 := x_Path + '\BackOffice_Rpt\GSTR1_B2CS_exp.csv';

  AssignFile(f1, x_FileName1);
  ReWrite(f1);

  AssignFile(f2, x_FileName2);
  ReWrite(f2);

  AssignFile(f3, x_FileName3);
  ReWrite(f3);

  AssignFile(f4, x_FileName4);
  ReWrite(f4);

  AssignFile(f5, x_FileName5);
  ReWrite(f5);

  AssignFile(f6, x_FileName6);
  ReWrite(f6);

  AssignFile(f7, x_FileName7);
  ReWrite(f7);

  AssignFile(f8, x_FileName8);
  ReWrite(f8);

  AssignFile(f9, x_FileName9);
  ReWrite(f9);

  AssignFile(f10, x_FileName10);
  ReWrite(f10);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '1';
  GpSds.Open;

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp2Sds.Close;
  Gp2Sds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '2';
  Gp2Sds.Open;

  Gp3Sds := TSQLDataSet.Create(nil);
  Gp3Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp3Sds.Close;
  Gp3Sds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '3';
  Gp3Sds.Open;

  Gp4Sds := TSQLDataSet.Create(nil);
  Gp4Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp4Sds.Close;
  Gp4Sds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '4';
  Gp4Sds.Open;

  Gp5Sds := TSQLDataSet.Create(nil);
  Gp5Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp5Sds.Close;
  Gp5Sds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '5';
  Gp5Sds.Open;

  Gp6Sds := TSQLDataSet.Create(nil);
  Gp6Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp6Sds.Close;
  Gp6Sds.CommandText := 'exec [p_Gstr1_AllDiv] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text))) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text))) + ',' +
      IntToStr(g_companies_id) + ',' +
      '20';
  Gp6Sds.Open;

  WriteLn(f1,'Export Type,Invoice Number,Invoice date,Invoice Value,Port Code,Shipping Bill Number,Shipping Bill Date,Rate,Applicable % of Tax Rate,Taxable Value,Cess Amount');
  WriteLn(f2,'Invoice Number,Invoice date,Invoice Value,Place Of Supply,Rate,Applicable % of Tax Rate,Taxable Value,Cess Amount,E-Commerce GSTIN,Sale from Bonded WH');
  WriteLn(f3,'Type,Place Of Supply,Rate,Taxable Value,Cess Amount,E-Commerce GSTIN');
  WriteLn(f4,'UR Type,Note/Refund Voucher Number,Note/Refund Voucher date,Document Type,Invoice/Advance Receipt Number,' + 'Invoice/Advance Receipt date,Reason For Issuing document,Place Of Supply,Note/Refund Voucher Value,Rate,Taxable Value,Cess Amount,Pre GST');
  WriteLn(f5,'HSN,Description,UQC,Total Quantity,Total Value,Taxable Value,Integrated Tax Amount,Central Tax Amount,State/UT Tax Amount,Cess Amount');
  WriteLn(f6,'GSTIN/UIN of Recipient,Invoice Number,Invoice date,Invoice Value,Place Of Supply,Reverse Charge,Invoice Type,E-Commerce GSTIN,Rate,Taxable Value,Cess Amount');
  WriteLn(f7,'Place Of Supply,Rate,Applicable % of Tax Rate,Gross Advance Received,Cess Amount');
  WriteLn(f8,'Place Of Supply,Rate,Gross Advance Adjusted,Cess Amount');
  WriteLn(f9,'Invoice Number,Invoice date,Invoice Value,Place Of Supply,Rate,Applicable % of Tax Rate,Taxable Value,Cess Amount,E-Commerce GSTIN,Sale from Bonded WH');
  WriteLn(f10,'Type,Place Of Supply,Rate,Taxable Value,Cess Amount,E-Commerce GSTIN');

  while not GpSds.EOF do
    begin

      if (GpSds['GstDocType'] = 'EXP') then
        begin

          x_str := '';

          x_str := x_str + 'WPAY,';

          x_InvSuffix := '';

          if GpSds['InvSuffix'] <> null then
            x_InvSuffix := GpSds['InvSuffix'];

          if GpSds['InvoiceNo'] <> null then
            x_str := x_str + IntToStr(GpSds['InvoiceNo']) + x_InvSuffix + ',';

          if GpSds['InvoiceDate'] <> null then
            x_str := x_str + FormatDateTime('dd-mmm-yy',GpSds['InvoiceDate']) + ',';

          if GpSds['TotalInvoiceAmt'] <> null then
            x_str := x_str + FloatToStr(GpSds['TotalInvoiceAmt']) + ',,,,';

          if GpSds['TaxPercentage'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxPercentage']) + ',,';

          if GpSds['TaxableAmt'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxableAmt']) + ',';;

          WriteLn(f1,x_str);

        end
      else if ((GpSds['GstDocType'] = 'B2CL') or (GpSds['GstDocType'] = 'EXP_L')) then
        begin

          x_str := '';

          x_InvSuffix := '';

          if GpSds['InvSuffix'] <> null then
            x_InvSuffix := GpSds['InvSuffix'];

          if GpSds['InvoiceNo'] <> null then
            x_str := x_str + IntToStr(GpSds['InvoiceNo']) + x_InvSuffix + ',';

          if GpSds['InvoiceDate'] <> null then
            x_str := x_str + FormatDateTime('dd-mmm-yy',GpSds['InvoiceDate']) + ',';

          if GpSds['TotalInvoiceAmt'] <> null then
            x_str := x_str + FloatToStr(GpSds['TotalInvoiceAmt']) + ',';

          if GpSds['PlaceOfSupply'] <> null then
            x_str := x_str + GpSds['PlaceOfSupply'] + ',';

          if GpSds['TaxPercentage'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxPercentage']) + ',,';

          if GpSds['TaxableAmt'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxableAmt']) + ',,,N';

          WriteLn(f2,x_str);

        end

      else if (GpSds['GstDocType'] = 'CDNUR') then
        begin

          x_str := '';

          x_str := x_str + 'EXPWP,';

          x_InvSuffix := '';

          if GpSds['InvSuffix'] <> null then
            x_InvSuffix := GpSds['InvSuffix'];

          if GpSds['InvoiceNo'] <> null then
            x_str := x_str + IntToStr(GpSds['InvoiceNo']) + x_InvSuffix + ',';

          if GpSds['InvoiceDate'] <> null then
            x_str := x_str + FormatDateTime('dd-mmm-yy',GpSds['InvoiceDate']) + ',C,';

          if GpSds['ForInvoiceNo'] <> null then
            x_str := x_str + IntToStr(GpSds['ForInvoiceNo']) + ',';

          if GpSds['ForInvoiceDate'] <> null then
            x_str := x_str + FormatDateTime('dd-mmm-yy',GpSds['ForInvoiceDate']) + ',';

          if GpSds['CrDbReason'] <> null then
            x_str := x_str + GpSds['CrDbReason'] + ',,';

          if GpSds['TotalInvoiceAmt'] <> null then
            x_str := x_str + FloatToStr(-1.0*GpSds['TotalInvoiceAmt']) + ',';

          if GpSds['TaxPercentage'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxPercentage']) + ',';

          if GpSds['TaxableAmt'] <> null then
            x_str := x_str + FloatToStr(-1.0*GpSds['TaxableAmt']) + ',,N';

          WriteLn(f4,x_str);

        end

      else if (GpSds['GstDocType'] = 'B2B') then
        begin

          x_str := '';

          if GpSds['GstinRecipient'] <> null then
            x_str := x_str + GpSds['GstinRecipient'] + ',';

          x_InvSuffix := '';

          if GpSds['InvSuffix'] <> null then
            x_InvSuffix := GpSds['InvSuffix'];

          if GpSds['InvoiceNo'] <> null then
            x_str := x_str + IntToStr(GpSds['InvoiceNo']) + x_InvSuffix + ',';

          if GpSds['InvoiceDate'] <> null then
            x_str := x_str + FormatDateTime('dd-mmm-yy',GpSds['InvoiceDate']) + ',';

          if GpSds['TotalInvoiceAmt'] <> null then
            x_str := x_str + FloatToStr(GpSds['TotalInvoiceAmt']) + ',';

          if GpSds['PlaceOfSupply'] <> null then
            x_str := x_str + GpSds['PlaceOfSupply'] + ',';

          if GpSds['TaxPayableRcm'] <> null then
            x_str := x_str + GpSds['TaxPayableRcm'] + ',Regular,,';

          if GpSds['TaxPercentage'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxPercentage']) + ',';

          if GpSds['TaxableAmt'] <> null then
            x_str := x_str + FloatToStr(GpSds['TaxableAmt']) + ',';

          WriteLn(f6,x_str);

        end;

      GpSds.Next;

    end;


  // B2CS
  while not Gp2Sds.EOF do
    begin

      x_str := '';

      x_str := x_str + 'OE,';

      if Gp2Sds['PlaceOfSupply'] <> null then
        x_str := x_str + Gp2Sds['PlaceOfSupply'] + ',';

      if Gp2Sds['TaxPercentage'] <> null then
        x_str := x_str + FloatToStr(Gp2Sds['TaxPercentage']) + ',';

      if Gp2Sds['TaxableAmt'] <> null then
        x_str := x_str + FloatToStr(Gp2Sds['TaxableAmt']) + ',,';

      WriteLn(f3,x_str);

      Gp2Sds.Next;

    end;

  // B2CL/S exp
  while not Gp6Sds.EOF do
    begin

      x_str := '';

      if (Gp6Sds['GstDocType'] = 'EXP_S') then
        begin

        x_str := x_str + 'OE,';

        if Gp6Sds['PlaceOfSupply'] <> null then
          x_str := x_str + Gp6Sds['PlaceOfSupply'] + ',';

        if Gp6Sds['TaxPercentage'] <> null then
          x_str := x_str + FloatToStr(Gp6Sds['TaxPercentage']) + ',';

        if Gp6Sds['TaxableAmt'] <> null then
          x_str := x_str + FloatToStr(Gp6Sds['TaxableAmt']) + ',,';

          WriteLn(f10,x_str);

        end

      else if (Gp6Sds['GstDocType'] = 'EXP_L') then
        begin

          x_InvSuffix := '';

          if Gp6Sds['InvSuffix'] <> null then
            x_InvSuffix := Gp6Sds['InvSuffix'];

          if Gp6Sds['InvoiceNo'] <> null then
            x_str := x_str + IntToStr(Gp6Sds['InvoiceNo']) + x_InvSuffix + ',';

          if Gp6Sds['InvoiceDate'] <> null then
            x_str := x_str + FormatDateTime('dd-mmm-yy',Gp6Sds['InvoiceDate']) + ',';

          if Gp6Sds['TotalInvoiceAmt'] <> null then
            x_str := x_str + FloatToStr(Gp6Sds['TotalInvoiceAmt']) + ',';

          if Gp6Sds['PlaceOfSupply'] <> null then
            x_str := x_str + Gp6Sds['PlaceOfSupply'] + ',';

          if Gp6Sds['TaxPercentage'] <> null then
            x_str := x_str + FloatToStr(Gp6Sds['TaxPercentage']) + ',,';

          if Gp6Sds['TaxableAmt'] <> null then
            x_str := x_str + FloatToStr(Gp6Sds['TaxableAmt']) + ',,,N';

          WriteLn(f9,x_str);

        end;

      Gp6Sds.Next;

    end;


  // HSN
  while not Gp3Sds.EOF do
    begin

      x_str := '';

      if Gp3Sds['SacCode'] <> null then
        x_str := x_str + Gp3Sds['SacCode'] + ',';

      if Gp3Sds['SacDesc'] <> null then
        x_str := x_str + Gp3Sds['SacDesc'] + ',';

      if Gp3Sds['Uqc'] <> null then
        x_str := x_str + Gp3Sds['Uqc'] + ',';

      if Gp3Sds['x_count'] <> null then
        x_str := x_str + IntToStr(Gp3Sds['x_count']) + ',';

      if Gp3Sds['TotalInvoiceAmt'] <> null then
        x_str := x_str + FloatToStr(Gp3Sds['TotalInvoiceAmt']) + ',';

      if Gp3Sds['TaxableAmt'] <> null then
        x_str := x_str + FloatToStr(Gp3Sds['TaxableAmt']) + ',';

      if Gp3Sds['I_GST'] <> null then
        x_str := x_str + FloatToStr(Gp3Sds['I_GST']) + ','
      else
        x_str := x_str + '0,';

      if Gp3Sds['C_GST'] <> null then
        x_str := x_str + FloatToStr(Gp3Sds['C_GST']) + ','
      else
        x_str := x_str + '0,';

      if Gp3Sds['S_GST'] <> null then
        x_str := x_str + FloatToStr(Gp3Sds['S_GST']) + ','
      else
        x_str := x_str + '0,';

      WriteLn(f5,x_str);

      Gp3Sds.Next;

    end;

  // Advances
  while not Gp4Sds.EOF do
    begin

      x_str := '';

      if Gp4Sds['PlaceOfSupply'] <> null then
        x_str := x_str + Gp4Sds['PlaceOfSupply'] + ',';

      if Gp4Sds['Rate'] <> null then
        x_str := x_str + FloatToStr(Gp4Sds['Rate']) + ',,';

      if Gp4Sds['AdvAmt'] <> null then
        x_str := x_str + FloatToStr(Gp4Sds['AdvAmt']) + ',';

      WriteLn(f7,x_str);

      Gp4Sds.Next;

    end;

  // Advance Adj
  while not Gp5Sds.EOF do
    begin

      x_str := '';

      if Gp5Sds['PlaceOfSupply'] <> null then
        x_str := x_str + Gp5Sds['PlaceOfSupply'] + ',';

      if Gp5Sds['Rate'] <> null then
        x_str := x_str + FloatToStr(Gp5Sds['Rate']) + ',';

      if Gp5Sds['AdjAmt'] <> null then
        x_str := x_str + FloatToStr(Gp5Sds['AdjAmt']) + ',';

      WriteLn(f8,x_str);

      Gp5Sds.Next;

    end;


  GpSds.Free;
  Gp2Sds.Free;
  Gp3Sds.Free;
  Gp4Sds.Free;
  Gp5Sds.Free;
  Gp6Sds.Free;

  CloseFile(f1);
  CloseFile(f2);
  CloseFile(f3);
  CloseFile(f4);
  CloseFile(f5);
  CloseFile(f6);
  CloseFile(f7);
  CloseFile(f8);
  CloseFile(f9);
  CloseFile(f10);

  ShowMessage ('CSV files saved in ' + x_Path + '\BackOffice_Rpt directory');

end;

procedure TMultiInvoiceForm.EnterAdvances1Click(Sender: TObject);
begin

{
  GstAdvancesForm_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  GstAdvancesForm_Year := YearOf(StrToDate(FromDateEdit.Text));

  GstAdvancesForm_Level := _MultiInvoiceForm_Level;

  If GstAdvancesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if GstAdvancesForm = nil then
    Application.CreateForm(TGstAdvancesForm, GstAdvancesForm);
}

  GstAdvAdjForm_Months_id := MonthOf(StrToDate(FromDateEdit.Text));
  GstAdvAdjForm_Year := YearOf(StrToDate(FromDateEdit.Text));

  GstAdvAdjForm_Level := _MultiInvoiceForm_Level;

  If GstAdvAdjForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if GstAdvAdjForm = nil then
    Application.CreateForm(TGstAdvAdjForm, GstAdvAdjForm);

end;

procedure TMultiInvoiceForm.SaveAllasExcelDept1Click(Sender: TObject);
begin

  TourGstDeptInvoice(2);

end;

end.
