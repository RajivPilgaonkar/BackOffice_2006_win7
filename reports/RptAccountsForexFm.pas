unit RptAccountsForexFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsForexForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    OfficeLabel: TQRLabel;
    DateRangeLabel: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape3: TQRShape;
    QRGroup2: TQRGroup;
    QRDBText12: TQRDBText;
    QRBand2: TQRBand;
    QRGroup3: TQRGroup;
    QRBand3: TQRBand;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    ForexSds: TSQLDataSet;
    ForexDsp: TDataSetProvider;
    ForexCds: TClientDataSet;
    ForexDs: TDataSource;
    ForexCdsFolio: TStringField;
    ForexCdsCV: TStringField;
    ForexCdsTrsDate: TSQLTimeStampField;
    ForexCdsTrsClr: TStringField;
    ForexCdsChequeNo: TStringField;
    ForexCdsVoucherNo: TIntegerField;
    ForexCdsDebit: TFloatField;
    ForexCdsCredit: TFloatField;
    ForexCdsFDebit: TFloatField;
    ForexCdsFCredit: TFloatField;
    ForexCdsCurrencyCode: TStringField;
    ForexCdsExchangeRate: TFloatField;
    ForexCdsDetails: TStringField;
    ForexCdsOffices_id: TIntegerField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsForexForm: TRptAccountsForexForm;

implementation

{$R *.dfm}

procedure TRptAccountsForexForm.FormCreate(Sender: TObject);
begin
  ForexCds.Active := False;
  ForexCds.Active := True
end;

procedure TRptAccountsForexForm.FormDestroy(Sender: TObject);
begin
  RptAccountsForexForm := nil;
end;

end.
