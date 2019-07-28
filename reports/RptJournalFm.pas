unit RptJournalFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptJournalForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    CompanyOfficeLabel: TQRLabel;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText6: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    JournalSds: TSQLDataSet;
    JournalDsp: TDataSetProvider;
    JournalCds: TClientDataSet;
    JournalDs: TDataSource;
    JournalCdsDescription: TStringField;
    JournalCdsVoucherNo: TIntegerField;
    JournalCdsDebit: TBCDField;
    JournalCdsCredit: TBCDField;
    JournalCdsTransactionDate: TSQLTimeStampField;
    JournalCdsTransaction_YrMon: TIntegerField;
    JournalCdsTrans_MonthName: TStringField;
    JournalCdsCashVoucherNo: TIntegerField;
    JournalCdsFolio: TStringField;
    JournalCdsDetails: TStringField;
    QRDBText2: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptJournalForm: TRptJournalForm;

implementation

{$R *.dfm}

end.
