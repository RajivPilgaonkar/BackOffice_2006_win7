unit RpQuoItineraryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRpQuoItineraryForm = class(TForm)
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
    QRDBText2: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    ReportCdsDayNo: TIntegerField;
    ReportCdsOvernight: TBooleanField;
    ReportCdsPaxName: TStringField;
    ReportCdsTourCode: TStringField;
    ReportCdsStartDate: TSQLTimeStampField;
    ReportCdsStr1: TStringField;
    ReportCdsStr2: TStringField;
    ReportCdsStr3: TStringField;
    ReportCdsQuoDate: TSQLTimeStampField;
    ReportCdsCity: TStringField;
    ReportCdsString: TStringField;
    ReportCdsDayString: TStringField;
    SummaryBand1: TQRBand;
    procedure ReportCdsCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoItineraryForm: TRpQuoItineraryForm;
  _RpQuoItineraryForm_Type: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoItineraryForm.ReportCdsCalcFields(DataSet: TDataSet);
var
  x_str: string;
begin
  if _RpQuoItineraryForm_Type = 1 then
    begin
      x_str := '';
      if (ReportCds['QuoDate']<> null) and (ReportCds['City']<> null) and
         (ReportCds['DayNo']<> null) then
        begin
          x_str := 'Day ' + Trim(IntToStr(ReportCds['DayNo'])) + ' (' +
             FormatDateTime('ddd dd-mmm-yy',ReportCds['QuoDate']) + '), ' +
             ReportCds['City'];
        end;
      ReportCds['DayString'] := x_str;
    end
  else
    ReportCds['DayString'] := ReportCds['PaxName'];

end;

procedure TRpQuoItineraryForm.FormCreate(Sender: TObject);
begin

  if _RpQuoItineraryForm_Type = 2 then
    begin
      QRDBText7.Enabled := false;
      QRDBText8.Enabled := false;
      QRDBText9.Enabled := false;
      QRShape1.Enabled := false;
      TitleBand1.Height := 40;
    end;
end;

end.
