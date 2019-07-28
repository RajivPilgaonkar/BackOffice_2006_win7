unit RptBlkBkgRoomsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QuickRpt, QRCtrls,
  ExtCtrls, QRExport, QRPDFFilt;

type
  TRptBlkBkgRoomsForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    RoomsSds: TSQLDataSet;
    RoomsDsp: TDataSetProvider;
    RoomsCds: TClientDataSet;
    RoomsDs: TDataSource;
    RoomsCdsOrgcity: TStringField;
    RoomsCdsDateIn: TSQLTimeStampField;
    RoomsCdsDateOut: TSQLTimeStampField;
    RoomsCdsRoomType: TStringField;
    RoomsCdsNoofNights: TIntegerField;
    RoomsCdsNoofRooms: TIntegerField;
    RoomsCdsTourRef: TStringField;
    TitleLabel: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBlkBkgRoomsForm: TRptBlkBkgRoomsForm;

implementation

{$R *.dfm}

end.
