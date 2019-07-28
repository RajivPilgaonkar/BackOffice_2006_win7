unit RpQuoDetailedItineraryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRpQuoDetailedItineraryForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    ReportCdsQuoDate: TSQLTimeStampField;
    ReportCdsCity: TStringField;
    ReportCdsDayNo: TIntegerField;
    ReportCdsDetString: TStringField;
    ReportCdsDetTypeString: TStringField;
    ReportCdsQuoTime: TSQLTimeStampField;
    ReportCdsDayString: TStringField;
    ReportCdsQuoString: TStringField;
    DetailBand1: TQRBand;
    QRDBDetString: TQRDBText;
    QRDBDetTypeString: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText1: TQRDBText;
    ChildBand2: TQRChildBand;
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
    QRShape2: TQRShape;
    procedure ReportCdsCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoDetailedItineraryForm: TRpQuoDetailedItineraryForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoDetailedItineraryForm.ReportCdsCalcFields(DataSet: TDataSet);
var
  x_str: string;
begin
  x_str := '';
  if ReportCds['QuoDate']<> null then
    begin
      x_str := 'Day ' + Trim(IntToStr(ReportCds['DayNo'])) + ' (' +
         FormatDateTime('ddd dd-mmm-yy',ReportCds['QuoDate']) + '), ' +
         ReportCds['City'];
    end;
  ReportCds['DayString'] := x_str;
end;

procedure TRpQuoDetailedItineraryForm.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{
  if (ReportCds['DetTypeString'] = null) or (trim(ReportCds['DetTypeString']) = '') then
    begin
      QRDBDetString.Top := 3;
      DetailBand1.Height := 47 - (23-3);
    end
  else
    begin
      QRDBDetString.Top := 23;
      DetailBand1.Height := 47;
    end;
}    
end;

end.

