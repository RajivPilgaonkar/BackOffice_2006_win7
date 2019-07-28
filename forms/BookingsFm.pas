unit BookingsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_Bookings_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC, cxLabel,
  cxDBLabel, cxNavigator, cxDBNavigator, cxTextEdit, cxContainer,
  cxGroupBox, cxRadioGroup, StdCtrls, cxButtons, ExtCtrls, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBCtrls, cxButtonEdit, cxTimeEdit, cxMemo, DateUtils;

type
  TBookingsForm = class(TCustom_Bookings_Form)
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDS: TDataSource;
    WebUsersSds: TSQLDataSet;
    WebUsersDsp: TDataSetProvider;
    WebUsersCds: TClientDataSet;
    WebUsersCdsweb_users_id: TIntegerField;
    WebUsersCdsweb_user: TStringField;
    WebUsersCdsusername: TStringField;
    WebUsersDs: TDataSource;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    CountriesDs: TDataSource;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrency: TStringField;
    CurrenciesDs: TDataSource;
    cxGridDBBandedTableView2bookingstours_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2tourleader: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2tourleadertrainee: TcxGridDBBandedColumn;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourCode: TStringField;
    TourCodeDs: TDataSource;
    cxGridDBBandedTableView3bookingsclients_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3dateofbirth: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3passportno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3dateofissue: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3placeofissue: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3validto: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3countries_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3roomno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3male: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3resident_countries_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3LeadPaxOrder: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Email: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3TravelEmail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3PreferredPhone: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3EmergencyContact: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3EmergencyEmail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3EmergencyHomePhone: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3EmergencyMobilePhone: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3PaxPassportName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4bookingstickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4nooftickets: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4traveldate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4flightno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4generatevoucher: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4from_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4to_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4tickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4etd: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4eta: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4noofpax_resident: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4nocancelled: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4nobooked: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4nocancelled_resident: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4quoted: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Agent_Cities_id: TcxGridDBBandedColumn;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    AgentDs: TDataSource;
    BkgTicketsCdsAgentLookup: TStringField;
    cxGridDBBandedTableView4AgentLookup: TcxGridDBBandedColumn;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsCdstickets_id: TIntegerField;
    TicketsCdsdetails: TStringField;
    TicketsDs: TDataSource;
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
    BkgTicketsCdsFromTrainStationLookup: TStringField;
    BkgTicketsCdsToTrainStationLookup: TStringField;
    cxGridDBBandedTableView4FromTrainStationLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4ToTrainStationLookup: TcxGridDBBandedColumn;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    BkgTicketsCdsClassLookup: TStringField;
    cxGridDBBandedTableView4ClassLookup: TcxGridDBBandedColumn;
    VoucherSds: TSQLDataSet;
    VoucherDsp: TDataSetProvider;
    VoucherCds: TClientDataSet;
    VoucherDs: TDataSource;
    cxGridDBBandedTableView4Vouchers_id: TcxGridDBBandedColumn;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField6: TStringField;
    HotelDs: TDataSource;
    BkgAccCdsHotelLookup: TStringField;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsroomtypes_id: TIntegerField;
    RoomTypeCdsroomtype: TStringField;
    RoomTypeCdsac: TBooleanField;
    RoomTypeDs: TDataSource;
    BkgAccCdsRoomTypeLookup: TStringField;
    cxGridDBBandedTableView1bookingsaccommodation_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1datein: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dateout: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1mealplans_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1generatevoucher: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1singles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1doubles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1quoted: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Hotel_Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1triples: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1twins: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1HotelLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RoomTypeLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Vouchers_id: TcxGridDBBandedColumn;
    BkgAccCdsNights: TIntegerField;
    cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn;
    RoomSizeSds: TSQLDataSet;
    RoomSizeDsp: TDataSetProvider;
    RoomSizeCds: TClientDataSet;
    RoomSizeCdsroomsizes_id: TIntegerField;
    RoomSizeCdsroomsize: TStringField;
    RoomSizeCdspax: TIntegerField;
    RoomSizeDS: TDataSource;
    MealPlanSds: TSQLDataSet;
    MealPlanDsp: TDataSetProvider;
    MealPlanCds: TClientDataSet;
    MealPlanCdsmealplans_id: TIntegerField;
    MealPlanCdsmealplan: TStringField;
    MealPlanCdsplan: TStringField;
    MealPlanDs: TDataSource;
    cxGridDBBandedTableView5bookingsservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5eta: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5generatevoucher: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5vouchers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5hotel_addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5service_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5entrancefees: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5guide: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5quoted: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5NoOfVehicles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Transport: TcxGridDBBandedColumn;
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesCdsServices_id: TIntegerField;
    ServicesCdsService: TStringField;
    ServicesCdsDescription: TStringField;
    ServicesCdsActive: TBooleanField;
    ServicesDs: TDataSource;
    BkgSsCdsServicesLookup: TStringField;
    BkgSsCdsAgentLookup: TStringField;
    cxGridDBBandedTableView5ServicesLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5AgentLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6bookingsservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6flightno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6eta: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6generatevoucher: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6vouchers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6hotel_addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6from_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6to_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6service_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6transfertypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6quoted: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6NoOfVehicles: TcxGridDBBandedColumn;
    BkgTrsfCdsServicesLookup: TStringField;
    BkgTrsfCdsAgentLookup: TStringField;
    cxGridDBBandedTableView6ServicesLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6AgentLookup: TcxGridDBBandedColumn;
    TransferTypesSds: TSQLDataSet;
    TransferTypesDsp: TDataSetProvider;
    TransferTypesCds: TClientDataSet;
    TransferTypesCdstransfertypes_id: TIntegerField;
    TransferTypesCdstransfer: TStringField;
    TransferTypesCdstransfercode: TStringField;
    TransferTypesDs: TDataSource;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleDS: TDataSource;
    cxGridDBBandedTableView7bookingspackages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7from_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7from_time: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7from_addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7to_time: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7to_place: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7generatevoucher: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7vouchers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7transport: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7noofvehicles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7from_place: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7quoted: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8bookingstransport_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8bookings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8from_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8fromdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8fromtime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8fromplace: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8to_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8todate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8totime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8toplace: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dropoffdays: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8dropoffkms: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8tourcode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8tourdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8vouchers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8generatevoucher: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8noofvehicles: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8noofpax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8bookedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8confirmedon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8cancelledon: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8quoted: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Agent_Cities_id: TcxGridDBBandedColumn;
    BkgTransCdsAgentLookup: TStringField;
    BkgTransCdsVehicleLookup: TStringField;
    cxGridDBBandedTableView8AgentLookup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8VehicleLookup: TcxGridDBBandedColumn;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesCdsPackages_id: TIntegerField;
    PackagesCdsPackage: TStringField;
    PackagesCdsAddressbook_id: TIntegerField;
    PackagesCdsOrganisation: TStringField;
    PackagesDs: TDataSource;
    Label5: TLabel;
    Label7: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    VoucherCdsVouchers_id: TIntegerField;
    VoucherCdsVoucherNo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure BkgTicketsCdsBeforePost(DataSet: TDataSet);
    procedure BkgAccCdsBeforePost(DataSet: TDataSet);
    procedure BkgSsCdsBeforePost(DataSet: TDataSet);
    procedure BkgTrsfCdsBeforePost(DataSet: TDataSet);
    procedure BkgPackCdsBeforePost(DataSet: TDataSet);
    procedure BkgTransCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
    procedure BkgTicketsCdsAfterInsert(DataSet: TDataSet);
    procedure BkgAccCdsAfterInsert(DataSet: TDataSet);
    procedure BkgSsCdsAfterInsert(DataSet: TDataSet);
    procedure BkgTrsfCdsAfterInsert(DataSet: TDataSet);
    procedure BkgPackCdsAfterInsert(DataSet: TDataSet);
    procedure BkgTransCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdscountries_idChange(Sender: TField);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
    procedure cxSearchTextEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView4AgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView4flightnoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView4FromTrainStationLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView4ToTrainStationLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView4ClassLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure BkgAccCdsCalcFields(DataSet: TDataSet);
    procedure cxGridDBBandedTableView1HotelLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView5ServicesLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView5AgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView6ServicesLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView6AgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView7vehicles_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView8AgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView8VehicleLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure cxGridDBBandedTableView1RoomTypeLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    function IsMasterRecordDuplicate: Boolean;
    procedure ActivateInCustom;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    procedure DimTabs;
    procedure CancelQuotation(x_Bookings_id, x_BookingsTours_id: integer);
    procedure SearchBooking;
    procedure FilterData(x_bookings_id: integer);
  public
    { Public declarations }
  end;

