unit RpQuoInclusionFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRpQuoInclusionForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    ReportCdsInclusion_id: TIntegerField;
    ReportCdsDateIn: TSQLTimeStampField;
    ReportCdsTimeIn: TSQLTimeStampField;
    ReportCdsServiceType: TStringField;
    ReportCdsRemarks: TStringField;
    ReportCdsOrderNo: TIntegerField;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    ReportCdsLeadName: TStringField;
    ReportCdsTourCode: TStringField;
    ReportCdsStartDate: TSQLTimeStampField;
    ReportCdsStr1: TStringField;
    ReportCdsStr2: TStringField;
    ReportCdsStr3: TStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel2: TQRLabel;
    SummaryBand1: TQRBand;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoInclusionForm: TRpQuoInclusionForm;
  _RpQuoInclusionForm_Type : integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoInclusionForm.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption := chr(149);
end;

procedure TRpQuoInclusionForm.FormCreate(Sender: TObject);
begin
  if _RpQuoInclusionForm_Type = 2 then
    begin
      QRDBText7.Enabled := false;
      QRDBText8.Enabled := false;
      QRDBText9.Enabled := false;
      QRShape1.Enabled := false;
      QRShape2.Enabled := false;
      TitleBand1.Height := 50;
    end;

end;

end.
