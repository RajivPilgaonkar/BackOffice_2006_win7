unit RptManualVoucherFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptManualVoucherForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    lbl_main: TQRLabel;
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    ManualVouSds: TSQLDataSet;
    ManualVouDsp: TDataSetProvider;
    ManualVouCds: TClientDataSet;
    ManualVouDs: TDataSource;
    ManualVouCdsVoucherNo: TIntegerField;
    ManualVouCdsVoucherDate: TSQLTimeStampField;
    ManualVouCdsYearRef: TIntegerField;
    ManualVouCdsMasterTourCode: TStringField;
    ManualVouCdsMasterTourDate: TSQLTimeStampField;
    ManualVouCdsDescription: TStringField;
    ManualVouCdsTourLeader: TStringField;
    ManualVouCdsExpectedCost: TBCDField;
    ManualVouCdsModified: TBooleanField;
    QRDBText2: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptManualVoucherForm: TRptManualVoucherForm;

implementation

{$R *.dfm}

end.
