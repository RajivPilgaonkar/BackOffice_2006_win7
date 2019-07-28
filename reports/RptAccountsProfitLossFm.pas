unit RptAccountsProfitLossFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsProfitLossForm = class(TForm)
    ProfitLossSds: TSQLDataSet;
    ProfitLossDsp: TDataSetProvider;
    ProfitLossCds: TClientDataSet;
    ProfitLossDs: TDataSource;
    QuickRepProfitLoss: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText9: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRShape3: TQRShape;
    ProfitLossCdsAccountHeadsNo: TIntegerField;
    ProfitLossCdsFolios_id: TIntegerField;
    ProfitLossCdsCompanies_id: TIntegerField;
    ProfitLossCdsFolio: TStringField;
    ProfitLossCdsName: TStringField;
    ProfitLossCdsDescription: TStringField;
    ProfitLossCdsDebit: TFloatField;
    ProfitLossCdsCredit: TFloatField;
    ProfitLossCdsForexDebit: TFloatField;
    ProfitLossCdsForexCredit: TFloatField;
    ProfitLossCdsCat: TStringField;
    ProfitLossCdsAmount: TFloatField;
    QRRTFFilter1: TQRRTFFilter;
    QRDateAsOn: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsProfitLossForm: TRptAccountsProfitLossForm;

implementation

{$R *.dfm}

end.
