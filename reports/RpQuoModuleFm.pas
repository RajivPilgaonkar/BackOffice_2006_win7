unit RpQuoModuleFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls, QuickRpt,
  QRCtrls, QRPDFFilt;

type
  TRpQuoModuleForm = class(TForm)
    QuickRep1: TQuickRep;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    TitleBand1: TQRBand;
    SummaryBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    PaxSds: TSQLDataSet;
    PaxDsp: TDataSetProvider;
    PaxCds: TClientDataSet;
    PaxDs: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape3: TQRShape;
    GroupHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText20: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    ChildBand6: TQRChildBand;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    ChildBand7: TQRChildBand;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRShape5: TQRShape;
    RptDetailSds: TSQLDataSet;
    RptDetailDsp: TDataSetProvider;
    RptDetailCds: TClientDataSet;
    RptDetailDs: TDataSource;
    ReportCdsorganisation: TStringField;
    ReportCdsClientAddress: TStringField;
    ReportCdsPaxName: TStringField;
    ReportCdsUserName: TStringField;
    ReportCdsEmail: TStringField;
    ReportCdsQuotationDate: TSQLTimeStampField;
    ReportCdsReference: TStringField;
    ReportCdsTourCode: TStringField;
    ReportCdsTourDate: TSQLTimeStampField;
    ReportCdsNumPax: TIntegerField;
    ReportCdsRoomType: TStringField;
    ReportCdscurrencycode: TStringField;
    PaxCdsReference: TStringField;
    PaxCdsName: TStringField;
    RptDetailCdsQuoModuleDetails: TStringField;
    RptDetailCdsRecType: TIntegerField;
    RptDetailCdsDateIn: TSQLTimeStampField;
    RptDetailCdsDateOut: TSQLTimeStampField;
    RptDetailCdsQty: TFMTBCDField;
    RptDetailCdsRate: TFMTBCDField;
    RptDetailCdsCost: TFMTBCDField;
    RptDetailCdsServTaxPerc: TFMTBCDField;
    RptDetailCdsServTaxAmt: TFMTBCDField;
    RptDetailCdsCancelPerc: TFMTBCDField;
    RptDetailCdsTotalAmt: TFMTBCDField;
    RptDetailCdsRateAfterServTax: TFMTBCDField;
    RptDetailCdsTotalInvoiceAmount: TFMTBCDField;
    RptDetailCdsTotalTaxAmount: TFMTBCDField;
    RptDetailCdscurrencycode: TStringField;
    RptDetailCdsTotalItemAmount: TFMTBCDField;
    RptDetailCdsTaxPerc: TFMTBCDField;
    RptDetailCdsTaxStr: TStringField;
    ReportCdsQuoModules_id: TIntegerField;
    PaxCdsQuoModules_id: TIntegerField;
    RptDetailCdsQuoModules_id: TIntegerField;
    ReportCdsname: TStringField;
    ReportCdsCompanyAddress: TStringField;
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoModuleForm: TRpQuoModuleForm;

implementation

{$R *.dfm}

procedure TRpQuoModuleForm.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if RptDetailCds['RecType'] = 1 then
    begin
      QRDBText11.Font.Style := [fsBold];
      QRDBText12.Enabled := false;
      QRDBText13.Enabled := false;
      QRDBText14.Enabled := false;
      QRDBText15.Enabled := false;
      QRDBText16.Enabled := false;
    end
  else
    begin
      QRDBText11.Font.Style := [];
      QRDBText12.Enabled := true;
      QRDBText13.Enabled := true;
      QRDBText14.Enabled := true;
      QRDBText15.Enabled := true;
      QRDBText16.Enabled := true;
    end;

end;

end.
