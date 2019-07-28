unit RpQuoEstimateFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRpQuoEstimateForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    ReportCdsQuoRequest: TStringField;
    ReportCdsQuoRequestDetails: TStringField;
    ReportCdsQuoFor: TStringField;
    ReportCdsQuoForDetails: TStringField;
    ReportCdsQuoEstimate: TStringField;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    SummaryBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoEstimateForm: TRpQuoEstimateForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
