unit RptAccountsBalanceCheckFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsBalanceCheckForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    BalanceCheckSds: TSQLDataSet;
    BalanceCheckDsp: TDataSetProvider;
    BalanceCheckCds: TClientDataSet;
    BalanceCheckDs: TDataSource;
    BalanceCheckCdsAccounts_id: TIntegerField;
    BalanceCheckCdsSumDebit: TFMTBCDField;
    BalanceCheckCdsSumCredit: TFMTBCDField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsBalanceCheckForm: TRptAccountsBalanceCheckForm;

implementation

{$R *.dfm}

end.
