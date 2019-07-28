unit RptTDS194JFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptTDS194JForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape3: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRChildBand1: TQRChildBand;
    ChildBand1: TQRChildBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    ProfSds: TSQLDataSet;
    ProfDsp: TDataSetProvider;
    ProfDs: TDataSource;
    ProfCds: TClientDataSet;
    ProfCdsADDRCITYZIP: TStringField;
    ProfCdsPAN: TStringField;
    ProfCdsORGANISATION: TStringField;
    ProfCdsCERTNO: TIntegerField;
    ProfCdsDATE: TSQLTimeStampField;
    ProfCdsMONTH: TIntegerField;
    ProfCdsYEARREF: TIntegerField;
    ProfCdsCOMPANIES_ID: TIntegerField;
    ProfCdsDATEPAID: TSQLTimeStampField;
    ProfCdsAMOUNTPAID: TFloatField;
    ProfCdsAMOUNTDEDUCTED: TFloatField;
    ProfCdsRATE: TFloatField;
    ProfCdsDATECREDITED: TSQLTimeStampField;
    ProfCdsBRANCH: TStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptTDS194JForm: TRptTDS194JForm;

implementation

{$R *.dfm}

end.
