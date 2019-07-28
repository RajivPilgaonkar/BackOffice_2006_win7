unit Presto2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_Presto_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, ExtCtrls, cxPC,
  cxNavigator, cxDBNavigator, cxContainer, cxLabel, cxDBLabel, StdCtrls,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit,
  cxTimeEdit, DateUtils, scExcelExport, cxRadioGroup;

type
  TPresto2Form = class(TCustom_Presto_Form)
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
    MasterCdsMealPlans_id: TIntegerField;
    MasterCdsGuide: TBooleanField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsNights: TIntegerField;
    MasterCdsEntranceFees: TBooleanField;
    MasterCdsDateOfArrival: TSQLTimeStampField;
    MasterCdsFlightNo: TStringField;
    MasterCdsPlaceFrom: TStringField;
    MasterCdsPaxFirstName: TStringField;
    MasterCdsNumTriples: TIntegerField;
    MasterCdsCarHireAgents_id: TIntegerField;
    MasterCdsCarHireCities_id: TIntegerField;
    MasterCdsETA: TSQLTimeStampField;
    MasterCdsHotelTypes_id: TIntegerField;
    MasterCdsReference: TStringField;
    MasterCdsCountries_id: TIntegerField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsExtraBed: TBooleanField;
    MasterCdsDateOfDeparture: TSQLTimeStampField;
    MasterCdsFlightNoDept: TStringField;
    MasterCdsPlaceTo: TStringField;
    MasterCdsETD: TSQLTimeStampField;
    MasterCdsPrincipalAgents_id: TIntegerField;
    MasterCdsTourCode: TStringField;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsdomestic: TBooleanField;
    MasterCdsStartCities_id: TIntegerField;
    MasterCdsTourNo: TIntegerField;
    MasterCdsManagers_id: TIntegerField;
    MasterCdsAdmUsers_id: TIntegerField;
    MasterCdsNumTwins: TIntegerField;
    MasterCdsDeptDomestic: TBooleanField;
    MasterCdsEndCities_id: TIntegerField;
    MasterCdsEndDate: TSQLTimeStampField;
    MasterCdsConfirmed: TBooleanField;
    MasterCdsWeb: TIntegerField;
    MasterCdsTrial: TIntegerField;
    MasterCdsConsultants_id: TIntegerField;
    MasterCdsCancelledOn: TSQLTimeStampField;
    MasterCdsComment: TStringField;
    MasterCdsPrincipalClient: TStringField;
    MasterCdsBookingRecdDate: TSQLTimeStampField;
    MasterCdsBookingEntryDate: TSQLTimeStampField;
    MasterCdsQuotationSendDate: TSQLTimeStampField;
    MasterCdsBasicRate: TFMTBCDField;
    MasterCdsBasicAmt: TFMTBCDField;
    MasterCdsServiceTaxPerc: TFMTBCDField;
    MasterCdsServiceTaxAmt: TFMTBCDField;
    MasterCdsQuotationAmt: TFMTBCDField;
    MasterCdsAdvanceAmt: TFMTBCDField;
    MasterCdsDueDate: TSQLTimeStampField;
    MasterCdsWebQuotation: TBooleanField;
    MasterCdsValidFrom: TSQLTimeStampField;
    MasterCdsValidTo: TSQLTimeStampField;
    Panel5: TPanel;
    Splitter2: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    ValidityPanel: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    QuoRefLabel: TLabel;
    cxQuoRefEdit: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    LeadNameLabel: TLabel;
    QuoLeadNameEdit: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label25: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxWebCkb: TcxDBCheckBox;
    ValidFromLabel: TLabel;
    cxValidFromEdit: TcxDBDateEdit;
    ValidToLabel: TLabel;
    cxValidToEdit: TcxDBDateEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    TourDateLbl: TLabel;
    TourDateEdit: TcxDBDateEdit;
    Label36: TLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    Label38: TLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label30: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    Label11: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label8: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    Label16: TLabel;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    Label33: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Panel15: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    Label12: TLabel;
    AgentLCB: TcxDBLookupComboBox;
    ConsultantLabel: TLabel;
    ConsultantLCB: TcxDBLookupComboBox;
    ReferenceLabel: TLabel;
    cxReferenceEdit: TcxDBTextEdit;
    Label15: TLabel;
    CountryLCB: TcxDBLookupComboBox;
    Label17: TLabel;
    CurrencyLCB: TcxDBLookupComboBox;
    EmailLabel: TLabel;
    EmailEdit: TcxDBTextEdit;
    Label10: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label23: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label31: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label32: TLabel;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    Label13: TLabel;
    DetailCdsQuoCities_id: TIntegerField;
    DetailCdsQuotations_id: TIntegerField;
    DetailCdsDateIn: TSQLTimeStampField;
    DetailCdsDateOut: TSQLTimeStampField;
    DetailCdsTimeIn: TSQLTimeStampField;
    DetailCdsTimeOut: TSQLTimeStampField;
    DetailCdsFromCities_id: TIntegerField;
    DetailCdsToCities_id: TIntegerField;
    DetailCdsModeOfTravel: TIntegerField;
    DetailCdsNights: TIntegerField;
    DetailCdsQuoAccommodation_id: TIntegerField;
    DetailCdsQuoTickets_id: TIntegerField;
    DetailCdsQuoServices_id: TIntegerField;
    DetailCdsQuoArrTransfers_id: TIntegerField;
    DetailCdsQuoDepTransfers_id: TIntegerField;
    DetailCdsStatus: TIntegerField;
    DetailCdsStartCity: TBooleanField;
    DetailCdsQuoTicketsOk: TBooleanField;
    DetailCdsQuoAccommodationOk: TBooleanField;
    DetailCdsQuoSightSeeingOk: TBooleanField;
    DetailCdsQuoTransfersOk: TBooleanField;
    DetailCdsErrorNo: TIntegerField;
    DetailCdsErrorDesc: TStringField;
    DetailCdsDriveStartTime: TSQLTimeStampField;
    DetailCdsModeString: TStringField;
    DetailCdsWarnDesc: TStringField;
    DetailCdsQcCarHireAgents_id: TIntegerField;
    DetailCdsQcCarHireCities_id: TIntegerField;
    DetailCdsQcVehicles_id: TIntegerField;
    DetailCdsP2P: TIntegerField;
    DetailCdsIsRemarksOther: TIntegerField;
    DetailCdsRemarksOther: TStringField;
    DetailCdsModuleQuotations_id: TIntegerField;
    cxGrid1DBBandedTableView1QuoCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DateOut: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TimeIn: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TimeOut: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModeOfTravel: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoAccommodation_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoServices_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoArrTransfers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoDepTransfers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Status: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1StartCity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoTicketsOk: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoAccommodationOk: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoSightSeeingOk: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoTransfersOk: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ErrorNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ErrorDesc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DriveStartTime: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModeString: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WarnDesc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QcCarHireAgents_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QcCarHireCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QcVehicles_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1P2P: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1IsRemarksOther: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RemarksOther: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModuleQuotations_id: TcxGridDBBandedColumn;
    HotelTypesSds: TSQLDataSet;
    HotelTypesCds: TClientDataSet;
    HotelTypesCdsHotelTypes_id: TIntegerField;
    HotelTypesCdsHotelType: TStringField;
    HotelTypesCdsSelectFit: TBooleanField;
    HotelTypesDs: TDataSource;
    MealPlansSds: TSQLDataSet;
    MealPlansDsp: TDataSetProvider;
    MealPlansDs: TDataSource;
    MealPlansCds: TClientDataSet;
    MealPlansCdsmealplans_id: TIntegerField;
    MealPlansCdsmealplan: TStringField;
    MealPlansCdsplan: TStringField;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsvehicles_id: TIntegerField;
    VehicleCdsvehicle: TStringField;
    VehicleDs: TDataSource;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDS: TDataSource;
    ConsultantSds: TSQLDataSet;
    ConsultantDsp: TDataSetProvider;
    ConsultantCds: TClientDataSet;
    ConsultantDs: TDataSource;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    CountriesDs: TDataSource;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesDs: TDataSource;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsOrganisation: TStringField;
    AccDs: TDataSource;
    ModQuoSds: TSQLDataSet;
    ModQuoDsp: TDataSetProvider;
    ModQuoCds: TClientDataSet;
    ModQuoCdsQuotations_id: TIntegerField;
    ModQuoCdsQuotationRef: TStringField;
    ModQuoCdsPaxName: TStringField;
    ModQuoCdsQuotationDate: TSQLTimeStampField;
    ModQuoDs: TDataSource;
    PopupMenu1: TPopupMenu;
    DisplayItinerary2: TMenuItem;
    N14: TMenuItem;
    PostProcess1: TMenuItem;
    mnuCreateMasters: TMenuItem;
    mnuDeleteMasters: TMenuItem;
    CreateBookings1: TMenuItem;
    N22: TMenuItem;
    CreateModule3: TMenuItem;
    N24: TMenuItem;
    N23: TMenuItem;
    MoveTo1: TMenuItem;
    mnuMoveToTrial: TMenuItem;
    mnuMoveToLive: TMenuItem;
    mnuMoveToWeb: TMenuItem;
    N25: TMenuItem;
    ModifyStartDate2: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    mnuCopyTrial: TMenuItem;
    SaveAsExcel2: TMenuItem;
    N27: TMenuItem;
    AutoCreate2: TMenuItem;
    All4: TMenuItem;
    N29: TMenuItem;
    Accommodation5: TMenuItem;
    SightSeeing6: TMenuItem;
    ransfers6: TMenuItem;
    N30: TMenuItem;
    SetTiming1: TMenuItem;
    N31: TMenuItem;
    Edit2: TMenuItem;
    Day2: TMenuItem;
    N32: TMenuItem;
    ickets4: TMenuItem;
    Accommodation6: TMenuItem;
    Sightseeing7: TMenuItem;
    ransfers7: TMenuItem;
    N33: TMenuItem;
    CheckIntegrity2: TMenuItem;
    All5: TMenuItem;
    N34: TMenuItem;
    ickets5: TMenuItem;
    Accommodation7: TMenuItem;
    Sightseeing8: TMenuItem;
    ransfers8: TMenuItem;
    N35: TMenuItem;
    Delete2: TMenuItem;
    All6: TMenuItem;
    N36: TMenuItem;
    ickets6: TMenuItem;
    Accommodation8: TMenuItem;
    Sightseeing9: TMenuItem;
    ransfers9: TMenuItem;
    N37: TMenuItem;
    DeleteSingleLine2: TMenuItem;
    ickets7: TMenuItem;
    Accommodation9: TMenuItem;
    Sightseeing10: TMenuItem;
    ransfers10: TMenuItem;
    scExcelExport: TscExcelExport;
    cxTrialLabel: TcxLabel;
    cxButtonStatus: TcxButton;
    PopupMenu2: TPopupMenu;
    ConfirmationStatus1: TMenuItem;
    N1: TMenuItem;
    FITStatusList1: TMenuItem;
    N2: TMenuItem;
    SendMails1: TMenuItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxStyleRed2: TcxStyle;
    cxStyleGrey: TcxStyle;
    LabelCancel: TLabel;
    cx_RefOpt: TcxRadioButton;
    cx_NoOpt: TcxRadioButton;
    cx_NameOpt: TcxRadioButton;
    cx_IdOpt: TcxRadioButton;
    cxSearchEdit: TcxTextEdit;
    cx_CodeOpt: TcxRadioButton;
    HotelTypesDsp: TDataSetProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
    procedure DetailCdsBeforeInsert(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DisplayItinerary2Click(Sender: TObject);
    procedure CreateModule3Click(Sender: TObject);
    procedure CreateBookings1Click(Sender: TObject);
    procedure mnuCreateMastersClick(Sender: TObject);
    procedure mnuDeleteMastersClick(Sender: TObject);
    procedure mnuMoveToTrialClick(Sender: TObject);
    procedure mnuMoveToLiveClick(Sender: TObject);
    procedure mnuMoveToWebClick(Sender: TObject);
    procedure mnuCopyTrialClick(Sender: TObject);
    procedure ModifyStartDate2Click(Sender: TObject);
    procedure SaveAsExcel2Click(Sender: TObject);
    procedure All4Click(Sender: TObject);
    procedure Accommodation5Click(Sender: TObject);
    procedure SightSeeing6Click(Sender: TObject);
    procedure ransfers6Click(Sender: TObject);
    procedure SetTiming1Click(Sender: TObject);
    procedure Day2Click(Sender: TObject);
    procedure ickets4Click(Sender: TObject);
    procedure Accommodation6Click(Sender: TObject);
    procedure Sightseeing7Click(Sender: TObject);
    procedure ransfers7Click(Sender: TObject);
    procedure All5Click(Sender: TObject);
    procedure ickets5Click(Sender: TObject);
    procedure Accommodation7Click(Sender: TObject);
    procedure Sightseeing8Click(Sender: TObject);
    procedure ransfers8Click(Sender: TObject);
    procedure All6Click(Sender: TObject);
    procedure ickets6Click(Sender: TObject);
    procedure Accommodation8Click(Sender: TObject);
    procedure Sightseeing9Click(Sender: TObject);
    procedure ransfers9Click(Sender: TObject);
    procedure ickets7Click(Sender: TObject);
    procedure Accommodation9Click(Sender: TObject);
    procedure Sightseeing10Click(Sender: TObject);
    procedure ransfers10Click(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure AgentLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ConsultantLCBPropertiesEditValueChanged(Sender: TObject);
    procedure DetailCdsToCities_idChange(Sender: TField);
    procedure cxGrid1DBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure SendMails1Click(Sender: TObject);
    procedure ConfirmationStatus1Click(Sender: TObject);
    procedure FITStatusList1Click(Sender: TObject);
    procedure ConsultantLCBEnter(Sender: TObject);
    procedure cxGrid1DBBandedTableView1ErrorNoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxWebCkbClick(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure SetNextDate;
    procedure SetLastDate;
    procedure CompleteCities;
    procedure FillTravelMode(x_option: integer);
    procedure SetOvernightJourney (x_QuoCities_id, x_Nights: integer);
    function RecommendedHotelTypes: boolean;
    procedure ModifyLayout;
    function GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
    function IsMasterTourCreated(x_MasterTourCode: string): boolean;
    function AlreadyVisited (x_Cities_id: integer; x_Date: TDateTime): boolean;
    procedure AlterLayout;
    procedure GetDefaultPrincipalAgent;
    procedure GetDefaultCurrCountry;
    procedure SetDefaultNights;
    procedure SearchQuotation;
  public
    { Public declarations }
  end;

var
  Presto2Form: TPresto2Form;
  PrestoForm_Level: integer;
  PrestoForm_FromDate: TDateTime;
  PrestoForm_ToDate: TDateTime;
  PrestoForm_DataType: integer;

implementation

uses BackOfficeDM, TravelModeFm, QuoDayEditFm, GeneralUt, FITItineraryFm,
  QuoBookingClientsFm, QuoModifyDateFm, QuoAccommodationFm, QuoServicesFm,
  MainFm, Quotations_ExcelReportsUt, SearchSortFm, QuoSendMailFm,
  QuoMailStatusFm, FitStatusListFm, AdditionalRemarksFm;

{$R *.dfm}

procedure TPresto2Form.FormCreate(Sender: TObject);
begin

  Caption := 'Presto';
  Width := 1250;
  Height := 690;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Tour Details';
  cxTabSheet2.Caption := 'Cities';

  Panel1.Visible := false;
  ActivateInCustom;

  ModifyLayout;

  MasterSds.Params[0].Value := PrestoForm_FromDate;
  MasterSds.Params[1].Value := PrestoForm_ToDate;
  MasterSds.Params[2].Value := PrestoForm_DataType;

  inherited;

  HotelTypesCds.Open;
  MealPlansCds.Open;
  UsersCds.Open;
  VehicleCds.Open;

  PrinAgentCds.Open;
  ConsultantCds.Open;
  CountriesCds.Open;
  CurrencyCds.Open;

  CitiesCds.Open;
  AccCds.Open;
  ModQuoCds.Open;

end;

procedure TPresto2Form.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Quotations';
  Custom_MasterKeyField := 'Quotations_id';

  Custom_DetailCdsName := 'QuoCities';
  Custom_DetailKeyField := 'QuoCities_id';

  Custom_AdmLevel := PrestoForm_Level;

  Custom_FormWidth := Width;
  Custom_FormHeight := Height - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TPresto2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  Presto2Form := nil;
end;

procedure TPresto2Form.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_error: integer;
  x_Pax, x_str: string;
  GpSds : TSQLDataSet;
begin

  if MasterCds['QuotationDate'] = null then
    raise Exception.Create('Enter the Quotation Date');

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

  if MasterCds['StartDate'] = null then
    raise Exception.Create('Enter the Start Date');

  if MasterCds['ETA'] = null then
    MasterCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',MasterCds['StartDate']) + ' 20:00');

  if MasterCds['CarHireAgents_id'] = null then
    MasterCds['CarHireAgents_id'] := 2170;

  if MasterCds['CarHireCities_id'] = null then
    MasterCds['CarHireCities_id'] := 176;

  if (MasterCds['Vehicles_id'] = null) or (MasterCds['Vehicles_id'] = 0) then
    MasterCds['Vehicles_id'] := 36;

  if (MasterCds['HotelTypes_id'] = null) or (MasterCds['HotelTypes_id'] = 0) then
    MasterCds['HotelTypes_id'] := 6;

  if not RecommendedHotelTypes then
    MessageDlg('Hotel was not in recommended list', mtWarning, [mbOK], 0);

  if (MasterCds['DateOfArrival'] <> null) and (MasterCds['StartDate'] = null) then
    begin
      if FormatDateTime('HH:mm', MasterCds['DateOfArrival']) <= '05:00' then
        MasterCds['StartDate'] := MasterCds['DateOfArrival']
      else
        MasterCds['StartDate'] := IncDay(MasterCds['DateOfArrival'],1);
    end;

  if (MasterCds['Domestic'] = null) then
    MasterCds['Domestic'] := False;

  if (MasterCds['DeptDomestic'] = null) then
    MasterCds['DeptDomestic'] := false;

  if (MasterCds['ExtraBed'] = null) then
    MasterCds['ExtraBed'] := false;

  if (MasterCds['Confirmed'] = null) then
    MasterCds['Confirmed'] := false;

  if (MasterCds['Web'] = null) then
    MasterCds['Web'] := 0;

  if (MasterCds['Trial'] = null) then
    MasterCds['Trial'] := 0;

  if MasterCds['TourNo'] <> null then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      if MasterCds.State = dsInsert then
        x_str := ''
      else
        x_str := ' AND Quotations_id <> ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.CommandType := ctQuery;
      GpSds.CommandText := 'SELECT PaxName + '' '' + COALESCE(TourCode,'''') AS PaxName FROM Quotations WHERE TourNo = ' + IntToStr(MasterCds['TourNo']) + ' ' + x_str;
      GpSds.Open;

      x_error := 0;

      if (not GpSds.eof) then
        begin
          x_error := 1;
          x_Pax := '';
          if GpSds['PaxName'] <> null then
            x_Pax := GpSds['PaxName'];
        end;

      GpSds.Free;

      if x_error = 1 then
        if MessageDlg(x_Pax + '-- There is another similar tour code present. Do you want to save this one?', mtWarning, [mbYes, mbNo],0) <> mrYes then
          abort;
    end;

  MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], PrestoForm_DataType);

  if MasterCds.State = dsInsert then
    MasterCds['Quotations_id'] := GetNextId('Quotations','Quotations_id');

  inherited;

  if MasterCds['Quotations_id'] = null then
    raise Exception.Create('Quotations_id is not assigned');

end;

procedure TPresto2Form.DetailCdsBeforePost(DataSet: TDataSet);
begin

  if DetailCds['DateIn'] = null then
    Raise Exception.Create('Please enter the Date');

  if DetailCds['ToCities_id'] = null then
    Raise Exception.Create('Please enter the City');

  if DetailCds['Nights'] = null then
    Raise Exception.Create('Please enter the Nights');

  if DetailCds['Nights'] < 0 then
    Raise Exception.Create('Nights should be atleast 0');

  DetailCds['DateOut'] := IncDay(DetailCds['DateIn'],DetailCds['Nights']);

  if (DetailCds['RemarksOther'] <> null) and (trim(DetailCds['RemarksOther']) > '') then
    DetailCds['IsRemarksOther'] := 1
  else
    DetailCds['IsRemarksOther'] := 0;

  inherited;

  if DetailCds['QuoCities_id'] = null then
    raise Exception.Create('QuoCities_id is not assigned');

end;

procedure TPresto2Form.DetailCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SetNextDate;
  DetailCds['Status'] := 0;
  DetailCds['QuoTicketsOK'] := False;
  DetailCds['QuoAccommodationOK'] := False;
  DetailCds['QuoSightSeeingOK'] := False;
  DetailCds['QuoTransfersOK'] := False;
  DetailCds['DriveStartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date) + ' 09:00');
  DetailCds['P2P'] := 0;
end;

procedure TPresto2Form.SetNextDate;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MasterCds['Quotations_id'] = null then
    exit;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoCities ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] = 0 then
    begin
      if MasterCds['StartDate'] <> null then
        DetailCds['DateIn'] := MasterCds['StartDate'];
    end
  else
    begin
      SetLastDate;
    end;

  GpSds.Free;

end;

procedure TPresto2Form.SetLastDate;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_DateIn: TDateTime;
  x_Nights: integer;
begin

  if MasterCds['Quotations_id'] = null then
    exit;

  QueryString := 'SELECT MAX(DateIn) AS MaxDateIn FROM QuoCities ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_DateIn := GpSds['MaxDateIn'];

  QueryString := 'SELECT MAX(Nights) AS Nights FROM QuoCities ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND DateIn = ''' + FormatDateTime('mm/dd/yyyy',x_DateIn) + ''' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Nights := GpSds['Nights'];

  DetailCds['DateIn'] := x_DateIn + x_Nights;

  GpSds.Free;

end;



procedure TPresto2Form.DetailCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['Quotations_id'] = null then
    raise exception.create ('Please fill in Tour Details first');

end;

procedure TPresto2Form.DetailCdsAfterPost(DataSet: TDataSet);
var
  x_count: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;
  MasterCds.RefreshRecord;

  CompleteCities;
  FillTravelMode(1);

  if DetailCds['QuoCities_id'] <> null then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      QueryString := 'SELECT x_count = COUNT(*) FROM QuoAccommodation ' +
        'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_count := GpSds['x_count'];

      if x_count = 1 then
        begin

          QueryString := 'UPDATE QuoAccommodation SET DateIn = q.DateIn, ' +
            'DateOut = q.DateOut, Nights = q.Nights ' +
            'FROM QuoCities q ' +
            'WHERE QuoAccommodation.QuoCities_id = q.QuoCities_id ' +
            'AND q.QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

          GpSds.Free;

        end;

    end;

end;


procedure TPresto2Form.CompleteCities;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_QuoCities_id: integer;
begin
  inherited;

  QueryString := 'EXEC p_QuoCompleteCities ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  x_QuoCities_id := DetailCds['QuoCities_id'];
  DetailCds.Active := False;
  DetailCds.Active := True;
  DetailCds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TPresto2Form.FillTravelMode(x_option: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_QuoCities_id, x_display, x_Nights: integer;
begin
  inherited;

  QueryString := 'SELECT StartCity, ModeOfTravel, QuoTickets_id FROM QuoCities ' +
    'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and ((GpSds['StartCity'] = False) or (DetailCds['FromCities_id'] <> null) or (x_option = 3)) then
    begin

      x_display := 0;

      if (x_option = 1) and (GpSds['QuoTickets_id'] = null) and (GpSds['ModeOfTravel'] = null) then
        x_display := 1
      else if (x_option = 2) then
        x_display := 1
      else if (x_option = 3) then
        x_display := 1;

      if (x_display = 1) and ((x_option = 1) or (x_option = 2)) then
        begin

          //x_OverNight := IsOvernightJourney(DetailCds['QuoCities_id']);

          _TravelModeForm_Quotations_id := DetailCds['Quotations_id'];
          _TravelModeForm_QuoCities_id := DetailCds['QuoCities_id'];
          _TravelModeForm_FromCities_id := DetailCds['FromCities_id'];
          _TravelModeForm_ToCities_id := DetailCds['ToCities_id'];

          _TravelModeForm_TravelDate := DetailCds['DateIn'];

{
          if not x_Overnight then
            _TravelModeForm_TravelDate := DetailCds['DateIn']
          else
            _TravelModeForm_TravelDate := IncDay(DetailCds['DateIn'],-1);
}

          if DetailCds['QuoTickets_id'] <> null then
            _TravelModeForm_QuoTickets_id := DetailCds['QuoTickets_id']
          else
            _TravelModeForm_QuoTickets_id := 0;

          if TravelModeForm = nil then
            Application.CreateForm(TTravelModeForm, TravelModeForm);

          TravelModeForm.FormStyle := fsNormal;
          TravelModeForm.Visible := False;

          TravelModeForm.ShowModal;

          if _TravelModeForm_Result = 1 then
            begin
              if TravelModeForm.TicketCds['Overnight'] = true then
                begin

                  if DetailCds.State = dsBrowse then
                    DetailCds.Edit;

                  x_Nights := 1;
                  if TravelModeForm.TicketCds['Nights'] <> null then
                    x_Nights := TravelModeForm.TicketCds['Nights'];

                  SetOvernightJourney(DetailCds['QuoCities_id'], x_Nights);
                end;
            end;

          TravelModeForm.Free;
          TravelModeForm := nil;

          x_QuoCities_id := DetailCds['QuoCities_id'];
          if DetailCds.State in [dsEdit, dsInsert] then
            DetailCds.Post;
          DetailCds.Active := False;
          DetailCds.Active := True;
          DetailCds.Locate('QuoCities_id', x_QuoCities_id,[]);

        end

      else if (x_display = 1) and (x_option = 3) then
        begin

          //x_OverNight := IsOvernightJourney(DetailCds['QuoCities_id']);

          _QuoDayEditForm_Quotations_id := DetailCds['Quotations_id'];
          _QuoDayEditForm_QuoCities_id := DetailCds['QuoCities_id'];
          if DetailCds['FromCities_id'] <> null then
            _QuoDayEditForm_FromCities_id := DetailCds['FromCities_id'];
          if DetailCds['ToCities_id'] <> null then
            _QuoDayEditForm_ToCities_id := DetailCds['ToCities_id'];

          _QuoDayEditForm_TravelDate := DetailCds['DateIn'];

          if DetailCds['QuoTickets_id'] <> null then
            _QuoDayEditForm_QuoTickets_id := DetailCds['QuoTickets_id']
          else
            _QuoDayEditForm_QuoTickets_id := 0;

          if QuoDayEditForm = nil then
            Application.CreateForm(TQuoDayEditForm, QuoDayEditForm);

          if DetailCds['FromCities_id'] = null then
            QuoDayEditForm.TicketsTab.Enabled := False;

          QuoDayEditForm.FormStyle := fsNormal;
          QuoDayEditForm.Visible := False;

          QuoDayEditForm.ShowModal;

          if _QuoDayEditForm_Result = 1 then
            begin
              if QuoDayEditForm.TicketCds['Overnight'] = true then
                begin

                  if DetailCds.State = dsBrowse then
                    DetailCds.Edit;

                  x_Nights := 1;
                  if QuoDayEditForm.TicketCds['Nights'] <> null then
                    x_Nights := QuoDayEditForm.TicketCds['Nights'];

                  SetOvernightJourney(DetailCds['QuoCities_id'], x_Nights);
                end;
            end;

          QuoDayEditForm.Free;
          QuoDayEditForm := nil;

          x_QuoCities_id := DetailCds['QuoCities_id'];

          if DetailCds.State in [dsEdit, dsInsert] then
            DetailCds.Post;
          DetailCds.Active := False;
          DetailCds.Active := True;
          DetailCds.Locate('QuoCities_id', x_QuoCities_id,[]);

        end;


    end;

  GpSds.Free;

end;

procedure TPresto2Form.SetOvernightJourney (x_QuoCities_id, x_Nights: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Quotations_id: integer;
  x_DateIn, x_DateOut: TDateTime;
begin

  QueryString := 'SELECT Quotations_id, DateIn FROM QuoCities ' +
    'WHERE QuoCities_id = ' + IntToStr(x_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Quotations_id := 0;
  if (not GpSds.EOF) and (GpSds['Quotations_id'] <> null) then
    x_Quotations_id := GpSds['Quotations_id'];

  x_DateIn := GpSds['DateIn'];

  QueryString := 'SELECT MAX(DateOut) AS DateOut FROM QuoCities ' +
    'WHERE Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
    'AND DateIn < ''' + FormatDateTime('mm/dd/yyyy',x_DateIn) + ''' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['DateOut'] <> null) then
    begin
      x_DateOut := GpSds['DateOut'];
      DetailCds['DateIn'] := IncDay(x_DateOut,x_Nights);
    end
  else
    begin
      // Could happen if in the start city, the pax arrive by overnight
      DetailCds['DateIn'] := IncDay(DetailCds['DateIn'],x_Nights);
    end;

  GpSds.Free;

end;



function TPresto2Form.RecommendedHotelTypes: boolean;
var
  x_ok: boolean;
  x_count: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT count(*) AS x_count FROM HotelTypes ' +
    'WHERE HotelTypes_id = ' + IntToStr(MasterCds['HotelTypes_id']) + ' ' +
    'AND SelectFIT = 1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  x_ok := False;
  if x_count > 0 then
    x_ok := True;

  Result := x_ok;

end;

function TPresto2Form.GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
var
  x_NextQuoteNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT MAX(QuotationNo) AS NextQuoteNo FROM Quotations ' +
    'WHERE QuotationYearRef = ' + IntToStr(x_YearRef) + ' ' +
    'AND Trial = ' + IntToStr(x_Trial);

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

procedure TPresto2Form.ModifyLayout;
begin

  cxTrialLabel.Caption := '';
  mnuCopyTrial.Visible := false;

  if PrestoForm_DataType = 1 then
    begin
      Panel1.Color := cxStyleRed.Color;
      cxTrialLabel.Caption := 'TRIAL AREA';
      cxButtonStatus.Visible := false;
      mnuCreateMasters.Visible := false;
      mnuDeleteMasters.Visible := false;
      mnuMovetoTrial.Visible := false;
      mnuMovetoLive.Visible := true;
      mnuCopyTrial.Visible := true;
    end
  else if PrestoForm_DataType = 2 then
    begin
      Panel1.Color := cxStyleBlue.Color;
      cxTrialLabel.Caption := 'WEB QUOTATIONS AREA';
      cxButtonStatus.Visible := false;
      mnuCreateMasters.Visible := false;
      mnuDeleteMasters.Visible := false;
      mnuMovetoTrial.Visible := false;
      mnuMovetoLive.Visible := true;
    end
  else if PrestoForm_DataType = 3 then
    begin
      Panel1.Color := cxStyleGreen.Color;
      cxTrialLabel.Caption := 'RIKSJA AREA';
      cxButtonStatus.Visible := false;
      mnuCreateMasters.Visible := false;
      mnuDeleteMasters.Visible := false;
      mnuMovetoTrial.Visible := false;
      mnuMovetoLive.Visible := true;
    end;


  if PrestoForm_DataType = 3 then
    begin
      QuoRefLabel.Caption := 'Mod. Code';
      LeadNameLabel.Caption := 'Mod. Name';

      ValidityPanel.visible := true;

      ConsultantLabel.visible := false;
      ReferenceLabel.visible := false;
      EmailLabel.visible := false;

      ConsultantLCB.visible := false;
      cxReferenceEdit.visible := false;
      EmailEdit.visible := false;

    end;

end;



procedure TPresto2Form.DisplayItinerary2Click(Sender: TObject);
begin
  inherited;

  _FITItineraryForm_Quotations_id := MasterCds['Quotations_id'];
  _FITItineraryForm_Trial := PrestoForm_DataType;

  if FitItineraryForm = nil then
    Application.CreateForm(TFitItineraryForm, FitItineraryForm);

end;

procedure TPresto2Form.CreateModule3Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_QuoCreateModule: integer;
begin
  inherited;

  x_QuoCreateModule := GetUserLevel(g_users_id, 12005);

  If x_QuoCreateModule = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg('Are you sure you would like to create a module?',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if ((MasterCds['Quotations_id'] = null) or (MasterCds['TourCode'] = null) or
      (MasterCds['StartDate'] = null)) then
    raise exception.Create('Please enter Tour Code / Tour Date');

  QueryString := 'EXEC p_QuoModules_AutoInsertElements ' +
    IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('done');

end;

procedure TPresto2Form.CreateBookings1Click(Sender: TObject);
begin
  inherited;
  _QuoBookingClientsForm_Quotations_id := MasterCds['Quotations_id'];
  _QuoBookingsClientsForm_Level := 4;

  if QuoBookingClientsForm = nil then
    Application.CreateForm(TQuoBookingClientsForm, QuoBookingClientsForm);

end;

procedure TPresto2Form.mnuCreateMastersClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.post;

  if (MasterCds['TourCode'] = null) or (trim(MasterCds['TourCode']) = '') then
    raise exception.create('Please enter the Tour Code');

  if (MasterCds['TourNo'] = null) or (MasterCds['TourNo'] = 0) then
    raise exception.create('Please enter the Tour Number');

  if (MasterCds['Reference'] = null) or (trim(MasterCds['Reference']) = '') then
    raise exception.create('Please enter the Reference Number');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoBookingsClients ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if GpSds['x_count'] = 0 then
    begin
      GpSds.Free;
      raise exception.create('Please enter Pax Names in the bookings before creating the Masters');
    end;

  QueryString := 'SELECT x_count = COUNT(*) FROM Bookings ' +
    'WHERE Reference = ''' + MasterCds['Reference'] + '''';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if GpSds['x_count'] > 0 then
    begin
      GpSds.Free;
      raise exception.create('This reference number already exists');
    end;


  if MessageDlg ('Are you sure you want to create Masters for this tour?', mtWarning,
    [mbyes, mbNo], 0) <> mrYes then
    Abort;


  QueryString := 'EXEC p_QuoConvertToMasters ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.mnuDeleteMastersClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString, x_TourCode: string;
  x_Masters_id, x_count: integer;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  QueryString := 'SELECT TourCode FROM Quotations WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_TourCode := '';
  if (not GpSds.Eof) and (GpSds['TourCode'] <> null) then
    x_TourCode := GpSds['TourCode'];

  QueryString := 'SELECT Masters_id FROM Masters WHERE MasterCode = ''' + x_TourCode + '''';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Masters_id := -1;
  if (not GpSds.Eof) and (GpSds['Masters_id'] <> null) then
    x_Masters_id := GpSds['Masters_id'];

  QueryString := 'SELECT COUNT(*) AS x_count FROM Itineraries WHERE Masters_id = ' + IntToStr(x_Masters_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    begin
      GpSds.Free;
      ShowMessage ('Cannot delete. Itinerary Created. You will have to delete the itinerary first');
      exit;
    end;

  QueryString := 'EXEC p_QuoDeleteConvertToMasters ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TPresto2Form.mnuMoveToTrialClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('Are you sure you want to move this to the TRIAL area?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], 1);

  MasterCds['Trial'] := 1;
  MasterCds.Post;

end;

procedure TPresto2Form.mnuMoveToLiveClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure you want to move this to the LIVE area?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], 0);

  MasterCds['Trial'] := 0;
  MasterCds.Post;


end;

procedure TPresto2Form.mnuMoveToWebClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('Are you sure you want to move this to the WEB area?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], 1);

  MasterCds['Trial'] := 2;
  MasterCds.Post;

end;

procedure TPresto2Form.mnuCopyTrialClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MasterCds['Quotations_id'] = null then
    abort;

  if MasterCds['Trial'] <> 1 then
    raise exception.create ('Only valid for trial');

  if MessageDlg ('This will make a copy of the quotation. Are you sure?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  QueryString := 'EXEC [p_QuotationCopy] ' +
    IntToStr(MasterCds['Quotations_id']) + ',1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Close;
  GpSds.CommandText := 'SELECT MAX(Quotations_id) AS Max_id FROM Quotations';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Max_id'] <> null) then
    begin
      DetailCds.Active := False;
      MasterCds.Active := False;

      MasterCds.Active := true;
      DetailCds.Active := true;

      MasterCds.Locate('Quotations_id', GpSds['Max_id'], []);

      DetailCds.Active := false;
      DetailCds.Active := true;

    end;

  GpSds.Free;

  ShowMessage('done');

end;

procedure TPresto2Form.ModifyStartDate2Click(Sender: TObject);
begin
  inherited;
  if MasterCds['StartDate'] = null then
    raise exception.create ('Please enter the Start Date "Arr On"');

  if MasterCds['Quotations_id'] = null then
    raise exception.create ('Please save the quotation first');

  if MasterCds['TourCode'] <> null then
    begin
      if IsMasterTourCreated(MasterCds['TourCode']) then
        raise exception.create ('Master already created. Cannot modify dates now.');
    end;

  _QuoModifyDateForm_Level := PrestoForm_Level;

  If _QuoModifyDateForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _QuoModifyDateForm_StartDate := MasterCds['StartDate'];
  _QuoModifyDateForm_Quotations_id := MasterCds['Quotations_id'];

  if QuoModifyDateForm = nil then
    Application.CreateForm(TQuoModifyDateForm,QuoModifyDateForm);

  QuoModifyDateForm.ShowModal;

  QuoModifyDateForm.Free;
  QuoModifyDateForm := nil;

end;

procedure TPresto2Form.SaveAsExcel2Click(Sender: TObject);
var
  x_FileName: string;
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MasterCds['Quotations_id'] = null then
    abort;

  QueryString := 'EXEC p_QuoSetModules ' +
    IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_Rpt_DetailedItinerary2 ' +
    IntToStr(MasterCds['Quotations_id']) + ',0';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  x_FileName := 'Quotation_' + IntToStr(MasterCds['Quotations_id']) + '.xls';

  Quotations_Excel(scExcelExport, x_FileName, MasterCds['Quotations_id'], 1);

  ShowMessage('Saved As C:\' + x_FileName);

end;

procedure TPresto2Form.All4Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoCompleteTimings ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoAutoFillAccommodation ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoAutoFillSightSeeing ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoAutoFillTransfers ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoCompleteTimings ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.Accommodation5Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoAutoFillAccommodation ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TPresto2Form.SightSeeing6Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoAutoFillSightSeeing ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TPresto2Form.ransfers6Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoAutoFillTransfers ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.SetTiming1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoCompleteTimings ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.Day2Click(Sender: TObject);
begin
  inherited;

  //***************************
  //** Accommodation Variables
  //***************************

  _QuoDayEditForm_QuoCities_id := DetailCds['QuoCities_id'];
  _QuoDayEditForm_Quotations_id := DetailCds['Quotations_id'];
  _QuoDayEditForm_ToCities_id := DetailCds['ToCities_id'];

  if DetailCds['QuoAccommodation_id'] <> null then
    _QuoDayEditForm_QuoAccommodation_id := DetailCds['QuoAccommodation_id']
  else
    _QuoDayEditForm_QuoAccommodation_id := 0;

  _QuoDayEditForm_DateIn := DetailCds['DateIn'];
  _QuoDayEditForm_DateOut := DetailCds['DateOut'];
  _QuoDayEditForm_Nights := DetailCds['Nights'];

  //*******************************
  //** Services/Transfer Variables
  //*******************************

  if DetailCds['ModeOfTravel'] <> null then
    _QuoDayEditForm_ModeOfTravel := DetailCds['ModeOfTravel']
  else
    _QuoDayEditForm_ModeOfTravel := 0;


  //*******************************
  //** Tickets Variables
  //*******************************

  FillTravelMode(3);

  if QuoDayEditForm <> nil then
    begin
      QuoDayEditForm.Free;
      QuoDayEditForm := nil;
    end;


end;

procedure TPresto2Form.ickets4Click(Sender: TObject);
begin
  inherited;
  FillTravelMode(2);
end;

procedure TPresto2Form.Accommodation6Click(Sender: TObject);
var
  x_QuoCities_id: integer;
begin
  inherited;

  _QuoAccommodationForm_QuoCities_id := DetailCds['QuoCities_id'];
  _QuoAccommodationForm_Quotations_id := DetailCds['Quotations_id'];
  _QuoAccommodationForm_ToCities_id := DetailCds['ToCities_id'];

  if DetailCds['QuoAccommodation_id'] <> null then
    _QuoAccommodationForm_QuoAccommodation_id := DetailCds['QuoAccommodation_id']
  else
    _QuoAccommodationForm_QuoAccommodation_id := 0;

  _QuoAccommodationForm_DateIn := DetailCds['DateIn'];
  _QuoAccommodationForm_DateOut := DetailCds['DateOut'];
  _QuoAccommodationForm_Nights := DetailCds['Nights'];

  if QuoAccommodationForm = nil then
    Application.CreateForm(TQuoAccommodationForm, QuoAccommodationForm);

  QuoAccommodationForm.FormStyle := fsNormal;
  QuoAccommodationForm.Visible := False;

  QuoAccommodationForm.ShowModal;

  QuoAccommodationForm.Free;
  QuoAccommodationForm := nil;

  x_QuoCities_id := DetailCds['QuoCities_id'];
  DetailCds.Active := False;
  DetailCds.Active := True;
  DetailCds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TPresto2Form.Sightseeing7Click(Sender: TObject);
var
  x_QuoCities_id: integer;
begin
  inherited;

  _QuoServicesForm_QuoCities_id := DetailCds['QuoCities_id'];
  _QuoServicesForm_Quotations_id := DetailCds['Quotations_id'];
  _QuoServicesForm_ServiceType := 1;

  if DetailCds['ModeOfTravel'] <> null then
    _QuoServicesForm_ModeOfTravel := DetailCds['ModeOfTravel']
  else
    _QuoServicesForm_ModeOfTravel := 0;

  if DetailCds['QuoServices_id'] <> null then
    _QuoServicesForm_QuoServices_id := DetailCds['QuoServices_id']
  else
    _QuoServicesForm_QuoServices_id := 0;

  AlreadyVisited (DetailCds['QuoCities_id'], DetailCds['QuoCities_id']);

  if QuoServicesForm = nil then
    Application.CreateForm(TQuoServicesForm, QuoServicesForm);

  QuoServicesForm.FormStyle := fsNormal;
  QuoServicesForm.Visible := False;

  QuoServicesForm.ShowModal;

  QuoServicesForm.Free;
  QuoServicesForm := nil;

  x_QuoCities_id := DetailCds['QuoCities_id'];
  DetailCds.Active := False;
  DetailCds.Active := True;
  DetailCds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TPresto2Form.ransfers7Click(Sender: TObject);
var
  x_QuoCities_id: integer;
begin
  inherited;

  _QuoServicesForm_QuoCities_id := DetailCds['QuoCities_id'];
  _QuoServicesForm_Quotations_id := DetailCds['Quotations_id'];
  _QuoServicesForm_ServiceType := 2;

  if DetailCds['ModeOfTravel'] <> null then
    _QuoServicesForm_ModeOfTravel := DetailCds['ModeOfTravel']
  else
    _QuoServicesForm_ModeOfTravel := 0;

  if DetailCds['QuoServices_id'] <> null then
    _QuoServicesForm_QuoServices_id := DetailCds['QuoServices_id']
  else
    _QuoServicesForm_QuoServices_id := 0;

  if QuoServicesForm = nil then
    Application.CreateForm(TQuoServicesForm, QuoServicesForm);

  QuoServicesForm.FormStyle := fsNormal;
  QuoServicesForm.Visible := False;

  QuoServicesForm.ShowModal;

  QuoServicesForm.Free;
  QuoServicesForm := nil;

  x_QuoCities_id := DetailCds['QuoCities_id'];
  DetailCds.Active := False;
  DetailCds.Active := True;
  DetailCds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TPresto2Form.All5Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoCheckIntegrityTickets ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoCheckIntegrityAccommodation ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoCheckIntegritySightSeeing ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoCheckIntegrityTransfers ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  AccCds.Active := False;
  AccCds.Active := True;

  GpSds.Free;

  AccCds.Active := False;
  AccCds.Active := True;

  DetailCds.Active := False;
  DetailCds.Active := True;

  ShowMessage ('Done');

end;

procedure TPresto2Form.ickets5Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoCheckIntegrityTickets ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := False;
  DetailCds.Active := True;

  ShowMessage ('Done');

end;

procedure TPresto2Form.Accommodation7Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  QueryString := 'EXEC p_QuoCheckIntegrityAccommodation ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := False;
  DetailCds.Active := True;

  ShowMessage ('Done');


end;

procedure TPresto2Form.Sightseeing8Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  QueryString := 'EXEC p_QuoCheckIntegritySightSeeing ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := False;
  DetailCds.Active := True;

  ShowMessage ('Done');

end;

procedure TPresto2Form.ransfers8Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoCheckIntegrityTransfers ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := False;
  DetailCds.Active := True;

  ShowMessage ('Done');

end;

procedure TPresto2Form.All6Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoTickets WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'DELETE FROM QuoAccommodation WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND SightSeeing = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND SightSeeing = 0';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TPresto2Form.ickets6Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM QuoTickets WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.Accommodation8Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM QuoAccommodation WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.Sightseeing9Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND SightSeeing = 1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.ransfers9Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND SightSeeing = 0';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TPresto2Form.ickets7Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoTickets WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoTickets_id = null, QuoTicketsOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TPresto2Form.Accommodation9Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoAccommodation WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoAccommodation_id = null, QuoAccommodationOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TPresto2Form.Sightseeing10Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']) + ' ' +
    'AND SightSeeing = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoServices_id = null, QuoSightSeeingOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');
  

end;

procedure TPresto2Form.ransfers10Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']) + ' ' +
    'AND SightSeeing = 0';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoArrTransfers_id = null, QuoDepTransfers_id = null, QuoTransfersOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

function TPresto2Form.IsMasterTourCreated(x_MasterTourCode: string): boolean;
var
  x_ok: boolean;
  x_count: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT count(*) AS x_count FROM Masters ' +
    'WHERE MasterCode = ''' + x_MasterTourCode + ''' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  x_ok := False;
  if x_count > 0 then
    x_ok := True;

  Result := x_ok;

end;

function TPresto2Form.AlreadyVisited (x_Cities_id: integer; x_Date: TDateTime): boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Visited: boolean;
  x_count: integer;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoCities ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND ToCities_id = ' + IntToStr(x_Cities_id) + ' ' +
    'AND DateIn < ''' + FormatDateTime('mm/dd/yyyy',x_Date) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  if x_count > 0 then
    x_Visited := True
  else
    x_Visited := False;

  Result := x_Visited;

end;

procedure TPresto2Form.AlterLayout;
begin
  if cxWebCkb.Checked then
    begin
      ConsultantLCB.Enabled := false;
      cxReferenceEdit.Enabled := false;
      AgentLCB.Enabled := false;
    end
  else
    begin
      ConsultantLCB.Enabled := true;
      cxReferenceEdit.Enabled := true;
      AgentLCB.Enabled := true;
    end;

end;


procedure TPresto2Form.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['CancelledOn'] = null then
    LabelCancel.Visible := false
  else
    LabelCancel.Visible := true;

  AlterLayout;

end;

procedure TPresto2Form.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  MasterCds['TimePax'] := True;
  MasterCds['EconomyPax'] := True;
  MasterCds['NumPax'] := 2;
  MasterCds['NumSingles'] := 0;
  MasterCds['NumDoubles'] := 1;
  MasterCds['NumTriples'] := 0;
  MasterCds['NumTwins'] := 0;
  MasterCds['ExtraBed'] := False;
  MasterCds['StartDate'] := Date();
  MasterCds['QuotationDate'] := Date();
  MasterCds['Guide'] := True;
  MasterCds['EntranceFees'] := False;
  MasterCds['Tickets_id'] := 1;
  MasterCds['HotelTypes_id'] := 6;
  MasterCds['MealPlans_id'] := 2;
  MasterCds['Domestic'] := 0;
  MasterCds['DeptDomestic'] := 0;
  MasterCds['AdmUsers_id'] := g_users_id;
  MasterCds['Managers_id'] := g_users_id;
  MasterCds['Confirmed'] := False;
  MasterCds['Trial'] := PrestoForm_DataType;
  MasterCds['Web'] := 0;
  MasterCds['BookingEntryDate'] := Date();

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

  GetDefaultPrincipalAgent;

  if MasterCds['PrincipalAgents_id'] <> null   then
    GetDefaultCurrCountry;

  if PrestoForm_DataType = 2 then
    MasterCds['WebQuotation'] := true
  else
    MasterCds['WebQuotation'] := false;

end;

procedure TPresto2Form.GetDefaultPrincipalAgent;
var
  GpSds : TSQLDataSet;
  QueryString: String;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if MasterCds.State = dsInsert then
    begin

      QueryString := 'SELECT Addressbook_id FROM Addressbook ' +
        ' WHERE AddressBook_id = (SELECT Number FROM Defaults ' +
        ' WHERE Item LIKE ''%Principal Agent%'')';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if not GpSds.Eof then
        MasterCds['PrincipalAgents_id'] := GpSds['AddressBook_id'];

      GetDefaultCurrCountry;

   end;

  GpSds.Free;

end;

procedure TPresto2Form.GetDefaultCurrCountry;
var
  GpSds : TSQLDataSet;
  QueryString: String;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if MasterCds['PrincipalAgents_id'] <> null   then
    begin

      QueryString := 'SELECT Countries_id, Currencies_id FROM Addressbook ' +
        'WHERE AddressBook_id = '+ IntToStr(MasterCds['PrincipalAgents_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (MasterCds.State <> dsBrowse)  then
        begin
          MasterCds['Countries_id']  := GpSds['Countries_id'];
          MasterCds['Currencies_id'] := GpSds['Currencies_id'];
        end;
    end;

  GpSds.Free;

end;


procedure TPresto2Form.AgentLCBPropertiesEditValueChanged(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;
  try
    if (AgentLCB.EditValue <> null) and (PrinAgentCds.State = dsBrowse) then
      PrinAgentCds.Locate('Addressbook_id',AgentLCB.EditValue,[]);
  except
  end;

  if (MasterCds.State <> dsEdit) and (MasterCds.State <> dsInsert) then
    exit;

  if AgentLCB.EditValue = null then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT Countries_id, Currencies_id, Email ' +
    'FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(AgentLCB.EditValue);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['Countries_id'] <> null then
    begin
      MasterCds['Countries_id'] := GpSds['Countries_id'];
      CountryLCB.EditValue := MasterCds['Countries_id'];
    end;

  if GpSds['Currencies_id'] <> null then
    begin
      MasterCds['Currencies_id'] := GpSds['Currencies_id'];
      CurrencyLCB.EditValue := MasterCds['Currencies_id'];
    end;

  if GpSds['Email'] <> null then
    begin
      MasterCds['Email'] := GpSds['Email'];
      EmailEdit.Text := GpSds['Email'];
    end;

  GpSds.Free;

end;

procedure TPresto2Form.ConsultantLCBPropertiesEditValueChanged(
  Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if (MasterCds.State <> dsEdit) and (MasterCds.State <> dsInsert) then
    exit;

  if ConsultantLCB.EditValue = null then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT Email ' +
    'FROM Consultants ' +
    'WHERE Consultants_id = ' + IntToStr(ConsultantLCB.EditValue);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['Email'] <> null then
    begin
      MasterCds['Email'] := GpSds['Email'];
      EmailEdit.Text := GpSds['Email'];
    end;

  GpSds.Free;

end;

procedure TPresto2Form.DetailCdsToCities_idChange(Sender: TField);
begin
  inherited;
  if DetailCds['ToCities_id'] = null then
    exit;

  if DetailCds['Nights'] = null then
    SetDefaultNights;

  if (DetailCds['DateIn'] <> null) and (AlreadyVisited(DetailCds['ToCities_id'],DetailCds['DateIn'])) then
    DetailCds['Nights'] := 1;

end;

procedure TPresto2Form.SetDefaultNights;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT DefaultDays FROM Cities WHERE Cities_id = ' + IntToStr(DetailCds['ToCities_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not (GpSds.Eof) and (GpSds['DefaultDays'] <> null) then
    DetailCds['Nights'] := GpSds['DefaultDays'];

  if (DetailCds['Nights'] = null) or (DetailCds['Nights'] = 0) then
    DetailCds['Nights'] := 1;

  GpSds.Free;

end;


procedure TPresto2Form.cxGrid1DBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnTicket, AColumnAcc, AColumnSS, AColumnTrsf, AColumnErrorNo, AColumnWarn: TcxCustomGridTableItem;
begin
  inherited;

  AColumnTicket := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('QuoTicketsOK');
  AColumnAcc := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('QuoAccommodationOK');
  AColumnSS := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('QuoSightSeeingOK');
  AColumnTrsf := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('QuoTransfersOK');
  AColumnErrorNo := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('ErrorNo');
  AColumnWarn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('WarnDesc');

  if (ARecord.Values[AColumnTicket.Index] = False) or
     (ARecord.Values[AColumnAcc.Index] = False) or
     (ARecord.Values[AColumnSS.Index] = False) or
     (ARecord.Values[AColumnTrsf.Index] = False) or
     (ARecord.Values[AColumnErrorNo.Index] > 0) then
    AStyle := cxStyleRed
  else if (ARecord.Values[AColumnWarn.Index] <> null) and (ARecord.Values[AColumnWarn.Index] > '') then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TPresto2Form.cxSearchEditKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    SearchQuotation;
end;

procedure TPresto2Form.SearchQuotation;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  if cx_RefOpt.Checked = true then
    begin

      QueryString := 'SELECT quotations_id from quotations ' +
            'WHERE reference = ''' + cxSearchEdit.Text + ''' ' +
            'AND Trial = ' + IntToStr(PrestoForm_DataType) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_ToDate) + ''' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['quotations_id']<>null) then
        begin
          MasterCds.Locate('Quotations_id', GpSds['quotations_id'], []);
        end
      else
        begin
          ShowMessage ('Reference Not Found in selected date range');
        end;

      GpSds.Free;

    end

  else if cx_NoOpt.Checked = true then
    begin

      QueryString := 'SELECT Quotations_id, QuotationYearRef, QuotationNo ' +
            'FROM Quotations ' +
            'WHERE QuotationNo = ' + cxSearchEdit.Text + ' ' +
            'AND QuotationDate BETWEEN ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_FromDate) + ''' AND ''' +
            FormatDateTime('mm/dd/yyyy',PrestoForm_ToDate) + ''' ' +
            'AND Trial = ' + IntToStr(PrestoForm_DataType) + ' ' +
            'ORDER BY QuotationYearRef';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Quotations_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'QuotationYearRef';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationNo';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'QuotationYearRef';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'QuotationNo';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Quotations_id';

      if SearchSortForm.SearchCds.RecordCount > 1 then
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              if not MasterCds.Locate('Quotations_id', SearchSortForm.SearchCds['quotations_id'], []) then
                Showmessage ('Not found in selected date range');
            end;

        end

      else if SearchSortForm.SearchCds.RecordCount = 1 then
        begin
          MasterCds.Locate('Quotations_id', SearchSortForm.SearchCds['quotations_id'], []);
        end

      else
        begin
          ShowMessage ('Id Not Found in selected date range');
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end

  else if cx_NameOpt.Checked = true then
    begin

      QueryString := 'SELECT Quotations_id, PaxName, QuotationDate from Quotations ' +
            'WHERE PaxName LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'AND Trial = ' + IntToStr(PrestoForm_DataType) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_ToDate) + ''' ' +
            'ORDER BY PaxName';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Quotations_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'PaxName';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationDate';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Pax Name';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quo Date';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Quotations_id';

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if not MasterCds.Locate('Quotations_id', SearchSortForm.SearchCds['quotations_id'], []) then
            Showmessage ('Not found in selected date range');
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end

  else if cx_IdOpt.Checked = true then
    begin

      QueryString := 'SELECT quotations_id from quotations ' +
            'WHERE quotations_id = ' + cxSearchEdit.Text + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_ToDate) + ''' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['quotations_id']<>null) then
        begin
          MasterCds.Locate('Quotations_id', GpSds['quotations_id'], []);
        end
      else
        begin
          ShowMessage ('Id Not Found in selected date range');
        end;

      GpSds.Free;

    end

  else if cx_CodeOpt.Checked = true then
    begin

      QueryString := 'SELECT Quotations_id, TourCode, QuotationDate from Quotations ' +
            'WHERE TourCode LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'AND Trial = ' + IntToStr(PrestoForm_DataType) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',PrestoForm_ToDate) + ''' ' +
            'ORDER BY TourCode';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Quotations_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourCode';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationDate';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Tour Code';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quo Date';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Quotations_id';

      if SearchSortForm.SearchCds.RecordCount > 1 then
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              if not MasterCds.Locate('Quotations_id', SearchSortForm.SearchCds['quotations_id'], []) then
                Showmessage ('Not found in selected date range');
            end;

        end

      else if SearchSortForm.SearchCds.RecordCount = 1 then
        begin

          MasterCds.Locate('Quotations_id', SearchSortForm.SearchCds['quotations_id'], []);

        end

      else
        begin

          ShowMessage ('Not found in selected date range');

        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end;

end;

procedure TPresto2Form.SendMails1Click(Sender: TObject);
begin
  inherited;
  _QuoSendMailForm_Quotations_id := MasterCds['Quotations_id'];

  if QuoSendMailForm = nil then
    Application.CreateForm(TQuoSendMailForm, QuoSendMailForm);

  QuoSendMailForm.Visible := False;

  QuoSendMailForm.ShowModal;

  QuoSendMailForm.Free;
  QuoSendMailForm := nil;

end;

procedure TPresto2Form.ConfirmationStatus1Click(Sender: TObject);
begin
  inherited;
  if QuoMailStatusForm = nil then
    Application.CreateForm(TQuoMailStatusForm, QuoMailStatusForm);

end;

procedure TPresto2Form.FITStatusList1Click(Sender: TObject);
begin
  inherited;
  if FitStatusListForm = nil then
    Application.CreateForm(TFitStatusListForm, FitStatusListForm);

end;

procedure TPresto2Form.ConsultantLCBEnter(Sender: TObject);
begin
  inherited;
  try
    if AgentLCB.EditValue <> null then
      PrinAgentCds.Locate('Addressbook_id',AgentLCB.EditValue,[]);
  except
  end;

end;

procedure TPresto2Form.cxGrid1DBBandedTableView1ErrorNoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnIsRemarksOther: TcxCustomGridTableItem;
begin
  inherited;

  AColumnIsRemarksOther := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('IsRemarksOther');

  if (ARecord.Values[AColumnIsRemarksOther.Index] > 0) then
    AStyle := cxStyleRed2
  else
    AStyle := cxStyleGrey;

end;

procedure TPresto2Form.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;
  if AdditionalRemarksForm = nil then
    Application.CreateForm(TAdditionalRemarksForm, AdditionalRemarksForm);

  AdditionalRemarksForm.Visible := False;

  AdditionalRemarksForm.ShowModal;

  AdditionalRemarksForm.Free;
  AdditionalRemarksForm := nil;

end;

procedure TPresto2Form.cxWebCkbClick(Sender: TObject);
begin
  inherited;
  AlterLayout;
  if (cxWebCkb.Checked) and (MasterCds.State = dsInsert) then
    begin
      MasterCdsPrincipalAgents_id.Clear;
      MasterCdsConsultants_id.Clear;
      MasterCds['Reference'] := '';
      MasterCdsCountries_id.Clear;
      MasterCdsCurrencies_id.Clear;
      MasterCds['Email'] := '';
    end;

end;

end.
