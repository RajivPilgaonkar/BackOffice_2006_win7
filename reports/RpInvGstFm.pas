unit RpInvGstFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  QRCtrls, StdCtrls, QRPDFFilt, dxGDIPlusClasses, jpeg, QRExport;

type
  TRpInvGstForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRGroup1: TQRGroup;
    DetailBand1: TQRBand;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabelInvoice: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText17: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText21: TQRDBText;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRDBText11: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText18: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel29: TQRLabel;
    MasterCdsAddr: TStringField;
    MasterCdsinvoicedate: TSQLTimeStampField;
    MasterCdsinvoiceno: TIntegerField;
    MasterCdsitemNo: TIntegerField;
    MasterCdsDetails: TStringField;
    MasterCdsUnitPrice: TBCDField;
    MasterCdsQuantity: TIntegerField;
    MasterCdsAmount: TBCDField;
    MasterCdsGstPerc: TBCDField;
    MasterCdsGst: TFMTBCDField;
    MasterCdsAmtAfterTax: TFMTBCDField;
    MasterCdsTaxAmount: TBCDField;
    MasterCdsInvoices_id: TIntegerField;
    MasterCdsGstinRecipient: TStringField;
    MasterCdsPlaceOfSupply: TStringField;
    MasterCdsstate: TStringField;
    MasterCdsTaxPayableRcm: TStringField;
    MasterCdspan: TStringField;
    MasterCdsCinNo: TStringField;
    MasterCdsGstin: TStringField;
    MasterCdsTotalInvoiceAmount: TFMTBCDField;
    MasterCdsNote: TMemoField;
    QRShape4: TQRShape;
    QRDBText12: TQRDBText;
    MasterCdsC_GST_Str: TStringField;
    MasterCdsS_GST_Str: TStringField;
    MasterCdsI_GST_Str: TStringField;
    MasterCdsC_GST: TFMTBCDField;
    MasterCdsS_GST: TFMTBCDField;
    MasterCdsI_GST: TFMTBCDField;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel5: TQRLabel;
    MasterCdsSacCode: TStringField;
    QRDBText28: TQRDBText;
    QRLabel30: TQRLabel;
    QRImage1: TQRImage;
    QRLabel31: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    MasterCdsOrganisation: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpInvGstForm: TRpInvGstForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
