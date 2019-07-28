unit RptFitTravelConfirmFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, SqlExpr, Provider, DB, DBClient,
  QRCtrls, QRExport, QRPDFFilt;

type
  TRptFitTravelConfirmForm = class(TForm)
    QuickRep1: TQuickRep;
    RptDs: TDataSource;
    RptCds: TClientDataSet;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText11: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    RptCdsTourCode: TStringField;
    RptCdsTourDate: TSQLTimeStampField;
    RptCdsPaxName: TStringField;
    RptCdsOrganisation: TStringField;
    RptCdsTravelDate: TSQLTimeStampField;
    RptCdsFromCity: TStringField;
    RptCdsToCity: TStringField;
    RptCdsBooked: TSQLTimeStampField;
    RptCdsReminder: TSQLTimeStampField;
    RptCdsConfirmed: TSQLTimeStampField;
    RptCdsDeadline: TSQLTimeStampField;
    RptCdsDetails: TStringField;
    QRShape1: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFitTravelConfirmForm: TRptFitTravelConfirmForm;

implementation

{$R *.dfm}

end.
