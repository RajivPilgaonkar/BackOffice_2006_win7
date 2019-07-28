unit RptPrintVouchers2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptPrintVouchers2Form = class(TForm)
    QRVoucher: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PrintVouchersSds: TSQLDataSet;
    PrintVouchersDsp: TDataSetProvider;
    PrintVouchersCds: TClientDataSet;
    PrintVouchersDs: TDataSource;
    PrintVouchersCdsOrganisation: TStringField;
    PrintVouchersCdsCity: TStringField;
    PrintVouchersCdsAddress: TStringField;
    PrintVouchersCdsPhone: TStringField;
    PrintVouchersCdsPostalCode: TStringField;
    PrintVouchersCdsState: TStringField;
    PrintVouchersCdsYearRef: TIntegerField;
    PrintVouchersCdsTourRef: TStringField;
    PrintVouchersCdsTourLeader: TStringField;
    PrintVouchersCdsVoucherno: TIntegerField;
    PrintVouchersCdsDescription: TStringField;
    PrintVouchersCdsRemarks1: TStringField;
    PrintVouchersCdsRemarks2: TStringField;
    PrintVouchersCdsIssuedon: TSQLTimeStampField;
    PrintVouchersCdsIssuedby: TStringField;
    PrintVouchersCdsHotelAgentRemark: TStringField;
    PrintVouchersCdsPax: TIntegerField;
    PrintVouchersCdsThroughAgent: TStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptPrintVouchers2Form: TRptPrintVouchers2Form;

implementation

{$R *.dfm}

end.
