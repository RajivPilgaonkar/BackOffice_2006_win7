unit Custom_Bookings_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, cxLabel, cxDBLabel,
  cxNavigator, cxDBNavigator, cxTextEdit, cxContainer, cxGroupBox,
  cxRadioGroup, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC, ExtCtrls,
  FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TCustom_Bookings_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxPageControl4: TcxPageControl;
    cxTabSheetTickets: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cxTabSheetAcc: TcxTabSheet;
    cxTabSheetSs: TcxTabSheet;
    cxTabSheetTrsf: TcxTabSheet;
    cxTabSheetPack: TcxTabSheet;
    cxTabSheetTrans: TcxTabSheet;
    cxTabSheetHistory: TcxTabSheet;
    cxButtonUtilities: TcxButton;
    cxRadioGroup: TcxRadioGroup;
    cxSearchTextEdit: TcxTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxDBLabelKeyId_Detail2: TcxDBLabel;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Detail1: TcxDBLabel;
    PopupMenu1: TPopupMenu;
    CopyTrains1: TMenuItem;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    Detail1Sds: TSQLDataSet;
    Detail1Dsp: TDataSetProvider;
    Detail1Cds: TClientDataSet;
    Detail1Ds: TDataSource;
    Detail2Sds: TSQLDataSet;
    Detail2Dsp: TDataSetProvider;
    Detail2Cds: TClientDataSet;
    Detail2Ds: TDataSource;
    MasterCdsbookings_id: TIntegerField;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsreference: TStringField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdshistory: TMemoField;
    MasterCdscancelled: TSQLTimeStampField;
    MasterCdsnotes: TMemoField;
    MasterCdstravellingwith_bookings_id: TIntegerField;
    MasterCdsbookingsclients_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    MasterCdscreated: TSQLTimeStampField;
    MasterCdssessionid: TStringField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsweb_bookings_id: TIntegerField;
    MasterCdsweb_users_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    Detail1Cdsbookingstours_id: TIntegerField;
    Detail1Cdsbookings_id: TIntegerField;
    Detail1Cdstourcode: TStringField;
    Detail1Cdstourdate: TSQLTimeStampField;
    Detail1Cdstourleader: TBooleanField;
    Detail1Cdsbookedbypax: TSQLTimeStampField;
    Detail1Cdscancelledbypax: TSQLTimeStampField;
    Detail1Cdscancelledon: TSQLTimeStampField;
    Detail1Cdsbookedon: TSQLTimeStampField;
    Detail1Cdsconfirmedon: TSQLTimeStampField;
    Detail1Cdsweb_bookingstours_id: TIntegerField;
    Detail1Cdsquoted: TBCDField;
    Detail1Cdsnotes: TStringField;
    Detail1Cdstourleadertrainee: TBooleanField;
    Detail2Cdsbookingsclients_id: TIntegerField;
    Detail2Cdsname: TStringField;
    Detail2Cdsdateofbirth: TSQLTimeStampField;
    Detail2Cdspassportno: TStringField;
    Detail2Cdsdateofissue: TSQLTimeStampField;
    Detail2Cdsplaceofissue: TStringField;
    Detail2Cdsvalidto: TSQLTimeStampField;
    Detail2Cdscountries_id: TIntegerField;
    Detail2Cdsbookings_id: TIntegerField;
    Detail2Cdsroomno: TIntegerField;
    Detail2Cdsmale: TBooleanField;
    Detail2Cdssinglesupplement: TBooleanField;
    Detail2Cdsresident_countries_id: TIntegerField;
    Detail2Cdscreated: TSQLTimeStampField;
    Detail2Cdsweb_bookingsclients_id: TIntegerField;
    Detail2Cdslocalpayment: TBooleanField;
    Detail2CdsLeadPaxOrder: TIntegerField;
    Detail2CdsEmail: TStringField;
    Detail2CdsTravelEmail: TStringField;
    Detail2CdsPreferredPhone: TStringField;
    Detail2CdsEmergencyContact: TStringField;
    Detail2CdsEmergencyEmail: TStringField;
    Detail2CdsEmergencyHomePhone: TStringField;
    Detail2CdsEmergencyMobilePhone: TStringField;
    Detail2CdsPaxPassportName: TStringField;
    BkgTicketsSds: TSQLDataSet;
    BkgTicketsDsp: TDataSetProvider;
    BkgTicketsCds: TClientDataSet;
    BkgTicketsDs: TDataSource;
    BkgAccSds: TSQLDataSet;
    BkgAccDsp: TDataSetProvider;
    BkgAccCds: TClientDataSet;
    BkgAccDs: TDataSource;
    BkgSsSds: TSQLDataSet;
    BkgSsDsp: TDataSetProvider;
    BkgSsCds: TClientDataSet;
    BkgSsDs: TDataSource;
    BkgTrsfSds: TSQLDataSet;
    BkgTrsfDsp: TDataSetProvider;
    BkgTrsfCds: TClientDataSet;
    BkgTrsfDs: TDataSource;
    BkgPackSds: TSQLDataSet;
    BkgPackDsp: TDataSetProvider;
    BkgPackCds: TClientDataSet;
    BkgPackDs: TDataSource;
    BkgTransSds: TSQLDataSet;
    BkgTransDsp: TDataSetProvider;
    BkgTransCds: TClientDataSet;
    BkgTransDs: TDataSource;
    BkgAccCdsbookingsaccommodation_id: TIntegerField;
    BkgAccCdsdatein: TSQLTimeStampField;
    BkgAccCdsaddressbook_id: TIntegerField;
    BkgAccCdsroomsizes_id: TIntegerField;
    BkgAccCdsroomtypes_id: TIntegerField;
    BkgAccCdsdateout: TSQLTimeStampField;
    BkgAccCdsmealplans_id: TIntegerField;
    BkgAccCdsbookings_id: TIntegerField;
    BkgAccCdsquantity: TIntegerField;
    BkgAccCdstourcode: TStringField;
    BkgAccCdstourdate: TSQLTimeStampField;
    BkgAccCdsintimated: TBooleanField;
    BkgAccCdsac: TBooleanField;
    BkgAccCdsgeneratevoucher: TBooleanField;
    BkgAccCdsbookedon: TSQLTimeStampField;
    BkgAccCdsconfirmedon: TSQLTimeStampField;
    BkgAccCdsvouchers_id: TIntegerField;
    BkgAccCdscities_id: TIntegerField;
    BkgAccCdssingles: TIntegerField;
    BkgAccCdsdoubles: TIntegerField;
    BkgAccCdscreated: TSQLTimeStampField;
    BkgAccCdseta: TSQLTimeStampField;
    BkgAccCdsbookedbypax: TSQLTimeStampField;
    BkgAccCdscancelledbypax: TSQLTimeStampField;
    BkgAccCdscancelledon: TSQLTimeStampField;
    BkgAccCdsweb_bookingsaccommodation_id: TIntegerField;
    BkgAccCdsquoted: TBCDField;
    BkgAccCdsnotes: TStringField;
    BkgAccCdsinvoices_id: TIntegerField;
    BkgAccCdsLeadPax: TStringField;
    BkgAccCdsHotel_Cities_id: TIntegerField;
    BkgAccCdstriples: TIntegerField;
    BkgAccCdstwins: TIntegerField;
    BkgTrsfCdsbookingsservices_id: TIntegerField;
    BkgTrsfCdsdate: TSQLTimeStampField;
    BkgTrsfCdsflightno: TStringField;
    BkgTrsfCdstransfer: TBooleanField;
    BkgTrsfCdsbookings_id: TIntegerField;
    BkgTrsfCdseta: TSQLTimeStampField;
    BkgTrsfCdsvehicles_id: TIntegerField;
    BkgTrsfCdstourcode: TStringField;
    BkgTrsfCdstourdate: TSQLTimeStampField;
    BkgTrsfCdsaddressbook_id: TIntegerField;
    BkgTrsfCdsplacefrom: TStringField;
    BkgTrsfCdsplaceto: TStringField;
    BkgTrsfCdsgeneratevoucher: TBooleanField;
    BkgTrsfCdsvouchers_id: TIntegerField;
    BkgTrsfCdsservices_id: TIntegerField;
    BkgTrsfCdsac: TBooleanField;
    BkgTrsfCdshotel_addressbook_id: TIntegerField;
    BkgTrsfCdsfrom_cities_id: TIntegerField;
    BkgTrsfCdsto_cities_id: TIntegerField;
    BkgTrsfCdsservice_cities_id: TIntegerField;
    BkgTrsfCdstransfertypes_id: TIntegerField;
    BkgTrsfCdsobsolete1: TIntegerField;
    BkgTrsfCdsobsolete2: TIntegerField;
    BkgTrsfCdsentrancefees: TBooleanField;
    BkgTrsfCdsnoofpax_resident: TIntegerField;
    BkgTrsfCdscreated: TSQLTimeStampField;
    BkgTrsfCdsbookedbypax: TSQLTimeStampField;
    BkgTrsfCdscancelledbypax: TSQLTimeStampField;
    BkgTrsfCdsbookedon: TSQLTimeStampField;
    BkgTrsfCdsconfirmedon: TSQLTimeStampField;
    BkgTrsfCdscancelledon: TSQLTimeStampField;
    BkgTrsfCdsguide: TBooleanField;
    BkgTrsfCdsquoted: TBCDField;
    BkgTrsfCdsnotes: TStringField;
    BkgTrsfCdsinvoices_id: TIntegerField;
    BkgTrsfCdsNoOfVehicles: TIntegerField;
    BkgTrsfCdsTransport: TBooleanField;
    BkgTrsfCdsLeadPax: TStringField;
    BkgPackCdsbookingspackages_id: TIntegerField;
    BkgPackCdsbookings_id: TIntegerField;
    BkgPackCdspackages_id: TIntegerField;
    BkgPackCdsfrom_date: TSQLTimeStampField;
    BkgPackCdsfrom_time: TSQLTimeStampField;
    BkgPackCdsfrom_addressbook_id: TIntegerField;
    BkgPackCdsto_time: TSQLTimeStampField;
    BkgPackCdsto_place: TStringField;
    BkgPackCdsaddressbook_id: TIntegerField;
    BkgPackCdstourcode: TStringField;
    BkgPackCdstourdate: TSQLTimeStampField;
    BkgPackCdsgeneratevoucher: TBooleanField;
    BkgPackCdsvouchers_id: TIntegerField;
    BkgPackCdsbookedon: TSQLTimeStampField;
    BkgPackCdsconfirmedon: TSQLTimeStampField;
    BkgPackCdscancelledon: TSQLTimeStampField;
    BkgPackCdstransport: TBooleanField;
    BkgPackCdsac: TBooleanField;
    BkgPackCdsvehicles_id: TIntegerField;
    BkgPackCdsnoofvehicles: TIntegerField;
    BkgPackCdsfrom_place: TStringField;
    BkgPackCdsbookedbypax: TSQLTimeStampField;
    BkgPackCdscancelledbypax: TSQLTimeStampField;
    BkgPackCdsquoted: TBCDField;
    BkgPackCdsnotes: TStringField;
    BkgPackCdsLeadPax: TStringField;
    BkgTransCdsbookingstransport_id: TIntegerField;
    BkgTransCdsbookings_id: TIntegerField;
    BkgTransCdsfrom_cities_id: TIntegerField;
    BkgTransCdsfromdate: TSQLTimeStampField;
    BkgTransCdsfromtime: TSQLTimeStampField;
    BkgTransCdsfromplace: TStringField;
    BkgTransCdsto_cities_id: TIntegerField;
    BkgTransCdstodate: TSQLTimeStampField;
    BkgTransCdstotime: TSQLTimeStampField;
    BkgTransCdstoplace: TStringField;
    BkgTransCdsvehicles_id: TIntegerField;
    BkgTransCdsdropoffdays: TIntegerField;
    BkgTransCdsdropoffkms: TIntegerField;
    BkgTransCdsaddressbook_id: TIntegerField;
    BkgTransCdstourcode: TStringField;
    BkgTransCdstourdate: TSQLTimeStampField;
    BkgTransCdsvouchers_id: TIntegerField;
    BkgTransCdsgeneratevoucher: TBooleanField;
    BkgTransCdsac: TBooleanField;
    BkgTransCdscreated: TSQLTimeStampField;
    BkgTransCdsnoofvehicles: TIntegerField;
    BkgTransCdsnoofpax: TIntegerField;
    BkgTransCdscancelledbypax: TSQLTimeStampField;
    BkgTransCdsbookedbypax: TSQLTimeStampField;
    BkgTransCdsbookedon: TSQLTimeStampField;
    BkgTransCdsconfirmedon: TSQLTimeStampField;
    BkgTransCdscancelledon: TSQLTimeStampField;
    BkgTransCdsweb_bookingstransport_id: TIntegerField;
    BkgTransCdsquoted: TBCDField;
    BkgTransCdsnotes: TStringField;
    BkgTransCdskms: TIntegerField;
    BkgTransCdsLeadPax: TStringField;
    BkgTransCdsAgent_Cities_id: TIntegerField;
    BkgTransCdsDriveTypes_id: TIntegerField;
    BkgTransCdsCarHireGroups_id: TIntegerField;
    BkgTicketsCdsbookingstickets_id: TIntegerField;
    BkgTicketsCdsbookings_id: TIntegerField;
    BkgTicketsCdsaddressbook_id: TIntegerField;
    BkgTicketsCdsnooftickets: TIntegerField;
    BkgTicketsCdstraveldate: TSQLTimeStampField;
    BkgTicketsCdsflightno: TStringField;
    BkgTicketsCdsclassid: TIntegerField;
    BkgTicketsCdstourcode: TStringField;
    BkgTicketsCdstourdate: TSQLTimeStampField;
    BkgTicketsCdstiming: TSQLTimeStampField;
    BkgTicketsCdsgeneratevoucher: TBooleanField;
    BkgTicketsCdsvouchers_id: TIntegerField;
    BkgTicketsCdsbookedon: TSQLTimeStampField;
    BkgTicketsCdsconfirmedon: TSQLTimeStampField;
    BkgTicketsCdscancelledon: TSQLTimeStampField;
    BkgTicketsCdsfrom_cities_id: TIntegerField;
    BkgTicketsCdsto_cities_id: TIntegerField;
    BkgTicketsCdstickets_id: TIntegerField;
    BkgTicketsCdsetd: TSQLTimeStampField;
    BkgTicketsCdseta: TSQLTimeStampField;
    BkgTicketsCdsto_trainstations_id: TIntegerField;
    BkgTicketsCdsfrom_trainstations_id: TIntegerField;
    BkgTicketsCdsnoofpax_resident: TIntegerField;
    BkgTicketsCdsnocancelled: TIntegerField;
    BkgTicketsCdscreated: TSQLTimeStampField;
    BkgTicketsCdscancelledbypax: TSQLTimeStampField;
    BkgTicketsCdsbookedbypax: TSQLTimeStampField;
    BkgTicketsCdsnobooked: TIntegerField;
    BkgTicketsCdsduration: TStringField;
    BkgTicketsCdsnocancelled_resident: TIntegerField;
    BkgTicketsCdsquoted: TBCDField;
    BkgTicketsCdsweb_bookingstickets_id: TIntegerField;
    BkgTicketsCdsnotes: TStringField;
    BkgTicketsCdsinvoices_id: TIntegerField;
    BkgTicketsCdsLeadPax: TStringField;
    BkgTicketsCdsAgent_Cities_id: TIntegerField;
    BkgSsCdsbookingsservices_id: TIntegerField;
    BkgSsCdsdate: TSQLTimeStampField;
    BkgSsCdsflightno: TStringField;
    BkgSsCdstransfer: TBooleanField;
    BkgSsCdsbookings_id: TIntegerField;
    BkgSsCdseta: TSQLTimeStampField;
    BkgSsCdsvehicles_id: TIntegerField;
    BkgSsCdstourcode: TStringField;
    BkgSsCdstourdate: TSQLTimeStampField;
    BkgSsCdsaddressbook_id: TIntegerField;
    BkgSsCdsplacefrom: TStringField;
    BkgSsCdsplaceto: TStringField;
    BkgSsCdsgeneratevoucher: TBooleanField;
    BkgSsCdsvouchers_id: TIntegerField;
    BkgSsCdsservices_id: TIntegerField;
    BkgSsCdsac: TBooleanField;
    BkgSsCdshotel_addressbook_id: TIntegerField;
    BkgSsCdsfrom_cities_id: TIntegerField;
    BkgSsCdsto_cities_id: TIntegerField;
    BkgSsCdsservice_cities_id: TIntegerField;
    BkgSsCdstransfertypes_id: TIntegerField;
    BkgSsCdsobsolete1: TIntegerField;
    BkgSsCdsobsolete2: TIntegerField;
    BkgSsCdsentrancefees: TBooleanField;
    BkgSsCdsnoofpax_resident: TIntegerField;
    BkgSsCdscreated: TSQLTimeStampField;
    BkgSsCdsbookedbypax: TSQLTimeStampField;
    BkgSsCdscancelledbypax: TSQLTimeStampField;
    BkgSsCdsbookedon: TSQLTimeStampField;
    BkgSsCdsconfirmedon: TSQLTimeStampField;
    BkgSsCdscancelledon: TSQLTimeStampField;
    BkgSsCdsguide: TBooleanField;
    BkgSsCdsquoted: TBCDField;
    BkgSsCdsnotes: TStringField;
    BkgSsCdsinvoices_id: TIntegerField;
    BkgSsCdsNoOfVehicles: TIntegerField;
    BkgSsCdsTransport: TBooleanField;
    BkgSsCdsLeadPax: TStringField;
    Label2: TcxLabel;
    AgentLCB: TcxDBLookupComboBox;
    Label3: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label8: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label1: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    Label6: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TcxLabel;
    DBText2: TDBText;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridLevel8: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
    procedure Detail2CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail2CdsBeforeDelete(DataSet: TDataSet);
    procedure BkgTicketsCdsAfterDelete(DataSet: TDataSet);
    procedure BkgTicketsCdsAfterPost(DataSet: TDataSet);
    procedure BkgTicketsCdsBeforeEdit(DataSet: TDataSet);
    procedure BkgTicketsCdsBeforePost(DataSet: TDataSet);
    procedure BkgTicketsCdsBeforeInsert(DataSet: TDataSet);
    procedure BkgTicketsCdsBeforeDelete(DataSet: TDataSet);
    procedure BkgAccCdsAfterDelete(DataSet: TDataSet);
    procedure BkgAccCdsAfterPost(DataSet: TDataSet);
    procedure BkgAccCdsBeforeDelete(DataSet: TDataSet);
    procedure BkgAccCdsBeforeEdit(DataSet: TDataSet);
    procedure BkgAccCdsBeforePost(DataSet: TDataSet);
    procedure BkgAccCdsBeforeInsert(DataSet: TDataSet);
    procedure BkgSsCdsAfterDelete(DataSet: TDataSet);
    procedure BkgSsCdsAfterPost(DataSet: TDataSet);
    procedure BkgSsCdsBeforeEdit(DataSet: TDataSet);
    procedure BkgSsCdsBeforePost(DataSet: TDataSet);
    procedure BkgSsCdsBeforeInsert(DataSet: TDataSet);
    procedure BkgSsCdsBeforeDelete(DataSet: TDataSet);
    procedure BkgTrsfCdsAfterDelete(DataSet: TDataSet);
    procedure BkgTrsfCdsAfterPost(DataSet: TDataSet);
    procedure BkgTrsfCdsBeforeEdit(DataSet: TDataSet);
    procedure BkgTrsfCdsBeforePost(DataSet: TDataSet);
    procedure BkgTrsfCdsBeforeInsert(DataSet: TDataSet);
    procedure BkgTrsfCdsBeforeDelete(DataSet: TDataSet);
    procedure BkgPackCdsAfterDelete(DataSet: TDataSet);
    procedure BkgPackCdsAfterPost(DataSet: TDataSet);
    procedure BkgPackCdsBeforeEdit(DataSet: TDataSet);
    procedure BkgPackCdsBeforePost(DataSet: TDataSet);
    procedure BkgPackCdsBeforeInsert(DataSet: TDataSet);
    procedure BkgPackCdsBeforeDelete(DataSet: TDataSet);
    procedure BkgTransCdsAfterDelete(DataSet: TDataSet);
    procedure BkgTransCdsAfterPost(DataSet: TDataSet);
    procedure BkgTransCdsBeforeEdit(DataSet: TDataSet);
    procedure BkgTransCdsBeforePost(DataSet: TDataSet);
    procedure BkgTransCdsBeforeInsert(DataSet: TDataSet);
    procedure BkgTransCdsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_Bookings_Form: TCustom_Bookings_Form;
  Custom_MasterCds_State: TDataSetState;
  Custom_Detail1Cds_State: TDataSetState;
  Custom_Detail2Cds_State: TDataSetState;
  Custom_BkgTicketsCds_State: TDataSetState;
  Custom_BkgAccCds_State: TDataSetState;
  Custom_BkgSsCds_State: TDataSetState;
  Custom_BkgTrsfCds_State: TDataSetState;
  Custom_BkgPackCds_State: TDataSetState;
  Custom_BkgTransCds_State: TDataSetState;
  Custom_MasterCdsName: string;
  Custom_Detail1CdsName: string;
  Custom_Detail2CdsName: string;
  Custom_BkgTicketsCdsName: string;
  Custom_BkgAccCdsName: string;
  Custom_BkgSsCdsName: string;
  Custom_BkgTrsfCdsName: string;
  Custom_BkgPackCdsName: string;
  Custom_BkgTransCdsName: string;
  Custom_MasterKeyField: string;
  Custom_Detail1KeyField: string;
  Custom_Detail2KeyField: string;
  Custom_BkgTicketsKeyField: string;
  Custom_BkgAccKeyField: string;
  Custom_BkgSsKeyField: string;
  Custom_BkgTrsfKeyField: string;
  Custom_BkgPackKeyField: string;
  Custom_BkgTransKeyField: string;
  Custom_TableArray: Array[0..7] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TCustom_Bookings_Form.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  Detail1Cds.Active := True;
  Detail2Cds.Active := True;
  BkgTicketsCds.Active := True;
  BkgAccCds.Active := True;
  BkgSsCds.Active := True;
  BkgTrsfCds.Active := True;
  BkgPackCds.Active := True;
  BkgTransCds.Active := True;

  MasterCds.First;

  cxDBLabelKeyId_Master.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId_Master.DataBinding.DataField := Custom_MasterKeyField;

  cxDBLabelKeyId_Detail1.DataBinding.DataSource := Detail1Ds;
  cxDBLabelKeyId_Detail1.DataBinding.DataField := Custom_Detail1KeyField;

  cxDBLabelKeyId_Detail2.DataBinding.DataSource := Detail2Ds;
  cxDBLabelKeyId_Detail2.DataBinding.DataField := Custom_Detail2KeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;
  cxDBLabelKeyId_Detail1.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Master.Left;