var
  BookingsForm: TBookingsForm;
  BookingsForm_Level: Integer;

implementation

uses BackOfficeDM, BookingsUt, SearchSortFm, TicketsFm;

{$R *.dfm}

procedure TBookingsForm.FormCreate(Sender: TObject);
begin
  Caption := 'Bookings';
  Panel1.Visible := False;
  ActivateInCustom;

  MasterSds.Params[0].Value := -1;

  inherited;

  PrinAgentCds.Open;
  WebUsersCds.Open;
  CountriesCds.Open;
  CurrenciesCds.Open;
  TourCodeCds.Open;
  CitiesCds.Open;
  AgentCds.Open;
  TicketsCds.Open;
  TrainStationCds.Open;

  VoucherSds.Params[0].Value := -1;
  VoucherCds.Open;

  ClassCds.Open;
  RoomSizeCds.Open;
  MealPlanCds.Open;
  ServicesCds.Open;
  TransferTypesCds.Open;
  VehicleCds.Open;
  PackagesCds.Open;


end;

procedure TBookingsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TBookingsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  BookingsForm := nil;
end;

procedure TBookingsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Bookings';
  Custom_MasterKeyField := 'Bookings_id';

  Custom_Detail1CdsName := 'BookingsTours';
  Custom_Detail1KeyField := 'BookingsTours_id';

  Custom_Detail2CdsName := 'BookingsClients';
  Custom_Detail2KeyField := 'BookingsClients_id';

  Custom_BkgTicketsCdsName := 'BookingsTickets';
  Custom_BkgTicketsKeyField := 'BookingsTickets_id';

  Custom_BkgAccCdsName := 'BookingsAccommodation';
  Custom_BkgAccKeyField := 'BookingsAccommodation_id';

  Custom_BkgSsCdsName := 'BookingsServices';
  Custom_BkgSsKeyField := 'BookingsServices_id';

  Custom_BkgTrsfCdsName := 'BookingsServices';
  Custom_BkgTrsfKeyField := 'BookingsServices_id';

  Custom_BkgPackCdsName := 'BookingsPackages';
  Custom_BkgPackKeyField := 'BookingsPackages';

  Custom_BkgTransCdsName := 'BookingsTransport';
  Custom_BkgTransKeyField := 'BookingsTransport_id';

  Custom_AdmLevel := BookingsForm_Level;

  Custom_FormWidth := 1100;
  Custom_FormHeight := 700 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TBookingsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
//  cxOrgEdit.SetFocus;
end;

procedure TBookingsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Reference'] = null) or (Trim(MasterCds['Reference']) = '') then
    raise Exception.Create('Please enter the Reference');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['Bookings_id'] = null then
    raise Exception.Create('Bookings_id is not assigned');

end;

function TBookingsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Bookings ' +
    'WHERE Reference = ' + QuotedStr(Trim(MasterCds['Reference'])) + ' ' +
    x_QueryString;

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Bookings_id <> ' + IntToStr(MasterCds['Bookings_id']) + ') ';

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


procedure TBookingsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin

  if Detail1Cds['Bookings_id'] = null then
    raise exception.Create('Please enter the booking');

  if Detail1Cds['TourCode'] = null then
    raise exception.Create('Please enter the tour code');

  if Detail1Cds['Tourdate'] = null then
    raise exception.Create('Please enter the tour date');

  if Detail1Cds['BookedOn'] = null then
    raise exception.Create('Please enter "Booked On"');

  if IsTourCodeValid(Detail1Cds['TourCode'],Detail1Cds['Tourdate']) = False then
    raise Exception.Create('This combination of tour code and tour date is invalid');

  //Check if the tour code and tour date combination  already exists
  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail1Cds['BookingsTours_id'] = null then
    raise Exception.Create('BookingsTours_id not assigned');

end;

function TBookingsForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM BookingsTours ' +
    'WHERE Bookings_id = ' + IntToStr(Detail1Cds['Bookings_id']) + ' ' +
    'AND TourCode = ' + QuotedStr(Detail1Cds['TourCode']) + ' ' +
    'AND TourDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['TourDate'])) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (BookingsTours_id <> ' + IntToStr(Detail1Cds['BookingsTours_id']) + ') ';

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


procedure TBookingsForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin

  if Detail2Cds['Bookings_id'] = null then
    raise exception.Create('Please enter the booking first');

  if Detail2Cds['Name'] = null then
    raise exception.Create('Please enter the name');

  if Detail2Cds['Male'] = null then
    raise exception.Create('Please enter the sex of the client');

  //Convert client name into uppercase letters
  Detail2Cds['Name'] := UpperCase(Detail2Cds['Name']);

  //Check if the tour code and tour date combination  already exists
  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['BookingsClients_id'] = null then
    raise Exception.Create('BookingsClients_id not assigned');

