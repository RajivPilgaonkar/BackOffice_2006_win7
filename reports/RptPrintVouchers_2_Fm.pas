unit RptPrintVouchers_2_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, QRPDFFilt, QRExport, DB, DBClient,
  Provider, SqlExpr, ExtCtrls;

type
  TRptPrintVouchers_2_Form = class(TForm)
    QuickRep1: TQuickRep;
    PrintVouchersSds: TSQLDataSet;
    PrintVouchersDsp: TDataSetProvider;
    PrintVouchersCds: TClientDataSet;
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
    PrintVouchersDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText27: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText11: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptPrintVouchers_2_Form: TRptPrintVouchers_2_Form;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
