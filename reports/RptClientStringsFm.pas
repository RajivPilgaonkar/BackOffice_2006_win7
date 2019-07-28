unit RptClientStringsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport;

type
  TRptClientStringsForm = class(TForm)
    QuickRep1: TQuickRep;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    QRDBModule: TQRDBText;
    QRDBHotel: TQRDBText;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    ReportCdsModule: TStringField;
    ReportCdsItinDay: TIntegerField;
    ReportCdsDow: TStringField;
    ReportCdsItinDate: TSQLTimeStampField;
    ReportCdsCity: TStringField;
    ReportCdsService: TStringField;
    ReportCdsHotel: TStringField;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBDay: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBDow: TQRDBText;
    QRDBDate: TQRDBText;
    QRDBCity: TQRDBText;
    QRDBService: TQRDBText;
    procedure QRGroup1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptClientStringsForm: TRptClientStringsForm;

implementation

var
  x_Module_Start: integer;
  x_Day: integer;

{$R *.dfm}

procedure TRptClientStringsForm.QRGroup1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  x_Module_Start := 1;
  QrdbModule.Enabled := True;
  x_Day := 0;

end;

procedure TRptClientStringsForm.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  if x_Module_Start = 1 then
    x_Module_Start := 0;
    x_Day := ReportCds['ItinDay'];
end;

procedure TRptClientStringsForm.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if x_Module_start = 0 then
      QrdbModule.Enabled := False;

  if x_Day <> ReportCds['ItinDay'] then
    begin
      QrdbDay.Enabled := True;
      QrdbDow.Enabled := True;
      QrdbDate.Enabled := True;
      QrdbCity.Enabled := True;
      QrdbHotel.Enabled := True;
    end
  else
    begin
      QrdbDay.Enabled := False;
      QrdbDow.Enabled := False;
      QrdbDate.Enabled := False;
      QrdbCity.Enabled := False;
      QrdbHotel.Enabled := False;
    end;

end;

end.
