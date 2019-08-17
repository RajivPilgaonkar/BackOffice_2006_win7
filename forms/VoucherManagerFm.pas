unit VoucherManagerFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ComCtrls, StdCtrls,
  cxButtons, Mask, ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxContainer, Menus, cxLabel, cxTimeEdit, DateUtils,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox;

type
  TVoucherManagerForm = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    FromDateEdit: TMaskEdit;
    ToDateEdit: TMaskEdit;
    cxDisplayButton: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    Progbar: TProgressBar;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    InvoiceGrid: TcxGrid;
    InvoiceGridDBTableView1: TcxGridDBTableView;
    InvoiceGridDBTableView1MasterCode: TcxGridDBColumn;
    InvoiceGridDBTableView1MasterDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1NumPax: TcxGridDBColumn;
    InvoiceGridDBTableView1NumCancelled: TcxGridDBColumn;
    InvoiceGridDBTableView1Fit: TcxGridDBColumn;
    InvoiceGridLevel1: TcxGridLevel;
    cxMasterCategoriesCkb: TcxCheckBox;
    MasterCategoriesLabel: TLabel;
    cxMasterCategoryLCMB: TcxLookupComboBox;
    MasterCategoriesSds: TSQLDataSet;
    MasterCategoriesDsp: TDataSetProvider;
    MasterCategoriesCds: TClientDataSet;
    MasterCategoriesDS: TDataSource;
    cxFitCkb: TcxCheckBox;
    Label3: TLabel;
    MasterTourSds: TSQLDataSet;
    MasterTourDsp: TDataSetProvider;
    MasterTourCds: TClientDataSet;
    MasterTourDS: TDataSource;
    MasterTourCdsMasters_id: TIntegerField;
    MasterTourCdsMasterCode: TStringField;
    MasterTourCdsMasterDepDate: TSQLTimeStampField;
    MasterTourCdsNumPax: TIntegerField;
    MasterTourCdsNumCancelled: TIntegerField;
    MasterTourCdsFIT: TBooleanField;
    MasterTourCdsStatus: TIntegerField;
    MasterTourCdsItineraries_id: TIntegerField;
    MasterTourCdsItineraryCreated: TStringField;
    MasterTourCdsNumVouchers: TIntegerField;
    MasterTourCdsNumManualVouchers: TIntegerField;
    InvoiceGridDBTableView1itineraryCreated: TcxGridDBColumn;
    InvoiceGridDBTableView1NumVouchers: TcxGridDBColumn;
    InvoiceGridDBTableView1NumManualVouchers: TcxGridDBColumn;
    PreprocessPopupMenu: TPopupMenu;
    DeleteItinerary1: TMenuItem;
    N1: TMenuItem;
    CreateItinerary1: TMenuItem;
    N2: TMenuItem;
    CheckDataConsistency1: TMenuItem;
    N3: TMenuItem;
    CountPax1: TMenuItem;
    CountVehicles1: TMenuItem;
    GenerateRoomingList1: TMenuItem;
    ViewPopupMenu: TPopupMenu;
    RoomingList1: TMenuItem;
    N5: TMenuItem;
    PaxList1: TMenuItem;
    N6: TMenuItem;
    Itinerary1: TMenuItem;
    N7: TMenuItem;
    Vouchers1: TMenuItem;
    MasterTourCdsMasterCategory: TStringField;
    MasterCategoriesCdsMasterCategories_id: TIntegerField;
    MasterCategoriesCdsMasterCategory: TStringField;
    ProcessPopupMenu: TPopupMenu;
    GenerateVouchers1: TMenuItem;
    N8: TMenuItem;
    DeleteVouchers1: TMenuItem;
    cxButton4: TcxButton;
    ReportsPopup: TPopupMenu;
    Itineraries1: TMenuItem;
    N9: TMenuItem;
    Vouchers2: TMenuItem;
    VouchersForCurrentTour1: TMenuItem;
    VouchersinDateRange1: TMenuItem;
    N10: TMenuItem;
    SingleVoucher1: TMenuItem;
    ourItinerary1: TMenuItem;
    RoomingList2: TMenuItem;
    NameList1: TMenuItem;
    LocalPayment1: TMenuItem;
    SitList1: TMenuItem;
    SingleVouchersinRangeforCurrentTour1: TMenuItem;
    SetLeadPax1: TMenuItem;
    cxBookingCkb: TcxCheckBox;
    Label4: TLabel;
    N4: TMenuItem;
    GenerateExpectedCost1: TMenuItem;
    UpdateBookingDetails1: TMenuItem;
    MasterTourCdsTourNo: TIntegerField;
    InvoiceGridDBTableView1TourNo: TcxGridDBColumn;
    Panel4: TPanel;
    GroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1tourcodes_id: TcxGridDBColumn;
    cxGrid2DBTableView1TourCode: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    TourCalCds: TClientDataSet;
    TourCalDS: TDataSource;
    TourCalDsp: TDataSetProvider;
    TourCalSds: TSQLDataSet;
    TourCalCdstourcodes_id: TIntegerField;
    TourCalCdstourcode: TStringField;
    TourCalCdstourdate: TSQLTimeStampField;
    TourCalCdsTourDepartureDates_id: TIntegerField;
    TourCalCdsMasterCode: TStringField;
    TourCalCdsMasterDepDate: TSQLTimeStampField;
    cxGrid2DBTableView1TourDate: TcxGridDBColumn;
    N11: TMenuItem;
    Performallabovesteps1: TMenuItem;
    cxButton8: TcxButton;
    SingleVoucherforCurrentTourwithoutimages1: TMenuItem;
    cxButton9: TcxButton;
    MasterTourCdsSendMail: TBooleanField;
    InvoiceGridDBTableView1SendMail: TcxGridDBColumn;
    MasterTourCdsTourDepDate: TSQLTimeStampField;
    MasterTourCdsQuoDepDate: TSQLTimeStampField;
    MasterTourCdsQuoModDepDate: TSQLTimeStampField;
    MasterTourCdsQuoArrivalDate: TSQLTimeStampField;
    InvoiceGridDBTableView1QuoDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1QuoModDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1TourDepDate: TcxGridDBColumn;
    InvoiceGridDBTableView1QuoArrivalDate: TcxGridDBColumn;
    N12: TMenuItem;
    CompareCosts1: TMenuItem;
    MasterTourCdsIssuedBy: TStringField;
    MasterTourCdsQuo_ExpCost: TFMTBCDField;
    MasterTourCdsVou_ExpCost: TFMTBCDField;
    InvoiceGridDBTableView1IssuedBy: TcxGridDBColumn;
    InvoiceGridDBTableView1Quo_ExpCost: TcxGridDBColumn;
    InvoiceGridDBTableView1Vou_ExpCost: TcxGridDBColumn;
    N13: TMenuItem;
    NewVouchers1: TMenuItem;
    MasterTourCdsCancelledOn: TSQLTimeStampField;
    InvoiceGridDBTableView1CancelledOn: TcxGridDBColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleDarkRed: TcxStyle;
    N14: TMenuItem;
    VouchersForCurrentTour2perpg1: TMenuItem;
    VouchersinRangeforCurrentTour2perpg1: TMenuItem;
    procedure cxDisplayButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FromDateEditExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FilterItineraries;
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure DeleteItinerary1Click(Sender: TObject);
    function IsVoucherCreated(x_MasterTourCode:string; x_MasterDepDate: TDateTime; x_option: integer): Boolean;
    procedure CreateItinerary1Click(Sender: TObject);
    procedure CountPax1Click(Sender: TObject);
    procedure CountVehicles1Click(Sender: TObject);
    procedure GenerateRoomingList1Click(Sender: TObject);
    procedure RoomingList1Click(Sender: TObject);
    procedure PaxList1Click(Sender: TObject);
    procedure Itinerary1Click(Sender: TObject);
    procedure cxFitCkbClick(Sender: TObject);
    procedure cxMasterCategoriesCkbClick(Sender: TObject);
    procedure cxMasterCategoryLCMBPropertiesEditValueChanged(
      Sender: TObject);
    procedure GenerateVouchers1Click(Sender: TObject);
    procedure DeleteVouchers1Click(Sender: TObject);
    procedure Vouchers1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ourItinerary1Click(Sender: TObject);
    procedure RoomingList2Click(Sender: TObject);
    procedure NameList1Click(Sender: TObject);
    procedure SitList1Click(Sender: TObject);
    procedure VouchersForCurrentTour1Click(Sender: TObject);
    procedure VouchersinDateRange1Click(Sender: TObject);
    procedure SingleVoucher1Click(Sender: TObject);
    procedure LocalPayment1Click(Sender: TObject);
    procedure LpHeaderString;
    procedure SingleVouchersinRangeforCurrentTour1Click(Sender: TObject);
    procedure SetLeadPax1Click(Sender: TObject);
    procedure cxBookingCkbClick(Sender: TObject);
    procedure GenerateExpectedCost1Click(Sender: TObject);
    procedure UpdateBookingDetails1Click(Sender: TObject);
    procedure Performallabovesteps1Click(Sender: TObject);
    procedure UpdateBookingDetails(x_option: integer);
    procedure GenerateRoomingList(x_option: integer);
    procedure CountPax(x_option: integer);
    procedure CountVehicles(x_option: integer);
    procedure SetLeadPax(x_count: integer);
    function GetTLCount: integer;
    procedure cxButton8Click(Sender: TObject);
    procedure SingleVoucherforCurrentTourwithoutimages1Click(
      Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure CompareCosts1Click(Sender: TObject);
    procedure NewVouchers1Click(Sender: TObject);
    procedure InvoiceGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure VouchersForCurrentTour2perpg1Click(Sender: TObject);
    procedure VouchersinRangeforCurrentTour2perpg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VoucherManagerForm: TVoucherManagerForm;
  _VoucherManagerForm_Level: integer;

implementation

uses BackOfficeDM, RoomingListFm, BookingDetailsFm, ItineraryFm,
  TourLeaderFm, MainFm, VouBillFm, RptItineraryFm, RptItinRoomingListFm,
  RptItinNameListFm, ItinDepDatesFm, RptBookSitListFm, RptPrintVouchersFm,
  ReportParameterFm, GeneralUt, SearchSortFm, RpSitListFm, RptLpReportFm,
  RptSingleVoucherFm, VouSendMailFm, RptSingleVoucher3Fm, VouMailStatusFm,
  ExpCostCompareFm, VoucherFm, RptPrintVouchers_2_Fm;

{$R *.dfm}

procedure TVoucherManagerForm.FilterItineraries;
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

  MasterTourCds.Filter := '(1=1) ';

  if cxFitCkb.Checked then
    MasterTourCds.Filter := MasterTourCds.Filter + ' AND (FIT = True) ';
  //else
  //  MasterTourCds.Filter := MasterTourCds.Filter + ' AND (FIT = False) ';

  if cxMasterCategoriesCkb.Checked then
    MasterTourCds.Filter := MasterTourCds.Filter + ' AND (MasterCategory =  ''' +
      cxMasterCategoryLCMB.Text + ''') ';

  if cxBookingCkb.Checked then
    MasterTourCds.Filter := MasterTourCds.Filter + ' AND ((NumPax > 0) OR (NumCancelled > 0)) ';


  if trim(MasterTourCds.Filter)> '' then
    MasterTourCds.Filtered := True;

  MasterTourSds.Close;
  MasterTourSds.CommandText := 'EXEC p_GetMasterToursDateRange ''' +
    x_FromDate_str + ''',''' + x_ToDate_str + ''', 2 ';

  MasterTourCds.Close;
  MasterTourCds.Open;

end;


procedure TVoucherManagerForm.cxDisplayButtonClick(Sender: TObject);
begin
  FilterItineraries;
end;

procedure TVoucherManagerForm.FormDestroy(Sender: TObject);
begin
  VoucherManagerForm := nil;
end;

procedure TVoucherManagerForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TVoucherManagerForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
var
  x_Day : Word;
  x_DateStart, x_DateEnd: TDateTime;
  x_Add: integer;
begin

  x_Day := DayOfWeek(x_Date);

  x_Add := 7 + (7 - x_Day);

  if x_option = 1 then
    x_DateStart := x_Date + x_Add
  else
    x_DateStart := x_Date;

  x_DateEnd := x_DateStart + 6;

  if x_option = 1 then
    begin
      FromDateEdit.Text := FormatDateTime('dd/mm/yyyy',x_DateStart);
      ToDateEdit.Text := FormatDateTime('dd/mm/yyyy',x_DateEnd);
    end
  else if x_option = 2 then
    begin
      ToDateEdit.Text := FormatDateTime('dd/mm/yyyy',x_DateEnd);
    end;

end;


procedure TVoucherManagerForm.FormCreate(Sender: TObject);
begin

  VoucherManagerForm.Height := 650;
  VoucherManagerForm.Width := 1100;

  AutoDateRange (Date(),1);

  MasterCategoriesCds.Active := True;

  FilterItineraries;

  TourCalCds.Active := True;

end;

procedure TVoucherManagerForm.FromDateEditExit(Sender: TObject);
begin
  AutoDateRange (StrToDate(FromDateEdit.Text),2);
end;

procedure TVoucherManagerForm.cxButton1Click(Sender: TObject);
begin
  AutoDateRange (StrToDate(FromDateEdit.Text)-15,1);
end;

procedure TVoucherManagerForm.cxButton2Click(Sender: TObject);
begin
  AutoDateRange (StrToDate(FromDateEdit.Text)-4,1);
end;

procedure TVoucherManagerForm.DeleteItinerary1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Masters_id: integer;
  x_MasterDepDate: TDateTime;
begin

  _VoucherManagerForm_Level := GetUserLevel(g_users_id, 4040);

  If _VoucherManagerForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot Delete. Vouchers Already Created');

  x_Masters_id := MasterTourCds['Masters_id'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'Exec p_DeleteItineraries '+IntToStr(MasterTourCds['Masters_id']) + ','+
  ''''+ FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate'])+ ''' ';
  GpSds.ExecSQL;

  GpSds.Free;

  FilterItineraries;

  MasterTourCds.Locate('Masters_id;MasterDepDate',VarArrayOf([x_Masters_id, x_MasterDepDate]), []);

  ShowMessage ('Itinerary Deleted');

end;

function TVoucherManagerForm.IsVoucherCreated(x_MasterTourCode:string; x_MasterDepDate: TDateTime; x_option: integer): Boolean;
var
  GpSds: TSQLDataSet;
  x_Result: Boolean;
  x_manual_str: string;
begin

  // consider only automatically generated vouchers
  x_manual_str := '';
  if x_option = 2 then
    x_manual_str := ' AND Manual = 0 ';


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM Vouchers ' +
    'WHERE MasterTourCode = ''' + MasterTourCds['MasterCode'] + ''' ' +
    'AND MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate'])+ ''' ' +
    x_manual_str;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    x_Result := True
  else
    x_Result := False;

  GpSds.Free;

  Result := x_Result;

