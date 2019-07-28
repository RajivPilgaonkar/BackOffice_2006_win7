unit RpQuoWelcomeFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt, grimgctrl;

type
  TRpQuoWelcomeForm = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function NumTicketLines: integer;
  public
    { Public declarations }
  end;

var
  RpQuoWelcomeForm: TRpQuoWelcomeForm;
  _RpQuoWelcomeForm_SrNo: integer;
  _RpQuoWelcomeForm_Quotations_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoWelcomeForm.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption := chr(149);
end;

procedure TRpQuoWelcomeForm.FormCreate(Sender: TObject);
begin
  QRLabel4.Caption := chr(149);
  QRLabel6.Caption := chr(149);
  QRLabel9.Caption := chr(149);
  QRLabel11.Caption := chr(149);
  QRLabel14.Caption := chr(149);

  if NumTicketLines = 0 then
    QRSubDetail1.Enabled := false;

end;

function TRpQuoWelcomeForm.NumTicketLines: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_count: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoLines ' +
    'WHERE Quotations_id = ' + IntToStr(_RpQuoWelcomeForm_Quotations_id) + ' ' +
    'AND TrsType = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


end.
