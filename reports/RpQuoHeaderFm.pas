unit RpQuoHeaderFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt, dxGDIPlusClasses, jpeg;

type
  TRpQuoHeaderForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRDB_QuoRequestLabel: TQRDBText;
    ReportCdsQuoRequest: TStringField;
    ReportCdsQuoRequestDetails: TStringField;
    ReportCdsQuoFor: TStringField;
    ReportCdsQuoForDetails: TStringField;
    QRDB_QuoRequestDetailsLabel: TQRDBText;
    QRDBText2: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoHeaderForm: TRpQuoHeaderForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
