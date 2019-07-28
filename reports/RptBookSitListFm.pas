unit RptBookSitListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, Provider, SqlExpr, DB, DBClient,
  StdCtrls, QRCtrls, QRExport;

type
  TRptBookSitListForm = class(TForm)
    QuickRep1: TQuickRep;
    RptDs: TDataSource;
    RptCds: TClientDataSet;
    RptSds: TSQLDataSet;
    RptDsp: TDataSetProvider;
    PageHeaderBand1: TQRBand;
    TourCodeLabel: TQRLabel;
    TourLabel: TQRLabel;
    DepDateLabel: TQRLabel;
    QRGroup1: TQRGroup;
    RptCdsBookings_id: TIntegerField;
    RptCdsNotes: TStringField;
    RptCdsReference: TStringField;
    RptCdsTourLeader: TStringField;
    RptCdsTourcode: TStringField;
    RptCdsTourDate: TSQLTimeStampField;
    RptCdsClientName: TStringField;
    RptCdsDateOfBirth: TSQLTimeStampField;
    RptCdsPassportNo: TStringField;
    RptCdsSingleSupplement: TBooleanField;
    RptCdsCountry: TStringField;
    RptCdsSvcDate: TSQLTimeStampField;
    RptCdsSvcFilghtNo: TStringField;
    RptCdsSvcETA: TSQLTimeStampField;
    RptCdsSvcFromCity: TStringField;
    RptCdsSvcToCity: TStringField;
    RptCdsTransfer: TStringField;
    RptCdsSingles: TIntegerField;
    RptCdsDoubles: TIntegerField;
    RptCdsDateIn: TSQLTimeStampField;
    RptCdsDateOut: TSQLTimeStampField;
    RptCdsNights: TStringField;
    RptCdsAccCity: TStringField;
    RptCdsOrganisation: TStringField;
    RptCdsRoomtype: TStringField;
    RptCdsMealPlan: TStringField;
    RptCdsTravelDate: TSQLTimeStampField;
    RptCdsTktFlightNo: TStringField;
    RptCdsTktETA: TSQLTimeStampField;
    RptCdsETD: TSQLTimeStampField;
    RptCdsNoOfTickets: TIntegerField;
    RptCdsTktFromCity: TStringField;
    RptCdsTktToCity: TStringField;
    GroupHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRLabel1: TQRLabel;
    GroupHeaderBand2: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRSubDetail3: TQRSubDetail;
    QRBand2: TQRBand;
    QRSubDetail4: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRLabel29: TQRLabel;
    QRBand3: TQRBand;
    ChildBand1: TQRChildBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel37: TQRLabel;
    TotalPaxLabel: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRRTFFilter1: TQRRTFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBookSitListForm: TRptBookSitListForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
