unit QuoDayActivityFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_QuoDayActivity_Fm, Menus, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  cxLabel, cxDBLabel, cxPC, StdCtrls, cxButtons, ExtCtrls, cxCheckBox, DateUtils,
  cxDBLookupComboBox, cxButtonEdit, cxTimeEdit, cxCalendar, Grids, DBGrids,
  Custom_PackagesDayActivity_Fm, cxTextEdit, cxMemo, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxSpinEdit,
  Buttons;

type
  TQuoDayActivityForm = class(TCustom_QuoDayActivity_Form)
    cxDriveCkb: TcxCheckBox;
    DistanceLabel: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGridDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TravelDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FlightNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1From_TrainStationLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1To_TrainStationLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ClassLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ETD: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ETA: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TravelDay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Masters_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1status: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1LineNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1QuoCities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DaysOfOperation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Overnight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Hops: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ModePreference: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CarReleaseDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1P2P: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SendMail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TicketString: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RemarksAgent: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DriveTypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CarHireGroups_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ReserveHotelOvernight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CarReportDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RemarksAgentCancel: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NightHalt: TcxGridDBBandedColumn;
    ModesSds: TSQLDataSet;
    ModesDsp: TDataSetProvider;
    ModesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    TicketsCdsdetails: TStringField;
    ModesDs: TDataSource;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesDs: TDataSource;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    TicketsCdsFromTrainStationLookup: TStringField;
    TicketsCdsToTrainStationLookup: TStringField;
    TrainStationSds: TSQLDataSet;
    TrainStationDsp: TDataSetProvider;
    TrainStationCds: TClientDataSet;
    TrainStationCdstrainstations_id: TIntegerField;
    TrainStationCdsstation: TStringField;
    TrainStationCdsrailwaycode: TStringField;
    TrainStationCdsstationname: TStringField;
    TrainStationCdscities_id: TIntegerField;
    TrainStationCdsin_use: TBooleanField;
    TrainStationDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    DriveTypesSds: TSQLDataSet;
    DriveTypesDsp: TDataSetProvider;
    DriveTypesCds: TClientDataSet;
    DriveTypesCdsDriveTypes_id: TIntegerField;
    DriveTypesCdsDriveType: TStringField;
    DriveTypesDs: TDataSource;
    CarHireGroupsSds: TSQLDataSet;
    CarHireGroupsDsp: TDataSetProvider;
    CarHireGroupsCds: TClientDataSet;
    CarHireGroupsDs: TDataSource;
    CarHireGroupsCdsCarHireGroups_id: TIntegerField;
    CarHireGroupsCdsCarHireGroup: TStringField;
    CarHireGroupsCdsDefaultAgents_id: TIntegerField;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleDs: TDataSource;
    Panel8: TPanel;
    cxGridDBBandedTableView2QuoAccommodation_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2DateIn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2DateOut: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2HotelAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2RoomTypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2MealPlans_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Selected: TcxGridDBBandedColumn;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsroomtypes_id: TIntegerField;
    RoomTypeCdsroomtype: TStringField;
    RoomTypeCdsac: TBooleanField;
    RoomTypeDs: TDataSource;
    MealPlanSds: TSQLDataSet;
    MealPlanDsp: TDataSetProvider;
    MealPlanCds: TClientDataSet;
    MealPlanCdsmealplans_id: TIntegerField;
    MealPlanCdsmealplan: TStringField;
    MealPlanCdsplan: TStringField;
    MealPlanDs: TDataSource;
    AccCdsRoomTypeLookup: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    Panel9: TPanel;
    Panel10: TPanel;
    cxGridDBBandedTableView3QuoServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Quotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Services_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3StartTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Guide: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Transport: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ServiceDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3NoOfVehicles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3EntranceFees: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Selected: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Timings: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3DaysName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Lock: TcxGridDBBandedColumn;
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesCdsServices_id: TIntegerField;
    ServicesCdsService: TStringField;
    ServicesCdsDescription: TStringField;
    ServicesCdsActive: TBooleanField;
    ServicesDs: TDataSource;
    SsCdsDaysName: TStringField;
    cxCopySightSeeingButton: TcxButton;
    cxGridDBBandedTableView4QuoServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Quotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Services_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4StartTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Place: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4TransferTypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4ServiceDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4NoOfVehicles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Selected: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Lock: TcxGridDBBandedColumn;
    TransfersCdsDaysName: TStringField;
    cxAlternateTransferButton: TcxButton;
    cxGridDBBandedTableView2TimeIn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2TimeOut: TcxGridDBBandedColumn;
    TicketsCdsClassLookup: TStringField;
    cxGridDBBandedTableView1CarReportTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CarReleaseTime: TcxGridDBBandedColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxCityLabel: TcxLabel;
    AccCdsSingles: TIntegerField;
    AccCdsDoubles: TIntegerField;
    AccCdsTriples: TIntegerField;
    AccCdsTwins: TIntegerField;
    cxGridDBBandedTableView2Singles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Doubles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Triples: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Twins: TcxGridDBBandedColumn;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    PackagesCdsPackages_id: TIntegerField;
    PackagesCdsPackage: TStringField;
    Panel12: TPanel;
    cxGridDBBandedTableView5QuoPackages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Quotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5DateIn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5DateOut: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5QuoCities_id: TcxGridDBBandedColumn;
    PkgCdsNights: TIntegerField;
    PkgCdsCities_id: TIntegerField;
    cxGridDBBandedTableView5Cities_id: TcxGridDBBandedColumn;
    PkgCdsPackagesLookup: TStringField;
    cxButton5: TcxButton;
    cxGridDBBandedTableView2ReserveHotelOvernight: TcxGridDBBandedColumn;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    HotelDetailsSds: TSQLDataSet;
    HotelDetailsDsp: TDataSetProvider;
    HotelDetailsCds: TClientDataSet;
    HotelDetailsDs: TDataSource;
    HotelDetailsCdsAddressbook_id: TIntegerField;
    HotelDetailsCdsDescription: TMemoField;
    cxDBMemo1: TcxDBMemo;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    HotelTariffSds: TSQLDataSet;
    HotelTariffDsp: TDataSetProvider;
    HotelTariffCds: TClientDataSet;
    HotelTariffDs: TDataSource;
    HotelTariffCdsHotelTariffs_id: TIntegerField;
    HotelTariffCdsRoomType: TStringField;
    HotelTariffCdsplan: TStringField;
    HotelTariffCdsCostSingle: TFMTBCDField;
    HotelTariffCdsCostDouble: TFMTBCDField;
    HotelTariffCdsCostExtraBed: TFMTBCDField;
    HotelTariffCdsAddressbook_id: TIntegerField;
    HotelTariffCdsDateIn: TSQLTimeStampField;
    cxGridDBBandedTableView6HotelTariffs_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6RoomType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6plan: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6CostSingle: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6CostDouble: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6CostExtraBed: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6Addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6DateIn: TcxGridDBBandedColumn;
    Panel16: TPanel;
    cxDBMemo2: TcxDBMemo;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    ServiceDetailsSds: TSQLDataSet;
    ServiceDetailsDsp: TDataSetProvider;
    ServiceDetailsCds: TClientDataSet;
    ServiceDetailsDs: TDataSource;
    ServiceDetailsCdsServices_id: TIntegerField;
    ServiceDetailsCdsDescription: TStringField;
    SsCostSds: TSQLDataSet;
    SsCostDsp: TDataSetProvider;
    SsCostCds: TClientDataSet;
    SsCostDs: TDataSource;
    SsCostCdsCostType: TStringField;
    SsCostCdsCurrencyCode: TStringField;
    SsCostCdsCost: TFMTBCDField;
    SsCostCdsc_id: TIntegerField;
    cxGridDBBandedTableView7CostType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7CurrencyCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7c_id: TcxGridDBBandedColumn;
    ServiceDetailsCdsWriteUp: TMemoField;
    ServicesCdsDuration: TStringField;
    cxGridDBBandedTableView3Duration: TcxGridDBBandedColumn;
    Panel17: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label4: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    HotelTariffCdsDefaultRoom: TBooleanField;
    cxGridDBBandedTableView6DefaultRoom: TcxGridDBBandedColumn;
    cxButtonSave: TcxButton;
    cxButtonCancel: TcxButton;
    cxBandCkb: TcxCheckBox;
    Label9: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TicketsCdsGroupNo: TIntegerField;
    cxGridDBBandedTableView1GroupNo: TcxGridDBBandedColumn;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TicketsCdsBeforePost(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGridDBBandedTableView1FlightNoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView1Class_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxDriveCkbPropertiesEditValueChanged(Sender: TObject);
    procedure TicketsCdsAfterPost(DataSet: TDataSet);
    procedure TicketsCdsAfterInsert(DataSet: TDataSet);
    procedure cxGridDBBandedTableView2RoomTypes_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AccCdsAfterInsert(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure SsCdsCalcFields(DataSet: TDataSet);
    procedure SsCdsBeforePost(DataSet: TDataSet);
    procedure cxCopySightSeeingButtonClick(Sender: TObject);
    procedure TransfersCdsBeforePost(DataSet: TDataSet);
    procedure TransfersCdsCalcFields(DataSet: TDataSet);
    procedure cxAlternateTransferButtonClick(Sender: TObject);
    procedure cxGridDBBandedTableView3LockPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView3SelectedPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView4SelectedPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView4LockPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure AccCdsHotelAddressbook_idChange(Sender: TField);
    procedure PkgCdsAfterInsert(DataSet: TDataSet);
    procedure PkgCdsBeforePost(DataSet: TDataSet);
    procedure cxGridDBBandedTableView5Packages_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView2HotelAddressbook_idPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure SsCdsAfterScroll(DataSet: TDataSet);
    procedure cxGridDBBandedTableView1Tickets_idPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxBandCkbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonSaveClick(Sender: TObject);
    procedure cxButtonCancelClick(Sender: TObject);
    procedure TicketsDsStateChange(Sender: TObject);
    procedure AccDsStateChange(Sender: TObject);
    procedure SsDsStateChange(Sender: TObject);
    procedure TransfersDsStateChange(Sender: TObject);
    procedure PkgDsStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsP2P(x_FromCities_id, x_ToCities_id: integer; x_Date:TDatetime):boolean;
    function IsTicketsRecordDuplicate: Boolean;
    function GetModeString (x_QuoCities_id: integer): string;
    procedure InsertRoute;
    procedure AutoAddNightHalts;
    procedure InsertRouteAlternate(x_Hops, x_ModePreference: integer);
    procedure EnterFlightInfo;
    procedure EnterTrainInfo;
    function TicketLinesCount: integer;
    procedure DisplayDriveLabel;
    procedure ChangeDay(x_option: integer);
    procedure DisplayCityLabel;
    procedure SetDefaultRoomType;
    function IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
    procedure DisplaySsCost;
    procedure HideShowSaveButton;
  public
    { Public declarations }
  end;

var
  QuoDayActivityForm: TQuoDayActivityForm;
  QuoDayActivityForm_Level: integer;
  QuoDayActivityForm_QuoCities_id: integer;
  QuoDayActivityForm_Quotations_id: integer;
  QuoDayActivityForm_FormType: integer;
  QuoDayActivityForm_FormMode: integer;
  QuoDayActivityForm_FromCities_id: integer;
  QuoDayActivityForm_ToCities_id: integer;
  QuoDayActivityForm_TravelDate: TDateTime;

implementation

uses PrestoFm, BackOfficeDM, GeneralUt, RouteFinderFm, RouteAlternateFm,
  TicketsFm, SearchSortFm;

{$R *.dfm}

procedure TQuoDayActivityForm.FormCreate(Sender: TObject);
begin
  Caption := 'Edit Day';
  ActivateInCustom;

  TicketsSds.Close;
  TicketsSds.Params[0].Value := QuoDayActivityForm_QuoCities_id;
  TicketsCds.Close;

  AccSds.Close;
  AccSds.Params[0].Value := QuoDayActivityForm_QuoCities_id;
  AccCds.Close;

  SsSds.Close;
  SsSds.Params[0].Value := QuoDayActivityForm_QuoCities_id;
  SsCds.Close;

  TransfersSds.Close;
  TransfersSds.Params[0].Value := QuoDayActivityForm_QuoCities_id;
  TransfersCds.Close;

  PkgSds.Close;
  PkgSds.Params[0].Value := QuoDayActivityForm_QuoCities_id;
  PkgCds.Close;

  Custom_FormType := QuoDayActivityForm_FormType;

  HotelSds.Close;
  HotelCds.Close;
  HotelSds.Params[0].Value := QuoDayActivityForm_ToCities_id;
  HotelSds.Open;
  HotelCds.Open;

  PackagesSds.Close;
  PackagesCds.Close;
  PackagesSds.Params[0].Value := QuoDayActivityForm_ToCities_id;
  PackagesSds.Open;
  PackagesCds.Open;

  inherited;

  ModesCds.Open;
  CitiesCds.Open;
  TrainStationCds.Open;
  AgentCds.Open;
  DriveTypesCds.Open;
  CarHireGroupsCds.Open;
  VehicleCds.Open;
  ClassCds.Open;

  RoomTypeCds.Open;
  MealPlanCds.Open;

  ServicesCds.Open;
  HotelDetailsCds.Open;
  HotelTariffCds.Open;

  ServiceDetailsCds.Open;
  SsCostCds.Open;

  DisplayDriveLabel;
  DisplayCityLabel;

  Top := 10;

  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

end;

procedure TQuoDayActivityForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  Action := caFree;
end;

procedure TQuoDayActivityForm.FormDestroy(Sender: TObject);
begin
  inherited;
//  QuoDayActivityForm := nil;
end;

procedure TQuoDayActivityForm.ActivateInCustom;
begin
  Custom_TicketsCdsName := 'QuoTickets';
  Custom_TicketsKeyField := 'QuoTickets_id';

  Custom_AccCdsName := 'QuoAccommodation';
  Custom_AccKeyField := 'QuoAccommodation_id';

  Custom_SsCdsName := 'QuoServices';
  Custom_SsKeyField := 'QuoServices_id';

  Custom_TransfersCdsName := 'QuoServices';
  Custom_TransfersKeyField := 'QuoServices_id';

  Custom_PackagesCdsName := 'QuoPackages';
  Custom_PackagesKeyField := 'QuoPackages_id';

  Custom_AdmLevel := QuoDayActivityForm_Level;

  Custom_FormWidth := 1250;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TQuoDayActivityForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure TQuoDayActivityForm.TicketsCdsBeforePost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString, x_Duration, x_Time: string;
  x_Hours, x_Min: integer;
begin

  if TicketsCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  if TicketsCds['QuoCities_id'] = Null then
    Raise Exception.Create('Enter the QuoCities_id');

  if (TicketsCds['Tickets_id'] = null) then
    TicketsCds['Tickets_id'] := 5;

  if TicketsCds['Tickets_id'] = 5 then
    TicketsCds['FlightNo'] := '';

  if PrestoForm.DetailCds['DriveStartTime'] <> null then
    x_Time := FormatDateTime('HH:mm',PrestoForm.DetailCds['DriveStartTime'])
  else
    x_Time := '09:00';

  if (TicketsCds['Tickets_id'] = 5) and (TicketsCds['ETD'] = null) then
    TicketsCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
        x_Time);

  TicketsCds['P2P'] := 0;

  if TicketsCds['ReserveHotelOvernight'] = null then
    TicketsCds['ReserveHotelOvernight'] := false;

  if (TicketsCds['ReserveHotelOvernight'] = true) and (TicketsCds['Overnight'] <> true) then
    raise exception.create ('Cannot mark as "Reserve Hotel on overnight" when not traveling overnight');

  if (TicketsCds['Tickets_id'] = 2) and (TicketsCds['AgentAddressbook_id'] = null) then
    TicketsCds['AgentAddressbook_id'] := GetDefaultTrainTicketAgent
  else if (TicketsCds['Tickets_id'] = 1) and (TicketsCds['AgentAddressbook_id'] = null) then
    TicketsCds['AgentAddressbook_id'] := GetDefaultAirTicketAgent;

  if TicketsCds['TravelDate'] = null then
    raise Exception.Create('Please enter a travel date');

  if TicketsCds['From_Cities_id'] = null then
    raise Exception.Create('Please enter "From City"');

  if TicketsCds['To_Cities_id'] = null then
    raise Exception.Create('Please enter "To City"');

  if (TicketsCds['ETD'] <> null) and (TicketsCds['TravelDate'] <> null) then
    TicketsCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketsCds['ETD']));

  if (TicketsCds['ETA'] <> null) and (TicketsCds['TravelDate'] <> null) then
    TicketsCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketsCds['ETA']));

  if (TicketsCds['ETA'] <> null) and (TicketsCds['Overnight'] = true) and (TicketsCds['Nights'] <> null) then
    TicketsCds['ETA'] := IncDay(TicketsCds['ETA'], TicketsCds['Nights']);

  // Road Travel & Not selected through route finder
  if (TicketsCds['Tickets_id'] = 5) then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      QueryString := 'SELECT x_Duration = dbo.fn_GetCityTravelDuration(' +
        IntToStr(TicketsCds['From_Cities_id']) + ',' + IntToStr(TicketsCds['To_Cities_id']) + ') ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Duration := '';
      if (not GpSds.EOF) and (GpSds['x_Duration'] <> null) then
        x_Duration := GpSds['x_Duration'];

      GpSds.Free;

      x_Duration := RoundOffDurationStr(x_Duration);

      x_Hours := StrToInt(Copy(x_Duration,1,2));
      x_Min := StrToInt(Copy(x_Duration,4,2));

      TicketsCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketsCds['ETD']));

      TicketsCds['ETA'] := IncHour (TicketsCds['ETD'], x_Hours);
      TicketsCds['ETA'] := IncMinute (TicketsCds['ETA'], x_Min);

      if IsP2P(TicketsCds['From_Cities_id'], TicketsCds['To_Cities_id'],TicketsCds['TravelDate']) then
        TicketsCds['P2P'] := 1;

    end;

  if IsTicketsRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if TicketsCds['QuoTickets_id'] = null then
    raise Exception.Create('QuoTickets_id is not assigned');

