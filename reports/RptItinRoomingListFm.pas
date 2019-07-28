unit RptItinRoomingListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt;

type
  TRptItinRoomingListForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRGroup1: TQRGroup;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRGroup2: TQRGroup;
    QRDBText2: TQRDBText;
    QRGroup3: TQRGroup;
    QRBand3: TQRBand;
    RoomListSds: TSQLDataSet;
    RoomListDsp: TDataSetProvider;
    RoomListCds: TClientDataSet;
    RoomListDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    RoomListCdsTourcode: TStringField;
    RoomListCdsTours: TStringField;
    RoomListCdsTourDate: TSQLTimeStampField;
    RoomListCdsroomsize: TStringField;
    RoomListCdssinglesupplement: TBooleanField;
    RoomListCdstourleader: TBooleanField;
    RoomListCdsName: TStringField;
    QRShape3: TQRShape;
    RoomListCdsRoomNo: TIntegerField;
    QRRoomsLabel: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptItinRoomingListForm: TRptItinRoomingListForm;

implementation

var
  x_NumRooms: integer;

{$R *.dfm}

procedure TRptItinRoomingListForm.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  x_NumRooms := 0;
end;

procedure TRptItinRoomingListForm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  x_NumRooms := x_NumRooms + 1;
  QRRoomsLabel.Caption := IntToStr(x_NumRooms) + ' ' + RoomListCds['RoomSize'] + 's';
end;

end.
