unit RptInvoiceBoatFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRPDFFilt, QRExport;

type
  TRptInvoiceBoatForm = class(TForm)
    QRInvoice: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QuantityTxt: TQRDBText;
    AmountTxt: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabelInvoice: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRGroup3: TQRGroup;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBand2: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    InvoiceBoatSds: TSQLDataSet;
    InvoiceBoatDsp: TDataSetProvider;
    InvoiceBoatCds: TClientDataSet;
    InvoiceBoatDs: TDataSource;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    InvoiceBoatCdsOrganisation: TStringField;
    InvoiceBoatCdsAddr: TStringField;
    InvoiceBoatCdsInvoiceDate: TSQLTimeStampField;
    InvoiceBoatCdsInvoiceNo: TIntegerField;
    InvoiceBoatCdsTourcode: TStringField;
    InvoiceBoatCdsTourDate: TSQLTimeStampField;
    InvoiceBoatCdsItemNo: TIntegerField;
    InvoiceBoatCdsDetails: TStringField;
    InvoiceBoatCdsUnitPrice: TFloatField;
    InvoiceBoatCdsQuantity: TIntegerField;
    InvoiceBoatCdsAmount: TFloatField;
    InvoiceBoatCdsNights: TIntegerField;
    InvoiceBoatCdsSubTourCode: TStringField;
    InvoiceBoatCdsBookingRef: TStringField;
    InvoiceBoatCdsTaxPercentage: TFloatField;
    InvoiceBoatCdsTaxAmount: TFloatField;
    InvoiceBoatCdsinvoices_id: TIntegerField;
    InvoiceBoatCdsroomsize: TStringField;
    PageHeaderBand1: TQRBand;
    InvoiceBoatCdsServiceTaxAmount: TFloatField;
    InvoiceBoatCdsCessAmt: TFloatField;
    InvoiceBoatCdsServiceTaxRate: TFloatField;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel10: TQRLabel;
    QRDBText14: TQRDBText;
    InvoiceBoatCdsCessRate: TFloatField;
    QRLabel8: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    InvoiceBoatCdsKkCessAmt: TFloatField;
    InvoiceBoatCdsKkCessRate: TFloatField;
    QRLabel12: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInvoiceBoatForm: TRptInvoiceBoatForm;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TRptInvoiceBoatForm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  x_GstPerc: double;
begin

  x_GstPerc := GetServiceTax(InvoiceBoatCds['InvoiceDate'], 31);

  if (x_GstPerc > 0.0) then
    begin
      QRLabel2.Caption := 'GST';

      QRLabel6.Caption := '';
      QRLabel6.Visible := false;
      QRLabel6.Enabled := false;

      QRDBText14.Visible := false;
      QRDBText14.Enabled := false;

      QRLabel7.Caption := '';
      QRLabel7.Visible := false;
      QRLabel7.Enabled := false;

      QRDBText12.Visible := false;
      QRDBText12.Enabled := false;

      QRLabel8.Caption := '';
      QRLabel8.Enabled := false;
      QRLabel8.Visible := false;

      QRDBText15.Visible := false;
      QRDBText15.Enabled := false;

      QRLabel11.Caption := '';
      QRLabel11.Enabled := false;
      QRLabel11.Visible := false;

      QRDBText16.Visible := false;
      QRDBText16.Enabled := false;

    end
  else
    begin
      QRLabel2.Caption := 'Service Tax';

      QRLabel6.Caption := '%';
      QRLabel6.Visible := true;
      QRLabel6.Enabled := true;

      QRDBText14.Enabled := true;
      QRDBText14.Visible := true;

      QRLabel7.Caption := '%';
      QRLabel7.Visible := true;
      QRLabel7.Enabled := true;

      QRDBText12.Enabled := true;
      QRDBText12.Visible := true;

      QRLabel8.Caption := '%';
      QRLabel8.Visible := true;
      QRLabel8.Enabled := true;

      QRDBText15.Visible := true;
      QRDBText15.Visible := true;

      QRLabel11.Caption := '%';
      QRLabel11.Visible := true;
      QRLabel11.Enabled := true;

      QRDBText16.Visible := true;
      QRDBText16.Visible := true;

    end;

end;

end.
