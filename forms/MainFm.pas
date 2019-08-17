unit MainFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBCtrls, StdCtrls, Buttons, FMTBcd, DB, SqlExpr,
  DBClient, Provider, ToolWin, ComCtrls, jpeg, cxControls, cxContainer,
  cxEdit, cxImage, MPlayer, DateUtils, DBLogDlg,
  dxSkinsCore, dxSkinsDefaultPainters, cxLookAndFeels, dxSkinsForm,
  cxGroupBox,
  cxLookAndFeelPainters, cxButtons,
  XPMenu, ShlObj ;

type
  TMainForm = class(TForm)
    LoginGB: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    UsernameEdit: TEdit;
    PasswordEdit: TEdit;
    LoginBB: TcxButton;
    DivisionGB: TcxGroupBox;
    DivisionConnectBB: TcxButton;
    DivisionCmb: TDBLookupComboBox;
    FinancialYearGB: TcxGroupBox;
    FYConnectBB: TcxButton;
    FinancialYearCmb: TDBLookupComboBox;
    MainMnu: TMainMenu;
    mnuFile: TMenuItem;
    mnuLogout: TMenuItem;
    N40: TMenuItem;
    ChangeUnit1: TMenuItem;
    ChangeFinancialYear1: TMenuItem;
    N1: TMenuItem;
    Backup1: TMenuItem;
    N26: TMenuItem;
    mnuExit: TMenuItem;
    mnuMasters: TMenuItem;
    mnuBookings: TMenuItem;
    mnuTours: TMenuItem;
    mnuVouchers: TMenuItem;
    mnuAdmin: TMenuItem;
    Users1: TMenuItem;
    Modules1: TMenuItem;
    N27: TMenuItem;
    ChangePassword1: TMenuItem;
    N28: TMenuItem;
    Dependencies1: TMenuItem;
    mnuAccounts: TMenuItem;
    DivisionSQLQry: TSQLDataSet;
    CanLogin_sp: TSQLStoredProc;
    SQLDataSet1: TSQLDataSet;
    CompanyGB: TcxGroupBox;
    CompanyConnectBB: TcxButton;
    CompanyCmb: TDBLookupComboBox;
    CompanySQLQry: TSQLDataSet;
    CompanyDS: TDataSource;
    CompanyDSP: TDataSetProvider;
    CompanyCDSQry: TClientDataSet;
    DivisionDS: TDataSource;
    CompanyCDSQrycompanies_id: TIntegerField;
    CompanyCDSQryname: TStringField;
    DivisionDSP: TDataSetProvider;
    DivisionCDSQry: TClientDataSet;
    DivisionCDSQrydivisions_id: TIntegerField;
    DivisionCDSQrydivision: TStringField;
    DivisionCDSQrycompanies_id: TIntegerField;
    DivisionSQLQrydivisions_id: TIntegerField;
    DivisionSQLQrydivision: TStringField;
    DivisionSQLQrycompanies_id: TIntegerField;
    FYSQLQry: TSQLDataSet;
    FYDSP: TDataSetProvider;
    FyCDSQry: TClientDataSet;
    FyDS: TDataSource;
    FyCDSQryFinancialYears_id: TIntegerField;
    FyCDSQryFromDate: TSQLTimeStampField;
    FyCDSQryToDate: TSQLTimeStampField;
    FyCDSQryStatus: TIntegerField;
    FyCDSQryYearRef: TIntegerField;
    FyCDSQryFinancialYearAlias: TStringField;
    FyCDSQryFromYearMonth: TIntegerField;
    FyCDSQryToYearMonth: TIntegerField;
    ChangeCompany1: TMenuItem;
    ToolBar: TToolBar;
    General1: TMenuItem;
    States1: TMenuItem;
    ickets1: TMenuItem;
    Airlines1: TMenuItem;
    Airlines2: TMenuItem;
    Accomodation1: TMenuItem;
    RoomTypes1: TMenuItem;
    MealPlans1: TMenuItem;
    Coach1: TMenuItem;
    Class1: TMenuItem;
    Class2: TMenuItem;
    rains1: TMenuItem;
    Class3: TMenuItem;
    Services1: TMenuItem;
    Automobiles1: TMenuItem;
    F1: TMenuItem;
    CentralTaxes1: TMenuItem;
    AircraftTypes1: TMenuItem;
    Categories1: TMenuItem;
    ExchangeRate1: TMenuItem;
    TrainCategories1: TMenuItem;
    axes1: TMenuItem;
    CarHireAgents1: TMenuItem;
    ours1: TMenuItem;
    Packages1: TMenuItem;
    rains2: TMenuItem;
    Stations1: TMenuItem;
    N3: TMenuItem;
    icketCharges1: TMenuItem;
    SupplementaryCharges1: TMenuItem;
    CacellationCharges1: TMenuItem;
    Countries1: TMenuItem;
    Distances1: TMenuItem;
    N2: TMenuItem;
    AccountHeads1: TMenuItem;
    Invoices1: TMenuItem;
    Products1: TMenuItem;
    BlockBookings1: TMenuItem;
    ickets2: TMenuItem;
    Accomodation2: TMenuItem;
    Packages2: TMenuItem;
    Display1: TMenuItem;
    mnuCosting1: TMenuItem;
    ickets3: TMenuItem;
    Flight1: TMenuItem;
    Coach2: TMenuItem;
    rain1: TMenuItem;
    Ferry1: TMenuItem;
    mnuAddressBook1: TMenuItem;
    AllVouchers1: TMenuItem;
    MasterTours1: TMenuItem;
    Display2: TMenuItem;
    Copy1: TMenuItem;
    Delete1: TMenuItem;
    orItinerary1: TMenuItem;
    Display3: TMenuItem;
    Delete2: TMenuItem;
    N4: TMenuItem;
    MasterTours2: TMenuItem;
    CopyMastersSp: TSQLDataSet;
    DeleteMastersSP: TSQLDataSet;
    N5: TMenuItem;
    MultiInvoices1: TMenuItem;
    AllVouchersByMasterTour1: TMenuItem;
    N6: TMenuItem;
    Invoices3: TMenuItem;
    BoatInvoices1: TMenuItem;
    N7: TMenuItem;
    ourCategories1: TMenuItem;
    Vouchermanager1: TMenuItem;
    N8: TMenuItem;
    Reports1: TMenuItem;
    ransfer1: TMenuItem;
    Arrival1: TMenuItem;
    Departure1: TMenuItem;
    ExtraAccommodation1: TMenuItem;
    GroupTours1: TMenuItem;
    NoofPaxDeadlineforTickets1: TMenuItem;
    NameofPaxDeadlineforTickets1: TMenuItem;
    ChecklistforallTourDeadlines1: TMenuItem;
    FIT1: TMenuItem;
    icketConfirmations1: TMenuItem;
    N9: TMenuItem;
    Accommodation1: TMenuItem;
    N10: TMenuItem;
    Services3: TMenuItem;
    N11: TMenuItem;
    Coach3: TMenuItem;
    N12: TMenuItem;
    Packages3: TMenuItem;
    N13: TMenuItem;
    Invoice1: TMenuItem;
    CostingBlocks1: TMenuItem;
    SitList1: TMenuItem;
    N14: TMenuItem;
    DS1: TMenuItem;
    mnuMIS: TMenuItem;
    Profitability1: TMenuItem;
    AccommodationConfirmaton1: TMenuItem;
    N15: TMenuItem;
    PrintVouchersinRange1: TMenuItem;
    PrintSingleVouchersinRange1: TMenuItem;
    mnuHotelInfo1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    NumPaxonTours1: TMenuItem;
    mnuFitQuotations: TMenuItem;
    NumPaxonToursAgentwise1: TMenuItem;
    N18: TMenuItem;
    ours2: TMenuItem;
    N20: TMenuItem;
    EntryTaxes1: TMenuItem;
    ShortestDrive1: TMenuItem;
    mnuImports: TMenuItem;
    ImportTrains1: TMenuItem;
    N22: TMenuItem;
    ImportFlights1: TMenuItem;
    N23: TMenuItem;
    RouteFinder1: TMenuItem;
    N24: TMenuItem;
    rainExceptions1: TMenuItem;
    rains3: TMenuItem;
    N25: TMenuItem;
    Hops1: TMenuItem;
    ransportPointToPoint1: TMenuItem;
    ransportCityGroups1: TMenuItem;
    Costing1: TMenuItem;
    CityGroups1: TMenuItem;
    N29: TMenuItem;
    FITSlabs1: TMenuItem;
    LatitudesLongitudes1: TMenuItem;
    DefaultCarAgentPerKm1: TMenuItem;
    dxSkinController1: TdxSkinController;
    XPMenu1: TXPMenu;
    N31: TMenuItem;
    ipsoftheDay1: TMenuItem;
    N32: TMenuItem;
    odoList1: TMenuItem;
    N33: TMenuItem;
    CopyBackuptoTrialDatabase1: TMenuItem;
    AllArrivals2: TMenuItem;
    AllDepartures2: TMenuItem;
    RouteFinderTrial1: TMenuItem;
    N35: TMenuItem;
    PreferredRoutes1: TMenuItem;
    ransferCityPairs1: TMenuItem;
    Consultants1: TMenuItem;
    SectorwiseFares1: TMenuItem;
    N36: TMenuItem;
    LatitudesLongitudesStates1: TMenuItem;
    N37: TMenuItem;
    FixedItineraries1: TMenuItem;
    N38: TMenuItem;
    rackTrainSectors1: TMenuItem;
    Themes: TMenuItem;
    SubThemes1: TMenuItem;
    Regions1: TMenuItem;
    ReadyTours1: TMenuItem;
    Web1: TMenuItem;
    N39: TMenuItem;
    AllArrivalsVouchers1: TMenuItem;
    AllDeparturesVouchers1: TMenuItem;
    N41: TMenuItem;
    WebExport1: TMenuItem;
    N42: TMenuItem;
    FITContractRates1: TMenuItem;
    Accommodation2: TMenuItem;
    ItineraryIdesRiksja1: TMenuItem;
    N43: TMenuItem;
    ModuleQuotationsPresto1: TMenuItem;
    ModuleQuotationsWeb1: TMenuItem;
    x2: TMenuItem;
    Images1: TMenuItem;
    WebPages1: TMenuItem;
    rainCategoryClasses1: TMenuItem;
    N44: TMenuItem;
    rainExtraCharges1: TMenuItem;
    N45: TMenuItem;
    Accommodation3: TMenuItem;
    FITProfitability1: TMenuItem;
    N47: TMenuItem;
    WebPymtStatus1: TMenuItem;
    Currencies21: TMenuItem;
    PrincipalAgentCancellationPolicy1: TMenuItem;
    Cities21: TMenuItem;
    Services21: TMenuItem;
    Elements1: TMenuItem;
    N48: TMenuItem;
    Accounts21: TMenuItem;
    N30: TMenuItem;
    AllVouchersinCurrentFYnew1: TMenuItem;
    N19: TMenuItem;
    PrestoMnu: TMenuItem;
    Presto1: TMenuItem;
    rial1: TMenuItem;
    Web2: TMenuItem;
    Riksja: TMenuItem;
    N21: TMenuItem;
    rainDeadlineDays1: TMenuItem;
    N34: TMenuItem;
    HotelNights1: TMenuItem;
    MasterToursNew1: TMenuItem;
    Presto2: TMenuItem;
    Exclusions1: TMenuItem;
    CreditNotes1: TMenuItem;
    N46: TMenuItem;
    Elements2: TMenuItem;
    PrincipalAgentBoardCaptions1: TMenuItem;
    BillofSupply1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LoginBBClick(Sender: TObject);
    procedure CompanyConnectBBClick(Sender: TObject);
    procedure DivisionConnectBBClick(Sender: TObject);
    procedure FYConnectBBClick(Sender: TObject);
    procedure mnuExitClick(Sender: TObject);
    procedure CompanyCmbKeyPress(Sender: TObject; var Key: Char);
    procedure UsernameEditKeyPress(Sender: TObject; var Key: Char);
    procedure PasswordEditKeyPress(Sender: TObject; var Key: Char);
    procedure FinancialYearCmbKeyPress(Sender: TObject; var Key: Char);
    procedure DivisionCmbKeyPress(Sender: TObject; var Key: Char);
    procedure mnuLogoutClick(Sender: TObject);
    procedure ChangeUnit1Click(Sender: TObject);
    procedure ChangeCompany1Click(Sender: TObject);
    procedure ChangeFinancialYear1Click(Sender: TObject);
    procedure Airlines2Click(Sender: TObject);
    procedure RoomTypes1Click(Sender: TObject);
    procedure MealPlans1Click(Sender: TObject);
    procedure Class1Click(Sender: TObject);
    procedure Class2Click(Sender: TObject);
    procedure Automobiles1Click(Sender: TObject);
    procedure CentralTaxes1Click(Sender: TObject);
    procedure AircraftTypes1Click(Sender: TObject);
    procedure Categories1Click(Sender: TObject);
    procedure ExchangeRate1Click(Sender: TObject);
    procedure TrainCategories1Click(Sender: TObject);
    procedure axes1Click(Sender: TObject);
    procedure Class3Click(Sender: TObject);
    procedure CarHireAgents1Click(Sender: TObject);
    procedure Packages1Click(Sender: TObject);
    procedure rains2Click(Sender: TObject);
    procedure Stations1Click(Sender: TObject);
    procedure AccountHeads1Click(Sender: TObject);
    procedure Products1Click(Sender: TObject);
    procedure icketCharges1Click(Sender: TObject);
    procedure SupplementaryCharges1Click(Sender: TObject);
    procedure CacellationCharges1Click(Sender: TObject);
    procedure Distances1Click(Sender: TObject);
    procedure States1Click(Sender: TObject);
    procedure Countries1Click(Sender: TObject);
    procedure ickets2Click(Sender: TObject);
    procedure Packages2Click(Sender: TObject);
    procedure Accomodation2Click(Sender: TObject);
    procedure Display1Click(Sender: TObject);
    procedure Flight1Click(Sender: TObject);
    procedure Coach2Click(Sender: TObject);
    procedure rain1Click(Sender: TObject);
    procedure Ferry1Click(Sender: TObject);
    procedure mnuAddressBook1Click(Sender: TObject);
    procedure AllVouchers1Click(Sender: TObject);
    procedure Display2Click(Sender: TObject);
    procedure Display3Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure MasterTours2Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure MultiInvoices1Click(Sender: TObject);
    procedure AllVouchersByMasterTour1Click(Sender: TObject);
    procedure BoatInvoices1Click(Sender: TObject);
    procedure ourCategories1Click(Sender: TObject);
    procedure Arrival1Click(Sender: TObject);
    procedure Departure1Click(Sender: TObject);
    procedure ExtraAccommodation1Click(Sender: TObject);
    procedure NameofPaxDeadlineforTickets1Click(Sender: TObject);
    procedure NoofPaxDeadlineforTickets1Click(Sender: TObject);
    procedure ChecklistforallTourDeadlines1Click(Sender: TObject);
    procedure icketConfirmations1Click(Sender: TObject);
    procedure Coach3Click(Sender: TObject);
    procedure Services3Click(Sender: TObject);
    procedure CostingBlocks1Click(Sender: TObject);
    procedure Accommodation1Click(Sender: TObject);
    procedure SitList1Click(Sender: TObject);
    procedure Profitability1Click(Sender: TObject);
    procedure Users1Click(Sender: TObject);
    procedure Modules1Click(Sender: TObject);
    procedure AccommodationConfirmaton1Click(Sender: TObject);
    procedure NumPaxonTours1Click(Sender: TObject);
    procedure NumPaxonToursAgentwise1Click(Sender: TObject);
    procedure ours2Click(Sender: TObject);
    procedure EntryTaxes1Click(Sender: TObject);
    procedure ShortestDrive1Click(Sender: TObject);
    procedure ImportTrains1Click(Sender: TObject);
    procedure RouteFinder1Click(Sender: TObject);
    procedure rains3Click(Sender: TObject);
    procedure Hops1Click(Sender: TObject);
    procedure ransportPointToPoint1Click(Sender: TObject);
    procedure CityGroups1Click(Sender: TObject);
    procedure Costing1Click(Sender: TObject);
    procedure FITSlabs1Click(Sender: TObject);
    procedure LatitudesLongitudes1Click(Sender: TObject);
    procedure DefaultCarAgentPerKm1Click(Sender: TObject);
    procedure SetMenuSecurity(x_MenuItem: TMenuItem);
    procedure SetTopLevelMenuSecurity(x_MenuItem: TMenuItem);
    procedure Vouchermanager1Click(Sender: TObject);
    procedure PrintVouchersinRange1Click(Sender: TObject);
    procedure PrintSingleVouchersinRange1Click(Sender: TObject);
    procedure DS1Click(Sender: TObject);
    procedure ChangePassword1Click(Sender: TObject);
    procedure SetInactiveMenuInvisible(x_MenuItem: TMenuItem);
    procedure SetInactiveTopLevelMenuInvisible(x_MenuItem: TMenuItem);
    procedure FormActivate(Sender: TObject);
    procedure ipsoftheDay1Click(Sender: TObject);
    procedure odoList1Click(Sender: TObject);
    function TasksPending: integer;
    function DisplayToDo: boolean;
    procedure mnuHotelInfo1Click(Sender: TObject);
    procedure AllArrivals2Click(Sender: TObject);
    procedure AllDepartures2Click(Sender: TObject);
    procedure RouteFinderTrial1Click(Sender: TObject);
    procedure PreferredRoutes1Click(Sender: TObject);
    procedure ransferCityPairs1Click(Sender: TObject);
    procedure Consultants1Click(Sender: TObject);
    procedure SectorwiseFares1Click(Sender: TObject);
    procedure LatitudesLongitudesStates1Click(Sender: TObject);
    procedure ImportFlights1Click(Sender: TObject);
    procedure FixedItineraries1Click(Sender: TObject);
    procedure rackTrainSectors1Click(Sender: TObject);
    procedure ThemesClick(Sender: TObject);
    procedure SubThemes1Click(Sender: TObject);
    procedure Packages3Click(Sender: TObject);
    procedure Regions1Click(Sender: TObject);
    procedure ReadyTours1Click(Sender: TObject);
    procedure Web1Click(Sender: TObject);
    procedure AllArrivalsVouchers1Click(Sender: TObject);
    procedure AllDeparturesVouchers1Click(Sender: TObject);
    procedure WebExport1Click(Sender: TObject);
    procedure Accommodation2Click(Sender: TObject);
    procedure ItineraryIdesRiksja1Click(Sender: TObject);
    procedure ModuleQuotationsPresto1Click(Sender: TObject);
    procedure ModuleQuotationsWeb1Click(Sender: TObject);
    procedure x2Click(Sender: TObject);
    procedure Images1Click(Sender: TObject);
    procedure WebPages1Click(Sender: TObject);
    procedure rainCategoryClasses1Click(Sender: TObject);
    procedure rainExtraCharges1Click(Sender: TObject);
    procedure Accommodation3Click(Sender: TObject);
    procedure FITProfitability1Click(Sender: TObject);
    procedure WebPymtStatus1Click(Sender: TObject);
    procedure Currencies21Click(Sender: TObject);
    procedure PrincipalAgentCancellationPolicy1Click(Sender: TObject);
    procedure Cities21Click(Sender: TObject);
    procedure Services21Click(Sender: TObject);
    procedure Elements1Click(Sender: TObject);
    procedure Accounts21Click(Sender: TObject);
    procedure Invoices3Click(Sender: TObject);
    procedure AllVouchersinCurrentFYnew1Click(Sender: TObject);
    procedure Presto1Click(Sender: TObject);
    procedure rial1Click(Sender: TObject);
    procedure Web2Click(Sender: TObject);
    procedure RiksjaClick(Sender: TObject);
    procedure rainDeadlineDays1Click(Sender: TObject);
    procedure HotelNights1Click(Sender: TObject);
    procedure MasterToursNew1Click(Sender: TObject);
    procedure LoginGBClick(Sender: TObject);
    function GetDesktopPath(Sender: TObject): string;
    procedure Exclusions1Click(Sender: TObject);
    procedure CreditNotes1Click(Sender: TObject);
    procedure Elements2Click(Sender: TObject);
    procedure PrincipalAgentBoardCaptions1Click(Sender: TObject);
    procedure BillofSupply1Click(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayPrestoForm(x_option, x_MenuId: integer);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  g_companies_id, g_divisions_id, g_FinancialYears_id, g_LoginTypes_id: integer;
  g_DivisionFinYearTitle, g_ReportDir: String;
  g_FromYearMonth, g_ToYearMonth: integer;
  g_FromDate, g_ToDate: TDateTime;
  g_FromMonth, g_ToMonth: integer;
  g_FromYear, g_ToYear: integer;
  g_HostName, g_DatabaseName, g_UserName, g_Password, g_ConnectionName: string;
  g_SQLConnection: TSQLConnection;
  g_users_id: integer;
  g_superuser: boolean;
  g_Db_Path, g_DB_Cust_Dbf_Path, g_DB_Backup_Path: string;
  g_InvokeSubForm : Integer;
  g_TourLeaderForm_ModeType: integer;
  g_TourLeaderForm_FwdPeriodType: integer;
  g_TourLeaderForm_BackPeriodType: integer;
  g_TourLeaderForm_TourCodes_id: integer;
  g_TourLeaderForm_Masters_id: integer;
  g_TourLeaderForm_TourDepartureDates_id: integer;
  g_TourLeaderForm_MasterDepartureDates_id: integer;


implementation

uses BackOfficeDM, GeneralUt, AirlinesFm, RoomTypesFm,
  MealPlansFm, AutomobilesFm, CurrenciesFm,
  AircraftTypesFm, CategoriesFm, CurrDetailsFm, 
  CarHireAgentsFm, CustomMasterFm, ToursFm, TourCalendersFm,
  PackagesFm, Math, TourFamilyFm, TourDeparturesFm, TrainsFm,
  TrainStationsFm, ProductFm,
  AddressChargesFm, CancellationChargesFm, DistancesFm,
  StatesFm, CustomMaster1M2DFm, CustomMasterDetailFm, CustomMasterGridFm,
  CustomMasterLookupFm, WebTransferFm, CustomMasterPageControlFm, SelOprFm, CountryFm,
  BlockBkgTicketsFm, BlockBkgPackagesFm, BoQryFm,
  CustomMasterBlockBkgFm, BlockBkgRoomsFm, RptBookTransferArrivalAllPaFm, PrincipalAgentMultiFm,
  VouBillFm, MasterFm,
  TourItnDepFm, ItineraryFm, MasterTourFm, AirlinesClassFm,
  MasterCopyFm, ItinDepDatesFm, MultiInvoiceFm,
  ReportParameterFm, WebFm, MasterCategoriesFm, VoucherManagerFm,
  RptBookTransferArrivalFm, RptBookExtraAccFm, RptBookDeadLineFm,
  RptBookDeadLineToursFm, RptFitTravelConfirmFm, RegionFm, CarHireFm,
  CostingsFm, CostPackagesFm, RpSitListFm, TDSFm, MisProfitabilityFm,
  AdmUsersFm, ModulesFm, RptFitAccConfirmFm, RptPrintVouchersFm,
  RptSingleVoucherFm, ThemeFm, HotelsFm, RptBookTransferArrivalAllFm,
  RptNumPaxTourFm, TrackTrainSectorsFm, PrincipalAgentFm, MISTourFm,
  ShortestDriveFm, QuoCitywiseFm, FixedItinFm,
  ImportTrainsFm, RouteFinderFm, TicketExceptionsFm, HopExceptionsFm, CarHireP2PFm,
  CityGroupsFm, ImportFlightsFm, CarHireCityGroupFm, FitMarginFm, ImportFm, StateLatitudeFm,
  CityLatitudeFm, DefaultCarAgentFm, ChangePasswordFm, SplashScreen, TipsFm, ToDoFm,
  HotelPriceListFm, TrainWiseFaresFm, ImportDriveFm, RouteFinderTrialFm, PreferredRoutesFm,
  TransferCityPairsFm, TrainsMismatchFm, ConsultantsFm, SubThemesFm, FixedItinCityFm,
  QuoFixedRateAccommodationFm, QuoModulesFm, ImagesFm, WebPagesFm, Image2Fm, TrainCategoryClassFm,
  TrainExtraChargesFm,  MisAccommodationFm,  MisFitProfitabilityFm,  WebPymtStatusFm,  ExchangeRateFm,
  TaxFm,  CentralTaxFm,  AccountHeadFm,  AgentCancelPolicyFm,  SupplementChargesFm,  TrainCategoriesFm,
  CitiesFm,  ServiceFm,  AddrBookFm,  HotelFm,  ElementsFm,  ModuleElementsFm,
  AccountFm,
  InvoicesFm,
  EntryTaxFm,
  VoucherFm,
  TicketsFm,
  PrestoFm,
  CostSrvFm,
  CostAccFm,
  TicketDeadlineFm,
  HotelNightsFm,
  MasterToursFm,
  TicketClassExceptionsFm,
  CostPkgFm,
  QuoExclusionFm,
  QuoExclusionMastFm,
  AgentBoardNameFm,
  BookingsFm;

var
  x_StartUp: boolean;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
var
  MyBitmap: TBitmap;
  formatSettings : TFormatSettings;  
begin
 
  x_StartUp := True;

  dxSkinController1.UseSkins := true;

  g_TourLeaderForm_ModeType := -1;

  //Play Music
  //MediaPlayer1.Play;

  try
    MyBitmap:=TBitmap.Create;
    //MyBitmap.LoadFromFile('c:\sightseeing.bmp');
    //MyBitmap.LoadFromFile('c:\watermark.bmp');
    MyBitmap.LoadFromFile('c:\creek.bmp');

    MainForm.Brush.Bitmap := MyBitmap;

  except
  end;
                                                
  // Globals
  g_SQLConnection := BackOfficeDataModule.SQLConnection;
  g_Users_id := 0;

  //Date-Time formating
  formatSettings.DateSeparator := '/';
  //DateFullYear := True;
  //DateLeadZero := True;
  formatSettings.ShortDateFormat := 'dd/mm/yyyy';
  formatSettings.ShortTimeFormat := 'hh:mm';

  //Hide Menu
  mnuFile.Enabled := False;
  mnuMasters.Enabled := False;
  mnuBookings.Enabled := False;
  mnuTours.Enabled := False;
  mnuVouchers.Enabled := False;
  mnuAccounts.Enabled := False;
  mnuAdmin.Enabled := False;
  mnuAddressBook1.Enabled :=  False;
  mnuHotelInfo1.Enabled :=  False;
  mnuCosting1.Enabled := False;
  mnuMIS.Enabled := False;
  mnuFitQuotations.Enabled := False;
  mnuImports.Enabled := False;
  //mnuUtilities.Enabled := False;

  //Hide Toolbar
  ToolBar.Enabled := False;

  // Show Login Group Box
  LoginGB.Visible := True;
  CompanyGB.Visible := False;
  DivisionGB.Visible := False;
  FinancialYearGB.Visible := False;

  // Fill Divisions
  CompanySQLQry.Open; CompanyCDSQry.Open; CompanyCDSQry.First;
  DivisionSQLQry.Open; DivisionCDSQry.Open; DivisionCDSQry.First;
  FySQLQry.Open; FyCDSQry.Open; FyCDSQry.First;

  g_InvokeSubForm := 0;

  g_ReportDir := GetDesktopPath(nil) + '\BackOffice_Rpt';

  if not DirectoryExists(g_ReportDir) then
    begin
       CreateDir(g_ReportDir);
    end;
  
end;

procedure TMainForm.LoginBBClick(Sender: TObject);
var
  i: integer;
  GpSds: TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT AdmUsers_id FROM AdmUsers ' +
    'WHERE LTRIM(RTRIM(UserName)) = LTRIM(RTRIM(''' + UsernameEdit.Text + ''')) ' +
    'AND LTRIM(RTRIM(Pwd)) = LTRIM(RTRIM(''' + PasswordEdit.Text + ''')) ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;


  GpSds.Close;
  GpSds.CommandText := 'SELECT AdmUsers_id FROM AdmUsers ' +
    'WHERE LTRIM(RTRIM(Uid)) = LTRIM(RTRIM(''' + UsernameEdit.Text + ''')) ' +
    'AND LTRIM(RTRIM(Pwd)) = LTRIM(RTRIM(''' + PasswordEdit.Text + ''')) ';
  GpSds.Open;

  g_users_id := 0;
  if ((not GpSds.Eof) and (GpSds['AdmUsers_id']<>null)) then
    begin
      g_users_id := GpSds['AdmUsers_id'];
    end;

  if (g_users_id = 0) then
    begin
      ShowMessage ('Invalid login');
      PasswordEdit.SetFocus;
      exit;
    end;

  // Check if superuser and get defaults
  GpSds.Close;
  GpSds.CommandText := 'SELECT superuser, DefaultFinancialYears_id, ' +
    'DefaultLoginTypes_id, DefaultDivisions_id, DefaultCompanies_id FROM admusers ' +
    'WHERE admusers_id = ' + IntToStr(g_users_id) ;
  GpSds.Open;


  if (not GpSds.EOF) then
    begin

      // Superuser
      if (GpSds['superuser'] = True) then
        g_superuser := True
      else
        g_superuser := False;

      // Default Companies
      if (GpSds['DefaultCompanies_id'] <> null) then
        g_Companies_id := GpSds['DefaultCompanies_id']
      else
        g_Companies_id := 0;

      // Default Divisions
      if (GpSds['DefaultDivisions_id'] <> null) then
        g_Divisions_id := GpSds['DefaultDivisions_id']
      else
        g_Divisions_id := 0;

      // Default FY
      if (GpSds['DefaultFinancialYears_id'] <> null) then
        g_FinancialYears_id := GpSds['DefaultFinancialYears_id']
      else
        g_FinancialYears_id := 0;

      // Default Login Types
      if (GpSds['DefaultLoginTypes_id'] <> null) then
        g_LoginTypes_id := GpSds['DefaultLoginTypes_id']
      else
        g_LoginTypes_id := 0;

    end;

  GpSds.Free;

  CompanyGB.Visible := True;

  if (g_Companies_id > 0) then
    begin
      CompanyCmb.KeyValue := g_Companies_id;
      CompanyConnectBB.Setfocus;
      //*** Sep 2008
      CompanyConnectBB.Click;
    end
  else
    CompanyCmb.Setfocus;

  UsernameEdit.Text := '';
  PasswordEdit.Text := '';
  LoginGB.Visible := False;

  ToolBar.Enabled := True;

  if not g_Superuser then
    for i := 0 to MainMnu.Items.Count-1 do
      SetMenuSecurity(MainMnu.Items[i]);

  if not g_Superuser then
    for i := 0 to MainMnu.Items.Count-1 do
      SetTopLevelMenuSecurity(MainMnu.Items[i]);

  if not g_Superuser then
    for i := 0 to MainMnu.Items.Count-1 do
      SetInactiveMenuInvisible (MainMnu.Items[i]);

  if not g_Superuser then
    for i := 0 to MainMnu.Items.Count-1 do
      SetInactiveTopLevelMenuInvisible (MainMnu.Items[i]);

end;

procedure TMainForm.CompanyConnectBBClick(Sender: TObject);
var
  GPSQLQry: TSQLDataSet;
begin

  if (CompanyCmb.KeyValue = null) or (CompanyCmb.Keyvalue = 0) then
    raise Exception.create ('Cannot Connect');

  g_Companies_id := CompanyCmb.KeyValue;
  CompanyGB.Visible := False;
  UsernameEdit.Text := '';
  PasswordEdit.Text := '';

  // Update Default division
  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  if g_Companies_id > 0 then
    begin
      GPSQLQry.Close;
      GPSQLQry.CommandText := 'UPDATE AdmUsers SET DefaultCompanies_id = ' +
        IntToStr(g_Companies_id) + ' ' +
        'WHERE admusers_id = ' + IntToStr(g_users_id);
      GPSQLQry.ExecSQL;

      // Make Financial Years combo visible
      DivisionGB.Visible := True;

      if g_Divisions_id >= 0 then
        begin
          DivisionCmb.KeyValue := g_Divisions_id;
          DivisionConnectBB.SetFocus;
          // Sep 2008
          DivisionConnectBB.Click;
        end
      else
        DivisionCmb.Setfocus;

    end;


end;

procedure TMainForm.DivisionConnectBBClick(Sender: TObject);
var
  GPSQLQry: TSQLDataSet;
begin

  if (DivisionCmb.KeyValue = null) then
    raise Exception.create ('Cannot Connect');

  g_Divisions_id := DivisionCmb.KeyValue;
  DivisionGB.Visible := False;
  UsernameEdit.Text := '';
  PasswordEdit.Text := '';

  // Update Default division
  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  if g_Divisions_id >= 0 then
    begin

      GPSQLQry.Close;
      GPSQLQry.CommandText := 'UPDATE AdmUsers SET DefaultDivisions_id = ' +
        IntToStr(g_Divisions_id) + ' ' +
        'WHERE admusers_id = ' + IntToStr(g_users_id);
      GPSQLQry.ExecSQL;

      // Make Financial Years combo visible
      FinancialYearGB.Visible := True;

      if g_FinancialYears_id >= 0 then
        begin
          FinancialYearCmb.KeyValue := g_FinancialYears_id;
          FYConnectBB.SetFocus;
          FYConnectBB.Click;
        end
      else
        FinancialYearCmb.Setfocus;

    end;

end;

procedure TMainForm.FYConnectBBClick(Sender: TObject);
var
  GPSQLQry: TSQLDataSet;
begin

  if (FinancialYearCmb.KeyValue = null) or (FinancialYearCmb.Keyvalue = 0) then
    raise Exception.create ('Cannot Connect');

  g_FinancialYears_id := FinancialYearCmb.KeyValue;
  FinancialYearGB.Visible := False;
  UsernameEdit.Text := '';
  PasswordEdit.Text := '';

  // Update Default division
  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  // Check if superuser and get defaults
  if g_FinancialYears_id > 0 then
    begin
      GPSQLQry.Close;
      GPSQLQry.CommandText := 'UPDATE AdmUsers SET DefaultFinancialYears_Id = ' +
        IntToStr(g_FinancialYears_id) + ' ' +
        'WHERE admusers_id = ' + IntToStr(g_users_id);
      GPSQLQry.ExecSQL;
      FinancialYearGB.Visible := False;


      GPSQLQry.Close;
      GPSQLQry.CommandText := 'SELECT FromDate, ToDate FROM FinancialYears ' +
        'WHERE FinancialYears_id = ' + IntToStr(g_FinancialYears_id);
      GPSQLQry.Open;

      if (not GpSQLQry.EOF) then
        begin
          if GPSqlQry['FromDate'] <> null then
            g_FromDate := GPSqlQry['FromDate'];

          if GPSqlQry['ToDate'] <> null then
            g_ToDate := GPSqlQry['ToDate'];

        end;

    end;

  mnuFile.Enabled := True;
  mnuMasters.Enabled := True;
  mnuBookings.Enabled := True;
  mnuTours.Enabled := True;
  mnuVouchers.Enabled := True;
  mnuAccounts.Enabled := True;
  mnuAdmin.Enabled := True;
  //mnuUtilities.Enabled := True;
  mnuAddressBook1.Enabled :=  True;
  mnuHotelInfo1.Enabled :=  True;
  mnuCosting1.Enabled := True;
  mnuMIS.Enabled := True;
  mnuFitQuotations.Enabled := True;
  mnuImports.Enabled := True;
  ToolBar.Enabled := True;
  //g_DivisionFinYearTitle := '... '+DivisionQryDivision.Value;
  //Self.Caption := 'Accounts ' + g_DivisionFinYearTitle+' ( '+
  //              FinancialYearQryFinancialYear_Alias.Value+' )';

  GPSQLQry.Free;

  if (DisplayToDo) and (TasksPending > 0) then
    begin
      _TodoForm_Level := 4;

      if _TodoForm_Level < 1 then
        raise Exception.create ('Access Denied');

      if TodoForm = nil then
        Application.CreateForm(TTodoForm, TodoForm);
    end;


end;

function TMainForm.DisplayToDo: boolean;
var
  QueryString: string;
  x_todo: boolean;
  GpSds: TSQLDataSet;
begin

  x_todo := false;

  QueryString := 'SELECT boolean FROM Defaults WHERE item = ''ToDo'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['boolean'] <> null) then
    x_todo := GpSds['boolean'];

  GpSds.Free;

  Result := x_todo;

end;



function TMainForm.TasksPending: integer;
var
  QueryString: string;
  x_count: integer;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM Todo ' +
    'WHERE (Confirmed = 0) AND ((FromUsers_id = ' + IntToStr(g_users_id) + ') ' +
    ' OR (ToUsers_id = ' + IntToStr(g_users_id) + ')) ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


procedure TMainForm.mnuExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.CompanyCmbKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (Trim(CompanyCmb.Text) > '') then
    CompanyConnectBB.SetFocus;
end;

procedure TMainForm.UsernameEditKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (Trim(UsernameEdit.Text) > '') then
    PasswordEdit.SetFocus;
end;

procedure TMainForm.PasswordEditKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (Trim(PasswordEdit.Text) > '') then
    LoginBB.SetFocus;
end;

procedure TMainForm.FinancialYearCmbKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (Trim(FinancialYearCmb.Text) > '') then
    FYConnectBB.SetFocus;

end;

procedure TMainForm.DivisionCmbKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (Trim(DivisionCmb.Text) > '') then
    DivisionConnectBB.SetFocus;
end;

procedure TMainForm.mnuLogoutClick(Sender: TObject);
begin
  if self.MDIChildCount > 0 Then
    raise Exception.Create('Close all forms before Logging Off!!!');

  mnuFile.Enabled := False;
  mnuMasters.Enabled := False;
  mnuBookings.Enabled := False;
  mnuTours.Enabled := False;
  mnuVouchers.Enabled := False;
  mnuAccounts.Enabled := False;
  mnuAddressBook1.Enabled := False;
  mnuHotelInfo1.Enabled :=  False;
  mnuCosting1.Enabled := False;
  mnuAdmin.Enabled := False;
  mnuMIS.Enabled := False;
  mnuFitQuotations.Enabled := False;
  mnuImports.Enabled := False;  
  //mnuUtilities.Enabled := False;

  LoginGB.Visible := True;
  ToolBar.Enabled := False;
  g_users_id := 0;

  UsernameEdit.SetFocus;

end;

procedure TMainForm.ChangeUnit1Click(Sender: TObject);
begin
  DivisionGB.Visible := True;
end;

procedure TMainForm.ChangeCompany1Click(Sender: TObject);
begin
  CompanyGB.Visible := True;
end;

procedure TMainForm.ChangeFinancialYear1Click(Sender: TObject);
begin
  FinancialYearGB.Visible := True;
end;

procedure TMainForm.Airlines2Click(Sender: TObject);
begin
  AirlinesForm_Level := GetUserLevel(g_users_id, 2020);

  If AirlinesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AirlinesForm = nil then
    Application.CreateForm(TAirlinesForm,AirlinesForm);
end;

procedure TMainForm.RoomTypes1Click(Sender: TObject);
begin
  RoomTypesForm_Level := GetUserLevel(g_users_id, 2130);

  If RoomTypesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if RoomTypesForm = nil then
    Application.CreateForm(TRoomTypesForm,RoomTypesForm);
end;

procedure TMainForm.MealPlans1Click(Sender: TObject);
begin
  MealPlansForm_Level := GetUserLevel(g_users_id, 2140);

  If MealPlansForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MealPlansForm = nil then
    Application.CreateForm(TMealPlansForm,MealPlansForm);
end;

procedure TMainForm.Class1Click(Sender: TObject);
begin
  AirlinesClassForm_Level := GetUserLevel(g_users_id, 2090);

  If AirlinesClassForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  AirlinesClassForm_Tickets_id := 3;

  if AirlinesClassForm = nil then
    Application.CreateForm(TAirlinesClassForm, AirlinesClassForm);

end;

procedure TMainForm.Class2Click(Sender: TObject);
begin
  AirlinesClassForm_Level := GetUserLevel(g_users_id, 2030);

  If AirlinesClassForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  AirlinesClassForm_Tickets_id := 1;

  if AirlinesClassForm = nil then
    Application.CreateForm(TAirlinesClassForm, AirlinesClassForm);

end;

procedure TMainForm.Automobiles1Click(Sender: TObject);
begin
  AutomobilesForm_Level := GetUserLevel(g_users_id, 2170);

  If AutomobilesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

   if AutomobilesForm = nil then
    Application.CreateForm(TAutomobilesForm, AutomobilesForm);
end;

procedure TMainForm.CentralTaxes1Click(Sender: TObject);
begin
  CentralTaxForm_Level := GetUserLevel(g_users_id, 2300);

  If CentralTaxForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CentralTaxForm = nil then
    Application.CreateForm(TCentralTaxForm, CentralTaxForm);
end;

procedure TMainForm.AircraftTypes1Click(Sender: TObject);
begin

  AircraftTypesForm_Level := GetUserLevel(g_users_id, 2040);

  If AircraftTypesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AircraftTypesForm = nil then
    Application.CreateForm(TAircraftTypesForm, AircraftTypesForm);
end;

procedure TMainForm.Categories1Click(Sender: TObject);
begin
  CategoriesForm_Level := GetUserLevel(g_users_id, 2260);

  If CategoriesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CategoriesForm = nil then
    Application.CreateForm(TCategoriesForm, CategoriesForm);
end;

procedure TMainForm.ExchangeRate1Click(Sender: TObject);
begin
  ExchangeRateForm_Level := GetUserLevel(g_users_id, 2280);

  If ExchangeRateForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ExchangeRateForm = nil then
    Application.CreateForm(TExchangeRateForm, ExchangeRateForm);
end;

procedure TMainForm.TrainCategories1Click(Sender: TObject);
begin
  TrainCategoriesForm_Level := GetUserLevel(g_users_id, 2050);

  If TrainCategoriesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrainCategoriesForm = nil then
    Application.CreateForm(TTrainCategoriesForm, TrainCategoriesForm);
end;

procedure TMainForm.axes1Click(Sender: TObject);
begin
  TaxForm_Level := GetUserLevel(g_users_id, 2290);

  If TaxForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TaxForm = nil then
    Application.CreateForm(TTaxForm, TaxForm);
end;

procedure TMainForm.Class3Click(Sender: TObject);
begin
  AirlinesClassForm_Level := GetUserLevel(g_users_id, 2070);

  If AirlinesClassForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  AirlinesClassForm_Tickets_id := 2;

  if AirlinesClassForm = nil then
    Application.CreateForm(TAirlinesClassForm, AirlinesClassForm);

end;

procedure TMainForm.CarHireAgents1Click(Sender: TObject);
begin
  CarHireAgentsForm_Level := GetUserLevel(g_users_id, 2180);

  If CarHireAgentsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CarHireAgentsForm = nil then
    Application.CreateForm(TCarHireAgentsForm, CarHireAgentsForm);
end;

procedure TMainForm.Packages1Click(Sender: TObject);
begin
  _PackagesForm_level := GetUserLevel(g_users_id, 2160);

  If _PackagesForm_level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if PackagesForm = nil then
    Application.CreateForm(TPackagesForm, PackagesForm);
end;

procedure TMainForm.rains2Click(Sender: TObject);
begin
  TrainsForm_Level := GetUserLevel(g_users_id, 2060);

  If TrainsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrainsForm =  nil then
    Application.CreateForm(TTrainsForm, TrainsForm);
end;

procedure TMainForm.Stations1Click(Sender: TObject);
begin
  TrainStationsForm_Level := GetUserLevel(g_users_id, 2080);

  If TrainStationsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrainStationsForm = nil then
    Application.CreateForm(TTrainStationsForm, TrainStationsForm);
end;

procedure TMainForm.AccountHeads1Click(Sender: TObject);
begin
  AccountHeadForm_Level := GetUserLevel(g_users_id, 2310);

  If AccountHeadForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  AccountHeadForm_Companies_id := g_companies_id;

  if AccountHeadForm = nil then
    Application.CreateForm(TAccountHeadForm, AccountHeadForm);
    
end;

procedure TMainForm.Products1Click(Sender: TObject);
begin
  _ProductForm_Level := GetUserLevel(g_users_id, 2320);

  If _ProductForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if  ProductForm = nil then
    Application.CreateForm(TProductForm, ProductForm);
end;

procedure TMainForm.icketCharges1Click(Sender: TObject);
begin
  AddressChargesForm_Level := GetUserLevel(g_users_id, 2100);

  If AddressChargesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AddressChargesForm = nil then
    Application.CreateForm(TAddressChargesForm, AddressChargesForm);
end;

procedure TMainForm.SupplementaryCharges1Click(Sender: TObject);
begin
  SupplementChargesForm_Level := GetUserLevel(g_users_id, 2110);

  If SupplementChargesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if  SupplementChargesForm = nil then
    Application.CreateForm(TSupplementChargesForm, SupplementChargesForm);

end;

procedure TMainForm.CacellationCharges1Click(Sender: TObject);
begin
  CancellationChargesForm_Level := GetUserLevel(g_users_id, 2120);

  If CancellationChargesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CancellationChargesForm = nil then
    Application.CreateForm(TCancellationChargesForm, CancellationChargesForm);
end;

procedure TMainForm.Distances1Click(Sender: TObject);
begin
  DistancesForm_Level := GetUserLevel(g_users_id, 2230);

  If DistancesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if  DistancesForm = nil then
    Application.CreateForm(TDistancesForm, DistancesForm);
end;

procedure TMainForm.States1Click(Sender: TObject);
begin
  _StatesForm_Level := GetUserLevel(g_users_id, 2200);

  If _StatesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if StatesForm = nil then
    Application.CreateForm(TStatesForm,StatesForm);
end;

procedure TMainForm.Countries1Click(Sender: TObject);
begin
  CountryForm_Level := GetUserLevel(g_users_id, 2190);

  If CountryForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CountryForm = nil then
    Application.createform(TCountryForm,CountryForm);
end;

procedure TMainForm.ickets2Click(Sender: TObject);
begin
  _BlockBkgTicketsForm_level := GetUserLevel(g_users_id, 4050);

  If _BlockBkgTicketsForm_level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if BlockBkgTicketsForm = nil then
    Application.CreateForm(TBlockBkgTicketsForm, BlockBkgTicketsForm);
end;

procedure TMainForm.Packages2Click(Sender: TObject);
begin
  _BlockBkgPackagesForm_Level := GetUserLevel(g_users_id, 4070);

  If _BlockBkgPackagesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if BlockBkgPackagesForm = nil then
    Application.CreateForm(TBlockBkgPackagesForm, BlockBkgPackagesForm);
end;

procedure TMainForm.Accomodation2Click(Sender: TObject);
begin
  _BlockBkgRoomsForm_level := GetUserLevel(g_users_id, 4060);

  If _BlockBkgRoomsForm_level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if BlockBkgRoomsForm = nil then
    Application.CreateForm(TBlockBkgRoomsForm, BlockBkgRoomsForm);
end;

procedure TMainForm.Display1Click(Sender: TObject);
begin
  BookingsForm_Level := GetUserLevel(g_users_id, 3000);

  if BookingsForm_Level = 0 then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if BookingsForm = nil then
    Application.CreateForm(TBookingsForm, BookingsForm);

end;

procedure TMainForm.Flight1Click(Sender: TObject);
begin

  TicketsForm_Level := GetUserLevel(g_users_id, 9000);
  TicketsForm_FormType := 1;
  TicketsForm_Type := 1;

  If TicketsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  TicketsForm_FromCities_id := -1;
  TicketsForm_ToCities_id := -1;
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
     Application.CreateForm(TTicketsForm, TicketsForm);
end;

procedure TMainForm.Coach2Click(Sender: TObject);
begin

  TicketsForm_Level := GetUserLevel(g_users_id, 9000);
  TicketsForm_FormType := 1;
  TicketsForm_Type := 3;

  If TicketsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  TicketsForm_FromCities_id := -1;
  TicketsForm_ToCities_id := -1;
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
     Application.CreateForm(TTicketsForm, TicketsForm);
end;

procedure TMainForm.rain1Click(Sender: TObject);
begin

  TicketsForm_Level := GetUserLevel(g_users_id, 9000);
  TicketsForm_FormType := 1;
  TicketsForm_Type := 2;

  If TicketsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  TicketsForm_FromCities_id := -1;
  TicketsForm_ToCities_id := -1;
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
     Application.CreateForm(TTicketsForm, TicketsForm);

end;

procedure TMainForm.Ferry1Click(Sender: TObject);
begin

  TicketsForm_Level := GetUserLevel(g_users_id, 9000);
  TicketsForm_FormType := 1;
  TicketsForm_Type := 4;

  If TicketsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  TicketsForm_FromCities_id := -1;
  TicketsForm_ToCities_id := -1;
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
     Application.CreateForm(TTicketsForm, TicketsForm);

end;

procedure TMainForm.mnuAddressBook1Click(Sender: TObject);
begin

  AddrBookForm_Level := GetUserLevel(g_users_id, 7000);

  If AddrBookForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AddrBookForm = nil then
    Application.CreateForm(TAddrBookForm,AddrBookForm);

end;

procedure TMainForm.AllVouchers1Click(Sender: TObject);
begin

  _VouBillForm_Level := GetUserLevel(g_users_id, 5000);

  If _VouBillForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _VouBillForm_FromDate := VarToDateTime(_ret1[1]);
      _VouBillForm_ToDate := VarToDateTime(_ret2[1]);
      _VouBillForm_Type := 2;

      _VouBillForm_Level := GetUserLevel(g_users_id, 5000);
      If _VouBillForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if VouBillForm = nil then
         Application.CreateForm(TVouBillForm, VouBillForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TMainForm.Display2Click(Sender: TObject);
begin
  _MasterForm_Level := GetUserLevel(g_users_id, 4000);

  If _MasterForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

   if MasterForm = nil then
     Application.CreateForm(TMasterForm, MasterForm);
end;

procedure TMainForm.Display3Click(Sender: TObject);
var
  ItinCreateSds : TSQLDataSet;
begin

  _ItineraryForm_Level := GetUserLevel(g_users_id, 4030);

  If _ItineraryForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  // should be set Before Create of Form
  _ItinDepDatesForm_ModeType := 0;
  _ItinDepDatesForm_FwdPeriodType := 2;
  _ItinDepDatesForm_BackPeriodType := 2;

  if ItinDepDatesForm = nil then
    Application.CreateForm(TItinDepDatesForm, ItinDepDatesForm);
  ItinDepDatesForm.ShowModal;

  if ItinDepDatesForm.ModalResult = MrOk then
    begin
      _ItineraryForm_Level := GetUserLevel(g_users_id, 4030);
      If _ItineraryForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ItinCreateSds := TSQLDataSet.Create(nil);
      ItinCreateSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      ItinCreateSds.CommandText := '';
      ItinCreateSds.CommandText := 'Exec p_CreateItineraries '+IntToStr(_ItinDepDatesForm_Masters_id) + ','+
      ''''+ FormatDateTime('mm/dd/yyyy', _ItinDepDatesForm_MasterTourDate)+ ''' ';
      ItinCreateSds.ExecSQL;

      _ItineraryForm_Masters_id := _ItinDepDatesForm_Masters_id;
      _ItineraryForm_MasterCode := _ItinDepDatesForm_MasterCode;
      _ItineraryForm_MasterTourDate := _ItinDepDatesForm_MasterTourDate;

      if ItineraryForm = nil then
         Application.Createform(TItineraryForm, ItineraryForm);

      ItinCreateSds.Free;

      ItineraryForm.Show;

    end;

  ItinDepDatesForm.Free;
  ItinDepDatesForm := nil;

end;

procedure TMainForm.Copy1Click(Sender: TObject);
var
  x_Level, RetVal: integer;
begin
  x_Level := GetUserLevel(g_users_id, 4010);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterCopyForm = nil then
    Application.CreateForm(TMasterCopyForm, MasterCopyForm);

  MasterCopyForm.ShowModal;

  if MasterCopyForm.ModalResult = MrOk then
    begin
      CopyMastersSP.Params[1].Value := MasterCopyForm.cxFromMasterLCMB.EditValue;
      CopyMastersSP.Params[2].Value := MasterCopyForm.cxToMasterLCMB.EditValue;
      CopyMastersSP.ExecSQL(False);

      Retval := CopyMastersSP.Params[0].Value;

      if Retval = -100 then
        ShowMessage (MasterCopyForm.cxToMasterLCMB.Text + ' -- already has data. Delete this first.')
      else if Retval = -200 then
        ShowMessage (MasterCopyForm.cxToMasterLCMB.Text + ' -- does not have the same tours as ' +
           MasterCopyForm.cxFromMasterLCMB.Text + ' in the Tour Calendar')
      else
        ShowMessage (MasterCopyForm.cxFromMasterLCMB.Text + ' copied');

    end;

  MasterCopyForm.Free;
  MasterCopyForm := nil;


end;

procedure TMainForm.Delete2Click(Sender: TObject);
var
  ItinCreateSds : TSQLDataSet;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4040);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  // should be set Before Create of Form
  _ItinDepDatesForm_ModeType := 0;
  _ItinDepDatesForm_FwdPeriodType := 2;
  _ItinDepDatesForm_BackPeriodType := 2;

  if ItinDepDatesForm = nil then
    Application.CreateForm(TItinDepDatesForm, ItinDepDatesForm);
  ItinDepDatesForm.ShowModal;

  if ItinDepDatesForm.ModalResult = MrOk then
    begin
      _ItineraryForm_Level := GetUserLevel(g_users_id, 4040);
      If _ItineraryForm_Level < 3  Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;
      ItinCreateSds := TSQLDataSet.Create(nil);
      ItinCreateSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      ItinCreateSds.CommandText := '';
      ItinCreateSds.CommandText := 'Exec p_DeleteItineraries '+IntToStr(_ItinDepDatesForm_Masters_id) + ','+
      ''''+ FormatDateTime('mm/dd/yyyy', _ItinDepDatesForm_MasterTourDate)+ ''' ';
      ItinCreateSds.ExecSQL;

      ItinCreateSds.Free;

    end;

  ItinDepDatesForm.Free;
  ItinDepDatesForm := nil;

