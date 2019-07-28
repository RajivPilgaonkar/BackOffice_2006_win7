unit RptAccountAllCreditorsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountAllCreditorsForm = class(TForm)
    QuickRepCreditors: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
    DateRangeLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    org_grpfooter: TQRBand;
    QRShapeFooter: TQRShape;
    AllCreditorsSds: TSQLDataSet;
    AllCreditorsDsp: TDataSetProvider;
    AllCreditorsCds: TClientDataSet;
    AllCreditorsDs: TDataSource;
    SumDue1: TQRExpr;
    SumBal1: TQRExpr;
    SumUsd1: TQRExpr;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel9: TQRLabel;
    AllCreditorsCdsyearref: TIntegerField;
    AllCreditorsCdsvoucherno: TIntegerField;
    AllCreditorsCdsvoucherdate: TSQLTimeStampField;
    AllCreditorsCdsdescription: TStringField;
    AllCreditorsCdsBilledAmt: TFloatField;
    AllCreditorsCdspaidamt: TFloatField;
    AllCreditorsCdsexchrate: TFloatField;
    AllCreditorsCdsaddressbook_id: TIntegerField;
    AllCreditorsCdsa_addressbook_id: TIntegerField;
    AllCreditorsCdsorganisation: TStringField;
    AllCreditorsCdsExpDue: TFloatField;
    AllCreditorsCdsBalance: TFloatField;
    AllCreditorsCdsUSD: TIntegerField;
    AllCreditorsCdsUSD_Balance: TFloatField;
    AllCreditorsCdsExc_ExpDue: TFloatField;
    AllCreditorsCdsExc_Balance: TFloatField;
    QRDBOrgFooterLabel: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountAllCreditorsForm: TRptAccountAllCreditorsForm;
  _RptAccountAllCreditorsForm_Mode : Integer;
implementation

uses BackOfficeDM;

{$R *.dfm}

end.
