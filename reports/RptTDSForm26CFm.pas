unit RptTDSForm26CFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptTDSForm26CForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel15: TQRLabel;
    TxtRptDate: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    AnnualSds: TSQLDataSet;
    AnnualDsp: TDataSetProvider;
    AnnualDs: TDataSource;
    AnnualCds: TClientDataSet;
    AnnualCdsOrganisation: TStringField;
    AnnualCdsSubContractor: TStringField;
    AnnualCdsPan: TStringField;
    AnnualCdsCertNo: TIntegerField;
    AnnualCdsDate: TSQLTimeStampField;
    AnnualCdsMonth: TIntegerField;
    AnnualCdsYearRef: TIntegerField;
    AnnualCdsCompanies_id: TIntegerField;
    AnnualCdsDatePaid: TSQLTimeStampField;
    AnnualCdsAmountPaid: TFloatField;
    AnnualCdsAmountDeducted: TFloatField;
    AnnualCdsRate: TFloatField;
    AnnualCdsDateCredited: TSQLTimeStampField;
    AnnualCdsBranch: TStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTDSForm26CForm: TRptTDSForm26CForm;

implementation

{$R *.dfm}

end.