//  cxDBLabelKeyId_Detail1.Top := cxDBLabelKeyId_Master.Top;

end;

procedure TCustom_Bookings_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  BkgTransCds.Active := False;
  BkgPackCds.Active := False;
  BkgTrsfCds.Active := False;
  BkgSsCds.Active := False;
  BkgAccCds.Active := False;
  BkgTicketsCds.Active := False;

  Detail2Cds.Active := False;
  Detail1Cds.Active := False;
  MasterCds.Active := False;
  Action := caFree;

end;

procedure TCustom_Bookings_Form.FormDestroy(Sender: TObject);
begin

  Custom_BkgTransKeyField := '';
  Custom_BkgPackKeyField := '';
  Custom_BkgTrsfKeyField := '';
  Custom_BkgSsKeyField := '';
  Custom_BkgAccKeyField := '';
  Custom_BkgTicketsKeyField := '';

  Custom_MasterKeyField := '';
  Custom_Detail1KeyField := '';
  Custom_Detail2KeyField := '';

  Custom_Bookings_Form := nil;

end;

procedure TCustom_Bookings_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TCustom_Bookings_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);


end;

procedure TCustom_Bookings_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_Bookings_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_Bookings_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail1Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the detailed record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail2Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the detailed record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BkgTicketsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tickets record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BkgAccCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the accommodation record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BkgSsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the sight-seeing record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BkgTrsfCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transfer record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BkgPackCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the packing record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if BkgTransCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transport record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;


