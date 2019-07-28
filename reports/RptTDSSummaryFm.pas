unit RptTDSSummaryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptTDSSummaryForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    grphdcompany: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    grphdyrmon: TQRGroup;
    grphdcategory: TQRGroup;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    grphdorganisation: TQRGroup;
    grpftyrmon: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRShape7: TQRShape;
    grpftcategory: TQRBand;
    QRShape3: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    grpftcompany: TQRBand;
    QRShape4: TQRShape;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape8: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    SummarySds: TSQLDataSet;
    SummaryDsp: TDataSetProvider;
    SummaryDs: TDataSource;
    SummaryCds: TClientDataSet;
    SummaryCdsyearmonth: TStringField;
    SummaryCdscompany: TStringField;
    SummaryCdscategory: TStringField;
    SummaryCdsorganisation: TStringField;
    SummaryCdscreditpaid: TFloatField;
    SummaryCdsdeducted: TFloatField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTDSSummaryForm: TRptTDSSummaryForm;

implementation

{$R *.dfm}

end.