end;


procedure TVoucherManagerForm.CreateItinerary1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Masters_id: integer;
  x_MasterDepDate: TDateTime;
begin

  _VoucherManagerForm_Level := GetUserLevel(g_users_id, 4030);

  If _VoucherManagerForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] > 0 then
    raise exception.create ('Already Created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot Create. Vouchers Already Created');

  x_Masters_id := MasterTourCds['Masters_id'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_CreateItineraries '+IntToStr(MasterTourCds['Masters_id']) + ','+
  ''''+ FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate'])+ ''' ';
  GpSds.ExecSQL;

  GpSds.Free;

  FilterItineraries;

  MasterTourCds.Locate('Masters_id;MasterDepDate',VarArrayOf([x_Masters_id, x_MasterDepDate]), []);

  ShowMessage ('Itinerary Created');

end;

procedure TVoucherManagerForm.CountPax1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  CountPax(1);

end;

procedure TVoucherManagerForm.CountVehicles1Click(Sender: TObject);
var
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  CountVehicles(1);

end;

procedure TVoucherManagerForm.GenerateRoomingList1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  GenerateRoomingList(1);

end;

procedure TVoucherManagerForm.RoomingList1Click(Sender: TObject);
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  // should be set Before Create of Form
  _RoomingListForm_Itineraries_id := MasterTourCds['Itineraries_id'];

  if RoomingListForm = nil then
    Application.CreateForm(TRoomingListForm, RoomingListForm);

end;

procedure TVoucherManagerForm.PaxList1Click(Sender: TObject);
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 3;
  _BookingDetailsForm_itineraries_id := MasterTourCds['Itineraries_id'];
  _BookingDetailsForm_ItinerariesOptions_id := 1;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;


end;

procedure TVoucherManagerForm.Itinerary1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 1 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _ItineraryForm_Masters_id := MasterTourCds['Masters_id'];
  _ItineraryForm_MasterCode := MasterTourCds['MasterCode'];
  _ItineraryForm_MasterTourDate := MasterTourCds['MasterDepDate'];
  _ItineraryForm_Itineraries_id := MasterTourCds['Itineraries_id'];
  _ItineraryForm_Type := 2;

  if ItineraryForm = nil then
     Application.Createform(TItineraryForm, ItineraryForm);

  ItineraryForm.Show;

end;

procedure TVoucherManagerForm.cxFitCkbClick(Sender: TObject);
begin
  FilterItineraries;
end;

procedure TVoucherManagerForm.cxMasterCategoriesCkbClick(Sender: TObject);
begin
  FilterItineraries;
end;

procedure TVoucherManagerForm.cxMasterCategoryLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterItineraries;
end;

procedure TVoucherManagerForm.GenerateVouchers1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Masters_id: integer;
  x_MasterDepDate: TDateTime;
  x_countries_id_str: string;
  x_ok: boolean;
begin
  _VoucherManagerForm_Level := GetUserLevel(g_users_id, 5021);

  If _VoucherManagerForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('Please create the itinerary first');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot Create. Vouchers Already Created');

  if DaySpan (MasterTourCds['MasterDepDate'],Date) > 60 then
    if MessageDlg('More than 60 days prior. Do you really want to process?', mtInformation, [mbYes,mbNo], 0) <> mrYes then
      abort;

  if MessageDlg ('Are you sure you want to generate vouchers for ' +
    MasterTourCds['MasterCode'] + ' --- ' + FormatDateTime('dd/mm/yyyy',MasterTourCds['MasterDepDate']),
    mtInformation, [mbYes,mbNo], 0) <> mrYes then
    Abort;

  x_Masters_id := MasterTourCds['Masters_id'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];

  _TourLeaderForm_MasterCode := MasterTourCds['MasterCode'];
  _TourLeaderForm_MasterDepDate := MasterTourCds['MasterDepDate'];
  _TourLeaderForm_Itineraries_id := MasterTourCds['Itineraries_id'];

  if TourLeaderForm = nil then
    Application.CreateForm(TTourLeaderForm, TourLeaderForm);

  TourLeaderForm.ShowModal;

  if TourleaderForm.ModalResult = mrOK then
    begin

      x_ok := True;
      if (MasterTourCds['FIT'] = false) and (GetTLCount = 0) then
        if MessageDlg ('Not Tour Leader Defined. Do you want to continue?', mtError, [mbYes, mbNo], 0) <> mrYes then
          x_ok := False;

      if x_ok = true then
        begin

          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
          GpSds.CommandType := ctQuery;

          x_countries_id_str := 'null';
          if TourLeaderForm.cxNationalityCMB.EditValue > 0 then
            x_countries_id_str := IntToStr(TourLeaderForm.cxNationalityCMB.EditValue);

          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

          GpSds.CommandText := 'EXEC p_GenerateVouchers '+IntToStr(MasterTourCds['Itineraries_id']) + ','''+
            TourLeaderForm.cxTourLeaderEdit.Text + ''', ' +
            x_countries_id_str + ', ''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(TourLeaderForm.cxIssuedOnEdit.Text))+ ''',''' +
            TourLeaderForm.cxIssuedByEdit.Text + ''', ''' +
            TourLeaderForm.cxTourRefEdit.Text + ''', ' +
            IntTOStr(g_Companies_id);
          GpSds.ExecSQL;

          GpSds.Close;
          GpSds.CommandText := 'EXEC p_CostCompute '+IntToStr(MasterTourCds['itineraries_id']) + ' ';
          GpSds.ExecSQL;

          GpSds.Close;
          GpSds.CommandText := 'SELECT Vouchers_id FROM Vouchers v ' +
            'WHERE MasterTourCode = ' + QuotedStr(MasterTourCds['MasterCode']) + ' ' +
            'AND MasterTourDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate'])) + ' ' +
            'AND COALESCE(ExpectedCost,0.0) <> 0.0';
          GpSds.Open;

          // if no expected cost > 0, regenerate compute cost a second time (since sometimes the earlier call does not compute expected cost ???)
          if (GpSds.Eof) then
            begin
              GpSds.Close;
              GpSds.CommandText := 'EXEC p_CostCompute '+IntToStr(MasterTourCds['itineraries_id']) + ' ';
              GpSds.ExecSQL;
            end;

          GpSds.Free;

          FilterItineraries;

          MasterTourCds.Locate('Masters_id;MasterDepDate',VarArrayOf([x_Masters_id, x_MasterDepDate]), []);

          ShowMessage ('Vouchers Created & Cost Computed');

        end;

    end;

  TourLeaderForm.Free;
  TourLeaderForm := nil;

