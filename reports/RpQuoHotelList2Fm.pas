unit RpQuoHotelList2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt, dxGDIPlusClasses, jpeg;

type
  TRpQuoHotelList2Form = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    ReportCdsMinDate: TSQLTimeStampField;
    ReportCdsCity: TStringField;
    ReportCdsOrganisation: TStringField;
    ReportCdsimage1: TStringField;
    ReportCdsForPax: TStringField;
    ReportCdsStartingDateStr: TStringField;
    ReportCdsReference: TStringField;
    ReportCdsTourCode: TStringField;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    ReportCdsHotelAddress: TStringField;
    QRDBText7: TQRDBText;
    QRImage2: TQRImage;
    QRMemo1: TQRMemo;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    ReportCdsHotelAddressbook_id: TIntegerField;
    QRPDFFilter1: TQRPDFFilter;
    QRMemo2: TQRMemo;
    ReportCdsEmergencyContact: TStringField;
    QRDBText8: TQRDBText;
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoHotelList2Form: TRpQuoHotelList2Form;
  _RpQuoHotelList2Form_Image_LinuxPath: string;
  _RpQuoHotelList2Form_ShowImage: boolean;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TRpQuoHotelList2Form.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  x_file_path: string;
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 2 ' +
        'AND ImageObjectId = ' + IntToStr(ReportCds['HotelAddressbook_id']) + ' ' +
        'AND ImageName LIKE ''%.jpg%'' ' +
        'AND type LIKE ''%default%'' ' +
        'ORDER BY COALESCE(SrNo,0)';
  GpSds.Open;

  if GpSds.Eof then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT * FROM images WHERE ImageCategories_id = 2 ' +
            'AND ImageObjectId = ' + IntToStr(ReportCds['HotelAddressbook_id']) + ' ' +
            'AND ImageName LIKE ''%.jpg%'' ' +
            'ORDER BY COALESCE(SrNo,0)';
      GpSds.Open;
    end;

  x_file_path := '#$';
  if GpSds['ImageName'] <> null then
    x_file_path := _RpQuoHotelList2Form_Image_LinuxPath + 'hotel\' + GpSds['ImageName'];

  GpSds.Free;

  if FileExists(x_file_path) then
    begin
      QRImage2.Enabled := True;
      QRImage2.Picture.LoadFromFile(x_file_path);
    end
  else
      QRImage2.Enabled := False;

end;

procedure TRpQuoHotelList2Form.FormCreate(Sender: TObject);
begin

  _RpQuoHotelList2Form_Image_LinuxPath := GetLinuxServerImagePath;

  _RpQuoHotelList2Form_ShowImage := true;
  if not DirectoryExists(_RpQuoHotelList2Form_Image_LinuxPath) then
    _RpQuoHotelList2Form_ShowImage := false;

  QRLabel2.Enabled := false;
  QRDBText4.Enabled := false;

  QRDBText8.Enabled := false;
end;

end.
