unit RptBookTransferArrivalAllPaFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, QuickRpt, QRCtrls,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRptBookTransferArrivalAllPaForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    ArrivalLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    RptCds: TClientDataSet;
    RptDs: TDataSource;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText1: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRRTFFilter2: TQRRTFFilter;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    RptCdsVouchersServices_id: TIntegerField;
    RptCdsPaxName: TStringField;
    RptCdsTourNum: TStringField;
    RptCdsFlightNo: TStringField;
    RptCdsPlace: TStringField;
    RptCdsTransferDate: TSQLTimeStampField;
    RptCdsVoucherNo: TIntegerField;
    RptCdsHotel: TStringField;
    RptCdsAgent: TStringField;
    QRDBText4: TQRDBText;
    CityLabel: TQRLabel;
    RptCdsETA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBookTransferArrivalAllPaForm: TRptBookTransferArrivalAllPaForm;

implementation

{$R *.dfm}

end.
