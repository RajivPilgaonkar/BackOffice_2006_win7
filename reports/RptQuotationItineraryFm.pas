unit RptQuotationItineraryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptQuotationItineraryForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape9: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    TicketHeaderBand: TQRBand;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    AccommodationHeaderBand: TQRBand;
    QRLabel5: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    ServiceHeaderBand: TQRBand;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel39: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
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
    QuoSds: TSQLDataSet;
    QuoDsp: TDataSetProvider;
    QuoCds: TClientDataSet;
    QuoDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QuoCdsQuotations_id: TIntegerField;
    QuoCdsQuotationRef: TStringField;
    QuoCdsPaxName: TStringField;
    QuoCdsEmail: TStringField;
    QuoCdsEconomyPax: TBooleanField;
    QuoCdsTimePax: TBooleanField;
    QuoCdsNumPax: TIntegerField;
    QuoCdsNumSingles: TIntegerField;
    QuoCdsNumDoubles: TIntegerField;
    QuoCdsStartDate: TSQLTimeStampField;
    QuoCdsQuotationDate: TSQLTimeStampField;
    QuoCdsQuotationNo: TIntegerField;
    QuoCdsQuotationYearRef: TIntegerField;
    TicketsCdsorganisation: TStringField;
    TicketsCdsTravelDate: TSQLTimeStampField;
    TicketsCdsDetails: TStringField;
    TicketsCdsFlightNo: TStringField;
    TicketsCdsFromCity: TStringField;
    TicketsCdsToCity: TStringField;
    TicketsCdsETD: TSQLTimeStampField;
    TicketsCdsETA: TSQLTimeStampField;
    TicketsCdsQuotations_id: TIntegerField;
    AccCdsCity: TStringField;
    AccCdsOrganisation: TStringField;
    AccCdsdateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsquotations_id: TIntegerField;
    ServiceCdsCity: TStringField;
    ServiceCdsOrganisation: TStringField;
    ServiceCdsserviceDate: TSQLTimeStampField;
    ServiceCdsservice: TStringField;
    ServiceCdsStartTime: TSQLTimeStampField;
    ServiceCdsQuotations_id: TIntegerField;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    TransportHeaderBand: TQRBand;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
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
    QRSubDetail3: TQRSubDetail;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    TransportSds: TSQLDataSet;
    TransportDsp: TDataSetProvider;
    TransportCds: TClientDataSet;
    TransportDs: TDataSource;
    TransportCdsOrganisation: TStringField;
    TransportCdsFromCity: TStringField;
    TransportCdsFromPlace: TStringField;
    TransportCdsFromDate: TSQLTimeStampField;
    TransportCdsFromTime: TSQLTimeStampField;
    TransportCdsToCity: TStringField;
    TransportCdsToPlace: TStringField;
    TransportCdsToDate: TSQLTimeStampField;
    TransportCdsToTime: TSQLTimeStampField;
    TransportCdsQuotations_id: TIntegerField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptQuotationItineraryForm: TRptQuotationItineraryForm;

implementation

{$R *.dfm}

end.