end;

function TQuoDayActivityForm.IsP2P(x_FromCities_id, x_ToCities_id: integer; x_Date:TDatetime):boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_CarHireP2P_id: integer;
  x_p2p: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString :=
    'SELECT x_CarHireP2P_id = dbo.fn_GetCarHireP2P_id (' + IntToStr(x_FromCities_id) + ',' +
    IntToStr(x_ToCities_id) + ',''' + FormatDateTime('mm/dd/yyyy',x_Date) + ''')';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_CarHireP2P_id := 0;
  if (not GpSds.EOF) and (GpSds['x_CarHireP2P_id'] <> null) then
    x_CarHireP2P_id := GpSds['x_CarHireP2P_id'];

  GpSds.Free;

  if x_CarHireP2P_id > 0 then
    x_p2p := True
  else
    x_p2p := False;

  Result := x_p2p;

end;

function TQuoDayActivityForm.IsTicketsRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(TicketsCds['QuoCities_id']) + ' ' +
    'AND TravelDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate'])) + ' ' +
    'AND From_Cities_id = ' + IntToStr(TicketsCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(TicketsCds['To_Cities_id']);

  if TicketsCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (QuoTickets_id <> ' + IntToStr(TicketsCds['QuoTickets_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;



procedure TQuoDayActivityForm.cxButtonCloseClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Count, x_Tickets_id: integer;
  x_Timing, x_ModeString: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  // Check if single hop & drive
  if (x_count = 1) then
    begin

      QueryString := 'SELECT Tickets_id FROM QuoTickets ' +
        'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Tickets_id := 0;
      if (not GpSds.EOF) and (GpSds['Tickets_id'] <> null) then
        x_Tickets_id := GpSds['Tickets_id'];

      if x_Tickets_id = 5 then
        cxDriveCkb.Checked := True;

    end;


  if cxDriveCkb.Checked then
    begin

      if TicketsCds.State in [dsEdit, dsInsert] then
        TicketsCds.Post;

      x_Timing := FormatDateTime('mm/dd/yyyy',PrestoForm.DetailCds['DateIn']) + ' ' +
         FormatDateTime('HH:mm',PrestoForm.DetailCds['DriveStartTime']) + ' ';

      x_ModeString := GetModeString(QuoDayActivityForm_QuoCities_id);

      QueryString := 'UPDATE QuoCities SET ModeOfTravel = 5, QuoTickets_id = null, ' +
        'DriveStartTime = ''' + x_Timing + ''', ' +
        'ModeString = ''' + x_ModeString + ''' ' +
        'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end
  else
    begin

      if TicketsCds.State in [dsEdit, dsInsert] then
        TicketsCds.Post;

      if (not TicketsCds.eof) then
        begin

          x_ModeString := GetModeString (QuoDayActivityForm_QuoCities_id);

          QueryString := 'UPDATE QuoCities SET ModeOfTravel = ' + IntToStr(TicketsCds['Tickets_id']) +
            ', QuoTickets_id = ' + IntToStr(TicketsCds['QuoTickets_id']) + ', ' +
            'ModeString = ''' + x_ModeString + ''' ' +
            'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end;

    end;

  GpSds.Free;

  Close;

end;

function TQuoDayActivityForm.GetModeString (x_QuoCities_id: integer): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ModeString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT Tickets_id FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(x_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ModeString := '';

  while not GpSds.Eof do
    begin
      if GpSds['Tickets_id'] <> null then
        begin
          if x_ModeString > '' then
            x_ModeString := x_ModeString + '/';
          if GpSds['Tickets_id'] = 1 then
            x_ModeString := x_ModeString + 'Air';
          if GpSds['Tickets_id'] = 2 then
            x_ModeString := x_ModeString + 'Train';
          if GpSds['Tickets_id'] = 3 then
            x_ModeString := x_ModeString + 'Bus';
          if GpSds['Tickets_id'] = 4 then
            x_ModeString := x_ModeString + 'Ferry';
          if GpSds['Tickets_id'] = 5 then
            x_ModeString := x_ModeString + 'Road';
        end;
      GpSds.Next;
    end;

  GpSds.Free;

  Result := x_ModeString;

end;


procedure TQuoDayActivityForm.cxButton1Click(Sender: TObject);
begin
  inherited;

  if RouteFinderForm <> nil then
    begin
      RouteFinderForm.Free;
      RouteFinderForm := nil;
    end;

  _RouteFinderForm_Type := 2;
  if PrestoForm.DetailCds['FromCities_id'] <> null then
    _RouteFinderForm_FromCities_id := PrestoForm.DetailCds['FromCities_id'];
  _RouteFinderForm_ToCities_id := PrestoForm.DetailCds['ToCities_id'];
  _RouteFinderForm_TravelDate := PrestoForm.DetailCds['DateIn'];
  _RouteFinderForm_Alternate := false;

  if RouteFinderForm = nil then
    Application.CreateForm(TRouteFinderForm, RouteFinderForm);

  RouteFinderForm.FormStyle := fsNormal;
  RouteFinderForm.Visible := False;

  RouteFinderForm.ShowModal;

  if RouteFinderForm.ModalResult = mrOK then
    begin
      if TicketsCds.State <> dsBrowse then
        TicketsCds.Cancel;
      InsertRoute;
      AutoAddNightHalts;
    end;

  RouteFinderForm.Free;
  RouteFinderForm := nil;

end;

procedure TQuoDayActivityForm.cxButton2Click(Sender: TObject);
begin
  inherited;

  if (TicketsCds['Hops'] = null) or (TicketsCds['ModePreference'] = null) then
    raise exception.create ('The route must first be selected form the route finder in order for the alternates to work');

  _RouteAlternateForm_Type := 2;
  if PrestoForm.DetailCds['FromCities_id'] <> null then
    _RouteAlternateForm_FromCities_id := PrestoForm.DetailCds['FromCities_id'];
  _RouteAlternateForm_ToCities_id := PrestoForm.DetailCds['ToCities_id'];
  _RouteAlternateForm_Date := StrToDateTime(FormatDateTime('dd/mm/yyyy',PrestoForm.DetailCds['DateIn']) + ' 05:00');
  _RouteAlternateForm_Hops := TicketsCds['Hops'];
  _RouteAlternateForm_ModePreference := TicketsCds['ModePreference'];

  if RouteAlternateForm = nil then
    Application.CreateForm(TRouteAlternateForm, RouteAlternateForm);

  RouteAlternateForm.FormStyle := fsNormal;
  RouteAlternateForm.Visible := False;

  RouteAlternateForm.ShowModal;

  if RouteAlternateForm.ModalResult = mrOK then
    begin
      if TicketsCds.State <> dsBrowse then
        TicketsCds.Cancel;
      InsertRouteAlternate(_RouteAlternateForm_Hops, _RouteAlternateForm_ModePreference);
      AutoAddNightHalts;
    end;

  RouteAlternateForm.Free;
  RouteAlternateForm := nil;

end;

procedure TQuoDayActivityForm.InsertRoute;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  CdsClone: TClientDataSet;
  x_overnight: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (TicketsCds.State = dsInsert) or (TicketsCds.State = dsEdit) then
    TicketsCds.Cancel;

  QueryString := 'DELETE FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  TicketsCds.Active := False;
  TicketsCds.Active := True;

  CdsClone := TClientDataSet.Create(nil);

  if RouteFinderForm.cxOptionRadioGroup.ItemIndex = 0 then
    begin
      CdsClone.CloneCursor(RouteFinderForm.RouteFinderCds, True);
      CdsClone.Filtered := True;
      CdsClone.Filter := 'OptionNo = 1';
    end
  else if RouteFinderForm.cxOptionRadioGroup.ItemIndex = 1 then
    begin
      CdsClone.CloneCursor(RouteFinderForm.RouteFinderCds, True);
      CdsClone.Filtered := True;
      CdsClone.Filter := 'OptionNo = 2';
    end
  else if RouteFinderForm.cxOptionRadioGroup.ItemIndex = 2 then
    begin
      CdsClone.CloneCursor(RouteFinderForm.RouteFinderCds, True);
      CdsClone.Filtered := True;
      CdsClone.Filter := 'OptionNo = 3';
    end;

  CdsClone.Close;
  CdsClone.Open;
  CdsClone.First;

  while not CdsClone.EOF do
    begin
      TicketsCds.Insert;
      TicketsCds['From_Cities_id'] := CdsClone['FromCities_id'];
      TicketsCds['To_Cities_id'] := CdsClone['ToCities_id'];
      TicketsCds['TravelDate'] := StrToDate(FormatDateTime('dd/mm/yyyy',CdsClone['Departure']));
      if CdsClone['Mode'] = 1 then
        TicketsCds['Tickets_id'] := 5
      else if CdsClone['Mode'] = 2 then
        TicketsCds['Tickets_id'] := 1
      else if CdsClone['Mode'] = 3 then
        TicketsCds['Tickets_id'] := 2
      else if CdsClone['Mode'] = 4 then
        TicketsCds['Tickets_id'] := 4;
      TicketsCds['FlightNo'] := CdsClone['ModeNo'];
      TicketsCds['ETD'] := StrToDateTime(CdsClone['Departure']);
      TicketsCds['ETA'] := StrToDateTime(CdsClone['Arrival']);

      x_overnight := false;

      if CdsClone['Hops'] <> null then
        TicketsCds['Hops'] := CdsClone['Hops'];

      if CdsClone['ModePreference'] <> null then
        TicketsCds['ModePreference'] := CdsClone['ModePreference'];

      if TicketsCds['Tickets_id'] = 1 then
        begin
          TicketsCds['Class_id'] := GetDefaultClass(TicketsCds['Tickets_id'], TicketsCds['FlightNo'], x_overnight);
          EnterFlightInfo;
        end
      else if TicketsCds['Tickets_id'] = 2 then
        begin
          TicketsCds['TrainNo'] := CdsClone['TrainNo'];
          TicketsCds['Class_id'] := GetDefaultClass(TicketsCds['Tickets_id'], TicketsCds['TrainNo'], x_overnight);
          EnterTrainInfo;
          TicketsCds['overnight'] := x_overnight;
          TicketsCds['Nights'] := 0;
          if not IsSameDay (TicketsCds['ETD'], TicketsCds['ETA']) then
            begin
              TicketsCds['overnight'] := True;
              TicketsCds['Nights'] := StrToDate(FormatDateTime('dd/mm/yyyy',TicketsCds['ETA'])) -
                                      StrToDate(FormatDateTime('dd/mm/yyyy',TicketsCds['ETD']));
              TicketsCds['Class_id'] := GetDefaultClass(TicketsCds['Tickets_id'], TicketsCds['TrainNo'], x_overnight);
            end;
        end;

      TicketsCds.Post;

      CdsClone.Next;

    end;

  CdsClone.Active := False;
  CdsClone.Filter := '(OptionNo = 1) OR (OptionNo = 2) OR (OptionNo = 3)';
  CdsClone.Filtered := True;
  CdsClone.Active := True;

  GpSds.Free;

end;

procedure TQuoDayActivityForm.AutoAddNightHalts;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_AddNightHalts ' + IntToStr(QuoDayActivityForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  TicketsCds.Active := False;
  PrestoForm.DetailCds.Active := False;
  PrestoForm.DetailCds.Active := True;
  PrestoForm.DetailCds.Last;
  PrestoForm.DetailCds.Locate('QuoCities_id', QuoDayActivityForm_QuoCities_id, []);
  TicketsCds.Active := True;

  TicketsCds.First;
  while not TicketsCds.Eof do
    begin
      TicketsCds.Edit;
      TicketsCds.Post;
      TicketsCds.Next;
    end;

  TicketsCds.First;

end;


procedure TQuoDayActivityForm.InsertRouteAlternate(x_Hops, x_ModePreference: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  CdsClone: TClientDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (TicketsCds.State = dsInsert) or (TicketsCds.State = dsEdit) then
    TicketsCds.Cancel;

  QueryString := 'DELETE FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  TicketsCds.Active := False;
  TicketsCds.Active := True;

  CdsClone := TClientDataSet.Create(nil);

  CdsClone.CloneCursor(RouteAlternateForm.RouteFinderCds, True);
  CdsClone.Filtered := True;
  CdsClone.Filter := 'OptionNo = ' + IntToStr(RouteAlternateForm.RouteFinderCds['OptionNo']);

  CdsClone.First;

  while not CdsClone.EOF do
    begin
      TicketsCds.Insert;
      TicketsCds['From_Cities_id'] := CdsClone['FromCities_id'];
      TicketsCds['To_Cities_id'] := CdsClone['ToCities_id'];
      TicketsCds['TravelDate'] := StrToDate(FormatDateTime('dd/mm/yyyy',CdsClone['Departure']));
      if CdsClone['Mode'] = 1 then
        TicketsCds['Tickets_id'] := 5
      else if CdsClone['Mode'] = 2 then
        TicketsCds['Tickets_id'] := 1
      else if CdsClone['Mode'] = 3 then
        TicketsCds['Tickets_id'] := 2;
      TicketsCds['FlightNo'] := CdsClone['ModeNo'];
      TicketsCds['ETD'] := StrToDateTime(CdsClone['Departure']);
      TicketsCds['ETA'] := StrToDateTime(CdsClone['Arrival']);

      TicketsCds['Hops'] := x_Hops;

      TicketsCds['ModePreference'] := x_ModePreference;

      if TicketsCds['Tickets_id'] = 1 then
        begin
          TicketsCds['Class_id'] := GetDefaultClass(TicketsCds['Tickets_id'], TicketsCds['FlightNo'], false);
          EnterFlightInfo;
        end
      else if TicketsCds['Tickets_id'] = 2 then
        begin
          TicketsCds['TrainNo'] := CdsClone['TrainNo'];
          TicketsCds['Class_id'] := GetDefaultClass(TicketsCds['Tickets_id'], TicketsCds['TrainNo'], false);
          EnterTrainInfo;
          TicketsCds['overnight'] := False;
          TicketsCds['Nights'] := 0;
          if not IsSameDay (TicketsCds['ETD'], TicketsCds['ETA']) then
            begin
              TicketsCds['overnight'] := True;
              TicketsCds['Nights'] := StrToDate(FormatDateTime('dd/mm/yyyy',TicketsCds['ETA'])) -
                                      StrToDate(FormatDateTime('dd/mm/yyyy',TicketsCds['ETD']));
              TicketsCds['Class_id'] := GetDefaultClass(TicketsCds['Tickets_id'], TicketsCds['TrainNo'], true);
            end;
        end;

      TicketsCds.Post;

      CdsClone.Next;

    end;

  CdsClone.Active := False;
  CdsClone.Filtered := False;
  CdsClone.Active := True;

  GpSds.Free;

end;


procedure TQuoDayActivityForm.EnterFlightInfo;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT COALESCE(OverNight,0) AS OverNight, ' +
    'CASE COALESCE(OverNight,0) WHEN 0 THEN 0 ELSE 1 END AS Nights ' +
    'FROM FlightSectorFaresIndia ' +
    'WHERE FlightNo = ''' + TicketsCds['FlightNo'] + ''' ' +
    'AND CONVERT(VARCHAR(5),Arrival,108) = ''' + FormatDateTime('HH:mm',TicketsCds['ETA']) + ''' ' +
    'AND CONVERT(VARCHAR(5),Departure,108) = ''' + FormatDateTime('HH:mm',TicketsCds['ETD']) + ''' ' +
    'AND From_Cities_id = ' + IntToStr(TicketsCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(TicketsCds['To_Cities_id']) + ' ' +
    'AND ''' + FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate']) + ''' >= wef ' +
    'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate']) + ''' <= wet)  OR (wet IS NULL))';

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not GpSds.EOF then
    begin
      TicketsCds['OverNight'] := GpSds['OverNight'];
      TicketsCds['Nights'] := GpSds['Nights'];
    end
  else
    begin
      TicketsCds['OverNight'] := False;
      TicketsCds['Nights'] := 0;
    end;

  GpSds.Free;

end;

procedure TQuoDayActivityForm.EnterTrainInfo;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT t.TrainName, td1.TrainStations_id As FromTrainStations_id, ' +
    'td2.TrainStations_id As ToTrainStations_id, ' +
    't.DayOfOperation, ' +
    'CASE WHEN COALESCE(td2.Nights,0) > COALESCE(td1.Nights,0) THEN 1 ELSE 0 END AS Overnight, ' +
    'COALESCE(td2.Nights,0) - COALESCE(td1.Nights,0) AS Nights ' +
    'FROM Trains t INNER JOIN TrainDetails td1 ON t.Trains_id = td1.Trains_id ' +
    'INNER JOIN TrainDetails td2 ON t.Trains_id = td2.Trains_id ' +
    'LEFT JOIN TrainStations ts1 ON td1.TrainStations_id = ts1.TrainStations_id ' +
    'LEFT JOIN TrainStations ts2 ON td2.TrainStations_id = ts2.TrainStations_id ' +
    'WHERE t.TrainNo = ''' + TicketsCds['TrainNo'] + ''' ' +
    'AND td1.Cities_id = ' + IntToStr(TicketsCds['From_Cities_id']) + ' ' +
    'AND td2.Cities_id = ' + IntToStr(TicketsCds['To_Cities_id']) + ' ' +
    'AND td1.kms < td2.kms ' +
    'AND ''' + FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate']) + ''' >= wef ' +
    'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate']) + ''' <= wet)  OR (wet IS NULL)) ' +
    'ORDER BY COALESCE(ts1.DefaultOrder,100), COALESCE(ts2.DefaultOrder,100) ';


  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not GpSds.EOF then
    begin
      TicketsCds['From_TrainStations_id'] := GpSds['FromTrainStations_id'];
      TicketsCds['To_TrainStations_id'] := GpSds['ToTrainStations_id'];
      TicketsCds['DaysOfOperation'] := GpSds['DayOfOperation'];
      TicketsCds['OverNight'] := GpSds['OverNight'];
      TicketsCds['Nights'] := GpSds['Nights'];
    end
  else
    begin
      TicketsCds['DaysOfOperation'] := 0;
      TicketsCds['OverNight'] := False;
      TicketsCds['Nights'] := 0;
    end;

  GpSds.Free;

end;


procedure TQuoDayActivityForm.cxGridDBBandedTableView1FlightNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if (TicketsCds['Tickets_id'] = null) or (TicketsCds['Tickets_id'] = 0) then
    exit;

  if (TicketsCds['From_Cities_id'] = null) or (TicketsCds['To_Cities_id'] = null)then
    raise Exception.Create('Please select the From & To Cities');

  if (TicketsCds['TravelDate'] = null) then
    raise Exception.Create('Please enter the travel date');

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if TicketsCds['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if TicketsCds['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if TicketsCds['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if TicketsCds['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := TicketsCds['From_Cities_id'];
  TicketsForm_ToCities_id := TicketsCds['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;

  if TicketsForm.ModalResult = mrOK then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;

      if TicketsCds['Tickets_id'] = 1 then
        begin

          if TicketsForm.FlightsCds['FlightNo'] <> null then
            TicketsCds['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

          if TicketsForm.FlightsCds['Arrival'] <> null then
            TicketsCds['ETA'] := TicketsForm.FlightsCds['Arrival'];

          if TicketsForm.FlightsCds['Departure'] <> null then
            TicketsCds['ETD'] := TicketsForm.FlightsCds['Departure'];

          if TicketsForm.FlightsCds['Days'] <> null then
            TicketsCds['DaysOfOperation'] := TicketsForm.FlightsCds['Days'];

          TicketsCds['Overnight'] := False;

          if TicketsForm.FlightsCds['Overnight'] <> null then
            TicketsCds['Overnight'] := TicketsForm.FlightsCds['Overnight'];

          if TicketsCds['Overnight'] = True then
            TicketsCds['Nights'] := 1
          else
            TicketsCds['Nights'] := 0;

          if TicketsCds['ETA'] <> null then
            TicketsCds['ETA'] := IncDay(TicketsCds['ETA'],TicketsCds['Nights']);

        end;

      if TicketsCds['Tickets_id'] = 2 then
        begin

          if TicketsForm.TrainsCds['TrainNo'] <> null then
            TicketsCds['TrainNo'] := TicketsForm.TrainsCds['TrainNo'];

          if (TicketsForm.TrainsCds['TrainNo'] <> null) and (TicketsForm.TrainsCds['TrainName'] <> null) then
            TicketsCds['FlightNo'] := Trim(TicketsForm.TrainsCds['TrainNo']) + ' ' + Trim(TicketsForm.TrainsCds['TrainName']);

          if TicketsForm.TrainsCds['Arrival'] <> null then
            TicketsCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
                                 FormatDateTime('HH:mm',TicketsForm.TrainsCds['Arrival']));

          if TicketsForm.TrainsCds['Departure'] <> null then
            TicketsCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
                                 FormatDateTime('HH:mm',TicketsForm.TrainsCds['Departure']));

          if TicketsForm.TrainsCds['FromStations_id'] <> null then
            TicketsCds['From_TrainStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

          if TicketsForm.TrainsCds['ToStations_id'] <> null then
            TicketsCds['To_TrainStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

          if TicketsForm.TrainsCds['DayOfOperation'] <> null then
            TicketsCds['DaysOfOperation'] := TicketsForm.TrainsCds['DayOfOperation'];

          TicketsCds['Overnight'] := false;

          if TicketsForm.TrainsCds['Overnight'] <> null then
            TicketsCds['Overnight'] := TicketsForm.TrainsCds['Overnight'];

          if TicketsForm.TrainsCds['Nights'] <> null then
            TicketsCds['Nights'] := TicketsForm.TrainsCds['Nights']
          else
            TicketsCds['Nights'] := 0;

          if TicketsCds['ETA'] <> null then
            TicketsCds['ETA'] := IncDay(TicketsCds['ETA'],TicketsCds['Nights']);

        end;

      if TicketsCds['Tickets_id'] = 3 then
        begin

          if TicketsForm.BusesCds['busno'] <> null then
            TicketsCds['FlightNo']:= TicketsForm.BusesCds['BusNo'];

          if TicketsForm.BusesCds['Arrival'] <> null then
            TicketsCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
                                 FormatDateTime('HH:mm',TicketsForm.BusesCds['Arrival']));

          if TicketsForm.BusesCds['Departure'] <> null then
            TicketsCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
                                 FormatDateTime('HH:mm',TicketsForm.BusesCds['Departure']));

          if TicketsForm.BusesCds['Days'] <> null then
            TicketsCds['DaysOfOperation'] := TicketsForm.BusesCds['Days'];

          TicketsCds['Overnight'] := False;

          if TicketsForm.BusesCds['Overnight'] <> null then
            TicketsCds['Overnight'] := TicketsForm.BusesCds['Overnight'];

          if TicketsForm.BusesCds['Nights'] <> null then
            TicketsCds['Nights'] := TicketsForm.BusesCds['Nights']
          else
            TicketsCds['Nights'] := 0;

          if TicketsCds['ETA'] <> null then
            TicketsCds['ETA'] := IncDay(TicketsCds['ETA'],TicketsCds['Nights']);

        end;

      if TicketsCds['Tickets_id'] = 4 then
        begin

          if TicketsForm.FerriesCds['FerryNo'] <> null then
            TicketsCds['FlightNo']:= TicketsForm.FerriesCds['FerryNo'];

          if TicketsForm.FerriesCds['Arrival'] <> null then
            TicketsCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
                                 FormatDateTime('HH:mm',TicketsForm.FerriesCds['Arrival']));

          if TicketsForm.FerriesCds['Departure'] <> null then
            TicketsCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketsCds['TravelDate']) + ' ' +
                                 FormatDateTime('HH:mm',TicketsForm.FerriesCds['Departure']));

          if TicketsForm.FerriesCds['Days'] <> null then
            TicketsCds['DaysOfOperation'] := TicketsForm.FerriesCds['Days'];

          TicketsCds['Overnight'] := false;

          if TicketsForm.FerriesCds['Overnight'] <> null then
            TicketsCds['Overnight'] := TicketsForm.BusesCds['Overnight'];

          if TicketsForm.FerriesCds['Nights'] <> null then
            TicketsCds['Nights'] := TicketsForm.BusesCds['Nights']
          else
            TicketsCds['Nights'] := 0;

          if TicketsCds['ETA'] <> null then
            TicketsCds['ETA'] := IncDay(TicketsCds['ETA'],TicketsCds['Nights']);
        end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView1Class_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if (TicketsCds['Tickets_id'] = null) or (TicketsCds['Tickets_id'] = 0) then
    exit;

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

procedure TQuoDayActivityForm.cxDriveCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (cxDriveCkb.Checked = true) and (TicketLinesCount = 0) then
    TicketsCds.Insert;
end;

function TQuoDayActivityForm.TicketLinesCount: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_count: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;

procedure TQuoDayActivityForm.TicketsCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if TicketLinesCount > 1 then
    Panel3.Visible := false;
end;

procedure TQuoDayActivityForm.DisplayDriveLabel;
var
  GpSds : TSQLDataSet;
  QueryString, x_Duration: string;
  x_Distance: double;
  x_FromCities_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_FromCities_id := -1;
  if PrestoForm.DetailCds['FromCities_id'] <> null then
    x_FromCities_id := PrestoForm.DetailCds['FromCities_id'];

  QueryString := 'SELECT Distance FROM Distances ' +
    'WHERE From_Cities_id = ' + IntToStr(x_FromCities_id) + ' ' +
    'AND To_Cities_id = ' + IntToStr(PrestoForm.DetailCds['ToCities_id']) + ' ' +
    'AND Drive = 1';
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds.eof) then
    Panel3.Visible := false
  else
    begin

      Panel3.Visible := true;

      x_Distance := 0.0;
      if (GpSds['Distance'] <> null) then
        x_Distance := GpSds['Distance'];

      QueryString := 'SELECT x_Duration = dbo.fn_GetCityTravelDuration(' +
        IntToStr(PrestoForm.DetailCds['FromCities_id']) + ',' +
        IntToStr(PrestoForm.DetailCds['ToCities_id']) + ') ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Duration := '';
      if (not GpSds.EOF) and (GpSds['x_Duration'] <> null) then
        x_Duration := GpSds['x_Duration'];

      x_Duration := RoundOffDurationStr(x_Duration);

      DistanceLabel.Caption := 'Distance = ' + FormatFloat('#,##0',x_Distance) + ' kms.';
      if x_Duration > '' then
        DistanceLabel.Caption := DistanceLabel.Caption + ' (Duration ' + x_Duration + ' hrs.)';

      cxDriveCkb.Checked := true;

    end;

  GpSds.Free;

end;

procedure TQuoDayActivityForm.TicketsCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  TicketsCds['Quotations_id'] := QuoDayActivityForm_Quotations_id;
  TicketsCds['From_Cities_id'] := QuoDayActivityForm_FromCities_id;
  TicketsCds['To_Cities_id'] := QuoDayActivityForm_ToCities_id;
  TicketsCds['TravelDate'] := QuoDayActivityForm_TravelDate;
  TicketsCds['QuoCities_id'] := QuoDayActivityForm_QuoCities_id;
  TicketsCds['ReserveHotelOvernight'] := false;
  TicketsCds['Overnight'] := false;
  if cxDriveCkb.Checked then
    begin
      TicketsCds['Tickets_id'] := 5;
      TicketsCds['NoOfTickets'] := 1;
    end
  else
    begin
      TicketsCds['NoOfTickets'] := PrestoForm.MasterCds['NumPax'];
    end;


end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView2RoomTypes_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  GpSds : TSQLDataSet;
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if AccCds['HotelAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Hotel first');
      exit;
    end;

  if AccCds.State in [dsBrowse] then
    AccCds.Edit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT f.RoomTypes_id, f.RoomType, f.Addressbook_id, f.AC, ' +
       ' CASE WHEN f.RoomTypes_id = s.default_roomtypes_id then ''Default'' else '''' end as DefaultRoom ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(AccCds['HotelAddressbook_id']) + ') f ' +
    'LEFT JOIN Seasons s ON f.Addressbook_id = s.addressbook_id ' +
    'WHERE ' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccCds['DateIn'])) + ' ' +
    'BETWEEN s.fromdate and s.todate';
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds.eof) then
    x_QueryString := 'SELECT f.RoomTypes_id, f.RoomType, f.Addressbook_id, f.AC, ' +
         ' CASE WHEN f.RoomTypes_id = s.default_roomtypes_id then ''Default'' else '''' end as DefaultRoom ' +
      'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(AccCds['HotelAddressbook_id']) + ') f ' +
      'LEFT JOIN Seasons s ON f.Addressbook_id = s.addressbook_id ' +
      'WHERE DATEADD(yy,-1,' + QuotedStr(FormatDateTime('mm/dd/yyyy',AccCds['DateIn'])) + ') ' +
      'BETWEEN s.fromdate and s.todate';

  GpSds.Free;      

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 3 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'RoomTypes_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'RoomType';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Ac';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'DefaultRoom';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Room Type';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'AC';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Default Room';

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

procedure TQuoDayActivityForm.AccCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AccCds['Quotations_id'] := QuoDayActivityForm_Quotations_id;
  AccCds['QuoCities_id'] := QuoDayActivityForm_QuoCities_id;
  AccCds['Cities_id'] := QuoDayActivityForm_ToCities_id;
  AccCds['DateIn'] := QuoDayActivityForm_TravelDate;
  AccCds['AC'] := True;
  if PrestoForm.MasterCds['MealPlans_id'] <> null then
    AccCds['MealPlans_id'] := PrestoForm.MasterCds['MealPlans_id'];

end;

procedure TQuoDayActivityForm.AccCdsBeforePost(DataSet: TDataSet);
var
  x_nights: integer;
begin

  if (AccCds['DateIn'] < IncDay(PrestoForm.DetailCds['DateIn'],-1)) or
     (AccCds['DateIn'] > PrestoForm.DetailCds['DateOut']) then
    raise exception.create('Invalid date in ');

  if (AccCds['DateOut'] < PrestoForm.DetailCds['DateIn']) or
     (AccCds['DateOut'] > IncDay(PrestoForm.DetailCds['DateOut'],1)) then
    raise exception.create('Invalid date out');

  x_nights := DaysBetween(StrToDate(FormatDateTime('dd/mm/yyyy',AccCds['DateIn'])),
                          StrToDate(FormatDateTime('dd/mm/yyyy',AccCds['DateOut'])));
  AccCds['Nights'] := x_nights;

  if AccCds['HotelAddressbook_id'] = null then
    raise Exception.Create('Enter the Hotel');

  if AccCds['RoomTypes_id'] = null then
    raise Exception.Create('Enter the Room Type');

  if AccCds['AC'] = null then
    raise Exception.Create('Mark if A/C room');

  if AccCds['MealPlans_id'] = null then
    raise Exception.Create('Enter the MealPlan');

  if AccCds['Quotations_id'] = null then
    raise Exception.Create('Enter the Quotations_id');

  if AccCds['Selected'] = null then
    AccCds['Selected'] := true;

  if not IsValidHotelRoom (AccCds['HotelAddressbook_id'], AccCds['RoomTypes_id']) then
     raise exception.Create('Invalid combination of Hotel/RoomType');

  if AccCds['Singles'] = null then
    AccCds['Singles'] := 0;

  if AccCds['Doubles'] = null then
    AccCds['Doubles'] := 0;

  if AccCds['Triples'] = null then
    AccCds['Triples'] := 0;

  if AccCds['Twins'] = null then
    AccCds['Twins'] := 0;

  if AccCds['Cities_id'] <> QuoDayActivityForm_ToCities_id then
    AccCds['Cities_id'] := QuoDayActivityForm_ToCities_id;


  inherited;

  if AccCds['QuoAccommodation_id'] = null then
    raise Exception.Create('Enter the QuoAccommodation_id');

end;

function TQuoDayActivityForm.IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(x_Addressbook_id) + ') ' +
    'WHERE RoomTypes_id = ' + IntToStr(x_RoomTypes_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_valid := True;

  GpSds.Free;

  Result := x_valid;
end;


procedure TQuoDayActivityForm.SsCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SsCds['DaysOfOperation'] <> null then
    SsCds['DaysName'] := DaysToStr(SsCds['DaysOfOperation']);
end;

procedure TQuoDayActivityForm.SsCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (SsCds['ServiceDate'] <> null) and (SsCds['StartTime'] <> null) then
    SsCds['StartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',SsCds['ServiceDate']) + ' ' +
      FormatDateTime('HH:mm',SsCds['StartTime']));

end;

procedure TQuoDayActivityForm.cxCopySightSeeingButtonClick(
  Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  inherited;

  if MessageDlg ('Are you sure you want to add the same SightSeeing again?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoCopyServices ' + IntToStr(SsCds['QuoServices_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  SsCds.Active := False;
  SsCds.Active := True;

end;

procedure TQuoDayActivityForm.TransfersCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (TransfersCds['Services_id'] = null) then
    raise exception.create('Please enter the service');

  if (TransfersCds['Quotations_id'] = null) then
    raise exception.create('Please select the quotation');

  if (TransfersCds['QuoCities_id'] = null) then
    raise exception.create('Please select the city');

  if (TransfersCds['SightSeeing'] = null) then
    raise exception.create('Please select if Sightseeing / Transfer');

  if (TransfersCds['AgentAddressbook_id'] = null) then
    raise exception.create('Please select the Agent');

  if (TransfersCds['Selected'] = true) and (TransfersCds['Lock'] = null) then
    raise exception.create('Please check if locked');

  if (TransfersCds['Selected'] = true) and (TransfersCds['AC'] = null) then
    raise exception.create('Please select AC / NonAC');

  if (TransfersCds['Selected'] = true) and (TransfersCds['ServiceDate'] = null) then
    raise exception.create('Please select the service date');

  if (TransfersCds['Selected'] = true) and (TransfersCds['StartTime'] = null) then
    raise exception.create('Please select the start time');

  if (TransfersCds['Selected'] = true) and (TransfersCds['Vehicles_id'] = null) then
    raise exception.create('Please select the vehicle');

  if (TransfersCds['Selected'] = true) and (TransfersCds['NoOfVehicles'] = null) then
    TransfersCds['NoOfVehicles'] := 1;

  if (TransfersCds['ServiceDate'] <> null) and (TransfersCds['StartTime'] <> null) then
    TransfersCds['StartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TransfersCds['ServiceDate']) + ' ' +
      FormatDateTime('HH:mm',TransfersCds['StartTime']));
end;

procedure TQuoDayActivityForm.TransfersCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TransfersCds['DaysOfOperation'] <> null then
    TransfersCds['DaysName'] := DaysToStr(TransfersCds['DaysOfOperation']);

end;

procedure TQuoDayActivityForm.cxAlternateTransferButtonClick(
  Sender: TObject);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  x_QueryString := 'SELECT Services_id, Description, TransferTypes_id ' +
    'FROM Services ' +
    'WHERE Cities_id = ' + IntToStr(TransfersCds['Cities_id']) + ' ' +
    'AND Transfer = 1 ' +
    'AND Active = 1 ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Services_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'TransferTypes_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 300;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Service';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
  begin
    TransfersCds.Edit;
    TransfersCds['Services_id'] := SearchSortForm.SearchCds['Services_id'];
    TransfersCds['TransferTypes_id'] := SearchSortForm.SearchCds['TransferTypes_id'];
    TransfersCds.Post;
  end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView3LockPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  SsCds.Post;
end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView3SelectedPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  SsCds.Post;
end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView4SelectedPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  TransfersCds.Post;
end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView4LockPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  TransfersCds.Post;
end;

procedure TQuoDayActivityForm.cxButton3Click(Sender: TObject);
begin
  inherited;
  ChangeDay(1);
end;

procedure TQuoDayActivityForm.cxButton4Click(Sender: TObject);
begin
  inherited;
  ChangeDay(2);
end;

procedure TQuoDayActivityForm.ChangeDay(x_option: integer);
var
  x_PageIndex: integer;
begin
  inherited;

  if x_option = 1 then
    PrestoForm.DetailCds.Next
  else if x_option = 2 then
    PrestoForm.DetailCds.Prior;

  x_PageIndex := cxPageControl1.ActivePageIndex;

  QuoDayActivityForm_QuoCities_id := PrestoForm.DetailCds['QuoCities_id'];
  QuoDayActivityForm_Quotations_id := PrestoForm.DetailCds['Quotations_id'];
  if PrestoForm.DetailCds['FromCities_id'] <> null then
    QuoDayActivityForm_FromCities_id := PrestoForm.DetailCds['FromCities_id'];
  QuoDayActivityForm_ToCities_id := PrestoForm.DetailCds['ToCities_id'];
  QuoDayActivityForm_TravelDate := PrestoForm.DetailCds['DateIn'];
  QuoDayActivityForm_FormType := 5;
  QuoDayActivityForm_FormMode := 1;
  FormCreate(nil);

  cxPageControl1.ActivePageIndex := x_PageIndex;
  DisplayCityLabel;

end;

procedure TQuoDayActivityForm.DisplayCityLabel;
var
  GpSds : TSQLDataSet;
  x_QueryString, x_City: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT City FROM Cities WHERE Cities_id = ' + IntToStr(PrestoForm.DetailCds['ToCities_id']);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_City := '';
  if (not GpSds.Eof) and (GpSds['City'] <> null) then
    x_City := GpSds['City'];

  cxCityLabel.Caption := x_City;

  GpSds.Free;

end;

procedure TQuoDayActivityForm.SetDefaultRoomType;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT Default_RoomTypes_id FROM Seasons ' +
    'WHERE ''' + FormatDateTime('mm/dd/yyyy',AccCds['DateIn']) + ''' ' +
    'BETWEEN FromDate AND ToDate ' +
    'AND ' + IntToStr(PrestoForm.MasterCds['NumPax']) + ' BETWEEN FromPax AND To_Pax ' +
    'AND Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']);

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


procedure TQuoDayActivityForm.AccCdsHotelAddressbook_idChange(
  Sender: TField);
begin
  inherited;
  if AccCds['HotelAddressbook_id'] <> null then
    SetDefaultRoomType;

end;

procedure TQuoDayActivityForm.PkgCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  PkgCds['Quotations_id'] := QuoDayActivityForm_Quotations_id;
  PkgCds['QuoCities_id'] := QuoDayActivityForm_QuoCities_id;
  PkgCds['DateIn'] := QuoDayActivityForm_TravelDate;

end;

procedure TQuoDayActivityForm.PkgCdsBeforePost(DataSet: TDataSet);
var
  x_nights: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  if PkgCds['Packages_id'] = null then
    raise Exception.Create('Enter the Package');

  QueryString := 'SELECT Nights FROM Packages ' +
    'WHERE Packages_id = ' + IntToStr(PkgCds['Packages_id']) + ' ';

  x_Nights := 1;
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['Nights'] <> null) then
    x_Nights := GpSds['Nights'];

  GpSds.Free;

  if PkgCds['DateIn'] = null then
    raise Exception.Create('Enter the Date In');

  PkgCds['DateOut'] := IncDay(PkgCds['DateIn'],x_Nights);

  if PkgCds['DateOut'] = null then
    raise Exception.Create('Enter the Date Out');

  PkgCds['Nights'] := x_nights;

  if PkgCds['Quotations_id'] = null then
    raise Exception.Create('Enter the Quotations_id');

  inherited;

  if PkgCds['QuoPackages_id'] = null then
    raise Exception.Create('Enter the QuoPackages_id');

end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView5Packages_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if PkgCds['Cities_id'] = null then
    begin
      ShowMessage('Please enter the City first');
      exit;
    end;

  if PkgCds.State in [dsBrowse] then
    PkgCds.Edit;

  x_QueryString := 'SELECT Packages_id, Package FROM Packages ' +
                   'WHERE From_Cities_id = ' + IntToStr(PkgCds['Cities_id']) + ' ' +
                   'ORDER BY Package ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Packages_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Package';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Package';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Packages_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if PkgCds.State = dsBrowse then
        PkgCds.Edit;
      PkgCds['Packages_id'] := SearchSortForm.SearchCds['Packages_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView2HotelAddressbook_idPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
    cxGridDBBandedTableView2.Controller.EditingController.Edit.PostEditValue;
end;

procedure TQuoDayActivityForm.cxButton5Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  i: integer;
begin
  inherited;

  if MessageDlg ('Are you sure you want to add a new Transfer?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT s.Services_id, s.Description, s.Addressbook_id, s.Cities_id, s.TransferTypes_id FROM Services s ' +
    'LEFT JOIN QuoCities qc ON s.Cities_id = qc.ToCities_id ' +
    'WHERE qc.QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id) + ' ' +
    'AND s.Transfer = 1 ' +
    'AND s.Active = 1 ' +
    'ORDER BY s.Description';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 4 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Services_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'TransferTypes_id';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Description';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if (TransfersCds.State = dsEdit) or (TransfersCds.State = dsInsert) then
        TransfersCds.Post;
      TransfersCds.Insert;
      TransfersCds['Services_id'] := SearchSortForm.SearchCds['Services_id'];
      TransfersCds['Quotations_id'] := QuoDayActivityForm_Quotations_id;
      TransfersCds['QuoCities_id'] := QuoDayActivityForm_QuoCities_id;
      TransfersCds['Cities_id'] := SearchSortForm.SearchCds['Cities_id'];
      TransfersCds['TransferTypes_id'] := SearchSortForm.SearchCds['TransferTypes_id'];
      TransfersCds['SightSeeing'] := 0;
      TransfersCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
      TransfersCds['Lock'] := false;
      TransfersCds['Selected'] := true;
      TransfersCds['AC'] := true;
      TransfersCds['NoOfVehicles'] := 1;
      TransfersCds['Guide'] := false;
      TransfersCds['Transport'] := true;
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

  GpSds.Free;

end;

procedure TQuoDayActivityForm.AccCdsAfterPost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_QuoAccommodation_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT QuoAccommodation_id FROM QuoAccommodation ' +
    'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id) + ' ' +
    'ORDER BY DateIn';
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_QuoAccommodation_id := 0;
  if (not GpSds.eof) and (GpSds['QuoAccommodation_id'] <> null) then
    x_QuoAccommodation_id := GpSds['QuoAccommodation_id'];

  if (x_QuoAccommodation_id > 0) then
    QueryString := 'UPDATE QuoCities SET QuoAccommodation_id = ' + IntToStr(x_QuoAccommodation_id) + ' ' +
      'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id)
  else
    QueryString := 'UPDATE QuoCities SET QuoAccommodation_id = null ' +
      'WHERE QuoCities_id = ' + IntToStr(QuoDayActivityForm_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TQuoDayActivityForm.DisplaySsCost;
var
  x_Addressbook_id, x_Services_id, x_NumPax, x_Transport, x_Ac: integer;
  x_Vehicles_id, x_NumVehicles: integer;
  x_Date: TDateTime;
begin
  inherited;

  x_addressbook_id := -1;
  if SsCds['AgentAddressbook_id'] <> null then
    x_addressbook_id := SsCds['AgentAddressbook_id'];

  x_services_id := -1;
  if SsCds['Services_id'] <> null then
    x_services_id := SsCds['Services_id'];

  x_Date := Date;
  if SsCds['ServiceDate'] <> null then
    x_Date := SsCds['ServiceDate'];

  x_NumPax := 1;
  if PrestoForm.MasterCds['NumPax'] <> null then
    x_NumPax := PrestoForm.MasterCds['NumPax'];

  x_Transport := 0;
  if (SsCds['Transport'] <> null) and (SsCds['Transport'] = true) then
    x_Transport := 1;

  x_Ac := 0;
  if (SsCds['AC'] <> null) and (SsCds['AC'] = true) then
    x_Ac := 1;

  x_Vehicles_id := 0;
  if SsCds['Vehicles_id'] <> null then
    x_Vehicles_id := SsCds['Vehicles_id'];

  x_NumVehicles := 0;
  if SsCds['NoOfVehicles'] <> null then
    x_NumVehicles := SsCds['NoOfVehicles'];

  SsCostCds.Close;
  SsCostSds.Close;
  SsCostSds.CommandText := 'EXEC [p_GetSightSeeingRates] ' + IntToStr(x_addressbook_id) + ',' +
   IntToStr(x_services_id) + ',' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_Date)) + ',' + IntToStr(x_NumPax) + ',' +
   IntToStr(x_Transport) + ',' + IntToStr(x_Ac) + ',' + IntToStr(x_Vehicles_id) + ',' + IntToStr(x_NumVehicles);
  SsCostSds.Open;
  SsCostCds.Open;

end;


procedure TQuoDayActivityForm.SsCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DisplaySsCost;
end;

procedure TQuoDayActivityForm.cxGridDBBandedTableView1Tickets_idPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxGridDBBandedTableView1.Controller.EditingController.Edit.PostEditValue;
end;

procedure TQuoDayActivityForm.cxBandCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxBandCkb.Checked then
    begin
      cxGridDBBandedTableView1.Bands[1].Visible := true;
      cxGridDBBandedTableView1.Bands[2].Visible := true;
    end
  else
    begin
      cxGridDBBandedTableView1.Bands[1].Visible := false;
      cxGridDBBandedTableView1.Bands[2].Visible := false;
    end;
end;

procedure TQuoDayActivityForm.cxButtonSaveClick(Sender: TObject);
begin
  inherited;

  if (TicketsDs.State = dsInsert) or (TicketsDs.State = dsEdit) then
    TicketsCds.Post;
  if (AccDs.State = dsInsert) or (AccDs.State = dsEdit) then
    AccCds.Post;
  if (SsDs.State = dsInsert) or (SsDs.State = dsEdit) then
    SsCds.Post;
  if (TransfersDs.State = dsInsert) or (TransfersDs.State = dsEdit) then
    TransfersCds.Post;
  if (PkgDs.State = dsInsert) or (PkgDs.State = dsEdit) then
    PkgCds.Post;

end;

procedure TQuoDayActivityForm.cxButtonCancelClick(Sender: TObject);
begin
  inherited;

  if (TicketsDs.State = dsInsert) or (TicketsDs.State = dsEdit) then
    TicketsCds.Cancel;
  if (AccDs.State = dsInsert) or (AccDs.State = dsEdit) then
    AccCds.Cancel;
  if (SsDs.State = dsInsert) or (SsDs.State = dsEdit) then
    SsCds.Cancel;
  if (TransfersDs.State = dsInsert) or (TransfersDs.State = dsEdit) then
    TransfersCds.Cancel;
  if (PkgDs.State = dsInsert) or (PkgDs.State = dsEdit) then
    PkgCds.Cancel;

end;

procedure TQuoDayActivityForm.TicketsDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;
end;

procedure TQuoDayActivityForm.HideShowSaveButton;
var
  x_type: integer;
begin
  inherited;

  x_type := 0;

  if (TicketsDs.State = dsInsert) or (TicketsDs.State = dsEdit) then
    x_type := 1
  else if (AccDs.State = dsInsert) or (AccDs.State = dsEdit) then
    x_type := 1
  else if (SsDs.State = dsInsert) or (SsDs.State = dsEdit) then
    x_type := 1
  else if (TransfersDs.State = dsInsert) or (TransfersDs.State = dsEdit) then
    x_type := 1
  else if (PkgDs.State = dsInsert) or (PkgDs.State = dsEdit) then
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

procedure TQuoDayActivityForm.AccDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;
end;

procedure TQuoDayActivityForm.SsDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TQuoDayActivityForm.TransfersDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TQuoDayActivityForm.PkgDsStateChange(Sender: TObject);
begin
  inherited;
  HideShowSaveButton;

end;

procedure TQuoDayActivityForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if MessageDlg ('Are you sure you want to clear the Car Reporting Date ?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if TicketsCds.State = dsBrowse then
    TicketsCds.Edit;

  TicketsCds['CarReportDate'] := null;

end;

procedure TQuoDayActivityForm.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  if MessageDlg ('Are you sure you want to clear the Car Release Date ?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if TicketsCds.State = dsBrowse then
    TicketsCds.Edit;

  TicketsCds['CarReleaseDate'] := null;

end;

procedure TQuoDayActivityForm.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  if MessageDlg ('Are you sure you want to enter the Car Reporting Date ?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if TicketsCds.State = dsBrowse then
    TicketsCds.Edit;

  TicketsCds['CarReportDate'] := TicketsCds['ETD'];
end;

procedure TQuoDayActivityForm.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  if MessageDlg ('Are you sure you want to enter the Car Release Date ?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if TicketsCds.State = dsBrowse then
    TicketsCds.Edit;

  TicketsCds['CarReleaseDate'] := TicketsCds['ETA'];
end;

end.
