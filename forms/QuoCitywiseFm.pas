unit QuoCitywiseFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DType1Fm, Menus, cxLookAndFeelPainters, FMTBcd,
  DBClient, DB, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls,
  cxGraphics, cxSpinEdit, cxTimeEdit, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator,
  cxDBNavigator, cxMaskEdit, cxCalendar, cxCheckBox, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid, DateUtils,
  cxRadioGroup, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxLabel, DBCtrls, scExcelExport, cxGridExportLink;

type
  TQuoCitywiseForm = class(TCustom1M1DType1Form)
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    QuoRefLabel: TLabel;
    TourDateLbl: TLabel;
    LeadNameLabel: TLabel;
    Label3: TLabel;
    cxQuoRefEdit: TcxDBTextEdit;
    TourDateEdit: TcxDBDateEdit;
    QuoLeadNameEdit: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel4: TPanel;
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
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    Detail1CdsQuoCities_id: TIntegerField;
    Detail1CdsQuotations_id: TIntegerField;
    Detail1CdsDateIn: TSQLTimeStampField;
    Detail1CdsDateOut: TSQLTimeStampField;
    Detail1CdsTimeIn: TSQLTimeStampField;
    Detail1CdsTimeOut: TSQLTimeStampField;
    Detail1CdsFromCities_id: TIntegerField;
    Detail1CdsToCities_id: TIntegerField;
    Detail1CdsModeOfTravel: TIntegerField;
    Detail1CdsNights: TIntegerField;
    Detail1CdsQuoAccommodation_id: TIntegerField;
    Detail1CdsQuoTickets_id: TIntegerField;
    Detail1CdsQuoServices_id: TIntegerField;
    Detail1CdsQuoArrTransfers_id: TIntegerField;
    Detail1CdsQuoDepTransfers_id: TIntegerField;
    Detail1CdsStatus: TIntegerField;
    cxGridMasterDBBandedTableView1QuoCities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DateOut: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TimeIn: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TimeOut: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ModeOfTravel: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoAccommodation_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoServices_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoArrTransfers_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoDepTransfers_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Status: TcxGridDBBandedColumn;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesDs: TDataSource;
    Detail1CdsMode: TStringField;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    ComputeCarCosts1: TMenuItem;
    Edit1: TMenuItem;
    EditAccommodation1: TMenuItem;
    SightSeeing1: TMenuItem;
    AutoCreate1: TMenuItem;
    All1: TMenuItem;
    N1: TMenuItem;
    Accommodation1: TMenuItem;
    SightSeeing2: TMenuItem;
    ransfers1: TMenuItem;
    Delete1: TMenuItem;
    All2: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Accommodation2: TMenuItem;
    SightSeeing3: TMenuItem;
    ransfers2: TMenuItem;
    Detail1CdsQuoTicketsOk: TBooleanField;
    Detail1CdsQuoAccommodationOk: TBooleanField;
    Detail1CdsQuoSightSeeingOk: TBooleanField;
    Detail1CdsQuoTransfersOk: TBooleanField;
    Detail1CdsErrorNo: TIntegerField;
    Detail1CdsErrorDesc: TStringField;
    cxGridMasterDBBandedTableView1QuoTicketsOK: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoAccommodationOK: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoSightSeeingOK: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoTransfersOk: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ErrorNo: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Error: TcxGridDBBandedColumn;
    N4: TMenuItem;
    Refresh1: TMenuItem;
    ickets1: TMenuItem;
    N5: TMenuItem;
    CheckIntegrity1: TMenuItem;
    All3: TMenuItem;
    N6: TMenuItem;
    ickets2: TMenuItem;
    Accommodation3: TMenuItem;
    SightSeeing4: TMenuItem;
    ransfers3: TMenuItem;
    N7: TMenuItem;
    DisplayItinerary1: TMenuItem;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    N8: TMenuItem;
    DeleteSingleLine1: TMenuItem;
    ickets3: TMenuItem;
    Accommodation4: TMenuItem;
    SightSeeing5: TMenuItem;
    ransfers4: TMenuItem;
    N9: TMenuItem;
    SetTimings1: TMenuItem;
    Detail1CdsDriveStartTime: TSQLTimeStampField;
    HotelTypesSds: TSQLDataSet;
    HotelTypesDsp: TDataSetProvider;
    HotelTypesCds: TClientDataSet;
    HotelTypesDs: TDataSource;
    HotelTypesCdsHotelTypes_id: TIntegerField;
    HotelTypesCdsHotelType: TStringField;
    MasterCdsHotelTypes_id: TIntegerField;
    cxGroupBox2: TcxGroupBox;
    Label12: TLabel;
    AgentLCB: TcxDBLookupComboBox;
    ReferenceLabel: TLabel;
    cxReferenceEdit: TcxDBTextEdit;
    Label15: TLabel;
    CountryLCB: TcxDBLookupComboBox;
    CurrencyLCB: TcxDBLookupComboBox;
    Label17: TLabel;
    MasterCdsPrincipalAgents_id: TIntegerField;
    MasterCdsReference: TStringField;
    MasterCdsCountries_id: TIntegerField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsExtraBed: TBooleanField;
    MasterCdsDateOfDeparture: TSQLTimeStampField;
    MasterCdsFlightNoDept: TStringField;
    MasterCdsPlaceTo: TStringField;
    MasterCdsETD: TSQLTimeStampField;
    N10: TMenuItem;
    mnuCreateMasters: TMenuItem;
    N11: TMenuItem;
    mnuDeleteMastes: TMenuItem;
    N12: TMenuItem;
    EnterBookings1: TMenuItem;
    MasterCdsVehicles_id: TIntegerField;
    MasterCdsDomestic: TBooleanField;
    EmailLabel: TLabel;
    EmailEdit: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label4: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    Label11: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label8: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxGroupBox4: TcxGroupBox;
    Label14: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    Label19: TLabel;
    Label35: TLabel;
    cxDBTimeEdit3: TcxDBTimeEdit;
    Label24: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label18: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label20: TLabel;
    Label21: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label22: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    Label16: TLabel;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxButtonAutoCreate: TcxButton;
    cxButtonCheckIntegrity: TcxButton;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsvehicles_id: TIntegerField;
    VehicleCdsvehicle: TStringField;
    VehicleDs: TDataSource;
    NightHaltSds: TSQLDataSet;
    NightHaltDsp: TDataSetProvider;
    NightHaltCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    NightHaltDs: TDataSource;
    Detail1CdsModeString: TStringField;
    cxGridMasterDBBandedTableView1ModeString: TcxGridDBBandedColumn;
    Label9: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    MasterCdsTourCode: TStringField;
    ransfers5: TMenuItem;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsOrganisation: TStringField;
    cxGridMasterDBBandedTableView1Hotel: TcxGridDBBandedColumn;
    cxDBCheckBox6: TcxDBCheckBox;
    MasterCdsStartCities_id: TIntegerField;
    MasterCdsTourNo: TIntegerField;
    Label25: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    N13: TMenuItem;
    Day1: TMenuItem;
    Detail1CdsWarnDesc: TStringField;
    cxGridMasterDBBandedTableView1WarnDesc: TcxGridDBBandedColumn;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    PopupMenu2: TPopupMenu;
    Edit2: TMenuItem;
    N14: TMenuItem;
    ChangeCarHireAgent1: TMenuItem;
    Detail1CdsQcCarHireAgents_id: TIntegerField;
    Detail1CdsQcCarHireCities_id: TIntegerField;
    Detail1CdsQcVehicles_id: TIntegerField;
    Detail1CdsP2P: TIntegerField;
    cxGroupBox6: TcxGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersDs: TDataSource;
    MasterCdsAdmUsers_id: TIntegerField;
    MasterCdsManagers_id: TIntegerField;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    cxButtonSendMail: TcxButton;
    cxButtonConfStatus: TcxButton;
    Label30: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    MasterCdsNumTwins: TIntegerField;
    cxDBTextEdit15: TcxDBTextEdit;
    AllCitiesSds: TSQLDataSet;
    AllCitiesDsp: TDataSetProvider;
    AllCitiesCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    AllCitiesDs: TDataSource;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    MasterCdsEndDate: TSQLTimeStampField;
    MasterCdsEndCities_id: TIntegerField;
    MasterCdsDeptDomestic: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    Label26: TLabel;
    cxButtonFitStatus: TcxButton;
    MasterCdsConfirmed: TBooleanField;
    MasterCdsWeb: TIntegerField;
    MasterCdsTrial: TIntegerField;
    cxTrialLabel: TcxLabel;
    N15: TMenuItem;
    mnuMovetoTrial: TMenuItem;
    N16: TMenuItem;
    mnuMoveToLive: TMenuItem;
    cxGroupBox8: TcxGroupBox;
    Label10: TLabel;
    Label23: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    ConsultantLabel: TLabel;
    ConsultantLCB: TcxDBLookupComboBox;
    ConsultantSds: TSQLDataSet;
    ConsultantDsp: TDataSetProvider;
    ConsultantCds: TClientDataSet;
    ConsultantDs: TDataSource;
    MasterCdsConsultants_id: TIntegerField;
    DBText1: TDBText;
    N17: TMenuItem;
    MovetoWeb1: TMenuItem;
    LabelCancel: TLabel;
    MasterCdsCancelledOn: TSQLTimeStampField;
    MasterCdsComment: TStringField;
    Label33: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    MasterCdsPrincipalClient: TStringField;
    MasterCdsBookingRecdDate: TSQLTimeStampField;
    MasterCdsBookingEntryDate: TSQLTimeStampField;
    MasterCdsQuotationSendDate: TSQLTimeStampField;
    Label36: TLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    Label38: TLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    cxStyleRed2: TcxStyle;
    cxStyleGrey: TcxStyle;
    cxGridMasterDBBandedTableView1IsRemarksOther: TcxGridDBBandedColumn;
    Detail1CdsIsRemarksOther: TIntegerField;
    Detail1CdsRemarksOther: TStringField;
    N18: TMenuItem;
    ModifyStartDate1: TMenuItem;
    MasterCdsWebQuotation: TBooleanField;
    cxWebCkb: TcxDBCheckBox;
    MasterCdsValidFrom: TSQLTimeStampField;
    MasterCdsValidTo: TSQLTimeStampField;
    ValidFromLabel: TLabel;
    cxValidFromEdit: TcxDBDateEdit;
    ValidToLabel: TLabel;
    cxValidToEdit: TcxDBDateEdit;
    Detail1CdsModuleQuotations_id: TIntegerField;
    ModQuoSds: TSQLDataSet;
    ModQuoDsp: TDataSetProvider;
    ModQuoCds: TClientDataSet;
    ModQuoDs: TDataSource;
    ModQuoCdsQuotations_id: TIntegerField;
    ModQuoCdsQuotationRef: TStringField;
    ModQuoCdsPaxName: TStringField;
    cxGridMasterDBBandedTableView1ModuleQuotations_id: TcxGridDBBandedColumn;
    N19: TMenuItem;
    CreateModule1: TMenuItem;
    N20: TMenuItem;
    SaveAsExcel1: TMenuItem;
    scExcelExport: TscExcelExport;
    N21: TMenuItem;
    mnuCopyTrial: TMenuItem;
    ModQuoCdsQuotationDate: TSQLTimeStampField;
    N22: TMenuItem;
    RestrictModuleList1: TMenuItem;
    N1year1: TMenuItem;
    N2years1: TMenuItem;
    Unrestricted1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure SetNextDate;
    procedure SetLastDate;
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure CompleteCities;
    procedure FillTravelMode(x_option: integer);
    procedure Detail1CdsCalcFields(DataSet: TDataSet);
    procedure ComputeCarCosts1Click(Sender: TObject);
    procedure EditAccommodation1Click(Sender: TObject);
    procedure SightSeeing1Click(Sender: TObject);
    procedure Accommodation1Click(Sender: TObject);
    procedure SightSeeing2Click(Sender: TObject);
    procedure ransfers1Click(Sender: TObject);
    procedure All1Click(Sender: TObject);
    procedure Accommodation2Click(Sender: TObject);
    procedure SightSeeing3Click(Sender: TObject);
    procedure ransfers2Click(Sender: TObject);
    procedure All2Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure ickets1Click(Sender: TObject);
    procedure ickets2Click(Sender: TObject);
    procedure Accommodation3Click(Sender: TObject);
    procedure SightSeeing4Click(Sender: TObject);
    procedure ransfers3Click(Sender: TObject);
    procedure All3Click(Sender: TObject);
    procedure Detail1CdsToCities_idChange(Sender: TField);
    procedure SetDefaultNights;
    procedure DisplayItinerary1Click(Sender: TObject);
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ickets3Click(Sender: TObject);
    procedure Accommodation4Click(Sender: TObject);
    procedure SightSeeing5Click(Sender: TObject);
    procedure ransfers4Click(Sender: TObject);
    procedure SetTimings1Click(Sender: TObject);
    procedure GetDefaultPA;
    procedure GetDefaultCurrCountry;
    procedure mnuCreateMastersClick(Sender: TObject);
    procedure mnuDeleteMastesClick(Sender: TObject);
    function IsOvernightJourney (x_QuoCities_id: integer): boolean;
    function AlreadyVisited (x_Cities_id: integer; x_Date: TDateTime): boolean;
    procedure EnterBookings1Click(Sender: TObject);
    procedure cxButtonAutoCreateClick(Sender: TObject);
    procedure cxButtonCheckIntegrityClick(Sender: TObject);
    procedure SetOvernightJourney (x_QuoCities_id, x_Nights: integer);
    procedure Detail1CdsBeforeDelete(DataSet: TDataSet);
    procedure ransfers5Click(Sender: TObject);
    procedure AgentLCBPropertiesChange(Sender: TObject);
    procedure Day1Click(Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure SearchQuotation;
    procedure Edit2Click(Sender: TObject);
    procedure ChangeCarHireAgent1Click(Sender: TObject);
    procedure cxButtonSendMailClick(Sender: TObject);
    procedure cxButtonConfStatusClick(Sender: TObject);
    procedure cxButtonFitStatusClick(Sender: TObject);
    procedure mnuMovetoTrialClick(Sender: TObject);
    procedure mnuMoveToLiveClick(Sender: TObject);
    procedure cxDBLookupComboBox6PropertiesChange(Sender: TObject);
    procedure AgentLCBPropertiesEditValueChanged(Sender: TObject);
    procedure ConsultantLCBEnter(Sender: TObject);
    procedure MovetoWeb1Click(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    function RecommendedHotelTypes: boolean;
    procedure cxGridMasterDBBandedTableView1ErrorNoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridMasterDBBandedTableView1DblClick(Sender: TObject);
    procedure ModifyStartDate1Click(Sender: TObject);
    function IsMasterTourCreated(x_MasterTourCode: string): boolean;
    procedure AlterLayout;
    procedure ModifyLayout;
    procedure cxWebCkbPropertiesEditValueChanged(Sender: TObject);
    procedure CreateModule1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure mnuCopyTrialClick(Sender: TObject);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure N1year1Click(Sender: TObject);
    procedure RestrictModuleDate(x_Years: integer);
    procedure N2years1Click(Sender: TObject);
    procedure Unrestricted1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoCitywiseForm: TQuoCitywiseForm;
  _QuoCitywiseForm_Level: integer;
  _QuoCitywiseForm_FromDate, _QuoCitywiseForm_ToDate :TDateTime;
  _QuoCitywiseForm_Trial: integer;

implementation

uses BackOfficeDM, GeneralUt, TravelModeFm, QuoAccommodationFm,
  QuoServicesFm, FITItineraryFm, QuoBookingClientsFm, QuoDayEditFm,
  SearchSortFm, CarHireAgentChangeFm, MainFm, QuoSendMailFm,
  QuoMailStatusFm, FitStatusListFm, AdditionalRemarksFm, QuoModifyDateFm,
  Quotations_ExcelReportsUt;

var
  _Detail1Cds_QuoCities_id: integer;

{$R *.dfm}

procedure TQuoCitywiseForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'Quotations';
  MasterKeyField := 'Quotations_id';
  Detail1CdsName := 'QuoCities';
  Detail1KeyField := 'QuoCities_id';

  MasterCds.Active := False;
  MasterCds.Filter := '(QuotationDate >= ''' + FormatDateTime('dd/mm/yyyy',_QuoCitywiseForm_FromDate) + ''' ' +
        ' AND QuotationDate <= ''' + FormatDateTime('dd/mm/yyyy',_QuoCitywiseForm_ToDate) + ''') ' +
        ' AND (Trial = ' + IntToStr(_QuoCitywiseForm_Trial) + ')';
  MasterCds.Filtered := True;

  ModifyLayout;

  inherited;

  AdmLevel := _QuoCitywiseForm_Level;

  CitiesCds.Open;
  HotelTypesCds.Open;
  AllCitiesCds.Open;

  BackOfficeDataModule.MealPlanCds.Open;
  BackOfficeDataModule.TicketsCds.Open;
  BackOfficeDataModule.CitiesCds.Open;
  BackOfficeDataModule.TicketsCds.Open;
  BackOfficeDataModule.ClassCds.Open;
  BackOfficeDataModule.AgentCds.Open;
  VehicleCds.Open;
  NightHaltCds.Open;
  AccCds.Open;

  RestrictModuleDate(2);

  BackOfficeDataModule.PrinAgentCds.Active := True;
  BackOfficeDataModule.CountriesCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;
  ConsultantCds.Open;

  UsersCds.Open;

  cxTrialLabel.Caption := '';

  mnuMovetoTrial.Visible := True;
  mnuMovetoLive.Visible := False;

  //cxWebCkb.Visible := false;
  mnuCopyTrial.Visible := false;

  if _QuoCitywiseForm_Trial = 1 then
    begin
      Panel1.Color := cxStyleRed.Color;
      cxTrialLabel.Caption := 'TRIAL AREA';
      cxButtonSendMail.Visible := False;
      cxButtonConfStatus.Visible := False;
      cxButtonFitStatus.Visible := False;
      mnuCreateMasters.Visible := False;
      mnuDeleteMastes.Visible := False;
      mnuMovetoTrial.Visible := False;
      mnuMovetoLive.Visible := True;
      //cxWebCkb.Visible := true;
      mnuCopyTrial.Visible := true;
    end
  else if _QuoCitywiseForm_Trial = 2 then
    begin
      Panel1.Color := cxStyleBlue.Color;
      cxTrialLabel.Caption := 'WEB QUOTATIONS AREA';
      cxButtonSendMail.Visible := False;
      cxButtonConfStatus.Visible := False;
      cxButtonFitStatus.Visible := False;
      mnuCreateMasters.Visible := False;
      mnuDeleteMastes.Visible := False;
      mnuMovetoTrial.Visible := False;
      mnuMovetoLive.Visible := True;
      //cxWebCkb.Visible := false;
    end
  else if _QuoCitywiseForm_Trial = 3 then
    begin
      Panel1.Color := cxStyleGreen.Color;
      cxTrialLabel.Caption := 'RIKSJA AREA';
      cxButtonSendMail.Visible := False;
      cxButtonConfStatus.Visible := False;
      cxButtonFitStatus.Visible := False;
      mnuCreateMasters.Visible := False;
      mnuDeleteMastes.Visible := False;
      mnuMovetoTrial.Visible := False;
      mnuMovetoLive.Visible := True;
      //cxWebCkb.Visible := false;
    end;


  Width := 980;
  Height := 650;

end;

procedure TQuoCitywiseForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoCitywiseForm := nil;
end;

procedure TQuoCitywiseForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_error: integer;
  x_Pax, x_str: string;
  GpSds : TSQLDataSet;
begin
  inherited;

  if MasterCds['QuotationDate'] = Null then
    Raise Exception.Create('Enter the Quotation Date');

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

  if MasterCds['StartDate'] = Null then
    Raise Exception.Create('Enter the Start Date');

  if MasterCds['ETA'] = Null then
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

  if MasterCds['NumSingles'] = null then
    MasterCds['NumSingles'] := 0;

  if MasterCds['NumDoubles'] = null then
    MasterCds['NumDoubles'] := 0;

  if MasterCds['NumTwins'] = null then
    MasterCds['NumTwins'] := 0;

  if MasterCds['NumTriples'] = null then
    MasterCds['NumTriples'] := 0;

  if MasterCds['NumPax'] = null then
    MasterCds['NumPax'] := 0;

  if MasterCds['NumPax'] <> MasterCds['NumSingles'] + (MasterCds['NumDoubles'] + MasterCds['NumTwins'])*2 + MasterCds['NumTriples']*3 then
    if MessageDlg('Pax and number of rooms to not tally. Are you sure you want to save?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
      abort;

  if (MasterCds['Domestic'] = null) then
    MasterCds['Domestic'] := False;

  if (MasterCds['DeptDomestic'] = null) then
    MasterCds['DeptDomestic'] := False;

  if (MasterCds['ExtraBed'] = null) then
    MasterCds['ExtraBed'] := False;

  if (MasterCds['Confirmed'] = null) then
    MasterCds['Confirmed'] := False;

  if (MasterCds['Web'] = null) then
    MasterCds['Web'] := 0;

  if (MasterCds['Trial'] = null) then
    MasterCds['Trial'] := 0;

{
  if _QuoCitywiseForm_Trial = 2 then
    MasterCds['WebQuotation'] := true
  else
    MasterCds['WebQuotation'] := false;
}

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

  MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    begin
      MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], _QuoCitywiseForm_Trial);
      MasterCds['Quotations_id'] := GetNextId('Quotations','Quotations_id');
    end;

end;

function TQuoCitywiseForm.RecommendedHotelTypes: boolean;
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


function TQuoCitywiseForm.GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
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


procedure TQuoCitywiseForm.MasterCdsAfterInsert(DataSet: TDataSet);
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
  MasterCds['Trial'] := _QuoCitywiseForm_Trial;
  MasterCds['Web'] := 0;
  MasterCds['BookingEntryDate'] := Date();

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

  GetDefaultPA;

  if MasterCds['PrincipalAgents_id'] <> null   then
    GetDefaultCurrCountry;

  if _QuoCitywiseForm_Trial = 2 then
    MasterCds['WebQuotation'] := true
  else
    MasterCds['WebQuotation'] := false;
    
end;

procedure TQuoCitywiseForm.GetDefaultPA;
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

procedure TQuoCitywiseForm.GetDefaultCurrCountry;
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



procedure TQuoCitywiseForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SetNextDate;
  Detail1Cds['Status'] := 0;
  Detail1Cds['QuoTicketsOK'] := False;
  Detail1Cds['QuoAccommodationOK'] := False;
  Detail1Cds['QuoSightSeeingOK'] := False;
  Detail1Cds['QuoTransfersOK'] := False;
  Detail1Cds['DriveStartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date) + ' 09:00');
  Detail1Cds['P2P'] := 0;
end;

procedure TQuoCitywiseForm.SetNextDate;
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
        Detail1Cds['DateIn'] := MasterCds['StartDate'];
    end
  else
    begin
      SetLastDate;
    end;

  GpSds.Free;

end;

procedure TQuoCitywiseForm.SetLastDate;
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

  Detail1Cds['DateIn'] := x_DateIn + x_Nights;

  GpSds.Free;

end;


procedure TQuoCitywiseForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Detail1Cds['DateIn'] = Null then
    Raise Exception.Create('Please enter the Date');

  if Detail1Cds['ToCities_id'] = Null then
    Raise Exception.Create('Please enter the City');

  if Detail1Cds['Nights'] = Null then
    Raise Exception.Create('Please enter the Nights');

  if Detail1Cds['Nights'] < 0 then
    Raise Exception.Create('Nights should be atleast 0');

  Detail1Cds['DateOut'] := IncDay(Detail1Cds['DateIn'],Detail1Cds['Nights']);

  if (Detail1Cds['RemarksOther'] <> null) and (trim(Detail1Cds['RemarksOther']) > '') then
    Detail1Cds['IsRemarksOther'] := 1
  else
    Detail1Cds['IsRemarksOther'] := 0;

  _Detail1Cds_QuoCities_id := Detail1Cds['QuoCities_id'];

end;

procedure TQuoCitywiseForm.Detail1CdsAfterPost(DataSet: TDataSet);
var
  x_count: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;
  CompleteCities;
  FillTravelMode(1);

  if _Detail1Cds_QuoCities_id > 0 then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      QueryString := 'SELECT x_count = COUNT(*) FROM QuoAccommodation ' +
        'WHERE QuoCities_id = ' + IntToStr(_Detail1Cds_QuoCities_id);

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
            'AND q.QuoCities_id = ' + IntToStr(_Detail1Cds_QuoCities_id);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

          GpSds.Free;

        end;          

    end;


end;

procedure TQuoCitywiseForm.CompleteCities;
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

  x_QuoCities_id := Detail1Cds['QuoCities_id'];
  Detail1Cds.Active := False;
  Detail1Cds.Active := True;
  Detail1Cds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TQuoCitywiseForm.FillTravelMode(x_option: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_QuoCities_id, x_display, x_Nights: integer;
begin
  inherited;

  QueryString := 'SELECT StartCity, ModeOfTravel, QuoTickets_id FROM QuoCities ' +
    'WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and ((GpSds['StartCity'] = False) or (Detail1Cds['FromCities_id'] <> null) or (x_option = 3)) then
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

          //x_OverNight := IsOvernightJourney(Detail1Cds['QuoCities_id']);

          _TravelModeForm_Quotations_id := Detail1Cds['Quotations_id'];
          _TravelModeForm_QuoCities_id := Detail1Cds['QuoCities_id'];
          _TravelModeForm_FromCities_id := Detail1Cds['FromCities_id'];
          _TravelModeForm_ToCities_id := Detail1Cds['ToCities_id'];

          _TravelModeForm_TravelDate := Detail1Cds['DateIn'];

{
          if not x_Overnight then
            _TravelModeForm_TravelDate := Detail1Cds['DateIn']
          else
            _TravelModeForm_TravelDate := IncDay(Detail1Cds['DateIn'],-1);
}

          if Detail1Cds['QuoTickets_id'] <> null then
            _TravelModeForm_QuoTickets_id := Detail1Cds['QuoTickets_id']
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

                  if Detail1Cds.State = dsBrowse then
                    Detail1Cds.Edit;

                  x_Nights := 1;
                  if TravelModeForm.TicketCds['Nights'] <> null then
                    x_Nights := TravelModeForm.TicketCds['Nights'];

                  SetOvernightJourney(Detail1Cds['QuoCities_id'], x_Nights);
                end;
            end;

          TravelModeForm.Free;
          TravelModeForm := nil;

          x_QuoCities_id := Detail1Cds['QuoCities_id'];
          if Detail1Cds.State in [dsEdit, dsInsert] then
            Detail1Cds.Post;
          Detail1Cds.Active := False;
          Detail1Cds.Active := True;
          Detail1Cds.Locate('QuoCities_id', x_QuoCities_id,[]);

        end

      else if (x_display = 1) and (x_option = 3) then
        begin

          //x_OverNight := IsOvernightJourney(Detail1Cds['QuoCities_id']);

          _QuoDayEditForm_Quotations_id := Detail1Cds['Quotations_id'];
          _QuoDayEditForm_QuoCities_id := Detail1Cds['QuoCities_id'];
          if Detail1Cds['FromCities_id'] <> null then
            _QuoDayEditForm_FromCities_id := Detail1Cds['FromCities_id'];
          if Detail1Cds['ToCities_id'] <> null then
            _QuoDayEditForm_ToCities_id := Detail1Cds['ToCities_id'];

          _QuoDayEditForm_TravelDate := Detail1Cds['DateIn'];

          if Detail1Cds['QuoTickets_id'] <> null then
            _QuoDayEditForm_QuoTickets_id := Detail1Cds['QuoTickets_id']
          else
            _QuoDayEditForm_QuoTickets_id := 0;

          if QuoDayEditForm = nil then
            Application.CreateForm(TQuoDayEditForm, QuoDayEditForm);

          if Detail1Cds['FromCities_id'] = null then
            QuoDayEditForm.TicketsTab.Enabled := False;

          QuoDayEditForm.FormStyle := fsNormal;
          QuoDayEditForm.Visible := False;

          QuoDayEditForm.ShowModal;

          if _QuoDayEditForm_Result = 1 then
            begin
              if QuoDayEditForm.TicketCds['Overnight'] = true then
                begin

                  if Detail1Cds.State = dsBrowse then
                    Detail1Cds.Edit;

                  x_Nights := 1;
                  if QuoDayEditForm.TicketCds['Nights'] <> null then
                    x_Nights := QuoDayEditForm.TicketCds['Nights'];

                  SetOvernightJourney(Detail1Cds['QuoCities_id'], x_Nights);
                end;
            end;

          QuoDayEditForm.Free;
          QuoDayEditForm := nil;

          x_QuoCities_id := Detail1Cds['QuoCities_id'];

          if Detail1Cds.State in [dsEdit, dsInsert] then
            Detail1Cds.Post;
          Detail1Cds.Active := False;
          Detail1Cds.Active := True;
          Detail1Cds.Locate('QuoCities_id', x_QuoCities_id,[]);

        end;


    end;

  GpSds.Free;

end;

procedure TQuoCitywiseForm.SetOvernightJourney (x_QuoCities_id, x_Nights: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Quotations_id: integer;
  x_DateIn, x_DateOut: TDateTime;
begin

  //x_Overnight := False;

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
      Detail1Cds['DateIn'] := IncDay(x_DateOut,x_Nights);
    end
  else
    begin
      // Could happen if in the start city, the pax arrive by overnight
      Detail1Cds['DateIn'] := IncDay(Detail1Cds['DateIn'],x_Nights);
    end;

  GpSds.Free;

end;


function TQuoCitywiseForm.IsOvernightJourney (x_QuoCities_id: integer): boolean;
var
  x_Overnight: boolean;
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Quotations_id: integer;
  x_DateIn, x_DateOut: TDateTime;
begin

  x_Overnight := False;

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
      if x_DateIn > x_DateOut then
        x_Overnight := true;
    end;

  GpSds.Free;

  Result := x_Overnight;

end;



procedure TQuoCitywiseForm.Detail1CdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Detail1Cds.State = dsBrowse then
    Detail1Cds.Edit;

  if Detail1Cds['ModeOfTravel'] = 1 then
    Detail1Cds['Mode'] := 'Air'
  else if Detail1Cds['ModeOfTravel'] = 2 then
    Detail1Cds['Mode'] := 'Rail'
  else if Detail1Cds['ModeOfTravel'] = 3 then
    Detail1Cds['Mode'] := 'Coach'
  else if Detail1Cds['ModeOfTravel'] = 4 then
    Detail1Cds['Mode'] := 'Ferry'
  else if Detail1Cds['ModeOfTravel'] = 5 then
    Detail1Cds['Mode'] := 'Drive'
  else
    Detail1Cds['Mode'] := '';

end;


procedure TQuoCitywiseForm.ComputeCarCosts1Click(Sender: TObject);
begin
  inherited;
  FillTravelMode(2);
end;

procedure TQuoCitywiseForm.EditAccommodation1Click(Sender: TObject);
var
  x_QuoCities_id: integer;
begin
  inherited;

  _QuoAccommodationForm_QuoCities_id := Detail1Cds['QuoCities_id'];
  _QuoAccommodationForm_Quotations_id := Detail1Cds['Quotations_id'];
  _QuoAccommodationForm_ToCities_id := Detail1Cds['ToCities_id'];

  if Detail1Cds['QuoAccommodation_id'] <> null then
    _QuoAccommodationForm_QuoAccommodation_id := Detail1Cds['QuoAccommodation_id']
  else
    _QuoAccommodationForm_QuoAccommodation_id := 0;

  _QuoAccommodationForm_DateIn := Detail1Cds['DateIn'];
  _QuoAccommodationForm_DateOut := Detail1Cds['DateOut'];
  _QuoAccommodationForm_Nights := Detail1Cds['Nights'];

  if QuoAccommodationForm = nil then
    Application.CreateForm(TQuoAccommodationForm, QuoAccommodationForm);

  QuoAccommodationForm.FormStyle := fsNormal;
  QuoAccommodationForm.Visible := False;

  QuoAccommodationForm.ShowModal;

  QuoAccommodationForm.Free;
  QuoAccommodationForm := nil;

  x_QuoCities_id := Detail1Cds['QuoCities_id'];
  Detail1Cds.Active := False;
  Detail1Cds.Active := True;
  Detail1Cds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TQuoCitywiseForm.SightSeeing1Click(Sender: TObject);
var
  x_QuoCities_id: integer;
begin
  inherited;

  _QuoServicesForm_QuoCities_id := Detail1Cds['QuoCities_id'];
  _QuoServicesForm_Quotations_id := Detail1Cds['Quotations_id'];
  _QuoServicesForm_ServiceType := 1;

  if Detail1Cds['ModeOfTravel'] <> null then
    _QuoServicesForm_ModeOfTravel := Detail1Cds['ModeOfTravel']
  else
    _QuoServicesForm_ModeOfTravel := 0;

  if Detail1Cds['QuoServices_id'] <> null then
    _QuoServicesForm_QuoServices_id := Detail1Cds['QuoServices_id']
  else
    _QuoServicesForm_QuoServices_id := 0;

  //x_Visited := AlreadyVisited (Detail1Cds['QuoCities_id'], Detail1Cds['QuoCities_id']);

  if QuoServicesForm = nil then
    Application.CreateForm(TQuoServicesForm, QuoServicesForm);

  QuoServicesForm.FormStyle := fsNormal;
  QuoServicesForm.Visible := False;

  QuoServicesForm.ShowModal;

  QuoServicesForm.Free;
  QuoServicesForm := nil;

  x_QuoCities_id := Detail1Cds['QuoCities_id'];
  Detail1Cds.Active := False;
  Detail1Cds.Active := True;
  Detail1Cds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TQuoCitywiseForm.Accommodation1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.SightSeeing2Click(Sender: TObject);
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

procedure TQuoCitywiseForm.ransfers1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.All1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.Accommodation2Click(Sender: TObject);
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

procedure TQuoCitywiseForm.SightSeeing3Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

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

procedure TQuoCitywiseForm.ransfers2Click(Sender: TObject);
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

procedure TQuoCitywiseForm.All2Click(Sender: TObject);
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

procedure TQuoCitywiseForm.Refresh1Click(Sender: TObject);
begin

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

end;

procedure TQuoCitywiseForm.ickets1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.ickets2Click(Sender: TObject);
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

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  ShowMessage ('Done');

end;

procedure TQuoCitywiseForm.Accommodation3Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoCheckIntegrityAccommodation ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  ShowMessage ('Done');

end;

procedure TQuoCitywiseForm.SightSeeing4Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_QuoCheckIntegritySightSeeing ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  ShowMessage ('Done');

end;

procedure TQuoCitywiseForm.ransfers3Click(Sender: TObject);
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

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  ShowMessage ('Done');

end;

procedure TQuoCitywiseForm.All3Click(Sender: TObject);
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

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  ShowMessage ('Done');

end;

procedure TQuoCitywiseForm.Detail1CdsToCities_idChange(Sender: TField);
begin
  inherited;
  if Detail1Cds['ToCities_id'] = null then
    exit;

  if Detail1Cds['Nights'] = null then
    SetDefaultNights;

  if (Detail1Cds['DateIn'] <> null) and (AlreadyVisited(Detail1Cds['ToCities_id'],Detail1Cds['DateIn'])) then
    Detail1Cds['Nights'] := 1;
end;

function TQuoCitywiseForm.AlreadyVisited (x_Cities_id: integer; x_Date: TDateTime): boolean;
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


procedure TQuoCitywiseForm.SetDefaultNights;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT DefaultDays FROM Cities WHERE Cities_id = ' + IntToStr(Detail1Cds['ToCities_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not (GpSds.Eof) and (GpSds['DefaultDays'] <> null) then
    Detail1Cds['Nights'] := GpSds['DefaultDays'];

  if (Detail1Cds['Nights'] = null) or (Detail1Cds['Nights'] = 0) then
    Detail1Cds['Nights'] := 1;

  GpSds.Free;

end;


procedure TQuoCitywiseForm.DisplayItinerary1Click(Sender: TObject);
begin

  _FITItineraryForm_Quotations_id := MasterCds['Quotations_id'];
  _FITItineraryForm_Trial := _QuoCitywiseForm_Trial;

  if FitItineraryForm = nil then
    Application.CreateForm(TFitItineraryForm, FitItineraryForm);

end;

procedure TQuoCitywiseForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
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

procedure TQuoCitywiseForm.ickets3Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoTickets WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoTickets_id = null, QuoTicketsOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TQuoCitywiseForm.Accommodation4Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoAccommodation WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoAccommodation_id = null, QuoAccommodationOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TQuoCitywiseForm.SightSeeing5Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']) + ' ' +
    'AND SightSeeing = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoServices_id = null, QuoSightSeeingOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');



end;

procedure TQuoCitywiseForm.ransfers4Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']) + ' ' +
    'AND SightSeeing = 0';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET QuoArrTransfers_id = null, QuoDepTransfers_id = null, QuoTransfersOk = 0 ' +
    'WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');


end;

procedure TQuoCitywiseForm.SetTimings1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.mnuCreateMastersClick(Sender: TObject);
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

procedure TQuoCitywiseForm.mnuDeleteMastesClick(Sender: TObject);
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

procedure TQuoCitywiseForm.EnterBookings1Click(Sender: TObject);
begin
  inherited;

  _QuoBookingClientsForm_Quotations_id := MasterCds['Quotations_id'];
  _QuoBookingsClientsForm_Level := 4;

  if QuoBookingClientsForm = nil then
    Application.CreateForm(TQuoBookingClientsForm, QuoBookingClientsForm);

end;

procedure TQuoCitywiseForm.cxButtonAutoCreateClick(Sender: TObject);
begin
  inherited;
  All1Click(nil);
end;

procedure TQuoCitywiseForm.cxButtonCheckIntegrityClick(Sender: TObject);
begin
  inherited;
  All3Click(nil);
end;

procedure TQuoCitywiseForm.Detail1CdsBeforeDelete(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoTickets WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoServices WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoAccommodation WHERE QuoCities_id = ' + IntToStr(Detail1Cds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TQuoCitywiseForm.ransfers5Click(Sender: TObject);
var
  x_QuoCities_id: integer;
begin
  inherited;

  _QuoServicesForm_QuoCities_id := Detail1Cds['QuoCities_id'];
  _QuoServicesForm_Quotations_id := Detail1Cds['Quotations_id'];
  _QuoServicesForm_ServiceType := 2;

  if Detail1Cds['ModeOfTravel'] <> null then
    _QuoServicesForm_ModeOfTravel := Detail1Cds['ModeOfTravel']
  else
    _QuoServicesForm_ModeOfTravel := 0;

  if Detail1Cds['QuoServices_id'] <> null then
    _QuoServicesForm_QuoServices_id := Detail1Cds['QuoServices_id']
  else
    _QuoServicesForm_QuoServices_id := 0;

  if QuoServicesForm = nil then
    Application.CreateForm(TQuoServicesForm, QuoServicesForm);

  QuoServicesForm.FormStyle := fsNormal;
  QuoServicesForm.Visible := False;

  QuoServicesForm.ShowModal;

  QuoServicesForm.Free;
  QuoServicesForm := nil;

  x_QuoCities_id := Detail1Cds['QuoCities_id'];
  Detail1Cds.Active := False;
  Detail1Cds.Active := True;
  Detail1Cds.Locate('QuoCities_id', x_QuoCities_id,[]);

end;

procedure TQuoCitywiseForm.AgentLCBPropertiesChange(Sender: TObject);
begin
  inherited;

{
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
}

end;

procedure TQuoCitywiseForm.Day1Click(Sender: TObject);
begin
  inherited;

  //***************************
  //** Accommodation Variables
  //***************************

  _QuoDayEditForm_QuoCities_id := Detail1Cds['QuoCities_id'];
  _QuoDayEditForm_Quotations_id := Detail1Cds['Quotations_id'];
  _QuoDayEditForm_ToCities_id := Detail1Cds['ToCities_id'];

  if Detail1Cds['QuoAccommodation_id'] <> null then
    _QuoDayEditForm_QuoAccommodation_id := Detail1Cds['QuoAccommodation_id']
  else
    _QuoDayEditForm_QuoAccommodation_id := 0;

  _QuoDayEditForm_DateIn := Detail1Cds['DateIn'];
  _QuoDayEditForm_DateOut := Detail1Cds['DateOut'];
  _QuoDayEditForm_Nights := Detail1Cds['Nights'];

  //*******************************
  //** Services/Transfer Variables
  //*******************************

  if Detail1Cds['ModeOfTravel'] <> null then
    _QuoDayEditForm_ModeOfTravel := Detail1Cds['ModeOfTravel']
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

procedure TQuoCitywiseForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    SearchQuotation;

end;

procedure TQuoCitywiseForm.SearchQuotation;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  if cxSearchGB.ItemIndex = 0 then
    begin

      QueryString := 'SELECT quotations_id from quotations ' +
            'WHERE reference = ''' + cxSearchEdit.Text + ''' ' +
            'AND Trial = ' + IntToStr(_QuoCitywiseForm_Trial) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_ToDate) + ''' ';

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

  else if cxSearchGB.ItemIndex = 1 then
    begin

      QueryString := 'SELECT Quotations_id, QuotationYearRef, QuotationNo ' +
            'FROM Quotations ' +
            'WHERE QuotationNo = ' + cxSearchEdit.Text + ' ' +
            'AND QuotationDate BETWEEN ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_FromDate) + ''' AND ''' +
            FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_ToDate) + ''' ' +
            'AND Trial = ' + IntToStr(_QuoCitywiseForm_Trial) + ' ' +
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

  else if cxSearchGB.ItemIndex = 2 then
    begin

      QueryString := 'SELECT Quotations_id, PaxName, QuotationDate from Quotations ' +
            'WHERE PaxName LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'AND Trial = ' + IntToStr(_QuoCitywiseForm_Trial) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_ToDate) + ''' ' +
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

  else if cxSearchGB.ItemIndex = 3 then
    begin

      QueryString := 'SELECT quotations_id from quotations ' +
            'WHERE quotations_id = ' + cxSearchEdit.Text + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_ToDate) + ''' ';

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

  else if cxSearchGB.ItemIndex = 4 then
    begin

      QueryString := 'SELECT Quotations_id, TourCode, QuotationDate from Quotations ' +
            'WHERE TourCode LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'AND Trial = ' + IntToStr(_QuoCitywiseForm_Trial) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoCitywiseForm_ToDate) + ''' ' +
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


procedure TQuoCitywiseForm.Edit2Click(Sender: TObject);
begin
  inherited;

  //***************************
  //** Accommodation Variables
  //***************************

  _QuoDayEditForm_QuoCities_id := Detail1Cds['QuoCities_id'];
  _QuoDayEditForm_Quotations_id := Detail1Cds['Quotations_id'];
  _QuoDayEditForm_ToCities_id := Detail1Cds['ToCities_id'];

  if Detail1Cds['QuoAccommodation_id'] <> null then
    _QuoDayEditForm_QuoAccommodation_id := Detail1Cds['QuoAccommodation_id']
  else
    _QuoDayEditForm_QuoAccommodation_id := 0;

  _QuoDayEditForm_DateIn := Detail1Cds['DateIn'];
  _QuoDayEditForm_DateOut := Detail1Cds['DateOut'];

  //*******************************
  //** Services/Transfer Variables
  //*******************************

  if Detail1Cds['ModeOfTravel'] <> null then
    _QuoDayEditForm_ModeOfTravel := Detail1Cds['ModeOfTravel']
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

procedure TQuoCitywiseForm.ChangeCarHireAgent1Click(Sender: TObject);
begin
  inherited;

  if CarHireAgentChangeForm = nil then
    Application.CreateForm(TCarHireAgentChangeForm, CarHireAgentChangeForm);

  CarHireAgentChangeForm.Visible := False;

  CarHireAgentChangeForm.ShowModal;

  CarHireAgentChangeForm.Free;
  CarHireAgentChangeForm := nil;

  if (Detail1Cds.State = dsEdit) or (Detail1Cds.State = dsInsert) then
    Detail1cds.Post;

end;

procedure TQuoCitywiseForm.cxButtonSendMailClick(Sender: TObject);
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

procedure TQuoCitywiseForm.cxButtonConfStatusClick(Sender: TObject);
begin
  inherited;

  if QuoMailStatusForm = nil then
    Application.CreateForm(TQuoMailStatusForm, QuoMailStatusForm);

end;

procedure TQuoCitywiseForm.cxButtonFitStatusClick(Sender: TObject);
begin
  inherited;

  if FitStatusListForm = nil then
    Application.CreateForm(TFitStatusListForm, FitStatusListForm);


end;

procedure TQuoCitywiseForm.mnuMovetoTrialClick(Sender: TObject);
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

procedure TQuoCitywiseForm.mnuMoveToLiveClick(Sender: TObject);
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

procedure TQuoCitywiseForm.cxDBLookupComboBox6PropertiesChange(
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

procedure TQuoCitywiseForm.AgentLCBPropertiesEditValueChanged(
  Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;
  try
    if AgentLCB.EditValue <> null then
      BackOfficeDataModule.PrinAgentCds.Locate('Addressbook_id',AgentLCB.EditValue,[]);
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

procedure TQuoCitywiseForm.ConsultantLCBEnter(Sender: TObject);
begin
  inherited;
  try
    if AgentLCB.EditValue <> null then
      BackOfficeDataModule.PrinAgentCds.Locate('Addressbook_id',AgentLCB.EditValue,[]);
  except
  end;

end;

procedure TQuoCitywiseForm.MovetoWeb1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['CancelledOn'] = null then
    LabelCancel.Visible := false
  else
    LabelCancel.Visible := true;

  AlterLayout;
end;

procedure TQuoCitywiseForm.cxGridMasterDBBandedTableView1ErrorNoStylesGetContentStyle(
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

procedure TQuoCitywiseForm.cxGridMasterDBBandedTableView1DblClick(
  Sender: TObject);
begin
  inherited;

  if AdditionalRemarksForm = nil then
    Application.CreateForm(TAdditionalRemarksForm, AdditionalRemarksForm);

  AdditionalRemarksForm.Visible := False;

  AdditionalRemarksForm.ShowModal;

  AdditionalRemarksForm.Free;
  AdditionalRemarksForm := nil;

end;

procedure TQuoCitywiseForm.ModifyStartDate1Click(Sender: TObject);
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

  _QuoModifyDateForm_Level := _QuoCitywiseForm_Level;

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

function TQuoCitywiseForm.IsMasterTourCreated(x_MasterTourCode: string): boolean;
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



procedure TQuoCitywiseForm.AlterLayout;
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

procedure TQuoCitywiseForm.ModifyLayout;
begin

  if _QuoCitywiseForm_Trial = 3 then
    begin
      QuoRefLabel.Caption := 'Mod. Code';
      LeadNameLabel.Caption := 'Mod. Name';
      //cxWebCkb.Visible := false;

      ValidFromLabel.visible := true;
      cxValidFromEdit.visible := true;
      ValidToLabel.visible := true;
      cxValidToEdit.visible := true;

      ValidFromLabel.Top := cxWebCkb.Top;
      cxValidFromEdit.Top := cxWebCkb.Top;
      ValidToLabel.Top := cxWebCkb.Top;
      cxValidToEdit.Top := cxWebCkb.Top;

      cxValidToEdit.TabOrder := cxWebCkb.TabOrder;
      cxValidFromEdit.TabOrder := cxWebCkb.TabOrder;

      cxValidFromEdit.Left := QuoLeadNameEdit.Left;

      ConsultantLabel.visible := false;
      ReferenceLabel.visible := false;
      EmailLabel.visible := false;

      ConsultantLCB.visible := false;
      cxReferenceEdit.visible := false;
      EmailEdit.visible := false;

    end;

end;


procedure TQuoCitywiseForm.cxWebCkbPropertiesEditValueChanged(
  Sender: TObject);
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

procedure TQuoCitywiseForm.CreateModule1Click(Sender: TObject);
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

procedure TQuoCitywiseForm.FormActivate(Sender: TObject);
begin
  inherited;
  MasterCdsName := 'Quotations';
  MasterKeyField := 'Quotations_id';
  Detail1CdsName := 'QuoCities';
  Detail1KeyField := 'QuoCities_id';
end;

procedure TQuoCitywiseForm.SaveAsExcel1Click(Sender: TObject);
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

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(MasterCds['Quotations_id']) + '.xls';

  Quotations_Excel(scExcelExport, x_FileName, MasterCds['Quotations_id'], 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TQuoCitywiseForm.mnuCopyTrialClick(Sender: TObject);
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
      Detail1Cds.Active := False;
      MasterCds.Active := False;

      MasterCds.Active := true;
      Detail1Cds.Active := true;

      MasterCds.Locate('Quotations_id', GpSds['Max_id'], []);

      Detail1Cds.Active := false;
      Detail1Cds.Active := true;

    end;

  GpSds.Free;

  ShowMessage('done');

end;

procedure TQuoCitywiseForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString, x_TourCode: string;
begin
  inherited;

  if MessageDlg('Are you sure you want to delete this quotation?', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_TourCode := '';
  if MasterCds['TourCode'] <> null then
    x_TourCode := MasterCds['TourCode'];

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoModules ' +
    'WHERE TourCode = ' + QuotedStr(x_TourCode) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    begin
      ShowMessage ('Module created. Cannot delete.');
      GpSds.Free;
      Abort;
    end;


  QueryString := 'EXEC p_DeleteQuotationDetails ' +
    IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoLines WHERE Quotations_id =  ' +
    IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoCities WHERE Quotations_id =  ' +
    IntToStr(MasterCds['Quotations_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TQuoCitywiseForm.N1year1Click(Sender: TObject);
begin
  inherited;
  RestrictModuleDate(1);
end;

procedure TQuoCitywiseForm.RestrictModuleDate(x_Years: integer);
begin
  inherited;

  if x_Years = 0 then
    x_Years := 10;

  ModQuoCds.Close;
  ModQuoSds.Close;

  ModQuoSds.Params[0].Value := x_Years;

  ModQuoSds.Open;
  ModQuoCds.Open;

end;


procedure TQuoCitywiseForm.N2years1Click(Sender: TObject);
begin
  inherited;
  RestrictModuleDate(2);
end;

procedure TQuoCitywiseForm.Unrestricted1Click(Sender: TObject);
begin
  inherited;
  RestrictModuleDate(10);
end;

end.
