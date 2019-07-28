unit QuotationFitFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxDBLookupComboBox,
  cxButtonEdit, cxCheckBox, cxTimeEdit, FMTBcd, Menus,
  cxLookAndFeelPainters, cxTextEdit, cxGroupBox, cxRadioGroup, StdCtrls,
  cxButtons, DBClient, Provider, SqlExpr, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxNavigator, cxDBNavigator,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxContainer, cxLookupEdit,
  cxDBLookupEdit, cxSpinEdit, cxMemo, DateUtils, cxCurrencyEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TQuotationFitForm = class(TForm)
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    TourDateLbl: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    TourDateEdit: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxDBTextEdit2: TcxDBTextEdit;
    cxPageControl: TcxPageControl;
    cxAccommodationTab: TcxTabSheet;
    cxTravelTab: TcxTabSheet;
    cxSightSeeingTab: TcxTabSheet;
    cxTransferTab: TcxTabSheet;
    cxTransportTab: TcxTabSheet;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    MasterSds: TSQLDataSet;
    MasterDataSetProvider: TDataSetProvider;
    MasterDS: TDataSource;
    MasterCds: TClientDataSet;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsQuotationRef: TStringField;
    MasterCdsPaxName: TStringField;
    MasterCdsEmail: TStringField;
    MasterCdsEconomyPax: TBooleanField;
    MasterCdsTimePax: TBooleanField;
    MasterCdsNumPax: TIntegerField;
    MasterCdsNumSingles: TIntegerField;
    MasterCdsNumDoubles: TIntegerField;
    MasterCdsStartDate: TSQLTimeStampField;
    MasterCdsQuotationDate: TSQLTimeStampField;
    MasterCdsQuotationNo: TIntegerField;
    MasterCdsQuotationYearRef: TIntegerField;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    Label8: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox3: TcxDBCheckBox;
    Label9: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    MasterCdsMealPlans_id: TIntegerField;
    MasterCdsGuide: TBooleanField;
    MasterCdsTickets_id: TIntegerField;
    cxQuestionsTab: TcxTabSheet;
    cxSummaryTab: TcxTabSheet;
    Panel3: TPanel;
    cxStartCityGB: TcxGroupBox;
    Label11: TLabel;
    cxStartCityLCMB: TcxLookupComboBox;
    cxNextCityGB: TcxGroupBox;
    Label12: TLabel;
    cxNextCityLCMB: TcxLookupComboBox;
    cxSightSeeingGB: TcxGroupBox;
    Label13: TLabel;
    cxSightSeeingCmb: TcxComboBox;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxModeLCMB: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxButton3: TcxButton;
    GroupBox1: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    RoomTypeLcmb: TcxDBLookupComboBox;
    MealPlanLcmb: TcxDBLookupComboBox;
    ACchkbox: TcxDBCheckBox;
    cxDBTextEdit13: TcxDBTextEdit;
    HotelLcmb: TcxDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    ServiceLcmb: TcxDBLookupComboBox;
    cxDBTextEdit14: TcxDBTextEdit;
    GroupBox4: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBTimeEdit5: TcxDBTimeEdit;
    cxDBTimeEdit6: TcxDBTimeEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDistanceButton: TcxButton;
    GroupBox5: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    cxDBTextEdit24: TcxDBTextEdit;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLookupComboBox7: TcxLookupComboBox;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    Label33: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsQuotations_id: TIntegerField;
    AccCdsDayIn: TIntegerField;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsAC: TBooleanField;
    AccCdsRoomTypes_id: TIntegerField;
    AccCdsCities_id: TIntegerField;
    AccCdsMealPlans_id: TIntegerField;
    AccCdsCost: TFMTBCDField;
    AccCdsMasters_id: TStringField;
    AccCdsstatus: TIntegerField;
    AccCdsNights: TIntegerField;
    AccCdsHotelCities_id: TIntegerField;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    AccCdsAgentCities_id: TIntegerField;
    cxCreateitinerary: TcxButton;
    cxPrevButton: TcxButton;
    cxNextButton: TcxButton;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsRoomTypes_id: TIntegerField;
    RoomTypeCdsRoomType: TStringField;
    RoomTypeCdsAddressbook_id: TIntegerField;
    RoomTypeCdsAC: TBooleanField;
    RoomTypeDs: TDataSource;
    AccCdsLineNum: TIntegerField;
    cxHireCarGB: TcxGroupBox;
    cxHireCarCkb: TcxCheckBox;
    SightSds: TSQLDataSet;
    SightDsp: TDataSetProvider;
    SightCds: TClientDataSet;
    SightDs: TDataSource;
    SightCdsQuoServices_id: TIntegerField;
    SightCdsQuotations_id: TIntegerField;
    SightCdsCities_id: TIntegerField;
    SightCdsAgentAddressbook_id: TIntegerField;
    SightCdsServices_id: TIntegerField;
    SightCdsStartTime: TSQLTimeStampField;
    SightCdsAC: TBooleanField;
    SightCdsGuide: TBooleanField;
    SightCdsTransport: TBooleanField;
    SightCdsSightSeeing: TBooleanField;
    SightCdsPlace: TStringField;
    SightCdsTransferTypes_id: TIntegerField;
    SightCdsVehicles_id: TIntegerField;
    SightCdsServiceDay: TIntegerField;
    SightCdsServiceDate: TSQLTimeStampField;
    SightCdsNoOfVehicles: TIntegerField;
    SightCdsCost: TFMTBCDField;
    SightCdsMasters_id: TStringField;
    SightCdsFlightNo: TStringField;
    SightCdsstatus: TIntegerField;
    SightCdsLineNum: TIntegerField;
    ServiceCityLcmb: TcxDBLookupComboBox;
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesCdsservices_id: TIntegerField;
    ServicesCdsdescription: TStringField;
    ServicesCdsaddressbook_id: TIntegerField;
    ServicesCdscities_id: TIntegerField;
    ServicesDs: TDataSource;
    cxDeleteItinerary: TcxButton;
    cxDBCheckBox5: TcxDBCheckBox;
    MasterCdsNights: TIntegerField;
    MasterCdsEntranceFees: TBooleanField;
    SightCdsEntranceFees: TBooleanField;
    cxReqNextCityGB: TcxGroupBox;
    cxReqNextCityCkb: TcxCheckBox;
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
    TicketDs: TDataSource;
    TicketCdsQuoTickets_id: TIntegerField;
    TicketCdsQuotations_id: TIntegerField;
    TicketCdsCities_id: TIntegerField;
    TicketCdsAgentAddressbook_id: TIntegerField;
    TicketCdsTickets_id: TIntegerField;
    TicketCdsNoOfTickets: TIntegerField;
    TicketCdsTravelDate: TSQLTimeStampField;
    TicketCdsFrom_Cities_id: TIntegerField;
    TicketCdsTo_Cities_id: TIntegerField;
    TicketCdsFlightNo: TStringField;
    TicketCdsFrom_TrainStations_id: TIntegerField;
    TicketCdsTo_TrainStations_id: TIntegerField;
    TicketCdsClass_id: TIntegerField;
    TicketCdsETD: TSQLTimeStampField;
    TicketCdsETA: TSQLTimeStampField;
    TicketCdsTravelDay: TIntegerField;
    TicketCdsCost: TFMTBCDField;
    TicketCdsMasters_id: TStringField;
    TicketCdsstatus: TIntegerField;
    TicketCdsTrainNo: TStringField;
    TicketCdsLineNum: TIntegerField;
    ServicesCdsStartTime: TSQLTimeStampField;
    SightSeeingGB: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBTimeEdit4: TcxDBTimeEdit;
    cxDBCheckBox9: TcxDBCheckBox;
    GroupBox6: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    cxDBTextEdit26: TcxDBTextEdit;
    cxButton6: TcxButton;
    cxDBTimeEdit7: TcxDBTimeEdit;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    Panel4: TPanel;
    QuoLinesGrid: TcxGrid;
    QuoLinesGridDBTableView1: TcxGridDBTableView;
    QuoLinesGridLevel1: TcxGridLevel;
    QuoLinesSds: TSQLDataSet;
    QuoLinesDsp: TDataSetProvider;
    QuoLinesCds: TClientDataSet;
    QuoLinesDs: TDataSource;
    QuoLinesGridDBTableView1QuoLines_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1Quotations_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1LineNum: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoDate: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoString: TcxGridDBColumn;
    QuoLinesCdsQuoLines_id: TIntegerField;
    QuoLinesCdsQuotations_id: TIntegerField;
    QuoLinesCdsLineNum: TIntegerField;
    QuoLinesCdsQuoDate: TSQLTimeStampField;
    QuoLinesCdsCity: TStringField;
    QuoLinesCdsTrsType: TStringField;
    QuoLinesCdsQuoString: TStringField;
    QuoLinesCdsCar: TStringField;
    QuoLinesGridDBTableView1City: TcxGridDBColumn;
    QuoLinesGridDBTableView1Car: TcxGridDBColumn;
    QuoLinesGridDBTableView1Type: TcxGridDBColumn;
    Label14: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    MasterCdsDateOfArrival: TSQLTimeStampField;
    MasterCdsFlightNo: TStringField;
    MasterCdsPlaceFrom: TStringField;
    Label19: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label24: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    QuoLinesCdsCost: TFMTBCDField;
    QuoLinesGridDBTableView1Cost: TcxGridDBColumn;
    cxButton5: TcxButton;
    TransportSds: TSQLDataSet;
    TransportDsp: TDataSetProvider;
    TransportCds: TClientDataSet;
    TrasnportDs: TDataSource;
    TransportCdsQuoTransport_id: TIntegerField;
    TransportCdsQuotations_id: TIntegerField;
    TransportCdsFromPlace: TStringField;
    TransportCdsFromDate: TSQLTimeStampField;
    TransportCdsFromTime: TSQLTimeStampField;
    TransportCdsToPlace: TStringField;
    TransportCdsToDate: TSQLTimeStampField;
    TransportCdsToTime: TSQLTimeStampField;
    TransportCdsAddressbook_id: TIntegerField;
    TransportCdsAC: TBooleanField;
    TransportCdsDropOffDays: TIntegerField;
    TransportCdsVehicles_id: TIntegerField;
    TransportCdsNoOfVehicles: TIntegerField;
    TransportCdsKms: TIntegerField;
    TransportCdsDropOffKms: TIntegerField;
    TransportCdsFrom_Cities_id: TIntegerField;
    TransportCdsTo_Cities_id: TIntegerField;
    TransportCdscities_id: TIntegerField;
    TransportCdsTransportDay: TIntegerField;
    TransportCdsMasters_id: TIntegerField;
    TransportCdsstatus: TIntegerField;
    TransportCdsLineNum: TIntegerField;
    QuoLinesGridDBTableView1QuoTime: TcxGridDBColumn;
    QuoLinesCdsQuoTime: TSQLTimeStampField;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    QuoLinesCdsQuoStringPax: TStringField;
    QuoLinesGridDBTableView1QuoStringPax: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ComputeCarCosts1: TMenuItem;
    N1: TMenuItem;
    DisplayCostTrace1: TMenuItem;
    QuoLinesCdsNewCar: TIntegerField;
    cxDBTextEdit12: TcxDBTextEdit;
    MasterCdsPaxFirstName: TStringField;
    MasterCdsNumTriples: TIntegerField;
    Label25: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    MasterCdsCarHireAgents_id: TIntegerField;
    MasterCdsCarHireCities_id: TIntegerField;
    Label26: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label27: TLabel;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    Label35: TLabel;
    MasterCdsETA: TSQLTimeStampField;
    cxDBTimeEdit3: TcxDBTimeEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function GetNextQuoteNo (x_YearRef: integer): integer;
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxCreateitineraryClick(Sender: TObject);
    procedure SetQuestionTab(x_option: integer);
    function AreDetailsEntered: integer;
    procedure SetTabsInvisible;
    procedure cxNextButtonClick(Sender: TObject);
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    function GetNextLine(x_Quotations_id, x_LineNum: integer): integer;
    function GetLastLine(x_Quotations_id: integer): integer;
    procedure SightCdsAfterPost(DataSet: TDataSet);
    procedure SetupQuestions(x_QuoteMode: integer; x_QuestionType: integer);
    procedure SetupAccommodation(x_QuoteMode: integer; x_option: integer);
    procedure SetupSightSeeing(x_QuoteMode: integer; x_option: integer);
    procedure cxDeleteItineraryClick(Sender: TObject);
    procedure SightCdsBeforePost(DataSet: TDataSet);
    procedure SightCdsAfterInsert(DataSet: TDataSet);
    procedure cxDBLookupComboBox6PropertiesEditValueChanged(
      Sender: TObject);
    procedure SetupTravel(x_QuoteMode: integer; x_option: integer);
    procedure TicketCdsAfterPost(DataSet: TDataSet);
    procedure TicketCdsBeforePost(DataSet: TDataSet);
    procedure ServiceLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure TicketCdsAfterInsert(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    function GetCityName(x_cities_id: integer): string;
    procedure cxButton4Click(Sender: TObject);
    procedure UpdateQuoLines (x_TrsType,x_LineNum: integer;x_Date: TDateTime);
    procedure DeleteQuotation;
    procedure CreateQuotation (x_mode: integer);
    procedure SetDefaultRoomType;
    procedure cxButton5Click(Sender: TObject);
    procedure InsertAutoTransfer(x_TransferTypes_id: integer);
    procedure TransportCdsAfterPost(DataSet: TDataSet);
    procedure TransportCdsBeforePost(DataSet: TDataSet);
    procedure SetupDrive(x_QuoteMode: integer; x_option: integer);
    function GetTime(x_Date: TDateTime; x_FromCities_id, x_ToCities_id: integer): TDateTime;
    procedure cxModeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure GetStartTime;
    function SightSeeingPossible: boolean;
    function SightSeeingValidOnDay: boolean;
    procedure ComputeCarCosts1Click(Sender: TObject);
    procedure DisplayCostTrace1Click(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure QuoLinesRefresh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationFitForm: TQuotationFitForm;
  _QuotationFitForm_FromDate, _QuotationFitForm_ToDate: TDateTime;
  _QuotationFitForm_Level: integer;

implementation

uses BackOfficeDM, GeneralUt, FlightSectorFm, QuoLineCostTraceFm;

var
  MasterCds_State: TDataSetState;
  AccCds_State, SightCds_State, TicketCds_State: TDataSetState;
  xg_QuoteMode: integer;
  xg_QuotationLineNum: integer;
  xg_FromCities_id: integer;
  xg_CurrentCities_id: integer;
  xg_FromCity: string;
  xg_CurrentCity: string;
  xg_CarMode: boolean;
  xg_DataEntryMode: integer;
  xg_Date: TDateTime;
  xg_Time: TDateTime;

{$R *.dfm}

procedure TQuotationFitForm.FormCreate(Sender: TObject);
begin

  MasterCds.Active := False;

  MasterCds.Active := False;
  MasterCds.Filter := '(QuotationDate >= ''' + FormatDateTime('dd/mm/yyyy',_QuotationFitForm_FromDate) + ''' ' +
        ' AND QuotationDate <= ''' + FormatDateTime('dd/mm/yyyy',_QuotationFitForm_ToDate) + ''')';
  MasterCds.Filtered := True;

  MasterCds.Active := True;
  AccCds.Active := True;
  SightCds.Active := True;
  TicketCds.Active := True;
  TransportCds.Active := True;
  HotelCds.Active := True;
  RoomTypeCds.Active := True;
  ServicesCds.Active := True;
  ClassCds.Active := True;
  CitiesCds.Active := True;

  BackOfficeDataModule.MealPlanCds.Open;
  BackOfficeDataModule.TicketsCds.Open;
  BackOfficeDataModule.CitiesCds.Open;
  BackOfficeDataModule.TicketsCds.Open;
  BackOfficeDataModule.ClassCds.Open;
  BackOfficeDataModule.AgentCds.Open;

  SetTabsInvisible;

  Width := 970;
  Height := 650;

end;

procedure TQuotationFitForm.FormDestroy(Sender: TObject);
begin
  QuotationFitForm := nil;
end;

procedure TQuotationFitForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQuotationFitForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  MasterCds['TimePax'] := True;
  MasterCds['EconomyPax'] := True;
  MasterCds['NumPax'] := 3;
  MasterCds['NumSingles'] := 1;
  MasterCds['NumDoubles'] := 1;
  MasterCds['NumTriples'] := 0;
  MasterCds['StartDate'] := Date();
  MasterCds['QuotationDate'] := Date();
  MasterCds['Guide'] := True;
  MasterCds['EntranceFees'] := True;
  MasterCds['Tickets_id'] := 1;

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

end;

procedure TQuotationFitForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['QuotationDate'] = Null then
    Raise Exception.Create('Enter the Quotation Date');

  if MasterCds['StartDate'] = Null then
    Raise Exception.Create('Enter the Start Date');

  if MasterCds['CarHireAgents_id'] = null then
    MasterCds['CarHireAgents_id'] := 2170;

  if MasterCds['CarHireCities_id'] = null then
    MasterCds['CarHireCities_id'] := 176;

  MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    begin
      MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef']);
      MasterCds['Quotations_id'] := GetNextId('Quotations','Quotations_id');
    end;

end;

function TQuotationFitForm.GetNextQuoteNo (x_YearRef: integer): integer;
var
  x_NextQuoteNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT MAX(QuotationNo) AS NextQuoteNo FROM Quotations ' +
    'WHERE QuotationYearRef = ' + IntToStr(x_YearRef);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['NextQuoteNo'] <> null) then
    x_NextQuoteNo := GpSds['NextQuoteNo']+1
  else
    x_NextQuoteNo := 1;

  GpSds.Free;

  Result := x_NextQuoteNo;

end;


procedure TQuotationFitForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TQuotationFitForm.cxCreateitineraryClick(Sender: TObject);
begin
   CreateQuotation (1);
   cxNextButton.Visible := True;
end;

procedure TQuotationFitForm.CreateQuotation (x_mode: integer);
var
  x_DetailsEntered, x_TrsType: integer;
begin

  if x_Mode = 1 then
    begin
      if MessageDlg ('This will delete the earlier entries. Do you want to continue?',
        mtWarning, [mbYes, mbNo], 0) <> mrYes then
        exit;

      DeleteQuotation;

      xg_QuotationLineNum := 0;
    end;

  x_DetailsEntered := AreDetailsEntered;

  QuoLinesRefresh;

  if x_DetailsEntered = 0 then
    begin
      xg_DataEntryMode := 0;
      xg_Date := MasterCds['StartDate'];
      SetupQuestions(0,1);
    end
  else
    begin
      xg_DataEntryMode := 1;
      x_TrsType := GetNextLine(MasterCds['Quotations_id'], 0);

      if x_TrsType = 1 then
        begin
          SetupTravel(42,2);
        end
      else if x_TrsType = 2 then
        begin
          SetupAccommodation(12,2);
        end
      else if x_TrsType = 3 then
        begin
          SetupSightSeeing(22,2);
        end;

    end;

end;


procedure TQuotationFitForm.SetupQuestions(x_QuoteMode: integer; x_QuestionType: integer);
begin

  SetTabsInvisible;
  cxQuestionsTab.TabVisible := True;
  cxQuestionsTab.Visible := True;
  SetQuestionTab(x_QuestionType);
  xg_QuoteMode := x_QuoteMode;

end;

procedure TQuotationFitForm.SetTabsInvisible;
begin
  cxAccommodationTab.TabVisible := False;
  cxTravelTab.TabVisible := False;
  cxSightSeeingTab.TabVisible := False;
  cxTransferTab.TabVisible := False;
  cxTransportTab.TabVisible := False;
  cxQuestionsTab.TabVisible := False;
  cxSummaryTab.TabVisible := False;

  cxAccommodationTab.Visible := False;
  cxTravelTab.Visible := False;
  cxSightSeeingTab.Visible := False;
  cxTransferTab.Visible := False;
  cxTransportTab.Visible := False;
  cxQuestionsTab.Visible := False;
  cxSummaryTab.Visible := False;

end;


procedure TQuotationFitForm.SetQuestionTab(x_option: integer);
begin

  cxStartCityGB.Visible := False;
  cxNextCityGB.Visible := False;
  cxSightSeeingGB.Visible := False;
  cxHireCarGB.Visible := False;
  cxReqNextCityGB.Visible := False;

  if x_option = 1 then
    cxStartCityGB.Visible := True
  else if x_option = 2 then
    cxNextCityGB.Visible := True
  else if x_option = 3 then
    cxSightSeeingGB.Visible := True
  else if x_option = 4 then
    begin
      //cxTravelGB.Visible := True;
      cxHireCarGB.Visible := True;
      if xg_CarMode = True then
        cxHireCarCkb.Caption := 'I would like to continue with the same car from ' +
          xg_FromCity + ' to ' + xg_CurrentCity
      else
        cxHireCarCkb.Caption := 'I would like to hire a car here to go from ' +
          xg_FromCity + ' to ' + xg_CurrentCity;
    end
  else if x_option = 5 then
    cxHireCarGB.Visible := True
  else if x_option = 6 then
    cxReqNextCityGB.Visible := True;

end;

function TQuotationFitForm.GetNextLine(x_Quotations_id, x_LineNum: integer): integer;
var
  x_TrsType: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT LineNum, TrsType FROM ' +
    'fn_NextQuotationLine (' + IntToStr(x_Quotations_id) + ',' +
    IntToStr(x_LineNum) + ',1)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['TrsType'] <> null) then
    x_TrsType := GpSds['TrsType']
  else
    x_TrsType := 0;

  if x_TrsType > 0 then
    begin
      if (not GpSds.EOF) and (GpSds['LineNum'] <> null) then
        xg_QuotationLineNum := GpSds['LineNum']
      else
        xg_QuotationLineNum := 0;
    end;

  GpSds.Free;

  Result := x_TrsType;

end;

function TQuotationFitForm.GetLastLine(x_Quotations_id: integer): integer;
var
  x_TrsType: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT LineNum, TrsType FROM ' +
    'fn_LastQuotationLine (' + IntToStr(x_Quotations_id) + ',1)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['TrsType'] <> null) then
    x_TrsType := GpSds['TrsType']
  else
    x_TrsType := 0;

  if x_TrsType > 0 then
    begin
      if (not GpSds.EOF) and (GpSds['LineNum'] <> null) then
        xg_QuotationLineNum := GpSds['LineNum']
      else
        xg_QuotationLineNum := 0;
    end;

  GpSds.Free;

  Result := x_TrsType;

end;




function TQuotationFitForm.AreDetailsEntered: integer;
var
  x_DetailsEntered: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_AreQuotationDetailsEntered (' +
    IntToStr(MasterCds['Quotations_id']) + ') AS x_Num ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['x_Num'] <> null) then
    x_DetailsEntered := GpSds['x_Num']
  else
    x_DetailsEntered := 0;

  GpSds.Free;

  Result := x_DetailsEntered;

end;


procedure TQuotationFitForm.cxNextButtonClick(Sender: TObject);
var
  x_TrsType: integer;
begin

{
  if xg_DataEntryMode = 0 then
    begin
      xg_FromCities_id := 0;

      if (cxNextCityLCMB.EditValue <> null) and (cxNextCityLCMB.EditValue > 0) then
        begin
          xg_FromCities_id := xg_CurrentCities_id;
          xg_CurrentCities_id := cxNextCityLCMB.EditValue;
        end
      else
        begin
          xg_FromCities_id := 0;
          xg_CurrentCities_id := cxStartCityLCMB.EditValue;
        end;

      xg_FromCity := GetCityName(xg_FromCities_id);
      xg_CurrentCity := GetCityName(xg_CurrentCities_id);

    end;
}

  if (xg_QuoteMode = 0) then
    begin
      xg_FromCities_id := 0;
      xg_FromCity := '';

      xg_CurrentCities_id := cxStartCityLCMB.EditValue;
      xg_CurrentCity := GetCityName(xg_CurrentCities_id);

      SetupAccommodation(11,1);
    end
  else if (xg_QuoteMode = 1) then
    begin

      if (xg_FromCities_id <> xg_CurrentCities_id) then
        begin
          xg_FromCities_id := xg_CurrentCities_id;
          xg_FromCity := GetCityName(xg_FromCities_id);
        end;

      xg_CurrentCities_id := cxNextCityLCMB.EditValue;
      xg_CurrentCity := GetCityName(xg_CurrentCities_id);
      //xg_Date := IncDay(xg_Date,AccCds['Nights']);
      xg_Date := AccCds['DateOut'];

      //SetupTravel(41,1);
      SetupQuestions(3,4);
    end
  else if (xg_QuoteMode = 2) then
    begin
      if cxSightSeeingCmb.Text = 'Yes' then
        begin
          if SightSeeingPossible then
            SetupSightSeeing(21,1)
          else
            ShowMessage ('Sight Seeing Not Possible');
        end
      else
        SetupQuestions(5,6);
    end
  else if (xg_QuoteMode = 3) then
    begin
      if cxHireCarCkb.Checked then
        begin
          xg_CarMode := True;
          SetupDrive(51,1);
          SetupAccommodation(11,1);
        end
      else
        begin
          xg_CarMode := False;
          SetupTravel(41,1);
        end;
    end
  else if (xg_QuoteMode = 4) then
    begin
      xg_CarMode := False;
      if cxHireCarCkb.Checked then
        begin
          xg_CarMode := True;
          SetupDrive(51,1);
        end;
      SetupAccommodation(11,1);
    end
  else if (xg_QuoteMode = 5) then
    begin
      if cxReqNextCityCkb.Checked then
        SetupQuestions(1,2)
      else
        begin
          if MessageDlg ('Do you want to end the itinerary?',mtWarning,[mbYes,mbNo],0) = mrYes then
            begin
              cxNextButton.Visible := False;
              SetTabsInvisible;
              exit;
            end
          else
            exit;
        end;
    end
  else
    begin

      x_TrsType := 0;

      if ((xg_QuoteMode = 11) or (xg_QuoteMode = 12)) then
        begin
          if AccCds.State = dsInsert then
            AccCds.Post
          else if AccCds.State = dsEdit then
            AccCds.Post;

          x_TrsType := GetNextLine(MasterCds['Quotations_id'], AccCds['LineNum']);
        end
      else if ((xg_QuoteMode = 21) or (xg_QuoteMode = 22)) then
        begin
          if SightCds.State = dsInsert then
            SightCds.Post
          else if SightCds.State = dsEdit then
            SightCds.Post;

          x_TrsType := GetNextLine(MasterCds['Quotations_id'], SightCds['LineNum']);
        end
      else if ((xg_QuoteMode = 41) or (xg_QuoteMode = 42)) then
        begin
          if TicketCds.State = dsInsert then
            TicketCds.Post
          else if TicketCds.State = dsEdit then
            TicketCds.Post;

          // skip 1 line (auto arrival transfer)
          x_TrsType := GetNextLine(MasterCds['Quotations_id'], TicketCds['LineNum']+1);
        end;


      if (x_TrsType = 0) and (xg_DataEntryMode = 1) then
        begin
          SetTabsInvisible;
          exit;
        end
      else if (x_TrsType = 0) and ((xg_QuoteMode = 11) or (xg_QuoteMode = 12)) then
        begin
          SetupQuestions(2,3);
        end
      else if (x_TrsType = 0) and ((xg_QuoteMode = 21) or (xg_QuoteMode = 22)) then
        begin
          SetupQuestions(5,6);
        end
      else if (x_TrsType = 0) and ((xg_QuoteMode = 41) or (xg_QuoteMode = 42)) then
        begin
          SetupAccommodation(11,1);
        end
      else if x_TrsType = 2 then
        begin
          SetupAccommodation(12,2);
        end
      else if x_TrsType = 3 then
        begin
          SetupSightSeeing(22,2);
        end
      else if x_TrsType = 1 then
        begin
          SetupTravel(42,2);
        end;

    end;

end;

function TQuotationFitForm.SightSeeingPossible: boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ok : boolean;
begin

  x_ok := False;

  QueryString := 'SELECT x_count = COUNT(*) FROM Services ' +
    'WHERE Cities_id = ' + IntToStr(xg_CurrentCities_id) + ' ' +
    'AND Active = 1 ' +
    'AND Private = 0';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    x_ok := true;

  GpSds.Free;

  Result := x_ok;

end;

function TQuotationFitForm.SightSeeingValidOnDay: boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ok : boolean;
begin

  x_ok := true;

  QueryString := 'SELECT x_count = COUNT(*) FROM Services s ' +
    'WHERE Services_id = ' + IntToStr(SightCds['Services_id']) + ' ' +
    'AND dbo.f_DowToBit(DATEPART(dw,''' +
    FormatDateTime('mm/dd/yyyy',SightCds['ServiceDate']) + ''')) & s.DaysOfOperation = 0';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    x_ok := false;

  GpSds.Free;

  Result := x_ok;

end;


procedure TQuotationFitForm.SetupAccommodation(x_QuoteMode: integer; x_option: integer);
begin

  cxQuestionsTab.Visible := False;
  SetTabsInvisible;
  cxAccommodationTab.TabVisible := True;
  cxAccommodationTab.Visible := True;

  // new record
  if x_option = 1 then
    begin
      AccCds.Insert;
      AccCds['HotelCities_id'] := xg_CurrentCities_id;
      AccCds['DateIn'] := xg_Date;
      AccCds['Nights'] := 1;
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',xg_CurrentCities_id,[]);
      AccCds['AC'] := True;
      if MasterCds['MealPlans_id'] <> null then
        AccCds['MealPlans_id'] := MasterCds['MealPlans_id'];
    end
  else if x_option = 2 then
    begin
      AccCds.Locate('Quotations_id;LineNum',VarArrayOf([MasterCds['Quotations_id'],xg_QuotationLineNum]),[]);
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',AccCds['HotelCities_id'],[]);
      HotelLcmbPropertiesEditValueChanged(nil);
    end;

  xg_QuoteMode := x_QuoteMode;

end;

procedure TQuotationFitForm.SetupDrive(x_QuoteMode: integer; x_option: integer);
begin

  // new record
  if x_option = 1 then
    begin
      TransportCds.Insert;
      TransportCds['From_Cities_id'] := xg_FromCities_id;
      TransportCds['To_Cities_id'] := xg_CurrentCities_id;
      TransportCds['FromDate'] := xg_Date;
      TransportCds['FromTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TransportCds['FromDate']) + ' 09:00');
      TransportCds['ToDate'] := xg_Date;
      TransportCds['ToTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TransportCds['ToDate']) + ' 01:00');
      TransportCds['AC'] := True;
      TransportCds.Post;
    end;

  xg_QuoteMode := x_QuoteMode;

end;


function TQuotationFitForm.GetCityName(x_cities_id: integer): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_City: string;
begin

  QueryString := 'SELECT City FROM Cities WHERE Cities_id = ' +
    IntToStr(x_Cities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  x_City := '';
  if (not GpSds.EOF) and (GpSds['City'] <> null) then
    x_City := GpSds['City'];

  GpSds.Free;

  Result := x_City;
end;

procedure TQuotationFitForm.SetDefaultRoomType;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT Default_RoomTypes_id FROM Seasons ' +
    'WHERE ''' + FormatDateTime('mm/dd/yyyy',AccCds['DateIn']) + ''' ' +
    'BETWEEN FromDate AND ToDate ' +
    'AND ' + IntToStr(MasterCds['NumPax']) + ' BETWEEN FromPax AND To_Pax ' +
    'AND Addressbook_id = ' + IntToStr(HotelLcmb.EditValue);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['Default_RoomTypes_id'] <> null) and
    ((AccCds.State = dsEdit) or (AccCds.State = dsInsert)) then
    AccCds['RoomTypes_id'] := GpSds['Default_RoomTypes_id'];

  GpSds.Free;

end;


procedure TQuotationFitForm.SetupTravel(x_QuoteMode: integer; x_option: integer);
begin

  cxQuestionsTab.Visible := False;
  SetTabsInvisible;
  cxTravelTab.TabVisible := True;
  cxTravelTab.Visible := True;

  // new record
  if x_option = 1 then
    begin
      TicketCds.Insert;
    end
  else if x_option = 2 then
    begin
      TicketCds.Locate('Quotations_id;LineNum',VarArrayOf([MasterCds['Quotations_id'],xg_QuotationLineNum]),[]);
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',TicketCds['From_Cities_id'],[]);
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',TicketCds['To_Cities_id'],[]);
    end;

  xg_QuoteMode := x_QuoteMode;

end;



procedure TQuotationFitForm.SetupSightSeeing(x_QuoteMode: integer; x_option: integer);
begin

  cxQuestionsTab.Visible := False;
  SetTabsInvisible;
  cxSightSeeingTab.TabVisible := True;
  cxSightSeeingTab.Visible := True;

  // new record
  if x_option = 1 then
    begin
      SightCds.Insert;
      SightCds['Cities_id'] := xg_CurrentCities_id;
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',xg_CurrentCities_id,[]);
      SightCds['ServiceDate'] := xg_Date;

      if xg_CarMode = True then
        SightCds['Transport'] := False
      else
        SightCds['Transport'] := True;

      if MasterCds['Guide'] = True then
        SightCds['Guide'] := True
      else
        SightCds['Guide'] := False;

      if MasterCds['EntranceFees'] = True then
        SightCds['EntranceFees'] := True
      else
        SightCds['EntranceFees'] := False;

      SightCds['AC'] := True;

    end
  else if x_option = 2 then
    begin
      SightCds.Locate('Quotations_id;LineNum',VarArrayOf([MasterCds['Quotations_id'],xg_QuotationLineNum]),[]);
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',SightCds['Cities_id'],[]);
      ServicesCds.Locate('Services_id',SightCds['Services_id'],[]);
      //HotelLcmbPropertiesEditValueChanged(nil);
    end;

  xg_QuoteMode := x_QuoteMode;

end;



procedure TQuotationFitForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if (HotelLcmb.EditValue <> null) and (HotelCds.State <> dsInactive) then
      begin
        HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
        SetDefaultRoomType;
      end;
  except
  end;

end;

procedure TQuotationFitForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);

  UpdateQuoLines (2,AccCds['LineNum'],AccCds['DateIn']);
end;

procedure TQuotationFitForm.UpdateQuoLines (x_TrsType,x_LineNum: integer;x_Date: TDateTime);
var
  GpSds : TSQLDataSet;
  QueryString,x_Time: string;
  x_count, x_max_id, x_CarMode: integer;
  xt_Time: TDateTime;
begin

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND TrsType = ' + IntToStr(x_TrsType) + ' ' +
    'AND LineNum = ' + IntToStr(x_LineNum);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;
  x_count := GpSds['x_count'];

  if x_count = 0 then
    begin

      QueryString := 'SELECT max_id = MAX(QuoLines_id) FROM QuoLines';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;
      x_max_id := 1;
      if (not GpSds.EOF) and (GpSds['max_id'] <> null) then
        x_max_id := GpSds['max_id'] + 1;

      if xg_CarMode = True then
        x_CarMode := 1
      else
        x_CarMode := 0;

      x_Time := '';
      if x_LineNum = 1 then
        x_Time := '09:00';

      if (x_TrsType = 2) and (x_LineNum > 1) then
        begin
          xg_Time := IncHour(xg_Time,1);
          x_Time := FormatDateTime('HH:mm',xg_Time);
        end
      else if (x_TrsType = 1) then
        begin
          xg_Time := TicketCds['ETD'];
          x_Time := FormatDateTime('HH:mm',xg_Time);
        end
      else if (x_TrsType = 3) then
        begin
          if FormatDateTime('HH:mm',xg_Time) < '13:00' then
            xg_Time := StrToDateTime(FormatDateTime('dd/mm/yyyy',xg_Date) + ' ' + '14:00')
          else
            xg_Time := StrToDateTime(FormatDateTime('dd/mm/yyyy',xg_Date) + ' ' + '09:00');
          x_Time := FormatDateTime('HH:mm',xg_Time);
        end
      else if (x_TrsType = 5) then
        begin
          xg_Time := StrToDateTime(FormatDateTime('dd/mm/yyyy',xg_Date) + ' ' + '09:00');
          x_Time := FormatDateTime('HH:mm',xg_Time);
        end;

      QueryString := 'INSERT INTO QuoLines (QuoLines_id, Quotations_id,' +
        'LineNum, QuoDate, Cities_id, TrsType, QuoString, CarMode, QuoTime, FromCities_id) ' +
        'VALUES (' + IntToStr(x_max_id) + ',' + IntToStr(MasterCds['Quotations_id']) + ',' +
        IntToStr(x_LineNum) + ',''' + FormatDateTime('mm/dd/yyyy',x_Date) + ''',' +
        IntToStr(xg_CurrentCities_id) + ',' + IntToStr(x_TrsType) + ',' + ''' '',' +
        IntToStr(x_CarMode) + ',''' +
        FormatDateTime('mm/dd/yyyy',x_Date) +  ' ' + x_Time + ''',' + IntToStr(xg_FromCities_id) + ')';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      if (x_TrsType = 5) then
        begin
          xt_Time := GetTime (xg_Time, xg_FromCities_id, xg_CurrentCities_id);
          xg_Time := xt_Time;
        end;


      QueryString := 'EXEC p_UpdateQuoStrings ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'EXEC p_UpdateQuoCosts ' + IntToStr(MasterCds['Quotations_id']) + ',' +
           IntToStr(x_LineNum) + ',2' ;

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;


      QuoLinesSds.Close;
      QuoLinesSds.Open;

      QuoLinesCds.Close;
      QuoLinesCds.Open;

    end;

  GpSds.Free;

end;

function TQuotationFitForm.GetTime(x_Date: TDateTime; x_FromCities_id, x_ToCities_id: integer): TDateTime;
var
  GpSds : TSQLDataSet;
  QueryString, x_Time: string;
  x_Hours, x_Min: integer;
  xt_Time: TDateTime;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT time FROM Distances ' +
    'WHERE From_Cities_id = ' + IntToStr(x_FromCities_id) + ' ' +
    'AND To_Cities_id = ' + IntToStr(x_ToCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Time'] <> null) then
    x_time := GpSds['Time']
  else
    x_time := '04:00';

  x_Hours := StrToInt(Copy(x_Time,1,2));
  x_Min := StrToInt(Copy(x_Time,4,2));

  xt_Time := IncHour(x_Date, x_Hours);
  xt_Time := IncMinute(xt_Time, x_Min);

  GpSds.Free;

  Result := xt_Time;
end;

procedure TQuotationFitForm.AccCdsBeforePost(DataSet: TDataSet);
begin

  if AccCds['HotelAddressbook_id'] = Null then
    Raise Exception.Create('Enter the Hotel');

  if AccCds['RoomTypes_id'] = Null then
    Raise Exception.Create('Enter the Room Type');

  if AccCds['MealPlans_id'] = Null then
    Raise Exception.Create('Enter the Meal Plan');

  if AccCds['Nights'] = Null then
    Raise Exception.Create('Enter the Nights');

  if AccCds['DateIn'] = Null then
    Raise Exception.Create('Enter the Date In');

  if AccCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  AccCds['DateOut'] := IncDay(AccCds['DateIn'], AccCds['Nights']);

  AccCds_State := AccCds.State;

  if AccCds.State = dsInsert then
    begin
      AccCds['QuoAccommodation_id'] := GetNextId('QuoAccommodation','QuoAccommodation_id');
      GetLastLine(MasterCds['Quotations_id']);
      AccCds['LineNum'] := xg_QuotationLineNum + 1;
    end;

end;

procedure TQuotationFitForm.SightCdsAfterPost(DataSet: TDataSet);
begin
  SightCds.ApplyUpdates(0);

  UpdateQuoLines (3,SightCds['LineNum'],SightCds['ServiceDate']);
end;

procedure TQuotationFitForm.DeleteQuotation;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_DeleteQuotationDetails ' +
    IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoLines WHERE Quotations_id = ' +
    IntToStr(MasterCds['Quotations_id']);
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  AccCds.Active := False;
  SightCds.Active := False;
  TicketCds.Active := False;
  TransportCds.Active := False;

  AccCds.Active := True;
  SightCds.Active := True;
  TicketCds.Active := True;
  TransportCds.Active := True;

  xg_CarMode := False;

end;


procedure TQuotationFitForm.cxDeleteItineraryClick(Sender: TObject);
begin
  CreateQuotation (2);
  cxNextButton.Visible := True;
end;

procedure TQuotationFitForm.SightCdsBeforePost(DataSet: TDataSet);
begin
  if SightCds['Services_id'] = Null then
    Raise Exception.Create('Enter the Service');

  if SightCds['AC'] = null then
    Raise Exception.Create('Please enter if "AC"');

  if SightCds['Guide'] = null then
    Raise Exception.Create('Please enter if "Guide Required"');

  if SightCds['Transport'] = null then
    Raise Exception.Create('Please enter if "Transport Required"');

  if SightCds['EntranceFees'] = null then
    Raise Exception.Create('Please enter if "Entrance Fees Required"');

  if SightCds['ServiceDate'] = Null then
    Raise Exception.Create('Enter the "Service Date"');

  SightCds['NoOfVehicles'] := 0;
  if SightCds['Transport'] = True then
    SightCds['NoOfVehicles'] := 1;

  if SightCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  SightCds_State := SightCds.State;

  if SightCds.State = dsInsert then
    begin
      SightCds['QuoServices_id'] := GetNextId('QuoServices','QuoServices_id');
      GetLastLine(MasterCds['Quotations_id']);
      SightCds['LineNum'] := xg_QuotationLineNum + 1;
    end;

  //if not SightSeeingValidOnDay then
  //  raise exception.Create('This service is not possible on this date');

  if not SightSeeingValidOnDay then
    begin

      if MessageDlg ('This service is closed on this date.' + chr(13) +
        'Would you like to extend your stay in ' + xg_CurrentCity + ' by a day?',mtInformation, [mbYes,mbNo], 0) = mrYes then
        begin

          if (AccCds.State = dsBrowse) and (not AccCds.EOF) then
            begin
              AccCds.Edit;
              AccCds['Nights'] := AccCds['Nights']+1;
              AccCds['DateOut'] := AccCds['DateIn']+AccCds['Nights'];
              AccCds.Post;
            end;

          xg_Date := IncDay(xg_Date,1);  
          SightCds['ServiceDate'] := SightCds['ServiceDate'] + 1;
          //xg_Time := StrToDateTime(FormatDateTime('dd/mm/yyyy',SightCds['ServiceDate']) + ' ' + FormatDateTime('HH:mm',SightCds['StartTime']));

        end
      else
        begin
          SightCds.Cancel;
          SetupQuestions(2,3);
        end;

    end;

end;

procedure TQuotationFitForm.SightCdsAfterInsert(DataSet: TDataSet);
begin
  SightCds['SightSeeing'] := True;
  SightCds['ServiceDate'] := xg_Date;
end;

procedure TQuotationFitForm.cxDBLookupComboBox6PropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if ServiceCityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',ServiceCityLcmb.EditValue,[]);
  except
  end;

end;

procedure TQuotationFitForm.TicketCdsAfterPost(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);

  UpdateQuoLines (1,TicketCds['LineNum'],TicketCds['TravelDate']);

  // Create Auto Arrival Transfer
  InsertAutoTransfer(1);
  xg_QuotationLineNum := xg_QuotationLineNum + 1;
  QuoLinesCds.Close;
  QuoLinesCds.Open;

end;

procedure TQuotationFitForm.TicketCdsBeforePost(DataSet: TDataSet);
begin

  if TicketCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  TicketCds_State := TicketCds.State;

  if TicketCds.State = dsInsert then
    begin

      // Create Auto Departure Transfer
      InsertAutoTransfer(2);
      xg_QuotationLineNum := xg_QuotationLineNum + 1;
      QuoLinesCds.Close;
      QuoLinesCds.Open;


      TicketCds['QuoTickets_id'] := GetNextId('QuoTickets','QuoTickets_id');
      GetLastLine(MasterCds['Quotations_id']);
      TicketCds['LineNum'] := xg_QuotationLineNum + 1;
    end;


end;

procedure TQuotationFitForm.InsertAutoTransfer(x_TransferTypes_id: integer);
var
  GpSds : TSQLDataSet;
  QueryString, x_FlightNo, xs_Time: string;
  x_Time: TDateTime;
begin

  x_FlightNo := '';
  if TicketCds['FlightNo'] = null then
    x_FlightNo := TicketCds['FlightNo'];

  if x_TransferTypes_id = 1 then
    begin
      xs_Time := FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETA']);
      x_Time := StrToDateTime(xs_Time);
      xs_Time := FormatDateTime('mm/dd/yyyy HH:mm',x_Time);
    end
  else
    begin
      xs_Time := FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETD']);
      x_Time := StrToDateTime(xs_Time);
      if TicketCds['Tickets_id'] = 1 then
        x_Time := IncHour(x_Time,-2)
      else
        x_Time := IncHour(x_Time,-1);
      xs_Time := FormatDateTime('mm/dd/yyyy HH:mm',x_Time);
    end;

  xg_Time := x_Time;

  QueryString := 'EXEC p_QuoInsertTransfer ' +
    IntToStr(MasterCds['Quotations_id']) + ',' +
    IntToStr(TicketCds['Tickets_id']) + ',' +
    IntToStr(x_TransferTypes_id) + ',' +
    IntToStr(TicketCds['From_Cities_id']) + ',' +
    IntToStr(TicketCds['To_Cities_id']) + ',''' +
    x_FlightNo + ''',''' +
    FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''',''' +
    FormatDateTime('mm/dd/yyyy HH:mm',x_Time) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TQuotationFitForm.ServiceLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if (ServiceLcmb.EditValue <> null) and (ServicesCds.State <> dsInactive) then
      begin
        ServicesCds.Locate('Services_id',ServiceLcmb.EditValue,[]);
        if SightCds.State in [dsInsert, dsEdit] then
          begin
            SightCdsStartTime.Clear;
            GetStartTime;

            if SightCds['StartTime'] = null then
              begin
                if MessageDlg ('This service is not possible within the given time.' + chr(13) +
                  'Would you like to extend your stay in ' + xg_CurrentCity + ' by a day?',mtInformation, [mbYes,mbNo], 0) = mrYes then
                  begin

                    if (AccCds.State = dsBrowse) and (not AccCds.EOF) then
                      begin
                        AccCds.Edit;
                        AccCds['Nights'] := AccCds['Nights']+1;
                        AccCds['DateOut'] := AccCds['DateIn']+AccCds['Nights'];
                        AccCds.Post;
                      end;

                    GetStartTime;

                  end
                else
                  begin
                    SightCds.Cancel;
                    SetupQuestions(2,3);
                  end;
              end;

          end;
{
        if (ServicesCds['StartTime'] <> null) and (ServicesCds.State <> dsBrowse) then
          SightCds['StartTime'] := ServicesCds['StartTime'];

        if ((ServicesCds.State = dsInsert) or (ServicesCds.State = dsEdit)) then
          begin
            if (Pos(ServicesCds['Description'],'full') > 0) then
              SightCds['StartTime'] := '09:00'
            else
              SightCds['StartTime'] := '14:00';
          end;
}
      end;
  except
  end;

end;

procedure TQuotationFitForm.GetStartTime;
var
  GpSds : TSQLDataSet;
  QueryString, x_StartTime, x_Description, xs_Time: string;
  x_done: boolean;
begin

  if ServicesCds['Services_id'] = null then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT StartTime FROM ServiceTimings ' +
    'WHERE Services_id = ' + IntToStr(ServicesCds['Services_id']) + ' ' +
    'ORDER BY StartTime';

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_done := False;
  x_Description := UpperCase(ServicesCds['Description']);
  xs_Time := FormatDateTime('HH:mm',xg_Time);

  while (not GpSds.EOF) and (not x_done) do
    begin

      x_StartTime := FormatDateTime('HH:mm',GpSds['StartTime']);

      if (xs_Time <= x_StartTime) and (Pos('FULL',x_Description) > 0) then
        begin
          if SightCds.State in [dsInsert, dsEdit] then
            begin
              SightCds['StartTime'] := GpSds['StartTime'];
              x_done := true;
            end;
        end
      else if (xs_Time <= x_StartTime) and (Pos('HALF',x_Description) > 0) then
        begin
          if SightCds.State in [dsInsert, dsEdit] then
            begin
              SightCds['StartTime'] := GpSds['StartTime'];
              x_done := true;
            end;
        end
      else if (Pos('FULL',x_Description) > 0) and (AccCds['Nights'] > 1) then
        begin
          if SightCds.State in [dsInsert, dsEdit] then
            begin
              xg_Date := IncDay(xg_Date,1);
              xg_Time := StrToDateTime(FormatDateTime('dd/mm/yyyy',xg_Date) + ' 08:00');
              SightCds['ServiceDate'] := xg_Date;
              SightCds['StartTime'] := GpSds['StartTime'];
              x_done := true;
            end;
        end
      else if (Pos('HALF',x_Description) > 0) and (AccCds['Nights'] > 1) then
        begin
          if SightCds.State in [dsInsert, dsEdit] then
            begin
              xg_Date := IncDay(xg_Date,1);
              xg_Time := StrToDateTime(FormatDateTime('dd/mm/yyyy',xg_Date) + ' 08:00');
              SightCds['ServiceDate'] := xg_Date;
              SightCds['StartTime'] := GpSds['StartTime'];
              x_done := true;
            end;
        end;

      GpSds.Next;

    end;

  GpSds.Free;

end;

procedure TQuotationFitForm.TicketCdsAfterInsert(DataSet: TDataSet);
begin
  TicketCds['From_Cities_id'] := xg_FromCities_id;
  TicketCds['To_Cities_id'] := xg_CurrentCities_id;
  TicketCds['TravelDate'] := xg_Date;
end;

procedure TQuotationFitForm.cxButton3Click(Sender: TObject);
begin

  if (TicketCds['Tickets_id']=null) or (TicketCds['Tickets_id']=0) then
      Exit;

  _FlightSectorForm_DisplayType := 1;

  if TicketCds['Tickets_id'] = 1 then
    _FlightSectorForm_TransportType := 1
  else if TicketCds['Tickets_id'] = 2 then
    _FlightSectorForm_TransportType := 3
  else if TicketCds['Tickets_id'] = 3 then
    _FlightSectorForm_TransportType := 2
  else if TicketCds['Tickets_id'] = 4 then
    _FlightSectorForm_TransportType := 0
  else
    _FlightSectorForm_TransportType := 0;

  if FlightSectorForm = nil then
    Application.CreateForm(TFlightSectorForm,FlightSectorForm);

  FlightSectorForm.FormStyle := fsNormal;
  FlightSectorForm.Visible := False;   //Important
  FlightSectorForm.FromCityLCMB.EditValue := TicketCds['From_Cities_id'];
  FlightSectorForm.ToCityLCMB.EditValue := TicketCds['To_Cities_id'];
  FlightSectorForm.cxWefDateEdit.Text := DateToStr(Date);
  FlightSectorForm.FilterData;

  FlightSectorForm.ShowModal;

  if FlightSectorForm.ModalResult = mrOK then
  begin
    if TicketCds.State = dsBrowse then
      TicketCds.Edit;
    if TicketCds['Tickets_id'] = 1 then
    begin

      if FlightSectorForm.FlightsCds['FlightNo'] <> null then
        TicketCds['FlightNo'] := FlightSectorForm.FlightsCds['FlightNo'];

      if FlightSectorForm.FlightsCds['Arrival'] <> null then
        TicketCds['ETA'] := FlightSectorForm.FlightsCds['Arrival'];

      if FlightSectorForm.FlightsCds['Departure'] <> null then
        TicketCds['ETD'] := FlightSectorForm.FlightsCds['Departure'];
    end;

    if TicketCds['Tickets_id'] = 2 then
    begin
      if FlightSectorForm.TrainsCds['TrainName'] <> null then
        TicketCds['FlightNo'] := Trim(FlightSectorForm.TrainsCds['TrainNo']) + ' ' + Trim(FlightSectorForm.TrainsCds['TrainName']);

      if FlightSectorForm.TrainsCds['TrainNo'] <> null then
        TicketCds['TrainNo'] := FlightSectorForm.TrainsCds['TrainNo'];

      if FlightSectorForm.TrainsCds['Arrival'] <> null then
        TicketCds['ETA'] := FlightSectorForm.TrainsCds['Arrival'];

      if FlightSectorForm.TrainsCds['Departure'] <> null then
        TicketCds['ETD'] := FlightSectorForm.TrainsCds['Departure'];

      if FlightSectorForm.TrainsCds['FromStations_id'] <> null then
        TicketCds['From_TrainStations_id'] := FlightSectorForm.TrainsCds['FromStations_id'];

      if FlightSectorForm.TrainsCds['ToStations_id'] <> null then
        TicketCds['To_TrainStations_id'] := FlightSectorForm.TrainsCds['ToStations_id'];

    end;

    if MasterCDS['Tickets_id'] = 3 then
    begin
      if FlightSectorForm.BusesCds['busno'] <> null then
        TicketCds['FlightNo']:= FlightSectorForm.BusesCds['BusNo'];

      if FlightSectorForm.BusesCds['Arrival'] <> null then
        TicketCds['Arrival'] := FlightSectorForm.BusesCds['Arrival'];

      if FlightSectorForm.BusesCds['Departure'] <> null then
        TicketCds['Departure'] := FlightSectorForm.BusesCds['Departure'];
    end;

    if TicketCds['Tickets_id'] = 4 then
    begin
      TicketCds['FlightNo']:= NULL;
      TicketCds['Arrival'] := NULL;
      TicketCds['Departure'] := NULL;
    end;

  end;

  FlightSectorForm.Release;
  FlightSectorForm := nil;

end;

procedure TQuotationFitForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TQuotationFitForm.cxButton5Click(Sender: TObject);
begin

  if SightCds.State = dsBrowse then
    SightCds.Edit;

  if SightCds['StartTime'] = '09:00' then
    SightCds['StartTime'] := '14:00'
  else
    SightCds['StartTime'] := '09:00'
end;

procedure TQuotationFitForm.TransportCdsAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);

  UpdateQuoLines (5,TransportCds['LineNum'],TransportCds['FromDate']);

end;

procedure TQuotationFitForm.TransportCdsBeforePost(DataSet: TDataSet);
begin
  if TransportCds.State = dsInsert then
    begin
      TransportCds['QuoTransport_id'] := GetNextId('QuoTransport','QuoTransport_id');
      GetLastLine(MasterCds['Quotations_id']);
      TransportCds['LineNum'] := xg_QuotationLineNum + 1;
    end;

end;

procedure TQuotationFitForm.cxModeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if (CxModeLCMB.EditValue <> null) and (BackOfficeDataModule.TicketsCds.State <> dsInactive) then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',CxModeLCMB.EditValue,[]);
  except
  end;

end;

procedure TQuotationFitForm.ComputeCarCosts1Click(Sender: TObject);
var
  GpSds, Gp2Sds : TSQLDataSet;
  QueryString: string;
  x_CarHireAgents_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;


  QueryString := 'EXEC p_QuoSetNewCar ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'SELECT QuoLines_id, LineNum FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND NewCar = 1 ';

  Gp2Sds.Close;
  Gp2Sds.CommandText := QueryString;
  Gp2Sds.Open;

  // Default to Kaustubh
  x_CarHireAgents_id := 2170;
  if MasterCds['CarHireAgents_id'] <> null then
    x_CarHireAgents_id := MasterCds['CarHireAgents_id'];

  while (not Gp2Sds.EOF) do
    begin

      QueryString := 'EXEC p_CostCarHire ' +
        IntToStr(x_CarHireAgents_id) + ',' +
        IntToStr(1) + ',' +
        IntToStr(36) + ',' +
        '1,1,''' +
        FormatDateTime('mm/dd/yyyy',MasterCds['StartDate']) + ''',' +
        '13,' +
        '0.0, 1,' +
        IntToStr(Gp2Sds['QuoLines_id']) + ',' +
        '42, 1, ' +
        IntToStr(MasterCds['Quotations_id']) + ',' +
        IntToStr(Gp2Sds['LineNum']);

      GpSds.Close;  
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      Gp2Sds.Next;

    end;

  GpSds.Free;
  Gp2Sds.Free;

  QuoLinesCds.Close;
  QuoLinesCds.Open;

  QuoLinesCds.Locate('Car', 'Car', []);

end;

procedure TQuotationFitForm.DisplayCostTrace1Click(Sender: TObject);
begin

  if (QuoLinesCds['TrsTYpe'] <> 'Drive') or (QuoLinesCds['NewCar'] <> 1) then
    raise exception.create ('Please highlight the row where you hired the car before displaying the trace');

  _QuoLineCostTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoLineCostTraceForm = nil then
    Application.CreateForm(TQuoLineCostTraceForm, QuoLineCostTraceForm);

  QuoLineCostTraceForm.ShowModal;

  QuoLineCostTraceForm.Free;
  QuoLineCostTraceForm := nil;

end;

procedure TQuotationFitForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  QuoLinesRefresh;
end;

procedure TQuotationFitForm.QuoLinesRefresh;
var
  x_Quotations_id: integer;
begin

  x_Quotations_id := -1;

  if MasterCds['Quotations_id'] <> null then
    x_Quotations_id := MasterCds['Quotations_id'];

  QuoLinesSds.Close;
  QuoLinesSds.CommandText :=
    'SELECT QuoLines_id, Quotations_id, LineNum, QuoDate,' +
    'c.City,' +
    'CASE TrsType WHEN 1 THEN ''Travel'' WHEN 2 THEN ''Acc'' WHEN 3 THEN ''Sight'' ' +
    'WHEN 4 THEN ''Trsf'' WHEN 5 THEN ''Drive'' END AS TrsType,' +
    'QuoString,' +
    'CASE CarMode WHEN 0 THEN '''' WHEN 1 THEN ''Car'' END AS Car, ' +
    'Cost, QuoTime, QuoStringPax, NewCar ' +
    'FROM QuoLines q LEFT JOIN Cities c ON q.Cities_id = c.Cities_id ' +
    'WHERE Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
    'ORDER BY QuoLines_id';
  QuoLinesSds.Open;

  QuoLinesCds.Close;
  QuoLinesCds.Open;
end;


end.