end;

procedure TMainForm.MasterTours2Click(Sender: TObject);
begin

  _MasterTourForm_Level := GetUserLevel(g_users_id, 2000);

  If _MasterTourForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterTourForm = nil then
    Application.CreateForm(TMasterTourForm, MasterTourForm);

end;

procedure TMainForm.Delete1Click(Sender: TObject);
var
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 4020);

  If x_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterCopyForm = nil then
    Application.CreateForm(TMasterCopyForm, MasterCopyForm);

  MasterCopyForm.Label1.Caption := 'Master Tour';
  MasterCopyForm.Label2.Visible := False;
  MasterCopyForm.cxToMasterLCMB.Visible := False;

  MasterCopyForm.ShowModal;

  if MasterCopyForm.ModalResult = MrOk then
    begin

      DeleteMastersSP.Params[1].Value := MasterCopyForm.cxFromMasterLCMB.EditValue;
      DeleteMastersSP.ExecSQL(False);
      ShowMessage (MasterCopyForm.cxFromMasterLCMB.Text + '  deleted');

    end;

  MasterCopyForm.Free;
  MasterCopyForm := nil;

end;

procedure TMainForm.MultiInvoices1Click(Sender: TObject);
begin
  _MultiInvoiceForm_Level := GetUserLevel(g_users_id, 6020);

  If _MultiInvoiceForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if _MultiInvoiceForm_Level = 0 then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if MultiInvoiceForm = nil then
    Application.CreateForm(TMultiInvoiceForm, MultiInvoiceForm);