end;

procedure TCustom_Bookings_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

  Detail1Cds.First;
  if not Detail1Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  Detail2Cds.First;
  if not Detail2Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  BkgTicketsCds.First;
  if not BkgTicketsCds.Eof then
    raise exception.create ('Please delete the corresponding ticket records first');

  BkgAccCds.First;
  if not BkgAccCds.Eof then
    raise exception.create ('Please delete the corresponding accommodation records first');

  BkgSsCds.First;
  if not BkgSsCds.Eof then
    raise exception.create ('Please delete the corresponding sight-seeing records first');

  BkgTrsfCds.First;
  if not BkgTrsfCds.Eof then
    raise exception.create ('Please delete the corresponding transfer records first');

  BkgPackCds.First;
  if not BkgPackCds.Eof then
    raise exception.create ('Please delete the corresponding packing records first');

  BkgTransCds.First;
  if not BkgTransCds.Eof then
    raise exception.create ('Please delete the corresponding transport records first');

end;

procedure TCustom_Bookings_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;
  cxDBLabelKeyId_Detail1.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Master.Left;

end;

procedure TCustom_Bookings_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_Bookings_Form.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.Detail1CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    Detail1Cds[Custom_Detail1KeyField] := GetNextId(Custom_Detail1CdsName,Custom_Detail1KeyField);

