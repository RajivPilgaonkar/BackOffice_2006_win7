unit QuotationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, cxMemo, cxDBEdit,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, StdCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxNavigator, cxDBNavigator,
  ExtCtrls, cxPC, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxTimeEdit, cxLabel, cxLookAndFeelPainters, Menus,
  cxButtons, cxRadioGroup, scExcelExport;

type
  TQuotationForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    TourDateLbl: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    TourDateEdit: TcxDBDateEdit;
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
    cxDBTextEdit3: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label4: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label10: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBNavigator1: TcxDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    MasterCdsQuotationDate: TSQLTimeStampField;
    MasterCdsQuotationNo: TIntegerField;
    MasterCdsQuotationYearRef: TIntegerField;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel3: TPanel;
    cxPageControl1: TcxPageControl;
    cxAccommodationTab: TcxTabSheet;
    cxTravelTab: TcxTabSheet;
    cxSightSeeingTab: TcxTabSheet;
    cxTransferTab: TcxTabSheet;
    AccGridDBTableView1: TcxGridDBTableView;
    AccGridLevel1: TcxGridLevel;
    AccGrid: TcxGrid;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDS: TDataSource;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsQuotations_id: TIntegerField;
    AccCdsDayIn: TIntegerField;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsAC: TBooleanField;
    AccCdsRoomTypes_id: TIntegerField;
    AccGridDBTableView1DayIn: TcxGridDBColumn;
    AccGridDBTableView1DateIn: TcxGridDBColumn;
    AccGridDBTableView1DateOut: TcxGridDBColumn;
    AccGridDBTableView1HotelAddressbook_id: TcxGridDBColumn;
    AccGridDBTableView1AC: TcxGridDBColumn;
    AccGridDBTableView1RoomTypes_id: TcxGridDBColumn;
    AccCdsCities_id: TIntegerField;
    AccCdsMealPlans_id: TIntegerField;
    AccGridDBTableView1Cities_id: TcxGridDBColumn;
    AccGridDBTableView1MealPlans_id: TcxGridDBColumn;
    AccCdsHotelLookup: TStringField;
    AccCdsRoomTypeLookup: TStringField;
    TicketsDS: TDataSource;
    TicketsCds: TClientDataSet;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCdsQuoTickets_id: TIntegerField;
    TicketsCdsQuotations_id: TIntegerField;
    TicketsCdsCities_id: TIntegerField;
    TicketsCdsAgentAddressbook_id: TIntegerField;
    TicketsCdsTickets_id: TIntegerField;
    TicketsCdsNoOfTickets: TIntegerField;
    TicketsCdsTravelDate: TSQLTimeStampField;
    TicketsCdsFrom_Cities_id: TIntegerField;
    TicketsCdsTo_Cities_id: TIntegerField;
    TicketsCdsFlightNo: TStringField;
    TicketsCdsFrom_TrainStations_id: TIntegerField;
    TicketsCdsTo_TrainStations_id: TIntegerField;
    TicketsCdsClass_id: TIntegerField;
    TicketsCdsETD: TSQLTimeStampField;
    TicketsCdsETA: TSQLTimeStampField;
    TicketsGrid: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    cxGridDBTableView7Cities_id: TcxGridDBColumn;
    cxGridDBTableView7AgentAddressbook_id: TcxGridDBColumn;
    cxGridDBTableView7Tickets_id: TcxGridDBColumn;
    cxGridDBTableView7NoOfTickets: TcxGridDBColumn;
    cxGridDBTableView7TravelDate: TcxGridDBColumn;
    cxGridDBTableView7From_Cities_id: TcxGridDBColumn;
    cxGridDBTableView7To_Cities_id: TcxGridDBColumn;
    cxGridDBTableView7FlightNo: TcxGridDBColumn;
    cxGridDBTableView7From_TrainStations_id: TcxGridDBColumn;
    cxGridDBTableView7To_TrainStations_id: TcxGridDBColumn;
    cxGridDBTableView7Class_id: TcxGridDBColumn;
    cxGridDBTableView7ETD: TcxGridDBColumn;
    cxGridDBTableView7ETA: TcxGridDBColumn;
    TicketsCdsAgentLookup: TStringField;
    TicketsCdsFromTrainStationLookup: TStringField;
    TicketsCdsToTrainStationLookup: TStringField;
    TicketsCdsClassLookup: TStringField;
    SightGrid: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    SightDS: TDataSource;
    SightCDS: TClientDataSet;
    SightSDS: TSQLDataSet;
    SightDSP: TDataSetProvider;
    SightCDSQuoServices_id: TIntegerField;
    SightCDSQuotations_id: TIntegerField;
    SightCDSCities_id: TIntegerField;
    SightCDSAgentAddressbook_id: TIntegerField;
    SightCDSServices_id: TIntegerField;
    SightCDSStartTime: TSQLTimeStampField;
    SightCDSAC: TBooleanField;
    SightCDSGuide: TBooleanField;
    SightCDSTransport: TBooleanField;
    SightCDSSightSeeing: TBooleanField;
    SightCDSPlace: TStringField;
    SightCDSTransferTypes_id: TIntegerField;
    SightCDSVehicles_id: TIntegerField;
    cxGridDBTableView5Cities_id: TcxGridDBColumn;
    cxGridDBTableView5AgentAddressbook_id: TcxGridDBColumn;
    cxGridDBTableView5Services_id: TcxGridDBColumn;
    cxGridDBTableView5StartTime: TcxGridDBColumn;
    cxGridDBTableView5AC: TcxGridDBColumn;
    cxGridDBTableView5Guide: TcxGridDBColumn;
    cxGridDBTableView5Transport: TcxGridDBColumn;
    cxGridDBTableView5Vehicles_id: TcxGridDBColumn;
    SightCDSAgentLookup: TStringField;
    SightCDSServicesLookup: TStringField;
    TransferDs: TDataSource;
    TransferCds: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    StringField1: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    TransferSds: TSQLDataSet;
    TransferDsp: TDataSetProvider;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    SightCDSServiceDay: TIntegerField;
    SightCDSServiceDate: TSQLTimeStampField;
    SightCDSNoOfVehicles: TIntegerField;
    cxGridDBTableView5DBServiceDay: TcxGridDBColumn;
    cxGridDBTableView5DBServiceDate: TcxGridDBColumn;
    cxGridDBTableView5DBNoOfVehicles: TcxGridDBColumn;
    TransferCdsServiceDay: TIntegerField;
    TransferCdsServiceDate: TSQLTimeStampField;
    TransferCdsNoOfVehicles: TIntegerField;
    cxGridDBTableView1DBServiceDay: TcxGridDBColumn;
    cxGridDBTableView1DBServiceDate: TcxGridDBColumn;
    cxGridDBTableView1DBNoOfVehicles: TcxGridDBColumn;
    TicketsCdsTravelDay: TIntegerField;
    cxGridDBTableView7DBTravelDay: TcxGridDBColumn;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    CopyFromMasters1: TMenuItem;
    N2: TMenuItem;
    ComputeCosts1: TMenuItem;
    N3: TMenuItem;
    CreateaMaster1: TMenuItem;
    AccCdsCost: TFMTBCDField;
    AccGridDBTableView1Cost: TcxGridDBColumn;
    AccCdsMasters_id: TStringField;
    TicketsCdsMasters_id: TStringField;
    SightCDSMasters_id: TStringField;
    TransferCdsMasters_id: TStringField;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeCds: TClientDataSet;
    IntegerField8: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    MasterCodeDS: TDataSource;
    AccGridDBTableView1Masters_id: TcxGridDBColumn;
    cxGridDBTableView7masters_id: TcxGridDBColumn;
    cxGridDBTableView5DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Masters_id: TcxGridDBColumn;
    cxButton2: TcxButton;
    PopupMenu2: TPopupMenu;
    MenuItem7: TMenuItem;
    cxButton4: TcxButton;
    N5: TMenuItem;
    QuotationItinerary1: TMenuItem;
    N1: TMenuItem;
    DeleteallrowsforthisMaster1: TMenuItem;
    N4: TMenuItem;
    MovecurrentMasterBlockfromselectedrecord1: TMenuItem;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    N6: TMenuItem;
    SetMostEconomicalCars1: TMenuItem;
    cxGridDBTableView1DBPlace: TcxGridDBColumn;
    TransferCdsFlightNo: TStringField;
    cxGridDBTableView1DBFlightNo: TcxGridDBColumn;
    cxTransport: TcxTabSheet;
    TransportGrid: TcxGrid;
    TransportGridDBTableView1: TcxGridDBTableView;
    TransportGridDBTableView1Organisation: TcxGridDBColumn;
    TransportGridDBTableView1Automobile: TcxGridDBColumn;
    TransportGridDBTableView1NoOfVehicles: TcxGridDBColumn;
    TransportGridDBTableView1FromCity: TcxGridDBColumn;
    TransportGridDBTableView1FromPlace: TcxGridDBColumn;
    TransportGridDBTableView1FromDate: TcxGridDBColumn;
    TransportGridDBTableView1FromTime: TcxGridDBColumn;
    TransportGridDBTableView1ToCity: TcxGridDBColumn;
    TransportGridDBTableView1ToPlace: TcxGridDBColumn;
    TransportGridDBTableView1ToDate: TcxGridDBColumn;
    TransportGridDBTableView1ToTime: TcxGridDBColumn;
    TransportGridDBTableView1AC: TcxGridDBColumn;
    TransportGridDBTableView1DropOffDays: TcxGridDBColumn;
    TransportGridDBTableView1Dropoffkms: TcxGridDBColumn;
    TransportGridLevel1: TcxGridLevel;
    TransportDS: TDataSource;
    TransportCds: TClientDataSet;
    TransportSds: TSQLDataSet;
    TransportDsp: TDataSetProvider;
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
    TransportGridDBTableView1DBAgentCity: TcxGridDBColumn;
    TransportCdsAgentLookup: TStringField;
    TransportCdsFromCityLookup: TStringField;
    TransportCdsToCityLookup: TStringField;
    TransportGridDBTableView1DBMasterCode: TcxGridDBColumn;
    TransportCdsTransportDay: TIntegerField;
    TransportCdsMasters_id: TIntegerField;
    TransportGridDBTableView1DBTransportDay: TcxGridDBColumn;
    N7: TMenuItem;
    ClientItinerary1: TMenuItem;
    DirectReport1: TMenuItem;
    ExcelReport1: TMenuItem;
    scExcelExport1: TscExcelExport;
    AccCdsstatus: TIntegerField;
    TicketsCdsstatus: TIntegerField;
    SightCDSstatus: TIntegerField;
    TransferCdsstatus: TIntegerField;
    TransportCdsstatus: TIntegerField;
    cxGridDBTableView5Status: TcxGridDBColumn;
    N8: TMenuItem;
    ValidateServices1: TMenuItem;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxGridDBTableView7Status: TcxGridDBColumn;
    cxGridDBTableView1Status: TcxGridDBColumn;
    MovecurrentMasterBlockfromselectedrecordOnlyDates1: TMenuItem;
    TicketsCdsTrainNo: TStringField;
    AccGridDBTableView1Status: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function GetNextQuoteNo (x_YearRef: integer): integer;
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure AccGridDBTableView1HotelAddressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AccGridDBTableView1RoomTypes_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView7AgentAddressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView7From_TrainStations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView7To_TrainStations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView7Class_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TicketsCdsBeforePost(DataSet: TDataSet);
    procedure TicketsCdsAfterPost(DataSet: TDataSet);
    procedure cxGridDBTableView7FlightNoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView5AgentAddressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView5Services_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SightCDSBeforePost(DataSet: TDataSet);
    procedure SightCDSAfterPost(DataSet: TDataSet);
    procedure SightCDSAfterInsert(DataSet: TDataSet);
    procedure cxGridDBColumn2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBColumn3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TransferCdsBeforePost(DataSet: TDataSet);
    procedure TransferCdsAfterPost(DataSet: TDataSet);
    procedure TransferCdsAfterInsert(DataSet: TDataSet);
    procedure AccCdsDayInChange(Sender: TField);
    procedure TicketsCdsTravelDayChange(Sender: TField);
    procedure SightCDSServiceDayChange(Sender: TField);
    procedure TransferCdsServiceDayChange(Sender: TField);
    procedure TicketsCdsAfterInsert(DataSet: TDataSet);
    procedure AccCdsAfterDelete(DataSet: TDataSet);
    procedure TicketsCdsAfterDelete(DataSet: TDataSet);
    procedure SightCDSAfterDelete(DataSet: TDataSet);
    procedure TransferCdsAfterDelete(DataSet: TDataSet);
    procedure CopyFromMasters1Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure QuotationItinerary1Click(Sender: TObject);
    procedure DeleteallrowsforthisMaster1Click(Sender: TObject);
    procedure TblRefresh;
    procedure MovecurrentMasterBlockfromselectedrecord1Click(
      Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure SearchQuotation;
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure SetMostEconomicalCars1Click(Sender: TObject);
    procedure TransportGridDBTableView1OrganisationPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TransportGridDBTableView1FromCityPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TransportGridDBTableView1ToCityPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TransportCdsAfterInsert(DataSet: TDataSet);
    procedure TransportCdsAfterDelete(DataSet: TDataSet);
    procedure TransportCdsAfterPost(DataSet: TDataSet);
    procedure TransportCdsBeforePost(DataSet: TDataSet);
    procedure DirectReport1Click(Sender: TObject);
    procedure ExcelReport1Click(Sender: TObject);
    procedure InitializeExcel;
    procedure SaveDataInExcel;
    procedure ValidateServices1Click(Sender: TObject);
    procedure cxGridDBTableView5StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBTableView7StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure MovecurrentMasterBlockfromselectedrecordOnlyDates1Click(
      Sender: TObject);
    procedure DisplayErrorStatus;
    procedure ValidateServices;
    procedure AccGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }               
  public
    { Public declarations }
  end;