end;

procedure TMainForm.AllVouchersByMasterTour1Click(Sender: TObject);
begin

  _VouBillForm_Level := GetUserLevel(g_users_id, 5010);

  If _VouBillForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  // should be set Before Create of Form
  _ItinDepDatesForm_DefaultType := 1;
  _ItinDepDatesForm_ModeType := 0;
  _ItinDepDatesForm_FwdPeriodType := 2;
  _ItinDepDatesForm_BackPeriodType := 2;

  if ItinDepDatesForm = nil then
    Application.CreateForm(TItinDepDatesForm, ItinDepDatesForm);
  ItinDepDatesForm.ShowModal;

  if ItinDepDatesForm.ModalResult = MrOk then
    begin

      _VouBillForm_MasterCode := _ItinDepDatesForm_MasterCode;;
      _VouBillForm_MasterDepDate := _ItinDepDatesForm_MasterTourDate;
      _VouBillForm_Type := 1;

      _VouBillForm_Level := GetUserLevel(g_users_id, 5010);
      If _VouBillForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if VouBillForm = nil then
         Application.CreateForm(TVouBillForm, VouBillForm);

    end;

  ItinDepDatesForm.Free;
  ItinDepDatesForm := nil;

end;

procedure TMainForm.BoatInvoices1Click(Sender: TObject);
var
  x_divisions_id: integer;
