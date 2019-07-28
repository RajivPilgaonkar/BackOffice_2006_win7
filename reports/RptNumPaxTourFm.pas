unit RptNumPaxTourFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRptNumPaxTourForm = class(TForm)
    QuickRep1: TQuickRep;
    NumPaxSds: TSQLDataSet;
    NumPaxDsp: TDataSetProvider;
    NumPaxCds: TClientDataSet;
    NumPaxDs: TDataSource;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRTitleLabel: TQRLabel;
    QRCompanyLabel: TQRLabel;
    NumPaxCdsTourCode: TStringField;
    NumPaxCdsTour: TStringField;
    NumPaxCdsTourDate: TSQLTimeStampField;
    NumPaxCdsNumPax: TIntegerField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr1: TQRExpr;
    QRPrincipalAgentLabel: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptNumPaxTourForm: TRptNumPaxTourForm;

implementation

{$R *.dfm}

end.
