unit RpSitListFm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Qrctrls, FMTBcd, SqlExpr, Provider,
  DBClient, Variants, StdCtrls, QRExport;

type
  TRpSitListForm = class(TForm)
    QuickRep1: TQuickRep;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    GroupHeaderBand2: TQRBand;
    GroupHeaderBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    TourCodeLabel: TQRLabel;
    TourLabel: TQRLabel;
    QRShape3: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRShape4: TQRShape;
    QRLabel28: TQRLabel;
    QRDBText21: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    GroupHeaderBand4: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    DepDateLabel: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText29: TQRDBText;
    BookingDS: TDataSource;
    BookingCds: TClientDataSet;
    BookingDsp: TDataSetProvider;
    BookingSds: TSQLDataSet;
    BookingsClientsCds: TClientDataSet;
    BookingsClientsDsp: TDataSetProvider;
    BookingsClientsSds: TSQLDataSet;
    BookingsClientsCdsBookings_id: TIntegerField;
    BookingsClientsCdsName: TStringField;
    BookingsClientsCdsDateOfBirth: TSQLTimeStampField;
    BookingsClientsCdsPassportNo: TStringField;
    BookingsClientsCdsCountry: TStringField;
    BookingsClientsCdsSingleSupplement: TBooleanField;
    BookingsTicketsCds: TClientDataSet;
    BookingsTicketsDsp: TDataSetProvider;
    BookingsTicketsSds: TSQLDataSet;
    BookingsAccommodationSds: TSQLDataSet;
    BookingsAccommodationDsp: TDataSetProvider;
    BookingsAccommodationCds: TClientDataSet;
    BookingsAccommodationCdsBookings_id: TIntegerField;
    BookingsAccommodationCdsCity: TStringField;
    BookingsAccommodationCdsOrganisation: TStringField;
    BookingsAccommodationCdssingles: TIntegerField;
    BookingsAccommodationCdsdoubles: TIntegerField;
    BookingsAccommodationCdsRoomtype: TStringField;
    BookingsAccommodationCdsMealPlan: TStringField;
    BookingsAccommodationCdsDateIn: TSQLTimeStampField;
    BookingsAccommodationCdsDateOut: TSQLTimeStampField;
    BookingsTicketsCdsBookings_id: TIntegerField;
    BookingsTicketsCdsTravelDate: TSQLTimeStampField;
    BookingsTicketsCdsFlightNo: TStringField;
    BookingsTicketsCdsFromCity: TStringField;
    BookingsTicketsCdsToCity: TStringField;
    BookingsTicketsCdsNoOfTickets: TIntegerField;
    BookingsServicesCds: TClientDataSet;
    BookingsServicesDsp: TDataSetProvider;
    BookingsServicesSds: TSQLDataSet;
    BookingsServicesCdsBookings_id: TIntegerField;
    BookingsServicesCdsDate: TSQLTimeStampField;
    BookingsServicesCdsFlightNo: TStringField;
    BookingsServicesCdsFromCity: TStringField;
    BookingsServicesCdsToCity: TStringField;
    BookingsServicesCdsTransfer: TStringField;
    QR_TL_SS_Label: TQRLabel;
    QRPaxCountLabel: TQRLabel;
    BookingCdsBookings_id: TIntegerField;
    BookingCdsNotes: TMemoField;
    BookingCdsTourLeader: TBooleanField;
    BookingCdsTourCode: TStringField;
    BookingCdsTourDate: TSQLTimeStampField;
    BookingCdsReference: TStringField;
    BookingsAccommodationCdsNights: TIntegerField;
    QRDBText19: TQRDBText;
    BookingsServicesCdsETA: TStringField;
    BookingsTicketsCdsETA: TStringField;
    BookingsTicketsCdsETD: TStringField;
    BookingsAccommodationCdsPlan: TStringField;
    Label1: TLabel;
    QRExpr1: TQRExpr;
    QRRTFFilter1: TQRRTFFilter;
    BookingCdsTourLeaderTrainee: TBooleanField;
    BookingsAccommodationCdsTriples: TIntegerField;
    QRLabel6: TQRLabel;
    QRDBText25: TQRDBText;
    BookingsAccommodationCdsTwins: TIntegerField;
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    function TL_SS_String: string;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpSitListForm: TRpSitListForm;

implementation

uses BackOfficeDM;

var
  x_PaxCount: integer;

{$R *.DFM}

procedure TRpSitListForm.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QR_TL_SS_Label.Caption := TL_SS_String;
end;

function TRpSitListForm.TL_SS_String: string;
var
  GPSds :TSQLDataSet;
  x_count, x_ss_count: integer;
  x_ss, x_str: string;
begin

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GPSds.Close;
  GPSds.CommandText := 'SELECT Name, bd.SingleSupplement ' +
    'FROM BookingDetails bd, BookingsClients bc, BookingsTours bt ' +
    'WHERE bd.BookingsClients_id = bc.BookingsClients_id ' +
    'AND bc.Bookings_id = ' + IntToStr(BookingCds['Bookings_id']) + ' ' +
    'AND bt.Bookings_id = bc.Bookings_id ' +
    'AND bt.TourCode = bd.TourCode ' +
    'AND bt.TourDate = bd.TourDate ' +
    'AND bt.TourLeader = 0 ' +
    'AND bt.TourCode = ''' + BookingCds['TourCode'] + ''' ' +
    'AND bt.TourDate = ''' + FormatDateTime('mm/dd/yyyy',BookingCds['TourDate']) + ''' ';

  GPSds.Open;

  x_count := 0;
  x_ss_count := 0;
  x_ss := '';
  x_str := '';
  while not GPSds.Eof do
    begin
      if (x_ss_count > 0) and (GpSds['SingleSupplement'] = True) then
        x_ss := x_ss + ', ';
      if (GpSds['Name'] <> null) and (GpSds['SingleSupplement'] = True) then
        x_ss := x_ss + GpSds['Name'];

      if GpSds['SingleSupplement'] = True then
        x_ss_count := x_ss_count + 1;

      x_count := x_count+1;

      GpSds.Next;
    end;

  GPSds.Free;

  if BookingCds['TourLeader'] = True then
    x_str := 'Tour Leader. ';

  if BookingCds['TourLeaderTrainee'] = True then
    x_str := 'Trainee Tour Leader. ';

  if (x_count = 1) and (x_ss_count = 1) then
    x_ss := 'Pax is Single Supplement'
  else if (x_ss_count > 1) and (x_count = x_ss_count) then
    x_ss := 'All Pax on this booking are Single Supplement'
  else if (x_ss_count = 1) then
    x_ss := x_ss + ' is Single Supplement'
  else if (x_ss_count > 1) then
    x_ss := x_ss + ' are Single Supplement.';

  x_ss := x_str + x_ss;

  Result := x_ss;

end;


procedure TRpSitListForm.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if BookingsClientsCds['Name'] <> null then
    x_PaxCount := x_PaxCount + 1;
end;

procedure TRpSitListForm.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRPaxCountLabel.Caption := 'Total Pax : ' + IntToStr(x_paxCount);
end;

procedure TRpSitListForm.FormCreate(Sender: TObject);
begin
  x_PaxCount := 0;
end;

procedure TRpSitListForm.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  x_PaxCount := 0;
end;

end.
