unit RptTourNumPaxFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport;

type
  TRptTourNumPaxForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    TourNumPaxSds: TSQLDataSet;
    TourNumPaxDsp: TDataSetProvider;
    TourNumPaxCds: TClientDataSet;
    TourNumPaxDs: TDataSource;
    TourNumPaxCdsTourdate: TSQLTimeStampField;
    TourNumPaxCdsTourcode: TStringField;
    TourNumPaxCdsn_pax: TIntegerField;
    TourNumPaxCdsTour: TStringField;
    TourNumPaxCdsFIT: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTourNumPaxForm: TRptTourNumPaxForm;

implementation

{$R *.dfm}

end.
