unit RptSingleVoucher2Fm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, DBTables, Qrctrls, FMTBcd, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt, jpeg;

type
  TRptSingleVoucher2Form = class(TForm)
    QRVoucher: TQuickRep;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptSingleVoucher2Form: TRptSingleVoucher2Form;

implementation

{$R *.DFM}

end.
