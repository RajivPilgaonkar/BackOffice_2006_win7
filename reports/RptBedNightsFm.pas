unit RptBedNightsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRPDFFilt;

type
  TRptBedNightsForm = class(TForm)
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
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    BedNightsSds: TSQLDataSet;
    BedNightsDsp: TDataSetProvider;
    BedNightsCds: TClientDataSet;
    BedNightsDs: TDataSource;
    BedNightsCdsxYear: TIntegerField;
    BedNightsCdsxMonth: TStringField;
    BedNightsCdsorganisation: TStringField;
    BedNightsCdsBednights: TIntegerField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBedNightsForm: TRptBedNightsForm;

implementation

{$R *.dfm}

end.
