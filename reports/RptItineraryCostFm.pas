unit RptItineraryCostFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TRptItineraryCostForm = class(TForm)
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
    QRDBText48: TQRDBText;
    QRDBText18: TQRDBText;
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
    QRLabel21: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText19: TQRDBText;
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
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel27: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText34: TQRDBText;
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
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText36: TQRDBText;
    PackagesHeaderBand: TQRBand;
    QRLabel45: TQRLabel;
    QRShape10: TQRShape;
    QRLabel46: TQRLabel;
    QRShape11: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    QRDBText21: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRBand1: TQRBand;
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
    TicketsSds: TSQLDataSet;
    AccSds: TSQLDataSet;
    ServiceSds: TSQLDataSet;
    TransportSds: TSQLDataSet;
    PackagesSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsDs: TDataSource;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    ServiceDs: TDataSource;
    TransportDsp: TDataSetProvider;
    TransportCds: TClientDataSet;
    TransportDs: TDataSource;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    TicketsCdsvoucherno: TIntegerField;
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
    TicketsCdsexpectedamount: TFMTBCDField;
    TicketsCdsexch_amount: TFMTBCDField;
    AccCdsvoucherno: TIntegerField;
    AccCdsCity: TStringField;
    AccCdsOrganisation: TStringField;
    AccCdsdatein: TSQLTimeStampField;
    AccCdsdateout: TSQLTimeStampField;
    AccCdstours: TStringField;
    AccCdsremarks: TStringField;
    AccCdsconfirmed: TSQLTimeStampField;
    AccCdsexpectedamount: TFMTBCDField;
    AccCdsexch_amount: TFMTBCDField;
    ServiceCdsvoucherno: TIntegerField;
    ServiceCdsOrganisation: TStringField;
    ServiceCdsCity: TStringField;
    ServiceCdstransferdate: TSQLTimeStampField;
    ServiceCdsService: TStringField;
    ServiceCdstime: TSQLTimeStampField;
    ServiceCdstours: TStringField;
    ServiceCdsremarks: TStringField;
    ServiceCdsexpectedamount: TFMTBCDField;
    ServiceCdsexch_amount: TFMTBCDField;
    TransportCdsvoucherno: TIntegerField;
    TransportCdsOrganisation: TStringField;
    TransportCdsFromCity: TStringField;
    TransportCdsFromPlace: TStringField;
    TransportCdsFromDate: TSQLTimeStampField;
    TransportCdsFromTime: TSQLTimeStampField;
    TransportCdsToCity: TStringField;
    TransportCdsToPlace: TStringField;
    TransportCdsToDate: TSQLTimeStampField;
    TransportCdsToTime: TSQLTimeStampField;
    TransportCdstours: TStringField;
    TransportCdsremarks: TStringField;
    TransportCdsexpectedamount: TFMTBCDField;
    TransportCdsexch_amount: TFMTBCDField;
    PackagesCdsvoucherno: TIntegerField;
    PackagesCdscity: TStringField;
    PackagesCdsorganisation: TStringField;
    PackagesCdsfrom_date: TSQLTimeStampField;
    PackagesCdspackage: TStringField;
    PackagesCdsfrom_time: TSQLTimeStampField;
    PackagesCdsfrom_place: TStringField;
    PackagesCdstours: TStringField;
    PackagesCdsremarks: TStringField;
    PackagesCdsexpectedamount: TFMTBCDField;
    PackagesCdsexch_amount: TFMTBCDField;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptItineraryCostForm: TRptItineraryCostForm;

implementation

var
   Total_val: Double;

{$R *.dfm}

procedure TRptItineraryCostForm.QRExpr1Print(sender: TObject;
  var Value: String);
begin
   Total_val:= 0;
   Total_val:=Total_val+StrToFloat(Value);
end;

procedure TRptItineraryCostForm.QRExpr2Print(sender: TObject;
  var Value: String);
begin
   Total_val:=Total_val+StrToFloat(Value);
end;

procedure TRptItineraryCostForm.QRExpr3Print(sender: TObject;
  var Value: String);
begin
   Total_val:=Total_val+StrToFloat(Value);
end;

procedure TRptItineraryCostForm.QRExpr4Print(sender: TObject;
  var Value: String);
begin
   Total_val:=Total_val+StrToFloat(Value);
end;

procedure TRptItineraryCostForm.QRExpr5Print(sender: TObject;
  var Value: String);
begin
   Total_val:=Total_val+StrToFloat(Value);
end;

procedure TRptItineraryCostForm.QRExpr6Print(sender: TObject;
  var Value: String);
begin
   Value:=FloatToStr(Total_val);
end;

end.
