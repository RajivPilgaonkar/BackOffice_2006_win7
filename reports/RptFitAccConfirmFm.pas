unit RptFitAccConfirmFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DBClient, Provider, DB,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptFitAccConfirmForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel11: TQRLabel;
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
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
    QRRTFFilter1: TQRRTFFilter;
    RptDs: TDataSource;
    RptCds: TClientDataSet;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    RptCdsTourCode: TStringField;
    RptCdsTourDate: TSQLTimeStampField;
    RptCdsAddressBook_id: TIntegerField;
    RptCdsDateOut: TSQLTimeStampField;
    RptCdsBooked: TSQLTimeStampField;
    RptCdsReminder: TSQLTimeStampField;
    RptCdsConfirmed: TSQLTimeStampField;
    RptCdsLeadName: TStringField;
    RptCdsDateIn: TSQLTimeStampField;
    RptCdsNights: TIntegerField;
    RptCdsHotel: TStringField;
    RptCdsCity: TStringField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFitAccConfirmForm: TRptFitAccConfirmForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
