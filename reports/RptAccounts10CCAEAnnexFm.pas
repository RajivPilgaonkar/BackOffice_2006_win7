unit RptAccounts10CCAEAnnexFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccounts10CCAEAnnexForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Form10CCAESds: TSQLDataSet;
    Form10CCAEDsp: TDataSetProvider;
    Form10CCAECds: TClientDataSet;
    Form10CCAEDs: TDataSource;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    Form10CCAECdsVoucherNo: TIntegerField;
    Form10CCAECdsYearRef: TIntegerField;
    Form10CCAECdsDescription: TStringField;
    Form10CCAECdsExpectedCost: TFloatField;
    Form10CCAECdsAddressbook_id: TIntegerField;
    Form10CCAECdsName: TStringField;
    Form10CCAECdsBillNo: TStringField;
    Form10CCAECdsBillDate: TSQLTimeStampField;
    Form10CCAECdsBillAmount: TFloatField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccounts10CCAEAnnexForm: TRptAccounts10CCAEAnnexForm;

implementation

{$R *.dfm}

end.

