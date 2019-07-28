unit RpQuoExclusionFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt, dxGDIPlusClasses, jpeg;

type
  TRpQuoExclusionForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    QRDBText5: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    ReportCdsQuoExclusion: TStringField;
    ReportCdsQuoExclusionDetails: TStringField;
    QRLabel1: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRChildBand1: TQRChildBand;
    QRImage1: TQRImage;
    QRMemo2: TQRMemo;
    QRMemo1: TQRMemo;
    QRLabelEmergencyContact: TQRLabel;
    QRLabelCompanyContact: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoExclusionForm: TRpQuoExclusionForm;
  _RpQuoExclusionForm_Type: integer;
  _RpQuoExclusionForm_EmergencyContact: string;
  _RpQuoExclusionForm_CompanyContact: string;
  _RpQuoExclusionForm_Quotations_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoExclusionForm.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption := chr(149);
end;

procedure TRpQuoExclusionForm.FormCreate(Sender: TObject);
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin

  QRLabelEmergencyContact.Caption := _RpQuoExclusionForm_EmergencyContact;
  QRLabelCompanyContact.Caption := _RpQuoExclusionForm_CompanyContact;

//  if _RpQuoExclusionForm_Type = 1 then
//    SummaryBand1.Enabled := False;

  x_QueryString := 'SELECT CASE WHEN a.PrintCo = 1 THEN CAST(1 AS INT) ELSE CAST(-1 AS INT) END AS PrintCo FROM Quotations q ' +
       'LEFT JOIN Addressbook a ON q.PrincipalAgents_id = a.Addressbook_id ' +
       'WHERE q.Quotations_id =  ' + IntToStr(_RpQuoExclusionForm_Quotations_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['PrintCo'] <> null) and (GpSds['PrintCo'] = -1) then
    begin
      QrMemo2.enabled := false;
      QrMemo1.enabled := false;
      QRLabelEmergencyContact.enabled := false;
      QRLabelCompanyContact.enabled := false;
      SummaryBand1.enabled := false;
    end
  else
    begin
      QrMemo2.enabled := true;
      QrMemo1.enabled := true;
    end;

  GpSds.Free;

end;

end.