end;

function TVoucherManagerForm.GetTLCount: integer;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT COUNT(*) AS x_count ' +
     'FROM dbo.fn_GetMasterPaxListOnTour (''' + MasterTourCds['MasterCode'] + ''',''' +
     FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''',1) f ' +
     'WHERE COALESCE(TourLeader,0) = 1';

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


procedure TVoucherManagerForm.DeleteVouchers1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Masters_id: integer;
  x_MasterDepDate: TDateTime;
begin

  _VoucherManagerForm_Level := GetUserLevel(g_users_id, 5022);

  If _VoucherManagerForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;
    
  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('Please create the itinerary first');

  if MessageDlg ('Are you sure you want to delete vouchers for ' +
    MasterTourCds['MasterCode'] + ' --- ' + FormatDateTime('dd/mm/yyyy',MasterTourCds['MasterDepDate']),
    mtInformation, [mbYes,mbNo], 0) <> mrYes then
    Abort;

  x_Masters_id := MasterTourCds['Masters_id'];
  x_MasterDepDate := MasterTourCds['MasterDepDate'];


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_DeleteVouchers '+IntToStr(MasterTourCds['Itineraries_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  FilterItineraries;

  MasterTourCds.Locate('Masters_id;MasterDepDate',VarArrayOf([x_Masters_id, x_MasterDepDate]), []);

  ShowMessage ('Vouchers Deleted');

end;

procedure TVoucherManagerForm.Vouchers1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 5000);

  If x_Level < 1 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _VouBillForm_MasterCode := MasterTourCds['MasterCode'];
  _VouBillForm_MasterDepDate := MasterTourCds['MasterDepDate'];
  _VouBillForm_Type := 1;

  _VouBillForm_Level := _VoucherManagerForm_Level;

  if VouBillForm = nil then
     Application.CreateForm(TVouBillForm, VouBillForm);

end;

procedure TVoucherManagerForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TVoucherManagerForm.ourItinerary1Click(Sender: TObject);
begin
// Code added on 12 Jan 2006
  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  _ItineraryForm_Masters_id := MasterTourCds['Masters_id'];
//  _ItineraryForm_MasterCode := MasterTourCds['MasterCode'];
  _ItineraryForm_MasterTourDate := MasterTourCds['MasterDepDate'];
//  _ItineraryForm_Itineraries_id := MasterTourCds['Itineraries_id'];

   if RptItineraryForm = nil then
      Application.CreateForm(TRptItineraryForm, RptItineraryForm);

   RptItineraryForm.ItinerarySds.Close;
   RptItineraryForm.ItinerarySds.CommandText := '';
   RptItineraryForm.ItinerarySds.CommandText := ' SELECT M.Mastercode, I.Departuredate, M.name, ' +
   ' M.noofdays, CASE WHEN M.tailormade = 1 THEN ''Tailormade'' '+
   ' WHEN M.fit = 1 THEN ''FIT''  ELSE ''Group Tour''  END AS TourType, I.Itineraries_id '+
   ' FROM Itineraries I LEFT JOIN Masters M ON '+
   ' I.Masters_id = M.Masters_id '+
   ' WHERE i.masters_id = ' + IntToStr(_ItineraryForm_Masters_id) +
   ' AND departuredate = ''' + FormatDateTime('mm/dd/yyyy', _ItineraryForm_MasterTourDate) + ''' ';

   RptItineraryForm.ItinerarySds.Open;

   RptItineraryForm.ItineraryCds.Close;
   RptItineraryForm.ItineraryCds.Open;

   RptItineraryForm.TicketsCds.Close;
   RptItineraryForm.TicketsCds.Open;
   RptItineraryForm.AccCds.Close;
   RptItineraryForm.AccCds.Open;
   RptItineraryForm.ServiceCds.Close;
   RptItineraryForm.ServiceCds.Open;
   RptItineraryForm.TransportCds.Close;
   RptItineraryForm.TransportCds.Open;
   RptItineraryForm.PackagesCds.Close;
   RptItineraryForm.PackagesCds.Open;

   RptItineraryForm.QuickRep1.PreviewModal;

{
   if _ShowModal = True then
     RptItineraryForm.QuickRep1.PreviewModal
   else
     begin
       RptItineraryForm.QuickRep1.PrinterSettings.UseStandardprinter := True;
       RptItineraryForm.QuickRep1.Print;
     end;
}

   RptItineraryForm.Release;
   RptItineraryForm := nil;

end;

procedure TVoucherManagerForm.RoomingList2Click(Sender: TObject);
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

    If RptItinRoomingListForm = nil then
      Application.CreateForm(TRptItinRoomingListForm, RptItinRoomingListForm);

    RptItinRoomingListForm.RoomListSds.Close;
    RptItinRoomingListForm.RoomListSds.Params[0].Value := MasterTourCds['Itineraries_id'];

    RptItinRoomingListForm.RoomListSds.Open;
    RptItinRoomingListForm.RoomListCds.Close;
    RptItinRoomingListForm.RoomListCds.Open;

    RptItinRoomingListForm.QuickRep1.PreviewModal;

{
    if _ShowModal = True then
      RptItinRoomingListForm.QuickRep1.PreviewModal
    else
      begin
        RptItinRoomingListForm.QuickRep1.PrinterSettings.UseStandardprinter := True;
        RptItinRoomingListForm.QuickRep1.Print;
      end;
}

    RptItinRoomingListForm.Release;
    RptItinRoomingListForm := nil;

end;

procedure TVoucherManagerForm.NameList1Click(Sender: TObject);
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

   if RptItinNameListForm = nil then
     Application.CreateForm(TRptItinNameListForm, RptItinNameListForm);

   RptItinNameListForm.NameListSds.Close;
   RptItinNameListForm.NameListSds.CommandText :=
     'SELECT ''' + MasterTourCds['MasterCode'] + ''' AS MasterCode, CAST(''' +
     FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''' AS SMALLDATETIME) AS DepartureDate,' +
     'CASE WHEN f.Male = 0 THEN ''Ms. '' ELSE ''Mr. '' END + f.[Name] AS NameOfPax,' +
     'CAST(DATEDIFF(YEAR,BC.DateofBirth,f.TourDate) AS INTEGER) AS Age, C.Country, f.TourCode ' +
     'FROM dbo.fn_GetMasterPaxListOnTour (''' + MasterTourCds['MasterCode'] + ''',''' +
     FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''',1) f ' +
     'LEFT JOIN BookingsClients bc ON f.BookingsClients_id = bc.BookingsClients_id ' +
     'LEFT JOIN Countries c ON bc.Countries_id = c.Countries_id ' +
     'ORDER BY f.TourDate, f.TourCode ';

   RptItinNameListForm.NameListCds.Close;
   RptItinNameListForm.NameListCds.Open;

   RptItinNameListForm.QuickRep1.PreviewModal;

{
   if _ShowModal = True then
//     begin
       RptItinNameListForm.QuickRep1.PreviewModal
     else
       begin
         RptItinNameListForm.QuickRep1.PrinterSettings.UseStandardprinter := True;
         RptItinNameListForm.QuickRep1.Print;
       end;
}

   RptItinNameListForm.Release;
   RptItinNameListForm := nil;

end;

procedure TVoucherManagerForm.SitList1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString, x_TourCode, x_Tour: string;
  x_OK: boolean;
  i, x_Tours_id: integer;
  x_TourDate: TDateTime;
begin

  x_ok := True;

  QueryString := 'SELECT TourCode, TourDepartureDate, TourDepartureDates_id, TourCodes_id ' +
    'FROM dbo.fn_GetTourDepartureDate (''' +
    MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''')';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Close;  
  SearchSortForm.SearchCds.Open;

  for i := 0 to 3 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TourCode';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourDepartureDate';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'TourDepartureDates_id';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'TourCodes_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Tour Code';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Departure Date';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TourDepartureDates_id';

  x_Tours_id := -1;
  x_TourCode := '';
  x_TourDate := StrToDate('01/01/2005');

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      x_TourCode := SearchSortForm.SearchCds['TourCode'];
      x_TourDate := SearchSortForm.SearchCds['TourDepartureDate'];
      x_Tours_id := SearchSortForm.SearchCds['TourCodes_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          x_TourCode := SearchSortForm.SearchCds['TourCode'];
          x_TourDate := SearchSortForm.SearchCds['TourDepartureDate'];
          x_Tours_id := SearchSortForm.SearchCds['TourCodes_id'];
        end
      else
        begin
          x_ok := False;
        end;

    end
  else
    begin
      Showmessage ('No Tour Code Found. Check the Tour Calendar');
      x_ok := False;
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

  if not x_ok then
    exit;


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'SELECT Tour FROM TourCodes WHERE TourCodes_id = ' + IntToStr(x_Tours_id);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Tour'] <> null) then
    x_Tour := GpSds['Tour'];

  GpSds.Free;

  if RpSitListForm = nil then
    Application.CreateForm(TRpSitListForm, RpSitListForm);

  RpSitListForm.TourCodeLabel.Caption := x_TourCode;
  RpSitListForm.DepDateLabel.Caption := FormatDateTime('dd/mm/yyyy',x_TourDate);
  RpSitListForm.TourLabel.Caption := x_Tour;

  RpSitListForm.BookingCds.Close;
  RpSitListForm.BookingSds.Close;
  RpSitListForm.BookingSds.CommandText :=
  'SELECT B.Bookings_id, B.Notes, BT.TourLeader, BT.TourCode, BT.TourDate, B.Reference, BT.TourLeaderTrainee ' +
  'FROM Bookings B ' +
  'LEFT JOIN BookingsTours BT ON B.Bookings_id = BT.Bookings_id ' +
  'WHERE B.Cancelled IS NULL ' +
  'AND BT.cancelledOn IS NULL ' +
  'AND BT.TourCode = ''' + x_TourCode + ''' ' +
  'AND BT.TourDate = ''' + FormatDateTime('mm/dd/yyyy',x_TourDate) + ''' ' +
  'ORDER BY B.Reference';
  RpSitListForm.BookingSds.open;
  RpSitListForm.BookingCds.Open;

  RpSitListForm.BookingsClientsSds.Open;
  RpSitListForm.BookingsClientsCds.Close;
  RpSitListForm.BookingsClientsCds.Open;

  RpSitListForm.BookingsAccommodationCds.Close;
  RpSitListForm.BookingsAccommodationSds.Close;
  RpSitListForm.BookingsAccommodationSds.CommandText :=
  'SELECT BA.Bookings_id, A.City, A.Organisation, BA.singles, ' +
  'BA.doubles + COALESCE(BA.Twins,0) AS doubles, COALESCE(BA.triples,0) AS Triples, ' +
  'COALESCE(BA.twins,0) AS Twins, RT.Roomtype,' +
  'M.MealPlan, M.[Plan], BA.DateIn, BA.DateOut, DATEDIFF(d,BA.DateIn,BA.DateOut) AS Nights ' +
  'FROM ((BookingsAccommodation BA ' +
  'LEFT JOIN Addressbook AS A ON BA.Addressbook_id = A.Addressbook_id) ' +
  'LEFT JOIN Roomtypes AS RT ON BA.Roomtypes_id = RT.Roomtypes_id) ' +
  'LEFT JOIN MealPlans  AS M ON BA.mealPlans_id = M.MealPlans_id '+
  'WHERE BA.Bookings_id = :Bookings_id ' +
  'AND BA.TourCode = ''' + x_TourCode + ''' ' +
  'AND BA.TourDate = ''' + FormatDateTime('mm/dd/yyyy',x_TourDate) + ''' ' +
  'AND BA.CancelledOn IS NULL';
  RpSitListForm.BookingsAccommodationSds.open;
  RpSitListForm.BookingsAccommodationCds.Open;

  RpSitListForm.BookingsTicketsCds.Close;
  RpSitListForm.BookingsTicketsSds.Close;
  RpSitListForm.BookingsTicketsSds.CommandText :=
  'SELECT BT.Bookings_id,  BT.TravelDate, BT.FlightNo, ' +
  'C1.City As FromCity, C2.City As ToCity, ' +
  'CONVERT(VARCHAR(5),BT.ETA,108) AS ETA,' +
  'CONVERT(VARCHAR(5),BT.ETD,108) AS ETD,' +
  'BT.NoOfTickets ' +
  'FROM (BookingsTickets BT LEFT JOIN Cities C1 ON ' +
  'BT.From_Cities_id = C1.Cities_id) LEFT JOIN Cities C2 ON ' +
  'BT.To_Cities_id  = C2.Cities_id ' +
  'WHERE BT.Bookings_id = :Bookings_id ' +
  'AND BT.TourCode = ''' + x_TourCode + ''' ' +
  'AND BT.TourDate = ''' + FormatDateTime('mm/dd/yyyy',x_TourDate) + ''' ' +
  'AND BT.CancelledOn IS NULL';
  RpSitListForm.BookingsTicketsSds.open;
  RpSitListForm.BookingsTicketsCds.Open;


  RpSitListForm.BookingsServicesCds.Close;
  RpSitListForm.BookingsServicesSds.Close;
  RpSitListForm.BookingsServicesSds.CommandText :=
  'SELECT BS.Bookings_id, BS.Date, BS.FlightNo, C1.City As FromCity,' +
  'C2.City As ToCity, CONVERT(VARCHAR(5),BS.ETA,108) AS ETA,' +
  'CASE WHEN BS.TransferTypes_id = 0 THEN ''N/A'' ' +
  'ELSE t.transfer ' +
  'end as Transfer ' +
  'FROM ((BookingsServices BS LEFT JOIN Cities C1 ON ' +
  'BS.From_Cities_id = C1.Cities_id) LEFT JOIN Cities C2 ON ' +
  'BS.To_Cities_id  = C2.Cities_id) LEFT JOIN TransferTypes T ON '+
  'BS.TransferTypes_id = T.TransferTypes_id ' +
  'WHERE BS.Bookings_id = :Bookings_id ' +
  'AND BS.TourCode = ''' + x_TourCode + ''' ' +
  'AND BS.TourDate = ''' + FormatDateTime('mm/dd/yyyy',x_TourDate) + ''' ' +
  'AND BS.CancelledOn IS NULL';
  RpSitListForm.BookingsServicesSds.open;
  RpSitListForm.BookingsServicesCds.Open;

  RpSitListForm.QuickRep1.PreviewModal;

  RpSitListForm.Release;
  RpSitListForm := nil;

end;

procedure TVoucherManagerForm.VouchersForCurrentTour1Click(
  Sender: TObject);
begin

  if MasterTourCdsMasters_id.IsNull then
    Exit;

  if RptPrintVouchersForm = nil then
    Application.CreateForm(TRptPrintVouchersForm, RptPrintVouchersForm);

  RptPrintVouchersForm.PrintVouchersSds.Close;
  RptPrintVouchersForm.PrintVouchersSds.CommandText :=
    'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2,* FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
    '0, 0, 0, 1) ORDER BY YearRef, VoucherNo';

  RptPrintVouchersForm.PrintVouchersSds.Open;

  RptPrintVouchersForm.PrintVouchersCds.Close;
  RptPrintVouchersForm.PrintVouchersCds.Open;

  RptPrintVouchersForm.QRVoucher.PreviewModal;

  RptPrintVouchersForm.Release;
  RptPrintVouchersForm := nil;

end;

procedure TVoucherManagerForm.VouchersinDateRange1Click(Sender: TObject);
var
  yearref, min_no, max_no: integer;
begin
// Code added on 12 Jan 2006
  if MasterTourCdsMasters_id.IsNull then
    Exit;

  //yearref:=0;
  //min_no:=0;
  //max_no:=0;
  _inputstr := '00000002';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      yearref := StrToInt(ReportParameterForm.YearEdit.Text);
      min_no := StrToInt(VarToStr(_ret1[8]));
      max_no := StrToInt(VarToStr(_ret2[8]));

      if RptPrintVouchersForm = nil then
        Application.CreateForm(TRptPrintVouchersForm, RptPrintVouchersForm);

      RptPrintVouchersForm.PrintVouchersSds.Close;

      RptPrintVouchersForm.PrintVouchersSds.CommandText :=
        'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
        FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
        IntToStr(min_no) + ',' + IntToStr(max_no) + ',' + IntToStr(yearref) + ',2) ' +
        'ORDER BY YearRef, VoucherNo';

      RptPrintVouchersForm.PrintVouchersSds.Open;

      RptPrintVouchersForm.PrintVouchersCds.Close;
      RptPrintVouchersForm.PrintVouchersCds.Open;

      RptPrintVouchersForm.QRVoucher.PreviewModal;

      RptPrintVouchersForm.Release;
      RptPrintVouchersForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherManagerForm.SingleVoucher1Click(Sender: TObject);
begin

  if MasterTourCdsMasters_id.IsNull then
    Exit;

  if RptSingleVoucherForm = nil then
    Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

  RptSingleVoucherForm.PrintVouchersSds.Close;
  RptSingleVoucherForm.PrintVouchersSds.CommandText :=
    'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
    '0, 0, 0, 1) ' +
    'ORDER BY YearRef, VoucherNo';

  RptSingleVoucherForm.PrintVouchersSds.Open;

  RptSingleVoucherForm.PrintVouchersCds.Close;
  RptSingleVoucherForm.PrintVouchersCds.Open;

  RptSingleVoucherForm.QRVoucher.PreviewModal;

  RptSingleVoucherForm.Release;
  RptSingleVoucherForm := nil;

end;

procedure TVoucherManagerForm.LocalPayment1Click(Sender: TObject);
begin

   if RptLpReportForm = nil then
     Application.CreateForm (TRptLpReportForm, RptLpReportForm);

   RptLpReportForm.LpSds.Close;
   RptLpReportForm.LpSds.CommandText :=
    'SELECT f.TourCode, CASE WHEN f.Male = 0 THEN ''Ms. '' ELSE ''Mr. '' END + f.[Name] AS NameOfPax,' +
    'CASE WHEN bd.LocalPayment = 1 AND bd.LocalPaymentTypes_id = 1 THEN COALESCE(td.LocalPayment,0.0) ' +
    'WHEN bd.LocalPayment = 1 THEN COALESCE(bd.LocalPaymentAmount,0.0) ' +
    'ELSE 0 ' +
    'END AS LocalPayment ' +
    'FROM dbo.fn_GetMasterPaxListOnTour (''' + MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', 1) f ' +
    'LEFT JOIN BookingsClients bc ON f.BookingsClients_id = bc.BookingsClients_id ' +
    'LEFT JOIN BookingDetails bd ON bc.BookingsClients_id = bd.BookingsClients_id AND bd.TourCode = f.TourCode AND bd.TourDate = f.TourDate '+
    'LEFT JOIN TourCodes t ON f.TourCode = t.TourCode ' +
    'LEFT JOIN TourDepartureDates td ON t.TourCodes_id = td.TourCodes_id ' +
    'AND td.TourDate = f.TourDate ' + 
    'WHERE f.Tourleader = 0 ' +
    'ORDER BY f.TourDate, f.TourCode';

   RptLpReportForm.LpCds.Close;
   RptLpReportForm.LpCds.Open;   

   LpHeaderString;

   RptLpReportForm.QuickRep1.PreviewModal;

   RptLpReportForm.Free;
   RptLpReportForm := nil;

