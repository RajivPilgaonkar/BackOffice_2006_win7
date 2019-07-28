unit BackOfficeDM;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, cxStyles, DBClient,
  Provider, ImgList, Controls;

type
  TBackOfficeDataModule = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    SQLConnection1: TSQLConnection;
    cxStyleRepository: TcxStyleRepository;
    cxStyleOddRow: TcxStyle;
    cxStyleEvenRow: TcxStyle;
    cxStyleHeader: TcxStyle;
    cxStyleBackground: TcxStyle;
    cxStyleFormBackground: TcxStyle;
    cxStyleControlBackground: TcxStyle;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesDS: TDataSource;
    StatesSds: TSQLDataSet;
    StatesDsp: TDataSetProvider;
    StatesCds: TClientDataSet;
    StatesDs: TDataSource;
    StatesCdsstates_id: TIntegerField;
    StatesCdsstate: TStringField;
    StatesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesDS: TDataSource;
    CountriesCdscountries_id: TIntegerField;
    CountriesCdscountry: TStringField;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesDS: TDataSource;
    CurrenciesCdscurrencies_id: TIntegerField;
    CurrenciesCdscurrency: TStringField;
    BankAccountsSds: TSQLDataSet;
    BankAccountsDsp: TDataSetProvider;
    BankAccountsCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    BankAccountsDS: TDataSource;
    OrgSds: TSQLDataSet;
    OrgDsp: TDataSetProvider;
    OrgCds: TClientDataSet;
    OrgDS: TDataSource;
    OrgSdsAddressbook_id: TIntegerField;
    OrgSdsOrganisation: TStringField;
    OrgCdsAddressbook_id: TIntegerField;
    OrgCdsOrganisation: TStringField;
    OrgSdsCity: TStringField;
    OrgCdsCity: TStringField;
    BankSds: TSQLDataSet;
    BankDsp: TDataSetProvider;
    BankCds: TClientDataSet;
    BankDS: TDataSource;
    CategoriesSds: TSQLDataSet;
    CategoriesDsp: TDataSetProvider;
    CategoriesCds: TClientDataSet;
    CategoriesDS: TDataSource;
    CategoriesCdsCategories_id: TIntegerField;
    CategoriesCdsCategory: TStringField;
    CategoriesCdsDescription: TStringField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDS: TDataSource;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDS: TDataSource;
    BankCdsAddressbook_id: TIntegerField;
    BankCdsOrganisation: TStringField;
    BankCdsCity: TStringField;
    BankCdsCities_id: TIntegerField;
    TourSds: TSQLDataSet;
    TourDsp: TDataSetProvider;
    TourCds: TClientDataSet;
    TourDS: TDataSource;
    TourCdsTourCodes_id: TIntegerField;
    TourCdsTourCode: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    HoteDS: TDataSource;
    VehCatSds: TSQLDataSet;
    VehCatDsp: TDataSetProvider;
    VehCatCds: TClientDataSet;
    VehCatDS: TDataSource;
    VehCatCdsVehicleCategories_id: TIntegerField;
    VehCatCdsCategory: TStringField;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDS: TDataSource;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    FolioCatSds: TSQLDataSet;
    FolioCatDsp: TDataSetProvider;
    FolioCatCds: TClientDataSet;
    FolioCatDS: TDataSource;
    FolioCatCdsFolioCategories_id: TIntegerField;
    FolioCatCdsDescription: TStringField;
    OrgContactSds: TSQLDataSet;
    IntegerField5: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    OrgContactDsp: TDataSetProvider;
    OrgContactCds: TClientDataSet;
    OrgContactDS: TDataSource;
    OrgContactCdsAddressbook_id: TIntegerField;
    OrgContactCdsOrganisation: TStringField;
    OrgContactCdsCity: TStringField;
    TaxSds: TSQLDataSet;
    TaxDsp: TDataSetProvider;
    TaxCds: TClientDataSet;
    TaxCdstaxes_id: TIntegerField;
    TaxCdstax: TStringField;
    TaxeDS: TDataSource;
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
    TicketsSDS: TSQLDataSet;
    TicketsDSP: TDataSetProvider;
    TicketsCDS: TClientDataSet;
    TicketsCDStickets_id: TIntegerField;
    TicketsCDSdetails: TStringField;
    TicketsDS: TDataSource;
    TrainCategoriesSds: TSQLDataSet;
    TransferTypesSDS: TSQLDataSet;
    TransferTypesDSP: TDataSetProvider;
    TransferTypesCDS: TClientDataSet;
    TransferTypesCDStransfertypes_id: TIntegerField;
    TransferTypesCDStransfer: TStringField;
    TransferTypesCDStransfercode: TStringField;
    TransferTypesDS: TDataSource;
    TrainCategoriesDsp: TDataSetProvider;
    TrainCategoriesCds: TClientDataSet;
    TrainCategoriesDS: TDataSource;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassDs: TDataSource;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    CompanySds: TSQLDataSet;
    CompanyDsp: TDataSetProvider;
    CompanyCds: TClientDataSet;
    CompanyDS: TDataSource;
    CompanyCdscompanies_id: TIntegerField;
    CompanyCdsname: TStringField;
    CompanyCdsdefaultcompany: TIntegerField;
    CompanyCdspan: TStringField;
    CompanyCdscountries_id: TIntegerField;
    CompanyCdscurrencies_id: TIntegerField;
    SupplementsSds: TSQLDataSet;
    SupplementsDsp: TDataSetProvider;
    SupplementsCds: TClientDataSet;
    SupplementsDS: TDataSource;
    SupplementsCdssupplements_id: TIntegerField;
    SupplementsCdssupplement: TStringField;
    VoucherSDS: TSQLDataSet;
    VoucherDSP: TDataSetProvider;
    VoucherCDS: TClientDataSet;
    VoucherCDSvouchers_id: TIntegerField;
    VoucherCDSvoucherno: TIntegerField;
    VoucherCDSyearref: TIntegerField;
    VoucherDS: TDataSource;
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
    AgentCitySds: TSQLDataSet;
    AgentCityDsp: TDataSetProvider;
    AgentCityCds: TClientDataSet;
    AgentCityCdsCities_id: TIntegerField;
    AgentCityCdsCity: TStringField;
    AgentCityDs: TDataSource;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsMasters_id: TIntegerField;
    TourCodeDs: TDataSource;
    PackagesSDS: TSQLDataSet;
    PackagesDSP: TDataSetProvider;
    PackagesCDS: TClientDataSet;
    PackagesCDSPackages_id: TIntegerField;
    PackagesCDSPackage: TStringField;
    PackagesDS: TDataSource;
    ServicesSDS: TSQLDataSet;
    ServicesDSP: TDataSetProvider;
    ServicesCDS: TClientDataSet;
    ServicesCDSServices_id: TIntegerField;
    ServicesCDSService: TStringField;
    ServicesDS: TDataSource;
    ServiceCitiesSds: TSQLDataSet;
    ServiceCitiesDsp: TDataSetProvider;
    ServiceCitiesCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField12: TStringField;
    ServiceCitiesDS: TDataSource;
    WebUsersSDS: TSQLDataSet;
    WebUsersDSP: TDataSetProvider;
    WebUsersCDS: TClientDataSet;
    WebUsersCDSweb_users_id: TIntegerField;
    WebUsersCDSweb_user: TStringField;
    WebUsersCDSusername: TStringField;
    WebUsersDS: TDataSource;
    SexSds: TSQLDataSet;
    SexDsp: TDataSetProvider;
    SexCds: TClientDataSet;
    SexDS: TDataSource;
    SexCdssex_id: TIntegerField;
    SexCdssex: TStringField;
    SexCdssalutation: TStringField;
    PackagesCDSAddressbook_id: TIntegerField;
    PackagesCDSOrganisation: TStringField;
    LocalPaymentTypeSds: TSQLDataSet;
    LocalPaymentTypeDsp: TDataSetProvider;
    LocalPaymentTypeCds: TClientDataSet;
    LocalPaymentTypeDS: TDataSource;
    LocalPaymentTypeCdsLocalPaymentTypes_id: TIntegerField;
    LocalPaymentTypeCdsLocalPayment: TStringField;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeCds: TClientDataSet;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    MasterCodeDS: TDataSource;
    TourCode2Sds: TSQLDataSet;
    TourCode2Dsp: TDataSetProvider;
    TourCode2Cds: TClientDataSet;
    TourCode2Ds: TDataSource;
    TourCode2CdsTourCodes_id: TIntegerField;
    TourCode2CdsTourcode: TStringField;
    InvoiceTypeDS: TDataSource;
    InvoiceTypeCds: TClientDataSet;
    InvoiceTypeCdsInvoiceTypes_id: TIntegerField;
    InvoiceTypeCdsType: TStringField;
    InvoiceTypeDSP: TDataSetProvider;
    InvoiceTypeSds: TSQLDataSet;
    RoomSizeSds: TSQLDataSet;
    RoomSizeDsp: TDataSetProvider;
    RoomSizeCds: TClientDataSet;
    RoomSizeDS: TDataSource;
    RoomSizeCdsroomsizes_id: TIntegerField;
    RoomSizeCdsroomsize: TStringField;
    RoomSizeCdspax: TIntegerField;
    AccountHeadsSds: TSQLDataSet;
    AccountHeadsDsp: TDataSetProvider;
    AccountHeadsCds: TClientDataSet;
    AccountHeadsDS: TDataSource;
    AccountHeadsCdsaccountheads_id: TIntegerField;
    AccountHeadsCdsaccountheadsno: TIntegerField;
    AccountHeadsCdsdescription: TStringField;
    AccountHeadsCdsfolios_id: TIntegerField;
    AccountHeadsCdscompanies_id: TIntegerField;
    AccountHeadsCdsaddressbook_id: TIntegerField;
    AccountHeadsCdsactive: TBooleanField;
    DivisionSds: TSQLDataSet;
    DivisionDsp: TDataSetProvider;
    DivisionCds: TClientDataSet;
    DivisionDS: TDataSource;
    DivisionCdsdivisions_id: TIntegerField;
    DivisionCdsdivision: TStringField;
    DivisionCdscompanies_id: TIntegerField;
    DivisionCdsdefaultdivision: TBooleanField;
    OfficeSds: TSQLDataSet;
    OfficeDsp: TDataSetProvider;
    OfficeCds: TClientDataSet;
    OfficeDS: TDataSource;
    OfficeCdsoffices_id: TIntegerField;
    OfficeCdsoffices: TStringField;
    OfficeCdsdefaultoffice: TBooleanField;
    OfficeCdscompanies_id: TIntegerField;
    TrainCategoriesCdstraincategories_id: TIntegerField;
    TrainCategoriesCdscategory: TStringField;
    TrainCategoriesCdsdefaultorder: TIntegerField;
    TrainCategoriesCdssectorfare: TBooleanField;
    cxStylePublished: TcxStyle;
    cxStyleContract: TcxStyle;
    CurrenciesCdscurrencycode: TStringField;
    FitAgentsSds: TSQLDataSet;
    FitAgentsDsp: TDataSetProvider;
    FitAgentsCds: TClientDataSet;
    FitAgentsDs: TDataSource;
    FitAgentsCdsFitAgents_id: TIntegerField;
    FitAgentsCdsFitAgent: TStringField;
    ServicesCDSDescription: TStringField;
    ServicesCDSActive: TBooleanField;
    DriveTypesSds: TSQLDataSet;
    DriveTypesDsp: TDataSetProvider;
    DriveTypesCds: TClientDataSet;
    DriveTypeDs: TDataSource;
    DriveTypesCdsDriveTypes_id: TIntegerField;
    DriveTypesCdsDriveType: TStringField;
    CarHireGroupsSds: TSQLDataSet;
    CarHireGroupsDsp: TDataSetProvider;
    CarHireGroupsCds: TClientDataSet;
    CarHireGroupsDs: TDataSource;
    CarHireGroupsCdsCarHireGroups_id: TIntegerField;
    CarHireGroupsCdsCarHireGroup: TStringField;
    CarHireGroupsCdsDefaultAgents_id: TIntegerField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    HotelCdsCities_id: TIntegerField;
    ImageList1: TImageList;
    cxStyleCream: TcxStyle;
    cxStyleLightBlueBackground: TcxStyle;
    procedure DataModuleCreate(Sender: TObject);
    procedure ReadIniFile;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BackOfficeDataModule: TBackOfficeDataModule;

