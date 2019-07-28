unit RptMissingBillsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, DB, DBClient, Provider, SqlExpr,
  QRCtrls;

type
  TRptMissingBillsForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    MissBillSds: TSQLDataSet;
    MissBillDsp: TDataSetProvider;
    MissBillCds: TClientDataSet;
    MissBillDs: TDataSource;
    TitleBand1: TQRBand;
    QRLabel5: TQRLabel;
    MissBillCdsVoucherNo: TIntegerField;
    MissBillCdsCurrencies_id: TIntegerField;
    MissBillCdsChecked: TBooleanField;
    MissBillCdsAddressbook_id: TIntegerField;
    MissBillCdsOrganisation: TStringField;
    MissBillCdsVouchers_id: TIntegerField;
    MissBillCdsVoucherDate: TSQLTimeStampField;
    MissBillCdsYearRef: TIntegerField;
    MissBillCdsDescription: TStringField;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    MissBillCdsBilled: TFloatField;
    MissBillCdsExpectedCost: TFloatField;
    MissBillCdsPaid: TFloatField;
    MissBillCdsDiff: TFloatField;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptMissingBillsForm: TRptMissingBillsForm;

implementation

{$R *.dfm}

end.