end;

function TBookingsForm.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString, x_MF: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM BookingsClients ' +
    'WHERE Bookings_id = ' + IntToStr(Detail2Cds['Bookings_id']) + ' ' +
    'AND Name = ' + QuotedStr(Detail2Cds['Name']) + ' ';

  if Detail2Cds['Male'] <> null then
    begin
      if Detail2Cds['Male'] = True then
        x_MF := '1'
      else
        x_MF := '0';
      x_QueryString := x_QueryString + ' AND (Male = ' + x_MF + ') ';
    end;

  if Detail2Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (BookingsClients_id <> ' + IntToStr(Detail2Cds['BookingsClients_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TBookingsForm.BkgTicketsCdsBeforePost(DataSet: TDataSet);
var
  x_QueryString: string;
begin

  if BkgTicketsCds['Bookings_id'] = null then
    raise Exception.Create('Please select a booking first');

  if BkgTicketsCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if BkgTicketsCds['Agent_Cities_id'] = null then
    raise exception.Create('Please enter the Agent City');

  if BkgTicketsCds['TravelDate'] = null then
    raise exception.Create('Please enter the travel date');

  if BkgTicketsCds['NoOfTickets'] = null then
    raise exception.Create('Please enter the number of tickets');

  if BkgTicketsCds['NoBooked'] = null then
    raise exception.Create('Please enter the number of tickets booked');

  if BkgTicketsCds['NoCancelled'] = null then
    raise exception.Create('Please enter the number of tickets cancelled');

  if BkgTicketsCds['FlightNo'] = null then
    raise exception.Create('Please enter the flight number');

  if BkgTicketsCds['ClassId'] = null then
    raise exception.Create('Please enter the class');

  if BkgTicketsCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if BkgTicketsCds['NoOfTickets'] <> BkgTicketsCds['NoBooked'] - BkgTicketsCds['NoCancelled'] then
    begin
      x_QueryString := 'No. of Tickets : ' + IntToStr(BkgTicketsCds['NoOfTickets']) + chr(13) +
        'No. Booked : ' + IntToStr(BkgTicketsCds['NoBooked']) + chr(13) +
        'No. Cancelled : ' + IntToStr(BkgTicketsCds['NoCancelled']) + chr(13) +
        'This does not appear to be right. Do you want to save this ? ';
      if MessageDlg (x_QueryString,mtWarning,[mbYes,mbNo],0) <> mrYes then
        Abort;
    end;

  if not IsValidTicketAgentCity (BkgTicketsCds['Addressbook_id'], BkgTicketsCds['Agent_Cities_id']) then
     raise exception.Create('Invalid combination of Agent/City');

  inherited;

  if BkgTicketsCds['BookingsTickets_id'] = null then
    raise Exception.Create('BookingsTickets_id not assigned');

end;

procedure TBookingsForm.BkgAccCdsBeforePost(DataSet: TDataSet);
begin

  if BkgAccCds['Bookings_id'] = null then
    raise Exception.Create('Please select a booking first');

  if BkgAccCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if BkgAccCds['Addressbook_id'] = null then
    raise exception.Create('Please select a hotel');

  if BkgAccCds['Hotel_Cities_id'] = null then
    raise exception.Create('Please enter the Hotel City');

  if not IsValidTicketAgentCity (BkgAccCds['Addressbook_id'], BkgAccCds['Hotel_Cities_id']) then
     raise exception.Create('Invalid combination of Agent/City');

  if BkgAccCds['DateIn'] = null then
    raise exception.Create('Please enter the date in');

  if BkgAccCds['DateOut'] = null then
    raise exception.Create('Please enter the date out');


  if BkgAccCds['Singles'] = null then
    BkgAccCds['Singles'] := 0;

  if BkgAccCds['Doubles'] = null then
    BkgAccCds['Doubles'] := 0;

  if BkgAccCds['Triples'] = null then
    BkgAccCds['Triples'] := 0;

  if BkgAccCds['Twins'] = null then
    BkgAccCds['Twins'] := 0;

  if (BkgAccCds['Singles'] = 0) and (BkgAccCds['Doubles'] = 0) and (BkgAccCds['Triples'] = 0) and (BkgAccCds['Twins'] = 0) then
    raise exception.Create('Please enter singles / doubles / triples / twins');

  if BkgAccCds['RoomTypes_id'] = null then
    raise exception.Create('Please enter the room type');

  if BkgAccCds['AC'] = null then
    raise exception.Create('Please enter whether A/C is required');

  if BkgAccCds['MealPlans_id'] = null then
    raise exception.Create('Please enter the meal plan');

  if not IsValidHotelRoom (BkgAccCds['Addressbook_id'], BkgAccCds['RoomTypes_id']) then
     raise exception.Create('Invalid combination of Hotel/RoomType');

  inherited;

  if BkgAccCds['BookingsAccommodation_id'] = null then
    raise Exception.Create('BookingsAccommodation_id not assigned');

end;

procedure TBookingsForm.BkgSsCdsBeforePost(DataSet: TDataSet);
begin

  if BkgSsCds['Bookings_id'] = null then
    raise Exception.Create('Please select a booking first');

  if BkgSsCds['Service_Cities_id'] = null then
    raise exception.Create('Please enter the Service City');

  if BkgSsCds['EntranceFees'] = null then
    raise exception.Create('Please enter the Entrance Fees');

  if BkgSsCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if BkgSsCds['ETA'] = null then
    raise exception.Create('Please enter the Timing');

  if BkgSsCds['AC'] = null then
    raise exception.Create('Please enter AC');

  if BkgSsCds['EntranceFees'] = null then
    raise exception.Create('Please enter the Entrance Fees');

  if BkgSsCds['Guide'] = null then
    raise exception.Create('Please enter Guide');

  if BkgSsCds['Transport'] = null then
    raise exception.Create('Please enter Transport');

  if BkgSsCds['NoOfVehicles'] = null then
    raise exception.Create('Please enter No Of Vehicles');

  if BkgSsCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if (BkgSsCds['Transport'] = True) and (BkgSsCds['NoOfVehicles'] < 1) then
      raise exception.create ('No of Vehicles should be > 0 where Transport is requested');

  if (BkgSsCds['Transport'] = True) and ((BkgSsCds['Vehicles_id'] = null) or (BkgSsCds['Vehicles_id'] = 0)) then
      raise exception.create ('Vehicle should be entered where Transport is requested');

  inherited;

  if BkgSsCds['BookingsServices_id'] = null then
    raise Exception.Create('BookingsServices_id not assigned');

end;

procedure TBookingsForm.BkgTrsfCdsBeforePost(DataSet: TDataSet);
begin

  if BkgTrsfCds['Bookings_id'] = null then
    raise Exception.Create('Please select a booking first');

  if BkgTrsfCds['Service_Cities_id'] = null then
    raise exception.Create('Please enter the Service City');

  if BkgTrsfCds['Date'] = null then
    raise exception.Create('Please enter the Date');

  if BkgTrsfCds['To_Cities_id'] = null then
    raise exception.Create('Please enter the "To City"');

  if BkgTrsfCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if BkgTrsfCds['TransferTypes_id'] = null then
    raise exception.Create('Please enter the Transfer Type');

  if BkgTrsfCds['ETA'] = null then
    raise exception.Create('Please enter the Timing');

  if (BkgTrsfCds['FlightNo'] <> null) then
    BkgTrsfCds['FlightNo'] := UpperCase(BkgTrsfCds['FlightNo']);

  if BkgTrsfCds['Vehicles_id'] = null then
    if MessageDlg ('No vehicle entered for transport. Save Anyway?',mtWarning,[mbYes, mbNo], 0) <>mryes then
      Abort;

  if BkgTrsfCds['Vehicles_id'] = null then
    raise exception.Create('Please enter the Vehicle');

  if ((BkgTrsfCds['Vehicles_id'] <> null) and (BkgTrsfCds['Vehicles_id'] <> 0)) and
     ((BkgTrsfCds['NoOfVehicles'] = null) or (BkgTrsfCds['NoOfVehicles'] = 0)) then
    raise exception.Create('Please enter the No. of Vehicles');

  if ((BkgTrsfCds['Vehicles_id'] <> null) and (BkgTrsfCds['Vehicles_id'] <> 0)) and
     (BkgTrsfCds['AC'] = null) then
    raise exception.Create('Please enter the AC');

  if BkgTrsfCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if BkgTrsfCds['Transport'] = null then
    BkgTrsfCds['Transport'] := 1;

  inherited;

  if BkgTrsfCds['BookingsServices_id'] = null then
    raise Exception.Create('BookingsServices_id not assigned');

end;

procedure TBookingsForm.BkgPackCdsBeforePost(DataSet: TDataSet);
begin

  if BkgPackCds['Bookings_id'] = null then
    raise Exception.Create('Please select a booking first');

  if BkgPackCds['packages_id'] = null then
    raise exception.Create('Please enter the package');

  if BkgPackCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if BkgPackCds['From_Date'] = null then
    raise exception.Create('Please enter "From Date"');

  if BkgPackCds['From_Time'] = null then
    raise exception.Create('Please enter "From Time"');

  if BkgPackCds['From_Place'] = null then
    raise exception.Create('Please enter "From Place"');

  if BkgPackCds['To_Time'] = null then
    raise exception.Create('Please enter "To Time"');

  if BkgPackCds['To_Place'] = null then
    raise exception.Create('Please enter "To Place"');

  if BkgPackCds['Transport'] = null then
    raise exception.Create('Please enter "Transport"');

  if BkgPackCds['AC'] = null then
    raise exception.Create('Please enter "AC"');

  if (BkgPackCds['Transport'] = True) then
    begin

      if BkgPackCds['Vehicles_id'] = null then
        raise exception.Create('Please enter "Vehicle"');

      if BkgPackCds['NoOfVehicles'] = null then
        raise exception.Create('Please enter "No of Vehicles"');

    end;

  if BkgPackCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  inherited;

  if BkgPackCds['BookingsPackages_id'] = null then
    raise Exception.Create('BookingsPackages_id not assigned');

end;

procedure TBookingsForm.BkgTransCdsBeforePost(DataSet: TDataSet);
begin

  if BkgTransCds['Bookings_id'] = null then
    raise Exception.Create('Please select a booking first');

  if BkgTransCds['from_cities_id'] = null then
    raise exception.Create('Please enter the "From City"');

  if BkgTransCds['fromdate'] = null then
    raise exception.Create('Please enter the "From Date"');

  if BkgTransCds['fromtime'] = null then
    raise exception.Create('Please enter the "From Time"');

  if BkgTransCds['fromPlace'] = null then
    raise exception.Create('Please enter the "From Place"');

  if BkgTransCds['to_cities_id'] = null then
    raise exception.Create('Please enter the "To City"');

  if BkgTransCds['todate'] = null then
    raise exception.Create('Please enter the "To Date"');

  if BkgTransCds['totime'] = null then
    raise exception.Create('Please enter the "To Time"');

  if BkgTransCds['toPlace'] = null then
    raise exception.Create('Please enter the "To Place"');

  if BkgTransCds['Vehicles_id'] = null then
    raise exception.Create('Please enter the "Vehicle"');

  if BkgTransCds['AC'] = null then
    raise exception.Create('Please enter "AC"');

  if BkgTransCds['NoOfVehicles'] = null then
    raise exception.Create('Please enter "No Of Vehicles"');

  if BkgTransCds['NoOfPax'] = null then
    raise exception.Create('Please enter "No Of Pax"');

  if BkgTransCds['DropOffDays'] = null then
    raise exception.Create('Please enter the "Drop Off Days"');

  if BkgTransCds['DropOffKms'] = null then
    raise exception.Create('Please enter the "Drop Off Kms"');

  if BkgTransCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  inherited;

  if BkgTransCds['BookingsTransport_id'] = null then
    raise Exception.Create('BookingsTransport_id not assigned');

end;

procedure TBookingsForm.MasterCdsAfterInsert(DataSet: TDataSet);
var
  x_pa, x_countries_id, x_currencies_id: integer;
begin
  inherited;

  // Principal Agent
  x_pa := GetDefaultPrincipalAgent;
  if x_pa >= 0 then
    MasterCds['Addressbook_id'] := x_pa;

  MasterCds['Web_users_id'] := 0;

  if MasterCds['Addressbook_id'] <> null then
    begin
      x_countries_id := GetDefaultCountry(MasterCds['Addressbook_id']);
      if x_countries_id >= 0 then
        MasterCds['Countries_id'];

      x_currencies_id := GetDefaultCurrency(MasterCds['Addressbook_id']);
      if x_currencies_id >= 0 then
        MasterCds['Currencies_id']
    end;

  MasterCds['Booked'] := Date();

end;

procedure TBookingsForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['BookedOn'] := Date;
  Detail1Cds['TourLeader'] := False;
  Detail1Cds['TourLeaderTrainee'] := False;
end;

procedure TBookingsForm.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds['Male'] := 0;
  Detail2Cds['LeadPaxOrder'] := 100;
end;

procedure TBookingsForm.BkgTicketsCdsAfterInsert(DataSet: TDataSet);
var
  x_agents_id, x_cities_id: integer;
begin
  inherited;

  if Detail1Cds['TourCode'] <> null then
    begin
      x_agents_id := GetDefaultTourAgent(Detail1Cds['TourCode']);
      if x_agents_id > 0 then
        begin
          BkgTicketsCds['Addressbook_id'] := x_agents_id;
          x_cities_id := GetAddressbookCity(x_agents_id);
          if x_cities_id > 0 then
            BkgTicketsCds['Agent_Cities_id'] := x_cities_id;
        end;
    end;

  if MasterCds['bookings_id'] <> null then
    BkgTicketsCds['NoOfTickets'] := GetPaxCount(MasterCds['bookings_id']);

  BkgTicketsCds['NoBooked'] := BkgTicketsCds['NoOfTickets'];
  BkgTicketsCds['NoCancelled'] := 0;

  if Detail1Cds['TourCode'] <> null then
    BkgTicketsCds['TourCode'] := Detail1Cds['TourCode'];

  if Detail1Cds['TourDate'] <> null then
    BkgTicketsCds['TourDate'] := Detail1Cds['TourDate'];

  BkgTicketsCds['GenerateVoucher'] := true;

end;

procedure TBookingsForm.BkgAccCdsAfterInsert(DataSet: TDataSet);
var
  x_hotels_id, x_cities_id, x_hotel_cities_id: integer;
begin
  inherited;

  if Detail1Cds['TourCode'] <> null then
    begin
      x_hotels_id := GetDefaultTourHotel(Detail1Cds['TourCode']);
      if x_hotels_id > 0 then
        begin
          BkgAccCds['Addressbook_id'] := x_hotels_id;
          x_hotel_cities_id := GetAddressbookCity(x_hotels_id);
          if x_hotel_cities_id > 0 then
            BkgAccCds['Hotel_Cities_id'] := x_hotel_cities_id;
        end;

      x_cities_id := GetDefaultTourCity(Detail1Cds['TourCode']);
      if x_cities_id > 0 then
        BkgAccCds['Cities_id'] := x_cities_id;

    end;

  if Detail1Cds['TourCode'] <> null then
    BkgAccCds['TourCode'] := Detail1Cds['TourCode'];

  if Detail1Cds['TourDate'] <> null then
    BkgAccCds['TourDate'] := Detail1Cds['TourDate'];

  BkgAccCds['AC'] := True;

  BkgAccCds['GenerateVoucher'] := True;

end;


procedure TBookingsForm.BkgSsCdsAfterInsert(DataSet: TDataSet);
var
  x_agents_id, x_hotels_id, x_cities_id: integer;
begin
  inherited;

  if Detail1Cds['TourCode'] <> null then
    begin
      x_agents_id := GetDefaultTourAgent(Detail1Cds['TourCode']);
      if x_agents_id > 0 then
        BkgSsCds['Addressbook_id'] := x_agents_id;

      x_hotels_id := GetDefaultTourHotel(Detail1Cds['TourCode']);
      if x_hotels_id > 0 then
        BkgSsCds['Hotel_Addressbook_id'] := x_hotels_id;

      x_cities_id := GetDefaultTourCity(Detail1Cds['TourCode']);
      if x_cities_id > 0 then
        begin
          BkgSsCds['Service_Cities_id'] := x_cities_id;
          BkgSsCds['To_Cities_id'] := x_cities_id;
        end;

    end;

  if Detail1Cds['TourCode'] <> null then
    BkgSsCds['TourCode'] := Detail1Cds['TourCode'];

  if Detail1Cds['TourDate'] <> null then
    BkgSsCds['TourDate'] := Detail1Cds['TourDate'];

  BkgSsCds['AC'] := False;
  BkgSsCds['GenerateVoucher'] := True;
  BkgSsCds['Transfer'] := False;
  BkgSsCds['EntranceFees'] := True;
  BkgSsCds['Guide'] := True;
  BkgSsCds['Transport'] := False;
  BkgSsCds['NoOfVehicles'] := 0;

end;

procedure TBookingsForm.BkgTrsfCdsAfterInsert(DataSet: TDataSet);
var
  x_agents_id, x_hotels_id, x_cities_id: integer;
begin
  inherited;

  if Detail1Cds['TourCode'] <> null then
    begin
      x_agents_id := GetDefaultTourAgent(Detail1Cds['TourCode']);
      if x_agents_id > 0 then
        BkgTrsfCds['Addressbook_id'] := x_agents_id;

      x_hotels_id := GetDefaultTourHotel(Detail1Cds['TourCode']);
      if x_hotels_id > 0 then
        BkgTrsfCds['Hotel_Addressbook_id'] := x_hotels_id;

      x_cities_id := GetDefaultTourCity(Detail1Cds['TourCode']);
      if x_cities_id > 0 then
        begin
          BkgTrsfCds['Service_Cities_id'] := x_cities_id;
          BkgTrsfCds['To_Cities_id'] := x_cities_id;
        end;

    end;

  if Detail1Cds['TourCode'] <> null then
    BkgTrsfCds['TourCode'] := Detail1Cds['TourCode'];

  if Detail1Cds['TourDate'] <> null then
    BkgTrsfCds['TourDate'] := Detail1Cds['TourDate'];

  BkgTrsfCds['AC'] := False;
  BkgTrsfCds['GenerateVoucher'] := True;
  BkgTrsfCds['Transfer'] := True;
  BkgTrsfCds['Transport'] := True;
  BkgTrsfCds['NoOfVehicles'] := 1;

end;

procedure TBookingsForm.BkgPackCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if Detail1Cds['TourCode'] <> null then
    BkgPackCds['TourCode'] := Detail1Cds['TourCode'];

  if Detail1Cds['TourDate'] <> null then
    BkgPackCds['TourDate'] := Detail1Cds['TourDate'];

  BkgPackCds['GenerateVoucher'] := True;

end;

procedure TBookingsForm.BkgTransCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if Detail1Cds['TourCode'] <> null then
    BkgTransCds['TourCode'] := Detail1Cds['TourCode'];

  if Detail1Cds['TourDate'] <> null then
    BkgTransCds['TourDate'] := Detail1Cds['TourDate'];

  BkgTransCds['DropOffDays'] := 0;
  BkgTransCds['DropOffKms'] := 0;
  BkgTransCds['AC'] := False;
  BkgTransCds['NoOfVehicles'] := 1;
  BkgTransCds['GenerateVoucher'] := True;

end;

procedure TBookingsForm.DimTabs;
var
  x_TabPositioned: boolean;
begin

  x_TabPositioned := false;
  cxPageControl4.ActivePageIndex := 0;

  if BkgTicketsCds.State in [dsBrowse, dsEdit, dsInsert] then
    begin
      if BkgTicketsCds.RecordCount = 0 then
        cxTabsheetTickets.ImageIndex := -1
      else
        begin
          cxTabsheetTickets.Imageindex := 0;
          cxPageControl4.ActivePageIndex := 0;
          x_TabPositioned := true;
        end;
    end;

  if BkgAccCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if BkgAccCds.RecordCount = 0 then
        cxTabsheetAcc.ImageIndex := -1
      else
        begin
          cxTabsheetAcc.Imageindex := 1;
          if (not x_TabPositioned) then
            cxPageControl4.ActivePageIndex := 1;
          x_TabPositioned := true;
        end;
    end;

  if BkgSsCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if BkgSsCds.RecordCount = 0 then
        cxTabsheetSs.ImageIndex := -1
      else
        begin
          cxTabsheetSs.Imageindex := 2;
          if (not x_TabPositioned) then
            cxPageControl4.ActivePageIndex := 2;
          x_TabPositioned := true;
        end;
    end;

  if BkgTrsfCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if BkgTrsfCds.RecordCount = 0 then
        cxTabsheetTrsf.ImageIndex := -1
      else
        begin
          cxTabsheetTrsf.Imageindex := 3;
          if (not x_TabPositioned) then
            cxPageControl4.ActivePageIndex := 3;
          x_TabPositioned := true;
        end;
    end;

  if BkgPackCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if BkgPackCds.RecordCount = 0 then
        cxTabsheetPack.ImageIndex := -1
      else
        begin
          cxTabsheetPack.Imageindex := 4;
          if (not x_TabPositioned) then
            cxPageControl4.ActivePageIndex := 4;
          x_TabPositioned := true;
        end;
    end;

  if BkgTransCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if BkgTransCds.RecordCount = 0 then
        cxTabsheetTrans.ImageIndex := -1
      else
        begin
          cxTabsheetTrans.Imageindex := 5;
          if (not x_TabPositioned) then
            cxPageControl4.ActivePageIndex := 5;
          x_TabPositioned := true;
        end;
    end;

  if ((MasterCds['history'] <> null) and (trim(MasterCds['history']) <> '')) or
     ((MasterCds['notes'] <> null) and (trim(MasterCds['notes']) <> '')) then
    begin
      cxTabsheetHistory.ImageIndex := 6;
      if (not x_TabPositioned) then
        cxPageControl4.ActivePageIndex := 6;
    end
  else
      cxTabsheetHistory.Imageindex := -1;

end;


procedure TBookingsForm.MasterCdscountries_idChange(Sender: TField);
var
  x_currencies_id: integer;
begin
  inherited;

  if MasterCds['countries_id'] <> null then
    begin
      x_currencies_id := GetDefaultCurrencyFromCountry(MasterCds['countries_id']);

      if x_currencies_id >= 0 then
        MasterCds['currencies_id'] := x_currencies_id;

    end;

end;

procedure TBookingsForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['Bookings_id'] <> null) and (Detail1Cds['BookingsTours_id'] <> null) then
    begin
      CancelQuotation(Detail1Cds['Bookings_id'], Detail1Cds['BookingsTours_id']);
      UpdateBookingDetails(Detail1Cds['Bookings_id']);
    end;

