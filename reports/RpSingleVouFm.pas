unit RpSingleVouFm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, DBTables, Qrctrls;

type
  TRpSingleVouFrm = class(TForm)
    QRVoucher: TQuickRep;
    QueryVoucher: TQuery;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QueryVoucherorganisation: TStringField;
    QueryVoucheraddress: TStringField;
    QueryVoucherphone: TStringField;
    QueryVouchercity: TStringField;
    QueryVoucherpostalcode: TStringField;
    QueryVoucherstate: TStringField;
    QueryVoucheryearref: TIntegerField;
    QueryVouchertourref: TStringField;
    QueryVouchertourleader: TStringField;
    QueryVouchervoucherno: TIntegerField;
    QueryVoucherdescription: TStringField;
    QueryVoucherremarks1: TStringField;
    QueryVoucherremarks2: TStringField;
    QueryVoucherissuedon: TDateField;
    QueryVoucherissuedby: TStringField;
    QueryVoucherhotelagentremark: TStringField;
    QueryVoucherpax: TMemoField;
    QueryVoucherthroughagent: TStringField;
    QRDBText3: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RpSingleVouFrm: TRpSingleVouFrm;

implementation

{$R *.DFM}

end.
