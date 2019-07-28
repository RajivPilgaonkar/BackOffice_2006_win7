unit RptQuotationStringsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRptQuotationStringsForm = class(TForm)
    QuickRep1: TQuickRep;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    ReportCdsQuo_id: TIntegerField;
    ReportCdsOrderNo: TIntegerField;
    ReportCdsGroupNo: TIntegerField;
    ReportCdsCity: TStringField;
    ReportCdsQuoDesc: TStringField;
    ReportCdsRecType: TStringField;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ReportCdsQuotationRef: TStringField;
    ReportCdsPaxName: TStringField;
    ReportCdsQuotationNo: TIntegerField;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptQuotationStringsForm: TRptQuotationStringsForm;

implementation

{$R *.dfm}

end.
