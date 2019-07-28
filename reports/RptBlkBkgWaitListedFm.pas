unit RptBlkBkgWaitListedFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TRptBlkBkgWaitListedForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    Year_lbl: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    WaitListSds: TSQLDataSet;
    WaitListDsp: TDataSetProvider;
    WaitListCds: TClientDataSet;
    WaitListDs: TDataSource;
    WaitListCdsDateIn: TSQLTimeStampField;
    WaitListCdsDateOut: TSQLTimeStampField;
    WaitListCdsNoofNights: TIntegerField;
    WaitListCdsNoofRooms: TIntegerField;
    WaitListCdsTourRef: TStringField;
    WaitListCdsReservedBy: TStringField;
    WaitListCdsReservedOn: TSQLTimeStampField;
    WaitListCdsConfirmedOn: TSQLTimeStampField;
    WaitListCdsCancelledOn: TSQLTimeStampField;
    WaitListCdsNoConfirmed: TIntegerField;
    WaitListCdsAc: TBooleanField;
    WaitListCdsRoomType: TStringField;
    WaitListCdsAc_appl: TBooleanField;
    WaitListCdsMasterCode: TStringField;
    WaitListCdsWaitingList: TStringField;
    WaitListCdsOrgcity: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBlkBkgWaitListedForm: TRptBlkBkgWaitListedForm;

implementation

{$R *.dfm}

end.
