unit RptTdsFormNo16Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptTdsFormNo16Form = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel33: TQRLabel;
    PageFooterBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    TxtNumToWords: TQRLabel;
    QRDBText14: TQRDBText;
    Form16Sds: TSQLDataSet;
    Form16Dsp: TDataSetProvider;
    Form16Ds: TDataSource;
    Form16Cds: TClientDataSet;
    Form16CdsDate: TSQLTimeStampField;
    Form16CdsDatePaid: TSQLTimeStampField;
    Form16CdsAmountPaid: TFloatField;
    Form16CdsAmountDeducted: TFloatField;
    Form16CdsRate: TFloatField;
    Form16CdsDateCredited: TSQLTimeStampField;
    Form16CdsBranch: TStringField;
    Form16Cdstds_id: TIntegerField;
    Form16CdsCertNo: TIntegerField;
    Form16CdsName: TStringField;
    Form16CdsPan: TStringField;
    Form16CdsOrganisation: TStringField;
    Form16CdsAddress: TStringField;
    Form16CdsDescription: TStringField;
    Form16CdsMonth_Year: TStringField;
    Form16CdsMonth: TIntegerField;
    Form16CdsYearRef: TIntegerField;
    Form16CdsCompanies_id: TIntegerField;
    Form16CdsYear: TIntegerField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTdsFormNo16Form: TRptTdsFormNo16Form;

implementation

uses Num2WordUt;

{$R *.dfm}

procedure TRptTdsFormNo16Form.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  n2Words : TNum2Words;
  InWords : String;
begin
   InWords := '';

   if QRExpr2.Value.dblResult <> null then
   begin
      n2Words := TNum2Words.Create;
      n2Words.Number := QRExpr2.Value.dblResult;
      InWords := n2Words.InWords();
      n2Words.Free;
   end
   else
      InWords := '';

   TxtNumToWords.Caption := 'Certified that a sum of '+ Trim(InWords) + ' has been deducted at source and paid to the credit of the Central Government as per the details given above';

end;

end.
