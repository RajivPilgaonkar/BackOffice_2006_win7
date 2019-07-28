unit RptAccountsPaymentMadeFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsPaymentMadeForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    CompanyLabel: TQRLabel;
    DateRangeLabel: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr1: TQRExpr;
    PaymentMadeSds: TSQLDataSet;
    PaymentMadeDsp: TDataSetProvider;
    PaymentMadeCds: TClientDataSet;
    PaymentMadeDs: TDataSource;
    PaymentMadeCdsCashVoucherNo: TIntegerField;
    PaymentMadeCdsTransactiondate: TSQLTimeStampField;
    PaymentMadeCdsFolio: TStringField;
    PaymentMadeCdsAccountheadsNo: TIntegerField;
    PaymentMadeCdsOrgCity: TStringField;
    PaymentMadeCdsAddressbook_id: TIntegerField;
    PaymentMadeCdsPaid: TFloatField;
    QRRTFFilter1: TQRRTFFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsPaymentMadeForm: TRptAccountsPaymentMadeForm;

implementation

uses BackOfficeDM, ReportParameterFm;

{$R *.dfm}

procedure TRptAccountsPaymentMadeForm.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
var
  tSds : TSQLDataSet;  
begin
{  QRExpr2.Expression := '';

  tSds := TSQLDataSet.Create(nil);
  tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  tSds.Close;
  tSds.CommandText := '';
  tSds.CommandText := 'SELECT SUM(Paid) AS Total_Paid FROM ' +
            ' fn_Rpt_Accounts_PaymentMade( ' + VarToStr(_ret1[2]) + ',' +
            ' ''' +  :FromDate, :ToDate) ;
  tSds.Open;

  SumLbl.Caption := VarToStr(tSds['Total_Paid']) + '.00';

  tSds.Free;
    }
end;

end.