end;

procedure TCustom_Bookings_Form.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.Detail1CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.Detail2CdsAfterDelete(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.Detail2CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail2Cds_State := Detail2Cds.State;

  if Detail2Cds.State = dsInsert then
    Detail2Cds[Custom_Detail2KeyField] := GetNextId(Custom_Detail2CdsName,Custom_Detail2KeyField);


end;

procedure TCustom_Bookings_Form.Detail2CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.Detail2CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := BkgTicketsDS;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTicketsCdsAfterDelete(
  DataSet: TDataSet);
begin
  BkgTicketsCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgTicketsCdsAfterPost(DataSet: TDataSet);
begin
  BkgTicketsCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgTicketsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTicketsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BkgTicketsCds_State := BkgTicketsCds.State;

  if BkgTicketsCds.State = dsInsert then
    BkgTicketsCds[Custom_BkgTicketsKeyField] := GetNextId(Custom_BkgTicketsCdsName,Custom_BkgTicketsKeyField);

end;

procedure TCustom_Bookings_Form.BkgTicketsCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);


end;

procedure TCustom_Bookings_Form.BkgTicketsCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgAccDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;


procedure TCustom_Bookings_Form.BkgAccCdsAfterDelete(DataSet: TDataSet);
begin
  BkgAccCds.ApplyUpdates(0);