implementation

uses MainFm, Forms;

{$R *.dfm}

procedure TBackOfficeDataModule.DataModuleCreate(Sender: TObject);
begin

  ReadIniFile;
  BackOfficeDataModule.SQLConnection.Connected := False;
  //MisDataModule.SQLConnection.ConnectionName := g_ConnectionName;
  BackOfficeDataModule.SQLConnection.Params[0]:= 'DriverName=SQLServer';
  BackOfficeDataModule.SQLConnection.Params[1]:= 'BlobSize=-1';
  BackOfficeDataModule.SQLConnection.Params[2]:= 'Hostname='+g_HostName;
  BackOfficeDataModule.SQLConnection.Params[3]:= 'DataBase='+g_DataBaseName;
  BackOfficeDataModule.SQLConnection.Params[4]:= 'User_Name='+g_UserName;
  BackOfficeDataModule.SQLConnection.Params[5]:= 'Password='+g_Password;

  BackOfficeDataModule.SQLConnection.Connected := True;

end;

procedure TBackOfficeDataModule.ReadIniFile;
var
  F_ini: Textfile;
  IniPath: string;
  s: string;

begin

  IniPath := ExtractFilePath(Application.ExeName) + '\BackOffice.ini';
  AssignFile(F_ini, IniPath);
  Reset(F_ini);
  g_ConnectionName := '';
  g_HostName := '';
  g_DataBaseName := '';
  g_UserName := '';
  g_Password := '';
  while (not EOF(F_ini)) do
    begin

      Readln(F_ini,S);

      if Pos('[ConnectionName]=',S) > 0 then
        g_ConnectionName := Copy(S,18,1000);

      if Pos('[HostName]=',S) > 0 then
        g_HostName := Copy(S,12,1000);

      if Pos('[DataBase]=',S) > 0 then
        g_DataBaseName := Copy(S,12,1000);

      if Pos('[User_Name]=',S) > 0 then
        g_UserName := Copy(S,13,1000);

      if Pos('[Password]=',S) > 0 then
        g_Password := Copy(S,12,1000);


    end;

  CloseFile(F_ini);
end;


end.
