unit RptAccountsTrsAllFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsTrsAllForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
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
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    CompOfficeLabel: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel9: TQRLabel;
    QRBand2: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRGroup2: TQRGroup;
    QRDBText11: TQRDBText;
    ChildBand1: TQRChildBand;
    PageHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    AllTrsSds: TSQLDataSet;
    AllTrsDsp: TDataSetProvider;
    AllTrsCds: TClientDataSet;
    AllTrsDs: TDataSource;
    QRShape2: TQRShape;
    AllTrsCdsCompanyOffice: TStringField;
    AllTrsCdsAccountHeads_id: TIntegerField;
    AllTrsCdsAccountHeadsNo: TIntegerField;
    AllTrsCdsDescription: TStringField;
    AllTrsCdsCashVoucher: TBooleanField;
    AllTrsCdsTransactionDate: TSQLTimeStampField;
    AllTrsCdsDetails: TStringField;
    AllTrsCdsChequeNo: TIntegerField;
    AllTrsCdsDraftNo: TIntegerField;
    AllTrsCdsDebit: TFloatField;
    AllTrsCdsCredit: TFloatField;
    AllTrsCdsCashVoucherNo: TIntegerField;
    AllTrsCdsDocNo: TIntegerField;
    AllTrsCdsTrsClr: TStringField;
    AllTrsCdsTrsClrNo: TIntegerField;
    AllTrsCdsCV: TStringField;
    AllTrsCdsOffices_id: TIntegerField;
    QRShape3: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsTrsAllForm: TRptAccountsTrsAllForm;

implementation

{$R *.dfm}

end.
