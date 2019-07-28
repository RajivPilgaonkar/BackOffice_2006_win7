unit RptItinNameListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptItinNameListForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    NameListSds: TSQLDataSet;
    NameListDsp: TDataSetProvider;
    NameListCds: TClientDataSet;
    NameListCdsmastercode: TStringField;
    NameListCdsdeparturedate: TSQLTimeStampField;
    NameListCdsnameofpax: TStringField;
    NameListCdsage: TIntegerField;
    NameListCdscountry: TStringField;
    NameListCdstourcode: TStringField;
    NameListDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRSysData2: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptItinNameListForm: TRptItinNameListForm;

implementation

{$R *.dfm}

end.
