unit RptInvExtraServicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, DB, DBClient, Provider, SqlExpr,
  QRCtrls;

type
  TRptInvExtraServicesForm = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    InvExtraServiceSds: TSQLDataSet;
    InvExtraServiceDsp: TDataSetProvider;
    InvExtraServiceCds: TClientDataSet;
    InvExtraServiceDs: TDataSource;
    InvExtraServiceCdsCurrencies_id: TIntegerField;
    InvExtraServiceCdsAddressbook_id: TIntegerField;
    InvExtraServiceCdsOrgcity: TStringField;
    InvExtraServiceCdsVouchers_id: TIntegerField;
    InvExtraServiceCdsVoucherno: TIntegerField;
    InvExtraServiceCdsVoucherDate: TSQLTimeStampField;
    InvExtraServiceCdsYeaRref: TIntegerField;
    InvExtraServiceCdsDescription: TStringField;
    InvExtraServiceCdsTourLeader: TStringField;
    InvExtraServiceCdsExpectedCost: TFMTBCDField;
    InvExtraServiceCdsPaid: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptInvExtraServicesForm: TRptInvExtraServicesForm;

implementation

{$R *.dfm}

end.