begin

  if g_companies_id <> 1 then
    raise Exception.Create ('Cannot make boat invoices for this company');

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  BackOfficeDataModule.CompanyCds.Locate ('companies_id',g_companies_id,[]);
  ReportParameterForm.cxCompanyLCMB.EditValue := g_companies_id;
  ReportParameterForm.Panel2.Enabled := False;

  x_divisions_id := 1;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      InvoicesForm_Companies_id:= g_companies_id;
      InvoicesForm_Divisions_id := x_divisions_id;

      InvoicesForm_FromDate := VarToDateTime(_ret1[1]);
      InvoicesForm_ToDate := VarToDateTime(_ret2[1]);
      InvoicesForm_Type := 2;
      InvoicesForm_InvoiceTypes_id :=1;

      InvoicesForm_Level := GetUserLevel(g_users_id, 6040);

      If InvoicesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if InvoicesForm = nil then
         Application.CreateForm(TInvoicesForm, InvoicesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;


end;

procedure TMainForm.ourCategories1Click(Sender: TObject);
begin

  MasterCategoriesForm_Level := GetUserLevel(g_users_id, 2010);

  If MasterCategoriesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterCategoriesForm = nil then
    Application.CreateForm(TMasterCategoriesForm,MasterCategoriesForm);

end;


procedure TMainForm.Arrival1Click(Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3020);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20002000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCityCkb.Enabled := False;
  ReportParameterForm.cxCityCkb.Checked := True;

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptBookTransferArrivalForm = nil then
        Application.CreateForm(TRptBookTransferArrivalForm, RptBookTransferArrivalForm);

      RptBookTransferArrivalForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptBookTransferArrivalForm.RptCds.Close;
      RptBookTransferArrivalForm.RptSds.Close;
      RptBookTransferArrivalForm.RptSds.CommandText :=
        'SELECT * FROM fn_Rpt_BookTransferArrival(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''', ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', ' +
        '1, null, ' + VarToStr(_ret1[5]) + ', ' + IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY [Date], ETA, Bookings_id ';
      RptBookTransferArrivalForm.RptSds.Open;
      RptBookTransferArrivalForm.RptCds.Open;

      RptBookTransferArrivalForm.CityLabel.DataField := 'ToCity';
      RptBookTransferArrivalForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookTransferArrivalForm.ArrivalLabel.Caption := 'Arrivals';

      RptBookTransferArrivalForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalForm.Release;
      RptBookTransferArrivalForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TMainForm.Departure1Click(Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3020);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20002000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCityCkb.Enabled := False;
  ReportParameterForm.cxCityCkb.Checked := True;

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;


      if RptBookTransferArrivalForm = nil then
        Application.CreateForm(TRptBookTransferArrivalForm, RptBookTransferArrivalForm);

      RptBookTransferArrivalForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptBookTransferArrivalForm.RptCds.Close;
      RptBookTransferArrivalForm.RptSds.Close;
      RptBookTransferArrivalForm.RptSds.CommandText :=
        'SELECT * FROM fn_Rpt_BookTransferArrival(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''', ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', ' +
        '2, ' + VarToStr(_ret1[5]) + ', null, ' + IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY [Date], ETA, Bookings_id ';
      RptBookTransferArrivalForm.RptSds.Open;
      RptBookTransferArrivalForm.RptCds.Open;

      RptBookTransferArrivalForm.CityLabel.DataField := 'FromCity';
      RptBookTransferArrivalForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookTransferArrivalForm.ArrivalLabel.Caption := 'Departures';

      RptBookTransferArrivalForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalForm.Release;
      RptBookTransferArrivalForm := nil;
    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TMainForm.ExtraAccommodation1Click(Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3030);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20000200';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxOrganisationCkb.Enabled := False;
  ReportParameterForm.cxOrganisationCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptBookExtraAccForm = nil then
        Application.CreateForm(TRptBookExtraAccForm, RptBookExtraAccForm);

      RptBookExtraAccForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptBookExtraAccForm.RptCds.Close;
      RptBookExtraAccForm.RptSds.Close;
      RptBookExtraAccForm.RptSds.CommandText :=
        'SELECT * FROM fn_Rpt_BookExtraAcc(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''', ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', ' +
        VarToStr(_ret1[6]) + ',' + IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY DateIn, RecType, Bookings_id ';
      RptBookExtraAccForm.RptSds.Open;
      RptBookExtraAccForm.RptCds.Open;

      RptBookExtraAccForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;

      RptBookExtraAccForm.QuickRep1.PreviewModal;

      RptBookExtraAccForm.Release;
      RptBookExtraAccForm := nil;
    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TMainForm.NameofPaxDeadlineforTickets1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_date_str: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3030);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20000000';

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;
  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;
  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptBookDeadLineForm = nil then
        Application.CreateForm(TRptBookDeadLineForm, RptBookDeadLineForm);

      x_date_str := FormatDateTime('mm/dd/yyyy',date);

      RptBookDeadLineForm.RptSds.Close;
      RptBookDeadLineForm.RptSds.CommandText :=
        'SELECT f.*, T.Details, C1.City AS fromCity, C2.City As ToCity, ' +
        'A.Organisation, A.City ' +
        'FROM fn_Rpt_DeadLineTickets (''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''',''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''',''' +
        x_date_str + ''', 2) f ' +
        'LEFT JOIN Tickets T ON f.Tickets_id = T.Tickets_id ' +
        'LEFT JOIN Cities C1 ON f.From_Cities_id = C1.Cities_id ' +
        'LEFT JOIN Cities C2 ON f.To_Cities_id = C2.Cities_id ' +
        'LEFT JOIN Addressbook A ON f.Addressbook_id = A.Addressbook_id ' +
        'ORDER BY Details, AdviceNamePaxBookDate ';
      RptBookDeadLineForm.RptSds.Active := True;
      RptBookDeadLineForm.RptCds.Active := True;
      RptBookDeadLineForm.RptCds.Refresh;

      RptBookDeadLineForm.NoPaxDbLabel.DataField := 'AdviceNamePaxBookDate';
      RptBookDeadLineForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookDeadLineForm.TitleLabel.Caption := 'Name of Pax Deadline Sheet';

      RptBookDeadLineForm.QuickRep1.PreviewModal;

      RptBookDeadLineForm.Release;
      RptBookDeadLineForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;

end;

procedure TMainForm.NoofPaxDeadlineforTickets1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_date_str: string;
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3040);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20000000';

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;
  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;
  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptBookDeadLineForm = nil then
        Application.CreateForm(TRptBookDeadLineForm, RptBookDeadLineForm);

      RptBookDeadLineForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      x_date_str := FormatDateTime('mm/dd/yyyy',date);

      RptBookDeadLineForm.RptSds.Close;
      RptBookDeadLineForm.RptSds.CommandText :=
        'SELECT f.*, T.Details, C1.City AS fromCity, C2.City As ToCity, ' +
        'A.Organisation, A.City ' +
        'FROM fn_Rpt_DeadLineTickets (''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''',''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''',''' +
        x_date_str + ''', 1,' + IntToStr(x_PrincipalAgents_id) + ') f ' +
        'LEFT JOIN Tickets T ON f.Tickets_id = T.Tickets_id ' +
        'LEFT JOIN Cities C1 ON f.From_Cities_id = C1.Cities_id ' +
        'LEFT JOIN Cities C2 ON f.To_Cities_id = C2.Cities_id ' +
        'LEFT JOIN Addressbook A ON f.Addressbook_id = A.Addressbook_id ' +
        'ORDER BY Details, AdviceNumPaxBookDate ';
      RptBookDeadLineForm.RptSds.Active := True;
      RptBookDeadLineForm.RptCds.Active := True;
      RptBookDeadLineForm.RptCds.Refresh;

      RptBookDeadLineForm.NoPaxDbLabel.DataField := 'AdviceNumPaxBookDate';
      RptBookDeadLineForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookDeadLineForm.TitleLabel.Caption := 'No. of Pax Deadline Sheet';

      RptBookDeadLineForm.QuickRep1.PreviewModal;

      RptBookDeadLineForm.Release;
      RptBookDeadLineForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;

end;

procedure TMainForm.ChecklistforallTourDeadlines1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3060);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20000000';

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date()+30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptBookDeadLineToursForm = nil then
        Application.CreateForm(TRptBookDeadLineToursForm, RptBookDeadLineToursForm);

      RptBookDeadLineToursForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptBookDeadLineToursForm.RptSds.CommandText :=
        'EXEC p_DeadlineTours ''' +
        FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret1[1])) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret2[1])) + ''',1, ' +
        IntToStr(x_PrincipalAgents_id);

      RptBookDeadLineToursForm.RptCds.Close;
      RptBookDeadLineToursForm.RptCds.Open;

      RptBookDeadLineToursForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + '  To  ' + VarToStr(_ret2[1]);

      RptBookDeadLineToursForm.QuickRep1.PreviewModal;

      RptBookDeadLineToursForm.Release;
      RptBookDeadLineToursForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;
  GPSds.Free;

end;

procedure TMainForm.icketConfirmations1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3070);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateEdit1.Date := Date()-30;
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptFitTravelConfirmForm = nil then
        Application.CreateForm(TRptFitTravelConfirmForm, RptFitTravelConfirmForm);

      RptFitTravelConfirmForm.RptSds.CommandText :=
        'EXEC p_DeadlineToursFIT ''' +
        FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret1[1])) + ''', 1 ';

      RptFitTravelConfirmForm.RptSds.Open;
      RptFitTravelConfirmForm.RptCds.Open;

      RptFitTravelConfirmForm.QuickRep1.PreviewModal;

      RptFitTravelConfirmForm.Release;
      RptFitTravelConfirmForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;
  GPSds.Free;

end;

procedure TMainForm.Coach3Click(Sender: TObject);
begin

  _CarHireForm_Level := GetUserLevel(g_users_id, 9060);

  If _CarHireForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CarHireForm = nil then
    Application.CreateForm(TCarHireForm, CarHireForm);

end;

procedure TMainForm.Services3Click(Sender: TObject);
begin
  CostSrvForm_Level := GetUserLevel(g_users_id, 9050);

  If CostSrvForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CostSrvForm = nil then
    Application.CreateForm(TCostSrvForm, CostSrvForm);


end;

procedure TMainForm.CostingBlocks1Click(Sender: TObject);
begin
  _CostingsForm_Level := GetUserLevel(g_users_id, 9110);

  If _CostingsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CostingsForm = nil then
    Application.CreateForm(TCostingsForm, CostingsForm);

end;

procedure TMainForm.Accommodation1Click(Sender: TObject);
begin
  CostAccForm_Level := GetUserLevel(g_users_id, 9040);

  If CostAccForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CostAccForm = nil then
    Application.CreateForm(TCostAccForm, CostAccForm);

end;

procedure TMainForm.SitList1Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
  x_TourCode, x_Tour: string;
  x_TourDate: TDateTime;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3010);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  // should be set Before Create of Form
  _ItinDepDatesForm_ModeType := 0;
  _ItinDepDatesForm_FwdPeriodType := 2;
  _ItinDepDatesForm_BackPeriodType := 1;

  if ItinDepDatesForm = nil then
    Application.CreateForm(TItinDepDatesForm, ItinDepDatesForm);

  ItinDepDatesForm.cxMasterCkb.Visible := False;

  ItinDepDatesForm.ShowModal;

  if ItinDepDatesForm.ModalResult = MrOk then
    begin

          x_TourCode := _ItinDepDatesForm_TourCode;
          x_TourDate := _ItinDepDatesForm_TourDate;

          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
          GpSds.CommandType := ctQuery;

          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
          GpSds.CommandText := 'SELECT Tour FROM TourCodes WHERE TourCode = ''' + x_TourCode + '''';
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
          RpSitListForm.BookingsClientsCds.Open;

          RpSitListForm.BookingsAccommodationCds.Close;
          RpSitListForm.BookingsAccommodationSds.Close;
          RpSitListForm.BookingsAccommodationSds.CommandText :=
          'SELECT BA.Bookings_id, A.City, A.Organisation, BA.singles,BA.doubles + COALESCE(BA.twins,0) AS doubles, ' +
          'COALESCE(BA.triples,0) AS Triples, COALESCE(BA.twins,0) AS Twins, RT.Roomtype,' +
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

  ItinDepDatesForm.Free;
  ItinDepDatesForm := nil;


end;


procedure TMainForm.AccommodationConfirmaton1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3080);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code added on 07 March 2006
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateEdit1.Date := Date()-30;
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptFitAccConfirmForm = nil then
        Application.CreateForm(TRptFitAccConfirmForm, RptFitAccConfirmForm);

      RptFitAccConfirmForm.RptSds.Close;
      RptFitAccConfirmForm.RptSds.CommandText :=
        'EXEC p_RptConfirmFITAcc ''' +
        FormatDateTime('mm/dd/yyyy',VarToDateTime(_ret1[1])) + ''', 1 ';
      RptFitAccConfirmForm.RptSds.Open;

      RptFitAccConfirmForm.RptCds.Close;
      RptFitAccConfirmForm.RptCds.Open;

      RptFitAccConfirmForm.QuickRep1.PreviewModal;

      RptFitAccConfirmForm.Release;
      RptFitAccConfirmForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;
  GPSds.Free;
end;


procedure TMainForm.NumPaxonTours1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
  GPSds: TSQLDataSet;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3090);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if RptNumPaxTourForm = nil then
        Application.CreateForm(TRptNumPaxTourForm, RptNumPaxTourForm);

      RptNumPaxTourForm.QRPrincipalAgentLabel.Caption := '';

      RptNumPaxTourForm.QRTitleLabel.Caption := 'No. of Pax on Tours between ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := g_SQLConnection;
      GPSds.CommandType := ctQuery;

      GPSds.Close;
      GPSds.CommandText := 'SELECT name FROM Companies WHERE Companies_id =  ' +
        IntToStr(g_Companies_id);
      GPSds.Open;

      if (not GpSds.EOF) and (GpSds['name']<>null) then
        RptNumPaxTourForm.QRCompanyLabel.Caption := GpSds['name'];

      GpSds.Free;

      RptNumPaxTourForm.NumPaxSds.Close;
      RptNumPaxTourForm.NumPaxSds.CommandText :=
        'SELECT bt.TourCode, tc.Tour, bt.TourDate, count(*) as NumPax ' +
        'FROM BookingsTours bt left join TourCodes tc on bt.TourCode = tc.TourCode ' +
        'LEFT JOIN Bookings b ON bt.Bookings_id = b.Bookings_id ' +
        'LEFT JOIN BookingsClients bc ON bc.Bookings_id = b.Bookings_id ' +
        'WHERE bt.tourDate between ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''' and  ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''' ' +
        'AND bt.CancelledByPax IS NULL ' +
        'GROUP BY bt.TourCode, tc.Tour, bt.TourDate ' +
        'ORDER BY bt.TourDate, bt.TourCode ';
      RptNumPaxTourForm.NumPaxSds.Open;

      RptNumPaxTourForm.NumPaxCds.Close;
      RptNumPaxTourForm.NumPaxCds.Open;

      RptNumPaxTourForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalAllForm.Free;
      RptBookTransferArrivalAllForm := nil;

    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;



end;

procedure TMainForm.NumPaxonToursAgentwise1Click(Sender: TObject);
var
  xYear,xMonth,xDay: Word;
  GPSds: TSQLDataSet;
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3100);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit2.Date := Date();

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptNumPaxTourForm = nil then
        Application.CreateForm(TRptNumPaxTourForm, RptNumPaxTourForm);

      RptNumPaxTourForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptNumPaxTourForm.QRTitleLabel.Caption := 'No. of Pax on Tours between ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit1.Date) + ' to ' +
            FormatDateTime('dd/mm/yyyy',ReportParameterForm.cxDateEdit2.Date);

      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := g_SQLConnection;
      GPSds.CommandType := ctQuery;

      GPSds.Close;
      GPSds.CommandText := 'SELECT name FROM Companies WHERE Companies_id =  ' +
        IntToStr(g_Companies_id);
      GPSds.Open;

      if (not GpSds.EOF) and (GpSds['name']<>null) then
        RptNumPaxTourForm.QRCompanyLabel.Caption := GpSds['name'];

      GpSds.Free;


      RptNumPaxTourForm.NumPaxSds.Close;
      RptNumPaxTourForm.NumPaxSds.CommandText :=
        'SELECT bt.TourCode, tc.Tour, bt.TourDate, count(*) as NumPax ' +
        'FROM BookingsTours bt left join TourCodes tc on bt.TourCode = tc.TourCode ' +
        'LEFT JOIN Bookings b ON bt.Bookings_id = b.Bookings_id ' +
        'LEFT JOIN BookingsClients bc ON bc.Bookings_id = b.Bookings_id ' +
        'LEFT JOIN TourDepartureDates DD ON Tc.TourCodes_id = DD.TourCodes_id AND Bt.TourDate = DD.TourDate ' +
        'LEFT JOIN TourCalendar tcal ON tc.TourCodes_id = tcal.TourCodes_id ' +
        'LEFT JOIN Masters m ON tcal.Masters_id = m.Masters_id ' +
        'LEFT JOIN MasterDepartureDates mdd ON m.Masters_id = mdd.Masters_id ' +
        'WHERE bt.tourDate between ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''' and  ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''' ' +
        'AND bt.CancelledByPax IS NULL ' +
        'AND DATEDIFF(d, DD.TourDate, MDD.TourDate) = tcal.DaysOffset ' +
        'AND m.Addressbook_id = ' + IntToStr(x_PrincipalAgents_id) + ' ' +
        'GROUP BY bt.TourCode, tc.Tour, bt.TourDate ' +
        'ORDER BY bt.TourDate, bt.TourCode ';
      RptNumPaxTourForm.NumPaxSds.Open;

      RptNumPaxTourForm.NumPaxCds.Close;
      RptNumPaxTourForm.NumPaxCds.Open;

      RptNumPaxTourForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalAllForm.Free;
      RptBookTransferArrivalAllForm := nil;

    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;


procedure TMainForm.EntryTaxes1Click(Sender: TObject);
begin

  EntryTaxForm_Level := GetUserLevel(g_users_id, 9120);

  EntryTaxForm_Level := 4;

  If EntryTaxForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if EntryTaxForm = nil then
    Application.CreateForm(TEntryTaxForm,EntryTaxForm);

end;

procedure TMainForm.ShortestDrive1Click(Sender: TObject);
begin
  _ShortestDriveForm_Level := GetUserLevel(g_users_id, 2240);

  If _ShortestDriveForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ShortestDriveForm = nil then
    Application.CreateForm(TShortestDriveForm, ShortestDriveForm);

end;

procedure TMainForm.ImportTrains1Click(Sender: TObject);
begin

  _ImportTrainsForm_Level := GetUserLevel(g_users_id, 13000);

  If _ImportTrainsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ImportTrainsForm = nil then
    Application.CreateForm(TImportTrainsForm, ImportTrainsForm);

end;

procedure TMainForm.RouteFinder1Click(Sender: TObject);
begin

  _RouteFinderForm_Level := GetUserLevel(g_users_id, 12010);

  If _RouteFinderForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _RouteFinderForm_Type := 1;
  _RouteFinderForm_Alternate := true;

  if RouteFinderForm = nil then
    Application.CreateForm(TRouteFinderForm, RouteFinderForm);

end;

procedure TMainForm.rains3Click(Sender: TObject);
begin

  _TicketExceptionsForm_Level := GetUserLevel(g_users_id, 12020);

  If _TicketExceptionsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _TicketExceptionsForm_Tickets_id := 2;

  if TicketExceptionsForm = nil then
    Application.CreateForm(TTicketExceptionsForm, TicketExceptionsForm);

end;

procedure TMainForm.Hops1Click(Sender: TObject);
begin

{
  _HopExceptionsForm_Level := GetUserLevel(g_users_id, 12030);

  If _HopExceptionsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if HopExceptionsForm = nil then
    Application.CreateForm(THopExceptionsForm, HopExceptionsForm);
}

  _TicketClassExceptionsForm_Level := GetUserLevel(g_users_id, 12030);

  If _TicketClassExceptionsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _TicketClassExceptionsForm_Tickets_id := 2;

  if TicketClassExceptionsForm = nil then
    Application.CreateForm(TTicketClassExceptionsForm, TicketClassExceptionsForm);


end;

procedure TMainForm.ransportPointToPoint1Click(Sender: TObject);
begin

  _CarHireP2PForm_Level := GetUserLevel(g_users_id, 9070);

  If _CarHireP2PForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CarHireP2PForm = nil then
    Application.CreateForm(TCarHireP2PForm, CarHireP2PForm);

end;

procedure TMainForm.CityGroups1Click(Sender: TObject);
begin

  _CityGroupsForm_Level := GetUserLevel(g_users_id, 9090);

  If _CityGroupsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CityGroupsForm = nil then
    Application.CreateForm(TCityGroupsForm, CityGroupsForm);

end;

procedure TMainForm.Costing1Click(Sender: TObject);
begin

  _CarHireCityGroupForm_Level := GetUserLevel(g_users_id, 9080);

  If _CarHireCityGroupForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CarHireCityGroupForm = nil then
    Application.CreateForm(TCarHireCityGroupForm, CarHireCityGroupForm);


end;

procedure TMainForm.FITSlabs1Click(Sender: TObject);
begin

  FitMarginForm_Level := GetUserLevel(g_users_id, 9130);

  If FitMarginForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FitMarginForm = nil then
    Application.CreateForm(TFitMarginForm,FitMarginForm);


end;

procedure TMainForm.LatitudesLongitudes1Click(Sender: TObject);
begin
  CityLatitudeForm_Level := GetUserLevel(g_users_id, 2220);

  If CityLatitudeForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CityLatitudeForm = nil then
    Application.CreateForm(TCityLatitudeForm,CityLatitudeForm);

end;

procedure TMainForm.DefaultCarAgentPerKm1Click(Sender: TObject);
begin

  DefaultCarAgentForm_Level := GetUserLevel(g_users_id, 2250);

  If DefaultCarAgentForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if DefaultCarAgentForm = nil then
    Application.CreateForm(TDefaultCarAgentForm, DefaultCarAgentForm);

end;

procedure TMainForm.SetMenuSecurity(x_MenuItem: TMenuItem);
var
  i: integer;
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  for i := 0 to x_MenuItem.Count-1 do
    begin

      if (x_MenuItem.Items[i].Count > 0) then
        begin
          SetMenuSecurity(x_MenuItem.Items[i]);
        end
      else if (x_MenuItem.Items[i].Tag = 0) and (x_MenuItem.Items[i].Count = 0) then
        begin
          if x_MenuItem.Items[i].Visible = True then
            x_MenuItem.Items[i].Visible := True;
        end
      else if (x_MenuItem.Items[i].Tag > 0) and (x_MenuItem.Items[i].Count = 0) then
        begin
          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
          GpSds.CommandType := ctQuery;

          x_QueryString := 'SELECT r.AdmLevel FROM AdmUserRights r, AdmModules m ' +
            'WHERE r.AdmUsers_id = ' + IntToStr(g_users_id) + ' ' +
            'AND r.AdmModules_id = m.AdmModules_id ' +
            'AND m.AdmModuleNo = ' + IntToStr(x_MenuItem.Items[i].Tag);

          GpSds.CommandText := x_QueryString;
          GpSds.Open;

          if (not GpSds.EOF) and (GpSds['AdmLevel'] <> null) and (GpSds['AdmLevel'] > 0) then
            x_MenuItem.Items[i].Visible := True
          else
            x_MenuItem.Items[i].Visible := False;

          GpSds.Free;
        end;

    end;

end;

procedure TMainForm.SetTopLevelMenuSecurity(x_MenuItem: TMenuItem);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  // Top Level Menu
  if (x_MenuItem.Tag > 0) then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      x_QueryString := 'SELECT r.AdmLevel FROM AdmUserRights r, AdmModules m ' +
        'WHERE r.AdmUsers_id = ' + IntToStr(g_users_id) + ' ' +
        'AND r.AdmModules_id = m.AdmModules_id ' +
        'AND m.AdmModuleNo = ' + IntToStr(x_MenuItem.Tag);

      GpSds.CommandText := x_QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['AdmLevel'] <> null) and (GpSds['AdmLevel'] > 0) then
        x_MenuItem.Visible := True
      else
        x_MenuItem.Visible := False;

      GpSds.Free;

    end;

end;

procedure TMainForm.SetInactiveMenuInvisible(x_MenuItem: TMenuItem);
var
  i, j, x_count: integer;
begin

  for i := 0 to x_MenuItem.Count-1 do
    begin

      if (x_MenuItem.Items[i].Count > 0) then
        begin
          SetInactiveMenuInvisible(x_MenuItem.Items[i]);
        end;

      if (x_MenuItem.Items[i].Count > 0) then
        begin

          x_count := 0;

          for j := 0 to x_MenuItem.Items[i].Count - 1 do
            begin
              if (x_MenuItem.Items[i].Items[j].Visible = false) or ((x_MenuItem.Items[i].Items[j].Tag = 0) and (x_MenuItem.Items[i].Items[j].Count = 0)) then
                x_count := x_count + 1;
            end;

          if x_MenuItem.Items[i].Count = x_count then
            x_MenuItem.Items[i].Visible := False;

        end;

    end;

end;

procedure TMainForm.SetInactiveTopLevelMenuInvisible(x_MenuItem: TMenuItem);
var
  j, x_count: integer;
begin

  // Top Level Menu
  if (x_MenuItem.Tag = 0) then
    begin

      x_count := 0;

      for j := 0 to x_MenuItem.Count - 1 do
        begin
          if (x_MenuItem.Items[j].Visible = false) or ((x_MenuItem.Items[j].Tag = 0) and (x_MenuItem.Items[j].Count = 0)) then
            x_count := x_count + 1;
        end;

      if x_MenuItem.Count = x_count then
        x_MenuItem.Visible := False;

    end;

end;


procedure TMainForm.Vouchermanager1Click(Sender: TObject);
begin

  _VoucherManagerForm_Level := GetUserLevel(g_users_id, 5020);

  If _VoucherManagerForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// _VoucherManagerForm_Level := 2;

  if VoucherManagerForm = nil then
    Application.CreateForm(TVoucherManagerForm, VoucherManagerForm);

end;

procedure TMainForm.PrintVouchersinRange1Click(Sender: TObject);
var
  yearref, min_no, max_no, x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 5030);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '00000022';

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
        'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (null, null,' +
        IntToStr(min_no) + ',' + IntToStr(max_no) + ',' + IntToStr(yearref) + ',3) ' +
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

procedure TMainForm.PrintSingleVouchersinRange1Click(Sender: TObject);
var
  yearref, min_no, max_no, x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 5040);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '00000022';

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
      RptSingleVoucherForm.PrintVouchersSds.CommandText :=
        'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (null, null,' +
        IntToStr(min_no) + ',' + IntToStr(max_no) + ',' + IntToStr(yearref) + ',3) ' +
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

procedure TMainForm.DS1Click(Sender: TObject);
var
  x_Year, x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 6010);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _TDSForm_YearRef := StrToInt(ReportParameterForm.YearEdit.Text);
      _TDSForm_Companies_id := g_companies_id;

      _TDSForm_Level := GetUserLevel(g_users_id, 6010);
      If _TDSForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if TdsForm = nil then
        Application.CreateForm(TTdsForm, TdsForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;


end;

procedure TMainForm.ChangePassword1Click(Sender: TObject);
begin

  _ChangePassForm_Level := GetUserLevel(g_Users_id, 10020);

  if _ChangePassForm_Level < 1 then
    raise Exception.create ('Access Denied');

  if ChangePasswordForm = nil then
    Application.CreateForm(TChangePasswordForm, ChangePasswordForm);


end;

procedure TMainForm.FormActivate(Sender: TObject);
begin

  if x_StartUp then
    begin
      x_StartUp := False;
      SplashScreenForm.Show;
    end;

end;

procedure TMainForm.ipsoftheDay1Click(Sender: TObject);
begin


  _TipsForm_Level := GetUserLevel(g_Users_id, 10040);

  if _TipsForm_Level < 1 then
    raise Exception.create ('Access Denied');

  if TipsForm = nil then
    Application.CreateForm(TTipsForm, TipsForm);


end;

procedure TMainForm.odoList1Click(Sender: TObject);
begin

  _TodoForm_Level := GetUserLevel(g_Users_id, 10050);

  if _TodoForm_Level < 1 then
    raise Exception.create ('Access Denied');

  if TodoForm = nil then
    Application.CreateForm(TTodoForm, TodoForm);

end;

procedure TMainForm.mnuHotelInfo1Click(Sender: TObject);
begin

  HotelForm_Level := GetUserLevel(g_users_id, 8000);

  If HotelForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if HotelForm = nil then
    Application.CreateForm(THotelForm,HotelForm);

end;

procedure TMainForm.AllArrivals2Click(Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3020);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20002000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCityCkb.Enabled := False;
  ReportParameterForm.cxCityCkb.Checked := True;

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptBookTransferArrivalAllForm = nil then
        Application.CreateForm(TRptBookTransferArrivalAllForm, RptBookTransferArrivalAllForm);

      RptBookTransferArrivalAllForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptBookTransferArrivalAllForm.RptCds.Close;
      RptBookTransferArrivalAllForm.RptSds.Close;
      RptBookTransferArrivalAllForm.RptSds.CommandText :=
        'SELECT * FROM fn_Rpt_BookTransferArrivalAll(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''', ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', ' +
        '1, null, ' + VarToStr(_ret1[5]) + ',' + IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY [Date], ETA, Bookings_id ';
      RptBookTransferArrivalAllForm.RptSds.Open;
      RptBookTransferArrivalAllForm.RptCds.Open;

      RptBookTransferArrivalAllForm.CityLabel.DataField := 'ToCity';
      RptBookTransferArrivalAllForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookTransferArrivalAllForm.ArrivalLabel.Caption := 'Arrivals';

      RptBookTransferArrivalAllForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalAllForm.Release;
      RptBookTransferArrivalAllForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TMainForm.AllDepartures2Click(Sender: TObject);