end;


procedure TCustom_Bookings_Form.BkgAccCdsAfterPost(DataSet: TDataSet);
begin
  BkgAccCds.ApplyUpdates(0);
end;


procedure TCustom_Bookings_Form.BkgAccCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgAccCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BkgAccCds_State := BkgAccCds.State;

  if BkgAccCds.State = dsInsert then
    BkgAccCds[Custom_BkgAccKeyField] := GetNextId(Custom_BkgAccCdsName,Custom_BkgAccKeyField);

end;

procedure TCustom_Bookings_Form.BkgAccCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgAccCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgSsDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;


procedure TCustom_Bookings_Form.BkgSsCdsAfterDelete(DataSet: TDataSet);
begin
  BkgSsCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgSsCdsAfterPost(DataSet: TDataSet);
begin
  BkgSsCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgSsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);
end;

procedure TCustom_Bookings_Form.BkgSsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BkgSsCds_State := BkgSsCds.State;

  if BkgSsCds.State = dsInsert then
    BkgSsCds[Custom_BkgSsKeyField] := GetNextId(Custom_BkgSsCdsName,Custom_BkgSsKeyField);

end;

procedure TCustom_Bookings_Form.BkgSsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgSsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgTrsfDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTrsfCdsAfterDelete(DataSet: TDataSet);
begin
  BkgTrsfCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgTrsfCdsAfterPost(DataSet: TDataSet);
