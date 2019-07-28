unit RpQuoHotelAgentFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRpQuoHotelAgentForm = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRTitleLabel: TQRLabel;
    QRShape1: TQRShape;
    QRDBAgentType: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    ReportCdsQuo_id: TIntegerField;
    ReportCdsOrderNo: TIntegerField;
    ReportCdsAgentType: TStringField;
    ReportCdsCity: TStringField;
    ReportCdsOrganisation: TStringField;
    ReportCdsAddress: TStringField;
    ReportCdsPhone: TStringField;
    ReportCdsContact: TStringField;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRColumnLabel: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DataSource1: TDataSource;
    ReportCdsLeadName: TStringField;
    ReportCdsTourCode: TStringField;
    ReportCdsStartDate: TSQLTimeStampField;
    ReportCdsStr1: TStringField;
    ReportCdsStr2: TStringField;
    ReportCdsStr3: TStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoHotelAgentForm: TRpQuoHotelAgentForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoHotelAgentForm.FormCreate(Sender: TObject);
begin
  //QRDBText9.Enabled := false;
end;

end.