var
  x_PrincipalAgents_id: integer;
  x_PrincipalAgent: string;
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3020);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20002000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCityCkb.Enabled := False;
  ReportParameterForm.cxCityCkb.Checked := True;

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;


  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if PrincipalAgentForm = nil then
        Application.CreateForm(TPrincipalAgentForm, PrincipalAgentForm);

      PrincipalAgentForm.ShowModal;

      x_PrincipalAgents_id := PrincipalAgentForm.cxOrganisationLCMB.EditValue;
      x_PrincipalAgent := PrincipalAgentForm.cxOrganisationLCMB.Text;

      PrincipalAgentForm.Free;
      PrincipalAgentForm := nil;

      if RptBookTransferArrivalAllForm = nil then
        Application.CreateForm(TRptBookTransferArrivalAllForm, RptBookTransferArrivalAllForm);

      RptBookTransferArrivalAllForm.QRPrincipalAgentLabel.Caption := x_PrincipalAgent;

      RptBookTransferArrivalAllForm.RptCds.Close;
      RptBookTransferArrivalAllForm.RptSds.Close;
      RptBookTransferArrivalAllForm.RptSds.CommandText :=
        'SELECT * FROM fn_Rpt_BookTransferArrivalAll(''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1])) + ''', ''' +
        FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret2[1])) + ''', ' +
        '2, ' + VarToStr(_ret1[5]) + ', null,' + IntToStr(x_PrincipalAgents_id) + ') ' +
        'ORDER BY [Date], ETA, Bookings_id ';
      RptBookTransferArrivalAllForm.RptSds.Open;
      RptBookTransferArrivalAllForm.RptCds.Open;

      RptBookTransferArrivalAllForm.QRLabel5.Caption := 'To City';
      RptBookTransferArrivalAllForm.QRDBText12.DataField := 'ToCity';

      RptBookTransferArrivalAllForm.CityLabel.DataField := 'FromCity';
      RptBookTransferArrivalAllForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookTransferArrivalAllForm.ArrivalLabel.Caption := 'Departures';

      RptBookTransferArrivalAllForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalAllForm.Release;
      RptBookTransferArrivalAllForm := nil;
    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TMainForm.RouteFinderTrial1Click(Sender: TObject);