begin
  BkgTrsfCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgTrsfCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTrsfCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BkgTrsfCds_State := BkgTrsfCds.State;

  if BkgTrsfCds.State = dsInsert then
    BkgTrsfCds[Custom_BkgTrsfKeyField] := GetNextId(Custom_BkgTrsfCdsName,Custom_BkgTrsfKeyField);

end;

procedure TCustom_Bookings_Form.BkgTrsfCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTrsfCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgPackDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgPackCdsAfterDelete(DataSet: TDataSet);
begin
  BkgPackCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgPackCdsAfterPost(DataSet: TDataSet);
begin
  BkgPackCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgPackCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDs;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgTrsfDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgPackCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BkgPackCds_State := BkgPackCds.State;

  if BkgPackCds.State = dsInsert then
    BkgPackCds[Custom_BkgPackKeyField] := GetNextId(Custom_BkgPackCdsName,Custom_BkgPackKeyField);

end;

procedure TCustom_Bookings_Form.BkgPackCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgTrsfDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);
end;

procedure TCustom_Bookings_Form.BkgPackCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgTrsfDS;
  Custom_TableArray[7] := BkgTransDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTransCdsAfterDelete(DataSet: TDataSet);
begin
  BkgTransCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgTransCdsAfterPost(DataSet: TDataSet);
begin
  BkgTransCds.ApplyUpdates(0);
end;

procedure TCustom_Bookings_Form.BkgTransCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDs;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgTrsfDS;
  Custom_TableArray[7] := BkgPackDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTransCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BkgTransCds_State := BkgTransCds.State;

  if BkgTransCds.State = dsInsert then
    BkgTransCds[Custom_BkgTransKeyField] := GetNextId(Custom_BkgTransCdsName,Custom_BkgTransKeyField);

end;

procedure TCustom_Bookings_Form.BkgTransCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgTrsfDS;
  Custom_TableArray[7] := BkgPackDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Bookings_Form.BkgTransCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2Ds;
  Custom_TableArray[3] := BkgTicketsDS;
  Custom_TableArray[4] := BkgAccDS;
  Custom_TableArray[5] := BkgSsDS;
  Custom_TableArray[6] := BkgTrsfDS;
  Custom_TableArray[7] := BkgPackDS;
  PostDsTables(Custom_TableArray);

end;

end.
