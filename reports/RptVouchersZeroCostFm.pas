unit RptVouchersZeroCostFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRPDFFilt;

type
  TRptVouchersZeroCostForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    VouchersZeroCostSds: TSQLDataSet;
    VouchersZeroCostDsp: TDataSetProvider;
    VouchersZeroCostCds: TClientDataSet;
    VouchersZeroCostDs: TDataSource;
    VouchersZeroCostCdsOrgCity: TStringField;
    VouchersZeroCostCdsVoucherNo: TIntegerField;
    VouchersZeroCostCdsYearRef: TIntegerField;
    VouchersZeroCostCdsVoucherDate: TSQLTimeStampField;
    VouchersZeroCostCdsMasterTourCode: TStringField;
    VouchersZeroCostCdsMasterTourDate: TSQLTimeStampField;
    VouchersZeroCostCdsDescription: TStringField;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptVouchersZeroCostForm: TRptVouchersZeroCostForm;

implementation

{$R *.dfm}

end.