var
  QuotationForm: TQuotationForm;
  _QuotationForm_Level: integer;
  _QuotationForm_FromDate: TDateTime;
  _QuotationForm_ToDate: TDateTime;

implementation

uses BackOfficeDM, GeneralUt, SearchSortFm, FlightSectorFm, DateUtils,
  CopyFitMasterFm, RptQuotationStringsFm, RptQuotationItineraryFm,
  RptClientStringsFm;

var
  MasterCds_State: TDataSetState;

{$R *.dfm}

const

  // SheetType
  xlChart = -4109;
  xlWorksheet = -4167;

  // WBATemplate
  xlWBATWorksheet = -4167;
  xlWBATChart = -4109;

  // Page Setup
  xlPortrait = 1;
  xlLandscape = 2;
  xlPaperA4 = 9;

  // Format Cells
  xlBottom = -4107;
  xlLeft = -4131;
  xlRight = -4152;
  xlTop = -4160;

  // Text Alignment
  xlHAlignCenter = -4108;
  xlVAlignCenter = -4108;

  // Cell Borders
  xlThick = 4;
  xlThin = 2;


procedure TQuotationForm.FormCreate(Sender: TObject);
begin

  MasterCds.Active := False;
  MasterCds.Filter := '(QuotationDate >= ''' + FormatDateTime('dd/mm/yyyy',_QuotationForm_FromDate) + ''' ' +
        ' AND QuotationDate <= ''' + FormatDateTime('dd/mm/yyyy',_QuotationForm_ToDate) + ''')';
  MasterCds.Filtered := True;

  MasterCds.Active := True;
  AccCds.Active := True;
  TicketsCds.Active := True;
  SightCds.Active := True;
  TransferCds.Active := True;
  TransportCds.Active := True;
  MasterCodeCds.Active := True;

  BackOfficeDataModule.AgentCityCds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;
  BackOfficeDataModule.RoomTypeCds.Active := True;
  BackOfficeDataModule.MealPlanCds.Active := True;
  BackOfficeDataModule.TransferTypesCds.Active := True;


  cxPageControl1.ActivePageIndex := 0;
end;

procedure TQuotationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQuotationForm.FormDestroy(Sender: TObject);
begin
  QuotationForm := nil;
end;

procedure TQuotationForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  MasterCds['TimePax'] := True;
  MasterCds['EconomyPax'] := True;
  MasterCds['NumPax'] := 3;
  MasterCds['NumSingles'] := 1;
  MasterCds['NumDoubles'] := 1;
  MasterCds['StartDate'] := Date();
  MasterCds['QuotationDate'] := Date();

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);
end;

procedure TQuotationForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['QuotationDate'] = Null then
    Raise Exception.Create('Enter the Quotation Date');

  if MasterCds['StartDate'] = Null then
    Raise Exception.Create('Enter the Start Date');

  MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    begin
      MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef']);
      MasterCds['Quotations_id'] := GetNextId('Quotations','Quotations_id');
    end;

end;

function TQuotationForm.GetNextQuoteNo (x_YearRef: integer): integer;
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


procedure TQuotationForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TQuotationForm.AccGridDBTableView1HotelAddressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if AccCds['Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''H'') ' +
    'WHERE Cities_id = ' + IntToStr(AccCds['Cities_id']) + ' ' +
    ' ORDER BY Organisation ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 1 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';
  SearchSortForm.SearchCds.First;

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      AccCds['HotelAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if AccDs.State = dsBrowse then
            AccDs.Edit;
          AccCds['HotelAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TQuotationForm.AccGridDBTableView1RoomTypes_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if AccCds['HotelAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Hotel first');
      exit;
    end;

  if AccCds.State in [dsBrowse] then
    AccCds.Edit;

  QueryString := 'SELECT RoomTypes_id, RoomType, Addressbook_id, AC ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(AccCds['HotelAddressbook_id']) + ') ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'RoomTypes_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'RoomType';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Ac';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Room Type';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'AC';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'RoomTypes_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if AccCds.State = dsBrowse then
        AccCds.Edit;
      AccCds['RoomTypes_id'] := SearchSortForm.SearchCds['RoomTypes_id'];
      AccCds['AC'] := SearchSortForm.SearchCds['AC'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;



end;

procedure TQuotationForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuotationForm.AccCdsBeforePost(DataSet: TDataSet);
begin
  if AccCds.State = dsInsert then
    begin
      AccCds['QuoAccommodation_id'] := GetNextId('QuoAccommodation','QuoAccommodation_id');
    end;

end;

procedure TQuotationForm.cxGridDBTableView7AgentAddressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if TicketsCds['Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(TicketsCds['Cities_id']) + ' ' +
    ' ORDER BY Organisation ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 1 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';
  SearchSortForm.SearchCds.First;

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;
      TicketsCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if TicketsCds.State = dsBrowse then
            TicketsCds.Edit;

          TicketsCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;

end;

procedure TQuotationForm.cxGridDBTableView7From_TrainStations_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
  QueryString: string;
begin

  if (TicketsCds['from_cities_id']=null) or (TicketsCds['From_Cities_id']=0) then
      Exit;

  if TicketsCds.State in [dsBrowse] then
    TicketsCds.Edit;

  QueryString := 'SELECT TrainStations_id, StationName ' +
    'FROM TrainStations ' +
    'WHERE Cities_id =  ' + IntToStr(TicketsCds['From_Cities_id']) + ' ' +
    'ORDER BY StationName';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'StationName';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Station';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainStations_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;
      TicketsCds['From_TrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;



end;

procedure TQuotationForm.cxGridDBTableView7To_TrainStations_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
  QueryString: string;
begin

  if (TicketsCds['to_cities_id']=null) or (TicketsCds['To_Cities_id']=0) then
      Exit;

  if TicketsCds.State in [dsBrowse] then
    TicketsCds.Edit;

  QueryString := 'SELECT TrainStations_id, StationName ' +
    'FROM TrainStations ' +
    'WHERE Cities_id =  ' + IntToStr(TicketsCds['To_Cities_id']) + ' ' +
    'ORDER BY StationName';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'StationName';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Station';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainStations_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;

      TicketsCds['To_TrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;



end;

procedure TQuotationForm.cxGridDBTableView7Class_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TicketsCds['Tickets_id'] = null then
    begin
      ShowMessage('Please enter the Mode first');
      exit;
    end;

  if TicketsCds.State in [dsBrowse] then
    TicketsCds.Edit;

  QueryString := 'SELECT Class_id, Class ' +
    'FROM Class ' +
    'WHERE Tickets_id =  ' + IntToStr(TicketsCds['Tickets_id']) + ' ' +
    'ORDER BY Class';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Class_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Class';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Class';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Class_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;
      TicketsCds['Class_id'] := SearchSortForm.SearchCds['Class_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;



end;

procedure TQuotationForm.TicketsCdsBeforePost(DataSet: TDataSet);
begin
  if TicketsCds.State = dsInsert then
    begin
      TicketsCds['QuoTickets_id'] := GetNextId('QuoTickets','QuoTickets_id');
    end;

end;

procedure TQuotationForm.TicketsCdsAfterPost(DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
end;

procedure TQuotationForm.cxGridDBTableView7FlightNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

  if (TicketsCDS['Tickets_id']=null) or (TicketsCDS['Tickets_id']=0) then
      Exit;

  if (TicketsCDS['From_Cities_id'] = null) or (TicketsCds['To_Cities_id'] = null)then
    raise Exception.Create('Please select FROM CITY and TO CITY');

  if (TicketsCDS['TravelDate'] = null) then
    raise Exception.Create('Please enter TRAVEL DATE');


  _FlightSectorForm_DisplayType := 1;

  if TicketsCDS['Tickets_id'] = 1 then
    _FlightSectorForm_TransportType := 1
  else if TicketsCDS['Tickets_id'] = 2 then
    _FlightSectorForm_TransportType := 3
  else if TicketsCDS['Tickets_id'] = 3 then
    _FlightSectorForm_TransportType := 2
  else if TicketsCDS['Tickets_id'] = 4 then
    _FlightSectorForm_TransportType := 0
  else
    _FlightSectorForm_TransportType := 0;

  if FlightSectorForm = nil then
    Application.CreateForm(TFlightSectorForm,FlightSectorForm);

  FlightSectorForm.FormStyle := fsNormal;
  FlightSectorForm.Visible := False;   //Important
  FlightSectorForm.FromCityLCMB.EditValue := TicketsCDS['From_Cities_id'];
  FlightSectorForm.ToCityLCMB.EditValue := TicketsCDS['To_Cities_id'];
  FlightSectorForm.cxWefDateEdit.Text := DateToStr(Date);
  FlightSectorForm.FilterData;

  FlightSectorForm.ShowModal;

  if FlightSectorForm.ModalResult = mrOK then
  begin
    if TicketsCDS.State = dsBrowse then
      TicketsCDS.Edit;

    if TicketsCDS['Tickets_id'] = 1 then
    begin

      if FlightSectorForm.FlightsCds['FlightNo'] <> null then
        TicketsCDS['FlightNo'] := FlightSectorForm.FlightsCds['FlightNo'];

      if FlightSectorForm.FlightsCds['Arrival'] <> null then
        TicketsCDS['Eta'] := FlightSectorForm.FlightsCds['Arrival'];

      if FlightSectorForm.FlightsCds['Departure'] <> null then
        TicketsCDS['Etd'] := FlightSectorForm.FlightsCds['Departure'];
    end;

    if TicketsCDS['Tickets_id'] = 2 then
    begin

      if FlightSectorForm.TrainsCds['TrainNo'] <> null then
        TicketsCDS['FlightNo'] := FlightSectorForm.TrainsCds['TrainNo'] + ' ' + FlightSectorForm.TrainsCds['TrainName'];

      if FlightSectorForm.TrainsCds['TrainNo'] <> null then
        TicketsCDS['TrainNo'] := FlightSectorForm.TrainsCds['TrainNo'];

      if FlightSectorForm.TrainsCds['Arrival'] <> null then
        TicketsCDS['Eta'] := FlightSectorForm.TrainsCds['Arrival'];

      if FlightSectorForm.TrainsCds['Departure'] <> null then
        TicketsCDS['Etd'] := FlightSectorForm.TrainsCds['Departure'];

      if FlightSectorForm.TrainsCds['FromStations_id'] <> null then
        TicketsCDS['From_TrainStations_id'] := FlightSectorForm.TrainsCds['FromStations_id'];

      if FlightSectorForm.TrainsCds['ToStations_id'] <> null then
        TicketsCDS['To_TrainStations_id'] := FlightSectorForm.TrainsCds['ToStations_id'];


    end;

    if TicketsCDS['Tickets_id'] = 3 then
    begin
      if FlightSectorForm.BusesCds['busno'] <> null then
        TicketsCDS['FlightNo']:= FlightSectorForm.BusesCds['BusNo'];

      if FlightSectorForm.BusesCds['Arrival'] <> null then
        TicketsCDS['Eta'] := FlightSectorForm.BusesCds['Arrival'];

      if FlightSectorForm.BusesCds['Departure'] <> null then
        TicketsCDS['Etd'] := FlightSectorForm.BusesCds['Departure'];
    end;

    if TicketsCDS['Tickets_id'] = 4 then
    begin
      TicketsCDS['FlightNo']:= NULL;
      TicketsCDS['Eta'] := NULL;
      TicketsCDS['Etd'] := NULL;
    end;

  end;

  FlightSectorForm.Release;
  FlightSectorForm := nil;


end;

procedure TQuotationForm.cxGridDBTableView5AgentAddressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if SightCds['services_id'] = null then
    begin
      ShowMessage('Please enter the Service first');
      exit;
    end;

  if SightCds.State in [dsBrowse] then
    SightCds.Edit;

  QueryString := 'SELECT csd.Addressbook_id, a.Organisation ' +
    'FROM CostServicesDistinct csd LEFT JOIN Addressbook a ON csd.Addressbook_id = a.Addressbook_id ' +
    'WHERE services_id = ' + IntToStr(SightCds['services_id']) + ' ' +
    'ORDER BY a.organisation ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Agent';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if SightCds.State = dsBrowse then
        SightCds.Edit;
      SightCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TQuotationForm.cxGridDBTableView5Services_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if SightCds['cities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if SightCds.State in [dsBrowse] then
    SightCds.Edit;

  QueryString := 'SELECT s.Services_id, s.Description, a.Organisation, s.Cities_id, a.Addressbook_id ' +
    'FROM Services s LEFT JOIN Addressbook a ON s.Addressbook_id = a.Addressbook_id ' +
    'WHERE s.Cities_id = ' + IntToStr(SightCds['cities_id']) + ' ' +
    'AND s.Transfer = 0 ' +
    'ORDER BY Description ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 3 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Services_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Addressbook_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 300;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'service';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Agent';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if SightCds.State = dsbrowse then
        SightCds.Edit;
      SightCds['services_id'] := SearchSortForm.SearchCds['services_id'];
      SightCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TQuotationForm.SightCDSBeforePost(DataSet: TDataSet);
begin
  if SightCds.State = dsInsert then
    begin
      SightCds['QuoServices_id'] := GetNextId('QuoServices','QuoServices_id');
    end;

end;

procedure TQuotationForm.SightCDSAfterPost(DataSet: TDataSet);
begin
  SightCds.ApplyUpdates(0);
end;

procedure TQuotationForm.SightCDSAfterInsert(DataSet: TDataSet);
begin
  SightCds['Guide'] := False;
  SightCds['Transport'] := False;
  SightCds['AC'] := False;
  SightCds['SightSeeing'] := True;
end;

procedure TQuotationForm.cxGridDBColumn2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TransferCds['cities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if TransferCds.State in [dsBrowse] then
    TransferCds.Edit;

  QueryString := 'SELECT s.Services_id, s.Description, a.Organisation, s.Cities_id, a.Addressbook_id ' +
    'FROM Services s LEFT JOIN Addressbook a ON s.Addressbook_id = a.Addressbook_id ' +
    'WHERE s.Cities_id = ' + IntToStr(SightCds['cities_id']) + ' ' +
    'AND s.Transfer = 1 ' +
    'ORDER BY Description ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 3 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Services_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Addressbook_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 300;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'service';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Agent';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TransferCds.State = dsbrowse then
        TransferCds.Edit;
      TransferCds['services_id'] := SearchSortForm.SearchCds['services_id'];
      TransferCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TQuotationForm.cxGridDBColumn3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TransferCds['services_id'] = null then
    begin
      ShowMessage('Please enter the Service first');
      exit;
    end;

  if TransferCds.State in [dsBrowse] then
    TransferCds.Edit;

  QueryString := 'SELECT csd.Addressbook_id, a.Organisation ' +
    'FROM CostServicesDistinct csd LEFT JOIN Addressbook a ON csd.Addressbook_id = a.Addressbook_id ' +
    'WHERE services_id = ' + IntToStr(SightCds['services_id']) + ' ' +
    'ORDER BY a.organisation ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Agent';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TransferCds.State = dsBrowse then
        TransferCds.Edit;
      TransferCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TQuotationForm.TransferCdsBeforePost(DataSet: TDataSet);
begin
  if TransferCds.State = dsInsert then
    begin
      TransferCds['QuoServices_id'] := GetNextId('QuoServices','QuoServices_id');
    end;

end;

procedure TQuotationForm.TransferCdsAfterPost(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
end;

procedure TQuotationForm.TransferCdsAfterInsert(DataSet: TDataSet);
begin
  TransferCds['Transport'] := True;
  TransferCds['AC'] := False;
  TransferCds['SightSeeing'] := False;

end;

procedure TQuotationForm.AccCdsDayInChange(Sender: TField);
begin
  if (AccCds['DayIn'] = null) or (MasterCds['StartDate']=null) then
    exit;

  AccCds['DateIn'] := IncDay(MasterCds['StartDate'],AccCds['DayIn']-1);

end;

procedure TQuotationForm.TicketsCdsTravelDayChange(Sender: TField);
begin
  if (TicketsCds['TravelDay'] = null) or (MasterCds['StartDate']=null) then
    exit;

  TicketsCds['TravelDate'] := IncDay(MasterCds['StartDate'],TicketsCds['TravelDay']-1);


end;

procedure TQuotationForm.SightCDSServiceDayChange(Sender: TField);
begin

  if (SightCds['ServiceDay'] = null) or (MasterCds['StartDate']=null) then
    exit;

  SightCds['ServiceDate'] := IncDay(MasterCds['StartDate'],SightCds['ServiceDay']-1);

end;

procedure TQuotationForm.TransferCdsServiceDayChange(Sender: TField);
begin
  if (TransferCds['ServiceDay'] = null) or (MasterCds['StartDate']=null) then
    exit;

  TransferCds['ServiceDate'] := IncDay(MasterCds['StartDate'],TransferCds['ServiceDay']-1);


end;

procedure TQuotationForm.TicketsCdsAfterInsert(DataSet: TDataSet);
begin
  TicketsCds['NoOfTickets'] := MasterCds['NumPax'];
end;

procedure TQuotationForm.AccCdsAfterDelete(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuotationForm.TicketsCdsAfterDelete(DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
end;

procedure TQuotationForm.SightCDSAfterDelete(DataSet: TDataSet);
begin
  SightCds.ApplyUpdates(0);
end;

procedure TQuotationForm.TransferCdsAfterDelete(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
end;

procedure TQuotationForm.CopyFromMasters1Click(Sender: TObject);
begin
  if CopyFitMasterForm = nil then
    Application.CreateForm(TCopyFitMasterForm, CopyFitMasterForm);

  CopyFitMasterForm.ShowModal;

  if CopyFitMasterForm.ModalResult = mrOK then
    begin

      SetMostEconomicalCars1Click(nil);

      AccCds.Active := False;
      AccCds.Active := True;

      TicketsCds.Active := False;
      TicketsCds.Active := True;

      SightCds.Active := False;
      SightCds.Active := True;

      TransferCds.Active := False;
      TransferCds.Active := True;

      TransportCds.Active := False;
      TransportCds.Active := True;

      ValidateServices;

    end;

  CopyFitMasterForm.Free;
  CopyFitMasterForm := nil;

end;

procedure TQuotationForm.MenuItem7Click(Sender: TObject);
begin

  if RptQuotationStringsForm = nil then
    Application.CreateForm(TRptQuotationStringsForm, RptQuotationStringsForm);

  RptQuotationStringsForm.ReportSds.Close;
  RptQuotationStringsForm.ReportSds.CommandText := 'exec p_Rpt_QuotationStrings ' +
    IntToStr(MasterCds['Quotations_id']);
  RptQuotationStringsForm.ReportSds.Open;

  RptQuotationStringsForm.ReportCds.Close;
  RptQuotationStringsForm.ReportCds.Open;

  RptQuotationStringsForm.QuickRep1.PreviewModal;

  RptQuotationStringsForm.Free;
  RptQuotationStringsForm := nil;

end;

procedure TQuotationForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TQuotationForm.QuotationItinerary1Click(Sender: TObject);
begin

  if MasterCds['Quotations_id'] = null then
    raise exception.create ('Please select a quotation first');


   if RptQuotationItineraryForm = nil then
      Application.CreateForm(TRptQuotationItineraryForm, RptQuotationItineraryForm);

   RptQuotationItineraryForm.QuoSds.Close;
   RptQuotationItineraryForm.QuoSds.CommandText :=
     'SELECT * FROM Quotations WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
   RptQuotationItineraryForm.QuoSds.Open;

   RptQuotationItineraryForm.QuoCds.Close;
   RptQuotationItineraryForm.QuoCds.Open;

   RptQuotationItineraryForm.TicketsCds.Close;
   RptQuotationItineraryForm.TicketsCds.Open;

   RptQuotationItineraryForm.AccCds.Close;
   RptQuotationItineraryForm.AccCds.Open;

   RptQuotationItineraryForm.ServiceCds.Close;
   RptQuotationItineraryForm.ServiceCds.Open;

   RptQuotationItineraryForm.TransportCds.Close;
   RptQuotationItineraryForm.TransportCds.Open;

   RptQuotationItineraryForm.QuickRep1.PreviewModal;

   RptQuotationItineraryForm.Release;
   RptQuotationItineraryForm := nil;

end;

procedure TQuotationForm.DeleteallrowsforthisMaster1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_MasterCode: string;
begin

  if cxPageControl1.ActivePageIndex <> 0 then
    begin
      cxPageControl1.ActivePageIndex := 0;
      exit;
    end;

  if AccCds['Masters_id'] = null then
    exit;

  QueryString := 'SELECT MasterCode FROM Masters WHERE Masters_id = ' + IntToStr(AccCds['Masters_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_MasterCode := '';
  if GpSds['MasterCode'] <> null then
    x_MasterCode := GpSds['MasterCode'];

  GpSds.Free;


  if MessageDlg ('Are you sure you want to delete all the records for ' + x_MasterCode + '?',
     mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  QueryString := 'EXEC p_DeleteQuotationMasters ' + IntToStr(MasterCds['Quotations_id']) + ',' + IntToStr(AccCds['Masters_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  TblRefresh;

end;

procedure TQuotationForm.TblRefresh;
begin
  AccCds.Active := False;
  AccCds.Active := True;

  TicketsCds.Active := False;
  TicketsCds.Active := True;

  SightCds.Active := False;
  SightCds.Active := True;

  TransferCds.Active := False;
  TransferCds.Active := True;

  TransportCds.Active := False;
  TransportCds.Active := True;

end;

procedure TQuotationForm.MovecurrentMasterBlockfromselectedrecord1Click(
  Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_MasterCode, NewString: string;
  x_rows: integer;
  ClickedOK: boolean;
begin

  if cxPageControl1.ActivePageIndex <> 0 then
    begin
      cxPageControl1.ActivePageIndex := 0;
      exit;
    end;

  if AccCds['Masters_id'] = null then
    exit;

  QueryString := 'SELECT MasterCode FROM Masters WHERE Masters_id = ' + IntToStr(AccCds['Masters_id']);

  ClickedOK := InputQuery('Select Rows to Shift By', 'Select Rows to Shift By', NewString);
  if ClickedOK then            { NewString contains new input string }
    x_rows := StrToInt(NewString);


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_MasterCode := '';
  if GpSds['MasterCode'] <> null then
    x_MasterCode := GpSds['MasterCode'];

  GpSds.Free;

  QueryString := 'EXEC p_ShiftQuotationMasters ' + IntToStr(AccCds['Quotations_id']) + ',' +
    IntToStr(AccCds['Masters_id']) + ',' + IntToStr(x_rows) + ',' + IntToStr(AccCds['DayIn']) + ',1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  TblRefresh;

  ValidateServices;

end;

procedure TQuotationForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then
    SearchQuotation;
end;


procedure TQuotationForm.SearchQuotation;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i, x_quotations_id, x_count: integer;
begin

  if cxSearchGB.ItemIndex = 0 then
    begin
      QueryString := 'SELECT quotations_id, QuotationNo, QuotationRef, PaxName from quotations ' +
            'WHERE QuotationRef LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'ORDER BY QuotationDate, QuotationNo';

      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Close;
      SearchSortForm.SearchSds.CommandText := QueryString;
      SearchSortForm.SearchSds.Open;

      SearchSortForm.SearchCds.Close;
      SearchSortForm.SearchCds.Open;

      SearchSortForm.SearchCds.First;

      x_quotations_id := 0;
      if SearchSortForm.SearchCds['Quotations_id'] <> null then
        x_quotations_id := SearchSortForm.SearchCds['Quotations_id'];
      x_count := SearchSortForm.SearchCds.RecordCount;

      for i := 0 to 3 do
        begin
          SearchSortForm.SearchGridDBTableView1.CreateColumn;
        end;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Quotations_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'QuotationNo';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationRef';
      SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'PaxName';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 80;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
      SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Quo No';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quo Ref';
      SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Pax Name';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Quotations_id';

      if x_count = 1 then
        begin
          MasterCds.Locate ('Quotations_id',x_quotations_id,[]);

          SearchSortForm.Free;
          SearchSortForm := nil;

        end
      else
        begin

          SearchSortForm.SearchCds.Close;
          SearchSortForm.SearchCds.Open;
          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              MasterCds.Locate ('Quotations_id',SearchSortForm.SearchCds['quotations_id'],[]);
            end;

          SearchSortForm.Free;
          SearchSortForm := nil;

        end;

    end

  else if cxSearchGB.ItemIndex = 1 then
    begin

      QueryString := 'SELECT quotations_id from quotations ' +
            'WHERE QuotationNo = ' + cxSearchEdit.Text + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['Quotations_id']<>null) then
        begin
          MasterCds.Locate ('Quotations_id',GpSds['Quotations_id'],[]);
        end
      else
        begin
          ShowMessage ('Quotation No. Not Found');
        end;

      GpSds.Free;

    end

  else if cxSearchGB.ItemIndex = 2 then
    begin

      QueryString := 'SELECT quotations_id, QuotationNo, QuotationRef, PaxName from quotations ' +
            'WHERE PaxName LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'ORDER BY QuotationDate, QuotationNo';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Quotations_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'QuotationNo';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationRef';
      SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'PaxName';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 80;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
      SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Quo No';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quo Ref';
      SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Pax Name';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Quotations_id';

      if SearchSortForm.SearchCds.RecordCount = 1 then
        begin
          MasterCds.First;
          MasterCds.Locate ('Quotations_id',SearchSortForm.SearchCds['quotations_id'],[]);

          SearchSortForm.Free;
          SearchSortForm := nil;


        end
      else
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              MasterCds.Locate ('Quotations_id',SearchSortForm.SearchCds['quotations_id'],[]);
            end;

          SearchSortForm.Free;
          SearchSortForm := nil;

        end;

    end;


end;


procedure TQuotationForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete this quotation?', mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM QuoAccommodation WHERE Quotations_id = ' + IntToStr(masterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoTickets WHERE Quotations_id = ' + IntToStr(masterCds['Quotations_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(masterCds['Quotations_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  GpSds.Free;

end;

procedure TQuotationForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TQuotationForm.SetMostEconomicalCars1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_QuotationMostEconomicalCar '+IntToStr(MasterCds['Quotations_id']) + ',1';
  GpSds.ExecSQL;

  GpSds.CommandText := 'EXEC p_QuotationMostEconomicalCoach '+IntToStr(MasterCds['Quotations_id']) + ',1';
  GpSds.ExecSQL;


  GpSds.Free;

  SightCds.Close;
  SightCds.Open;

  TransferCds.Close;
  TransferCds.Open;

  TransportCds.Close;
  TransportCds.Open;


end;

procedure TQuotationForm.TransportGridDBTableView1OrganisationPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if TransportCds['Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(TransportCds['Cities_id']) + ' ' +
    ' ORDER BY Organisation ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 1 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';
  SearchSortForm.SearchCds.First;

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      TransportCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if TransportDs.State = dsBrowse then
            TransportDs.Edit;
          TransportCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TQuotationForm.TransportGridDBTableView1FromCityPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT DISTINCT From_Cities_id, c.City FROM Distances d LEFT JOIN Cities c ON d.from_cities_id = c.Cities_id ' +
    ' ORDER BY c.City ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 1 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'From_Cities_id';
  SearchSortForm.SearchCds.First;

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      TransportCds['From_Cities_id'] := SearchSortForm.SearchCds['From_Cities_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if TransportDs.State = dsBrowse then
            TransportDs.Edit;
          TransportCds['From_Cities_id'] := SearchSortForm.SearchCds['From_Cities_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TQuotationForm.TransportGridDBTableView1ToCityPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if TransportCds['From_Cities_id'] = null then
    raise exception.create ('Please enter the "From City" first');


  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT To_Cities_id, c.City FROM Distances d LEFT JOIN Cities c ON d.to_cities_id = c.Cities_id ' +
    'WHERE From_cities_id = ' + IntToStr(TransportCds['From_Cities_id']) + ' ' +
    ' ORDER BY c.City ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 1 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'To_Cities_id';
  SearchSortForm.SearchCds.First;

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      TransportCds['To_Cities_id'] := SearchSortForm.SearchCds['To_Cities_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if TransportDs.State = dsBrowse then
            TransportDs.Edit;
          TransportCds['To_Cities_id'] := SearchSortForm.SearchCds['To_Cities_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TQuotationForm.TransportCdsAfterInsert(DataSet: TDataSet);
begin

  TransportCds['AC'] := False;
  TransportCds['DropOffDays'] := 0;
  TransportCds['DropOffKms'] := 0;

end;

procedure TQuotationForm.TransportCdsAfterDelete(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TQuotationForm.TransportCdsAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TQuotationForm.TransportCdsBeforePost(DataSet: TDataSet);
begin
  if TransportCds.State = dsInsert then
    begin
      TransportCds['QuoTransport_id'] := GetNextId('QuoTransport','QuoTransport_id');
    end;


end;

procedure TQuotationForm.DirectReport1Click(Sender: TObject);
begin

  if RptClientStringsForm = nil then
    Application.CreateForm(TRptClientStringsForm, RptClientStringsForm);

  RptClientStringsForm.ReportSds.Close;
  RptClientStringsForm.ReportSds.CommandText := 'exec p_Rpt_ItineraryStrings ' +
    IntToStr(MasterCds['Quotations_id']) + ',1';
  RptClientStringsForm.ReportSds.Open;

  RptClientStringsForm.ReportCds.Close;
  RptClientStringsForm.ReportCds.Open;

  RptClientStringsForm.QuickRep1.PreviewModal;

  RptClientStringsForm.Free;
  RptClientStringsForm := nil;

end;

procedure TQuotationForm.ExcelReport1Click(Sender: TObject);
begin

  InitializeExcel;

  SaveDataInExcel;

  scExcelExport1.SaveAs('c:\Itinerary.xls',ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  Showmessage ('Saved as Excel as c:\Itinerary.xls');


end;

procedure TQuotationForm.SaveDataInExcel;
var
  x_row: integer;
  GpSds: TSqlDataSet;
  x_repeat, x_itinDay, x_ModuleRepeat: integer;
  x_Module: string;
begin

  x_row := 1;

  with QuotationForm.scExcelExport1.ExcelWorkSheet do
    begin

      Range['A'+IntToStr(x_row),'G'+IntToStr(200)].Font.Size := '8';
      Range['A'+IntToStr(x_row),'G'+IntToStr(x_row)].Font.Bold := True;

      Range['A'+IntToStr(x_row),'A'+IntToStr(200)].Cells.HorizontalAlignment := xlLeft;
      Range['B'+IntToStr(x_row),'C'+IntToStr(200)].Cells.HorizontalAlignment := xlHAlignCenter;
      Range['D'+IntToStr(x_row),'G'+IntToStr(200)].Cells.HorizontalAlignment := xlLeft;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].value := 'Module';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].value := 'Day';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].value := 'Dow';
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].value := 'Date';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].value := 'City';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].value := 'Service';
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].value := 'Hotel';

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].ColumnWidth := 31;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].ColumnWidth := 3;
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].ColumnWidth := 4;
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].ColumnWidth := 10;
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].ColumnWidth := 12;
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].ColumnWidth := 41;
      Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].ColumnWidth := 16;

      x_row := x_row + 2;

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      GPSds.Close;
      GPSds.CommandText := 'EXEC p_Rpt_ItineraryStrings ' + IntToStr(masterCds['Quotations_id']) + ',1';
      GPSds.Open;

      GpSds.First;

      x_repeat := 0;
      x_itinDay := 0;
      x_ModuleRepeat := 0;

      while not (GpSds.EOF) do
        begin

          if x_ItinDay = GpSds['ItinDay'] then
            x_repeat := 1;

          if x_Module = GpSds['Module'] then
            x_ModuleRepeat := 1
          else if (x_row > 3) then
            x_row := x_row + 2;

          if (GPSds['Module'] <> null) and (x_ModuleRepeat = 0) then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].value := GpSds['Module'];

          if (GPSds['ItinDay'] <> null) and (x_repeat = 0) then
            Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].value := GpSds['ItinDay'];

          if (GPSds['Dow'] <> null) and (x_repeat = 0) then
            Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].value := GpSds['Dow'];

          if (GPSds['ItinDate'] <> null) and (x_repeat = 0) then
            Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].value := GpSds['ItinDate'];

          if (GPSds['City'] <> null) and (x_repeat = 0) then
            Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].value := GpSds['City'];

          if (GPSds['Service'] <> null) then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].value := GpSds['Service'];

          if (GPSds['Hotel'] <> null) and (x_repeat = 0) then
            Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].value := GpSds['Hotel'];

          x_ItinDay := GpSds['ItinDay'];
          x_Module := GpSds['Module'];
          x_repeat := 0;
          x_ModuleRepeat := 0;
          x_row := x_row + 1;

          GpSds.Next;
        end;

      GpSds.Free;

    end;


end;

procedure TQuotationForm.InitializeExcel;
begin
  scExcelExport1.ExcelVisible:=True;
  scExcelExport1.LoadDefaultProperties;
  scExcelExport1.WorksheetName:='Itinerary';
  scExcelExport1.ConnectTo := ctNewExcel;
  scExcelExport1.Connect;
end;


procedure TQuotationForm.ValidateServices1Click(Sender: TObject);
begin
  ValidateServices;
end;

procedure TQuotationForm.ValidateServices;
var
  GpSds: TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_QuotationServicesValidate '+IntToStr(MasterCds['Quotations_id']) + ' ';
  GpSds.ExecSQL;

  GpSds.Free;

  AccCds.Active := False;
  AccCds.Active := True;

  SightCds.Close;
  SightCds.Open;

  TransferCds.Close;
  TransferCds.Open;

  TicketsCds.Close;
  TicketsCds.Open;

  DisplayErrorStatus;

end;

procedure TQuotationForm.DisplayErrorStatus;
var
  GpSds: TSQLDataSet;
  x_err_str: string;
begin

  x_err_str := '';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM QuoServices ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND SightSeeing = 1 ' +
    'AND Status = 1';
  GpSds.Open;

  if (GpSds['x_count']) > 0 then
    x_err_str := x_err_str + 'Sightseeing: ' + IntToStr(GpSds['x_count']) + ' Error(s) ';

  GpSds.Close;
  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM QuoServices ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND SightSeeing = 0 ' +
    'AND Status = 1';
  GpSds.Open;

  if (GpSds['x_count']) > 0 then
    begin
      if x_err_str > '' then x_err_str := x_err_str + chr(13);
      x_err_str := x_err_str + 'Transfers: ' + IntToStr(GpSds['x_count']) + ' Error(s) ';
    end;

  GpSds.Close;
  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM QuoTickets ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND Status = 1';
  GpSds.Open;

  if (GpSds['x_count']) > 0 then
    begin
      if x_err_str > '' then x_err_str := x_err_str + chr(13);
      x_err_str := x_err_str + 'Tickets: ' + IntToStr(GpSds['x_count']) + ' Error(s) ';
    end;

  GpSds.Close;
  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM QuoAccommodation ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND Status = 1';
  GpSds.Open;

  if (GpSds['x_count']) > 0 then
    begin
      if x_err_str > '' then x_err_str := x_err_str + chr(13);
      x_err_str := x_err_str + 'Accommodation: ' + IntToStr(GpSds['x_count']) + ' Error(s) ';
    end;

  GpSds.Free;

  if x_err_str > '' then
    ShowMessage (x_err_str);

end;

procedure TQuotationForm.cxGridDBTableView5StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');

  if ARecord.Values[AColumn.Index] > 0 then
    AStyle := cxStyleRed;

end;

procedure TQuotationForm.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');

  if ARecord.Values[AColumn.Index] > 0 then
    AStyle := cxStyleRed;

end;

procedure TQuotationForm.cxGridDBTableView7StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');

  if ARecord.Values[AColumn.Index] > 0 then
    AStyle := cxStyleRed;

end;

procedure TQuotationForm.MovecurrentMasterBlockfromselectedrecordOnlyDates1Click(
  Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_MasterCode, NewString: string;
  x_rows: integer;
  ClickedOK: boolean;
begin

  if cxPageControl1.ActivePageIndex <> 0 then
    begin
      cxPageControl1.ActivePageIndex := 0;
      exit;
    end;

  if AccCds['Masters_id'] = null then
    exit;

  QueryString := 'SELECT MasterCode FROM Masters WHERE Masters_id = ' + IntToStr(AccCds['Masters_id']);

  ClickedOK := InputQuery('Select Rows to Shift By', 'Select Rows to Shift By', NewString);
  if ClickedOK then            { NewString contains new input string }
    x_rows := StrToInt(NewString);


  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_MasterCode := '';
  if GpSds['MasterCode'] <> null then
    x_MasterCode := GpSds['MasterCode'];

  GpSds.Free;

  QueryString := 'EXEC p_ShiftQuotationMasters ' + IntToStr(AccCds['Quotations_id']) + ',' +
    IntToStr(AccCds['Masters_id']) + ',' + IntToStr(x_rows) + ',' + IntToStr(AccCds['DayIn']) + ',2';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  TblRefresh;

  ValidateServices;
end;

procedure TQuotationForm.AccGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');

  if ARecord.Values[AColumn.Index] > 0 then
    AStyle := cxStyleRed;

end;

end.

