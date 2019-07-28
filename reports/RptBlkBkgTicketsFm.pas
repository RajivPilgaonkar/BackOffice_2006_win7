unit RptBlkBkgTicketsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRptBlkBkgTicketsForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    TitleLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRGroup2: TQRGroup;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsDs: TDataSource;
    TicketsCdsTravelDate: TSQLTimeStampField;
    TicketsCdsNoofTickets: TIntegerField;
    TicketsCdsTourRef: TStringField;
    TicketsCdsReservedby: TStringField;
    TicketsCdsReservedon: TSQLTimeStampField;
    TicketsCdsConfirmedon: TSQLTimeStampField;
    TicketsCdsCancelledon: TSQLTimeStampField;
    TicketsCdsNoConfirmed: TIntegerField;
    TicketsCdsFlightno: TStringField;
    TicketsCdsClass: TStringField;
    TicketsCdsMasterCode: TStringField;
    TicketsCdsFromCity: TStringField;
    TicketsCdsToCity: TStringField;
    TicketsCdsCityBreak: TStringField;
    TicketsCdsTicket: TStringField;
    TicketsCdsWaitingList: TStringField;
    TicketsCdsOrgcity: TStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBlkBkgTicketsForm: TRptBlkBkgTicketsForm;

implementation

{$R *.dfm}

end.
