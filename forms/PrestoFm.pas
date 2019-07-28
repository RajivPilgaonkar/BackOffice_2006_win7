unit PrestoFm;

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
  cxTimeEdit, DateUtils, scExcelExport, cxRadioGroup, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, QuickRpt, Buttons, cxMemo, Outlook2000, QRPDFFilt, OleServer, ComObj, cxGridExportLink;

type
  TPrestoForm = class(TCustom_Presto_Form)
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
    Label14: TLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    Label19: TLabel;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    Label35: TLabel;
    cxDBTimeEdit3: TcxDBTimeEdit;
    Label24: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBCheckBox6: TcxDBCheckBox;
    Label18: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label20: TLabel;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    Label21: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label22: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
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
    mnuCreateModule: TMenuItem;
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
    cxButtonAutoCreate: TcxButton;
    cxButtonCheckIntegrity: TcxButton;
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
    AllCitiesSds: TSQLDataSet;
    AllCitiesDsp: TDataSetProvider;
    AllCitiesCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    AllCitiesDs: TDataSource;
    NightHaltSds: TSQLDataSet;
    NightHaltDsp: TDataSetProvider;
    NightHaltCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    NightHaltDs: TDataSource;
    ConsultantCdsConsultants_id: TIntegerField;
    ConsultantCdsConsultant: TStringField;
    ConsultantCdsEmail: TStringField;
    ConsultantCdsAddressbook_id: TIntegerField;
    ConsultantCdsWriteUp: TMemoField;
    ConsultantCdsPwd: TStringField;
    ConsultantCdsactive: TBooleanField;
    N3: TMenuItem;
    RestrictModuleListTo1: TMenuItem;
    N1Year1: TMenuItem;
    N2Years1: TMenuItem;
    Unsrestricted1: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu4: TPopupMenu;
    DisplayCost1: TMenuItem;
    MenuItem3: TMenuItem;
    DisplayTravel1: TMenuItem;
    DriversItinerary1: TMenuItem;
    MenuItem4: TMenuItem;
    SetMargins1: TMenuItem;
    SetMarginforthislineonly1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    PopupMenu5: TPopupMenu;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    AddressbookSds: TSQLDataSet;
    AddressbookDsp: TDataSetProvider;
    AddressbookCds: TClientDataSet;
    AddressbookCdsAddressbook_id: TIntegerField;
    AddressbookCdsOrganisation: TStringField;
    AddressbookDs: TDataSource;
    Panel16: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel9: TPanel;
    cxGridQuoLines: TcxGrid;
    cxGridDBBandedTableViewQuoLines: TcxGridDBBandedTableView;
    cxGridDBBandedTableViewQuoLinesQuoLines_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesQuotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesLineNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesQuoDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesDayNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesQuoTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesCity: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesTrsType: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesCarAgent: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesCost: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesServiceTax: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesTotalCost: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesQuoCost: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesFCurrQuoCost: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesCurrencyCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesMargin: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesQuoStringPax: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesQuoString: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesMasterMargin: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesDriveType: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesCar: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesNewCar: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesP2P: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesNewDriveLine: TcxGridDBBandedColumn;
    cxGridLevelQuoLines: TcxGridLevel;
    Panel19: TPanel;
    QuoLinesCdsQuoLines_id: TIntegerField;
    QuoLinesCdsQuotations_id: TIntegerField;
    QuoLinesCdsLineNum: TIntegerField;
    QuoLinesCdsQuoDate: TSQLTimeStampField;
    QuoLinesCdsCity: TStringField;
    QuoLinesCdsTrsType: TStringField;
    QuoLinesCdsQuoString: TStringField;
    QuoLinesCdsCar: TStringField;
    QuoLinesCdsCost: TFloatField;
    QuoLinesCdsQuoTime: TSQLTimeStampField;
    QuoLinesCdsQuoStringPax: TStringField;
    QuoLinesCdsNewCar: TIntegerField;
    QuoLinesCdsNewDriveLine: TIntegerField;
    QuoLinesCdsQuoCost: TFloatField;
    QuoLinesCdsServiceTax: TFloatField;
    QuoLinesCdsP2P: TIntegerField;
    QuoLinesCdsMargin: TFloatField;
    QuoLinesCdsMasterMargin: TFloatField;
    QuoLinesCdsDriveType: TStringField;
    QuoLinesCdsCarAgent: TStringField;
    QuoLinesCdsCarMode: TIntegerField;
    QuoLinesCdsDayNo: TIntegerField;
    QuoLinesCdsExchRate: TFMTBCDField;
    QuoLinesCdsFCurrQuoCost: TFloatField;
    QuoLinesCdsCurrencyCode: TStringField;
    QuoLinesCdsTotalCost: TFloatField;
    QuoPrintCdsQuoPrint_id: TIntegerField;
    QuoPrintCdsQuotations_id: TIntegerField;
    QuoPrintCdsPaxInfo: TStringField;
    QuoPrintCdsStartingInfo: TStringField;
    QuoPrintCdsBookingInfo: TStringField;
    QuoPrintCdsQuoRequest: TStringField;
    QuoPrintCdsQuoRequestDetails: TMemoField;
    QuoPrintCdsQuoFor: TStringField;
    QuoPrintCdsQuoForDetails: TMemoField;
    QuoPrintCdsQuoEstimate: TStringField;
    QuoPrintCdsBasicRate: TFMTBCDField;
    QuoPrintCdsBasicAmt: TFMTBCDField;
    QuoPrintCdsServiceTaxPerc: TFMTBCDField;
    QuoPrintCdsServiceTaxAmt: TFMTBCDField;
    QuoPrintCdsQuotationAmt: TFMTBCDField;
    QuoPrintCdsAdvanceAmt: TFMTBCDField;
    QuoPrintCdsDueDate: TSQLTimeStampField;
    QuoPrintCdsRecdAmt: TFMTBCDField;
    QuoPrintCdsEmergencyContact: TStringField;
    QuoPrintCdsCompanyContact: TStringField;
    QuoPrintCdsAdvDueDate: TSQLTimeStampField;
    QuoPrintCdsEmail: TStringField;
    QuoPrintCdsNumPax: TIntegerField;
    DetailItinCdsQuoPrintDays_id: TIntegerField;
    DetailItinCdsQuoPrint_id: TIntegerField;
    DetailItinCdsSrNo: TIntegerField;
    DetailItinCdsDayInfo: TStringField;
    DetailItinCdsDaySummaryInfo: TMemoField;
    ItineraryCdsQuoPrintItineraries_id: TIntegerField;
    ItineraryCdsQuoPrint_id: TIntegerField;
    ItineraryCdsSrNo: TIntegerField;
    ItineraryCdsDayInfo: TStringField;
    ItineraryCdsDaySummaryInfo: TMemoField;
    InclusionsCdsQuoPrintInclusions_id: TIntegerField;
    InclusionsCdsQuoPrint_id: TIntegerField;
    InclusionsCdsOrderNo: TIntegerField;
    InclusionsCdsSrNo: TIntegerField;
    InclusionsCdsServiceType: TStringField;
    InclusionsCdsRemarks: TMemoField;
    SubDetailCdsQuoPrintPlaces_id: TIntegerField;
    SubDetailCdsQuoPrintDays_id: TIntegerField;
    SubDetailCdsSrNo: TIntegerField;
    SubDetailCdsPlace: TStringField;
    SubDetailCdsPlaceInfo: TMemoField;
    cxButton1: TcxButton;
    PopupMenu6: TPopupMenu;
    SendEmail1: TMenuItem;
    SendEmailHotelsDetailedItin1: TMenuItem;
    SendEmailAllattachments1: TMenuItem;
    N5: TMenuItem;
    Delete1: TMenuItem;
    MenuItem6: TMenuItem;
    Exclusions1: TMenuItem;
    Exclusions2: TMenuItem;
    Delete3: TMenuItem;
    cxButton2: TcxButton;
    PopupMenu7: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    QRCompositeReport1: TQRCompositeReport;
    cxPageControl4: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxTabSheet7: TcxTabSheet;
    cxLabel2: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel5: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxButtonUpdate: TcxButton;
    cxTabSheet8: TcxTabSheet;
    SpeedButton1: TSpeedButton;
    cxLabel6: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxBasicAmtTextEdit: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    cxPaxLabel: TcxLabel;
    cxButton6: TcxButton;
    cxCurrencyLabel: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel17: TcxLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxDBDateEdit8: TcxDBDateEdit;
    cxLabel19: TcxLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    cxButton7: TcxButton;
    Panel22: TPanel;
    Splitter4: TSplitter;
    cxPageControl5: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1QuoPrintItineraries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoPrint_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DayInfo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DaySummaryInfo: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet9: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    cxTabSheet12: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView3QuoPrintDays_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3QuoPrint_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3SrNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3DayInfo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3DaySummaryInfo: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxPageControl6: TcxPageControl;
    cxTabSheet13: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1QuoPrintPlaces_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1QuoPrintDays_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Place: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PlaceInfo: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    QuoPrintCdsBalanceAmt: TFloatField;
    Panel23: TPanel;
    Panel18: TPanel;
    cxButtonUpdateAgents: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1Quo_AgentList_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Selected: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Alt_Addressbook_id: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    AgentListCdsQuo_AgentList_id: TIntegerField;
    AgentListCdsQuotations_id: TIntegerField;
    AgentListCdsAddressbook_id: TIntegerField;
    AgentListCdsSelected: TBooleanField;
    AgentListCdsAlt_Addressbook_id: TIntegerField;
    cxLabel21: TcxLabel;
    cxDBTextEdit29: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxDBTextEdit30: TcxDBTextEdit;
    QuoPrintCdsAdvDueAmt: TFloatField;
    N4: TMenuItem;
    N6: TMenuItem;
    ChangeModuleMasterVoucherDatestocurrentQuotation1: TMenuItem;
    N7: TMenuItem;
    ChangePaxinbetweenTour1: TMenuItem;
    cxGridDBBandedTableViewQuoLinesNumPax: TcxGridDBBandedColumn;
    QuoLinesCdsNumPax: TIntegerField;
    QuoLinesCdsNumSingles: TIntegerField;
    QuoLinesCdsNumDoubles: TIntegerField;
    QuoLinesCdsNumTriples: TIntegerField;
    QuoLinesCdsNumTwins: TIntegerField;
    cxGridDBBandedTableViewQuoLinesNumSingles: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesNumDoubles: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesTriples: TcxGridDBBandedColumn;
    cxGridDBBandedTableViewQuoLinesTwins: TcxGridDBBandedColumn;
    cxButton8: TcxButton;
    Packages1: TMenuItem;
    QuoLinesCdsPackage: TStringField;
    cxGridDBBandedTableViewQuoLinesPackage: TcxGridDBBandedColumn;
    ckbAutoTickets: TcxCheckBox;
    N9: TMenuItem;
    sp1: TMenuItem;
    N10: TMenuItem;
    FutureBookings1: TMenuItem;
    QuoLinesCdsDriveTypes_id: TIntegerField;
    QuoLinesCdsQuoTrsType: TIntegerField;
    PopupMenu8: TPopupMenu;
    DisplayCostBreakup2: TMenuItem;
    DisplayMarginBreakupforAccommodation2: TMenuItem;
    mnuRiksjaAll: TMenuItem;
    cxTabSheet5: TcxTabSheet;
    cxButton9: TcxButton;
    N8: TMenuItem;
    OpenOldPresto1: TMenuItem;
    cxButtonSave: TcxButton;
    cxButtonCancel: TcxButton;
    DsiplayTravel1: TMenuItem;
    MarginMaster1: TMenuItem;
    QuoPrintCdsEndingInfo: TStringField;
    cxLabel23: TcxLabel;
    cxDBTextEdit31: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
    procedure DetailCdsBeforeInsert(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DisplayItinerary2Click(Sender: TObject);
    procedure mnuCreateModuleClick(Sender: TObject);
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
    procedure N1Year1Click(Sender: TObject);
    procedure N2Years1Click(Sender: TObject);
    procedure Unsrestricted1Click(Sender: TObject);
    procedure cxButtonAutoCreateClick(Sender: TObject);
    procedure cxButtonCheckIntegrityClick(Sender: TObject);
    procedure DetailCdsBeforeDelete(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure DisplayCost1Click(Sender: TObject);
    procedure DisplayTravel1Click(Sender: TObject);
    procedure SetMargins1Click(Sender: TObject);
    procedure SetMarginforthislineonly1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure cxPageControl3Change(Sender: TObject);
    procedure cxButtonUpdateAgentsClick(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure MenuItem34Click(Sender: TObject);
    procedure SendEmail1Click(Sender: TObject);
    procedure SendEmailHotelsDetailedItin1Click(Sender: TObject);
    procedure SendEmailAllattachments1Click(Sender: TObject);
    procedure Exclusions2Click(Sender: TObject);
    procedure InclusionsCdsBeforePost(DataSet: TDataSet);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure QuoPrintCdsCalcFields(DataSet: TDataSet);
    procedure DriversItinerary1Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure ChangeModuleMasterVoucherDatestocurrentQuotation1Click(
      Sender: TObject);
    procedure ChangePaxinbetweenTour1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure Packages1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure sp1Click(Sender: TObject);
    procedure FutureBookings1Click(Sender: TObject);
    procedure DisplayCostBreakup2Click(Sender: TObject);
    procedure DisplayMarginBreakupforAccommodation2Click(Sender: TObject);
    procedure mnuRiksjaAllClick(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure OpenOldPresto1Click(Sender: TObject);
    procedure Exclusions1Click(Sender: TObject);
    procedure ItineraryCdsAfterPost(DataSet: TDataSet);
    procedure DetailItinCdsAfterPost(DataSet: TDataSet);
    procedure cxButtonSaveClick(Sender: TObject);
    procedure cxButtonCancelClick(Sender: TObject);
    procedure MasterDsStateChange(Sender: TObject);
    procedure DetailDsStateChange(Sender: TObject);
    procedure AgentListDsStateChange(Sender: TObject);
    procedure QuoPrintDsStateChange(Sender: TObject);
    procedure DetailItinDsStateChange(Sender: TObject);
    procedure ItineraryDsStateChange(Sender: TObject);
    procedure InclusionsDsStateChange(Sender: TObject);
    procedure SubDetailDsStateChange(Sender: TObject);
    procedure DsiplayTravel1Click(Sender: TObject);
    procedure MarginMaster1Click(Sender: TObject);
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
    procedure MoveTo(x_area: string; x_ToDataType: integer);
    procedure AutoCreate(x_option: integer);
    procedure CheckIntegrity(x_option: integer);
    procedure CheckIntegrityDates(x_option: integer);
    procedure DeleteSupportingData(x_option: integer);
    procedure RestrictModuleDate(x_Years: integer);
    procedure InsertQuoLines;
    procedure SaveChanges;
    procedure UpdateRequestDetails;
    procedure ComputeCosts;
    procedure CreateCompositeReport;
    procedure AutoTickets;
  public
    procedure WritePdfFile(x_CompositeReportType: integer; x_option1: integer; x_Filename: string);
    procedure WriteDetailedItinPdfFile(x_option: integer; x_Filename: string);
    procedure WriteHotelPdfFile;
    procedure WriteManyHotelPdfFile(x_option: integer; x_FileName: string);
    procedure WriteQuotationPdfFile(x_option: integer; x_Filename: string);
    procedure HideShowSaveButton;
    { Public declarations }
  end;

var
  PrestoForm: TPrestoForm;
  PrestoForm_Level: integer;
  PrestoForm_FromDate: TDateTime;
  PrestoForm_ToDate: TDateTime;
  PrestoForm_DataType: integer;
  PrestoForm_CompositeReportType: integer;

implementation

uses BackOfficeDM, TravelModeFm, QuoDayEditFm, GeneralUt, FITItineraryFm,
  QuoBookingClientsFm, QuoModifyDateFm, QuoAccommodationFm, QuoServicesFm,
  MainFm, Quotations_ExcelReportsUt, SearchSortFm, QuoSendMailFm,
  QuoMailStatusFm, FitStatusListFm, AdditionalRemarksFm, QuoDayActivityFm,
  QuoLineCostTraceFm, QuoLineCostTraceAgentFm, QuoLineAccMarginTraceFm,
  QuoCostingTraceFm, QuoDisplayTravelFm, FitMarginQuoFm, RpQuoItineraryFm,
  RpQuoInclusionFm, RpQuoDetailedItineraryFm, RpQuoWelcomeFm,
  RpQuoDetailedItinerary2Fm, RpQuoHotelAgentFm, RpQuoHeaderFm,
  RpQuoEstimateFm, RpQuoExclusionFm, QuoExclFm, QuoReceiptsFm, Presto_Ut,
  RpQuoHotelListFm, RpQuoHotelList2Fm, RpQuoModuleFm,
  QuoModules_ExcelReportsUt, RptQuoDriverItinFm, QuoExclusionFm,
  QuoPaxChangeFm, TspFm, HotelFutureBookFm, QuoCitywiseFm, FitMarginFm;

{$R *.dfm}

procedure TPrestoForm.FormCreate(Sender: TObject);
begin

  Caption := 'Presto';
  Width := 1250;
  Height := 690;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Tour Details';
  cxTabSheet2.Caption := 'Cities';

  //Panel1.Visible := false;
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
  AllCitiesCds.Open;
  NightHaltCds.Open;
  AccCds.Open;
  AddressbookCds.Open;

  // Itinerary tab
  QuoLinesCds.Close;
  QuoLinesCds.Open;

  // Agent List tab
  AgentListCds.Close;
  AgentListCds.Open;

  // Display last 2 years modules by default
  RestrictModuleDate(2);

  cxPageControl3.ActivePageIndex := 0;
  cxPageControl4.ActivePageIndex := 0;

end;

procedure TPrestoForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Quotations';
  Custom_MasterKeyField := 'Quotations_id';

  Custom_DetailCdsName := 'QuoCities';
  Custom_DetailKeyField := 'QuoCities_id';


  Custom_MasterPrintCdsName := 'QuoPrint';
  Custom_MasterPrintKeyField := 'QuoPrint_id';

  Custom_DetailItinCdsName := 'QuoPrintDays';
  Custom_DetailItinKeyField := 'QuoPrintDays_id';

  Custom_SubDetailCdsName := 'QuoPrintPlaces';
  Custom_SubDetailKeyField := 'QuoPrintPlaces_id';

  Custom_ItineraryCdsName := 'QuoPrintItineraries';
  Custom_ItineraryKeyField := 'QuoPrintItineraries_id';

  Custom_InclusionCdsName := 'QuoPrintInclusions';
  Custom_InclusionKeyField := 'QuoPrintInclusions_id';

  Custom_AdmLevel := PrestoForm_Level;

  Custom_FormWidth := Width;
  Custom_FormHeight := Height - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TPrestoForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PrestoForm := nil;
end;

procedure TPrestoForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_error: integer;
  x_Pax, x_str: string;
  GpSds : TSQLDataSet;
begin

  if MasterCds['QuotationDate'] = null then
    raise SysUtils.Exception.Create('Enter the Quotation Date');

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

  if MasterCds['StartDate'] = null then
    raise SysUtils.Exception.Create('Enter the Start Date');

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

  if MasterCds.State = dsInsert then
    MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], PrestoForm_DataType);

  if MasterCds.State = dsInsert then
    MasterCds['Quotations_id'] := GetNextId('Quotations','Quotations_id');

  inherited;

  if MasterCds['Quotations_id'] = null then
    raise SysUtils.Exception.Create('Quotations_id is not assigned');

end;

procedure TPrestoForm.DetailCdsBeforePost(DataSet: TDataSet);
begin

  if DetailCds['DateIn'] = null then
    Raise SysUtils.Exception.Create('Please enter the Date');

  if DetailCds['ToCities_id'] = null then
    Raise SysUtils.Exception.Create('Please enter the City');

  if DetailCds['Nights'] = null then
    Raise SysUtils.Exception.Create('Please enter the Nights');

  if DetailCds['Nights'] < 0 then
    Raise SysUtils.Exception.Create('Nights should be atleast 0');

  DetailCds['DateOut'] := IncDay(DetailCds['DateIn'],DetailCds['Nights']);

  if (DetailCds['RemarksOther'] <> null) and (trim(DetailCds['RemarksOther']) > '') then
    DetailCds['IsRemarksOther'] := 1
  else
    DetailCds['IsRemarksOther'] := 0;

  inherited;

  if DetailCds['QuoCities_id'] = null then
    raise SysUtils.Exception.Create('QuoCities_id is not assigned');

end;

procedure TPrestoForm.DetailCdsAfterInsert(DataSet: TDataSet);
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

procedure TPrestoForm.SetNextDate;
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

procedure TPrestoForm.SetLastDate;
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



procedure TPrestoForm.DetailCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['Quotations_id'] = null then
    raise SysUtils.exception.create ('Please fill in Tour Details first');

end;

procedure TPrestoForm.DetailCdsAfterPost(DataSet: TDataSet);
var
  x_count: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;
  MasterCds.RefreshRecord;

  CompleteCities;
  if ((DetailCds['FromCities_id'] <> null) and (DetailCds['ModeOfTravel']=null)) then
    begin

      if ckbAutoTickets.Checked then
        begin
          AutoTickets;

          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
          GpSds.CommandType := ctQuery;

          QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
            'WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_count := GpSds['x_count'];

          if x_count = 0 then
            FillTravelMode(1);

          GpSds.Close;

        end
      else
        FillTravelMode(1);
    end;

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

procedure TPrestoForm.AutoTickets;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if (DetailCds['QuoCities_id']=null) or (DetailCds['FromCities_id']=null) or (DetailCds['ToCities_id']=null) then
    exit; 

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC [p_MostFavouredRoute] ' + IntToStr(DetailCds['QuoCities_id']) + ', ' +
    IntToStr(DetailCds['FromCities_id']) + ', ' + IntToStr(DetailCds['ToCities_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TPrestoForm.CompleteCities;
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

procedure TPrestoForm.FillTravelMode(x_option: integer);
var
  x_Nights, x_Details_id: integer;
begin
  inherited;

  QuoDayActivityForm_Level := 4;
  QuoDayActivityForm_QuoCities_id := DetailCds['QuoCities_id'];
  QuoDayActivityForm_Quotations_id := DetailCds['Quotations_id'];
  if DetailCds['FromCities_id'] <> null then
    QuoDayActivityForm_FromCities_id := DetailCds['FromCities_id'];
  if DetailCds['ToCities_id'] <> null then
    QuoDayActivityForm_ToCities_id := DetailCds['ToCities_id'];
  QuoDayActivityForm_TravelDate := DetailCds['DateIn'];

  if x_option = 1 then
    QuoDayActivityForm_FormType := 1
  else if x_option = 5 then
    QuoDayActivityForm_FormType := 5;

  QuoDayActivityForm_FormMode := 1;

  if QuoDayActivityForm = nil then
    Application.CreateForm(TQuoDayActivityForm, QuoDayActivityForm);

  QuoDayActivityForm.ShowModal;

  if (not QuoDayActivityForm.TicketsCds.eof) and (QuoDayActivityForm.TicketsCds['Overnight'] <> null)
     and (QuoDayActivityForm.TicketsCds['Overnight'] = true) then
    begin
      if DetailCds.State = dsBrowse then
        DetailCds.Edit;

      x_Nights := 1;
      if QuoDayActivityForm.TicketsCds['Nights'] <> null then
        x_Nights := QuoDayActivityForm.TicketsCds['Nights'];

      SetOvernightJourney(DetailCds['QuoCities_id'], x_Nights);

    end;

  // Reffresh mode, ... on the main screen
  x_Details_id := DetailCds['QuoCities_id'];
  DetailCds.Active := false;
  DetailCds.Active := true;
  DetailCds.Locate('QuoCities_id', x_Details_id, []);

  QuoDayActivityForm.Free;
  QuoDayActivityForm := nil;

end;

procedure TPrestoForm.SetOvernightJourney (x_QuoCities_id, x_Nights: integer);
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

  // Post through SQL and not Delphi as this function is called in BeforePost(AfterPost) events and they will recurse
//  QueryString := 'UPDATE QuoCities SET DateIn = DATEADD(day, ' + IntToStr(x_Nights) + ', DateIn) ' +
//    'WHERE QuoCities_id = ' + IntToStr(x_QuoCities_id);
//  GpSds.Close;
//  GpSds.CommandText := QueryString;
//  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET DateIn = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',DetailCds['DateIn'])) + ' ' +
    'WHERE QuoCities_id = ' + IntToStr(x_QuoCities_id);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoCities SET DateOut = DATEADD(day, Nights, DateIn) ' +
    'WHERE QuoCities_id = ' + IntToStr(x_QuoCities_id);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;



function TPrestoForm.RecommendedHotelTypes: boolean;
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

function TPrestoForm.GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
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

procedure TPrestoForm.ModifyLayout;
begin

  cxTrialLabel.Caption := '';
  mnuCopyTrial.Visible := false;
  mnuMovetoLive.Visible := false;
  mnuRiksjaAll.Visible := false;

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
      mnuCopyTrial.Caption := 'Make a copy of Riksja';
      mnuCopyTrial.Visible := true;
      mnuRiksjaAll.Visible := true;
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



procedure TPrestoForm.DisplayItinerary2Click(Sender: TObject);
begin
  inherited;

  _FITItineraryForm_Quotations_id := MasterCds['Quotations_id'];
  _FITItineraryForm_Trial := PrestoForm_DataType;

  if FitItineraryForm = nil then
    Application.CreateForm(TFitItineraryForm, FitItineraryForm);

end;

procedure TPrestoForm.mnuCreateModuleClick(Sender: TObject);
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
    raise SysUtils.exception.Create('Please enter Tour Code / Tour Date');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT TourCode, TourDate from QuoModules ' +
    'WHERE TourCode = ' + QuotedStr(MasterCds['TourCode']) + ' ' +
    'AND TourDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['StartDate'])) + ' ';

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not GpSds.Eof then
    begin
       ShowMessage(MasterCds['TourCode'] + ' -- already exists in module');
    end
  else
    begin
      QueryString := 'EXEC p_QuoModules_AutoInsertElements ' +
        IntToStr(MasterCds['Quotations_id']);
      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
      ShowMessage ('done');

    end;

  GpSds.Free;

end;

procedure TPrestoForm.CreateBookings1Click(Sender: TObject);
begin
  inherited;
  _QuoBookingClientsForm_Quotations_id := MasterCds['Quotations_id'];
  _QuoBookingsClientsForm_Level := 4;

  if QuoBookingClientsForm = nil then
    Application.CreateForm(TQuoBookingClientsForm, QuoBookingClientsForm);

end;

procedure TPrestoForm.mnuCreateMastersClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.post;

  if (MasterCds['TourCode'] = null) or (trim(MasterCds['TourCode']) = '') then
    raise SysUtils.exception.create('Please enter the Tour Code');

  if (MasterCds['TourNo'] = null) or (MasterCds['TourNo'] = 0) then
    raise SysUtils.exception.create('Please enter the Tour Number');

  if (MasterCds['Reference'] = null) or (trim(MasterCds['Reference']) = '') then
    raise SysUtils.exception.create('Please enter the Reference Number');

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
      raise SysUtils.exception.create('Please enter Pax Names in the bookings before creating the Masters');
    end;

  QueryString := 'SELECT x_count = COUNT(*) FROM Bookings ' +
    'WHERE Reference = ''' + MasterCds['Reference'] + '''';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if GpSds['x_count'] > 0 then
    begin
      GpSds.Free;
      raise SysUtils.exception.create('This reference number already exists');
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

procedure TPrestoForm.mnuDeleteMastersClick(Sender: TObject);
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

procedure TPrestoForm.mnuMoveToTrialClick(Sender: TObject);
begin
  inherited;

  MoveTo('TRIAL', 1);

end;

procedure TPrestoForm.mnuMoveToLiveClick(Sender: TObject);
begin
  inherited;

  MoveTo('LIVE', 0);

end;

procedure TPrestoForm.mnuMoveToWebClick(Sender: TObject);
begin
  inherited;

  MoveTo('WEB', 0);

end;

procedure TPrestoForm.MoveTo(x_area: string; x_ToDataType: integer);
var
  x_Quotations_id: integer;
begin

  if MessageDlg('Are you sure you want to move this to the ' +  x_area + ' area?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], x_ToDataType);
  x_Quotations_id := MasterCds['Quotations_id'];

  MasterCds['Trial'] := x_ToDataType;
  MasterCds.Post;

  PrestoForm_DataType := x_ToDataType;

  DetailCds.Active := false;
  DetailSds.Active := false;
  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[2].Value := x_ToDataType;

  MasterSds.Active := true;
  MasterCds.Active := true;
  DetailSds.Active := true;
  DetailCds.Active := true;

  MasterCds.Locate('Quotations_id', x_Quotations_id, []);

end;

procedure TPrestoForm.mnuCopyTrialClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MasterCds['Quotations_id'] = null then
    abort;

  if (MasterCds['Trial'] <> 1) and (MasterCds['Trial'] <> 3) then
    raise SysUtils.exception.create ('Only valid for trial');

  if MessageDlg ('This will make a copy of the quotation. Are you sure?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if MasterCds['Trial'] = 1 then
    QueryString := 'EXEC [p_QuotationCopy] ' +
      IntToStr(MasterCds['Quotations_id']) + ',1'
  else
    QueryString := 'EXEC [p_QuotationCopy_AddYear] ' +
      IntToStr(MasterCds['Quotations_id']) + ',1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  if MasterCds['Trial'] = 1 then
    begin

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

    end;

  GpSds.Free;

  ShowMessage('done');

end;

procedure TPrestoForm.ModifyStartDate2Click(Sender: TObject);
begin
  inherited;
  if MasterCds['StartDate'] = null then
    raise SysUtils.exception.create ('Please enter the Start Date "Arr On"');

  if MasterCds['Quotations_id'] = null then
    raise SysUtils.exception.create ('Please save the quotation first');

  if MasterCds['TourCode'] <> null then
    begin
      if IsMasterTourCreated(MasterCds['TourCode']) then
        raise SysUtils.exception.create ('Master already created. Cannot modify dates now.');
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

procedure TPrestoForm.SaveAsExcel2Click(Sender: TObject);
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

procedure TPrestoForm.All4Click(Sender: TObject);
begin
  AutoCreate(0);
end;

procedure TPrestoForm.Accommodation5Click(Sender: TObject);
begin
  AutoCreate(1);
end;

procedure TPrestoForm.SightSeeing6Click(Sender: TObject);
begin
  AutoCreate(2);
end;

procedure TPrestoForm.ransfers6Click(Sender: TObject);
begin
  AutoCreate(3);
end;

procedure TPrestoForm.AutoCreate(x_option: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (x_option = 0) then
    begin
      QueryString := 'EXEC p_QuoCompleteTimings ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if (x_option = 0) then
    begin
      QueryString := 'EXEC [p_QuoDateCheck] ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if ((not GpSds.Eof) and (GpSds['ErrorNo'] <> null) and (GpSds['ErrorNo'] > 0)) then
        begin
          ShowMessage(GpSds['ErrorDescription']);
        end;
    end;

  if (x_option = 0) then
    begin

      QueryString := 'EXEC p_QuoTicketsSetChangeCar ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 1)) then
    begin

      QueryString := 'EXEC p_QuoAutoFillAccommodation ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 2)) then
    begin

      QueryString := 'EXEC p_QuoAutoFillSightSeeing ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 3)) then
    begin

      QueryString := 'EXEC p_QuoAutoFillTransfers ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if (x_option = 0) then
    begin

      QueryString := 'EXEC p_QuoCompleteTimings ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if (x_option = 0) then
    begin

      QueryString := 'EXEC p_QuoSetSightSeeingTransport ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

    
  GpSds.Free;

  DetailCds.Active := false;
  DetailCds.Active := true;

  ShowMessage ('Done');

end;


procedure TPrestoForm.SetTiming1Click(Sender: TObject);
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

procedure TPrestoForm.All5Click(Sender: TObject);
begin
  CheckIntegrity(0);
  
end;

procedure TPrestoForm.ickets5Click(Sender: TObject);
begin
  CheckIntegrity(1);
end;

procedure TPrestoForm.Accommodation7Click(Sender: TObject);
begin
  CheckIntegrity(2);
end;

procedure TPrestoForm.Sightseeing8Click(Sender: TObject);
begin
  CheckIntegrity(3);
end;

procedure TPrestoForm.ransfers8Click(Sender: TObject);
begin
  CheckIntegrity(4);
end;

procedure TPrestoForm.CheckIntegrity(x_option: integer);
var
  GpSds : TSQLDataSet;
  QueryString, x_Msg: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if ((x_option = 0) or (x_option = 1)) then
    begin

      QueryString := 'EXEC p_QuoCheckIntegrityTickets ' + IntToStr(MasterCds['Quotations_id']) + ' ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end;

  if ((x_option = 0) or (x_option = 2)) then
    begin

      QueryString := 'EXEC p_QuoCheckIntegrityAccommodation ' + IntToStr(MasterCds['Quotations_id']) + ' ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end;

  if ((x_option = 0) or (x_option = 3)) then
    begin

      QueryString := 'EXEC p_QuoCheckIntegritySightSeeing ' + IntToStr(MasterCds['Quotations_id']) + ' ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end;

  if ((x_option = 0) or (x_option = 4)) then
    begin

      QueryString := 'EXEC p_QuoCheckIntegrityTransfers ' + IntToStr(MasterCds['Quotations_id']) + ' ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  AccCds.Active := false;
  AccCds.Active := true;

  DetailCds.Active := false;
  DetailCds.Active := true;

  QueryString := 'SELECT Msg = dbo.[fn_GetServiceWarning] (' + IntToStr(MasterCds['Quotations_id']) + ') ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  x_Msg := '';
  if (not GpSds.Eof) and (GpSds['Msg'] <> null) and (GpSds['Msg'] > '') then
    x_Msg := GpSds['Msg'];

  GpSds.Free;

  if x_Msg > '' then
    ShowMessage (x_Msg)
  else
    ShowMessage ('Done');

end;


procedure TPrestoForm.CheckIntegrityDates(x_option: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (x_option = 0) then
    begin

      QueryString := 'EXEC p_CheckIntegrityDates ' + IntToStr(MasterCds['Quotations_id']) + ' ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['ErrorNo']>0) then
        ShowMessage('Check Travel Dates && Car Report/Release Dates.');

    end;

  GpSds.Free;

end;


procedure TPrestoForm.All6Click(Sender: TObject);
begin
  DeleteSupportingData(0);
end;

procedure TPrestoForm.ickets6Click(Sender: TObject);
begin
  DeleteSupportingData(1);
end;

procedure TPrestoForm.Accommodation8Click(Sender: TObject);
begin
  DeleteSupportingData(2);
end;

procedure TPrestoForm.Sightseeing9Click(Sender: TObject);
begin
  DeleteSupportingData(3);
end;

procedure TPrestoForm.ransfers9Click(Sender: TObject);
begin
  DeleteSupportingData(4);
end;

procedure TPrestoForm.DeleteSupportingData(x_option: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if MessageDlg ('Are you sure you want to delete?',mtWarning, [mbYes,mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if ((x_option = 0) or (x_option = 1)) then
    begin
      QueryString := 'DELETE FROM QuoTickets WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 2)) then
    begin
      QueryString := 'DELETE FROM QuoAccommodation WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 3)) then
    begin
      QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
        'AND SightSeeing = 1';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 4)) then
    begin
      QueryString := 'DELETE FROM QuoServices WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
        'AND SightSeeing = 0';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  if ((x_option = 0) or (x_option = 5)) then
    begin
      QueryString := 'DELETE FROM QuoPackages WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
    end;

  GpSds.Free;

  ShowMessage ('Done');

end;


procedure TPrestoForm.ickets7Click(Sender: TObject);
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

procedure TPrestoForm.Accommodation9Click(Sender: TObject);
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

procedure TPrestoForm.Sightseeing10Click(Sender: TObject);
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

procedure TPrestoForm.ransfers10Click(Sender: TObject);
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

function TPrestoForm.IsMasterTourCreated(x_MasterTourCode: string): boolean;
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

function TPrestoForm.AlreadyVisited (x_Cities_id: integer; x_Date: TDateTime): boolean;
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

procedure TPrestoForm.AlterLayout;
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


procedure TPrestoForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['CancelledOn'] = null then
    LabelCancel.Visible := false
  else
    LabelCancel.Visible := true;

  AlterLayout;

end;

procedure TPrestoForm.MasterCdsAfterInsert(DataSet: TDataSet);
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
  //MasterCds['StartDate'] := Date();
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

procedure TPrestoForm.GetDefaultPrincipalAgent;
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

procedure TPrestoForm.GetDefaultCurrCountry;
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


procedure TPrestoForm.AgentLCBPropertiesEditValueChanged(Sender: TObject);
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

procedure TPrestoForm.ConsultantLCBPropertiesEditValueChanged(
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

procedure TPrestoForm.DetailCdsToCities_idChange(Sender: TField);
begin
  inherited;
  if DetailCds['ToCities_id'] = null then
    exit;

  if DetailCds['Nights'] = null then
    SetDefaultNights;

  if (DetailCds['DateIn'] <> null) and (AlreadyVisited(DetailCds['ToCities_id'],DetailCds['DateIn'])) then
    DetailCds['Nights'] := 1;

end;

procedure TPrestoForm.SetDefaultNights;
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


procedure TPrestoForm.cxGrid1DBBandedTableView1StylesGetContentStyle(
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

procedure TPrestoForm.cxSearchEditKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    SearchQuotation;
end;

procedure TPrestoForm.SearchQuotation;
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

procedure TPrestoForm.SendMails1Click(Sender: TObject);
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

procedure TPrestoForm.ConfirmationStatus1Click(Sender: TObject);
begin
  inherited;
  if QuoMailStatusForm = nil then
    Application.CreateForm(TQuoMailStatusForm, QuoMailStatusForm);

end;

procedure TPrestoForm.FITStatusList1Click(Sender: TObject);
begin
  inherited;
  if FitStatusListForm = nil then
    Application.CreateForm(TFitStatusListForm, FitStatusListForm);

end;

procedure TPrestoForm.ConsultantLCBEnter(Sender: TObject);
begin
  inherited;
  try
    if AgentLCB.EditValue <> null then
      PrinAgentCds.Locate('Addressbook_id',AgentLCB.EditValue,[]);
  except
  end;

end;

procedure TPrestoForm.cxGrid1DBBandedTableView1ErrorNoStylesGetContentStyle(
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

procedure TPrestoForm.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;
  if AdditionalRemarksForm = nil then
    Application.CreateForm(TAdditionalRemarksForm, AdditionalRemarksForm);

  AdditionalRemarksForm.Visible := False;

  AdditionalRemarksForm.ShowModal;

  AdditionalRemarksForm.Free;
  AdditionalRemarksForm := nil;

end;

procedure TPrestoForm.cxWebCkbClick(Sender: TObject);
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

procedure TPrestoForm.RestrictModuleDate(x_Years: integer);
begin
  inherited;

  if x_Years = 0 then
    x_Years := 10;

  ModQuoCds.Close;
  ModQuoSds.Close;

  ModQuoSds.Params[0].Value := PrestoForm_FromDate;
  ModQuoSds.Params[1].Value := x_Years;

  ModQuoSds.Open;
  ModQuoCds.Open;

end;

procedure TPrestoForm.N1Year1Click(Sender: TObject);
begin
  inherited;
  RestrictModuleDate(1);
end;

procedure TPrestoForm.N2Years1Click(Sender: TObject);
begin
  inherited;
  RestrictModuleDate(2);
end;

procedure TPrestoForm.Unsrestricted1Click(Sender: TObject);
begin
  inherited;
  RestrictModuleDate(10);
end;

procedure TPrestoForm.cxButtonAutoCreateClick(Sender: TObject);
begin
  inherited;
  AutoCreate(0);
end;

procedure TPrestoForm.cxButtonCheckIntegrityClick(Sender: TObject);
begin
  inherited;
  CheckIntegrity(0);
  CheckIntegrityDates(0);
end;

procedure TPrestoForm.DetailCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM QuoTickets WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoServices WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM QuoAccommodation WHERE QuoCities_id = ' + IntToStr(DetailCds['QuoCities_id']);
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TPrestoForm.MenuItem1Click(Sender: TObject);
begin
  inherited;
  FillTravelMode(5);
end;

procedure TPrestoForm.cxButton3Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  x_QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to (re)create this itinerary?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'DELETE FROM QuoLinesDrives WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' AND q.QuoLines_id = QuoLinesDrives.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM QuoLinesDrivesStates WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' AND q.QuoLines_id = QuoLinesDrivesStates.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM BreakTransCosts WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' AND q.QuoLines_id = BreakTransCosts.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM QuoLineCostTrace WHERE EXISTS ' +
         '(SELECT * FROM QuoLines q WHERE q.Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' AND q.QuoLines_id = QuoLineCostTrace.QuoLines_id)';
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  InsertQuoLines;

end;

procedure TPrestoForm.InsertQuoLines;
var
  GpSds : TSQLDataSet;
  x_QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT x_count = COUNT(*) FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if GpSds['x_count'] = 0 then
    begin
      x_QueryString := 'EXEC p_InsertQuoLines ' + IntToStr(MasterCds['Quotations_id']);
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'EXEC p_UpdateQuoStrings ' + IntToStr(MasterCds['Quotations_id']);
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'EXEC p_UpdateQuoStrings ' + IntToStr(MasterCds['Quotations_id']);
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      QuoLinesCds.Close;
      QuoLinesCds.Open;

    end;

  GpSds.Free;

end;


procedure TPrestoForm.DisplayCost1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  x_QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT MIN(QuoDate) AS MinDate FROM QuoLines WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Open;


  QuoLinesCds.Active := False;

  if (GpSds['MinDate'] = null) or (GpSds['MinDate'] >= StrToDate('01/07/2017')) then
    x_QueryString := 'EXEC p_GST_UpdateQuoCosts ' + IntToStr(MasterCds['Quotations_id'])
  else
    x_QueryString := 'EXEC p_UpdateQuoCosts ' + IntToStr(MasterCds['Quotations_id']) + ',0, 1';

//  x_QueryString := 'EXEC p_UpdateQuoCosts ' + IntToStr(MasterCds['Quotations_id']) + ',0, 1';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  QuoLinesCds.Active := False;
  QuoLinesCds.Active := True;

end;

procedure TPrestoForm.DisplayTravel1Click(Sender: TObject);
begin
  inherited;

  _QuoDisplayTravelForm_Level := GetUserLevel(g_users_id, 9080);

  If _QuoDisplayTravelForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _QuoDisplayTravelForm_Type := 1;
  _QuoDisplayTravelForm_Quotations_id := QuoLinesCds['Quotations_id'];

  if QuoDisplayTravelForm = nil then
    Application.CreateForm(TQuoDisplayTravelForm, QuoDisplayTravelForm);

  QuoDisplayTravelForm.ShowModal;

  QuoDisplayTravelForm.Free;
  QuoDisplayTravelForm := nil;

end;

procedure TPrestoForm.SetMargins1Click(Sender: TObject);
begin
  inherited;

  _FitMarginQuoForm_Level := GetUserLevel(g_users_id, 12040);

  _FitMarginQuoForm_Quotations_id := MasterCds['Quotations_id'];

  If _FitMarginQuoForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FitMarginQuoForm = nil then
    Application.CreateForm(TFitMarginQuoForm,FitMarginQuoForm);


end;

procedure TPrestoForm.SetMarginforthislineonly1Click(Sender: TObject);
var
  x_ClickedOk: boolean;
  GpSds : TSQLDataSet;
  x_QueryString, x_NewString: string;
begin

  x_ClickedOK:= InputQuery('Enter Margin', 'Enter Margin', x_NewString);

  if x_ClickedOK then
    begin

      try
        x_QueryString := 'UPDATE QuoLines SET Margin2 = ' + x_NewString + ' ' +
          'WHERE QuoLines_id = ' + IntToStr(QuoLinesCds['QuoLines_id']);

        GpSds := TSQLDataSet.Create(nil);
        GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
        GpSds.CommandType := ctQuery;

        GpSds.CommandText := x_QueryString;
        GpSds.ExecSQL;

        GpSds.Free;
      except
      end;

    end;

end;

procedure TPrestoForm.Print1Click(Sender: TObject);
begin
  inherited;

  dxComponentPrinter.CurrentLink.Component := cxGridQuoLines;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Pax Itinerary ';

  dxComponentPrinter.Preview(True,nil);

end;

procedure TPrestoForm.MenuItem16Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter.CurrentLink.Component := cxGridQuoLines;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Pax Itinerary ';

  dxComponentPrinter.Preview(True,nil);

end;

procedure TPrestoForm.MenuItem18Click(Sender: TObject);
begin
  inherited;
  
  _RpQuoItineraryForm_Type := 1;

  if RpQuoItineraryForm = nil then
    Application.CreateForm(TRpQuoItineraryForm, RpQuoItineraryForm);

  RpQuoItineraryForm.ReportCds.Close;
  RpQuoItineraryForm.ReportSds.Close;
  RpQuoItineraryForm.ReportSds.CommandText :=
    'EXEC p_Rpt_DetailedItinerary2 ' + IntToStr(MasterCds['Quotations_id']) + ', 2';
  RpQuoItineraryForm.ReportSds.Open;
  RpQuoItineraryForm.ReportCds.Open;

  RpQuoItineraryForm.QuickRep1.PreviewModal;

  RpQuoItineraryForm.Release;
  RpQuoItineraryForm := nil;

end;

procedure TPrestoForm.MenuItem19Click(Sender: TObject);
begin
  inherited;

  _RpQuoInclusionForm_Type := 1;

  if RpQuoInclusionForm = nil then
    Application.CreateForm(TRpQuoInclusionForm, RpQuoInclusionForm);

  RpQuoInclusionForm.ReportSds.Close;
  RpQuoInclusionForm.ReportSds.CommandText :=
    'EXEC p_RptQuoItinerary ' + IntToStr(MasterCds['Quotations_id']) + ', 2';
  RpQuoInclusionForm.ReportSds.Open;

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportCds.Open;

  RpQuoInclusionForm.QuickRep1.PreviewModal;

  RpQuoInclusionForm.Release;
  RpQuoInclusionForm := nil;


end;

procedure TPrestoForm.MenuItem20Click(Sender: TObject);
begin
  inherited;

  if RpQuoDetailedItineraryForm = nil then
    Application.CreateForm(TRpQuoDetailedItineraryForm, RpQuoDetailedItineraryForm);

  RpQuoDetailedItineraryForm.ReportSds.Close;
  RpQuoDetailedItineraryForm.ReportSds.CommandText :=
    'EXEC p_Rpt_DetailedItinerary ' + IntToStr(MasterCds['Quotations_id']) + ', 1';
  RpQuoDetailedItineraryForm.ReportSds.Open;

  RpQuoDetailedItineraryForm.ReportCds.Close;
  RpQuoDetailedItineraryForm.ReportCds.Open;

  RpQuoDetailedItineraryForm.QuickRep1.PreviewModal;

  RpQuoDetailedItineraryForm.Release;
  RpQuoDetailedItineraryForm := nil;

end;

procedure TPrestoForm.MenuItem21Click(Sender: TObject);
begin
  inherited;

  _RpQuoWelcomeForm_Quotations_id := MasterCds['Quotations_id'];

  if RpQuoWelcomeForm = nil then
    Application.CreateForm(TRpQuoWelcomeForm, RpQuoWelcomeForm);

  RpQuoWelcomeForm.QuoLinesCds.Close;
  RpQuoWelcomeForm.QuoLinesSds.Close;

  RpQuoWelcomeForm.ReportCds.Close;
  RpQuoWelcomeForm.ReportSds.Close;

  RpQuoWelcomeForm.ReportSds.Params[0].Value := MasterCds['Quotations_id'];

  RpQuoWelcomeForm.ReportSds.Open;
  RpQuoWelcomeForm.ReportCds.Open;

  RpQuoWelcomeForm.QuoLinesSds.Open;
  RpQuoWelcomeForm.QuoLinesCds.Open;

  RpQuoWelcomeForm.QuickRep1.PreviewModal;

  RpQuoWelcomeForm.Release;
  RpQuoWelcomeForm := nil;

end;

procedure TPrestoForm.MenuItem22Click(Sender: TObject);
begin
  inherited;
  _RpQuoDetailedItinerary2Form_Type := 1;

  if RpQuoDetailedItinerary2Form = nil then
    Application.CreateForm(TRpQuoDetailedItinerary2Form, RpQuoDetailedItinerary2Form);

  RpQuoDetailedItinerary2Form.ReportCds.Close;
  RpQuoDetailedItinerary2Form.ReportSds.Close;

  RpQuoDetailedItinerary2Form.ReportSds.CommandText :=
    'EXEC p_Rpt_DetailedItinerary2 ' + IntToStr(MasterCds['Quotations_id']) + ', 1';

  RpQuoDetailedItinerary2Form.ReportSds.Open;
  RpQuoDetailedItinerary2Form.ReportCds.Open;

  RpQuoDetailedItinerary2Form.QuickRep1.PreviewModal;

  RpQuoDetailedItinerary2Form.Release;
  RpQuoDetailedItinerary2Form := nil;

end;

procedure TPrestoForm.MenuItem25Click(Sender: TObject);
begin
  inherited;
  if AgentListCds.State = dsEdit then
    AgentListCds.Post;

  if RpQuoHotelAgentForm = nil then
    Application.CreateForm(TRpQuoHotelAgentForm, RpQuoHotelAgentForm);

  RpQuoHotelAgentForm.ReportSds.Close;
  RpQuoHotelAgentForm.ReportSds.CommandText :=
    'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(MasterCds['Quotations_id']) + ',3';
  RpQuoHotelAgentForm.ReportSds.Open;

  RpQuoHotelAgentForm.ReportCds.Close;
  RpQuoHotelAgentForm.ReportCds.Open;

  RpQuoHotelAgentForm.QRTitleLabel.Caption := 'Hotels & Agents';
  RpQuoHotelAgentForm.QRColumnLabel.Caption := 'Hotel/Agent';

  RpQuoHotelAgentForm.QuickRep1.PreviewModal;

  RpQuoHotelAgentForm.Release;
  RpQuoHotelAgentForm := nil;


end;

procedure TPrestoForm.MenuItem26Click(Sender: TObject);
begin
  inherited;
  if AgentListCds.State = dsEdit then
    AgentListCds.Post;

  if RpQuoHotelAgentForm = nil then
    Application.CreateForm(TRpQuoHotelAgentForm, RpQuoHotelAgentForm);

  RpQuoHotelAgentForm.ReportSds.Close;
  RpQuoHotelAgentForm.ReportSds.CommandText :=
    'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(MasterCds['Quotations_id']) + ',2';
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

procedure TPrestoForm.MenuItem27Click(Sender: TObject);
begin
  inherited;

  if AgentListCds.State = dsEdit then
    AgentListCds.Post;

  if RpQuoHotelAgentForm = nil then
    Application.CreateForm(TRpQuoHotelAgentForm, RpQuoHotelAgentForm);

  RpQuoHotelAgentForm.ReportSds.Close;
  RpQuoHotelAgentForm.ReportSds.CommandText :=
    'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(MasterCds['Quotations_id']) + ',1';
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

procedure TPrestoForm.cxPageControl3Change(Sender: TObject);
begin
  inherited;
  if cxPageControl3.ActivePageIndex = 0 then
    begin
      cxButtonUtilities.Visible := true;
      cxButtonAutoCreate.Visible := true;
      cxButtonCheckIntegrity.Visible := true;
      cxButtonStatus.Visible := true;
    end
  else if cxPageControl3.ActivePageIndex = 1 then
    begin

      InsertQuoLines;

      cxButtonUtilities.Visible := false;
      cxButtonAutoCreate.Visible := false;
      cxButtonCheckIntegrity.Visible := false;
      cxButtonStatus.Visible := false;
    end
  else if cxPageControl3.ActivePageIndex = 2 then
    begin

      cxButtonUtilities.Visible := false;
      cxButtonAutoCreate.Visible := false;
      cxButtonCheckIntegrity.Visible := false;
      cxButtonStatus.Visible := false;

      QuoPrintCds.Active := true;

      if QuoPrintCds['QuoPrint_id'] = null then
        begin
          cxPageControl4.Enabled := false;
          cxPageControl5.Enabled := false;
          cxPageControl6.Enabled := false;
        end
      else
        begin
          CreateCompositeReport;
        end;

    end
  else if cxPageControl3.ActivePageIndex = 2 then
    begin

      cxButtonUtilities.Visible := false;
      cxButtonAutoCreate.Visible := false;
      cxButtonCheckIntegrity.Visible := false;
      cxButtonStatus.Visible := false;

    end;
end;

procedure TPrestoForm.cxButtonUpdateAgentsClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_Rpt_QuoHotelAgentList ' + IntToStr(MasterCds['Quotations_id']) + ',1';
  GpSds.ExecSQL;

  GpSds.Free;

  AgentListCds.Close;
  AgentListCds.Open;

end;

procedure TPrestoForm.Delete1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_QuoPrint_Delete] ' + IntToStr(QuoPrintCds['QuoPrint_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  QuoPrintCds.Active := false;
  QuoPrintCds.Active := true;

end;

procedure TPrestoForm.MenuItem7Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _RpQuoItineraryForm_Type := 2;

  if RpQuoItineraryForm = nil then
    Application.CreateForm(TRpQuoItineraryForm, RpQuoItineraryForm);

  RpQuoItineraryForm.ReportCds.Close;
  RpQuoItineraryForm.ReportSds.Close;

  RpQuoItineraryForm.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.EndingInfo AS Str3,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,  ' +
       'CAST(0 AS BIT) AS Overnight ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintItineraries d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo';

  RpQuoItineraryForm.ReportSds.Open;
  RpQuoItineraryForm.ReportCds.Open;

  RpQuoItineraryForm.QuickRep1.PreviewModal;

  RpQuoItineraryForm.Release;
  RpQuoItineraryForm := nil;

end;

procedure TPrestoForm.MenuItem8Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _RpQuoInclusionForm_Type := 2;

  if RpQuoInclusionForm = nil then
    Application.CreateForm(TRpQuoInclusionForm, RpQuoInclusionForm);

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportSds.Close;

  RpQuoInclusionForm.ReportSds.Close;
  RpQuoInclusionForm.ReportSds.CommandText :=
    'SELECT d.QuoPrintInclusions_id AS Inclusion_id, cast(null as smalldatetime) AS DateIn, cast(null as datetime) AS TimeIn, ' +
    'd.ServiceType, Cast(d.Remarks AS varchar(1000)) AS Remarks, d.OrderNo, '''' AS LeadName, '''' AS TourCode, ' +
    'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.EndingInfo AS Str3 ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintInclusions d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.OrderNo, d.SrNo';
  RpQuoInclusionForm.ReportSds.Open;

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportCds.Open;

  RpQuoInclusionForm.QuickRep1.PreviewModal;

  RpQuoInclusionForm.Release;
  RpQuoInclusionForm := nil;

end;

procedure TPrestoForm.MenuItem9Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _RpQuoDetailedItinerary2Form_Type := 2;
  _RpQuoDetailedItinerary2Form_Image := 0;

  if RpQuoDetailedItinerary2Form = nil then
    Application.CreateForm(TRpQuoDetailedItinerary2Form, RpQuoDetailedItinerary2Form);

  RpQuoDetailedItinerary2Form.ReportCds.Close;
  RpQuoDetailedItinerary2Form.ReportSds.Close;

  RpQuoDetailedItinerary2Form.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.EndingInfo AS Str3, p.BookingInfo AS Str4, ' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,' +
       'sd.Place AS Title, cast(sd.PlaceInfo as text) AS WriteUp, p.EmergencyContact, p.CompanyContact ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintDays d ON p.QuoPrint_id = d.QuoPrint_id ' +
       'LEFT JOIN QuoPrintPlaces sd ON d.QuoPrintDays_id = sd.QuoPrintDays_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo, sd.SrNo';

  RpQuoDetailedItinerary2Form.ReportSds.Open;
  RpQuoDetailedItinerary2Form.ReportCds.Open;

  RpQuoDetailedItinerary2Form.QuickRep1.PreviewModal;

  RpQuoDetailedItinerary2Form.Release;
  RpQuoDetailedItinerary2Form := nil;

end;

procedure TPrestoForm.MenuItem10Click(Sender: TObject);
begin
  inherited;

  WriteDetailedItinPdfFile(1, '');

end;

procedure TPrestoForm.WriteDetailedItinPdfFile(x_option: integer; x_Filename: string);
var
  x_PDF : TQRPDFDocumentFilter;
begin
  inherited;

  SaveChanges;

  _RpQuoDetailedItinerary2Form_Type := 2;
  _RpQuoDetailedItinerary2Form_Image := 1;
  _RpQuoDetailedItinerary2Form_Quotations_id := MasterCds['Quotations_id'];

  if RpQuoDetailedItinerary2Form = nil then
    Application.CreateForm(TRpQuoDetailedItinerary2Form, RpQuoDetailedItinerary2Form);

  RpQuoDetailedItinerary2Form.ReportCds.Close;
  RpQuoDetailedItinerary2Form.ReportSds.Close;

  RpQuoDetailedItinerary2Form.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.EndingInfo AS Str3, p.BookingInfo AS Str4,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,' +
       'sd.Place AS Title, cast(sd.PlaceInfo as text) AS WriteUp, p.EmergencyContact, p.CompanyContact ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintDays d ON p.QuoPrint_id = d.QuoPrint_id ' +
       'LEFT JOIN QuoPrintPlaces sd ON d.QuoPrintDays_id = sd.QuoPrintDays_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo, sd.SrNo';


  RpQuoDetailedItinerary2Form.ReportSds.Open;
  RpQuoDetailedItinerary2Form.ReportCds.Open;

  if x_option = 1 then
    RpQuoDetailedItinerary2Form.QuickRep1.PreviewModal
  else if x_option = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      RpQuoDetailedItinerary2Form.QuickRep1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;

  RpQuoDetailedItinerary2Form.Release;
  RpQuoDetailedItinerary2Form := nil;


end;


procedure TPrestoForm.MenuItem12Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WritePdfFile(1, 1, '');

end;

procedure TPrestoForm.MenuItem13Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WritePdfFile(2, 1, '');

end;

procedure TPrestoForm.MenuItem14Click(Sender: TObject);
var
  x_Path, x_FileName: string;
begin
  inherited;

  if QuoPrintCds['Quotations_id'] = null then
    raise SysUtils.exception.create('Please select the quotation');

  if (QuoPrintCds.State = dsInsert) or (QuoPrintCds.State = dsEdit) then
    QuoPrintCds.Post;

  x_Path := g_ReportDir + '\WebQuotations';

  if not DirectoryExists(x_Path) then
    CreateDir(x_Path);

  x_FileName := x_Path + '\' + IntToStr(QuoPrintCds['Quotations_id']);

  WriteWebTextFile (x_Filename+ '.txt');
  WritePdfFile(1, 2, x_Filename + '.pdf');

  ShowMessage ('Saved As ' + x_FileName + '.txt && ' + x_FileName + '.pdf');

end;

procedure TPrestoForm.WritePdfFile(x_CompositeReportType: integer; x_option1: integer; x_Filename: string);
var
  x_PDF : TQRPDFDocumentFilter;
  GpSds : TSQLDataSet;
  x_Trial, x_PrincipalAgents_id, x_Consultants_id: integer;
begin

  SaveChanges;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT COALESCE(Trial,0) AS Trial, PrincipalAgents_id, Consultants_id FROM Quotations WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Open;

  x_Trial := 0;
  if (not GpSds.EOF) and (GpSds['Trial'] <> null) then
    x_Trial := GpSds['Trial'];

  x_PrincipalAgents_id := 0;
  if (not GpSds.EOF) and (GpSds['PrincipalAgents_id'] <> null) then
    x_PrincipalAgents_id := GpSds['PrincipalAgents_id'];

  x_Consultants_id := 0;
  if (not GpSds.EOF) and (GpSds['Consultants_id'] <> null) then
    x_Consultants_id := GpSds['Consultants_id'];

  GpSds.Free;


  PrestoForm_CompositeReportType := x_CompositeReportType;

  // Header

  if RpQuoHeaderForm = nil then
    Application.CreateForm(TRpQuoHeaderForm, RpQuoHeaderForm);

  // web
  if (x_Trial = 2) or (x_PrincipalAgents_id = 0) or (x_Consultants_id = 0) then
    begin
      RpQuoHeaderForm.QRDB_QuoRequestLabel.Enabled := false;
      RpQuoHeaderForm.QRDB_QuoRequestDetailsLabel.Enabled := false;
    end;

  RpQuoHeaderForm.ReportCds.Close;
  RpQuoHeaderForm.ReportSds.Close;

  RpQuoHeaderForm.ReportSds.Params[0].Value := MasterCds['Quotations_id'];

  RpQuoHeaderForm.ReportSds.Open;
  RpQuoHeaderForm.ReportCds.Open;


  _RpQuoItineraryForm_Type := 2;

  if RpQuoItineraryForm = nil then
    Application.CreateForm(TRpQuoItineraryForm, RpQuoItineraryForm);

  RpQuoItineraryForm.ReportCds.Close;
  RpQuoItineraryForm.ReportSds.Close;

  RpQuoItineraryForm.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.EndingInfo AS Str3,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,  ' +
       'CAST(0 AS BIT) AS Overnight ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintItineraries d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo';

  RpQuoItineraryForm.ReportSds.Open;
  RpQuoItineraryForm.ReportCds.Open;



  // Estimate

  if RpQuoEstimateForm = nil then
    Application.CreateForm(TRpQuoEstimateForm, RpQuoEstimateForm);

  RpQuoEstimateForm.ReportCds.Close;
  RpQuoEstimateForm.ReportSds.Close;

  RpQuoEstimateForm.ReportSds.Params[0].Value := QuoPrintCds['Quotations_id'];

  RpQuoEstimateForm.ReportSds.Open;
  RpQuoEstimateForm.ReportCds.Open;


  // Inclusion

  _RpQuoInclusionForm_Type := 2;

  if RpQuoInclusionForm = nil then
    Application.CreateForm(TRpQuoInclusionForm, RpQuoInclusionForm);

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportSds.Close;

  RpQuoInclusionForm.ReportSds.Close;
  RpQuoInclusionForm.ReportSds.CommandText :=
    'SELECT d.QuoPrintInclusions_id AS Inclusion_id, cast(null as smalldatetime) AS DateIn, cast(null as datetime) AS TimeIn, ' +
    'd.ServiceType, Cast(d.Remarks AS varchar(1000)) AS Remarks, d.OrderNo, '''' AS LeadName, '''' AS TourCode, ' +
    'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.EndingInfo AS Str3 ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintInclusions d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.OrderNo, d.SrNo';
  RpQuoInclusionForm.ReportSds.Open;

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportCds.Open;



  // Exclusions

  if x_CompositeReportType = 1 then
    _RpQuoExclusionForm_Type := 1
  else if x_CompositeReportType = 2 then
    _RpQuoExclusionForm_Type := 2;

  _RpQuoExclusionForm_EmergencyContact := '';
  if QuoPrintCds['EmergencyContact'] <> null then
    _RpQuoExclusionForm_EmergencyContact := QuoPrintCds['EmergencyContact'];

  _RpQuoExclusionForm_CompanyContact := '';
  if QuoPrintCds['CompanyContact'] <> null then
    _RpQuoExclusionForm_CompanyContact := QuoPrintCds['CompanyContact'];

  _RpQuoExclusionForm_Quotations_id := MasterCds['Quotations_id'];

  if RpQuoExclusionForm = nil then
    Application.CreateForm(TRpQuoExclusionForm, RpQuoExclusionForm);

  RpQuoExclusionForm.ReportCds.Close;
  RpQuoExclusionForm.ReportSds.Close;

  RpQuoExclusionForm.ReportSds.Params[0].Value := QuoPrintCds['Quotations_id'];

  RpQuoExclusionForm.ReportSds.Open;
  RpQuoExclusionForm.ReportCds.Open;

  if x_option1 = 1 then
    begin
      QRCompositeReport1.Preview;
    end
  else if x_option1 = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      QRCompositeReport1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;


  RpQuoExclusionForm.Release;
  RpQuoExclusionForm := nil;

  RpQuoInclusionForm.Release;
  RpQuoInclusionForm := nil;

  RpQuoEstimateForm.Release;
  RpQuoEstimateForm := nil;

  RpQuoItineraryForm.Release;
  RpQuoItineraryForm := nil;

  RpQuoHeaderForm.Release;
  RpQuoHeaderForm := nil;

end;


procedure TPrestoForm.MenuItem17Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WriteHotelPdfFile;

end;

procedure TPrestoForm.MenuItem29Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WriteManyHotelPdfFile(1, '');

end;

procedure TPrestoForm.MenuItem31Click(Sender: TObject);
begin
  inherited;
  WriteQuotationPdfFile(1, '');

end;

procedure TPrestoForm.MenuItem33Click(Sender: TObject);
var
  x_FileName: string;
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT qm.QuoModules_id ' +
    'FROM QuoPrint qp ' +
    'INNER JOIN Quotations q ON qp.Quotations_id = q.Quotations_id ' +
    'INNER JOIN QuoModules qm ON q.TourCode = qm.TourCode AND q.StartDate = qm.TourDate ' +
    'WHERE qp.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']);
  GpSds.Open;

  x_QuoModules_id := -1;
  if (not GpSds.Eof) and (GpSds['QuoModules_id'] <> null) then
    x_QuoModules_id := GpSds['QuoModules_id'];

  GpSds.Free;

  if x_QuoModules_id < 1 then
    begin
      ShowMessage('The module has not yet been created. Please create the module first.');
      abort;
    end;

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(x_QuoModules_id) + '.xls';

  QuoModule_Quotation_Excel(scExcelExport, x_FileName, x_QuoModules_id, 1, 0, 0, 0, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TPrestoForm.MenuItem34Click(Sender: TObject);
var
  x_FileName: string;
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT qm.QuoModules_id ' +
    'FROM QuoPrint qp ' +
    'INNER JOIN Quotations q ON qp.Quotations_id = q.Quotations_id ' +
    'INNER JOIN QuoModules qm ON q.TourCode = qm.TourCode AND q.StartDate = qm.TourDate ' +
    'WHERE qp.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']);
  GpSds.Open;

  x_QuoModules_id := -1;
  if (not GpSds.Eof) and (GpSds['QuoModules_id'] <> null) then
    x_QuoModules_id := GpSds['QuoModules_id'];

  GpSds.Free;

  if x_QuoModules_id < 1 then
    begin
      ShowMessage('The module has not yet been created. Please create the module first.');
      abort;
    end;

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(x_QuoModules_id) + '.xls';

  QuoModule_Quotation_Excel(scExcelExport, x_FileName, x_QuoModules_id, 1, 0, 0, 0, 2);

  ShowMessage('Saved As ' + x_FileName);


end;

procedure TPrestoForm.SendEmail1Click(Sender: TObject);
begin
  inherited;
  SendEmail(1);
end;

procedure TPrestoForm.SendEmailHotelsDetailedItin1Click(Sender: TObject);
begin
  inherited;
  SendEmail(2);

end;

procedure TPrestoForm.SendEmailAllattachments1Click(Sender: TObject);
begin
  inherited;
  SendEmail(3);

end;

procedure TPrestoForm.Exclusions2Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _QuoExclForm_Level := 4;
  _QuoExclForm_Quotations_id := MasterCds['Quotations_id'];

  If _QuoExclForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoExclForm = nil then
    Application.CreateForm(TQuoExclForm, QuoExclForm);

end;

procedure TPrestoForm.SaveChanges;
begin
  if (QuoPrintCds.State = dsInsert) or (QuoPrintCds.State = dsEdit) then
    QuoPrintCds.Post;
  if (DetailItinCds.State = dsInsert) or (DetailItinCds.State = dsEdit) then
    DetailItinCds.Post;
  if (SubDetailCds.State = dsInsert) or (SubDetailCds.State = dsEdit) then
    SubDetailCds.Post;
  if (ItineraryCds.State = dsInsert) or (ItineraryCds.State = dsEdit) then
    ItineraryCds.Post;
  if (InclusionsCds.State = dsInsert) or (InclusionsCds.State = dsEdit) then
    InclusionsCds.Post;
end;


procedure TPrestoForm.InclusionsCdsBeforePost(DataSet: TDataSet);
begin

  if ((InclusionsCds['ServiceType'] = null) or (trim(InclusionsCds['ServiceType']) = '')) then
    raise SysUtils.exception.create('Service Type has to be entered');

  InclusionsCds['OrderNo'] := 0;
  if InclusionsCds['ServiceType'] = 'Tickets' then
    InclusionsCds['OrderNo'] := 2
  else if InclusionsCds['ServiceType'] = 'Accommodation' then
    InclusionsCds['OrderNo'] := 1
  else if InclusionsCds['ServiceType'] = 'Services' then
    InclusionsCds['OrderNo'] := 4
  else if InclusionsCds['ServiceType'] = 'Transport' then
    InclusionsCds['OrderNo'] := 3;

  if (InclusionsCds['OrderNo'] = 0) then
    raise SysUtils.exception.create('Invalid Service Type entered');

  inherited;

  if InclusionsCds.State = dsInsert then
    InclusionsCds['QuoPrintInclusions_id'] := GetNextId('QuoPrintInclusions','QuoPrintInclusions_id');

end;

procedure TPrestoForm.QRCompositeReport1AddReports(Sender: TObject);
begin
  inherited;
  
  with QRCompositeReport1.Reports do
    begin
      Clear;
      Add(RpQuoHeaderForm.QuickRep1);
      Add(RpQuoItineraryForm.QuickRep1);
      if  PrestoForm_CompositeReportType = 1 then
        Add(RpQuoEstimateForm.QuickRep1);
      Add(RpQuoInclusionForm.QuickRep1);
      Add(RpQuoExclusionForm.QuickRep1);
    end;

end;

procedure TPrestoForm.cxButtonUpdateClick(Sender: TObject);
begin
  inherited;
  UpdateRequestDetails;
end;

procedure TPrestoForm.UpdateRequestDetails;
var
  GpSds : TSQLDataSet;
begin

  if (QuoPrintCds.Eof) or (QuoPrintCds['Quotations_id'] = null) then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT * FROM dbo.[fn_QuoRequestDetails](' +
                       IntToStr(MasterCds['Quotations_id']) + ')';
  GpSds.Open;

  if QuoPrintCds.State = dsBrowse then
    QuoPrintCds.Edit;

  if (QuoPrintCds['QuoRequest'] = null) or (QuoPrintCds['QuoRequest'] = '') then
    if GpSds['QuoRequest'] <> null then
      QuoPrintCds['QuoRequest'] := GpSds['QuoRequest'];

  if (QuoPrintCds['QuoRequestDetails'] = null) or (QuoPrintCds['QuoRequestDetails'] = '') then
    if GpSds['QuoRequestDetails'] <> null then
      QuoPrintCds['QuoRequestDetails'] := GpSds['QuoRequestDetails'];

  if (QuoPrintCds['QuoFor'] = null) or (QuoPrintCds['QuoFor'] = '') then
    if GpSds['QuoFor'] <> null then
      QuoPrintCds['QuoFor'] := GpSds['QuoFor'];

  if (QuoPrintCds['QuoForDetails'] = null) or (QuoPrintCds['QuoForDetails'] = '') then
    if GpSds['QuoForDetails'] <> null then
      QuoPrintCds['QuoForDetails'] := GpSds['QuoForDetails'];

  GpSds.Free;

  QuoPrintCds.Post;

end;


procedure TPrestoForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  cxBasicAmtTextEdit.SetFocus;
  ComputeCosts;
end;

procedure TPrestoForm.ComputeCosts;
begin

  if QuoPrintCds['BasicRate'] = null then
    raise SysUtils.exception.create ('Please enter the Basic Rate');

  if QuoPrintCds['NumPax'] = null then
    raise SysUtils.exception.create ('Please enter the Pax');

  if MasterCds['StartDate'] = null then
    raise SysUtils.exception.create ('Please enter the Start Date');

  if MasterCds['QuotationDate'] = null then
    raise SysUtils.exception.create ('Please enter the Quotation Date');

  // to save numPax (if changed) in this form since it is used for the calculations
  if (QuoPrintCds.State = dsInsert) or (QuoPrintCds.State = dsEdit) then
    QuoPrintCds.Post;

  if QuoPrintCds.State = dsBrowse then
    QuoPrintCds.Edit;

  QuoPrintCds['BasicAmt'] := QuoPrintCds['BasicRate'] * QuoPrintCds['NumPax'];

  QuoPrintCds['ServiceTaxPerc'] := GetServiceTax(MasterCds['StartDate'], 15);
  QuoPrintCds['ServiceTaxAmt'] := RoundUp((QuoPrintCds['ServiceTaxPerc']/100.0) * QuoPrintCds['BasicAmt']);

  QuoPrintCds['QuotationAmt'] := QuoPrintCds['BasicAmt'] + QuoPrintCds['ServiceTaxAmt'];

  QuoPrintCds['DueDate'] := IncMonth(MasterCds['StartDate'],-3);

  if (QuoPrintCds['DueDate'] < MasterCds['QuotationDate']) then
    QuoPrintCds['DueDate'] := MasterCds['QuotationDate'];

  if (QuoPrintCds['AdvDueDate'] = null) then
    QuoPrintCds['AdvDueDate'] := MasterCds['QuotationDate'];

end;

procedure TPrestoForm.cxButton7Click(Sender: TObject);
begin
  inherited;

  if (QuoPrintCds.State = dsInsert) or (QuoPrintCds.State = dsEdit) then
    QuoPrintCds.Post;

  QuoReceiptsForm_Level := 4;
  QuoReceiptsForm_Quotations_id := MasterCds['Quotations_id'];

  if QuoReceiptsForm = nil then
    Application.CreateForm(TQuoReceiptsForm,QuoReceiptsForm);

  QuoReceiptsForm.FormStyle := fsNormal;
  QuoReceiptsForm.Visible := false;
  QuoReceiptsForm.ShowModal;

  QuoReceiptsForm.Free;
  QuoReceiptsForm := nil;

  QuoPrintCds.Refresh;

end;

procedure TPrestoForm.cxButton6Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  SaveChanges;

  if MessageDlg('Are you sure you want to sync this quotation with the web?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_UpdateRemoteQuotation] ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.ExecSQL;
  GpSds.Free;

  ShowMessage('Done');

end;

procedure TPrestoForm.WriteHotelPdfFile;
begin

  SaveChanges;

  // Header

  if RpQuoHotelListForm = nil then
    Application.CreateForm(TRpQuoHotelListForm, RpQuoHotelListForm);

  RpQuoHotelListForm.ReportCds.Close;
  RpQuoHotelListForm.ReportSds.Close;

  RpQuoHotelListForm.ReportSds.Params[0].Value := MasterCds['Quotations_id'];

  RpQuoHotelListForm.ReportSds.Open;
  RpQuoHotelListForm.ReportCds.Open;

  RpQuoHotelListForm.QuickRep1.PreviewModal;

  RpQuoHotelListForm.Release;
  RpQuoHotelListForm := nil;

end;

procedure TPrestoForm.WriteManyHotelPdfFile(x_option: integer; x_FileName: string);
var
  x_PDF : TQRPDFDocumentFilter;
begin

  SaveChanges;

  // Header

  if RpQuoHotelList2Form = nil then
    Application.CreateForm(TRpQuoHotelList2Form, RpQuoHotelList2Form);

  RpQuoHotelList2Form.ReportCds.Close;
  RpQuoHotelList2Form.ReportSds.Close;

  RpQuoHotelList2Form.ReportSds.Params[0].Value := MasterCds['Quotations_id'];

  RpQuoHotelList2Form.ReportSds.Open;
  RpQuoHotelList2Form.ReportCds.Open;

  if x_option = 1 then
    begin
      RpQuoHotelList2Form.QuickRep1.PreviewModal;
    end
  else if x_option = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      RpQuoHotelList2Form.QuickRep1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;

  RpQuoHotelList2Form.Release;
  RpQuoHotelList2Form := nil;

end;

procedure TPrestoForm.WriteQuotationPdfFile(x_option: integer; x_Filename: string);
var
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
  x_PDF : TQRPDFDocumentFilter;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT qm.QuoModules_id ' +
    'FROM QuoPrint qp ' +
    'INNER JOIN Quotations q ON qp.Quotations_id = q.Quotations_id ' +
    'INNER JOIN QuoModules qm ON q.TourCode = qm.TourCode AND q.StartDate = qm.TourDate ' +
    'WHERE qp.QuoPrint_id = ' + IntToStr(QuoPrintCds['QuoPrint_id']);
  GpSds.Open;

  x_QuoModules_id := -1;
  if (not GpSds.Eof) and (GpSds['QuoModules_id'] <> null) then
    x_QuoModules_id := GpSds['QuoModules_id'];

  GpSds.Free;


  if RpQuoModuleForm = nil then
    Application.CreateForm(TRpQuoModuleForm, RpQuoModuleForm);

  RpQuoModuleForm.ReportCds.Close;
  RpQuoModuleForm.ReportSds.Close;
  RpQuoModuleForm.ReportSds.CommandText :=
    'EXEC [p_RptQuoModules] ' + IntToStr(x_QuoModules_id) + ', 1';
  RpQuoModuleForm.ReportSds.Open;
  RpQuoModuleForm.ReportCds.Open;

  RpQuoModuleForm.PaxCds.Open;

  if x_option = 1 then
    RpQuoModuleForm.QuickRep1.PreviewModal
  else if x_option = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      RpQuoModuleForm.QuickRep1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;

  RpQuoModuleForm.Release;
  RpQuoModuleForm := nil;

end;

procedure TPrestoForm.QuoPrintCdsCalcFields(DataSet: TDataSet);
var
  x_QuoteAmt, x_AdvAmt, x_PaidAmt: double;
begin
  inherited;

  x_QuoteAmt := 0.0;
  if QuoPrintCds['QuotationAmt'] <> null then
    x_QuoteAmt := QuoPrintCds['QuotationAmt'];

  x_AdvAmt := 0.0;
  if QuoPrintCds['AdvanceAmt'] <> null then
    x_AdvAmt := QuoPrintCds['AdvanceAmt'];

  x_PaidAmt := 0.0;
  if QuoPrintCds['RecdAmt'] <> null then
    x_PaidAmt := QuoPrintCds['RecdAmt'];

  if x_PaidAmt >= x_AdvAmt then
    QuoPrintCds['AdvDueAmt'] := 0.0
  else if x_PaidAmt < x_AdvAmt then
    QuoPrintCds['AdvDueAmt'] := x_AdvAmt - x_PaidAmt
  else
    QuoPrintCds['AdvDueAmt'] := 0.0;

  QuoPrintCds['BalanceAmt'] := (x_QuoteAmt - x_PaidAmt) - QuoPrintCds['AdvDueAmt'];

end;

procedure TPrestoForm.DriversItinerary1Click(Sender: TObject);
begin
  inherited;

  if RptQuoDriverItinForm = nil then
    Application.CreateForm(TRptQuoDriverItinForm, RptQuoDriverItinForm);

  RptQuoDriverItinForm.DriverItinCds.Close;
  RptQuoDriverItinForm.DriverItinSds.Close;

  RptQuoDriverItinForm.DriverItinSds.CommandText :=
    'EXEC p_DriverItin ' + IntToStr(MasterCds['Quotations_id']);

  RptQuoDriverItinForm.DriverItinSds.Open;
  RptQuoDriverItinForm.DriverItinCds.Open;

  RptQuoDriverItinForm.QuickRep1.PreviewModal;

  RptQuoDriverItinForm.Release;
  RptQuoDriverItinForm := nil;

end;

procedure TPrestoForm.MenuItem15Click(Sender: TObject);
begin
  inherited;

  SaveDialog.FileName := g_ReportDir + '\FitItinerary.xls';
  if SaveDialog.Execute then
    ExportGridToExcel(SaveDialog.FileName, cxGridQuoLines, True, True, False);

end;

procedure TPrestoForm.ChangeModuleMasterVoucherDatestocurrentQuotation1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg('Are you sure you want to change the dates?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_QuoChangeDates ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['ErrorNo'] > 0) then
    begin
      ShowMessage(GpSds['ErrorDescription']);
    end;

  GpSds.Free;

end;

procedure TPrestoForm.ChangePaxinbetweenTour1Click(Sender: TObject);
begin
  inherited;

  QuoPaxChangeForm_Level := PrestoForm_Level;

  If QuoPaxChangeForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  QuoPaxChangeForm_Quotations_id := MasterCds['Quotations_id'];

  if QuoPaxChangeForm = nil then
    Application.CreateForm(TQuoPaxChangeForm, QuoPaxChangeForm);

end;

procedure TPrestoForm.cxButton8Click(Sender: TObject);
begin
  inherited;

  CreateCompositeReport;

end;

procedure TPrestoForm.CreateCompositeReport;
begin
  inherited;

  InsertPrintEntry;
  InsertExclusionEntry;

  QuoPrintCds.Active := false;
  QuoPrintCds.Active := true;

  DetailItinCds.Active := false;
  DetailItinCds.Active := true;

  ItineraryCds.Active := false;
  ItineraryCds.Active := true;

  InclusionsCds.Active := false;
  InclusionsCds.Active := true;

  SubDetailCds.Active := false;
  SubDetailCds.Active := true;

  if QuoPrintCds['NumPax'] <> null then
    cxPaxLabel.Caption := ' ( x ' + IntToStr(QuoPrintCds['NumPax']) + ' Pax)'
  else
    cxPaxLabel.Caption := '';

  cxCurrencyLabel.Caption := CurrencyLCB.Text;

  cxPageControl4.Enabled := true;
  cxPageControl5.Enabled := true;
  cxPageControl6.Enabled := true;

end;

procedure TPrestoForm.Packages1Click(Sender: TObject);
begin
  inherited;
  DeleteSupportingData(5);
end;

procedure TPrestoForm.Panel2Click(Sender: TObject);
begin
  inherited;
  ckbAutoTickets.Visible := true;
end;

procedure TPrestoForm.sp1Click(Sender: TObject);
begin
  inherited;

  TspForm_Level := 4;
  TspForm_Quotations_id := 0;

  if TspForm = nil then
    Application.CreateForm(TTspForm,TspForm);

  TspForm.FormStyle := fsNormal;
  TspForm.Visible := false;
  TspForm.ShowModal;

  TspForm.Free;
  TspForm := nil;

end;

procedure TPrestoForm.FutureBookings1Click(Sender: TObject);
begin
  inherited;

  HotelFutureBookForm_Level := 4;

  if HotelFutureBookForm = nil then
    Application.CreateForm(THotelFutureBookForm,HotelFutureBookForm);

end;

procedure TPrestoForm.DisplayCostBreakup2Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT MIN(QuoDate) AS MinDate FROM QuoLines WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Open;

  _QuoCostingTraceForm_Gst := 0;
  if (GpSds['MinDate']=null) or (GpSds['MinDate'] >= StrToDate('01/07/2017')) then
    _QuoCostingTraceForm_Gst := 1;

  GpSds.Free;

  if (QuoLinesCds['QuoTrsType'] = 5) and (QuoLinesCds['NewDriveLine'] <> 1) then
    raise SysUtils.exception.create ('Please highlight the row where you hired the car before displaying the trace');

  _QuoCostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  _QuoCostingTraceForm_TrsType := QuoLinesCds['QuoTrsType'];
  _QuoCostingTraceForm_Quotations_id := QuoLinesCds['Quotations_id'];
  _QuoCostingTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoCostingTraceForm = nil then
    Application.CreateForm(TQuoCostingTraceForm, QuoCostingTraceForm);

  QuoCostingTraceForm.ShowModal;

  QuoCostingTraceForm.Free;
  QuoCostingTraceForm := nil;

 {
  if (QuoLinesCds['QuoTrsType'] = 5) and (QuoLinesCds['DriveTypes_id'] = 1) then
    begin

      if (QuoLinesCds['NewDriveLine'] <> 1) then
        raise SysUtils.exception.create ('Please highlight the row where you hired the car before displaying the trace');

      _QuoLineCostTraceAgentForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

      if QuoLineCostTraceAgentForm = nil then
        Application.CreateForm(TQuoLineCostTraceAgentForm, QuoLineCostTraceAgentForm);

      QuoLineCostTraceAgentForm.ShowModal;

      QuoLineCostTraceAgentForm.Free;
      QuoLineCostTraceAgentForm := nil;

    end
  else
    begin

      _QuoCostingTraceForm_TrsType := QuoLinesCds['QuoTrsType'];
      _QuoCostingTraceForm_Quotations_id := QuoLinesCds['Quotations_id'];
      _QuoCostingTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

      if QuoCostingTraceForm = nil then
        Application.CreateForm(TQuoCostingTraceForm, QuoCostingTraceForm);

      QuoCostingTraceForm.ShowModal;

      QuoCostingTraceForm.Free;
      QuoCostingTraceForm := nil;

    end;
}


end;

procedure TPrestoForm.DisplayMarginBreakupforAccommodation2Click(
  Sender: TObject);
begin
  inherited;

  if (QuoLinesCds['TrsType'] <> 'Acc') then
    raise SysUtils.exception.create ('Please highlight an accommodation row');

  _QuoLineAccMarginTraceForm_QuoLines_id := QuoLinesCds['QuoLines_id'];

  if QuoLineAccMarginTraceForm = nil then
    Application.CreateForm(TQuoLineAccMarginTraceForm, QuoLineAccMarginTraceForm);

  QuoLineAccMarginTraceForm.ShowModal;

  QuoLineAccMarginTraceForm.Free;
  QuoLineAccMarginTraceForm := nil;


end;

procedure TPrestoForm.mnuRiksjaAllClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MasterCds['Quotations_id'] = null then
    abort;

  if (MasterCds['Trial'] <> 3) then
    raise SysUtils.exception.create ('Only valid for Riksja');

  if MasterCds['StartDate'] = null then
    raise SysUtils.exception.create ('Start Date not entered');

  if MessageDlg ('This will make a copy of all the Riksja quotations. Are you sure?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  QueryString := 'EXEC [p_QuotationCopy_AddYear_All] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['StartDate']));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage('done');

end;

procedure TPrestoForm.cxButton9Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _QuoExclForm_Level := 4;
  _QuoExclForm_Quotations_id := MasterCds['Quotations_id'];

  If _QuoExclForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoExclForm = nil then
    Application.CreateForm(TQuoExclForm, QuoExclForm);

end;

procedure TPrestoForm.OpenOldPresto1Click(Sender: TObject);
begin
  inherited;

  _QuoCitywiseForm_FromDate := PrestoForm_FromDate;
  _QuoCitywiseForm_ToDate := PrestoForm_ToDate;
  _QuoCitywiseForm_Trial := PrestoForm_DataType;

  _QuoCitywiseForm_Level := GetUserLevel(g_users_id, 12000);

  if _QuoCitywiseForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if QuoCitywiseForm = nil then
    Application.CreateForm(TQuoCitywiseForm, QuoCitywiseForm);

end;

procedure TPrestoForm.Exclusions1Click(Sender: TObject);
begin
  inherited;
  _QuoExclusionForm_Level := 4;
  _QuoExclusionForm_Quotations_id := MasterCds['Quotations_id'];

  If _QuoExclusionForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoExclusionForm = nil then
    Application.CreateForm(TQuoExclusionForm, QuoExclusionForm);

end;

procedure TPrestoForm.ItineraryCdsAfterPost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  QueryString := 'UPDATE QuoPrintDays ' +
     'SET DaySummaryInfo = ' + QuotedStr(ItineraryCds['DaySummaryInfo']) + ' ' +
     'WHERE QuoPrint_id = ' + IntToStr(ItineraryCds['QuoPrint_id']) + ' ' +
     'AND SrNo = ' + IntToStr(ItineraryCds['SrNo']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  DetailItinCds.Active := false;
  DetailItinSds.Active := false;
  DetailItinSds.Active := true;
  DetailItinCds.Active := true;

end;

procedure TPrestoForm.DetailItinCdsAfterPost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  QueryString := 'UPDATE QuoPrintItineraries ' +
     'SET DaySummaryInfo = ' + QuotedStr(DetailItinCds['DaySummaryInfo']) + ' ' +
     'WHERE QuoPrint_id = ' + IntToStr(DetailItinCds['QuoPrint_id']) + ' ' +
     'AND SrNo = ' + IntToStr(DetailItinCds['SrNo']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ItineraryCds.Active := false;
  ItinerarySds.Active := false;
  ItinerarySds.Active := true;
  ItineraryCds.Active := true;

end;

procedure TPrestoForm.cxButtonSaveClick(Sender: TObject);
begin
  inherited;

  if (MasterDs.State = dsInsert) or (MasterDs.State = dsEdit) then
    MasterCds.Post;
  if (DetailDs.State = dsInsert) or (DetailDs.State = dsEdit) then
    DetailCds.Post;
  if (AgentListDs.State = dsInsert) or (AgentListDs.State = dsEdit) then
    AgentListCds.Post;
  if (QuoPrintDs.State = dsInsert) or (QuoPrintDs.State = dsEdit) then
    QuoPrintCds.Post;
  if (DetailItinDs.State = dsInsert) or (DetailItinDs.State = dsEdit) then
    DetailItinCds.Post;
  if (ItineraryDs.State = dsInsert) or (ItineraryDs.State = dsEdit) then
    ItineraryCds.Post;
  if (InclusionsDs.State = dsInsert) or (InclusionsDs.State = dsEdit) then
    InclusionsCds.Post;
  if (SubDetailDs.State = dsInsert) or (SubDetailDs.State = dsEdit) then
    SubDetailCds.Post;

end;

procedure TPrestoForm.cxButtonCancelClick(Sender: TObject);
begin
  inherited;

  if (MasterDs.State = dsInsert) or (MasterDs.State = dsEdit) then
    MasterCds.Cancel;
  if (DetailDs.State = dsInsert) or (DetailDs.State = dsEdit) then
    DetailCds.Cancel;
  if (AgentListDs.State = dsInsert) or (AgentListDs.State = dsEdit) then
    AgentListCds.Cancel;
  if (QuoPrintDs.State = dsInsert) or (QuoPrintDs.State = dsEdit) then
    QuoPrintCds.Cancel;
  if (DetailItinDs.State = dsInsert) or (DetailItinDs.State = dsEdit) then
    DetailItinCds.Cancel;
  if (ItineraryDs.State = dsInsert) or (ItineraryDs.State = dsEdit) then
    ItineraryCds.Cancel;
  if (InclusionsDs.State = dsInsert) or (InclusionsDs.State = dsEdit) then
    InclusionsCds.Cancel;
  if (SubDetailDs.State = dsInsert) or (SubDetailDs.State = dsEdit) then
    SubDetailCds.Cancel;

end;

procedure TPrestoForm.HideShowSaveButton;
var
  x_type: integer;
begin
  inherited;

  x_type := 0;

  if (MasterDs.State = dsInsert) or (MasterDs.State = dsEdit) then
    x_type := 1
  else if (DetailDs.State = dsInsert) or (DetailDs.State = dsEdit) then
    x_type := 1
  else if (AgentListDs.State = dsInsert) or (AgentListDs.State = dsEdit) then
    x_type := 1
  else if (QuoPrintDs.State = dsInsert) or (QuoPrintDs.State = dsEdit) then
    x_type := 1
  else if (DetailItinDs.State = dsInsert) or (DetailItinDs.State = dsEdit) then
    x_type := 1
  else if (ItineraryDs.State = dsInsert) or (ItineraryDs.State = dsEdit) then
    x_type := 1
  else if (InclusionsCds.State = dsInsert) or (InclusionsCds.State = dsEdit) then
    x_type := 1
  else if (SubDetailCds.State = dsInsert) or (SubDetailCds.State = dsEdit) then
    x_type := 1;

  if x_type = 1 then
    begin
      cxButtonSave.Visible := true;
      cxButtonCancel.Visible := true;
    end
  else
    begin
      cxButtonSave.Visible := false;
      cxButtonCancel.Visible := false;
    end;

end;


procedure TPrestoForm.MasterDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;
end;

procedure TPrestoForm.DetailDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.AgentListDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.QuoPrintDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.DetailItinDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.ItineraryDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.InclusionsDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.SubDetailDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TPrestoForm.DsiplayTravel1Click(Sender: TObject);
begin
  inherited;

  _QuoDisplayTravelForm_Level := GetUserLevel(g_users_id, 9080);

  If _QuoDisplayTravelForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _QuoDisplayTravelForm_Type := 2;
  _QuoDisplayTravelForm_Quotations_id := QuoLinesCds['Quotations_id'];

  if QuoDisplayTravelForm = nil then
    Application.CreateForm(TQuoDisplayTravelForm, QuoDisplayTravelForm);

  QuoDisplayTravelForm.ShowModal;

  QuoDisplayTravelForm.Free;
  QuoDisplayTravelForm := nil;

end;

procedure TPrestoForm.MarginMaster1Click(Sender: TObject);
begin
  inherited;

  FitMarginForm_Level := GetUserLevel(g_users_id, 12040);

  If FitMarginForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FitMarginForm = nil then
    Application.CreateForm(TFitMarginForm,FitMarginForm);


end;

end.