end;

procedure TVoucherManagerForm.LpHeaderString;
var
  GpSds: TSQLDataSet;
  x_city, x_dow, x_org, x_addr, x_tl, x_str0, x_str1, x_str2, x_str3: string;
  x_day: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandText :=
    'SELECT f.TourCode, CASE WHEN f.Male = 0 THEN ''Ms. '' ELSE ''Mr. '' END + f.[Name] AS NameOfPax ' +
    'FROM dbo.fn_GetMasterPaxListOnTour (''' + MasterTourCds['MasterCode'] +
    ''', ''' + FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', 1) f ' +
    'WHERE f.Tourleader = 1 ';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['NameOfPax'] <> null) then
    x_tl := ' -- T/L ' + GpSds['NameOfPax']
  else
    x_tl := '';

  x_str0 := MasterTourCds['MasterCode'] + ' ' +
            FormatDateTime('dd/mm/yyyy',MasterTourCds['MasterDepDate']) + ' ' +
            x_tl;

  GpSds.Close;
  GpSds.CommandText := 'SELECT c.City, a.Organisation FROM MasterAccommodation m ' +
    'LEFT JOIN Addressbook a ON m.Addressbook_id = a.Addressbook_id ' +
    'LEFT JOIN Cities c ON a.cities_id = c.Cities_id ' +
    'WHERE m.Masters_id = ' + IntToStr(MasterTourCds['masters_id']) + ' ' +
    'ORDER BY m.DayIn';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['City'] <> null) then
    x_city := GpSds['City']
  else
    x_city := '';

  x_dow := FormatDateTime('dddd',MasterTourCds['MasterDepDate']);

  x_str1 := 'These clients start their tour in ' + x_city + ' on a ' + x_dow + '.';

  GpSds.Close;
  GpSds.CommandText :=
    'SELECT c.City, m.LpCities_id, m.LpDay, a.Organisation, a.Address FROM Masters m ' +
    'LEFT JOIN Cities c ON m.LpCities_id = c.Cities_id ' +
    'LEFT JOIN Addressbook a ON m.LpBanks_id = a.Addressbook_id ' +
    'WHERE m.Masters_id = ' + IntToStr(MasterTourCds['masters_id']);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['LpDay'] <> null) then
    x_day := GpSds['LpDay']
  else
    x_day := 0;

  x_dow := FormatDateTime('dddd',MasterTourCds['MasterDepDate']+x_day);

  if (not GpSds.EOF) and (GpSds['City'] <> null) then
    x_city := GpSds['City']
  else
    x_city := '';

  if (not GpSds.EOF) and (GpSds['Organisation'] <> null) then
    x_org := GpSds['Organisation']
  else
    x_org := '';

  if (not GpSds.EOF) and (GpSds['Address'] <> null) then
    x_addr := GpSds['Address']
  else
    x_addr := '';

  x_str1 := x_str1 + 'Collect the local payments on arrival in ' + x_city + ' ' +
    'on Day ' + IntToStr(x_day) + '. After checking the clients to the hotel, ' +
    'go straight away to the ' + x_org + ' office to deposit the local payments..';

  x_str2 := 'Please pay the above amount into the following bank on ' +
    FormatDateTime('dd/mm',IncDay(MasterTourCds['MasterDepDate'],x_day-1)) + ' ' +
    '(Day ' + IntToStr(x_day) + ' of the ' + MasterTourCds['MasterCode'] + ' tour)';

  x_str3 := x_org + chr(13) + x_addr + chr(13) + x_city;

  RptLpReportForm.QR_TL_Label.Caption := x_str0;
  RptLpReportForm.QR_Header1.Caption := x_str1;
  RptLpReportForm.QR_Header2.Caption := x_str2;
  RptLpReportForm.QR_Header3.Caption := x_str3;

  GpSds.Free;

