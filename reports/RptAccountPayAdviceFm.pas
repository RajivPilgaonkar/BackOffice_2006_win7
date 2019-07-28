unit RptAccountPayAdviceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountPayAdviceForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    PymtAdvLabel: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRDBText13: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText14: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    PayAdviceSds: TSQLDataSet;
    PayAdviceDsp: TDataSetProvider;
    PayAdviceCds: TClientDataSet;
    PayAdviceDs: TDataSource;
    PayAdviceCdsAccounts_id: TIntegerField;
    PayAdviceCdsDetails: TStringField;
    PayAdviceCdsVoucherNo: TIntegerField;
    PayAdviceCdsAmountBilled: TFMTBCDField;
    PayAdviceCdsTDS: TFMTBCDField;
    PayAdviceCdsNotesID: TIntegerField;
    PayAdviceCdsTransactionDate: TSQLTimeStampField;
    PayAdviceCdsOrganisation: TStringField;
    PayAdviceCdsOrgCity: TStringField;
    PayAdviceCdsAddrCityZip: TStringField;
    PayAdviceCdsState: TStringField;
    PayAdviceCdsOfficeLoc: TStringField;
    PayAdviceCdsCashVoucherNo: TIntegerField;
    PayAdviceCdsCheque: TStringField;
    PayAdviceCdsCompPan: TStringField;
    PayAdviceCdsCurrencyCode: TStringField;
    PayAdviceCdsPhone: TStringField;
    QRExpr1: TQRExpr;
    QRRTFFilter1: TQRRTFFilter;
    PayAdviceCdsComments: TStringField;
    PayAdviceCdsBillNo: TStringField;
    PayAdviceCdsPaid: TFloatField;
    QRPDFFilter1: TQRPDFFilter;
    QRChildBand1: TQRChildBand;
    PageHeaderBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountPayAdviceForm: TRptAccountPayAdviceForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
