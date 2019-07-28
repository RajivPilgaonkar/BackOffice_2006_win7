unit RptAddressFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, StdCtrls, QRPDFFilt;

type
  TRptAddressForm = class(TForm)
    QuickRep1: TQuickRep;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    ReportCdsAddressbook_id: TIntegerField;
    ReportCdsOrganisation: TStringField;
    ReportCdsCity: TStringField;
    ReportCdsCities_id: TIntegerField;
    ReportCdsContact: TStringField;
    ReportCdsPhone: TStringField;
    ReportCdsFax: TStringField;
    ReportCdsPAN: TStringField;
    ReportCdsemail: TStringField;
    ReportCdswww: TStringField;
    Label1: TLabel;
    ReportCdsAddress: TStringField;
    ChildBand1: TQRChildBand;
    QRShape3: TQRShape;
    ReportCdsPostalCode: TStringField;
    ReportCdsState: TStringField;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAddressForm: TRptAddressForm;

implementation

{$R *.dfm}

end.
