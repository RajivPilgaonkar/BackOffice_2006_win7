unit RptInvIssuedAnnexBFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TRptInvIssuedAnnexBForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    AnnexBSds: TSQLDataSet;
    AnnexBDsp: TDataSetProvider;
    AnnexBCds: TClientDataSet;
    AnnexBDs: TDataSource;
    QRDBText6: TQRDBText;
    QRExpr2: TQRExpr;
    AnnexBCdsInvoiceNo: TIntegerField;
    AnnexBCdsYearRef: TIntegerField;
    AnnexBCdsTourCode: TStringField;
    AnnexBCdsTourDate: TSQLTimeStampField;
    AnnexBCdsInvoiceDate: TSQLTimeStampField;
    AnnexBCdsCurrencyCode: TStringField;
    AnnexBCdsDue: TFloatField;
    AnnexBCdsOrganisation: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInvIssuedAnnexBForm: TRptInvIssuedAnnexBForm;

implementation

{$R *.dfm}

end.