end;


procedure TVoucherManagerForm.SingleVouchersinRangeforCurrentTour1Click(
  Sender: TObject);
var
  yearref, min_no, max_no: integer;
begin

  if MasterTourCdsMasters_id.IsNull then
    Exit;

  //yearref:=0;
  //min_no:=0;
  //max_no:=0;
  _inputstr := '00000002';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      yearref := StrToInt(ReportParameterForm.YearEdit.Text);
      min_no := StrToInt(VarToStr(_ret1[8]));
      max_no := StrToInt(VarToStr(_ret2[8]));

      if RptSingleVoucherForm = nil then
        Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

      RptSingleVoucherForm.PrintVouchersSds.Close;
      RptSingleVoucherForm.PrintVouchersCds.Close;

      RptSingleVoucherForm.PrintVouchersSds.CommandText :=
        'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
        FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
        IntToStr(min_no) + ',' + IntToStr(max_no) + ',' + IntToStr(yearref) + ',2) ' +
        'ORDER BY YearRef, VoucherNo';

      RptSingleVoucherForm.PrintVouchersSds.Open;

      RptSingleVoucherForm.PrintVouchersCds.Close;
      RptSingleVoucherForm.PrintVouchersCds.Open;

      RptSingleVoucherForm.QRVoucher.PreviewModal;

      RptSingleVoucherForm.Release;
      RptSingleVoucherForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TVoucherManagerForm.SetLeadPax1Click(Sender: TObject);