begin

  _RouteFinderTrialForm_Level := GetUserLevel(g_users_id, 12010);

  If _RouteFinderTrialForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _RouteFinderTrialForm_Type := 1;

  if RouteFinderTrialForm = nil then
    Application.CreateForm(TRouteFinderTrialForm, RouteFinderTrialForm);


end;

procedure TMainForm.PreferredRoutes1Click(Sender: TObject);
begin

  _PreferredRoutesForm_Level := GetUserLevel(g_users_id, 12030);

  If _PreferredRoutesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if PreferredRoutesForm = nil then
    Application.CreateForm(TPreferredRoutesForm, PreferredRoutesForm);


end;

procedure TMainForm.ransferCityPairs1Click(Sender: TObject);
begin
  TransferCityPairsForm_Level := GetUserLevel(g_users_id, 2220);

  If TransferCityPairsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TransferCityPairsForm = nil then
    Application.CreateForm(TTransferCityPairsForm,TransferCityPairsForm);


end;

procedure TMainForm.Consultants1Click(Sender: TObject);
begin

  ConsultantsForm_Level := GetUserLevel(g_users_id, 2255);

  If ConsultantsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ConsultantsForm = nil then
    Application.CreateForm(TConsultantsForm, ConsultantsForm);

end;

procedure TMainForm.SectorwiseFares1Click(Sender: TObject);
begin
  _TrainWiseFaresForm_Level := GetUserLevel(g_users_id, 2050);

  If _TrainWiseFaresForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrainWiseFaresForm = nil then
    Application.CreateForm(TTrainWiseFaresForm, TrainWiseFaresForm);

