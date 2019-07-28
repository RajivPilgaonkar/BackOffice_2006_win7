unit RptAccountsCreditAdviceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsCreditAdviceForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRDBText6: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    PymtAdvLabel: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    ChildBand2: TQRChildBand;
    QRDBText9: TQRDBText;
    CreditAdviceSds: TSQLDataSet;
    CreditAdviceDsp: TDataSetProvider;
    CreditAdviceCds: TClientDataSet;
    CreditAdviceDs: TDataSource;
    CreditAdviceCdsAccounts_id: TIntegerField;
    CreditAdviceCdsDetails: TStringField;
    CreditAdviceCdsVoucherNo: TIntegerField;
    CreditAdviceCdsNotesID: TIntegerField;
    CreditAdviceCdsTransactionDate: TSQLTimeStampField;
    CreditAdviceCdsOrganisation: TStringField;
    CreditAdviceCdsOrgCity: TStringField;
    CreditAdviceCdsAddrCityZip: TStringField;
    CreditAdviceCdsState: TStringField;
    CreditAdviceCdsOfficeLoc: TStringField;
    CreditAdviceCdsCashVoucherNo: TIntegerField;
    CreditAdviceCdsCheque: TStringField;
    CreditAdviceCdsCompPan: TStringField;
    CreditAdviceCdsCurrencyCode: TStringField;
    CreditAdviceCdsPhone: TStringField;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    CreditAdviceCdsAmountBilled: TFloatField;
    CreditAdviceCdsPaid: TFloatField;
    CreditAdviceCdsTDS: TFloatField;
    QRRTFFilter1: TQRRTFFilter;
    CreditAdviceCdsBillNo: TStringField;
    CreditAdviceCdsComments: TStringField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsCreditAdviceForm: TRptAccountsCreditAdviceForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
