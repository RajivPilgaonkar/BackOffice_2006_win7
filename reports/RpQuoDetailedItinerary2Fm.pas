unit RpQuoDetailedItinerary2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, QRCtrls, QuickRpt, DB, DBClient, Provider, SqlExpr,
  ExtCtrls, QRExport, QRPDFFilt, jpeg;

type
  TRpQuoDetailedItinerary2Form = class(TForm)
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape1: TQRShape;
    ReportSds: TSQLDataSet;
    ReportDsp: TDataSetProvider;
    ReportCds: TClientDataSet;
    ReportDs: TDataSource;
    ReportCdsPaxName: TStringField;
    ReportCdsTourCode: TStringField;
    ReportCdsStartDate: TSQLTimeStampField;
    ReportCdsStr1: TStringField;
    ReportCdsStr2: TStringField;
    ReportCdsStr3: TStringField;
    ReportCdsQuoDate: TSQLTimeStampField;
    ReportCdsCity: TStringField;
    ReportCdsDayNo: TIntegerField;
    ReportCdsString: TStringField;
    ReportCdsTitle: TStringField;
    ReportCdsWriteUp: TMemoField;
    DetailBand1: TQRBand;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1city: TStringField;
    ReportCdsDayString: TStringField;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    SummaryBand1: TQRBand;
    QRImage3: TQRImage;
    QRMemo2: TQRMemo;
    QRMemo1: TQRMemo;
    QRMemo3: TQRDBText;
    ChildBand2: TQRChildBand;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    ReportCdsEmergencyContact: TStringField;
    ChildBand3: TQRChildBand;
    QRDBText6: TQRDBText;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRDBText10: TQRDBText;
    ReportCdsStr4: TStringField;
    procedure ReportCdsCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpQuoDetailedItinerary2Form: TRpQuoDetailedItinerary2Form;
  _RpQuoDetailedItinerary2Form_Type: integer;
  _RpQuoDetailedItinerary2Form_Image: integer;
  _RpQuoDetailedItinerary2Form_Quotations_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRpQuoDetailedItinerary2Form.ReportCdsCalcFields(DataSet: TDataSet);
var
  x_str: string;
begin
  if _RpQuoDetailedItinerary2Form_Type = 1 then
    begin
      x_str := '';
      if (ReportCds['QuoDate']<> null) and (ReportCds['City']<> null) and
         (ReportCds['DayNo']<> null) then
        begin
          x_str := 'Day ' + Trim(IntToStr(ReportCds['DayNo'])) + ' (' +
             FormatDateTime('ddd dd-mmm-yy',ReportCds['QuoDate']) + '), ' +
             ReportCds['City'];
        end;
      ReportCds['DayString'] := x_str;
    end
  else
      ReportCds['DayString'] := ReportCds['PaxName'];

end;

procedure TRpQuoDetailedItinerary2Form.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{
  if (ReportCds['DetTypeString'] = null) or (trim(ReportCds['DetTypeString']) = '') then
    begin
      QRDBDetString.Top := 3;
      DetailBand1.Height := 47 - (23-3);
    end
  else
    begin
      QRDBDetString.Top := 23;
      DetailBand1.Height := 47;
    end;
}
end;

procedure TRpQuoDetailedItinerary2Form.FormCreate(Sender: TObject);
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin

  QRImage4.Enabled := false;
  QRImage5.Enabled := false;

//  QRDBText9.Enabled := false;

  if _RpQuoDetailedItinerary2Form_Image = 0 then
    begin
      QRImage1.Enabled := false;
      SummaryBand1.Enabled := false;
      QRLabel1.Top := QRLabel1.Top - 210;
      QRDBText7.Top := QRDBText7.Top - 210;
      QRDBText8.Top := QRDBText8.Top - 210;
      QRDBText9.Top := QRDBText9.Top - 210;
      QRDBText10.Top := QRDBText10.Top - 210;
      TitleBand1.Height := TitleBand1.Height - 210;
    end;


  x_QueryString := 'SELECT CASE WHEN a.PrintCo = 1 THEN CAST(1 AS INT) ELSE CAST(-1 AS INT) END AS PrintCo FROM Quotations q ' +
       'LEFT JOIN Addressbook a ON q.PrincipalAgents_id = a.Addressbook_id ' +
       'WHERE q.Quotations_id =  ' + IntToStr(_RpQuoDetailedItinerary2Form_Quotations_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['PrintCo'] <> null) and (GpSds['PrintCo'] = -1) then
    begin
      QrMemo2.enabled := false;
      QrMemo1.enabled := false;
      QrMemo3.enabled := false;
      QRImage3.Top := 10;
    end
  else
    begin
      QrMemo2.enabled := true;
      QrMemo1.enabled := true;
      QrMemo3.enabled := true;
    end;



  GpSds.Close;
  GpSds.CommandText := 'EXEC p_QuoStateImageList ' + IntToStr(_RpQuoDetailedItinerary2Form_Quotations_id);
  GpSds.Open;

  if _RpQuoDetailedItinerary2Form_Image <> 0 then
    begin

      QRImage1.Enabled := false;

      while not GpSds.Eof do
        begin
          if (GpSds['OrderNo'] = 1) and (GpSds['ImageName'] <> null) then
            begin
              QRImage4.Enabled := True;
              QRImage4.Picture.LoadFromFile(GpSds['ImageName']);
            end;
          if (GpSds['OrderNo'] = 2) and (GpSds['ImageName'] <> null) then
            begin
              QRImage5.Enabled := True;
              QRImage5.Picture.LoadFromFile(GpSds['ImageName']);
            end;
          //if (GpSds['OrderNo'] = 3) and (GpSds['ImageName'] <> null) then
           // begin
            //  QRImage6.Enabled := True;
             // QRImage6.Picture.LoadFromFile(GpSds['ImageName']);
            //end;

          GpSds.Next;

        end;
    end;


  GpSds.Free;


end;

procedure TRpQuoDetailedItinerary2Form.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin

  ChildBand2.Enabled := true;
  if ((ReportCds['Title'] = null) or (trim(ReportCds['Title']) = '')) then
    ChildBand2.Enabled := false;

  ChildBand3.Enabled := true;
  if ((ReportCds['WriteUp'] = null) or (trim(ReportCds['WriteUp']) = '')) then
    ChildBand3.Enabled := false;

end;

end.

