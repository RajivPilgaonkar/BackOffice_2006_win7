unit RptAccountsBalanceSheetFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsBalanceSheetForm = class(TForm)
    QuickRepBalanceSheet: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText9: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRShape3: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    BalanceSheetSds: TSQLDataSet;
    BalanceSheetDsp: TDataSetProvider;
    BalanceSheetCds: TClientDataSet;
    BalanceSheetDs: TDataSource;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    BalanceSheetCdsAccountHeadsNo: TIntegerField;
    BalanceSheetCdsFolios_id: TIntegerField;
    BalanceSheetCdsCompanies_id: TIntegerField;
    BalanceSheetCdsFolio: TStringField;
    BalanceSheetCdsName: TStringField;
    BalanceSheetCdsDescription: TStringField;
    BalanceSheetCdsDebit: TFloatField;
    BalanceSheetCdsCredit: TFloatField;
    BalanceSheetCdsForexDebit: TFloatField;
    BalanceSheetCdsForexCredit: TFloatField;
    BalanceSheetCdsCat: TStringField;
    BalanceSheetCdsAmount: TFloatField;
    QRRTFFilter1: TQRRTFFilter;
    QRDateAsOn: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsBalanceSheetForm: TRptAccountsBalanceSheetForm;

implementation

{$R *.dfm}

end.