end;

procedure TMainForm.LatitudesLongitudesStates1Click(Sender: TObject);
begin
  StateLatitudeForm_Level := GetUserLevel(g_users_id, 2220);

  If StateLatitudeForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if StateLatitudeForm = nil then
    Application.CreateForm(TStateLatitudeForm,StateLatitudeForm);


end;

procedure TMainForm.ImportFlights1Click(Sender: TObject);
var
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 13000);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ImportFlightsForm = nil then
    Application.CreateForm(TImportFlightsForm, ImportFlightsForm);


end;

procedure TMainForm.FixedItineraries1Click(Sender: TObject);
begin

  _FixedItinCityForm_Level := GetUserLevel(g_users_id, 2200);

  _FixedItinCityForm_Type := 0;
  _FixedItinCityForm_Addressbook_id := 0;

  If _FixedItinCityForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FixedItinCityForm = nil then
    Application.CreateForm(TFixedItinCityForm,FixedItinCityForm);

{
  _FixedItinForm_Level := GetUserLevel(g_users_id, 2200);

  _FixedItinForm_Type := 0;

  If _FixedItinForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FixedItinForm = nil then
    Application.CreateForm(TFixedItinForm,FixedItinForm);
}

end;

procedure TMainForm.rackTrainSectors1Click(Sender: TObject);
begin
  TrackTrainSectorsForm_Level := GetUserLevel(g_users_id, 2080);

  If TrackTrainSectorsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrackTrainSectorsForm = nil then
    Application.CreateForm(TTrackTrainSectorsForm, TrackTrainSectorsForm);

end;

procedure TMainForm.ThemesClick(Sender: TObject);
begin

  ThemeForm_Level := GetUserLevel(g_users_id, 2200);

  If ThemeForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ThemeForm = nil then
    Application.CreateForm(TThemeForm,ThemeForm);


end;

procedure TMainForm.SubThemes1Click(Sender: TObject);
begin

  SubThemesForm_Level := GetUserLevel(g_users_id, 2200);

  If SubThemesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if SubThemesForm = nil then
    Application.CreateForm(TSubThemesForm,SubThemesForm);


end;

procedure TMainForm.Packages3Click(Sender: TObject);
begin

{
  _CostPackagesForm_Level := GetUserLevel(g_users_id, 9060);

  If _CostPackagesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CostPackagesForm = nil then
    Application.CreateForm(TCostPackagesForm, CostPackagesForm);
}

  CostPkgForm_Level := GetUserLevel(g_users_id, 9060);

  if CostPkgForm_Level = 0 then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if CostPkgForm = nil then
    Application.CreateForm(TCostPkgForm, CostPkgForm);

end;

procedure TMainForm.Regions1Click(Sender: TObject);
begin

  RegionForm_Level := GetUserLevel(g_users_id, 2200);

  If RegionForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if RegionForm = nil then
    Application.CreateForm(TRegionForm,RegionForm);


end;

procedure TMainForm.ReadyTours1Click(Sender: TObject);
begin

  _FixedItinCityForm_Level := GetUserLevel(g_users_id, 2200);

  _FixedItinCityForm_Type := 1;
  _FixedItinCityForm_Addressbook_id := 0;  

  If _FixedItinCityForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FixedItinCityForm = nil then
    Application.CreateForm(TFixedItinCityForm,FixedItinCityForm);


{
  _FixedItinForm_Level := GetUserLevel(g_users_id, 2200);

  _FixedItinForm_Type := 1;

  If _FixedItinForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FixedItinForm = nil then
    Application.CreateForm(TFixedItinForm,FixedItinForm);
}

end;

procedure TMainForm.Web1Click(Sender: TObject);
begin

  WebForm_Level := GetUserLevel(g_users_id, 2200);

  If WebForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if WebForm = nil then
    Application.CreateForm(TWebForm,WebForm);


end;

procedure TMainForm.AllArrivalsVouchers1Click(Sender: TObject);
var
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3020);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20002000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCityCkb.Enabled := False;
  ReportParameterForm.cxCityCkb.Checked := True;

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

//      if PrincipalAgentMultiForm = nil then
//        Application.CreateForm(TPrincipalAgentMultiForm, PrincipalAgentMultiForm);

//      PrincipalAgentMultiForm.ShowModal;

//      if _PrincipalAgentMultiForm_Addr_id_str > '' then
//        x_str := ' WHERE PrincipalAgents_id IN ' + _PrincipalAgentMultiForm_Addr_id_str + ' ';

//      x_PrincipalAgents_id := 0;

//      PrincipalAgentMultiForm.Free;
//      PrincipalAgentMultiForm := nil;

      if RptBookTransferArrivalAllPaForm = nil then
        Application.CreateForm(TRptBookTransferArrivalAllPaForm, RptBookTransferArrivalAllPaForm);

      RptBookTransferArrivalAllPaForm.RptCds.Close;
      RptBookTransferArrivalAllPaForm.RptSds.Close;

      RptBookTransferArrivalAllPaForm.RptSds.Params[0].Value := VarToDateTime(_ret1[1]);
      RptBookTransferArrivalAllPaForm.RptSds.Params[1].Value := VarToDateTime(_ret2[1]);
      RptBookTransferArrivalAllPaForm.RptSds.Params[2].Value := 1;
      RptBookTransferArrivalAllPaForm.RptSds.Params[3].Value := VarToStr(_ret1[5]);

      RptBookTransferArrivalAllPaForm.RptSds.Open;
      RptBookTransferArrivalAllPaForm.RptCds.Open;

      RptBookTransferArrivalAllPaForm.CityLabel.Caption := ReportParameterForm.cxCityLCMB.Text;
      RptBookTransferArrivalAllPaForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookTransferArrivalAllPaForm.ArrivalLabel.Caption := 'Arrivals';

      RptBookTransferArrivalAllPaForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalAllPaForm.Release;
      RptBookTransferArrivalAllPaForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TMainForm.AllDeparturesVouchers1Click(Sender: TObject);
var
  x_Level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3020);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

// Code addes on 12 Jan 2006
  _inputstr := '20002000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCityCkb.Enabled := False;
  ReportParameterForm.cxCityCkb.Checked := True;

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date() + 30;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

//      if PrincipalAgentMultiForm = nil then
//        Application.CreateForm(TPrincipalAgentMultiForm, PrincipalAgentMultiForm);

//      PrincipalAgentMultiForm.ShowModal;

//      if _PrincipalAgentMultiForm_Addr_id_str > '' then
//        x_str := ' WHERE PrincipalAgents_id IN ' + _PrincipalAgentMultiForm_Addr_id_str + ' ';

//      x_PrincipalAgents_id := 0;

//      PrincipalAgentMultiForm.Free;
//      PrincipalAgentMultiForm := nil;

      if RptBookTransferArrivalAllPaForm = nil then
        Application.CreateForm(TRptBookTransferArrivalAllPaForm, RptBookTransferArrivalAllPaForm);

      RptBookTransferArrivalAllPaForm.RptCds.Close;
      RptBookTransferArrivalAllPaForm.RptSds.Close;

      RptBookTransferArrivalAllPaForm.RptSds.Params[0].Value := VarToDateTime(_ret1[1]);
      RptBookTransferArrivalAllPaForm.RptSds.Params[1].Value := VarToDateTime(_ret2[1]);
      RptBookTransferArrivalAllPaForm.RptSds.Params[2].Value := 2;
      RptBookTransferArrivalAllPaForm.RptSds.Params[3].Value := VarToStr(_ret1[5]);

      RptBookTransferArrivalAllPaForm.RptSds.Open;
      RptBookTransferArrivalAllPaForm.RptCds.Open;

      RptBookTransferArrivalAllPaForm.CityLabel.Caption := ReportParameterForm.cxCityLCMB.Text;
      RptBookTransferArrivalAllPaForm.DateRangeLabel.Caption := VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;
      RptBookTransferArrivalAllPaForm.ArrivalLabel.Caption := 'Departures';

      RptBookTransferArrivalAllPaForm.QuickRep1.PreviewModal;

      RptBookTransferArrivalAllPaForm.Release;
      RptBookTransferArrivalAllPaForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TMainForm.WebExport1Click(Sender: TObject);
begin

  _WebTransferForm_Level := GetUserLevel(g_users_id, 2200);

  If _WebTransferForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if WebTransferForm = nil then
    Application.CreateForm(TWebTransferForm,WebTransferForm);


end;

procedure TMainForm.Accommodation2Click(Sender: TObject);
begin

  _QuoFixedRateAccommodationForm_Level := 4;

  If _QuoFixedRateAccommodationForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoFixedRateAccommodationForm = nil then
    Application.CreateForm(TQuoFixedRateAccommodationForm,QuoFixedRateAccommodationForm);

