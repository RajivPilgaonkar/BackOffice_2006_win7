unit RptBlkBkgPackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, QRCtrls, QuickRpt,
  ExtCtrls;

type
  TRptBlkBkgPackagesForm = class(TForm)
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    PackagesCdsOrgcity: TStringField;
    PackagesCdsFrom_Date: TSQLTimeStampField;
    PackagesCdsFrom_Time: TSQLTimeStampField;
    PackagesCdsFrom_Place: TStringField;
    PackagesCdsPackage: TStringField;
    PackagesCdsTo_Time: TSQLTimeStampField;
    PackagesCdsTo_Place: TStringField;
    PackagesCdsTourRef: TStringField;
    PackagesCdsNoofPax: TIntegerField;
    PackagesCdsTo_Date: TSQLTimeStampField;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbl_yearref: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptBlkBkgPackagesForm: TRptBlkBkgPackagesForm;

implementation

{$R *.dfm}

end.
