unit RptBookDeadLineFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, ExtCtrls, QuickRpt,
  QRCtrls, QRExport, QRPDFFilt;

type
  TRptBookDeadLineForm = class(TForm)
    RptDs: TDataSource;
    RptCds: TClientDataSet;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    RptCdsDetails: TStringField;
    RptCdsAdviceNumPaxBookDate: TSQLTimeStampField;
    RptCdsAdviceNamePaxBookDate: TSQLTimeStampField;
    RptCdsFlightNo: TStringField;
    RptCdsTravelDate: TSQLTimeStampField;
    RptCdsFromCity: TStringField;
    RptCdsToCity: TStringField;
    RptCdsTourCode: TStringField;
    RptCdsDepartureDate: TSQLTimeStampField;
    RptCdsOrganisation: TStringField;
    RptCdsCity: TStringField;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DateRangeLabel: TQRLabel;
    TitleLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    NoPaxLabel: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    NoPaxDbLabel: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    QRPrincipalAgentLabel: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBookDeadLineForm: TRptBookDeadLineForm;

implementation

{$R *.dfm}

end.