end;

procedure TMainForm.ItineraryIdesRiksja1Click(Sender: TObject);
begin

  _FixedItinCityForm_Level := GetUserLevel(g_users_id, 2200);

  _FixedItinCityForm_Type := 0;
  _FixedItinCityForm_Addressbook_id := 2137;

  If _FixedItinCityForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FixedItinCityForm = nil then
    Application.CreateForm(TFixedItinCityForm,FixedItinCityForm);

end;


procedure TMainForm.ModuleQuotationsPresto1Click(Sender: TObject);
begin

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _QuoModulesForm_FromDate := VarToDateTime(_ret1[1]);
      _QuoModulesForm_ToDate := VarToDateTime(_ret2[1]);
      _QuoModulesForm_Trial := 0;

      _QuoModulesForm_Level := GetUserLevel(g_users_id, 12300);

      If _QuoModulesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if QuoModulesForm = nil then
         Application.CreateForm(TQuoModulesForm, QuoModulesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;



end;

procedure TMainForm.ModuleQuotationsWeb1Click(Sender: TObject);
begin

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _QuoModulesForm_FromDate := VarToDateTime(_ret1[1]);
      _QuoModulesForm_ToDate := VarToDateTime(_ret2[1]);
      _QuoModulesForm_Trial := 2;

      _QuoModulesForm_Level := GetUserLevel(g_users_id, 12000);

      If _QuoModulesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if QuoModulesForm = nil then
         Application.CreateForm(TQuoModulesForm, QuoModulesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;


end;

procedure TMainForm.x2Click(Sender: TObject);
begin

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _QuoModulesForm_FromDate := VarToDateTime(_ret1[1]);
      _QuoModulesForm_ToDate := VarToDateTime(_ret2[1]);
      _QuoModulesForm_Trial := 1;

      _QuoModulesForm_Level := GetUserLevel(g_users_id, 12000);

      If _QuoModulesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if QuoModulesForm = nil then
         Application.CreateForm(TQuoModulesForm, QuoModulesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TMainForm.Images1Click(Sender: TObject);
begin

{
  _ImagesForm_Level := 4;

  If _ImagesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;
}

  if Image2Form = nil then
    Application.CreateForm(TImage2Form,Image2Form);

end;

procedure TMainForm.WebPages1Click(Sender: TObject);
begin

  WebPagesForm_Level := GetUserLevel(g_users_id, 2200);

  If WebPagesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if WebPagesForm = nil then
    Application.CreateForm(TWebPagesForm,WebPagesForm);

end;

procedure TMainForm.rainCategoryClasses1Click(Sender: TObject);
begin

  TrainCategoryClassForm_Level := GetUserLevel(g_users_id, 2200);

  If TrainCategoryClassForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrainCategoryClassForm = nil then
    Application.CreateForm(TTrainCategoryClassForm,TrainCategoryClassForm);

end;

procedure TMainForm.rainExtraCharges1Click(Sender: TObject);
begin

  TrainExtraChargesForm_Level := GetUserLevel(g_users_id, 2200);

  If TrainExtraChargesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TrainExtraChargesForm = nil then
    Application.CreateForm(TTrainExtraChargesForm,TrainExtraChargesForm);


end;

procedure TMainForm.Accommodation3Click(Sender: TObject);
begin

  if MisAccommodationForm = nil then
    Application.CreateForm(TMisAccommodationForm, MisAccommodationForm);

end;

procedure TMainForm.FITProfitability1Click(Sender: TObject);
begin
  if MisFitProfitabilityForm = nil then
    Application.CreateForm(TMisFitProfitabilityForm, MisFitProfitabilityForm);

end;

procedure TMainForm.WebPymtStatus1Click(Sender: TObject);
begin
  if WebPymtStatusForm = nil then
    Application.CreateForm(TWebPymtStatusForm, WebPymtStatusForm);

end;

procedure TMainForm.Currencies21Click(Sender: TObject);
begin
  CurrenciesForm_level := GetUserLevel(g_users_id, 2270);

  If CurrenciesForm_level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CurrenciesForm = nil then
    Application.CreateForm(TCurrenciesForm, CurrenciesForm);

end;

procedure TMainForm.PrincipalAgentCancellationPolicy1Click(
  Sender: TObject);
begin

  AgentCancelPolicyForm_Level := GetUserLevel(g_users_id, 2300);

  If AgentCancelPolicyForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AgentCancelPolicyForm = nil then
    Application.CreateForm(TAgentCancelPolicyForm, AgentCancelPolicyForm);


end;

procedure TMainForm.Cities21Click(Sender: TObject);
begin
  CitiesForm_Level := GetUserLevel(g_users_id, 2210);

  If CitiesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if CitiesForm = nil then
    Application.CreateForm(TCitiesForm, CitiesForm);

end;


procedure TMainForm.Services21Click(Sender: TObject);
begin

  ServiceForm_Level := GetUserLevel(g_users_id, 2150);

  if ServiceForm_Level = 0 then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

   if ServiceForm = nil then
    Application.CreateForm(TServiceForm, ServiceForm);

end;

procedure TMainForm.Elements1Click(Sender: TObject);
begin

  ModuleElementsForm_Level := 4;

  If ModuleElementsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ModuleElementsForm = nil then
    Application.CreateForm(TModuleElementsForm,ModuleElementsForm);

end;

procedure TMainForm.Accounts21Click(Sender: TObject);
begin

  AccountForm_Level := GetUserLevel(g_users_id, 6000);

  If AccountForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '02200000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxCompanyLCMB.EditValue := g_companies_id;
  ReportParameterForm.cxOfficeLCMB.EditValue := GetDefaultOffices_id(g_companies_id);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      AccountForm_Companies_id := _ret1[2];
      AccountForm_Offices_id := _ret1[3];

      AccountForm_Level := GetUserLevel(g_users_id, 6000);
      If AccountForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      AccountForm_FromDate := g_FromDate;
      AccountForm_ToDate := g_ToDate;

      if AccountForm = nil then
        Application.CreateForm(TAccountForm, AccountForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TMainForm.Invoices3Click(Sender: TObject);
var
  x_divisions_id: integer;
begin

  _inputstr := '22020000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  //BackOfficeDataModule.CompanyCds.Locate ('companies_id',g_companies_id,[]);
  ReportParameterForm.cxCompanyLCMB.EditValue := g_companies_id;
  ReportParameterForm.Panel2.Enabled := False;

  x_divisions_id := GetDefaultDivisions_id (g_companies_id);

  if x_divisions_id >= 0 then
    begin
      //BackOfficeDataModule.DivisionCds.Locate ('divisions_id',x_divisions_id,[]);
      ReportParameterForm.cxDivisionLCMB.EditValue := x_divisions_id;
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      InvoicesForm_Companies_id:= g_companies_id;
      InvoicesForm_Divisions_id := _ret1[4];
      InvoicesForm_Offices_id := 2;

      InvoicesForm_FromDate := VarToDateTime(_ret1[1]);
      InvoicesForm_ToDate := VarToDateTime(_ret2[1]);
      InvoicesForm_Type := 2;
      InvoicesForm_InvoiceTypes_id :=1;

      InvoicesForm_Level := GetUserLevel(g_users_id, 6030);

      If InvoicesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if InvoicesForm = nil then
         Application.CreateForm(TInvoicesForm, InvoicesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TMainForm.AllVouchersinCurrentFYnew1Click(Sender: TObject);
begin

  VoucherForm_Level := GetUserLevel(g_users_id, 5000);

  If VoucherForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      VoucherForm_Companies_id := g_companies_id;    
      VoucherForm_FromDate := VarToDateTime(_ret1[1]);
      VoucherForm_ToDate := VarToDateTime(_ret2[1]);
      VoucherForm_Type := 1;

      VoucherForm_Level := GetUserLevel(g_users_id, 5000);
      if VoucherForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if VoucherForm = nil then
         Application.CreateForm(TVoucherForm, VoucherForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TMainForm.DisplayPrestoForm(x_option, x_MenuId: integer);
begin

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      PrestoForm_Level := GetUserLevel(g_users_id, x_MenuId);
      PrestoForm_FromDate := VarToDateTime(_ret1[1]);
      PrestoForm_ToDate := VarToDateTime(_ret2[1]);
      PrestoForm_DataType := x_option;

      if PrestoForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if PrestoForm = nil then
         Application.CreateForm(TPrestoForm, PrestoForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;

end;

procedure TMainForm.Presto1Click(Sender: TObject);
begin
  DisplayPrestoForm(0, 12000);
end;

procedure TMainForm.rial1Click(Sender: TObject);
begin
  DisplayPrestoForm(1, 12000);
end;

procedure TMainForm.Web2Click(Sender: TObject);
begin
  DisplayPrestoForm(2, 12000);
end;

procedure TMainForm.RiksjaClick(Sender: TObject);
begin
  DisplayPrestoForm(3, 12000);
end;

procedure TMainForm.rainDeadlineDays1Click(Sender: TObject);
begin

  TicketDeadlineForm_Level := GetUserLevel(g_users_id, 2200);
  TicketDeadlineForm_Tickets_id := 2;
  
  If TicketDeadlineForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if TicketDeadlineForm = nil then
    Application.CreateForm(TTicketDeadlineForm,TicketDeadlineForm);

end;


procedure TMainForm.Users1Click(Sender: TObject);
begin
  _AdmUsersForm_Level := GetUserLevel(g_users_id, 10000);

  If _AdmUsersForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AdmUsersForm = nil then
    Application.CreateForm(TAdmUsersForm, AdmUsersForm);

end;

procedure TMainForm.Modules1Click(Sender: TObject);
begin
  _ModulesForm_Level := GetUserLevel(g_users_id, 10010);

  If _ModulesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ModulesForm = nil then
    Application.CreateForm(TModulesForm, ModulesForm);

end;

procedure TMainForm.ours2Click(Sender: TObject);
begin

  _MisTourForm_Level := GetUserLevel(g_users_id, 11000);

  _MisTourForm_Level := 4;

  If _MisTourForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MisTourForm = nil then
    Application.CreateForm(TMisTourForm,MisTourForm);


end;

procedure TMainForm.Profitability1Click(Sender: TObject);
var
  x_level: integer;
begin

  x_Level := GetUserLevel(g_users_id, 3010);

  If x_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MisProfitabilityForm = nil then
    Application.CreateForm(TMisProfitabilityForm, MisProfitabilityForm);

end;


procedure TMainForm.HotelNights1Click(Sender: TObject);
begin

  if HotelNightsForm = nil then
    Application.CreateForm(THotelNightsForm, HotelNightsForm);

end;

procedure TMainForm.MasterToursNew1Click(Sender: TObject);
begin

  MasterToursForm_Level := GetUserLevel(g_users_id, 2000);

  If MasterToursForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterToursForm = nil then
    Application.CreateForm(TMasterToursForm, MasterToursForm);


end;

procedure TMainForm.LoginGBClick(Sender: TObject);
begin
  if dxSkinController1.UseSkins = true then
    dxSkinController1.UseSkins := false
  else
    dxSkinController1.UseSkins := true;

end;

function TMainForm.GetDesktopPath(Sender: TObject): string;
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


procedure TMainForm.Exclusions1Click(Sender: TObject);
begin

  QuoExclusionMastForm_Level := 4;

  If QuoExclusionMastForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoExclusionMastForm = nil then
    Application.CreateForm(TQuoExclusionMastForm, QuoExclusionMastForm);

end;

procedure TMainForm.CreditNotes1Click(Sender: TObject);
var
  x_divisions_id: integer;
begin

  _inputstr := '22020000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  //BackOfficeDataModule.CompanyCds.Locate ('companies_id',g_companies_id,[]);
  ReportParameterForm.cxCompanyLCMB.EditValue := g_companies_id;
  ReportParameterForm.Panel2.Enabled := False;

  x_divisions_id := GetDefaultDivisions_id (g_companies_id);

  if x_divisions_id >= 0 then
    begin
      //BackOfficeDataModule.DivisionCds.Locate ('divisions_id',x_divisions_id,[]);
      ReportParameterForm.cxDivisionLCMB.EditValue := x_divisions_id;
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      InvoicesForm_Companies_id:= g_companies_id;
      InvoicesForm_Divisions_id := _ret1[4];
      InvoicesForm_Offices_id := 2;

      InvoicesForm_FromDate := VarToDateTime(_ret1[1]);
      InvoicesForm_ToDate := VarToDateTime(_ret2[1]);
      InvoicesForm_Type := 2;
      InvoicesForm_InvoiceTypes_id := 3;

      InvoicesForm_Level := GetUserLevel(g_users_id, 6030);

      If InvoicesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if InvoicesForm = nil then
         Application.CreateForm(TInvoicesForm, InvoicesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;


end;

procedure TMainForm.Elements2Click(Sender: TObject);
begin

  ElementsForm_Level := 4;

  If ElementsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ElementsForm = nil then
    Application.CreateForm(TElementsForm,ElementsForm);


end;

procedure TMainForm.PrincipalAgentBoardCaptions1Click(Sender: TObject);
begin

  AgentBoardNameForm_Level := GetUserLevel(g_users_id, 2300);

  If AgentBoardNameForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if AgentBoardNameForm = nil then
    Application.CreateForm(TAgentBoardNameForm, AgentBoardNameForm);


end;

procedure TMainForm.BillofSupply1Click(Sender: TObject);
var
  x_divisions_id: integer;
begin

  if g_companies_id <> 1 then
    raise Exception.Create ('Cannot make Bill of Supply for this company');

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  BackOfficeDataModule.CompanyCds.Locate ('companies_id',g_companies_id,[]);
  ReportParameterForm.cxCompanyLCMB.EditValue := g_companies_id;
  ReportParameterForm.Panel2.Enabled := False;

  x_divisions_id := 5;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      InvoicesForm_Companies_id:= g_companies_id;
      InvoicesForm_Divisions_id := x_divisions_id;

      InvoicesForm_FromDate := VarToDateTime(_ret1[1]);
      InvoicesForm_ToDate := VarToDateTime(_ret2[1]);
      InvoicesForm_Type := 2;
      InvoicesForm_InvoiceTypes_id :=4;

      InvoicesForm_Level := GetUserLevel(g_users_id, 6040);

      If InvoicesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if InvoicesForm = nil then
         Application.CreateForm(TInvoicesForm, InvoicesForm);

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;


end;

end.


