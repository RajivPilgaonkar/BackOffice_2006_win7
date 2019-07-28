unit RpQuoWelcome2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt, grimgctrl;

type
  TRpQuoWelcome2Form = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    ReportCdsPaxName: TStringField;
    QRDBText2: TQRDBText;
    ReportCdsOrganisation: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    ReportCdsQuotations_id: TIntegerField;
    QuoLinesSds: TSQLDataSet;
    QuoLinesDsp: TDataSetProvider;
    QuoLinesCds: TClientDataSet;
    QuoLinesDs: TDataSource;
    QuoLinesCdsQuoLines_id: TIntegerField;
    QuoLinesCdsQuoString: TStringField;
    QuoLinesCdsQuotations_id: TIntegerField;
    ReportCdsUserName: TStringField;
    QRDBText4: TQRDBText;
    ReportCdsClosingRemark: TStringField;
    QRDBText5: TQRDBText;
    PageHeaderBand1: TQRBand;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoWelcome2Form: TRpQuoWelcome2Form;
  _RpQuoWelcomeForm_SrNo: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoWelcome2Form.FormCreate(Sender: TObject);
begin
  _RpQuoWelcomeForm_SrNo := 3;
end;

procedure TRpQuoWelcome2Form.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  _RpQuoWelcomeForm_SrNo := _RpQuoWelcomeForm_SrNo + 1;
  QRLabel3.Caption := IntToStr(_RpQuoWelcomeForm_SrNo) + ')';
end;

procedure TRpQuoWelcome2Form.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  _RpQuoWelcomeForm_SrNo := 3;
end;

end.
