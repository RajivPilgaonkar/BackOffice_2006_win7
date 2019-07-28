unit RptDifferencesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TRptDifferencesForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    grp_footer1: TQRBand;
    QRShape2: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    DifferencesSds: TSQLDataSet;
    DifferencesDsp: TDataSetProvider;
    DifferencesCds: TClientDataSet;
    DifferencesDs: TDataSource;
    QRExpr1: TQRExpr;
    DifferencesCdsVoucherNo: TIntegerField;
    DifferencesCdsCurrencies_id: TIntegerField;
    DifferencesCdsChecked: TBooleanField;
    DifferencesCdsAddressbook_id: TIntegerField;
    DifferencesCdsOrganisation: TStringField;
    DifferencesCdsVouchers_id: TIntegerField;
    DifferencesCdsVoucherDate: TSQLTimeStampField;
    DifferencesCdsYearRef: TIntegerField;
    DifferencesCdsBilled: TFloatField;
    DifferencesCdsExpectedCost: TFloatField;
    DifferencesCdsPaid: TFloatField;
    DifferencesCdsDiff: TFloatField;
    DifferencesCdsDescription: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptDifferencesForm: TRptDifferencesForm;

implementation

{$R *.dfm}

end.
