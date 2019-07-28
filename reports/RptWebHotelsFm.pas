unit RptWebHotelsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRPDFFilt;

type
  TRptWebHotelsForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    WebHotelsSds: TSQLDataSet;
    WebHotelSDsp: TDataSetProvider;
    WebHotelsCds: TClientDataSet;
    WebHotelDs: TDataSource;
    WebHotelsCdsaddressbook_id: TIntegerField;
    WebHotelsCdsstate: TStringField;
    WebHotelsCdscity: TStringField;
    WebHotelsCdsorganisation: TStringField;
    WebHotelsCdscategory: TStringField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptWebHotelsForm: TRptWebHotelsForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
