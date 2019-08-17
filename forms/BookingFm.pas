unit BookingFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, dblookup, Buttons, cxPC,
  cxControls, cxSplitter, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, SqlExpr, DBClient, Provider,
  cxDBLookupComboBox, cxTimeEdit, cxButtonEdit, ImgList, cxCalendar,
  cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxCalc, cxNavigator, cxDBNavigator,
  cxCheckBox, cxLookAndFeelPainters, cxButtons, cxGroupBox, cxRadioGroup,
  cxLabel, Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, DateUtils;

type
  TBookingForm = class(TForm)
    TopPanel: TPanel;
    GridsPanel: TPanel;
    ClientsPanel: TPanel;
    BottomPanel: TPanel;
    GroupBox1: TcxGroupBox;
    Label2: TcxLabel;
    Label8: TcxLabel;
    Label6: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    DBText2: TDBText;
    GroupBox3: TcxGroupBox;
    GridsGB: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    TicketsTab: TcxTabSheet;
    AccomodationTab: TcxTabSheet;
    SightTab: TcxTabSheet;
    TransferTab: TcxTabSheet;
    PackagesTab: TcxTabSheet;
    TransportTab: TcxTabSheet;
    HistoryTab: TcxTabSheet;
    cxSplitter2: TcxSplitter;
    cxSplitter1: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    BookingDS: TDataSource;
    BookingDSP: TDataSetProvider;
    BookingCds: TClientDataSet;
    BookingSds: TSQLDataSet;
    BookingCdsbookings_id: TIntegerField;
    BookingCdsbooked: TSQLTimeStampField;
    BookingCdsaddressbook_id: TIntegerField;
    BookingCdsreference: TStringField;
    BookingCdsconfirmed: TSQLTimeStampField;
    BookingCdshistory: TMemoField;
    BookingCdscancelled: TSQLTimeStampField;
    BookingCdsnotes: TMemoField;
    BookingCdstravellingwith_bookings_id: TIntegerField;
    BookingCdsbookingsclients_id: TIntegerField;
    BookingCdscountries_id: TIntegerField;
    BookingCdscreated: TSQLTimeStampField;
    BookingCdssessionid: TStringField;
    BookingCdscurrencies_id: TIntegerField;
    BookingCdsweb_bookings_id: TIntegerField;
    BookingCdsweb_users_id: TIntegerField;
    BookingCdsCountryLookUp: TStringField;
    BookingCdsCurrenciesLookUp: TStringField;
    BookingClientsDS: TDataSource;
    BookingClientsCds: TClientDataSet;
    BookingClientsSds: TSQLDataSet;
    BookingClientsDsp: TDataSetProvider;
    BookingToursSds: TSQLDataSet;
    BookingToursDS: TDataSource;
    BookingToursCds: TClientDataSet;
    BookingToursDsp: TDataSetProvider;
    BookingToursCdsbookingstours_id: TIntegerField;
    BookingToursCdsbookings_id: TIntegerField;
    BookingToursCdstourcode: TStringField;
    BookingToursCdstourdate: TSQLTimeStampField;
    BookingToursCdstourleader: TBooleanField;
    BookingToursCdsbookedbypax: TSQLTimeStampField;
    BookingToursCdscancelledbypax: TSQLTimeStampField;
    BookingToursCdscancelledon: TSQLTimeStampField;
    BookingToursCdsbookedon: TSQLTimeStampField;
    BookingToursCdsconfirmedon: TSQLTimeStampField;
    BookingToursCdsweb_bookingstours_id: TIntegerField;
    BookingToursCdsquoted: TBCDField;
    BookingToursCdsnotes: TStringField;
    BookingClientsCdsbookingsclients_id: TIntegerField;
    BookingClientsCdsname: TStringField;
    BookingClientsCdsdateofbirth: TSQLTimeStampField;
    BookingClientsCdspassportno: TStringField;
    BookingClientsCdsdateofissue: TSQLTimeStampField;
    BookingClientsCdsplaceofissue: TStringField;
    BookingClientsCdsvalidto: TSQLTimeStampField;
    BookingClientsCdscountries_id: TIntegerField;
    BookingClientsCdsbookings_id: TIntegerField;
    BookingClientsCdsroomno: TIntegerField;
    BookingClientsCdsmale: TBooleanField;
    BookingClientsCdssinglesupplement: TBooleanField;
    BookingClientsCdsresident_countries_id: TIntegerField;
    BookingClientsCdscreated: TSQLTimeStampField;
    BookingClientsCdsweb_bookingsclients_id: TIntegerField;
    BookingClientsCdslocalpayment: TBooleanField;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1passportno: TcxGridDBColumn;
    cxGrid1DBTableView1dateofissue: TcxGridDBColumn;
    cxGrid1DBTableView1placeofissue: TcxGridDBColumn;
    cxGrid1DBTableView1validto: TcxGridDBColumn;
    cxGrid1DBTableView1countries_id: TcxGridDBColumn;
    cxGrid1DBTableView1male: TcxGridDBColumn;
    cxGrid1DBTableView1resident_countries_id: TcxGridDBColumn;
    TransportGrid: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    PackagesGrid: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    TransferGrid: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    SightGrid: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    AccomodationGrid: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    TicketsGrid: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    TicketsDS: TDataSource;
    TicketsCds: TClientDataSet;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    AccCDS: TClientDataSet;
    AccDS: TDataSource;
    AccSDS: TSQLDataSet;
    AccDSP: TDataSetProvider;
    SightCDS: TClientDataSet;
    SightDS: TDataSource;
    SightSDS: TSQLDataSet;
    SightDSP: TDataSetProvider;
    TransferCDS: TClientDataSet;
    TransferDS: TDataSource;
    TransferSDS: TSQLDataSet;
    TransferDSP: TDataSetProvider;
    PackCDS: TClientDataSet;
    PackDS: TDataSource;
    PackSDS: TSQLDataSet;
    PackDSP: TDataSetProvider;
    TransportCDS: TClientDataSet;
    TransportDS: TDataSource;
    TransportSDS: TSQLDataSet;
    TransportDSP: TDataSetProvider;
    vou: TIntegerField;
    TicketsCdsbookings_id: TIntegerField;
    TicketsCdsaddressbook_id: TIntegerField;
    TicketsCdsnooftickets: TIntegerField;
    TicketsCdsflightno: TStringField;
    TicketsCdsclassid: TIntegerField;
    TicketsCdstourcode: TStringField;
    TicketsCdsgeneratevoucher: TBooleanField;
    TicketsCdsvouchers_id: TIntegerField;
    TicketsCdsfrom_cities_id: TIntegerField;
    TicketsCdsto_cities_id: TIntegerField;
    TicketsCdstickets_id: TIntegerField;
    TicketsCdsto_trainstations_id: TIntegerField;
    TicketsCdsfrom_trainstations_id: TIntegerField;
    TicketsCdsnoofpax_resident: TIntegerField;
    TicketsCdsnocancelled: TIntegerField;
    TicketsCdscreated: TSQLTimeStampField;
    TicketsCdsnobooked: TIntegerField;
    TicketsCdsduration: TStringField;
    TicketsCdsnocancelled_resident: TIntegerField;
    TicketsCdsquoted: TBCDField;
    TicketsCdsweb_bookingstickets_id: TIntegerField;
    TicketsCdsnotes: TStringField;
    TicketsCdsinvoices_id: TIntegerField;
    AccCDSbookingsaccommodation_id: TIntegerField;
    AccCDSdatein: TSQLTimeStampField;
    AccCDSaddressbook_id: TIntegerField;
    AccCDSroomsizes_id: TIntegerField;
    AccCDSroomtypes_id: TIntegerField;
    AccCDSdateout: TSQLTimeStampField;
    AccCDSmealplans_id: TIntegerField;
    AccCDSbookings_id: TIntegerField;
    AccCDSquantity: TIntegerField;
    AccCDStourcode: TStringField;
    AccCDStourdate: TSQLTimeStampField;
    AccCDSintimated: TBooleanField;
    AccCDSac: TBooleanField;
    AccCDSgeneratevoucher: TBooleanField;
    AccCDSbookedon: TSQLTimeStampField;
    AccCDSconfirmedon: TSQLTimeStampField;
    AccCDSvouchers_id: TIntegerField;
    AccCDScities_id: TIntegerField;
    AccCDSsingles: TIntegerField;
    AccCDSdoubles: TIntegerField;
    AccCDScreated: TSQLTimeStampField;
    AccCDSeta: TSQLTimeStampField;
    AccCDSbookedbypax: TSQLTimeStampField;
    AccCDScancelledbypax: TSQLTimeStampField;
    AccCDScancelledon: TSQLTimeStampField;
    AccCDSweb_bookingsaccommodation_id: TIntegerField;
    AccCDSquoted: TBCDField;
    AccCDSnotes: TStringField;
    AccCDSinvoices_id: TIntegerField;
    SightCDSbookingsservices_id: TIntegerField;
    SightCDSdate: TSQLTimeStampField;
    SightCDSflightno: TStringField;
    SightCDStransfer: TBooleanField;
    SightCDSbookings_id: TIntegerField;
    SightCDSeta: TSQLTimeStampField;
    SightCDSvehicles_id: TIntegerField;
    SightCDStourcode: TStringField;
    SightCDStourdate: TSQLTimeStampField;
    SightCDSaddressbook_id: TIntegerField;
    SightCDSplacefrom: TStringField;
    SightCDSplaceto: TStringField;
    SightCDSgeneratevoucher: TBooleanField;
    SightCDSvouchers_id: TIntegerField;
    SightCDSservices_id: TIntegerField;
    SightCDSac: TBooleanField;
    SightCDShotel_addressbook_id: TIntegerField;
    SightCDSfrom_cities_id: TIntegerField;
    SightCDSto_cities_id: TIntegerField;
    SightCDSservice_cities_id: TIntegerField;
    SightCDStransfertypes_id: TIntegerField;
    SightCDSobsolete1: TIntegerField;
    SightCDSobsolete2: TIntegerField;
    SightCDSentrancefees: TBooleanField;
    SightCDSnoofpax_resident: TIntegerField;
    SightCDScreated: TSQLTimeStampField;
    SightCDSbookedbypax: TSQLTimeStampField;
    SightCDScancelledbypax: TSQLTimeStampField;
    SightCDSbookedon: TSQLTimeStampField;
    SightCDSconfirmedon: TSQLTimeStampField;
    SightCDScancelledon: TSQLTimeStampField;
    SightCDSguide: TBooleanField;
    SightCDSquoted: TBCDField;
    SightCDSnotes: TStringField;
    SightCDSinvoices_id: TIntegerField;
    TransferCDSbookingsservices_id: TIntegerField;
    TransferCDSdate: TSQLTimeStampField;
    TransferCDSflightno: TStringField;
    TransferCDStransfer: TBooleanField;
    TransferCDSbookings_id: TIntegerField;
    TransferCDSeta: TSQLTimeStampField;
    TransferCDSvehicles_id: TIntegerField;
    TransferCDStourcode: TStringField;
    TransferCDStourdate: TSQLTimeStampField;
    TransferCDSaddressbook_id: TIntegerField;
    TransferCDSplacefrom: TStringField;
    TransferCDSplaceto: TStringField;
    TransferCDSgeneratevoucher: TBooleanField;
    TransferCDSvouchers_id: TIntegerField;
    TransferCDSservices_id: TIntegerField;
    TransferCDSac: TBooleanField;
    TransferCDShotel_addressbook_id: TIntegerField;
    TransferCDSfrom_cities_id: TIntegerField;
    TransferCDSto_cities_id: TIntegerField;
    TransferCDSservice_cities_id: TIntegerField;
    TransferCDSobsolete1: TIntegerField;
    TransferCDSobsolete2: TIntegerField;
    TransferCDSentrancefees: TBooleanField;
    TransferCDSnoofpax_resident: TIntegerField;
    TransferCDScreated: TSQLTimeStampField;
    TransferCDSbookedbypax: TSQLTimeStampField;
    TransferCDScancelledbypax: TSQLTimeStampField;
    TransferCDSbookedon: TSQLTimeStampField;
    TransferCDSconfirmedon: TSQLTimeStampField;
    TransferCDScancelledon: TSQLTimeStampField;
    TransferCDSguide: TBooleanField;
    TransferCDSquoted: TBCDField;
    TransferCDSnotes: TStringField;
    TransferCDSinvoices_id: TIntegerField;
    PackCDSbookingspackages_id: TIntegerField;
    PackCDSbookings_id: TIntegerField;
    PackCDSpackages_id: TIntegerField;
    PackCDSfrom_date: TSQLTimeStampField;
    PackCDSfrom_time: TSQLTimeStampField;
    PackCDSfrom_addressbook_id: TIntegerField;
    PackCDSto_time: TSQLTimeStampField;
    PackCDSto_place: TStringField;
    PackCDSaddressbook_id: TIntegerField;
    PackCDStourcode: TStringField;
    PackCDStourdate: TSQLTimeStampField;
    PackCDSgeneratevoucher: TBooleanField;
    PackCDSvouchers_id: TIntegerField;
    PackCDSbookedon: TSQLTimeStampField;
    PackCDSconfirmedon: TSQLTimeStampField;
    PackCDScancelledon: TSQLTimeStampField;
    PackCDStransport: TBooleanField;
    PackCDSac: TBooleanField;
    PackCDSvehicles_id: TIntegerField;
    PackCDSnoofvehicles: TIntegerField;
    PackCDSfrom_place: TStringField;
    PackCDSbookedbypax: TSQLTimeStampField;
    PackCDScancelledbypax: TSQLTimeStampField;
    PackCDSquoted: TBCDField;
    PackCDSnotes: TStringField;
    TransportCDSbookingstransport_id: TIntegerField;
    TransportCDSbookings_id: TIntegerField;
    TransportCDSfrom_cities_id: TIntegerField;
    TransportCDSfromdate: TSQLTimeStampField;
    TransportCDSfromtime: TSQLTimeStampField;
    TransportCDSfromplace: TStringField;
    TransportCDSto_cities_id: TIntegerField;
    TransportCDStodate: TSQLTimeStampField;
    TransportCDStotime: TSQLTimeStampField;
    TransportCDStoplace: TStringField;
    TransportCDSvehicles_id: TIntegerField;
    TransportCDSdropoffdays: TIntegerField;
    TransportCDSdropoffkms: TIntegerField;
    TransportCDSaddressbook_id: TIntegerField;
    TransportCDStourcode: TStringField;
    TransportCDStourdate: TSQLTimeStampField;
    TransportCDSvouchers_id: TIntegerField;
    TransportCDSgeneratevoucher: TBooleanField;
    TransportCDSac: TBooleanField;
    TransportCDScreated: TSQLTimeStampField;
    TransportCDSnoofvehicles: TIntegerField;
    TransportCDSnoofpax: TIntegerField;
    TransportCDScancelledbypax: TSQLTimeStampField;
    TransportCDSbookedbypax: TSQLTimeStampField;
    TransportCDSbookedon: TSQLTimeStampField;
    TransportCDSconfirmedon: TSQLTimeStampField;
    TransportCDScancelledon: TSQLTimeStampField;
    TransportCDSweb_bookingstransport_id: TIntegerField;
    TransportCDSquoted: TBCDField;
    TransportCDSnotes: TStringField;
    ContactDS: TDataSource;
    ContactCDS: TClientDataSet;
    ContactSDS: TSQLDataSet;
    ContactDSP: TDataSetProvider;
    KeyIdDbText: TDBText;
    cxGridDBTableView7addressbook_id: TcxGridDBColumn;
    cxGridDBTableView7nooftickets: TcxGridDBColumn;
    cxGridDBTableView7traveldate: TcxGridDBColumn;
    cxGridDBTableView7flightno: TcxGridDBColumn;
    cxGridDBTableView7vouchers_id: TcxGridDBColumn;
    cxGridDBTableView7bookedon: TcxGridDBColumn;
    cxGridDBTableView7confirmedon: TcxGridDBColumn;
    cxGridDBTableView7cancelledon: TcxGridDBColumn;
    cxGridDBTableView7from_cities_id: TcxGridDBColumn;
    cxGridDBTableView7to_cities_id: TcxGridDBColumn;
    cxGridDBTableView7tickets_id: TcxGridDBColumn;
    cxGridDBTableView7etd: TcxGridDBColumn;
    cxGridDBTableView7eta: TcxGridDBColumn;
    cxGridDBTableView7to_trainstations_id: TcxGridDBColumn;
    cxGridDBTableView7from_trainstations_id: TcxGridDBColumn;
    cxGridDBTableView7quoted: TcxGridDBColumn;
    cxGridDBTableView5date: TcxGridDBColumn;
    cxGridDBTableView5eta: TcxGridDBColumn;
    cxGridDBTableView5vouchers_id: TcxGridDBColumn;
    cxGridDBTableView5ac: TcxGridDBColumn;
    cxGridDBTableView5service_cities_id: TcxGridDBColumn;
    cxGridDBTableView5entrancefees: TcxGridDBColumn;
    cxGridDBTableView5bookedon: TcxGridDBColumn;
    cxGridDBTableView5confirmedon: TcxGridDBColumn;
    cxGridDBTableView5cancelledon: TcxGridDBColumn;
    cxGridDBTableView5quoted: TcxGridDBColumn;
    cxGridDBTableView4date: TcxGridDBColumn;
    cxGridDBTableView4flightno: TcxGridDBColumn;
    cxGridDBTableView4eta: TcxGridDBColumn;
    cxGridDBTableView4vehicles_id: TcxGridDBColumn;
    cxGridDBTableView4vouchers_id: TcxGridDBColumn;
    cxGridDBTableView4ac: TcxGridDBColumn;
    cxGridDBTableView4hotel_addressbook_id: TcxGridDBColumn;
    cxGridDBTableView4from_cities_id: TcxGridDBColumn;
    cxGridDBTableView4to_cities_id: TcxGridDBColumn;
    cxGridDBTableView4service_cities_id: TcxGridDBColumn;
    cxGridDBTableView4bookedon: TcxGridDBColumn;
    cxGridDBTableView4confirmedon: TcxGridDBColumn;
    cxGridDBTableView4cancelledon: TcxGridDBColumn;
    cxGridDBTableView4quoted: TcxGridDBColumn;
    cxGridDBTableView3packages_id: TcxGridDBColumn;
    cxGridDBTableView3from_date: TcxGridDBColumn;
    cxGridDBTableView3from_time: TcxGridDBColumn;
    cxGridDBTableView3from_addressbook_id: TcxGridDBColumn;
    cxGridDBTableView3to_time: TcxGridDBColumn;
    cxGridDBTableView3to_place: TcxGridDBColumn;
    cxGridDBTableView3addressbook_id: TcxGridDBColumn;
    cxGridDBTableView3vouchers_id: TcxGridDBColumn;
    cxGridDBTableView3bookedon: TcxGridDBColumn;
    cxGridDBTableView3confirmedon: TcxGridDBColumn;
    cxGridDBTableView3cancelledon: TcxGridDBColumn;
    cxGridDBTableView3transport: TcxGridDBColumn;
    cxGridDBTableView3ac: TcxGridDBColumn;
    cxGridDBTableView3vehicleLookup: TcxGridDBColumn;
    cxGridDBTableView3noofvehicles: TcxGridDBColumn;
    cxGridDBTableView3from_place: TcxGridDBColumn;
    cxGridDBTableView3quoted: TcxGridDBColumn;
    cxGridDBTableView2from_cities_id: TcxGridDBColumn;
    cxGridDBTableView2fromdate: TcxGridDBColumn;
    cxGridDBTableView2fromtime: TcxGridDBColumn;
    cxGridDBTableView2fromplace: TcxGridDBColumn;
    cxGridDBTableView2to_cities_id: TcxGridDBColumn;
    cxGridDBTableView2todate: TcxGridDBColumn;
    cxGridDBTableView2totime: TcxGridDBColumn;
    cxGridDBTableView2toplace: TcxGridDBColumn;
    cxGridDBTableView2vehicleLookup: TcxGridDBColumn;
    cxGridDBTableView2dropoffdays: TcxGridDBColumn;
    cxGridDBTableView2dropoffkms: TcxGridDBColumn;
    cxGridDBTableView2addressbook_id: TcxGridDBColumn;
    cxGridDBTableView2vouchers_id: TcxGridDBColumn;
    cxGridDBTableView2ac: TcxGridDBColumn;
    cxGridDBTableView2noofvehicles: TcxGridDBColumn;
    cxGridDBTableView2noofpax: TcxGridDBColumn;
    cxGridDBTableView2bookedon: TcxGridDBColumn;
    cxGridDBTableView2confirmedon: TcxGridDBColumn;
    cxGridDBTableView2cancelledon: TcxGridDBColumn;
    cxGridDBTableView2quoted: TcxGridDBColumn;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    BookingCdsAgentName: TStringField;
    AccCDSNights: TStringField;
    cxGridDBTableView6datein: TcxGridDBColumn;
    cxGridDBTableView6addressbook_id: TcxGridDBColumn;
    cxGridDBTableView6dateout: TcxGridDBColumn;
    cxGridDBTableView6ac: TcxGridDBColumn;
    cxGridDBTableView6bookedon: TcxGridDBColumn;
    cxGridDBTableView6confirmedon: TcxGridDBColumn;
    cxGridDBTableView6vouchers_id: TcxGridDBColumn;
    cxGridDBTableView6singles: TcxGridDBColumn;
    cxGridDBTableView6doubles: TcxGridDBColumn;
    cxGridDBTableView6cancelledon: TcxGridDBColumn;
    cxGridDBTableView6quoted: TcxGridDBColumn;
    cxGridDBTableView6Nights: TcxGridDBColumn;
    AgentLCB: TcxDBLookupComboBox;
    Label3: TcxLabel;
    cxDBNavigator1: TcxDBNavigator;
    ContactCDScontact: TStringField;
    cxGridDBTableView7ClassLookup: TcxGridDBColumn;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1tourcode: TcxGridDBColumn;
    cxGridDBTableView1tourdate: TcxGridDBColumn;
    cxGridDBTableView1bookedon: TcxGridDBColumn;
    cxGridDBTableView1confirmedon: TcxGridDBColumn;
    cxGridDBTableView1cancelledon: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ImageList2: TImageList;
    cxGridDBTableView7TourCode: TcxGridDBColumn;
    cxGridDBTableView7TourDate: TcxGridDBColumn;
    AccCDSRoomTypeLookup: TStringField;
    AccCDSMealPlanLookup: TStringField;
    cxGridDBTableView6MealPlanLookup: TcxGridDBColumn;
    cxGridDBTableView6RoomTypeLookup: TcxGridDBColumn;
    SightCDSServicesLookup: TStringField;
    SightCDSAgentLookup: TStringField;
    SightCDSHotelLookup: TStringField;
    SightCDSVehicleLookup: TStringField;
    cxGridDBTableView5ServicesLookup: TcxGridDBColumn;
    cxGridDBTableView5AgentLookup: TcxGridDBColumn;
    cxGridDBTableView5Hotel_Addressbook_id: TcxGridDBColumn;
    cxGridDBTableView5Vehicles_id: TcxGridDBColumn;
    TransferCDSServicesLookup: TStringField;
    cxGridDBTableView4ServicesLookup: TcxGridDBColumn;
    TransferCDSAgentLookup: TStringField;
    cxGridDBTableView4AgentLookup: TcxGridDBColumn;
    PackCDSVehicleLookup: TStringField;
    TransportCDSVehicleLookup: TStringField;
    cxButton1: TcxButton;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    cxGridDBTableView6TourCode: TcxGridDBColumn;
    cxGridDBTableView6TourDate: TcxGridDBColumn;
    cxGridDBTableView5TourCode: TcxGridDBColumn;
    cxGridDBTableView5TourDate: TcxGridDBColumn;
    cxGridDBTableView4TourCode: TcxGridDBColumn;
    cxGridDBTableView4TourDate: TcxGridDBColumn;
    cxGridDBTableView3TourCode: TcxGridDBColumn;
    cxGridDBTableView3TourDate: TcxGridDBColumn;
    cxGridDBTableView2TourCode: TcxGridDBColumn;
    cxGridDBTableView2TourDate: TcxGridDBColumn;
    cxButton2: TcxButton;
    BookingToursCdstourleadertrainee: TBooleanField;
    cxGridDBTableView1TourLeader: TcxGridDBColumn;
    cxGridDBTableView1TourleaderTrainee: TcxGridDBColumn;
    TicketsCdstraveldate: TSQLTimeStampField;
    TicketsCdstourdate: TSQLTimeStampField;
    TicketsCdsbookedon: TSQLTimeStampField;
    TicketsCdsconfirmedon: TSQLTimeStampField;
    TicketsCdscancelledon: TSQLTimeStampField;
    TicketsCdscancelledbypax: TSQLTimeStampField;
    TicketsCdsbookedbypax: TSQLTimeStampField;
    TicketsCdstiming: TSQLTimeStampField;
    TicketsCdsetd: TSQLTimeStampField;
    TicketsCdseta: TSQLTimeStampField;
    TicketsCdsClassLookup: TStringField;
    TransferCDStransfertypes_id: TIntegerField;
    cxGridDBTableView4DBTransferTypes_id: TcxGridDBColumn;
    cxGridDBTableView7DBNoBooked: TcxGridDBColumn;
    cxGridDBTableView7DBNoCancelled: TcxGridDBColumn;
    SightCDSNoOfVehicles: TIntegerField;
    SightCDSTransport: TBooleanField;
    cxGridDBTableView5Guide: TcxGridDBColumn;
    cxGridDBTableView5Transport: TcxGridDBColumn;
    cxGridDBTableView5NoOfVehicles: TcxGridDBColumn;
    cxGridDBTableView4NoOfVehicles: TcxGridDBColumn;
    TransferCDSNoOfVehicles: TIntegerField;
    TransferCDSTransport: TBooleanField;
    cxGridDBTableView4GenerateVoucher: TcxGridDBColumn;
    BookingClientsCdsLeadPaxOrder: TIntegerField;
    cxGrid1DBTableView1LeadPaxOrder: TcxGridDBColumn;
    cxGrid1DBTableView1DateOfBirth: TcxGridDBColumn;
    TicketsCdsAgent_Cities_id: TIntegerField;
    cxGridDBTableView7Agent_cities_id: TcxGridDBColumn;
    TicketsCdsAgentLookup: TStringField;
    AccCDSHotel_Cities_id: TIntegerField;
    cxGridDBTableView6Hotel_cities_id: TcxGridDBColumn;
    AccCDSHotelLookup: TStringField;
    TransportCDSAgent_Cities_id: TIntegerField;
    cxGridDBTableView2Agent_Cities_id: TcxGridDBColumn;
    TransportCDSAgentLookup: TStringField;
    TicketsCdsVoucherLookup: TIntegerField;
    AccCDSVoucherLookup: TIntegerField;
    SightCDSVoucherLookup: TIntegerField;
    TransferCDSVoucherLookup: TIntegerField;
    PackCDSVoucherLookup: TIntegerField;
    TransportCDSVoucherLookup: TIntegerField;
    Label5: TcxLabel;
    TicketsCdsFromTrainStationLookup: TStringField;
    TicketsCdsToTrainStationLookup: TStringField;
    PopupMenu1: TPopupMenu;
    ChangeTourCode1: TMenuItem;
    Label7: TcxLabel;
    Label9: TcxLabel;
    cxButton3: TcxButton;
    AccCDStriples: TIntegerField;
    cxGridDBTableView6Triples: TcxGridDBColumn;
    AccCDStwins: TIntegerField;
    cxGridDBTableView6Twins: TcxGridDBColumn;
    BookingClientsCdsEmail: TStringField;
    BookingClientsCdsTravelEmail: TStringField;
    BookingClientsCdsPreferredPhone: TStringField;
    BookingClientsCdsEmergencyContact: TStringField;
    BookingClientsCdsEmergencyEmail: TStringField;
    BookingClientsCdsEmergencyHomePhone: TStringField;
    BookingClientsCdsEmergencyMobilePhone: TStringField;
    cxGrid1DBTableView1Email: TcxGridDBColumn;
    cxGrid1DBTableView1TravelEmail: TcxGridDBColumn;
    cxGrid1DBTableView1PreferredPhone: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyContact: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyEmail: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyHomePhone: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyMobilePhone: TcxGridDBColumn;
    BookingClientsCdsPaxPassportName: TStringField;
    cxGrid1DBTableView1PaxPassportName: TcxGridDBColumn;
    BookingClientsCdsStartDate: TSQLTimeStampField;
    BookingClientsCdsEndDate: TSQLTimeStampField;
    cxGrid1DBTableView1StartDate: TcxGridDBColumn;
    cxGrid1DBTableView1StartTime: TcxGridDBColumn;
    cxGrid1DBTableView1EndDate: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BookingCdsAfterInsert(DataSet: TDataSet);
    procedure BookingCdsAfterPost(DataSet: TDataSet);
    procedure BookingCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingCdsBeforePost(DataSet: TDataSet);
    procedure TicketsCdsAfterPost(DataSet: TDataSet);
    procedure TicketsCdsBeforePost(DataSet: TDataSet);
    procedure BookingClientsCdsAfterPost(DataSet: TDataSet);
    procedure BookingClientsCdsBeforePost(DataSet: TDataSet);
    procedure cxGrid2DBTableView1tourcodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AccCDSAfterDelete(DataSet: TDataSet);
    procedure AccCDSBeforePost(DataSet: TDataSet);
    procedure AccCDSCalcFields(DataSet: TDataSet);
    procedure SightCDSAfterDelete(DataSet: TDataSet);
    procedure SightCDSBeforePost(DataSet: TDataSet);
    procedure TransferCDSAfterDelete(DataSet: TDataSet);
    procedure TransferCDSBeforePost(DataSet: TDataSet);
    procedure PackCDSBeforePost(DataSet: TDataSet);
    procedure TransportCDSBeforePost(DataSet: TDataSet);
    procedure TransportCDSAfterDelete(DataSet: TDataSet);
    procedure BookingToursCdsAfterInsert(DataSet: TDataSet);
    procedure BookingToursCdsAfterPost(DataSet: TDataSet);
    procedure BookingToursCdsBeforePost(DataSet: TDataSet);
    procedure TicketsCdsAfterInsert(DataSet: TDataSet);
    procedure FilterTrainStations;
    procedure GetDefaultPA;
    procedure GetDefaultCurrCountry ;
    procedure GetDefaultCurrency ;
    procedure cxDBLookupComboBox3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure AgentLCBPropertiesEditValueChanged(Sender: TObject);
    function IsReferenceDuplicate: Boolean;
    function IsTourCodeDuplicate: Boolean;
    function IsClientDuplicate: Boolean;
    procedure BookingClientsCdsAfterDelete(DataSet: TDataSet);
    procedure cxGridDBTableView7flightnoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AccCDSAfterInsert(DataSet: TDataSet);
    procedure AccCDSAfterPost(DataSet: TDataSet);
    procedure SightCDSAfterInsert(DataSet: TDataSet);
    procedure TransferCDSAfterInsert(DataSet: TDataSet);
    procedure PackCDSAfterInsert(DataSet: TDataSet);
    procedure TransportCDSAfterInsert(DataSet: TDataSet);
    procedure TicketsCdsBeforeInsert(DataSet: TDataSet);
    procedure BookingClientsCdsBeforeInsert(DataSet: TDataSet);
    procedure BookingToursCdsBeforeInsert(DataSet: TDataSet);
    procedure CanInsert;
    procedure AccCDSBeforeInsert(DataSet: TDataSet);
    procedure SightCDSBeforeInsert(DataSet: TDataSet);
    procedure TransferCDSBeforeInsert(DataSet: TDataSet);
    procedure PackCDSBeforeInsert(DataSet: TDataSet);
    procedure TransportCDSBeforeInsert(DataSet: TDataSet);
    procedure BookingCdsBeforeDelete(DataSet: TDataSet);
    procedure BookingCdsBeforeInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BookingToursCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingToursCdsBeforeDelete(DataSet: TDataSet);
    procedure cxGridDBTableView1tourdatePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BookingClientsCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingClientsCdsBeforeDelete(DataSet: TDataSet);
    procedure cxGridDBTableView7ClassLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TicketsCdsBeforeEdit(DataSet: TDataSet);
    procedure TicketsCdsBeforeDelete(DataSet: TDataSet);
    function GetDefaultAgent: integer;
    function GetPaxCount: integer;
    function GetDefaultHotel: integer;
    procedure AccCDSBeforeEdit(DataSet: TDataSet);
    procedure AccCDSBeforeDelete(DataSet: TDataSet);
    procedure TicketsCdsAfterDelete(DataSet: TDataSet);
    procedure cxGridDBTableView6MealPlanLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView6RoomTypeLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView5ServicesLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView5AgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SightCDSAfterPost(DataSet: TDataSet);
    procedure SightCDSBeforeDelete(DataSet: TDataSet);
    procedure SightCDSBeforeEdit(DataSet: TDataSet);
    procedure cxGridDBTableView4ServicesLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView4AgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TransferCDSBeforeDelete(DataSet: TDataSet);
    procedure TransferCDSBeforeEdit(DataSet: TDataSet);
    procedure PackCDSpackages_idChange(Sender: TField);
    procedure PackCDSAfterPost(DataSet: TDataSet);
    procedure PackCDSBeforeDelete(DataSet: TDataSet);
    procedure PackCDSBeforeEdit(DataSet: TDataSet);
    procedure cxGridDBTableView3vehicles_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure PackCDSAfterDelete(DataSet: TDataSet);
    procedure TransportCDSAfterPost(DataSet: TDataSet);
    procedure TransportCDSBeforeDelete(DataSet: TDataSet);
    procedure TransportCDSBeforeEdit(DataSet: TDataSet);
    procedure cxGridDBTableView2vehicleLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure SearchBooking;
    procedure BookingCdsAfterScroll(DataSet: TDataSet);
    procedure DimTabs;
    function IsTourCodeValid: Boolean;
    procedure cxButton2Click(Sender: TObject);
    procedure BookingCdscountries_idChange(Sender: TField);
    procedure BookingClientsCdsAfterInsert(DataSet: TDataSet);
    procedure TransferCDSAfterPost(DataSet: TDataSet);
    procedure UpdateBookingDetails;
    procedure BookingClientsCdscountries_idChange(Sender: TField);
    procedure cxGridDBTableView7addressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    function IsValidTicketAgentCity(x_Addressbook_id, x_Cities_id: integer): Boolean;
    function IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
    procedure cxGridDBTableView6addressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView2addressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView7DblClick(Sender: TObject);
    procedure cxGridDBTableView6DblClick(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure SetDefaultHotelCity;
    procedure SetDefaultAgentCity(x_option: integer);
    procedure cxGridDBTableView7from_trainstations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView7to_trainstations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure ChangeTourCode1Click(Sender: TObject);
    procedure BookingCdsAfterDelete(DataSet: TDataSet);
    procedure RefreshTables(x_Bookings_id: integer);
    procedure BookingDSStateChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BookingCdsAfterCancel(DataSet: TDataSet);
    procedure CancelQuotation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookingForm: TBookingForm;
  _BookingForm_Level : Integer;
  BkgCds_State, BkgToursCds_State, BkgClientsCds_State, TicketsCds_State, AccCds_State: TDataSetState;
  SightCds_State, TransferCds_State, PackCds_State, TransportCds_State: TDataSetState;

implementation

uses BackOfficeDM, SearchFm, GeneralUt, SearchSortFm,
  ItinDepDatesFm, BookingDetailsFm, UpdateBookingFm, MainFm, TicketsFm;

var
  AdmLevel: Integer;

  TableArray: Array[0..7] of TDataSource;
  x_Prev_Bookings_id: integer;


{$R *.dfm}

procedure TBookingForm.CanInsert;
begin
  if (BookingCDS['Bookings_id'] = NULL) and (BookingCDS.State <> dsBrowse) then
    Raise Exception.Create('Please save the booking first');

  if BookingClientsCDS.RecordCount =0 then
    Raise Exception.Create('Please enter atleast one client');
end;

function TBookingForm.IsClientDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: Boolean;
  GpSds: TSQLDataSet;
  MF: string;
begin
  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM BookingsClients ' +
    'WHERE (Name = ''' + VarToStr(BookingClientsCDS['Name']) + ''') ' +
    'AND (Bookings_id = ' + IntToStr(BookingClientsCds['Bookings_id']) + ') ';

  if BookingClientsCDS['Male'] <> null then
    begin
      if BookingClientsCDS['Male'] = True then
        MF := '1'
      else
        MF := '0';
      QueryString := QueryString + ' AND (Male = ' + MF + ') ';
    end;

  if BookingClientsCDS.State = dsEdit then
    QueryString := QueryString + ' AND (BookingsClients_id <> ' + IntToStr(BookingClientsCDSbookingsclients_id.Value) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;
end;

function TBookingForm.IsTourCodeDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM BookingsTours ' +
    'WHERE (TourCode = ''' + VarToStr(BookingToursCds['TourCode']) + ''') ' +
    'AND (TourDate = ''' + FormatDateTime('mm/dd/yyyy',BookingToursCds['TourDate']) + ''') ' +
    ' AND (Bookings_id = ' + IntToStr(BookingToursCds['Bookings_id']) + ') ';

  if BookingToursCDS.State = dsEdit then
    QueryString := QueryString + ' AND (BookingsTours_id <> ' + IntToStr(BookingToursCDSbookingstours_id.Value) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;
end;

function TBookingForm.IsTourCodeValid: Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TourCodes tc, TourDepartureDates tdd ' +
    'WHERE tc.TourCodes_id = tdd.Tourcodes_id ' +
    'AND (tc.TourCode = ''' + VarToStr(BookingToursCds['TourCode']) + ''') ' +
    'AND (tdd.TourDate = ''' + FormatDateTime('mm/dd/yyyy',BookingToursCds['TourDate']) + ''') ';

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


function TBookingForm.IsReferenceDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Bookings ' +
    'WHERE Reference = ''' + VarToStr(BookingCDS['Reference']) + ''' ';

  if BookingCDS.State = dsEdit then
    QueryString := QueryString + ' AND (Bookings_id <> ' + IntToStr(BookingCds['Bookings_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;
end;

procedure TBookingForm.GetDefaultPA;
var
  GpQry: TSQLQuery;
  QueryString: String;
begin
  GpQry := TSQLQuery.Create(nil);
  GpQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  if BookingCDS.State = dsInsert then
    begin
      QueryString := BackOfficeDataModule.PrinAgentSds.CommandText;
      QueryString := QueryString + ' WHERE AddressBook_id = (SELECT Number FROM Defaults' +
        ' WHERE Item LIKE ''%Principal Agent%'')';
      GpQry.Close;
      GpQry.SQL.Clear;
      GpQry.SQL.Add(QueryString);
      GpQry.Open;

      if not GpQry.Eof then
        BookingCDS['AddressBook_id'] := GpQry['AddressBook_id'];
      GetDefaultCurrCountry;
   end;

end;

procedure TBookingForm.GetDefaultCurrCountry;
var
  tQry: TSQLQuery;
begin

  // look up the country and currency in use by the principal
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection:= BackOfficeDataModule.SQLConnection;

  if BookingCDS['Addressbook_id'] <> null   then
    begin
      // set the country
      tQry.Close;
      tQry.SQL.Clear;
      tQry.SQL.Add('SELECT Countries_id, Currencies_id FROM AddressBook '+
        'WHERE AddressBook_id = '+ IntToStr(BookingCDS['Addressbook_id'])+ '');
      tQry.Open;

      if (not tQry.Eof) and (BookingCDS.State <> dsBrowse)  then
        begin
          BookingCDS['AddressBook_id'] := AgentLCB.EditValue;
          BookingCDS['Countries_id']  := tQry['Countries_id'];
          BookingCDS['Currencies_id'] := tQry['Currencies_id'];
        end;
    end;
  tQry.close;
  tQry.Free;
end;

procedure TBookingForm.GetDefaultCurrency;
var
  tQry: TSQLQuery;
begin

  // look up the country and currency in use by the principal
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection:= BackOfficeDataModule.SQLConnection;

  if BookingCDS['Countries_id'] <> null   then
    begin
      // set the country
      tQry.Close;
      tQry.SQL.Clear;
      tQry.SQL.Add('SELECT Currencies_id FROM Countries '+
        'WHERE Countries_id = '+ IntToStr(BookingCDS['Countries_id'])+ '');
      tQry.Open;

      if (not tQry.Eof) and (BookingCDS.State <> dsBrowse)  then
        begin
          BookingCDS['Currencies_id'] := tQry['Currencies_id'];
        end;
    end;
  tQry.close;
  tQry.Free;
end;


procedure TBookingForm.FilterTrainStations;
begin
 if TicketsCDS['Tickets_id'] <> 2 then
    Exit;

  if TicketsCDS['FlightNo']=null then
    Exit;

  if (TicketsCDS['From_Cities_id'] <> null) and (TicketsCDS['TravelDate']<>null) then
    begin
      BackOfficeDataModule.TrainStationCds.Active := False;
      BackOfficeDataModule.TrainStationSds.Close;
      BackOfficeDataModule.TrainStationSds.commandtext := '';
      BackOfficeDataModule.TrainStationSds.commandtext := 'SELECT 1 as val1, ts.trainstations_id, ts.stationname '+
                              '  FROM trainstations ts, trains t, traindetails td '+
                              ' WHERE ts.in_use= True '+
                              '   AND ts.cities_id = td.cities_id '+
                              '   AND ts.trainstations_id = td.trainstations_id '+
                              '   AND td.trains_id = t.trains_id '+
                              '   AND td.cities_id = ' + IntToStr(TicketsCDS['From_Cities_id']) +
                              '   AND TRIM(t.trainno)= substring(''' + TicketsCDS['FlightNo'] +
                              ''', 1, position('' '' in ''' + TicketsCDS['FlightNo'] + ''' )-1) '+
                              '   AND (t.dayofoperation & 2^extract(dow from cast(''' + FormatDateTime('dd/mm/yyyy', TicketsCDS['traveldate']) + ''' as date))) !=0 '+
                              '   AND WEF = (SELECT MAX(wef) '+
                              '                FROM trains '+
                              '               WHERE TRIM(trainno)= substring(''' + TicketsCDS['FlightNo'] +
                                                                             ''', 1, position('' '' in ''' + TicketsCDS['FlightNo'] + ''' )-1) '+
                              '                 AND (t.dayofoperation & 2^extract(dow from cast(''' + FormatDateTime('dd/mm/yyyy', TicketsCDS['traveldate']) + ''' as date))) !=0 '+
                              '                 AND wef <= ''' + FormatDateTime('dd/mm/yyyy', TicketsCDS['traveldate']) +  ''') ' +
                              ' UNION '+
                              ' SELECT 2 as val2, trainstations_id, stationname '+
                              '   FROM trainstations '+
                              '  WHERE in_use= True  '+
                              '    AND cities_id =  ' + IntToStr(TicketsCDS['From_Cities_id'])+
                              '  ORDER BY 1, 3';
          BackOfficeDataModule.TrainStationSds.Open;
          BackOfficeDataModule.TrainStationCds.Active := True;
    end
  else
    begin
      BackOfficeDataModule.TrainStationCds.Close;
      BackOfficeDataModule.TrainStationSds.Close;
      BackOfficeDataModule.TrainStationSds.CommandText := '';
      BackOfficeDataModule.TrainStationSds.commandtext := ' SELECT trainstations_id, stationname '+
                              '   FROM trainstations '+
                              '  WHERE in_use= True '+
                              '  ORDER BY stationame';
      BackOfficeDataModule.TrainStationSds.Open;
      BackOfficeDataModule.TrainStationCds.Open;
    end;
                 {
    if (TicketsCDS['to_Cities_id'] <> null) and (TicketsCDS['traveldate']<>null) then
      begin
        ToStatQry.Close;
        ToStatQry.SQL.Clear;
        ToStatQry.SQL.Add('SELECT 1 as val1, ts.trainstations_id, ts.stationname '+
                              '  FROM trainstations ts, trains t, traindetails td '+
                              ' WHERE ts.in_use= True '+
                              '   AND ts.cities_id = td.cities_id '+
                              '   AND ts.trainstations_id = td.trainstations_id '+
                              '   AND td.trains_id = t.trains_id '+
                              '   AND td.cities_id = ' + IntToStr(BkgTicketTbl['To_Cities_id']) +
                              '   AND TRIM(t.trainno)= substring(''' + BkgTicketTbl['FlightNo'] +
                              ''', 1, position('' '' in ''' + BkgTicketTbl['FlightNo'] + ''' )-1) '+
                              '   AND (t.dayofoperation & 2^extract(dow from cast(''' + FormatDateTime('dd/mm/yyyy', BkgTicketTbl['traveldate']) + ''' as date))) !=0 '+
                              '   AND WEF = (SELECT MAX(wef) '+
                              '                FROM trains '+
                              '               WHERE TRIM(trainno)= substring(''' + BkgTicketTbl['FlightNo'] +
                                                                             ''', 1, position('' '' in ''' + BkgTicketTbl['FlightNo'] + ''' )-1) '+
                              '                 AND (t.dayofoperation & 2^extract(dow from cast(''' + FormatDateTime('dd/mm/yyyy', BkgTicketTbl['traveldate']) + ''' as date))) !=0 '+
                              '                 AND wef <= ''' + FormatDateTime('dd/mm/yyyy', BkgTicketTbl['traveldate']) +  ''') ' +
                              ' UNION '+
                              ' SELECT 2 as val2, trainstations_id, stationname '+
                              '   FROM trainstations '+
                              '  WHERE in_use= True  '+
                              '    AND cities_id =  ' + IntToStr(BkgTicketTbl['To_Cities_id'])+
                              '  ORDER BY 1, 3');
        ToStatQry.Open;
      end
    else
      begin
        ToStatQry.Close;
        ToStatQry.SQL.Clear;
        ToStatQry.SQL.Add(' SELECT trainstations_id, stationname '+
                              '   FROM trainstations '+
                              '  WHERE in_use= True  '+
                              '  ORDER BY stationname');

      end;
      }
end;

procedure TBookingForm.FormDestroy(Sender: TObject);
begin
  BookingForm := nil;
end;

procedure TBookingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBookingForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.ClassCds.Active := True;
  BackOfficeDataModule.TransferTypesCds.Active := True;  


  RefreshTables(-1);

  BookingCds.Active := True;
  BookingToursCds.Active := True;
  BookingClientsCds.Active := True;
  TicketsCds.Active := True;
  AccCds.Active := True;
  SightCds.Active := True;
  TransferCds.Active := True;
  PackCds.Active := True;
  TransportCds.Active := True;

  BackOfficeDataModule.PrinAgentCds.Active := True;
  BackOfficeDataModule.WebUsersCds.Active := True;

  BackOfficeDataModule.TourCds.Active := True;

  BackOfficeDataModule.SexCds.Active := True;

  BackOfficeDataModule.AgentCds.Active := True;
  BackOfficeDataModule.TicketsCds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;
  BackOfficeDataModule.TrainStationCds.Active := True;

  BackOfficeDataModule.RoomTypeCds.Active := True;
  BackOfficeDataModule.MealPlanCds.Active := True;

  BackOfficeDataModule.ServiceCitiesCds.Active := True;
  BackOfficeDataModule.MealPlanCds.Active := True;

  BackOfficeDataModule.HotelCds.Active := True;
  BackOfficeDataModule.VehicleCds.Active := True;


  BackOfficeDataModule.PackagesCds.Active := True;

  AdmLevel := _BookingForm_Level;

  cxPageControl1.ActivePageIndex := 0;
end;

procedure TBookingForm.BitBtn1Click(Sender: TObject);
//var
 // tQry: TSQLQuery;
begin
{  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  if BookingCDS.State = dsBrowse then
    BookingCDS.Edit;

 // Search Form Code
  if SearchForm = Nil then
    Application.CreateForm(TSearchForm, SearchForm);

  _SrchForm_sql_str := 'select * from dbo.fn_addressbook(2,''A'') WHERE Organisation LIKE ';
  _SrchForm_sql_order_str := ' ORDER BY Organisation';
  _LikeStr := '''%' + cxDBTextEdit1.Text + '%'' ';

  SearchForm.SearchQry.Close;
  SearchForm.SearchQry.SQL.Clear;
  SearchForm.SearchQry.SQL.Add(_SrchForm_sql_str + _LikeStr + _SrchForm_sql_order_str);
  SearchForm.SearchQry.Active := True;

  SearchForm.SearchCDS.Active := True;
  SearchForm.QryGrid.Columns[0].Visible := False;
  SearchForm.OkBB.Kind := bkOK;
  SearchForm.OkBB.Default := False;
  SearchForm.OkBB.ModalResult := mrOk;
  SearchForm.ShowModal;

  if (SearchForm.ModalResult = mrOK) and
     (SearchForm.SearchCDS['AddressBook_id'] <> null) then
    begin
      BookingCDS['AddressBook_id'] := SearchForm.SearchCDS['AddressBook_id'];

    end;

  SearchForm.Release;
  SearchForm := Nil;


  // look up the country and currency in use by the principal
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection:= BackOfficeDataModule.SQLConnection;

  if BookingCDS['Addressbook_id'] <> null then
    begin
      // set the country
      tQry.Close;
      tQry.SQL.Clear;
      tQry.SQL.Add('SELECT Countries_id, Currencies_id FROM AddressBook '+
        'WHERE AddressBook_id = '+ IntToStr(BookingCDS['AddressBook_id'])+ '');
      tQry.Open;

      if not tQry.Eof then
        begin
          BookingCDS['AddressBook_id'] := BookingCDS['AddressBook_id'];
          BookingCDS['Countries_id']  := tQry['Countries_id'];
          BookingCDS['Currencies_id'] := tQry['Currencies_id'];
        end;
    end;
  tQry.close;
  tQry.Free;
}
end;

