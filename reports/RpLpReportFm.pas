unit RpLpReportFm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, QRCtrls, Db, DBTables, ExtCtrls;

type
  TRpLpReportForm = class(TForm)
    QuickRep1: TQuickRep;
    RptQry: TQuery;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QR_TL_Label: TQRLabel;
    QR_Header1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QR_Header2: TQRLabel;
    QR_Header3: TQRLabel;
    RptQrytourcode: TStringField;
    RptQryclient: TMemoField;
    RptQrylocalpayment: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpLpReportForm: TRpLpReportForm;

implementation

{$R *.DFM}

end.
