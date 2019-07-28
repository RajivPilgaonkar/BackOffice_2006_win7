unit RptBookExtraAccFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, SqlExpr, Provider, DB, DBClient,
  QRCtrls, QRExport, QRPDFFilt;

type
  TRptBookExtraAccForm = class(TForm)
    QuickRep1: TQuickRep;
    RptDs: TDataSource;
    RptCds: TClientDataSet;
    RptDsp: TDataSetProvider;
    RptSds: TSQLDataSet;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    CityLabel: TQRDBText;
    QRLabel1: TQRLabel;
    DateRangeLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    RptCdsBookings_id: TIntegerField;
    RptCdsPaxName: TStringField;
    RptCdsRoomSize: TStringField;
    RptCdsTourNum: TStringField;
    RptCdsMealPlan: TStringField;
    RptCdsDateIn: TSQLTimeStampField;
    RptCdsDateOut: TSQLTimeStampField;
    RptCdsQuantity: TFMTBCDField;
    RptCdsNights: TStringField;
    RptCdsOrganisation: TStringField;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRRTFFilter1: TQRRTFFilter;
    RptCdsAddressBook_id: TIntegerField;
    RptCdsCancelled: TSQLTimeStampField;
    RptCdsRecType: TIntegerField;
    QRLabel9: TQRLabel;
    RptCdsVoucherNo: TIntegerField;
    QRDBText1: TQRDBText;
    QRPrincipalAgentLabel: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBookExtraAccForm: TRptBookExtraAccForm;

implementation

{$R *.dfm}

end.