end;

procedure TBookingsForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateBookingDetails(MasterCds['Bookings_id']);
end;

procedure TBookingsForm.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateBookingDetails(Detail2Cds['Bookings_id']);
end;

procedure TBookingsForm.CancelQuotation(x_Bookings_id, x_BookingsTours_id: integer);
var
  x_QueryString: String;
  x_quotations_id: integer;
  GpSds: TSQLDataSet;
begin

  x_QueryString := 'SELECT Quotations_id FROM Bookings WHERE Bookings_id = ' + IntToStr(x_Bookings_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['Quotations_id'] <> null) then
    begin
      x_quotations_id := GpSds['Quotations_id'];

      if Detail1Cds['CancelledOn'] <> null then
        begin
          GpSds.Close;
          GpSds.CommandText := 'UPDATE Quotations SET CancelledOn = ' +
            QuotedStr(FormatDateTime('mm/dd/yyyy', Detail1Cds['CancelledOn'])) + ' ' +
            'WHERE Quotations_id = ' + IntToStr(x_quotations_id);
          GpSds.ExecSQL;
        end
      else
        begin
          GpSds.Close;
          GpSds.CommandText := 'UPDATE Quotations SET CancelledOn = null ' +
            'WHERE Quotations_id = ' + IntToStr(x_quotations_id);
          GpSds.ExecSQL;
        end;
    end;

  if (Detail1Cds['TourCode'] <> null) and (Detail1Cds['TourDate'] <> null) and
     (Detail1Cds['CancelledOn'] <> null) and (MasterCds['Addressbook_id'] <> null) then
    begin

      x_QueryString := ' EXEC p_CancelQuoModule ' +
        QuotedStr(Detail1Cds['TourCode']) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['TourDate'])) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['CancelledOn'])) + ',' +
        IntToStr(MasterCds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

end;


procedure TBookingsForm.cxSearchTextEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if ((key <> #13) or (length(trim(cxSearchTextEdit.Text)) = 0)) then
    exit;

  SearchBooking;

end;

procedure TBookingsForm.SearchBooking;
var
  i, x_option: integer;
  x_str: string;
begin

  x_option := cxRadioGroup.ItemIndex + 1;

  if x_option = 1 then
    x_str := 'exec [p_BookingSearch] ' + QuotedStr(Trim(cxSearchTextEdit.Text)) + ', null, null, null, 1'
  else if x_option = 2 then
    x_str := 'exec [p_BookingSearch] null,' + Trim(cxSearchTextEdit.Text) + ', null, null, 2'
  else if x_option = 3 then
    x_str := 'exec [p_BookingSearch] null, null,' + QuotedStr(Trim(cxSearchTextEdit.Text)) + ', null, 3'
  else if x_option = 4 then
    x_str := 'exec [p_BookingSearch] null, null, null,' + QuotedStr(Trim(cxSearchTextEdit.Text)) + ', 4';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;

  SearchSortForm.SearchSds.CommandText := x_str;

  SearchSortForm.SearchSds.Open;
  SearchSortForm.SearchCds.Open;

  for i := 0 to 4 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'B_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Bookings_id';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Reference';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'PaxName';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'TourCode';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Bookings_id';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Reference';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Name';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'TourCode';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'b_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      if SearchSortForm.SearchCds.RecordCount = 1 then
        FilterData(SearchSortForm.SearchCds['Bookings_id'])
      else
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              FilterData(SearchSortForm.SearchCds['Bookings_id']);
            end;

        end;
    end
  else
    ShowMessage('Record not found');

  SearchSortForm.Free;
  SearchSortForm := nil;

  DimTabs;

end;

procedure TBookingsForm.FilterData(x_bookings_id: integer);
begin

  VoucherCds.Close;
  VoucherSds.Close;
  VoucherSds.Params[0].Value := x_bookings_id;
  VoucherSds.Open;
  VoucherCds.Open;


  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_bookings_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TBookingsForm.cxGridDBBandedTableView4AgentLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;

  if BkgTicketsCds['Agent_Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(BkgTicketsCds['Agent_Cities_id']) + ' ' +
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
      if BkgTicketsCds.State = dsBrowse then
        BkgTicketsCds.Edit;
      BkgTicketsCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if BkgTicketsCds.State = dsBrowse then
            BkgTicketsCds.Edit;

          BkgTicketsCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TBookingsForm.cxGridDBBandedTableView4flightnoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if (BkgTicketsCds['Tickets_id'] = null) or (BkgTicketsCds['Tickets_id'] = 0) then
    exit;

  if (BkgTicketsCds['From_Cities_id'] = null) or (BkgTicketsCds['To_Cities_id'] = null)then
    raise Exception.Create('Please select the From & To Cities');

  if (BkgTicketsCds['TravelDate'] = null) then
    raise Exception.Create('Please enter the travel date');

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if BkgTicketsCds['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if BkgTicketsCds['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if BkgTicketsCds['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if BkgTicketsCds['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := BkgTicketsCds['From_Cities_id'];
  TicketsForm_ToCities_id := BkgTicketsCds['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;

  if TicketsForm.ModalResult = mrOK then
    begin
      if BkgTicketsCds.State = dsBrowse then
        BkgTicketsCds.Edit;

      if BkgTicketsCds['Tickets_id'] = 1 then
        begin

          if TicketsForm.FlightsCds['FlightNo'] <> null then
            BkgTicketsCds['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

          if TicketsForm.FlightsCds['Arrival'] <> null then
            BkgTicketsCds['ETA'] := TicketsForm.FlightsCds['Arrival'];

          if TicketsForm.FlightsCds['Departure'] <> null then
            BkgTicketsCds['ETD'] := TicketsForm.FlightsCds['Departure'];

        end;

      if BkgTicketsCds['Tickets_id'] = 2 then
        begin

          if TicketsForm.TrainsCds['TrainNo'] <> null then
            BkgTicketsCds['FlightNo'] := TicketsForm.TrainsCds['TrainNo'] + ' ' + TicketsForm.TrainsCds['TrainName'];

          if TicketsForm.TrainsCds['Arrival'] <> null then
            BkgTicketsCds['ETA'] := TicketsForm.TrainsCds['Arrival'];

          if TicketsForm.TrainsCds['Departure'] <> null then
            BkgTicketsCds['Etd'] := TicketsForm.TrainsCds['Departure'];

          if TicketsForm.TrainsCds['FromStations_id'] <> null then
            BkgTicketsCds['From_TrainStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

          if TicketsForm.TrainsCds['ToStations_id'] <> null then
            BkgTicketsCds['To_TrainStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

        end;

      if BkgTicketsCds['Tickets_id'] = 3 then
        begin

          if TicketsForm.BusesCds['busno'] <> null then
            BkgTicketsCds['FlightNo']:= TicketsForm.BusesCds['BusNo'];

          if TicketsForm.BusesCds['Arrival'] <> null then
            BkgTicketsCds['ETA'] := TicketsForm.BusesCds['Arrival'];

          if TicketsForm.BusesCds['Departure'] <> null then
            BkgTicketsCds['ETD'] := TicketsForm.BusesCds['Departure'];
        end;

      if BkgTicketsCds['Tickets_id'] = 4 then
        begin
          BkgTicketsCds['FlightNo']:= NULL;
          BkgTicketsCds['ETA'] := NULL;
          BkgTicketsCds['ETD'] := NULL;
        end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TBookingsForm.cxGridDBBandedTableView4FromTrainStationLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
  QueryString: string;
begin
  inherited;

  if (BkgTicketsCds['from_cities_id'] = null) or (BkgTicketsCds['From_Cities_id'] = 0) then
    exit;

  if BkgTicketsCds.State in [dsBrowse] then
    BkgTicketsCds.Edit;

  QueryString := 'SELECT TrainStations_id, StationName ' +
    'FROM TrainStations ' +
    'WHERE Cities_id =  ' + IntToStr(BkgTicketsCds['From_Cities_id']) + ' ' +
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
      if BkgTicketsCds.State = dsBrowse then
        BkgTicketsCds.Edit;
      BkgTicketsCds['From_TrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingsForm.cxGridDBBandedTableView4ToTrainStationLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
  QueryString: string;
begin
  inherited;

  if (BkgTicketsCds['to_cities_id'] = null) or (BkgTicketsCds['To_Cities_id'] = 0) then
    exit;

  if BkgTicketsCds.State in [dsBrowse] then
    BkgTicketsCds.Edit;

  QueryString := 'SELECT TrainStations_id, StationName ' +
    'FROM TrainStations ' +
    'WHERE Cities_id =  ' + IntToStr(BkgTicketsCds['To_Cities_id']) + ' ' +
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
      if BkgTicketsCds.State = dsBrowse then
        BkgTicketsCds.Edit;

      BkgTicketsCds['To_TrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingsForm.cxGridDBBandedTableView4ClassLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgTicketsCds['Tickets_id'] = null then
    begin
      ShowMessage('Please enter the Mode first');
      exit;
    end;

  if BkgTicketsCds.State in [dsBrowse] then
    BkgTicketsCds.Edit;

  QueryString := 'SELECT Class_id, Class ' +
    'FROM Class ' +
    'WHERE Tickets_id =  ' + IntToStr(BkgTicketsCds['Tickets_id']) + ' ' +
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
      if BkgTicketsCds.State = dsBrowse then
        BkgTicketsCds.Edit;
      BkgTicketsCds['Classid'] := SearchSortForm.SearchCds['Class_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingsForm.BkgAccCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (BkgAccCds['DateIn'] = null) or (BkgAccCds['DateOut'] = null) then
    BkgAccCds['Nights'] := 0
  else
    BkgAccCds['Nights'] := GetNumNights(BkgAccCds['DateIn'], BkgAccCds['DateOut']);
end;

procedure TBookingsForm.cxGridDBBandedTableView1HotelLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  inherited;

  if BkgAccCds['Hotel_Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''H'') ' +
    'WHERE Cities_id = ' + IntToStr(BkgAccCds['Hotel_Cities_id']) + ' ' +
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
      BkgAccCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if BkgAccDs.State = dsBrowse then
            BkgAccCds.Edit;
          BkgAccCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;

  SearchSortForm.Release;
  SearchSortForm := nil;

end;

procedure TBookingsForm.cxGridDBBandedTableView5ServicesLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgSsCds['service_cities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if BkgSsCds.State in [dsBrowse] then
    BkgSsCds.Edit;

  QueryString := 'SELECT s.Services_id, s.Description, a.Organisation, s.Cities_id, a.Addressbook_id ' +
    'FROM Services s LEFT JOIN Addressbook a ON s.Addressbook_id = a.Addressbook_id ' +
    'WHERE s.Cities_id = ' + IntToStr(BkgSsCds['service_cities_id']) + ' ' +
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
      if BkgSsCds.State = dsbrowse then
        BkgSsCds.Edit;
      BkgSsCds['services_id'] := SearchSortForm.SearchCds['services_id'];
      BkgSsCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingsForm.cxGridDBBandedTableView5AgentLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgSsCds['services_id'] = null then
    begin
      ShowMessage('Please enter the Service first');
      exit;
    end;

  if BkgSsCds.State in [dsBrowse] then
    BkgSsCds.Edit;

  QueryString := 'SELECT csd.Addressbook_id, a.Organisation ' +
    'FROM CostServicesDistinct csd LEFT JOIN Addressbook a ON csd.Addressbook_id = a.Addressbook_id ' +
    'WHERE services_id = ' + IntToStr(BkgSsCds['services_id']) + ' ' +
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
      if BkgSsCds.State = dsBrowse then
        BkgSsCds.Edit;
      BkgSsCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingsForm.cxGridDBBandedTableView6ServicesLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgTrsfCds['service_cities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if BkgTrsfCds.State in [dsBrowse] then
    BkgTrsfCds.Edit;

  QueryString := 'SELECT s.Services_id, s.Description, a.Organisation, s.Cities_id, a.Addressbook_id ' +
    'FROM Services s LEFT JOIN Addressbook a ON s.Addressbook_id = a.Addressbook_id ' +
    'WHERE s.Cities_id = ' + IntToStr(BkgTrsfCds['service_cities_id']) + ' ' +
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
      if BkgTrsfCds.State = dsBrowse then
        BkgTrsfCds.Edit;
      BkgTrsfCds['services_id'] := SearchSortForm.SearchCds['services_id'];
      BkgTrsfCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingsForm.cxGridDBBandedTableView6AgentLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgTrsfCds['services_id'] = null then
    begin
      ShowMessage('Please enter the Service first');
      exit;
    end;

  if BkgTrsfCds.State in [dsBrowse] then
    BkgTrsfCds.Edit;

  QueryString := 'SELECT csd.Addressbook_id, a.Organisation ' +
    'FROM CostServicesDistinct csd LEFT JOIN Addressbook a ON csd.Addressbook_id = a.Addressbook_id ' +
    'WHERE services_id = ' + IntToStr(BkgTrsfCds['services_id']) + ' ' +
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
      if BkgTrsfCds.State = dsBrowse then
        BkgTrsfCds.Edit;

      BkgTrsfCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingsForm.cxGridDBBandedTableView7vehicles_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgPackCds['from_addressbook_id'] = null then
    begin
      ShowMessage('Please enter "From Agent" first');
      exit;
    end;

  if BkgPackCds.State in [dsBrowse] then
    BkgPackCds.Edit;

  QueryString := 'SELECT distinct CST.Vehicles_id, a.vehicle as Automobile ' +
    'FROM CostServices AS CS, CostServicesTransport AS CST, vehicles as A ' +
    'WHERE CS.CostServices_id = CST.CostService_id ' +
    'AND CST.Vehicles_id = A.vehicles_id ' +
    'AND CS.Addressbook_id = ' + IntToStr(BkgPackCds['From_Addressbook_id']) + ' ';

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Vehicles_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Automobile';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Vehicle';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Vehicles_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if BkgPackCds.State = dsBrowse then
        BkgPackCds.Edit;
      BkgPackCds['vehicles_id'] := SearchSortForm.SearchCds['vehicles_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingsForm.cxGridDBBandedTableView8AgentLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: Integer;
begin
  inherited;

  if BkgTransCds['Agent_Cities_id'] = null then
    exit;

  if BkgTransCds.State in [dsBrowse] then
    BkgTransCds.Edit;

  QueryString := 'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(BkgTransCds['Agent_Cities_id']) + ' ' +
    ' ORDER BY Organisation ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

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

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if BkgTransCds.State = dsBrowse then
        BkgTransCds.Edit;

      BkgTransCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];

    end;

  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TBookingsForm.cxGridDBBandedTableView8VehicleLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgTransCds['addressbook_id'] = null then
    begin
      ShowMessage('Please enter "Agent" first');
      exit;
    end;

  if BkgTransCds.State in [dsBrowse] then
    BkgTransCds.Edit;

  QueryString := 'SELECT distinct CST.Vehicles_id, a.vehicle as Automobile ' +
    'FROM CostServices AS CS, CostServicesTransport AS CST, vehicles as A ' +
    'WHERE CS.CostServices_id = CST.CostService_id ' +
    'AND CST.Vehicles_id = A.vehicles_id ' +
    'AND CS.Addressbook_id = ' + IntToStr(BkgTransCds['Addressbook_id']) + ' ';

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Vehicles_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Automobile';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Vehicle';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Vehicles_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if BkgTransCds.State = dsBrowse then
        BkgTransCds.Edit;
      BkgTransCds['vehicles_id'] := SearchSortForm.SearchCds['vehicles_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingsForm.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (MasterCds['Bookings_id'] = null) or (MasterCds['Bookings_id'] <= 0) then
    abort;
end;

procedure TBookingsForm.cxGridDBBandedTableView1RoomTypeLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if BkgAccCds['Addressbook_id'] = null then
    begin
      ShowMessage('Please enter the Hotel first');
      exit;
    end;

  if BkgAccCds.State in [dsBrowse] then
    BkgAccCds.Edit;

  QueryString := 'SELECT RoomTypes_id, RoomType, Addressbook_id, AC ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(BkgAccCds['Addressbook_id']) + ') ';

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
      if BkgAccCds.State = dsBrowse then
        BkgAccCds.Edit;
      BkgAccCds['RoomTypes_id'] := SearchSortForm.SearchCds['RoomTypes_id'];
      BkgAccCds['AC'] := SearchSortForm.SearchCds['AC'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
