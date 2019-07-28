unit RptItineraryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport;

type
  TRptItineraryForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape9: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText20: TQRDBText;
    TicketHeaderBand: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    AccommodationHeaderBand: TQRBand;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    TransportHeaderBand: TQRBand;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    ServiceHeaderBand: TQRBand;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRShape8: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel39: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    PackagesHeaderBand: TQRBand;
    QRLabel46: TQRLabel;
    QRShape10: TQRShape;
    QRLabel47: TQRLabel;
    QRShape11: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsDs: TDataSource;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    ServiceDs: TDataSource;
    TransportSds: TSQLDataSet;
    TransportDsp: TDataSetProvider;
    TransportCds: TClientDataSet;
    TransportDs: TDataSource;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    ItinerarySds: TSQLDataSet;
    ItineraryDsp: TDataSetProvider;
    ItineraryCds: TClientDataSet;
    ItineraryDs: TDataSource;
    ItineraryCdsMastercode: TStringField;
    ItineraryCdsDeparturedate: TSQLTimeStampField;
    ItineraryCdsname: TStringField;
    ItineraryCdsnoofdays: TIntegerField;
    ItineraryCdsTourType: TStringField;
    ItineraryCdsItineraries_id: TIntegerField;
    TicketsCdsVoucherNo: TIntegerField;
    TicketsCdsOrganisation: TStringField;
    TicketsCdstraveldate: TSQLTimeStampField;
    TicketsCdsdetails: TStringField;
    TicketsCdsFlightNo: TStringField;
    TicketsCdsFromCity: TStringField;
    TicketsCdsToCity: TStringField;
    TicketsCdstiming: TStringField;
    TicketsCdsadvicenoofpax: TSQLTimeStampField;
    TicketsCdsadvicenamesofpax: TSQLTimeStampField;
    TicketsCdstours: TStringField;
    TicketsCdsconfirmed: TSQLTimeStampField;
    AccCdsVoucherNo: TIntegerField;
    AccCdsCity: TStringField;
    AccCdsOrganisation: TStringField;
    AccCdsdatein: TSQLTimeStampField;
    AccCdsdateout: TSQLTimeStampField;
    AccCdsTours: TStringField;
    AccCdsremarks: TStringField;
    AccCdsconfirmed: TSQLTimeStampField;
    TransportCdsVoucherNo: TIntegerField;
    TransportCdsOrganisation: TStringField;
    TransportCdsFromCity: TStringField;
    TransportCdsFromPlace: TStringField;
    TransportCdsFromDate: TSQLTimeStampField;
    TransportCdsFromTime: TSQLTimeStampField;
    TransportCdsToCity: TStringField;
    TransportCdsToPlace: TStringField;
    TransportCdsToDate: TSQLTimeStampField;
    TransportCdsToTime: TSQLTimeStampField;
    TransportCdsTours: TStringField;
    TransportCdsremarks: TStringField;
    PackagesCdsVoucherNo: TIntegerField;
    PackagesCdscity: TStringField;
    PackagesCdsOrganisation: TStringField;
    PackagesCdsfrom_date: TSQLTimeStampField;
    PackagesCdspackage: TStringField;
    PackagesCdsfrom_time: TSQLTimeStampField;
    PackagesCdsfrom_place: TStringField;
    PackagesCdsTours: TStringField;
    PackagesCdsremarks: TStringField;
    ServiceCdsVoucherNo: TIntegerField;
    ServiceCdsOrganisation: TStringField;
    ServiceCdsCity: TStringField;
    ServiceCdstransferdate: TSQLTimeStampField;
    ServiceCdsService: TStringField;
    ServiceCdstime: TSQLTimeStampField;
    ServiceCdsTours: TStringField;
    ServiceCdsremarks: TStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRShape12: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptItineraryForm: TRptItineraryForm;

implementation

{$R *.dfm}

end.