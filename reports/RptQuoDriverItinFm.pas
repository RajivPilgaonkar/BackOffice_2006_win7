unit RptQuoDriverItinFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptQuoDriverItinForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    DriverItinSds: TSQLDataSet;
    DriverItinDsp: TDataSetProvider;
    DriverItinCds: TClientDataSet;
    DriverItinDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand2: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    DriverItinCdsItin_id: TIntegerField;
    DriverItinCdsTravelDate: TSQLTimeStampField;
    DriverItinCdsQuoTime: TSQLTimeStampField;
    DriverItinCdsToDate: TSQLTimeStampField;
    DriverItinCdsDateStr: TStringField;
    DriverItinCdsGroupNo: TIntegerField;
    DriverItinCdsSrNo: TIntegerField;
    DriverItinCdsStr1: TStringField;
    DriverItinCdsReleaseStr: TStringField;
    DriverItinCdsVouchers_id: TIntegerField;
    DriverItinCdsVoucherString1: TStringField;
    DriverItinCdsVoucherString2: TStringField;
    DriverItinCdsVoucherString3: TStringField;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptQuoDriverItinForm: TRptQuoDriverItinForm;

implementation

{$R *.dfm}

end.
