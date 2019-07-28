unit RptBedNightsTourFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRPDFFilt;

type
  TRptBedNightsTourForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBYearLabel: TQRDBText;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    BedNightsSds: TSQLDataSet;
    BedNightsDsp: TDataSetProvider;
    BedNightsCds: TClientDataSet;
    BedNightsDs: TDataSource;
    BedNightsCdsBednights: TIntegerField;
    BedNightsCdsTourCode: TStringField;
    BedNightsCdsTourDate: TSQLTimeStampField;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    BedNightsCdsNumPax: TIntegerField;
    QRExpr1: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBedNightsTourForm: TRptBedNightsTourForm;

implementation

{$R *.dfm}

end.