var
  x_level: integer;
begin
  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  SetLeadPax(1);

end;

procedure TVoucherManagerForm.cxBookingCkbClick(Sender: TObject);
begin
  FilterItineraries;
end;

procedure TVoucherManagerForm.GenerateExpectedCost1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  _VoucherManagerForm_Level := GetUserLevel(g_users_id, 5021);

  If _VoucherManagerForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = false) then
    raise exception.create ('Cannot compute. Vouchers Not Yet Created');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_CostCompute '+IntToStr(MasterTourCds['itineraries_id']) + ' ';
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Expected Cost Computed');


end;

procedure TVoucherManagerForm.UpdateBookingDetails1Click(Sender: TObject);
var
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  UpdateBookingDetails(1);

end;

procedure TVoucherManagerForm.UpdateBookingDetails(x_option: integer);
var
  GpSds: TSQLDataSet;
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot update. Vouchers Already Created');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_UpdateBookingDetailsForMaster ''' +
    MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + '''';
  GpSds.ExecSQL;

  GpSds.Free;

  if (x_option = 1) then
    ShowMessage ('Booking Details Updated');


end;

procedure TVoucherManagerForm.GenerateRoomingList(x_option: integer);
var
  GpSds: TSQLDataSet;
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot generate rooming list. Vouchers Already Created');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_ItineraryRoomingList '+IntToStr(MasterTourCds['itineraries_id']) + ' ';
  GpSds.ExecSQL;

  GpSds.Free;

  if (x_option = 1) then
    ShowMessage ('Rooming List Generated');

end;

procedure TVoucherManagerForm.CountPax(x_option: integer);
var
  GpSds: TSQLDataSet;
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot count. Vouchers Already Created');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_ItineraryPaxCount '+IntToStr(MasterTourCds['itineraries_id']) + ',1';
  GpSds.ExecSQL;

  GpSds.Free;

  if (x_option = 1) then
    ShowMessage ('Pax Counted');

end;

procedure TVoucherManagerForm.CountVehicles(x_option: integer);
var
  GpSds: TSQLDataSet;
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot count. Vouchers Already Created');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  // Services
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_ItineraryMostEconomicalCar '+IntToStr(MasterTourCds['itineraries_id']) + ',1';
  GpSds.ExecSQL;

  // Coach
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_ItineraryMostEconomicalCoach '+IntToStr(MasterTourCds['itineraries_id']) + ',1';
  GpSds.ExecSQL;

  GpSds.Free;

  if (x_option = 1) then
    ShowMessage ('Most Economical Vehicles Estimated');


end;

procedure TVoucherManagerForm.SetLeadPax(x_count: integer);
var
  GpSds: TSQLDataSet;
begin

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot count. Vouchers Already Created');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  // Vouchers
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_ItineraryLeadPax '+IntToStr(MasterTourCds['itineraries_id']) + '';
  GpSds.ExecSQL;

  // Bookings
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_ItineraryLeadPaxBookings '+IntToStr(MasterTourCds['itineraries_id']) + '';
  GpSds.ExecSQL;

  GpSds.Free;

  if (x_count = 1) then
    ShowMessage ('Lead Pax set');


end;


procedure TVoucherManagerForm.Performallabovesteps1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4030);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourCds['Masters_id'] = null then
    raise exception.create ('Please select a tour first');

  if MasterTourCds['Itineraries_id'] = null then
    raise exception.create ('itinerary not yet created');

  if (IsVoucherCreated(MasterTourCds['MasterCode'],MasterTourCds['MasterDepDate'],2) = true) then
    raise exception.create ('Cannot perform. Vouchers Already Created');


  UpdateBookingDetails(2);
  GenerateRoomingList(2);
  CountPax(2);
  CountVehicles(2);
  SetLeadPax(2);

  ShowMessage ('All above steps performed')

end;

procedure TVoucherManagerForm.cxButton8Click(Sender: TObject);
begin

  _VouSendMailForm_MasterTourCode := MasterTourCds['MasterCode'];
  _VouSendMailForm_MasterTourDate := MasterTourCds['MasterDepDate'];

  if VouSendMailForm = nil then
    Application.CreateForm(TVouSendMailForm, VouSendMailForm);

  VouSendMailForm.Visible := False;

  VouSendMailForm.ShowModal;

  VouSendMailForm.Free;
  VouSendMailForm := nil;

end;

procedure TVoucherManagerForm.SingleVoucherforCurrentTourwithoutimages1Click(
  Sender: TObject);
begin

  if MasterTourCdsMasters_id.IsNull then
    Exit;

  if RptSingleVoucher3Form = nil then
    Application.CreateForm(TRptSingleVoucher3Form, RptSingleVoucher3Form);

  RptSingleVoucher3Form.PrintVouchersSds.Close;
  RptSingleVoucher3Form.PrintVouchersSds.CommandText :=
    'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
    '0, 0, 0, 1) ' +
    'ORDER BY YearRef, VoucherNo';

  RptSingleVoucher3Form.PrintVouchersSds.Open;

  RptSingleVoucher3Form.PrintVouchersCds.Close;
  RptSingleVoucher3Form.PrintVouchersCds.Open;

  RptSingleVoucher3Form.QRVoucher.PreviewModal;

  RptSingleVoucher3Form.Release;
  RptSingleVoucher3Form := nil;


end;

procedure TVoucherManagerForm.cxButton9Click(Sender: TObject);
begin

  if VouMailStatusForm = nil then
    Application.CreateForm(TVouMailStatusForm, VouMailStatusForm);

end;

procedure TVoucherManagerForm.CompareCosts1Click(Sender: TObject);
begin
  ExpCostCompareForm_FromDate := StrToDate(FromDateEdit.Text);

  if ExpCostCompareForm =  nil then
    Application.CreateForm(TExpCostCompareForm, ExpCostCompareForm);

end;

procedure TVoucherManagerForm.NewVouchers1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 5000);

  If x_Level < 1 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  VoucherForm_Companies_id := g_companies_id;    
  VoucherForm_MasterTourCode := MasterTourCds['MasterCode'];
  VoucherForm_MasterTourDate := MasterTourCds['MasterDepDate'];
  VoucherForm_Type := 2;

  VoucherForm_Level := _VoucherManagerForm_Level;

  if VoucherForm = nil then
     Application.CreateForm(TVoucherForm, VoucherForm);

end;

procedure TVoucherManagerForm.InvoiceGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('CancelledOn');

  if ARecord.Values[AColumn.Index] <> null then
    AStyle := cxStyleRed;

end;

procedure TVoucherManagerForm.VouchersForCurrentTour2perpg1Click(
  Sender: TObject);
begin

  if MasterTourCdsMasters_id.IsNull then
    Exit;

  if RptPrintVouchers_2_Form = nil then
    Application.CreateForm(TRptPrintVouchers_2_Form, RptPrintVouchers_2_Form);

  RptPrintVouchers_2_Form.PrintVouchersSds.Close;
  RptPrintVouchers_2_Form.PrintVouchersSds.CommandText :=
    'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2,* FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
    FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
    '0, 0, 0, 1) ORDER BY YearRef, VoucherNo';

  RptPrintVouchers_2_Form.PrintVouchersSds.Open;

  RptPrintVouchers_2_Form.PrintVouchersCds.Close;
  RptPrintVouchers_2_Form.PrintVouchersCds.Open;

  RptPrintVouchers_2_Form.QuickRep1.PreviewModal;

  RptPrintVouchers_2_Form.Release;
  RptPrintVouchers_2_Form := nil;

end;

procedure TVoucherManagerForm.VouchersinRangeforCurrentTour2perpg1Click(
  Sender: TObject);
var
  yearref, min_no, max_no: integer;
begin
// Code added on 12 Jan 2006
  if MasterTourCdsMasters_id.IsNull then
    Exit;

  //yearref:=0;
  //min_no:=0;
  //max_no:=0;
  _inputstr := '00000002';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      yearref := StrToInt(ReportParameterForm.YearEdit.Text);
      min_no := StrToInt(VarToStr(_ret1[8]));
      max_no := StrToInt(VarToStr(_ret2[8]));

      if RptPrintVouchers_2_Form = nil then
        Application.CreateForm(TRptPrintVouchers_2_Form, RptPrintVouchers_2_Form);

      RptPrintVouchers_2_Form.PrintVouchersSds.Close;

      RptPrintVouchers_2_Form.PrintVouchersSds.CommandText :=
        'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (''' + MasterTourCds['MasterCode'] + ''', ''' +
        FormatDateTime('mm/dd/yyyy',MasterTourCds['MasterDepDate']) + ''', ' +
        IntToStr(min_no) + ',' + IntToStr(max_no) + ',' + IntToStr(yearref) + ',2) ' +
        'ORDER BY YearRef, VoucherNo';

      RptPrintVouchers_2_Form.PrintVouchersSds.Open;

      RptPrintVouchers_2_Form.PrintVouchersCds.Close;
      RptPrintVouchers_2_Form.PrintVouchersCds.Open;

      RptPrintVouchers_2_Form.QuickRep1.PreviewModal;

      RptPrintVouchers_2_Form.Release;
      RptPrintVouchers_2_Form := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;



end;

end.
