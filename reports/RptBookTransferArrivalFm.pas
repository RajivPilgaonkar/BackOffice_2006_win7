unit RptBookTransferArrivalFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, QuickRpt, QRCtrls,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRptBookTransferArrivalForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    CityLabel: TQRDBText;
    DateRangeLabel: TQRLabel;
    ArrivalLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    RptCds: TClientDataSet;
    RptDs: TDataSource;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    RptCdsBookings_id: TIntegerField;
    RptCdsPaxName: TStringField;
    RptCdsTourNum: TStringField;
    RptCdsFlightNo: TStringField;
    RptCdsFromCity: TStringField;
    RptCdsToCity: TStringField;
    RptCdsETA: TSQLTimeStampField;
    RptCdsDate: TSQLTimeStampField;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText1: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRRTFFilter2: TQRRTFFilter;
    QRPrincipalAgentLabel: TQRLabel;
    RptCdsHotel: TStringField;
    RptCdsVoucherNo: TIntegerField;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBookTransferArrivalForm: TRptBookTransferArrivalForm;

implementation

{$R *.dfm}

end.
