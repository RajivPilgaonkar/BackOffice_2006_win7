unit RptInvoicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TRptInvoicesForm = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRGroup3: TQRGroup;
    QRDBText4: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText15: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    UnitPriceTxt: TQRDBText;
    AmountTxt: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText9: TQRDBText;
    QRExpr4: TQRExpr;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    InvoicesSds: TSQLDataSet;
    InvoicesDsp: TDataSetProvider;
    InvoicesCds: TClientDataSet;
    InvoicesDs: TDataSource;
    InvoicesCdsOrganisation: TStringField;
    InvoicesCdsAddr: TStringField;
    InvoicesCdsInvoiceDate: TSQLTimeStampField;
    InvoicesCdsInvoiceNo: TIntegerField;
    InvoicesCdsTourCode: TStringField;
    InvoicesCdsTourDate: TSQLTimeStampField;
    InvoicesCdsItemNo: TIntegerField;
    InvoicesCdsDetails: TStringField;
    InvoicesCdsUnitPrice: TBCDField;
    InvoicesCdsUnitPrice_Str: TFMTBCDField;
    InvoicesCdsQuantity: TIntegerField;
    InvoicesCdsQuantity_Str: TIntegerField;
    InvoicesCdsAmount: TBCDField;
    InvoicesCdsNights: TStringField;
    InvoicesCdsamount_str: TFMTBCDField;
    InvoicesCdsSubTourCode: TStringField;
    InvoicesCdsBookingRef: TStringField;
    InvoicesCdsTaxPercentage: TBCDField;
    InvoicesCdsTaxAmount: TBCDField;
    InvoicesCdsinvoices_id: TIntegerField;
    InvoicesCdsRoomSize: TStringField;
    InvoicesCdsServiceTaxPerc: TBCDField;
    InvoicesCdsServiceTax: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInvoicesForm: TRptInvoicesForm;

implementation

{$R *.dfm}

end.