procedure TBookingForm.BookingCdsAfterInsert(DataSet: TDataSet);
begin

  // Principal Agent
  GetDefaultPA;

  BookingCds['Web_users_id'] := 0;

  if BookingCDS['Addressbook_id'] <> null   then
    GetDefaultCurrCountry;

  BookingCDS['Booked'] := Date();
  BookingCds['Bookings_id'] := -1;
    
  BkgCds_State := BookingCDS.State;

end;

procedure TBookingForm.BookingCdsAfterPost(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_MaxID: integer;
begin
  BookingCDS.ApplyUpdates(0);

  if BkgCds_State = dsInsert then
    begin

      QueryString := 'SELECT MAX(Bookings_id) as MaxID FROM Bookings ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Active := True;

      if (not GpSds.EOF) and (GpSds['MaxID']<>null) then
        x_MaxID := GpSds['MaxID']
      else
        x_MaxID := 1;

      GpSds.Free;

      RefreshTables(x_MaxID);

    end
  else
    begin
      //BookingCDS.Refresh;
      RefreshTables(BookingCds['Bookings_id']);

    end;

  UpdateBookingDetails;

end;

procedure TBookingForm.BookingCdsBeforeEdit(DataSet: TDataSet);
begin

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingToursDS;
  TableArray[1] := BookingClientsDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.BookingCdsBeforePost(DataSet: TDataSet);
begin

  BkgCds_State := BookingCds.State;

  if BookingCDS.State = dsInsert then
    BookingCDS['Bookings_id'] := GetNextId('Bookings','Bookings_id');

  if BookingCDS['Reference'] = null then
    raise exception.Create('Please enter the reference');

  if (IsReferenceDuplicate) then
    raise Exception.create('Duplicate reference number encountered');

  if BookingCDS['Addressbook_id'] = null then
    raise exception.Create('Please enter the agent');



end;

procedure TBookingForm.TicketsCdsAfterPost(DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
  //TicketsCds.Refresh;
end;

procedure TBookingForm.TicketsCdsBeforePost(DataSet: TDataSet);
var
  QueryString: string;
begin
  TicketsCds_State := TicketsCds.State;

  if TicketsCds.State = dsInsert then
    TicketsCds['BookingsTickets_id'] := GetNextId('BookingsTickets','BookingsTickets_id');

  if TicketsCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if TicketsCds['Agent_Cities_id'] = null then
    raise exception.Create('Please enter the Agent City');

  if not IsValidTicketAgentCity (TicketsCds['Addressbook_id'], TicketsCds['Agent_Cities_id']) then
     raise exception.Create('Invalid combination of Agent/City');

  if TicketsCds['TravelDate'] = null then
    raise exception.Create('Please enter the travel date');

  if TicketsCds['NoOfTickets'] = null then
    raise exception.Create('Please enter the number of tickets');

  if TicketsCds['NoBooked'] = null then
    raise exception.Create('Please enter the number of tickets booked');

  if TicketsCds['NoCancelled'] = null then
    raise exception.Create('Please enter the number of tickets cancelled');

  if TicketsCds['FlightNo'] = null then
    raise exception.Create('Please enter the flight number');

  if TicketsCds['ClassId'] = null then
    raise exception.Create('Please enter the class');

  if TicketsCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if TicketsCds['NoOfTickets'] <> TicketsCds['NoBooked'] - TicketsCds['NoCancelled'] then
    begin
      queryString := 'No. of Tickets : ' + IntToStr(TicketsCds['NoOfTickets']) + chr(13) +
        'No. Booked : ' + IntToStr(TicketsCds['NoBooked']) + chr(13) +
        'No. Cancelled : ' + IntToStr(TicketsCds['NoCancelled']) + chr(13) +
        'This does not appear to be right. Do you want to save this ? ';
      if MessageDlg (QueryString,mtWarning,[mbYes,mbNo],0) <> mrYes then
        Abort;
    end;

end;

function TBookingForm.IsValidTicketAgentCity(x_Addressbook_id, x_Cities_id: integer): Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Addressbook a ' +
    'WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) + ' ' +
    'AND Cities_id = ' + IntToStr(x_Cities_id) + ' ';

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

function TBookingForm.IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
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




procedure TBookingForm.BookingClientsCdsAfterPost(DataSet: TDataSet);
begin
  BookingClientsCds.ApplyUpdates(0);
  BookingClientsCds.Refresh;

  UpdateBookingDetails;

end;

procedure TBookingForm.BookingClientsCdsBeforePost(DataSet: TDataSet);
begin

  BkgClientsCds_State := BookingClientsCds.State;

  if BookingClientsCDS['Bookings_id'] = null then
    raise exception.Create('Please enter the booking first');

  if BookingClientsCDS['Name'] = null then
    raise exception.Create('Please enter the name');

  if BookingClientsCDS['Male'] = null then
    raise exception.Create('Please enter the sex of the client');

  if IsClientDuplicate = True then
    Raise Exception.Create('This client has already been booked for this tour');

  //Convert client name into uppercase letters
  BookingClientsCDSname.Value := UpperCase(BookingClientsCDSname.Value);

  if BookingClientsCDS.State = dsInsert then
    BookingClientsCDS['BookingsClients_id'] := GetNextId('BookingsClients','BookingsClients_id');
end;

procedure TBookingForm.cxGrid2DBTableView1tourcodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);
  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText := 'SELECT  tc.TourCodes_id, tc.TourCode, tdd.TourDate FROM TourCodes tc ' +
    ' LEFT OUTER JOIN TourDepartureDates tdd ON tdd.TourCodes_id = tc.TourCodes_id ' +
    ' ORDER BY TourCode, TourDate ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 2 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TourCodes_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourCode';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'TourDate';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := Round(SearchSortForm.SearchGrid.Width / 2) - 10 ;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := Round(SearchSortForm.SearchGrid.Width / 2) - 10 ;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Tour Code';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Tour Date';

  SearchSortForm.ShowModal;

  if SearchSortForm.ModalResult = mrOk then
    begin
      if BookingToursCDS.State = dsBrowse then
        BookingToursCDS.Edit;
      BookingToursCDS['TourCode'] := SearchSortForm.SearchCds['TourCode'];
      BookingToursCDS['TourDate'] := SearchSortForm.SearchCds['TourDate'];
    end;
  SearchSortForm.Release;
  SearchSortForm := nil;
end;

procedure TBookingForm.AccCDSAfterDelete(DataSet: TDataSet);
begin
  AccCDS.ApplyUpdates(0);
  AccCDS.Refresh;
end;

procedure TBookingForm.AccCDSBeforePost(DataSet: TDataSet);
begin

  AccCds_State := AccCds.State;

  if AccCds.State = dsInsert then
    AccCds['BookingsAccommodation_id'] := GetNextId('BookingsAccommodation','BookingsAccommodation_id');

  if AccCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if AccCds['Addressbook_id'] = null then
    raise exception.Create('Please select a hotel');

  if AccCds['Hotel_Cities_id'] = null then
    raise exception.Create('Please enter the Hotel City');

  if not IsValidTicketAgentCity (AccCds['Addressbook_id'], AccCds['Hotel_Cities_id']) then
     raise exception.Create('Invalid combination of Agent/City');

  if AccCds['DateIn'] = null then
    raise exception.Create('Please enter the date in');

  if AccCds['DateOut'] = null then
    raise exception.Create('Please enter the date out');

  if AccCds['Singles'] = null then
    AccCds['Singles'] := 0;

  if AccCds['Doubles'] = null then
    AccCds['Doubles'] := 0;

  if AccCds['Triples'] = null then
    AccCds['Triples'] := 0;

  if AccCds['Twins'] = null then
    AccCds['Twins'] := 0;

  if (AccCds['Singles'] = 0) and (AccCds['Doubles'] = 0) and (AccCds['Triples'] = 0) and (AccCds['Twins'] = 0) then
    raise exception.Create('Please enter singles / doubles / triples / twins');

  if AccCds['RoomTypes_id'] = null then
    raise exception.Create('Please enter the room type');

  if AccCds['AC'] = null then
    raise exception.Create('Please enter whether A/C is required');

  if AccCds['MealPlans_id'] = null then
    raise exception.Create('Please enter the meal plan');

  if not IsValidHotelRoom (AccCds['Addressbook_id'], AccCds['RoomTypes_id']) then
     raise exception.Create('Invalid combination of Hotel/RoomType');

end;

procedure TBookingForm.AccCDSCalcFields(DataSet: TDataSet);
var
  tQRy: TSQLQuery;
 begin


      tQRy := TSQLQuery.Create(nil);
      tQRy.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (AccCDS['DateOut'] <> null) and (AccCDS['DateIn'] <> null) then
    begin
      if AccCDS['DateOut'] < AccCDS['DateIn'] then
        Raise Exception.Create('Date out cannot be greater than Date in');
      tQRy.Close;
      tQRy.SQL.Clear;
      tQRy.SQL.Add('SELECT DATEDIFF(DAY,''' + FormatDateTime('mm/dd/yyyy',AccCDS['DateIn']) +
       ''',''' + FormatDateTime('mm/dd/yyyy',AccCDS['DateOut'])+ ''') AS Nights' );
      tQRy.Open;

      if not tQRy.Eof then
        AccCDS['Nights'] := tQRy['Nights'];

    end;
    tQRy.Free;


end;

procedure TBookingForm.SightCDSAfterDelete(DataSet: TDataSet);
begin
  SightCDS.ApplyUpdates(0);
  SightCDS.Refresh;
end;

procedure TBookingForm.SightCDSBeforePost(DataSet: TDataSet);
begin

  SightCds_State := SightCds.State;

  if SightCDS.State = dsInsert then
    SightCDS['BookingsServices_id'] := GetNextId('BookingsServices','BookingsServices_id');

  if SightCds['Service_Cities_id'] = null then
    raise exception.Create('Please enter the Service City');

  if SightCds['EntranceFees'] = null then
    raise exception.Create('Please enter the Entrance Fees');

  if SightCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if SightCds['ETA'] = null then
    raise exception.Create('Please enter the Timing');

  if SightCds['AC'] = null then
    raise exception.Create('Please enter AC');

  if SightCds['EntranceFees'] = null then
    raise exception.Create('Please enter the Entrance Fees');

  if SightCds['Guide'] = null then
    raise exception.Create('Please enter Guide');

  if SightCds['Transport'] = null then
    raise exception.Create('Please enter Transport');

  if SightCds['NoOfVehicles'] = null then
    raise exception.Create('Please enter No Of Vehicles');

  if SightCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if (SightCds['Transport'] = True) and (SightCds['NoOfVehicles'] < 1) then
      raise exception.create ('No of Vehicles should be > 0 where Transport is requested');

  if (SightCds['Transport'] = True) and ((SightCds['Vehicles_id'] = null) or (SightCds['Vehicles_id'] = 0)) then
      raise exception.create ('Vehicle should be entered where Transport is requested');

end;

procedure TBookingForm.TransferCDSAfterDelete(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
  TransferCds.Refresh;
end;

procedure TBookingForm.TransferCDSBeforePost(DataSet: TDataSet);
begin

  TransferCds_State := TransferCds.State;

  if TransferCds.State = dsInsert then
    TransferCds['BookingsServices_id'] := GetNextId('BookingsServices','BookingsServices_id');

  if TransferCds['Service_Cities_id'] = null then
    raise exception.Create('Please enter the Service City');

  if TransferCds['Date'] = null then
    raise exception.Create('Please enter the Date');

  if TransferCds['To_Cities_id'] = null then
    raise exception.Create('Please enter the "To City"');

  if TransferCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if TransferCds['TransferTypes_id'] = null then
    raise exception.Create('Please enter the Transfer Type');

  if TransferCds['ETA'] = null then
    raise exception.Create('Please enter the Timing');

  if (TransferCds['FlightNo'] <> null) then
    TransferCds['FlightNo'] := UpperCase(TransferCds['FlightNo']);

  if TransferCds['Vehicles_id'] = null then
    if MessageDlg ('No vehicle entered for transport. Save Anyway?',mtWarning,[mbYes, mbNo], 0) <>mryes then
      Abort;

  if TransferCds['Vehicles_id'] = null then
    raise exception.Create('Please enter the Vehicle');

  if ((TransferCds['Vehicles_id'] <> null) and (TransferCds['Vehicles_id'] <> 0)) and
     ((TransferCds['NoOfVehicles'] = null) or (TransferCds['NoOfVehicles'] = 0)) then
    raise exception.Create('Please enter the No. of Vehicles');

  if ((TransferCds['Vehicles_id'] <> null) and (TransferCds['Vehicles_id'] <> 0)) and
     (TransferCds['AC'] = null) then
    raise exception.Create('Please enter the AC');

  if TransferCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

  if TransferCds['Transport'] = null then
    TransferCds['Transport'] := 1;


end;

procedure TBookingForm.PackCDSBeforePost(DataSet: TDataSet);
begin
  if PackCDS.State = dsInsert then
    PackCDS['BookingsPackages_id'] := GetNextId('BookingsPackages','BookingsPackages_id');

  PackCds_State := PackCds.State;

  if PackCds.State = dsInsert then
    PackCds['BookingsPackages_id'] := GetNextId('BookingsPackages','BookingsPackages_id');

  if PackCds['packages_id'] = null then
    raise exception.Create('Please enter the package');

  if PackCds['Addressbook_id'] = null then
    raise exception.Create('Please enter the Agent');

  if PackCds['From_Date'] = null then
    raise exception.Create('Please enter "From Date"');

  if PackCds['From_Time'] = null then
    raise exception.Create('Please enter "From Time"');

  if PackCds['From_Place'] = null then
    raise exception.Create('Please enter "From Place"');

  if PackCds['To_Time'] = null then
    raise exception.Create('Please enter "To Time"');

  if PackCds['To_Place'] = null then
    raise exception.Create('Please enter "To Place"');

  if PackCds['Transport'] = null then
    raise exception.Create('Please enter "Transport"');

  if PackCds['AC'] = null then
    raise exception.Create('Please enter "AC"');

  if (PackCds['Transport'] = True) then
    begin

      if PackCds['Vehicles_id'] = null then
        raise exception.Create('Please enter "Vehicle"');

      if PackCds['NoOfVehicles'] = null then
        raise exception.Create('Please enter "No of Vehicles"');

    end;

  if PackCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');


end;

procedure TBookingForm.TransportCDSBeforePost(DataSet: TDataSet);
begin
  TransportCds_State := TransportCds.State;

  if TransportCds.State = dsInsert then
    TransportCds['BookingsTransport_id'] := GetNextId('BookingsTransport','BookingsTransport_id');

  if TransportCds['from_cities_id'] = null then
    raise exception.Create('Please enter the "From City"');

  if TransportCds['fromdate'] = null then
    raise exception.Create('Please enter the "From Date"');

  if TransportCds['fromtime'] = null then
    raise exception.Create('Please enter the "From Time"');

  if TransportCds['fromPlace'] = null then
    raise exception.Create('Please enter the "From Place"');

  if TransportCds['to_cities_id'] = null then
    raise exception.Create('Please enter the "To City"');

  if TransportCds['todate'] = null then
    raise exception.Create('Please enter the "To Date"');

  if TransportCds['totime'] = null then
    raise exception.Create('Please enter the "To Time"');

  if TransportCds['toPlace'] = null then
    raise exception.Create('Please enter the "To Place"');

  if TransportCds['Vehicles_id'] = null then
    raise exception.Create('Please enter the "Vehicle"');

  if TransportCds['AC'] = null then
    raise exception.Create('Please enter "AC"');

  if TransportCds['NoOfVehicles'] = null then
    raise exception.Create('Please enter "No Of Vehicles"');

  if TransportCds['NoOfPax'] = null then
    raise exception.Create('Please enter "No Of Pax"');

  if TransportCds['DropOffDays'] = null then
    raise exception.Create('Please enter the "Drop Off Days"');

  if TransportCds['DropOffKms'] = null then
    raise exception.Create('Please enter the "Drop Off Kms"');

  if TransportCds['GenerateVoucher'] = null then
    raise exception.Create('Please enter if voucher is to be generated');

end;

procedure TBookingForm.TransportCDSAfterDelete(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
  TransportCds.Refresh;
end;

procedure TBookingForm.BookingToursCdsAfterInsert(DataSet: TDataSet);
begin
  BookingToursCds['BookedOn'] := Date;
  BookingToursCds['TourLeader'] := False;
  BookingToursCds['TourLeaderTrainee'] := False;
end;

procedure TBookingForm.BookingToursCdsAfterPost(DataSet: TDataSet);
begin
  CancelQuotation;

  BookingToursCds.ApplyUpdates(0);
  BookingToursCds.Refresh;

  UpdateBookingDetails;

end;

procedure TBookingForm.CancelQuotation;
var
  x_QueryString: String;
  x_quotations_id: integer;
  GpSds: TSQLDataSet;
begin

  if BookingToursCds['Bookings_id'] = null then
    exit;

  x_QueryString := 'SELECT Quotations_id FROM Bookings WHERE Bookings_id = ' + IntToStr(BookingToursCds['Bookings_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  //x_quotations_id := 0;
  if (not GpSds.Eof) and (GpSds['Quotations_id'] <> null) then
    begin
      x_quotations_id := GpSds['Quotations_id'];

      if BookingToursCds['CancelledOn'] <> null then
        begin
          GpSds.Close;
          GpSds.CommandText := 'UPDATE Quotations SET CancelledOn = ''' + FormatDateTime('mm/dd/yyyy', BookingToursCds['CancelledOn'])  + ''' ' +
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

  if (BookingToursCds['TourCode'] <> null) and (BookingToursCds['TourDate'] <> null) and
     (BookingToursCds['CancelledOn'] <> null) and (BookingCds['Addressbook_id'] <> null) then
    begin

      x_QueryString := ' EXEC p_CancelQuoModule ' +
        QuotedStr(BookingToursCds['TourCode']) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',BookingToursCds['TourDate'])) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',BookingToursCds['CancelledOn'])) + ',' +
        IntToStr(BookingCds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

end;


procedure TBookingForm.UpdateBookingDetails;
var
  QueryString: String;
  GpSds: TSQLDataSet;
begin

  // This proc. is run to update the bookingdetails tbl.
  // This ensures that all pax added to the bookings are displayed in the pax list/rooming list
  if (BookingToursCds['TourCode'] <> null) and (BookingToursCds['TourDate'] <> null) then
    begin

      QueryString := 'EXEC p_UpdateBookingDetails  ''' + BookingToursCds['TourCode'] + ''', ''' +
                FormatDateTime('mm/dd/yyyy', BookingToursCds['TourDate']) + '''';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      GpSds.Free;

    end;

end;

procedure TBookingForm.BookingToursCdsBeforePost(DataSet: TDataSet);
begin

  BkgToursCds_State := BookingToursCds.State;

  if BookingToursCds['Bookings_id'] = null then
    raise exception.Create('Please enter the booking');

  if BookingToursCds['TourCode'] = null then
    raise exception.Create('Please enter the tour code');

  if BookingToursCds['Tourdate'] = null then
    raise exception.Create('Please enter the tour date');

  if BookingToursCds['BookedOn'] = null then
    raise exception.Create('Please enter "Booked On"');

  if IsTourCodeValid = False then
    raise Exception.Create('This combination of tour code and tour date is invalid');

  //Check if the tour code and tour date combination  already exists
  if IsTourCodeDuplicate = True then
    raise Exception.Create('This combination of tour code and tour date already exists');

  if BookingToursCds.State = dsInsert then
    BookingToursCds['BookingsTours_id'] := GetNextId('BookingsTours','BookingsTours_id');

end;

procedure TBookingForm.TicketsCdsAfterInsert(DataSet: TDataSet);
var
  x_Agent: integer;
begin

  // Default Agent for Tour
  if BookingToursCds['TourCode'] <> null then
    begin
      x_Agent := GetDefaultAgent;
      if x_Agent > 0 then
        TicketsCds['Addressbook_id'] := x_Agent;
    end;

  TicketsCds['NoOfTickets'] := GetPaxCount;
  TicketsCds['NoBooked'] := TicketsCds['NoOfTickets'];
  TicketsCds['NoCancelled'] := 0;

  if BookingToursCds['TourCode'] <> null then
    TicketsCds['TourCode'] := BookingToursCds['TourCode'];

  if BookingToursCds['TourDate'] <> null then
    TicketsCds['TourDate'] := BookingToursCds['TourDate'];

  TicketsCDS['GenerateVoucher'] := True;

end;

function TBookingForm.GetDefaultAgent: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_agent_id: integer;
begin

  if BookingToursCds['TourCode'] = null then
    begin
      Result := 0;
      exit;
    end;

  QueryString := 'SELECT Agent_Addressbook_id ' +
        'FROM TourCodes WHERE TourCode = ''' + BookingToursCDS['Tourcode'] + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_agent_id := 0;
  if (not GpSds.Eof) and (GpSds['Agent_Addressbook_id'] <> null) then
    x_agent_id := GpSds['Agent_Addressbook_id'];

  GpSds.Free;

  Result := x_agent_id;

end;

function TBookingForm.GetDefaultHotel: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_hotel_id: integer;
begin

  if BookingToursCds['TourCode'] = null then
    begin
      Result := 0;
      exit;
    end;

  QueryString := 'SELECT Hotel_Addressbook_id ' +
        'FROM TourCodes WHERE TourCode = ''' + BookingToursCDS['Tourcode'] + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_hotel_id := 0;
  if (not GpSds.Eof) and (GpSds['Hotel_Addressbook_id'] <> null) then
    x_hotel_id := GpSds['Hotel_Addressbook_id'];

  GpSds.Free;

  Result := x_hotel_id;

end;

procedure TBookingForm.SetDefaultHotelCity;
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  if BookingToursCds['TourCode'] = null then
    exit;

  QueryString := 'SELECT Hotel_Addressbook_id, Cities_id ' +
        'FROM TourCodes WHERE TourCode = ''' + BookingToursCDS['Tourcode'] + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  //x_hotel_id := 0;
  if (not GpSds.Eof) and (GpSds['Hotel_Addressbook_id'] <> null) then
    AccCds['Addressbook_id']:= GpSds['Hotel_Addressbook_id'];
  if (not GpSds.Eof) and (GpSds['Cities_id'] <> null) then
    AccCds['Hotel_Cities_id']:= GpSds['Cities_id'];

  GpSds.Free;

end;



function TBookingForm.GetPaxCount: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_count: integer;
begin

  QueryString := 'SELECT COUNT(*) AS x_count ' +
        'FROM BookingsClients ' +
        'WHERE Bookings_id = ' + IntToStr(BookingCds['Bookings_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


procedure TBookingForm.cxDBLookupComboBox3PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  GetDefaultCurrCountry;
end;

procedure TBookingForm.AgentLCBPropertiesEditValueChanged(Sender: TObject);
begin
  GetDefaultCurrCountry;
end;

procedure TBookingForm.BookingClientsCdsAfterDelete(DataSet: TDataSet);
begin
  BookingClientsCds.ApplyUpdates(0);
  BookingClientsCds.Refresh;
end;

procedure TBookingForm.cxGridDBTableView7flightnoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

  if (TicketsCDS['Tickets_id']=null) or (TicketsCDS['Tickets_id']=0) then
      Exit;

  if (TicketsCDS['From_Cities_id'] = null) or (TicketsCds['To_Cities_id'] = null)then
    raise Exception.Create('Please select FROM CITY and TO CITY');

  if (TicketsCDS['TravelDate'] = null) then
    raise Exception.Create('Please enter TRAVEL DATE');

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
    if TicketsCDS.State = dsBrowse then
      TicketsCDS.Edit;

    if TicketsCDS['Tickets_id'] = 1 then
    begin

      if TicketsForm.FlightsCds['FlightNo'] <> null then
        TicketsCDS['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

      if TicketsForm.FlightsCds['Arrival'] <> null then
        TicketsCDS['Eta'] := TicketsForm.FlightsCds['Arrival'];

      if TicketsForm.FlightsCds['Departure'] <> null then
        TicketsCDS['Etd'] := TicketsForm.FlightsCds['Departure'];
    end;

    if TicketsCDS['Tickets_id'] = 2 then
    begin

      if TicketsForm.TrainsCds['TrainNo'] <> null then
        TicketsCDS['FlightNo'] := TicketsForm.TrainsCds['TrainNo'] + ' ' + TicketsForm.TrainsCds['TrainName'];

      if TicketsForm.TrainsCds['Arrival'] <> null then
        TicketsCDS['Eta'] := TicketsForm.TrainsCds['Arrival'];

      if TicketsForm.TrainsCds['Departure'] <> null then
        TicketsCDS['Etd'] := TicketsForm.TrainsCds['Departure'];

      if TicketsForm.TrainsCds['FromStations_id'] <> null then
        TicketsCDS['From_TrainStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

      if TicketsForm.TrainsCds['ToStations_id'] <> null then
        TicketsCDS['To_TrainStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

    end;

    if TicketsCDS['Tickets_id'] = 3 then
    begin
      if TicketsForm.BusesCds['busno'] <> null then
        TicketsCDS['FlightNo']:= TicketsForm.BusesCds['BusNo'];

      if TicketsForm.BusesCds['Arrival'] <> null then
        TicketsCDS['Eta'] := TicketsForm.BusesCds['Arrival'];

      if TicketsForm.BusesCds['Departure'] <> null then
        TicketsCDS['Etd'] := TicketsForm.BusesCds['Departure'];
    end;

    if TicketsCDS['Tickets_id'] = 4 then
    begin
      TicketsCDS['FlightNo']:= NULL;
      TicketsCDS['Eta'] := NULL;
      TicketsCDS['Etd'] := NULL;
    end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TBookingForm.AccCDSAfterInsert(DataSet: TDataSet);
begin

  // Default Agent for Tour
  if BookingToursCds['TourCode'] <> null then
    begin
      SetDefaultHotelCity;

     // x_Hotel := GetDefaultHotel;
     // if x_Hotel > 0 then
     //   AccCds['Addressbook_id'] := x_Hotel;
    end;

  if BookingToursCds['TourCode'] <> null then
    AccCds['TourCode'] := BookingToursCds['TourCode'];

  if BookingToursCds['TourDate'] <> null then
    AccCds['TourDate'] := BookingToursCds['TourDate'];

  AccCds['AC'] := True;

  AccCds['GenerateVoucher'] := True;

end;

procedure TBookingForm.AccCDSAfterPost(DataSet: TDataSet);
begin
  AccCDS.ApplyUpdates(0);
  //AccCDS.Refresh;
end;

procedure TBookingForm.SightCDSAfterInsert(DataSet: TDataSet);
begin

  if BookingToursCds['TourCode'] <> null then
    SightCds['TourCode'] := BookingToursCds['TourCode'];

  if BookingToursCds['TourDate'] <> null then
    SightCds['TourDate'] := BookingToursCds['TourDate'];

  SightCDS['AC'] := False;
  SightCDS['GenerateVoucher'] := True;
  SightCDS['Transfer'] := False;
  SightCDS['EntranceFees'] := True;
  SightCDS['Guide'] := True;
  SightCDS['Transport'] := False;
  SightCDS['NoOfVehicles'] := 0;

  SetDefaultAgentCity(1);

end;

procedure TBookingForm.TransferCDSAfterInsert(DataSet: TDataSet);
begin

  if BookingToursCds['TourCode'] <> null then
    TransferCds['TourCode'] := BookingToursCds['TourCode'];

  if BookingToursCds['TourDate'] <> null then
    TransferCds['TourDate'] := BookingToursCds['TourDate'];

  TransferCds['AC'] := False;
  TransferCds['GenerateVoucher'] := True;
  TransferCds['Transfer'] := True;
  TransferCds['Transport'] := True;
  TransferCds['NoOfVehicles'] := 1;

  SetDefaultAgentCity(2);

end;

procedure TBookingForm.SetDefaultAgentCity (x_option: integer);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  if BookingToursCds['TourCode'] = null then
    exit;

  QueryString := 'SELECT Agent_Addressbook_id, Hotel_addressbook_id, Cities_id ' +
        'FROM TourCodes WHERE TourCode = ''' + BookingToursCDS['Tourcode'] + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  //x_hotel_id := 0;

  if x_option = 2 then
    begin

      if (not GpSds.Eof) and (GpSds['Agent_Addressbook_id'] <> null) then
        TransferCds['Addressbook_id']:= GpSds['Agent_Addressbook_id'];

      if (not GpSds.Eof) and (GpSds['Hotel_Addressbook_id'] <> null) then
        TransferCds['Hotel_Addressbook_id']:= GpSds['Hotel_Addressbook_id'];

      if (not GpSds.Eof) and (GpSds['Cities_id'] <> null) then
        begin
          TransferCds['Service_Cities_id']:= GpSds['Cities_id'];
          TransferCds['To_Cities_id']:= GpSds['Cities_id'];
        end;

    end
  else if x_option = 1 then
    begin

      if (not GpSds.Eof) and (GpSds['Agent_Addressbook_id'] <> null) then
        SightCds['Addressbook_id']:= GpSds['Agent_Addressbook_id'];

      if (not GpSds.Eof) and (GpSds['Hotel_Addressbook_id'] <> null) then
        SightCds['Hotel_Addressbook_id']:= GpSds['Hotel_Addressbook_id'];

      if (not GpSds.Eof) and (GpSds['Cities_id'] <> null) then
        begin
          SightCds['Service_Cities_id']:= GpSds['Cities_id'];
          SightCds['To_Cities_id']:= GpSds['Cities_id'];
        end;

    end;

  GpSds.Free;

end;


procedure TBookingForm.PackCDSAfterInsert(DataSet: TDataSet);
begin
  if BookingToursCds['TourCode'] <> null then
    PackCds['TourCode'] := BookingToursCds['TourCode'];

  if BookingToursCds['TourDate'] <> null then
    PackCds['TourDate'] := BookingToursCds['TourDate'];

  PackCds['GenerateVoucher'] := True;

end;

procedure TBookingForm.TransportCDSAfterInsert(DataSet: TDataSet);
begin

  if BookingToursCDS['TourCode'] <> null then
    TransportCDS['TourCode'] := BookingToursCDS['TourCode'];

  if BookingToursCDS['TourDate'] <> null then
    TransportCDS['TourDate'] := BookingToursCDS['TourDate'];

  TransportCds['DropOffDays'] := 0;
  TransportCds['DropOffKms'] := 0;
  TransportCds['AC'] := False;
  TransportCds['NoOfVehicles'] := 1;  
  TransportCds['GenerateVoucher'] := True;

end;

procedure TBookingForm.TicketsCdsBeforeInsert(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.BookingClientsCdsBeforeInsert(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.BookingToursCdsBeforeInsert(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingClientsDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);


end;

procedure TBookingForm.AccCDSBeforeInsert(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.SightCDSBeforeInsert(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.TransferCDSBeforeInsert(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.PackCDSBeforeInsert(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransferDS;
  TableArray[7] := TransportDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.TransportCDSBeforeInsert(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransferDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.BookingCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if MessageDlg('Are you sure you want to delete this booking ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Abort;


  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingToursDS;
  TableArray[1] := BookingClientsDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

  UpdateBookingDetails;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  // Delete Booking Related files
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'EXEC p_DeleteBookings '+IntToStr(BookingCds['Bookings_id']) + '';
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TBookingForm.BookingCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingToursDS;
  TableArray[1] := BookingClientsDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

  if BookingCds['Bookings_id'] <> null then
    x_Prev_Bookings_id := BookingCds['Bookings_id']
  else
    x_Prev_Bookings_id := -1;

  RefreshTables(-1);

end;

procedure TBookingForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if BookingCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the booking record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if BookingToursCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the booking tour record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if BookingClientsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the booking client record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TicketsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the Tickets record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if AccCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the Accommodation record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if SightCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the SightSeeing record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TransferCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transfer record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TransportCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transport record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if PackCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the packages record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;

end;

procedure TBookingForm.BookingToursCdsBeforeEdit(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingClientsDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.BookingToursCdsBeforeDelete(DataSet: TDataSet);
begin

  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingClientsDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

  UpdateBookingDetails;  

end;

procedure TBookingForm.cxGridDBTableView1tourdatePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
  GpSds : TSQLDataSet;
  x_MinDate: TDateTime;
begin

  if BookingToursCds['TourCode'] = null then
    begin
      ShowMessage('Please enter the Tour Code first');
      exit;
    end;

  if BookingToursCds.State in [dsBrowse] then
    BookingToursCds.Edit;

  QueryString := 'SELECT tdd.TourDate ' +
    'FROM TourDepartureDates tdd, TourCodes tc ' +
    'WHERE tdd.TourCodes_id = tc.TourCodes_id ' +
    'AND tc.TourCode = ''' + BookingToursCds['TourCode'] + ''' ' +
    'ORDER BY tdd.TourDate';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 0 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TourDate';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Tour Date';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TourDate';

  // Get to the nearest tour date
  QueryString := 'SELECT MIN(tdd.TourDate) as MinDate ' +
    'FROM TourDepartureDates tdd, TourCodes tc ' +
    'WHERE tdd.TourCodes_id = tc.TourCodes_id ' +
    'AND tc.TourCode = ''' + BookingToursCds['TourCode'] + ''' ' +
    'AND TourDate >= ''' + FormatDateTime('mm/dd/yyyy',Date) + ''' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_MinDate := StrToDate('01/01/2000');
  if GpSds['MinDate'] <> null then
    x_MinDate := GpSds['MinDate'];

  GpSds.Free;

  SearchSortForm.SearchCds.Locate('TourDate', x_MinDate, []);

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if BookingToursCds.State = dsBrowse then
        BookingToursCds.Edit;
      BookingToursCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingForm.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if Key = VK_F2 then
    begin

      if BookingToursCds.State <> dsInsert then
        BookingToursCds.Edit;

      _ItinDepDatesForm_ModeType := 2;
      _ItinDepDatesForm_FwdPeriodType := 1;
      _ItinDepDatesForm_BackPeriodType := 0;

      if ItinDepDatesForm = nil then
        Application.CreateForm(TItinDepDatesForm,ItinDepDatesForm);

      ItinDepDatesForm.ShowModal;

      if ItinDepDatesForm.ModalResult = mrOK then
        begin
          BookingToursCds['TourCode'] := ItinDepDatesForm.TourCodeCds['TourCode'];
          BookingToursCds['TourDate'] := ItinDepDatesForm.TourDepDateCds['TourDate'];
        end;

      ItinDepDatesForm.Free;
      ItinDepDatesForm := nil;

    end;

end;

procedure TBookingForm.BookingClientsCdsBeforeEdit(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.BookingClientsCdsBeforeDelete(DataSet: TDataSet);
begin

  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := TicketsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

  UpdateBookingDetails;  

end;

procedure TBookingForm.cxGridDBTableView7ClassLookupPropertiesButtonClick(
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
      TicketsCds['Classid'] := SearchSortForm.SearchCds['Class_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingForm.TicketsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.TicketsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := AccDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.AccCDSBeforeEdit(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);


end;

procedure TBookingForm.AccCDSBeforeDelete(DataSet: TDataSet);
begin

  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := SightDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.TicketsCdsAfterDelete(DataSet: TDataSet);
begin
  TicketsCDS.ApplyUpdates(0);
  TicketsCDS.Refresh;
end;

procedure TBookingForm.cxGridDBTableView6MealPlanLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if AccCds['Addressbook_id'] = null then
    begin
      ShowMessage('Please enter the Hotel first');
      exit;
    end;

  if AccCds.State in [dsBrowse] then
    AccCds.Edit;

  QueryString := 'SELECT MealPlans_id, MealPlan, [Plan], Addressbook_id ' +
    'FROM dbo.fn_GetHotelMealPlans(' +  IntToStr(AccCds['Addressbook_id']) + ',2) ';

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'MealPlans_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'MealPlan';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Plan';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Meal Plan';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Plan';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'MealPlans_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if AccCds.State = dsBrowse then
        AccCds.Edit;
      AccCds['MealPlans_id'] := SearchSortForm.SearchCds['MealPlans_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingForm.cxGridDBTableView6RoomTypeLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if AccCds['Addressbook_id'] = null then
    begin
      ShowMessage('Please enter the Hotel first');
      exit;
    end;

  if AccCds.State in [dsBrowse] then
    AccCds.Edit;

  QueryString := 'SELECT RoomTypes_id, RoomType, Addressbook_id, AC ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(AccCds['Addressbook_id']) + ') ';

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

procedure TBookingForm.cxGridDBTableView5ServicesLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if SightCds['service_cities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if SightCds.State in [dsBrowse] then
    SightCds.Edit;

  QueryString := 'SELECT s.Services_id, s.Description, a.Organisation, s.Cities_id, a.Addressbook_id ' +
    'FROM Services s LEFT JOIN Addressbook a ON s.Addressbook_id = a.Addressbook_id ' +
    'WHERE s.Cities_id = ' + IntToStr(SightCds['service_cities_id']) + ' ' +
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
      SightCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingForm.cxGridDBTableView5AgentLookupPropertiesButtonClick(
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

procedure TBookingForm.SightCDSAfterPost(DataSet: TDataSet);
begin
  SightCds.ApplyUpdates(0);
  //SightCds.Refresh;
end;

procedure TBookingForm.SightCDSBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);


end;

procedure TBookingForm.SightCDSBeforeEdit(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := TransferDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.cxGridDBTableView4ServicesLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TransferCds['service_cities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if TransferCds.State in [dsBrowse] then
    TransferCds.Edit;

  QueryString := 'SELECT s.Services_id, s.Description, a.Organisation, s.Cities_id, a.Addressbook_id ' +
    'FROM Services s LEFT JOIN Addressbook a ON s.Addressbook_id = a.Addressbook_id ' +
    'WHERE s.Cities_id = ' + IntToStr(TransferCds['service_cities_id']) + ' ' +
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
      if TransferCds.State = dsBrowse then
        TransferCds.Edit;
      TransferCds['services_id'] := SearchSortForm.SearchCds['services_id'];
      TransferCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingForm.cxGridDBTableView4AgentLookupPropertiesButtonClick(
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
    'WHERE services_id = ' + IntToStr(TransferCds['services_id']) + ' ' +
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
    
      TransferCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingForm.TransferCDSBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.TransferCDSBeforeEdit(DataSet: TDataSet);
begin
  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransportDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.PackCDSpackages_idChange(Sender: TField);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  if PackCds['Packages_id'] = null then
    exit;

  QueryString := 'SELECT addressbook_id, from_time, to_time ' +
        'FROM Packages ' +
        'WHERE packages_id = ' + IntToStr(PackCds['Packages_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.Eof) then
    begin

      if GpSds['addressbook_id'] <> null then
        PackCds['addressbook_id'] := GpSds['addressbook_id'];

      if GpSds['from_time'] <> null then
        PackCds['from_time'] := GpSds['from_time'];

      if GpSds['to_time'] <> null then
        PackCds['to_time'] := GpSds['to_time'];

    end;

  GpSds.Free;

end;

procedure TBookingForm.PackCDSAfterPost(DataSet: TDataSet);
begin
  PackCds.ApplyUpdates(0);
  //PackCds.Refresh;
end;

procedure TBookingForm.PackCDSBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransferDS;
  TableArray[7] := TransportDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.PackCDSBeforeEdit(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransferDS;
  TableArray[7] := TransportDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.cxGridDBTableView3vehicles_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if PackCds['from_addressbook_id'] = null then
    begin
      ShowMessage('Please enter "From Agent" first');
      exit;
    end;

  if PackCds.State in [dsBrowse] then
    PackCds.Edit;

  QueryString := 'SELECT distinct CST.Vehicles_id, a.vehicle as Automobile ' +
    'FROM CostServices AS CS, CostServicesTransport AS CST, vehicles as A ' +
    'WHERE CS.CostServices_id = CST.CostService_id ' +
    'AND CST.Vehicles_id = A.vehicles_id ' +
    'AND CS.Addressbook_id = ' + IntToStr(PackCds['From_Addressbook_id']) + ' ';

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
      if PackCds.State = dsBrowse then
        PackCds.Edit;
      PackCds['vehicles_id'] := SearchSortForm.SearchCds['vehicles_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TBookingForm.PackCDSAfterDelete(DataSet: TDataSet);
begin
  PackCds.ApplyUpdates(0);
  PackCds.Refresh;
end;

procedure TBookingForm.TransportCDSAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
  //TransportCds.Refresh;
end;

procedure TBookingForm.TransportCDSBeforeDelete(DataSet: TDataSet);
begin

  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransferDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.TransportCDSBeforeEdit(DataSet: TDataSet);
begin

  if (BookingCds['Bookings_id'] = null) then
    Raise Exception.Create('Please save the booking first');

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := BookingDS;
  TableArray[1] := BookingToursDS;
  TableArray[2] := BookingClientsDS;
  TableArray[3] := TicketsDS;
  TableArray[4] := AccDS;
  TableArray[5] := SightDS;
  TableArray[6] := TransferDS;
  TableArray[7] := PackDS;
  PostDsTables(TableArray);

end;

procedure TBookingForm.cxGridDBTableView2vehicleLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TransportCds['addressbook_id'] = null then
    begin
      ShowMessage('Please enter "Agent" first');
      exit;
    end;

  if TransportCds.State in [dsBrowse] then
    TransportCds.Edit;

  QueryString := 'SELECT distinct CST.Vehicles_id, a.vehicle as Automobile ' +
    'FROM CostServices AS CS, CostServicesTransport AS CST, vehicles as A ' +
    'WHERE CS.CostServices_id = CST.CostService_id ' +
    'AND CST.Vehicles_id = A.vehicles_id ' +
    'AND CS.Addressbook_id = ' + IntToStr(TransportCds['Addressbook_id']) + ' ';

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
      if TransportCds.State = dsBrowse then
        TransportCds.Edit; 
      TransportCds['vehicles_id'] := SearchSortForm.SearchCds['vehicles_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TBookingForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    SearchBooking;
end;

procedure TBookingForm.SearchBooking;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  if cxSearchGB.ItemIndex = 0 then
    begin

      QueryString := 'SELECT bookings_id from bookings ' +
            'WHERE reference = ''' + cxSearchEdit.Text + ''' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['Bookings_id']<>null) then
        begin
          RefreshTables(GpSds['Bookings_id']);
        end
      else
        begin
          ShowMessage ('Reference Not Found');
        end;

      GpSds.Free;

    end

  else if cxSearchGB.ItemIndex = 1 then
    begin

      QueryString := 'SELECT bookings_id from bookings ' +
            'WHERE bookings_id = ' + cxSearchEdit.Text + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['Bookings_id']<>null) then
        begin
          RefreshTables(GpSds['Bookings_id']);
        end
      else
        begin
          ShowMessage ('Bookings ID Not Found');
        end;

      GpSds.Free;

    end

  else if cxSearchGB.ItemIndex = 2 then
    begin

      QueryString := 'SELECT BookingsClients_id, bookings_id, name from bookingsclients ' +
            'WHERE name LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'ORDER BY name';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'BookingsClients_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Bookings_id';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Name';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 200;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Pax Name';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'BookingsClients_id';

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          RefreshTables(SearchSortForm.SearchCds['bookings_id']);
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end

  else if cxSearchGB.ItemIndex = 3 then
    begin

      QueryString := 'SELECT DISTINCT Bookings_id, TourCode, TourDate from BookingsTours ' +
            'WHERE TourCode LIKE ''%' + cxSearchEdit.Text + '%'' ' +
            'ORDER BY TourCode, TourDate';

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
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Bookings_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourCode';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'TourDate';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 200;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Tour Code';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Tour Date';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Bookings_id';

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          RefreshTables(SearchSortForm.SearchCds['bookings_id']);
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end;


  DimTabs;


end;

procedure TBookingForm.BookingCdsAfterScroll(DataSet: TDataSet);
begin
  DimTabs;
end;

procedure TBookingForm.DimTabs;
begin

  if TicketsCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if TicketsCds.RecordCount = 0 then
        TicketsTab.ImageIndex := -1
      else
        TicketsTab.Imageindex := 0;
    end;

  if AccCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if AccCds.RecordCount = 0 then
        AccomodationTab.ImageIndex := -1
      else
        AccomodationTab.Imageindex := 1;
    end;

  if SightCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if SightCds.RecordCount = 0 then
        SightTab.ImageIndex := -1
      else
        SightTab.Imageindex := 2;
    end;

  if TransferCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if TransferCds.RecordCount = 0 then
        TransferTab.ImageIndex := -1
      else
        TransferTab.Imageindex := 3;
    end;

  if PackCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if PackCds.RecordCount = 0 then
        PackagesTab.ImageIndex := -1
      else
        PackagesTab.Imageindex := 4;
    end;

  if TransportCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if TransportCds.RecordCount = 0 then
        TransportTab.ImageIndex := -1
      else
        TransportTab.Imageindex := 5;
    end;

  if ((BookingCds['history'] <> null) and (trim(BookingCds['history']) <> '')) or
     ((BookingCds['notes'] <> null) and (trim(BookingCds['notes']) <> '')) then
      HistoryTab.ImageIndex := 6
  else
      HistoryTab.Imageindex := -1;


end;


procedure TBookingForm.cxButton2Click(Sender: TObject);
begin

  _BookingDetailsForm_Level := _BookingForm_Level;
  _BookingDetailsForm_Mode := 1;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TBookingForm.BookingCdscountries_idChange(Sender: TField);
begin
  GetDefaultCurrency;
end;

procedure TBookingForm.BookingClientsCdsAfterInsert(DataSet: TDataSet);
begin
  BookingClientsCds['Male'] := 0;
  BookingClientsCds['LeadPaxOrder'] := 100;
end;

procedure TBookingForm.TransferCDSAfterPost(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
  //TransferCds.Refresh;
end;

procedure TBookingForm.BookingClientsCdscountries_idChange(Sender: TField);
begin
  if (BookingClientsCds['Countries_id'] <> null) and
     ((BookingClientsCds['Resident_Countries_id'] = null) or (BookingClientsCds['Resident_Countries_id'] = 0))then
    BookingClientsCds['Resident_Countries_id'] := BookingClientsCds['Countries_id'];
end;

procedure TBookingForm.cxGridDBTableView7addressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if TicketsCds['Agent_Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(TicketsCds['Agent_Cities_id']) + ' ' +
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
      TicketsCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if TicketsCds.State = dsBrowse then
            TicketsCds.Edit;

          TicketsCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;

end;

procedure TBookingForm.cxGridDBTableView6addressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if AccCds['Hotel_Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''H'') ' +
    'WHERE Cities_id = ' + IntToStr(AccCds['Hotel_Cities_id']) + ' ' +
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
      AccCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin
      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if AccDs.State = dsBrowse then
            AccDs.Edit;
          AccCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TBookingForm.cxGridDBTableView2addressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin

  if TransportCds['Agent_Cities_id'] = null then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText :=
    'SELECT Addressbook_id, Organisation FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(TransportCds['Agent_Cities_id']) + ' ' +
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
          if TransportCds.State = dsBrowse then
            TransportCds.Edit;
          TransportCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;
    end;


  SearchSortForm.Release;
  SearchSortForm := nil;


end;

procedure TBookingForm.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if BookingToursCds.EOF then
    BookingToursCds.Insert;
end;

procedure TBookingForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if BookingClientsCds.EOF then
    BookingClientsCds.Insert;
end;

procedure TBookingForm.cxGridDBTableView7DblClick(Sender: TObject);
begin
  if TicketsCds.EOF then
    TicketsCds.Insert;

end;

procedure TBookingForm.cxGridDBTableView6DblClick(Sender: TObject);
begin
  if AccCds.EOF then
    AccCds.Insert;

end;

procedure TBookingForm.cxGridDBTableView5DblClick(Sender: TObject);
begin
  if SightCds.EOF then
    SightCds.Insert;

end;

procedure TBookingForm.cxGridDBTableView4DblClick(Sender: TObject);
begin
  if TransferCds.EOF then
    TransferCds.Insert;

end;

procedure TBookingForm.cxGridDBTableView3DblClick(Sender: TObject);
begin
  if PackCds.EOF then
    PackCds.Insert;

end;

procedure TBookingForm.cxGridDBTableView2DblClick(Sender: TObject);
begin
  if TransportCds.EOF then
    TransportCds.Insert;

end;

procedure TBookingForm.cxGridDBTableView7from_trainstations_idPropertiesButtonClick(
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

procedure TBookingForm.cxGridDBTableView7to_trainstations_idPropertiesButtonClick(
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

procedure TBookingForm.ChangeTourCode1Click(Sender: TObject);
var
  i, x_Bookings_id: integer;
  QueryString: string;
begin

  x_Bookings_id := -1;

  if cxPageControl1.ActivePage = TicketsTab then
    x_Bookings_id := TicketsCds['Bookings_id']
  else if cxPageControl1.ActivePage = AccomodationTab then
    x_Bookings_id := AccCds['Bookings_id']
  else if cxPageControl1.ActivePage = SightTab then
    x_Bookings_id := SightCds['Bookings_id']
  else if cxPageControl1.ActivePage = TransferTab then
    x_Bookings_id := TransferCds['Bookings_id']
  else if cxPageControl1.ActivePage = PackagesTab then
    x_Bookings_id := PackCds['Bookings_id']
  else if cxPageControl1.ActivePage = TransportTab then
    x_Bookings_id := TransportCds['Bookings_id'];

  QueryString := 'SELECT BookingsTours_id, TourCode, TourDate ' +
    'FROM BookingsTours ' +
    'WHERE Bookings_id =  ' + IntToStr(x_Bookings_id) + ' ' +
    'ORDER BY TourDate, TourCode';

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'BookingsTours_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourCode';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'TourDate';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Tour Code';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Tour Date';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'BookingsTours_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin

      if cxPageControl1.ActivePage = TicketsTab then
        begin

          if TicketsCds.State = dsBrowse then
            TicketsCds.Edit;

          TicketsCds['TourCode'] := SearchSortForm.SearchCds['TourCode'];
          TicketsCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];

        end

      else if cxPageControl1.ActivePage = AccomodationTab then
        begin

          if AccCds.State = dsBrowse then
            AccCds.Edit;

          AccCds['TourCode'] := SearchSortForm.SearchCds['TourCode'];
          AccCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];

        end

      else if cxPageControl1.ActivePage = SightTab then
        begin

          if SightCds.State = dsBrowse then
            SightCds.Edit;

          SightCds['TourCode'] := SearchSortForm.SearchCds['TourCode'];
          SightCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];

        end

      else if cxPageControl1.ActivePage = TransferTab then
        begin

          if TransferCds.State = dsBrowse then
            TransferCds.Edit;

          TransferCds['TourCode'] := SearchSortForm.SearchCds['TourCode'];
          TransferCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];

        end

      else if cxPageControl1.ActivePage = PackagesTab then
        begin

          if PackCds.State = dsBrowse then
            PackCds.Edit;

          PackCds['TourCode'] := SearchSortForm.SearchCds['TourCode'];
          PackCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];

        end

      else if cxPageControl1.ActivePage = TransportTab then
        begin

          if TransportCds.State = dsBrowse then
            TransportCds.Edit;

          TransportCds['TourCode'] := SearchSortForm.SearchCds['TourCode'];
          TransportCds['TourDate'] := SearchSortForm.SearchCds['TourDate'];

        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TBookingForm.BookingCdsAfterDelete(DataSet: TDataSet);
begin

  RefreshTables(-1);

end;

procedure TBookingForm.RefreshTables(x_Bookings_id: integer);
begin

  BookingToursCds.Active := False;
  BookingClientsCds.Active := False;
  TicketsCds.Active := False;
  AccCds.Active := False;
  SightCds.Active := False;
  TransferCds.Active := False;
  TransportCds.Active := False;
  PackCds.Active := False;

  BookingSds.Active := False;
  BookingCds.Active := False;
  BookingCds.Filter := 'Bookings_id = ' + IntToStr(x_Bookings_id);
  BookingCds.Filtered := True;
  BookingSds.Active := True;
  BookingCds.Active := True;

  BookingToursCds.Active := True;
  BookingClientsCds.Active := True;
  TicketsCds.Active := True;
  AccCds.Active := True;
  SightCds.Active := True;
  TransferCds.Active := True;
  TransportCds.Active := True;
  PackCds.Active := True;

end;

procedure TBookingForm.BookingDSStateChange(Sender: TObject);
begin
  if BookingCds.State = dsInsert then
    begin
      AgentLCB.Enabled := True;
      cxDBLookupComboBox2.Enabled := True;
      cxDBLookupComboBox1.Enabled := True;
      cxDBLookupComboBox4.Enabled := True;
      cxDBTextEdit2.Enabled := True;
    end
  else
    begin
      AgentLCB.Enabled := False;
      cxDBLookupComboBox2.Enabled := False;
      cxDBLookupComboBox1.Enabled := False;
      cxDBLookupComboBox4.Enabled := False;
      cxDBTextEdit2.Enabled := False;
    end;
end;

procedure TBookingForm.cxButton3Click(Sender: TObject);
begin

  if BookingCds['Bookings_id'] = null then
    raise exception.create ('Please enter booking first');

  if BookingCds.State = dsInsert then
    BookingCds.Post;

  _UpdateBookingForm_Level := GetUserLevel(g_users_id, 3000);

  If _UpdateBookingForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if UpdateBookingForm = nil then
    Application.CreateForm(TUpdateBookingForm, UpdateBookingForm);

  UpdateBookingForm.ShowModal;

  UpdateBookingForm.Free;
  UpdateBookingForm := nil;

  RefreshTables(BookingCds['Bookings_id']);

end;

procedure TBookingForm.BookingCdsAfterCancel(DataSet: TDataSet);
begin
  RefreshTables(x_Prev_Bookings_id);
end;

end.
