unit RptTDSStamentFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptTDSStamentForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    Monthyeargroupfooter: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    OrgCityGroup: TQRGroup;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbl_fromdate: TQRLabel;
    lbl_todate: TQRLabel;
    MonYearGroup: TQRGroup;
    trdategrp: TQRGroup;
    QRBand1: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    StatementSds: TSQLDataSet;
    StatementDsp: TDataSetProvider;
    StatementDs: TDataSource;
    StatementCds: TClientDataSet;
    StatementCdsCompanies_id: TIntegerField;
    StatementCdsAddressbook_id: TIntegerField;
    StatementCdsAccount_YearRef: TIntegerField;
    StatementCdsDateCleared: TSQLTimeStampField;
    StatementCdsTransactionDate: TSQLTimeStampField;
    StatementCdsOrganisation: TStringField;
    StatementCdsLedger_YearRef: TIntegerField;
    StatementCdsBillNo: TStringField;
    StatementCdsVoucherNo: TIntegerField;
    StatementCdsAccountHeads_id: TIntegerField;
    StatementCdsYearMonth: TStringField;
    StatementCdsPaid: TFloatField;
    StatementCdsTDS: TFloatField;
    StatementCdsAccountHeadsNo: TIntegerField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTDSStamentForm: TRptTDSStamentForm;

implementation

{$R *.dfm}

end.

