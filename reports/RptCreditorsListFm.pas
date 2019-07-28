unit RptCreditorsListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls,
  ExtCtrls;

type
  TRptCreditorsListForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel10: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    CreditorsSds: TSQLDataSet;
    CreditorsDsp: TDataSetProvider;
    CreditorsCds: TClientDataSet;
    CreditorsDs: TDataSource;
    CreditorsCdsCurrencies_id: TIntegerField;
    CreditorsCdsChecked: TBooleanField;
    CreditorsCdsAddressbook_id: TIntegerField;
    CreditorsCdsOrganisation: TStringField;
    CreditorsCdsVouchers_id: TIntegerField;
    CreditorsCdsVoucherNo: TIntegerField;
    CreditorsCdsVoucherDate: TSQLTimeStampField;
    CreditorsCdsYearRef: TIntegerField;
    CreditorsCdsBilled: TFMTBCDField;
    CreditorsCdsExpectedCost: TFMTBCDField;
    CreditorsCdsPaid: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptCreditorsListForm: TRptCreditorsListForm;

implementation

{$R *.dfm}

end.
