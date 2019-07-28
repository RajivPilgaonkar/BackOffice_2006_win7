unit RptCurrentVoucherFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TRptCurrentVoucherForm = class(TForm)
    QRVoucher: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
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
    QRDBText18: TQRDBText;
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
    CurrentVoucherSds: TSQLDataSet;
    CurrentVoucherDsp: TDataSetProvider;
    CurrentVoucherCds: TClientDataSet;
    CurrentVoucherCdsOrganisation: TStringField;
    CurrentVoucherCdsCity: TStringField;
    CurrentVoucherCdsAddress: TStringField;
    CurrentVoucherCdsPhone: TStringField;
    CurrentVoucherCdsPostalCode: TStringField;
    CurrentVoucherCdsState: TStringField;
    CurrentVoucherCdsYearRef: TIntegerField;
    CurrentVoucherCdsTourRef: TStringField;
    CurrentVoucherCdsTourLeader: TStringField;
    CurrentVoucherCdsVoucherno: TIntegerField;
    CurrentVoucherCdsDescription: TStringField;
    CurrentVoucherCdsRemarks1: TStringField;
    CurrentVoucherCdsRemarks2: TStringField;
    CurrentVoucherCdsIssuedon: TSQLTimeStampField;
    CurrentVoucherCdsIssuedby: TStringField;
    CurrentVoucherCdsHotelAgentRemark: TStringField;
    CurrentVoucherCdsPax: TIntegerField;
    CurrentVoucherCdsThroughAgent: TStringField;
    CurrentVoucherDs: TDataSource;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptCurrentVoucherForm: TRptCurrentVoucherForm;

implementation

{$R *.dfm}

end.
