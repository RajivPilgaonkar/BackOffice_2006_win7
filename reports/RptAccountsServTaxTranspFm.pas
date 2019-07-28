unit RptAccountsServTaxTranspFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsServTaxTranspForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    CashVoucherSds: TSQLDataSet;
    CashVoucherDsp: TDataSetProvider;
    CashVoucherCds: TClientDataSet;
    CashVoucherDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    CashVoucherCdsaccounts_id: TIntegerField;
    CashVoucherCdstransactiondate: TSQLTimeStampField;
    CashVoucherCdscashvoucherno: TIntegerField;
    CashVoucherCdsVoucherType: TStringField;
    CashVoucherCdsorganisation: TStringField;
    TitleBand1: TQRBand;
    DateRangeLabel: TQRLabel;
    QRGroup1: TQRGroup;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    CashVoucherCdsledgers_id: TIntegerField;
    CashVoucherCdsdetails: TStringField;
    CashVoucherCdsDebit: TBCDField;
    CashVoucherCdsCredit: TBCDField;
    CashVoucherCdsbillno: TStringField;
    CashVoucherCdsaccountheads_id: TIntegerField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    CashVoucherCdsBillDebit: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsServTaxTranspForm: TRptAccountsServTaxTranspForm;

implementation

{$R *.dfm}

end.
