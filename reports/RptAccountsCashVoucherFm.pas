unit RptAccountsCashVoucherFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsCashVoucherForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    CashVoucherLabel: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    CompanyOfficeLabel: TQRLabel;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    CashVoucherSds: TSQLDataSet;
    CashVoucherDsp: TDataSetProvider;
    CashVoucherCds: TClientDataSet;
    CashVoucherDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRDBText10: TQRDBText;
    CashVoucherCdsTransactionDate: TSQLTimeStampField;
    CashVoucherCdsAccountHeadsNo: TIntegerField;
    CashVoucherCdsCashVoucherNo: TIntegerField;
    CashVoucherCdsForexDetails: TStringField;
    CashVoucherCdsVoucherNo: TIntegerField;
    CashVoucherCdsDebit: TFloatField;
    CashVoucherCdsCredit: TFloatField;
    CashVoucherCdsPaidBy: TStringField;
    CashVoucherCdsAccount: TStringField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsCashVoucherForm: TRptAccountsCashVoucherForm;

implementation

{$R *.dfm}

end.
