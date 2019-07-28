unit RptLpReportFm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, QRCtrls, Db, DBTables, ExtCtrls, FMTBcd, DBClient, Provider,
  SqlExpr, QRExport, Variants;

type
  TRptLpReportForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QR_TL_Label: TQRLabel;
    QR_Header1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QR_Header2: TQRLabel;
    QR_Header3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    LpSds: TSQLDataSet;
    LpDsp: TDataSetProvider;
    LpCds: TClientDataSet;
    LpDS: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    LpCdsTourCode: TStringField;
    LpCdsNameOfPax: TStringField;
    LpCdsLocalPayment: TFMTBCDField;
    QR_LP_Total: TQRLabel;
    QRLabel1: TQRLabel;
    procedure TitleBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptLpReportForm: TRptLpReportForm;

implementation

var
  x_Total_Amt: double;

{$R *.DFM}

procedure TRptLpReportForm.TitleBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  x_Total_Amt := 0.0;
end;

procedure TRptLpReportForm.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if LpCds['LocalPayment'] <> null then
    x_total_amt := x_Total_Amt + LpCds['Localpayment'];
end;

procedure TRptLpReportForm.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QR_LP_Total.Caption := FormatFloat('#,##0',x_total_amt);
end;

end.
