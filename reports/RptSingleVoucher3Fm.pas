unit RptSingleVoucher3Fm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Db, DBTables, Qrctrls, FMTBcd, DBClient, Provider,
  SqlExpr, QRExport, QRPDFFilt, jpeg, grimgctrl;

type
  TRptSingleVoucher3Form = class(TForm)
    QRVoucher: TQuickRep;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText27: TQRDBText;
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
    QRDBText3: TQRDBText;
    PrintVouchersSds: TSQLDataSet;
    PrintVouchersDsp: TDataSetProvider;
    PrintVouchersCds: TClientDataSet;
    PrintVouchersCdsOrganisation: TStringField;
    PrintVouchersCdsCity: TStringField;
    PrintVouchersCdsAddress: TStringField;
    PrintVouchersCdsPhone: TStringField;
    PrintVouchersCdsPostalCode: TStringField;
    PrintVouchersCdsState: TStringField;
    PrintVouchersCdsYearRef: TIntegerField;
    PrintVouchersCdsTourRef: TStringField;
    PrintVouchersCdsTourLeader: TStringField;
    PrintVouchersCdsVoucherno: TIntegerField;
    PrintVouchersCdsDescription: TStringField;
    PrintVouchersCdsRemarks1: TStringField;
    PrintVouchersCdsRemarks2: TStringField;
    PrintVouchersCdsIssuedon: TSQLTimeStampField;
    PrintVouchersCdsIssuedby: TStringField;
    PrintVouchersCdsHotelAgentRemark: TStringField;
    PrintVouchersCdsPax: TIntegerField;
    PrintVouchersCdsThroughAgent: TStringField;
    PrintVouchersDs: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    PrintVouchersCdsRemarksHotel: TStringField;
    QRDBText4: TQRDBText;
    QRLabelAddr: TQRLabel;
    PrintVouchersCdsTourRef2: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptSingleVoucher3Form: TRptSingleVoucher3Form;

implementation

{$R *.DFM}

procedure TRptSingleVoucher3Form.FormCreate(Sender: TObject);
begin
  QRLabelAddr.Caption :=
    'Odyssey Tours & Travels Pvt Ltd ' + chr(13) +
    'Aranya, 2/286 Boa Viagem Road, ' +
    'Naikavaddo, Calangute, ' +
    'Goa - 403 516 ' + chr(13) +
    'Tel: (0832) 2277720, 2276941;' + '  Fax: (0832) 2277124; Email: res@odyssey.co.in ';

end;

end.
