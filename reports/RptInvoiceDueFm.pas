unit RptInvoiceDueFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRPDFFilt;

type
  TRptInvoiceDueForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    TitleBand1: TQRBand;
    MainLabel: TQRLabel;
    InvoiceDueSds: TSQLDataSet;
    InvoiceDueDsp: TDataSetProvider;
    InvoiceDueCds: TClientDataSet;
    InvoiceDueDs: TDataSource;
    QRExpr5: TQRExpr;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    InvoiceDueCdsOrgcity: TStringField;
    InvoiceDueCdsInvoiceNo: TIntegerField;
    InvoiceDueCdsCurrencyCode: TStringField;
    InvoiceDueCdsInvoiced: TFloatField;
    InvoiceDueCdsPaid: TFloatField;
    InvoiceDueCdsBalance: TFloatField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInvoiceDueForm: TRptInvoiceDueForm;

implementation

{$R *.dfm}

end.
