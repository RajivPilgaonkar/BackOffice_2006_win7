unit RptCashBookFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptCashBookForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    CashLabel: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel9: TQRLabel;
    DateRangeLabel: TQRLabel;
    AccountLabel: TQRLabel;
    CompOfficeLabel: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBandMonth: TQRBand;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    DetailBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel12: TQRLabel;
    QRBand1: TQRBand;
    QRShape6: TQRShape;
    CashBookSds: TSQLDataSet;
    CashBookDsp: TDataSetProvider;
    CashBookCds: TClientDataSet;
    CashBookDs: TDataSource;
    CashBookCdsCashBookDate: TSQLTimeStampField;
    CashBookCdsCashVoucherNo: TIntegerField;
    CashBookCdsDescription: TStringField;
    CashBookCdsDetails: TStringField;
    CashBookCdsVoucherNo: TIntegerField;
    CashBookCdsMonthName: TStringField;
    CashBookCdsMonthIndex: TIntegerField;
    DebtExpr: TQRExpr;
    CreditExpr: TQRExpr;
    CashBookCdschequeno: TIntegerField;
    CashBookCdsBal: TFMTBCDField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    CashBookCdsDebit: TFloatField;
    CashBookCdsCredit: TFloatField;
    CashBookCdsBalance: TFloatField;
    QRExpr1: TQRExpr;
    QRRTFFilter1: TQRRTFFilter;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    CashBookCdsInternetBankingNo: TStringField;
    QRPDFFilter1: TQRPDFFilter;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptCashBookForm: TRptCashBookForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRptCashBookForm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

{
  if CashBookCds['MonthName'] <> null then
    begin
      case CashBookCds['MonthName'] of
      1:QRLBLMonthName.Caption := 'January';
      2:QRLBLMonthName.Caption :='February';
      3:QRLBLMonthName.Caption :='March';
      4:QRLBLMonthName.Caption :='April';
      5:QRLBLMonthName.Caption :='May';
      6:QRLBLMonthName.Caption :='June';
      7:QRLBLMonthName.Caption :='July';
      8:QRLBLMonthName.Caption :='August';
      9:QRLBLMonthName.Caption :='September';
      10:QRLBLMonthName.Caption :='October';
      11:QRLBLMonthName.Caption :='November';
      12:QRLBLMonthName.Caption :='December';
      end;
    end;
}

end;

procedure TRptCashBookForm.FormDestroy(Sender: TObject);
begin
  RptCashBookForm := nil;
end;

procedure TRptCashBookForm.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
//var
//tSds : TSQLDataSet;
begin
{  DebtExpr.Expression := '';
  CreditExpr.Expression := '';
  BalanecExpr.Expression := '';

  tSds := TSQLDataSet.Create(nil);
  tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  tSds.Close;
  tSds.CommandText := '';
  tSds.CommandText := 'SELECT SUM(Debit) AS Total_Debit , SUM(Credit) AS Total_Credit , SUM(Balance) AS Total_Balance FROM ' +
    ' fn_Rpt_Accounts_CaskBook(''' + FormatDateTime('mm/dd/yyyy',VarToDateTime(_FromDate)) + '' +
    ','' '  + FormatDateTime('mm/dd/yyyy',VarToDateTime(_ToDate)) + ''')'  ;

  tSds.Open;

  DebtExpr.Expression := VarToStr(tSds['Total_Debit']) + '.00';
  CreditExpr.Expression := VarToStr(tSds['Total_Credit']) + '.00';
  BalanecExpr.Expression := VarToStr(tSds['Total_Balance']) + '.00';

  tSds.Free;
}
end;

end.
