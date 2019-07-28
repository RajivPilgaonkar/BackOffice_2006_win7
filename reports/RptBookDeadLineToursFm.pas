unit RptBookDeadLineToursFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, DB, SqlExpr, Provider, DBClient,
  QRCtrls, QRExport, QRPDFFilt;

type
  TRptBookDeadLineToursForm = class(TForm)
    QuickRep1: TQuickRep;
    RptDs: TDataSource;
    RptCds: TClientDataSet;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRRTFFilter1: TQRRTFFilter;
    RptCdsReference: TStringField;
    RptCdsPaxName: TStringField;
    RptCdsTourCode: TStringField;
    RptCdsTourDate: TSQLTimeStampField;
    RptCdsDeadline: TSQLTimeStampField;
    RptCdsGroupOrder: TIntegerField;
    RptCdsTourGroup: TStringField;
    RptCdsMasterCode: TStringField;
    RptCdsNumPax: TIntegerField;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRPrincipalAgentLabel: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBookDeadLineToursForm: TRptBookDeadLineToursForm;

implementation

{$R *.dfm}

end.
