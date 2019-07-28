unit RptAccountsTrialBalAllFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptAccountsTrialBalAllForm = class(TForm)
    QuickRepTrialBalance: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    LabelAccNo: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    DateLabel: TQRLabel;
    QRDBText9: TQRDBText;
    QRSysData2: TQRSysData;
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRShape3: TQRShape;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    TrialBalanceSds: TSQLDataSet;
    TrialBalanceDsp: TDataSetProvider;
    TrialBalanceCds: TClientDataSet;
    TrialBalanceDs: TDataSource;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    TrialBalanceCdsTmpTrialBalance_id: TIntegerField;
    TrialBalanceCdsAccountHeadsNo: TIntegerField;
    TrialBalanceCdsDescription: TStringField;
    TrialBalanceCdsDebit: TFloatField;
    TrialBalanceCdsCredit: TFloatField;
    TrialBalanceCdsForexDebit: TFloatField;
    TrialBalanceCdsForexCredit: TFloatField;
    TrialBalanceCdsCompanies_id: TIntegerField;
    TrialBalanceCdsFolioCategories_id: TIntegerField;
    TrialBalanceCdsFolios_id: TIntegerField;
    TrialBalanceCdsComp_id: TIntegerField;
    TrialBalanceCdsFolio: TStringField;
    TrialBalanceCdsName: TStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRDateAsOn: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAccountsTrialBalAllForm: TRptAccountsTrialBalAllForm;

implementation

{$R *.dfm}

procedure TRptAccountsTrialBalAllForm.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
VarStr: String;
i:integer;
PartStr1, PartStr2 :string;
begin
  if not VarIsNull(TrialBalanceCds['accountheadsno']) then
    begin
      VarStr := VarToStr(TrialBalanceCds['accountheadsno']);
      i := length( VarStr);
      PartStr1 := copy (VarStr, 0, i-2);
      PartStr2 := copy(VarStr, i-1, 2);
      VarStr := PartStr1 + '-'+PartStr2;
      LabelAccNo.Caption :=  vartostr(VarStr);
    end;
end;

end.
