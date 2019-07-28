unit Custom_BookingsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxDBLookupComboBox, cxButtonEdit, cxCheckBox,
  cxCalendar, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxDBEdit,
  cxLabel, DBCtrls, cxContainer, cxGroupBox, ExtCtrls, cxTimeEdit,
  cxRadioGroup, cxNavigator, cxDBNavigator, cxPC, FMTBcd, DBClient,
  Provider, SqlExpr, ImgList;

type
  TCustom_BookingsForm = class(TForm)
    TopPanel: TPanel;
    ClientsPanel: TPanel;
    GridsPanel: TPanel;
    BottomPanel: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxButtonClose: TcxButton;
    cxSearchGB: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxAgentLcmb: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    DBText2: TDBText;
    cxButton3: TcxButton;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1TourCode: TcxGridDBColumn;
    cxGridDBTableView1TourDate: TcxGridDBColumn;
    cxGridDBTableView1TourLeader: TcxGridDBColumn;
    cxGridDBTableView1TourleaderTrainee: TcxGridDBColumn;
    cxGridDBTableView1BookeOon: TcxGridDBColumn;
    cxGridDBTableView1CancelledOn: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BookingSds: TSQLDataSet;
    BookingDsp: TDataSetProvider;
    BookingCds: TClientDataSet;
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
    BookingCdsAgentName: TStringField;
    BookingDs: TDataSource;
    BookingToursSds: TSQLDataSet;
    BookingToursDsp: TDataSetProvider;
    BookingToursCds: TClientDataSet;
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
    BookingToursCdstourleadertrainee: TBooleanField;
    BookingToursDs: TDataSource;
    BookingClientsSds: TSQLDataSet;
    BookingClientsCds: TClientDataSet;
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
    BookingClientsCdsLeadPaxOrder: TIntegerField;
    BookingClientsCdsEmail: TStringField;
    BookingClientsCdsTravelEmail: TStringField;
    BookingClientsCdsPreferredPhone: TStringField;
    BookingClientsCdsEmergencyContact: TStringField;
    BookingClientsCdsEmergencyEmail: TStringField;
    BookingClientsCdsEmergencyHomePhone: TStringField;
    BookingClientsCdsEmergencyMobilePhone: TStringField;
    BookingClientsCdsPaxPassportName: TStringField;
    BookingClientsDsp: TDataSetProvider;
    BookingClientsDs: TDataSource;
    cxGroupBox2: TcxGroupBox;
    TicketsDs: TDataSource;
    TicketsCds: TClientDataSet;
    TicketsCdsbookingstickets_id: TIntegerField;
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
    TicketsCdsAgent_Cities_id: TIntegerField;
    TicketsCdsAgentLookup: TStringField;
    TicketsCdsVoucherLookup: TIntegerField;
    TicketsCdsFromTrainStationLookup: TStringField;
    TicketsCdsToTrainStationLookup: TStringField;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    AccDs: TDataSource;
    AccCds: TClientDataSet;
    AccCdsbookingsaccommodation_id: TIntegerField;
    AccCdsdatein: TSQLTimeStampField;
    AccCdsaddressbook_id: TIntegerField;
    AccCdsroomsizes_id: TIntegerField;
    AccCdsroomtypes_id: TIntegerField;
    AccCdsdateout: TSQLTimeStampField;
    AccCdsmealplans_id: TIntegerField;
    AccCdsbookings_id: TIntegerField;
    AccCdsquantity: TIntegerField;
    AccCdstourcode: TStringField;
    AccCdstourdate: TSQLTimeStampField;
    AccCdsintimated: TBooleanField;
    AccCdsac: TBooleanField;
    AccCdsgeneratevoucher: TBooleanField;
    AccCdsbookedon: TSQLTimeStampField;
    AccCdsconfirmedon: TSQLTimeStampField;
    AccCdsvouchers_id: TIntegerField;
    AccCdscities_id: TIntegerField;
    AccCdssingles: TIntegerField;
    AccCdsdoubles: TIntegerField;
    AccCdscreated: TSQLTimeStampField;
    AccCdseta: TSQLTimeStampField;
    AccCdsbookedbypax: TSQLTimeStampField;
    AccCdscancelledbypax: TSQLTimeStampField;
    AccCdscancelledon: TSQLTimeStampField;
    AccCdsweb_bookingsaccommodation_id: TIntegerField;
    AccCdsquoted: TBCDField;
    AccCdsnotes: TStringField;
    AccCdsinvoices_id: TIntegerField;
    AccCdsNights: TStringField;
    AccCdsRoomTypeLookup: TStringField;
    AccCdsMealPlanLookup: TStringField;
    AccCdsHotel_Cities_id: TIntegerField;
    AccCdsHotelLookup: TStringField;
    AccCdsVoucherLookup: TIntegerField;
    AccCdstriples: TIntegerField;
    AccCdstwins: TIntegerField;
    AccDsp: TDataSetProvider;
    AccSds: TSQLDataSet;
    SightDs: TDataSource;
    SightCds: TClientDataSet;
    SightCdsbookingsservices_id: TIntegerField;
    SightCdsdate: TSQLTimeStampField;
    SightCdsflightno: TStringField;
    SightCdstransfer: TBooleanField;
    SightCdsbookings_id: TIntegerField;
    SightCdseta: TSQLTimeStampField;
    SightCdsvehicles_id: TIntegerField;
    SightCdstourcode: TStringField;
    SightCdstourdate: TSQLTimeStampField;
    SightCdsaddressbook_id: TIntegerField;
    SightCdsplacefrom: TStringField;
    SightCdsplaceto: TStringField;
    SightCdsgeneratevoucher: TBooleanField;
    SightCdsvouchers_id: TIntegerField;
    SightCdsservices_id: TIntegerField;
    SightCdsac: TBooleanField;
    SightCdshotel_addressbook_id: TIntegerField;
    SightCdsfrom_cities_id: TIntegerField;
    SightCdsto_cities_id: TIntegerField;
    SightCdsservice_cities_id: TIntegerField;
    SightCdstransfertypes_id: TIntegerField;
    SightCdsobsolete1: TIntegerField;
    SightCdsobsolete2: TIntegerField;
    SightCdsentrancefees: TBooleanField;
    SightCdsnoofpax_resident: TIntegerField;
    SightCdscreated: TSQLTimeStampField;
    SightCdsbookedbypax: TSQLTimeStampField;
    SightCdscancelledbypax: TSQLTimeStampField;
    SightCdsbookedon: TSQLTimeStampField;
    SightCdsconfirmedon: TSQLTimeStampField;
    SightCdscancelledon: TSQLTimeStampField;
    SightCdsguide: TBooleanField;
    SightCdsquoted: TBCDField;
    SightCdsnotes: TStringField;
    SightCdsinvoices_id: TIntegerField;
    SightCdsServicesLookup: TStringField;
    SightCdsAgentLookup: TStringField;
    SightCdsHotelLookup: TStringField;
    SightCdsVehicleLookup: TStringField;
    SightCdsNoOfVehicles: TIntegerField;
    SightCdsTransport: TBooleanField;
    SightCdsVoucherLookup: TIntegerField;
    SightDsp: TDataSetProvider;
    SightSds: TSQLDataSet;
    TransferDs: TDataSource;
    TransferCds: TClientDataSet;
    TransferCdsbookingsservices_id: TIntegerField;
    TransferCdsdate: TSQLTimeStampField;
    TransferCdsflightno: TStringField;
    TransferCdstransfer: TBooleanField;
    TransferCdsbookings_id: TIntegerField;
    TransferCdseta: TSQLTimeStampField;
    TransferCdsvehicles_id: TIntegerField;
    TransferCdstourcode: TStringField;
    TransferCdstourdate: TSQLTimeStampField;
    TransferCdsaddressbook_id: TIntegerField;
    TransferCdsplacefrom: TStringField;
    TransferCdsplaceto: TStringField;
    TransferCdsgeneratevoucher: TBooleanField;
    TransferCdsvouchers_id: TIntegerField;
    TransferCdsservices_id: TIntegerField;
    TransferCdsac: TBooleanField;
    TransferCdshotel_addressbook_id: TIntegerField;
    TransferCdsfrom_cities_id: TIntegerField;
    TransferCdsto_cities_id: TIntegerField;
    TransferCdsservice_cities_id: TIntegerField;
    TransferCdsobsolete1: TIntegerField;
    TransferCdsobsolete2: TIntegerField;
    TransferCdsentrancefees: TBooleanField;
    TransferCdsnoofpax_resident: TIntegerField;
    TransferCdscreated: TSQLTimeStampField;
    TransferCdsbookedbypax: TSQLTimeStampField;
    TransferCdscancelledbypax: TSQLTimeStampField;
    TransferCdsbookedon: TSQLTimeStampField;
    TransferCdsconfirmedon: TSQLTimeStampField;
    TransferCdscancelledon: TSQLTimeStampField;
    TransferCdsguide: TBooleanField;
    TransferCdsquoted: TBCDField;
    TransferCdsnotes: TStringField;
    TransferCdsinvoices_id: TIntegerField;
    TransferCdsServicesLookup: TStringField;
    TransferCdsAgentLookup: TStringField;
    TransferCdstransfertypes_id: TIntegerField;
    TransferCdsNoOfVehicles: TIntegerField;
    TransferCdsTransport: TBooleanField;
    TransferCdsVoucherLookup: TIntegerField;
    TransferDsp: TDataSetProvider;
    TransferSds: TSQLDataSet;
    PackDs: TDataSource;
    PackCds: TClientDataSet;
    PackCdsbookingspackages_id: TIntegerField;
    PackCdsbookings_id: TIntegerField;
    PackCdspackages_id: TIntegerField;
    PackCdsfrom_date: TSQLTimeStampField;
    PackCdsfrom_time: TSQLTimeStampField;
    PackCdsfrom_addressbook_id: TIntegerField;
    PackCdsto_time: TSQLTimeStampField;
    PackCdsto_place: TStringField;
    PackCdsaddressbook_id: TIntegerField;
    PackCdstourcode: TStringField;
    PackCdstourdate: TSQLTimeStampField;
    PackCdsgeneratevoucher: TBooleanField;
    PackCdsvouchers_id: TIntegerField;
    PackCdsbookedon: TSQLTimeStampField;
    PackCdsconfirmedon: TSQLTimeStampField;
    PackCdscancelledon: TSQLTimeStampField;
    PackCdstransport: TBooleanField;
    PackCdsac: TBooleanField;
    PackCdsvehicles_id: TIntegerField;
    PackCdsnoofvehicles: TIntegerField;
    PackCdsfrom_place: TStringField;
    PackCdsbookedbypax: TSQLTimeStampField;
    PackCdscancelledbypax: TSQLTimeStampField;
    PackCdsquoted: TBCDField;
    PackCdsnotes: TStringField;
    PackCdsVehicleLookup: TStringField;
    PackCdsVoucherLookup: TIntegerField;
    PackDsp: TDataSetProvider;
    PackSds: TSQLDataSet;
    TransportDs: TDataSource;
    TransportCds: TClientDataSet;
    TransportCdsbookingstransport_id: TIntegerField;
    TransportCdsbookings_id: TIntegerField;
    TransportCdsfrom_cities_id: TIntegerField;
    TransportCdsfromdate: TSQLTimeStampField;
    TransportCdsfromtime: TSQLTimeStampField;
    TransportCdsfromplace: TStringField;
    TransportCdsto_cities_id: TIntegerField;
    TransportCdstodate: TSQLTimeStampField;
    TransportCdstotime: TSQLTimeStampField;
    TransportCdstoplace: TStringField;
    TransportCdsvehicles_id: TIntegerField;
    TransportCdsdropoffdays: TIntegerField;
    TransportCdsdropoffkms: TIntegerField;
    TransportCdsaddressbook_id: TIntegerField;
    TransportCdstourcode: TStringField;
    TransportCdstourdate: TSQLTimeStampField;
    TransportCdsvouchers_id: TIntegerField;
    TransportCdsgeneratevoucher: TBooleanField;
    TransportCdsac: TBooleanField;
    TransportCdscreated: TSQLTimeStampField;
    TransportCdsnoofvehicles: TIntegerField;
    TransportCdsnoofpax: TIntegerField;
    TransportCdscancelledbypax: TSQLTimeStampField;
    TransportCdsbookedbypax: TSQLTimeStampField;
    TransportCdsbookedon: TSQLTimeStampField;
    TransportCdsconfirmedon: TSQLTimeStampField;
    TransportCdscancelledon: TSQLTimeStampField;
    TransportCdsweb_bookingstransport_id: TIntegerField;
    TransportCdsquoted: TBCDField;
    TransportCdsnotes: TStringField;
    TransportCdsVehicleLookup: TStringField;
    TransportCdsAgent_Cities_id: TIntegerField;
    TransportCdsAgentLookup: TStringField;
    TransportCdsVoucherLookup: TIntegerField;
    TransportDsp: TDataSetProvider;
    TransportSds: TSQLDataSet;
    cxLabel1: TcxLabel;
    ImageList2: TImageList;
    cxPageControl1: TcxPageControl;
    TicketsTab: TcxTabSheet;
    TicketsGrid: TcxGrid;
    TicketsGridDBTableView: TcxGridDBTableView;
    TicketsGridDBTableViewAgent_cities_id: TcxGridDBColumn;
    TicketsGridDBTableViewAddressBook_id: TcxGridDBColumn;
    TicketsGridDBTableViewTickets_id: TcxGridDBColumn;
    TicketsGridDBTableViewNoOfTickets: TcxGridDBColumn;
    TicketsGridDBTableViewTravelDate: TcxGridDBColumn;
    TicketsGridDBTableViewFrom_Cities_id: TcxGridDBColumn;
    TicketsGridDBTableViewTo_Cities_id: TcxGridDBColumn;
    TicketsGridDBTableViewFlightNo: TcxGridDBColumn;
    TicketsGridDBTableViewFrom_TrainStations_id: TcxGridDBColumn;
    TicketsGridDBTableViewTo_TrainStations_id: TcxGridDBColumn;
    TicketsGridDBTableViewClassLookup: TcxGridDBColumn;
    TicketsGridDBTableViewEtd: TcxGridDBColumn;
    TicketsGridDBTableViewEta: TcxGridDBColumn;
    TicketsGridDBTableViewTourCode: TcxGridDBColumn;
    TicketsGridDBTableViewTourDate: TcxGridDBColumn;
    TicketsGridDBTableViewBookedOn: TcxGridDBColumn;
    TicketsGridDBTableViewConfirmedOn: TcxGridDBColumn;
    TicketsGridDBTableViewCancelledOn: TcxGridDBColumn;
    TicketsGridDBTableViewQuoted: TcxGridDBColumn;
    TicketsGridDBTableViewVouchers_id: TcxGridDBColumn;
    TicketsGridDBTableViewDBNoBooked: TcxGridDBColumn;
    TicketsGridDBTableViewDBNoCancelled: TcxGridDBColumn;
    TicketsGridLevel: TcxGridLevel;
    AccomodationTab: TcxTabSheet;
    AccomodationGrid: TcxGrid;
    AccomodationGridDBTableView: TcxGridDBTableView;
    AccomodationGridDBTableViewHotel_cities_id: TcxGridDBColumn;
    AccomodationGridDBTableViewAddressBook_id: TcxGridDBColumn;
    AccomodationGridDBTableViewDateIn: TcxGridDBColumn;
    AccomodationGridDBTableViewDateOut: TcxGridDBColumn;
    AccomodationGridDBTableViewNights: TcxGridDBColumn;
    AccomodationGridDBTableViewSingles: TcxGridDBColumn;
    AccomodationGridDBTableViewDoubles: TcxGridDBColumn;
    AccomodationGridDBTableViewTriples: TcxGridDBColumn;
    AccomodationGridDBTableViewTwins: TcxGridDBColumn;
    AccomodationGridDBTableViewRoomTypeLookup: TcxGridDBColumn;
    AccomodationGridDBTableViewAC: TcxGridDBColumn;
    AccomodationGridDBTableViewTourCode: TcxGridDBColumn;
    AccomodationGridDBTableViewTourDate: TcxGridDBColumn;
    AccomodationGridDBTableViewBookedOn: TcxGridDBColumn;
    AccomodationGridDBTableViewConfirmedOn: TcxGridDBColumn;
    AccomodationGridDBTableViewCancelledOn: TcxGridDBColumn;
    AccomodationGridDBTableViewQuoted: TcxGridDBColumn;
    AccomodationGridDBTableViewVouchers_id: TcxGridDBColumn;
    AccomodationGridLevel: TcxGridLevel;
    SightTab: TcxTabSheet;
    SightGrid: TcxGrid;
    SightGridDBTableView: TcxGridDBTableView;
    SightGridDBTableViewDate: TcxGridDBColumn;
    SightGridDBTableViewService_Cities_id: TcxGridDBColumn;
    SightGridDBTableViewServicesLookup: TcxGridDBColumn;
    SightGridDBTableViewGuide: TcxGridDBColumn;
    SightGridDBTableViewEntranceFees: TcxGridDBColumn;
    SightGridDBTableViewAgentLookup: TcxGridDBColumn;
    SightGridDBTableViewHotel_AddressBook_id: TcxGridDBColumn;
    SightGridDBTableViewTransport: TcxGridDBColumn;
    SightGridDBTableViewVehicles_id: TcxGridDBColumn;
    SightGridDBTableViewAC: TcxGridDBColumn;
    SightGridDBTableViewNoOfVehicles: TcxGridDBColumn;
    SightGridDBTableViewEta: TcxGridDBColumn;
    SightGridDBTableViewTourCode: TcxGridDBColumn;
    SightGridDBTableViewTourDate: TcxGridDBColumn;
    SightGridDBTableViewBookedOn: TcxGridDBColumn;
    SightGridDBTableViewConfirmedOn: TcxGridDBColumn;
    SightGridDBTableViewCancelledOn: TcxGridDBColumn;
    SightGridDBTableViewQuoted: TcxGridDBColumn;
    SightGridDBTableViewVouchers_id: TcxGridDBColumn;
    SightGridLevel: TcxGridLevel;
    TransferTab: TcxTabSheet;
    TransferGrid: TcxGrid;
    TransferGridDBTableView: TcxGridDBTableView;
    TransferGridDBTableViewDBTransferTypes_id: TcxGridDBColumn;
    TransferGridDBTableViewDate: TcxGridDBColumn;
    TransferGridDBTableViewFrom_Cities_id: TcxGridDBColumn;
    TransferGridDBTableViewTo_Cities_id: TcxGridDBColumn;
    TransferGridDBTableViewService_Cities_id: TcxGridDBColumn;
    TransferGridDBTableViewServicesLookup: TcxGridDBColumn;
    TransferGridDBTableViewAgentLookup: TcxGridDBColumn;
    TransferGridDBTableViewHotel_AddressBook_id: TcxGridDBColumn;
    TransferGridDBTableViewFlightNo: TcxGridDBColumn;
    TransferGridDBTableViewEta: TcxGridDBColumn;
    TransferGridDBTableViewVehicles_id: TcxGridDBColumn;
    TransferGridDBTableViewNoOfVehicles: TcxGridDBColumn;
    TransferGridDBTableViewAC: TcxGridDBColumn;
    TransferGridDBTableViewTourCode: TcxGridDBColumn;
    TransferGridDBTableViewTourDate: TcxGridDBColumn;
    TransferGridDBTableViewBookedOn: TcxGridDBColumn;
    TransferGridDBTableViewConfirmedOn: TcxGridDBColumn;
    TransferGridDBTableViewCancelledOn: TcxGridDBColumn;
    TransferGridDBTableViewQuoted: TcxGridDBColumn;
    TransferGridDBTableViewVouchers_id: TcxGridDBColumn;
    TransferGridDBTableViewGenerateVoucher: TcxGridDBColumn;
    TransferGridLevel: TcxGridLevel;
    PackagesTab: TcxTabSheet;
    Label5: TcxLabel;
    PackagesGrid: TcxGrid;
    PackagesGridDBTableView: TcxGridDBTableView;
    PackagesGridDBTableViewPackages_id: TcxGridDBColumn;
    PackagesGridDBTableViewAddressBook_id: TcxGridDBColumn;
    PackagesGridDBTableViewFrom_Date: TcxGridDBColumn;
    PackagesGridDBTableViewFrom_Time: TcxGridDBColumn;
    PackagesGridDBTableViewFrom_Place: TcxGridDBColumn;
    PackagesGridDBTableViewTo_Time: TcxGridDBColumn;
    PackagesGridDBTableViewTo_Place: TcxGridDBColumn;
    PackagesGridDBTableViewFrom_AddressBook_id: TcxGridDBColumn;
    PackagesGridDBTableViewTransport: TcxGridDBColumn;
    PackagesGridDBTableViewAC: TcxGridDBColumn;
    PackagesGridDBTableViewTourCode: TcxGridDBColumn;
    PackagesGridDBTableViewTourDate: TcxGridDBColumn;
    PackagesGridDBTableViewVehicleLookUp: TcxGridDBColumn;
    PackagesGridDBTableViewNoOfVehicles: TcxGridDBColumn;
    PackagesGridDBTableViewBookedOn: TcxGridDBColumn;
    PackagesGridDBTableViewConfirmedOn: TcxGridDBColumn;
    PackagesGridDBTableViewCancelledOn: TcxGridDBColumn;
    PackagesGridDBTableViewQuoted: TcxGridDBColumn;
    PackagesGridDBTableViewVouchers_id: TcxGridDBColumn;
    PackagesGridLevel: TcxGridLevel;
    TransportTab: TcxTabSheet;
    TransportGrid: TcxGrid;
    TransportGridDBTableView: TcxGridDBTableView;
    TransportGridDBTableViewFrom_Cities_id: TcxGridDBColumn;
    TransportGridDBTableViewFromPlace: TcxGridDBColumn;
    TransportGridDBTableViewTo_Cities_id: TcxGridDBColumn;
    TransportGridDBTableViewToPlace: TcxGridDBColumn;
    TransportGridDBTableViewFromDate: TcxGridDBColumn;
    TransportGridDBTableViewFromTime: TcxGridDBColumn;
    TransportGridDBTableViewToDate: TcxGridDBColumn;
    TransportGridDBTableViewToTime: TcxGridDBColumn;
    TransportGridDBTableViewNoOfPax: TcxGridDBColumn;
    TransportGridDBTableViewAgent_Cities_id: TcxGridDBColumn;
    TransportGridDBTableViewAddressBook_id: TcxGridDBColumn;
    TransportGridDBTableViewVehicleLookUp: TcxGridDBColumn;
    TransportGridDBTableViewAC: TcxGridDBColumn;
    TransportGridDBTableViewNoOfVehicles: TcxGridDBColumn;
    TransportGridDBTableViewDropOffDays: TcxGridDBColumn;
    TransportGridDBTableViewDropOffKms: TcxGridDBColumn;
    TransportGridDBTableViewTourCode: TcxGridDBColumn;
    TransportGridDBTableViewTourDate: TcxGridDBColumn;
    TransportGridDBTableViewCancelledOn: TcxGridDBColumn;
    TransportGridDBTableViewBookedOn: TcxGridDBColumn;
    TransportGridDBTableViewConfirmedOn: TcxGridDBColumn;
    TransportGridDBTableViewQuoted: TcxGridDBColumn;
    TransportGridDBTableViewVouchers_id: TcxGridDBColumn;
    TransportGridLevel: TcxGridLevel;
    HistoryTab: TcxTabSheet;
    Label7: TcxLabel;
    Label9: TcxLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    cxLabel2: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1Male: TcxGridDBColumn;
    cxGrid1DBTableView1DateOfBirth: TcxGridDBColumn;
    cxGrid1DBTableView1PassportNo: TcxGridDBColumn;
    cxGrid1DBTableView1DateOfIssue: TcxGridDBColumn;
    cxGrid1DBTableView1PlaceOfIssue: TcxGridDBColumn;
    cxGrid1DBTableView1ValidTo: TcxGridDBColumn;
    cxGrid1DBTableView1Countries_id: TcxGridDBColumn;
    cxGrid1DBTableView1Resident_Countries_id: TcxGridDBColumn;
    cxGrid1DBTableView1LeadPaxOrder: TcxGridDBColumn;
    cxGrid1DBTableView1Email: TcxGridDBColumn;
    cxGrid1DBTableView1TravelEmail: TcxGridDBColumn;
    cxGrid1DBTableView1PreferredPhone: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyContact: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyEmail: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyHomePhone: TcxGridDBColumn;
    cxGrid1DBTableView1EmergencyMobilePhone: TcxGridDBColumn;
    cxGrid1DBTableView1PaxPassportName: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDs: TDataSource;
    WebUsersSds: TSQLDataSet;
    WebUsersDsp: TDataSetProvider;
    WebUsersCds: TClientDataSet;
    WebUsersCdsweb_users_id: TIntegerField;
    WebUsersCdsweb_user: TStringField;
    WebUsersCdsusername: TStringField;
    WebUsersDs: TDataSource;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesCdscurrencies_id: TIntegerField;
    CurrenciesCdscurrency: TStringField;
    CurrenciesCdscurrencycode: TStringField;
    CurrenciesDs: TDataSource;
    CountriesDs: TDataSource;
    CountriesCds: TClientDataSet;
    CountriesCdscountries_id: TIntegerField;
    CountriesCdscountry: TStringField;
    CountriesDsp: TDataSetProvider;
    CountriesSds: TSQLDataSet;
    TourDs: TDataSource;
    TourCds: TClientDataSet;
    TourCdsTourCodes_id: TIntegerField;
    TourCdsTourCode: TStringField;
    TourSds: TSQLDataSet;
    TourDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    ClassDs: TDataSource;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDsp: TDataSetProvider;
    ClassSds: TSQLDataSet;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    TktDs: TDataSource;
    TktSds: TSQLDataSet;
    VoucherSds: TSQLDataSet;
    VoucherDsp: TDataSetProvider;
    VoucherCds: TClientDataSet;
    VoucherCdsvouchers_id: TIntegerField;
    VoucherCdsvoucherno: TIntegerField;
    VoucherCdsyearref: TIntegerField;
    VoucherDs: TDataSource;
    TktCds: TClientDataSet;
    TktCdsTickets_id: TIntegerField;
    TktCdsDetails: TStringField;
    TktDsp: TDataSetProvider;
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
    MealPlanCds: TClientDataSet;
    MealPlanCdsmealplans_id: TIntegerField;
    MealPlanCdsmealplan: TStringField;
    MealPlanCdsplan: TStringField;
    MealPlanDs: TDataSource;
    MealPlanDsp: TDataSetProvider;
    MealPlanSds: TSQLDataSet;
    RoomTypeDs: TDataSource;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsroomtypes_id: TIntegerField;
    RoomTypeCdsroomtype: TStringField;
    RoomTypeCdsac: TBooleanField;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeSds: TSQLDataSet;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    HotelCdsCities_id: TIntegerField;
    HoteDs: TDataSource;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleDs: TDataSource;
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesCdsServices_id: TIntegerField;
    ServicesCdsService: TStringField;
    ServicesCdsDescription: TStringField;
    ServicesCdsActive: TBooleanField;
    ServicesDs: TDataSource;
    TransferTypesSds: TSQLDataSet;
    TransferTypesDsp: TDataSetProvider;
    TransferTypesCds: TClientDataSet;
    TransferTypesCdstransfertypes_id: TIntegerField;
    TransferTypesCdstransfer: TStringField;
    TransferTypesCdstransfercode: TStringField;
    TransferTypesDs: TDataSource;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesCdsPackages_id: TIntegerField;
    PackagesCdsPackage: TStringField;
    PackagesCdsAddressbook_id: TIntegerField;
    PackagesCdsOrganisation: TStringField;
    PackagesDs: TDataSource;
    AccomodationGridDBTableViewMealPlans_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BookingCdsAfterDelete(DataSet: TDataSet);
    procedure BookingCdsAfterPost(DataSet: TDataSet);
    procedure BookingCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingCdsBeforePost(DataSet: TDataSet);
    procedure BookingCdsBeforeInsert(DataSet: TDataSet);
    procedure BookingToursCdsAfterDelete(DataSet: TDataSet);
    procedure BookingToursCdsAfterPost(DataSet: TDataSet);
    procedure BookingToursCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingToursCdsBeforeInsert(DataSet: TDataSet);
    procedure BookingToursCdsBeforePost(DataSet: TDataSet);
    procedure BookingClientsCdsAfterDelete(DataSet: TDataSet);
    procedure BookingClientsCdsAfterPost(DataSet: TDataSet);
    procedure BookingClientsCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingClientsCdsBeforeInsert(DataSet: TDataSet);
    procedure BookingClientsCdsBeforePost(DataSet: TDataSet);
    procedure TicketsCdsAfterDelete(DataSet: TDataSet);
    procedure TicketsCdsAfterPost(DataSet: TDataSet);
    procedure TicketsCdsBeforeEdit(DataSet: TDataSet);
    procedure TicketsCdsBeforeInsert(DataSet: TDataSet);
    procedure TicketsCdsBeforePost(DataSet: TDataSet);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure AccCdsAfterDelete(DataSet: TDataSet);
    procedure AccCdsBeforeEdit(DataSet: TDataSet);
    procedure AccCdsBeforeInsert(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure SightCdsAfterDelete(DataSet: TDataSet);
    procedure SightCdsAfterPost(DataSet: TDataSet);
    procedure SightCdsBeforeEdit(DataSet: TDataSet);
    procedure SightCdsBeforeInsert(DataSet: TDataSet);
    procedure SightCdsBeforePost(DataSet: TDataSet);
    procedure TransferCdsAfterDelete(DataSet: TDataSet);
    procedure TransferCdsAfterPost(DataSet: TDataSet);
    procedure TransferCdsBeforeEdit(DataSet: TDataSet);
    procedure TransferCdsBeforeInsert(DataSet: TDataSet);
    procedure TransferCdsBeforePost(DataSet: TDataSet);
    procedure PackCdsAfterDelete(DataSet: TDataSet);
    procedure PackCdsAfterPost(DataSet: TDataSet);
    procedure PackCdsBeforeEdit(DataSet: TDataSet);
    procedure PackCdsBeforeInsert(DataSet: TDataSet);
    procedure PackCdsBeforePost(DataSet: TDataSet);
    procedure TransportCdsAfterDelete(DataSet: TDataSet);
    procedure TransportCdsAfterPost(DataSet: TDataSet);
    procedure TransportCdsBeforeEdit(DataSet: TDataSet);
    procedure TransportCdsBeforeInsert(DataSet: TDataSet);
    procedure TransportCdsBeforePost(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BookingCdsBeforeDelete(DataSet: TDataSet);
    procedure BookingToursCdsBeforeDelete(DataSet: TDataSet);
    procedure BookingClientsCdsBeforeDelete(DataSet: TDataSet);
    procedure TicketsCdsBeforeDelete(DataSet: TDataSet);
    procedure AccCdsBeforeDelete(DataSet: TDataSet);
    procedure SightCdsBeforeDelete(DataSet: TDataSet);
    procedure TransferCdsBeforeDelete(DataSet: TDataSet);
    procedure PackCdsBeforeDelete(DataSet: TDataSet);
    procedure TransportCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetFormDimensions;    
  end;

var
  Custom_BookingsForm: TCustom_BookingsForm;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: Integer;
  Custom_FormHeight: Integer;
  Custom_TableArray: Array[0..7] of TDataSource;  
  Custom_BookingCds_State: TDataSetState;
  Custom_BookingClientsCds_State: TDataSetState;
  Custom_BookingToursCds_State: TDataSetState;
implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TCustom_BookingsForm.FormCreate(Sender: TObject);
begin
  BookingCds.Active := True;
  BookingClientsCds.Active := True;
  BookingToursCds.Active := True;

  TicketsCds.Active := True;
  AccCds.Active := True;
  SightCds.Active := True;
  TransferCds.Active := True;
  PackCds.Active := True;
  TransportCds.Active := True;

  //**=== Activate look up components ===**//
  PrinAgentCds.Open;
  WebUsersCds.Open;
  CountriesCds.Open;
  CurrenciesCds.Open;
  TourCds.Open;
  CitiesCds.Open;
  ClassCds.Open;
  AgentCds.Open;
  TktCds.Open;
  VoucherCds.Open;
  TrainStationCds.Open;

  MealPlanCds.Open;
  RoomTypeCds.Open;
  HotelCds.Open;
  VehicleCds.Open;
  ServicesCds.Open;
  TransferTypesCds.Open;
  PackagesCds.Open;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxPageControl1.ActivePageIndex := 0;
  TicketsGridDBTableView.DataController.GotoFirst;
end;

procedure TCustom_BookingsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BookingCds.Active := False;
  BookingClientsCds.Active := False;
  BookingToursCds.Active := False;
  TicketsCds.Active := False;
  AccCds.Active := False;
  SightCds.Active := False;
  TransferCds.Active := False;
  PackCds.Active := False;
  TransportCds.Active := False;

  Action := caFree;
end;

procedure TCustom_BookingsForm.FormDestroy(Sender: TObject);
begin
  Custom_BookingsForm := nil;
end;

procedure TCustom_BookingsForm.BookingCdsAfterDelete(DataSet: TDataSet);
begin
  BookingCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.BookingCdsAfterPost(DataSet: TDataSet);
begin
  BookingCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.BookingCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.BookingCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BookingCds_State := BookingCds.State;

  if BookingCds.State = dsInsert then
    BookingCds['Bookings_id'] := GetNextId('Bookings','Bookings_id');
end;

procedure TCustom_BookingsForm.BookingCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.BookingToursCdsAfterDelete(
  DataSet: TDataSet);
begin
  BookingToursCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.BookingToursCdsAfterPost(DataSet: TDataSet);
begin
  BookingToursCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.BookingToursCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.BookingToursCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.BookingToursCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_BookingToursCds_State := BookingToursCds.State;

  if BookingToursCds.State = dsInsert then
    BookingToursCds['BookingsTours_id'] := GetNextId('BookingsTours','BookingsTours_id');
end;

procedure TCustom_BookingsForm.BookingClientsCdsAfterDelete(
  DataSet: TDataSet);
begin
  BookingClientsCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.BookingClientsCdsAfterPost(
  DataSet: TDataSet);
begin
  BookingClientsCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.BookingClientsCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.BookingClientsCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.BookingClientsCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_BookingClientsCds_State := BookingClientsCds.State;

  if BookingClientsCds.State = dsInsert then
    BookingClientsCds['BookingsClients_id'] := GetNextId('BookingsClients','BookingsClients_id');
end;

procedure TCustom_BookingsForm.TicketsCdsAfterDelete(DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.TicketsCdsAfterPost(DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.TicketsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.TicketsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.TicketsCdsBeforePost(DataSet: TDataSet);
begin
  if TicketsCds.State = dsInsert then
    TicketsCds['BookingsTickets_id'] := GetNextId('BookingsTickets','BookingsTickets_id');
end;

procedure TCustom_BookingsForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.AccCdsAfterDelete(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.AccCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.AccCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.AccCdsBeforePost(DataSet: TDataSet);
begin
  if AccCds.State = dsInsert then
    AccCds['BookingsAccommodation_id'] := GetNextId('BookingsAccommodation','BookingsAccommodation_id');
end;

procedure TCustom_BookingsForm.SightCdsAfterDelete(DataSet: TDataSet);
begin
  SightCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.SightCdsAfterPost(DataSet: TDataSet);
begin
  SightCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.SightCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.SightCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.SightCdsBeforePost(DataSet: TDataSet);
begin
  if SightCds.State = dsInsert then
    SightCds['BookingsServices_id'] := GetNextId('BookingsServices','BookingsServices_id');
end;

procedure TCustom_BookingsForm.TransferCdsAfterDelete(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.TransferCdsAfterPost(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.TransferCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.TransferCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.TransferCdsBeforePost(DataSet: TDataSet);
begin
  if TransferCds.State = dsInsert then
    TransferCds['BookingsServices_id'] := GetNextId('BookingsServices','BookingsServices_id');
end;

procedure TCustom_BookingsForm.PackCdsAfterDelete(DataSet: TDataSet);
begin
  PackCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.PackCdsAfterPost(DataSet: TDataSet);
begin
  PackCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.PackCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.PackCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.PackCdsBeforePost(DataSet: TDataSet);
begin
  if PackCds.State = dsInsert then
    PackCds['BookingsPackages_id'] := GetNextId('BookingsPackages','BookingsPackages_id');
end;

procedure TCustom_BookingsForm.TransportCdsAfterDelete(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.TransportCdsAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TCustom_BookingsForm.TransportCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.TransportCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom_BookingsForm.TransportCdsBeforePost(DataSet: TDataSet);
begin
  if TransportCds.State = dsInsert then
    TransportCds['BookingsTransport_id'] := GetNextId('BookingsTransport','BookingsTransport_id');
end;

procedure TCustom_BookingsForm.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_BookingsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if BookingCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the booking details record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BookingToursCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the booking tours record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BookingClientsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the booking clients record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if TicketsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tickets record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if AccCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the accommodation record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if SightCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the sight seeing record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if TransferCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transfer record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if PackCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the packages record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if TransportCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transport record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;
end;

procedure TCustom_BookingsForm.BookingCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
  
  BookingToursCds.First;
  if not BookingToursCds.Eof then
    raise exception.create ('Please delete the corresponding tour details first');

  BookingClientsCds.First;
  if not BookingClientsCds.Eof then
    raise exception.create ('Please delete the corresponding client details first');

  TicketsCds.First;
  if not TicketsCds.Eof then
    raise exception.create ('Please delete the corresponding ticket details first');

  AccCds.First;
  if not AccCds.Eof then
    raise exception.create ('Please delete the corresponding accommodation details first');

  SightCds.First;
  if not SightCds.Eof then
    raise exception.create ('Please delete the corresponding sight seeing details first');

  TransferCds.First;
  if not TransferCds.Eof then
    raise exception.create ('Please delete the corresponding transfer details first');

  PackCds.First;
  if not PackCds.Eof then
    raise exception.create ('Please delete the corresponding package details first');

  TransportCds.First;
  if not TransportCds.Eof then
    raise exception.create ('Please delete the corresponding transport details first');
end;

procedure TCustom_BookingsForm.BookingToursCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
    
  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.BookingClientsCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.TicketsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.AccCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.SightCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
    
  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.TransferCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.PackCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);    
end;

procedure TCustom_BookingsForm.TransportCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := BookingToursDs;
  Custom_TableArray[1] := BookingClientsDs;
  Custom_TableArray[2] := TicketsDs;
  Custom_TableArray[3] := AccDs;
  Custom_TableArray[4] := SightDs;
  Custom_TableArray[5] := TransferDs;
  Custom_TableArray[6] := TransportDs;
  Custom_TableArray[7] := PackDs;

  PostDsTables(Custom_TableArray);
end;

procedure TCustom_BookingsForm.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
end;

procedure TCustom_BookingsForm.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;

end.
