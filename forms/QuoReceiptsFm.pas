unit QuoReceiptsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox;

type
  TQuoReceiptsForm = class(TCustom_1MG_Form)
    MasterCdsQuoReceipts_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsRecdAmt: TFMTBCDField;
    MasterCdsCurrencyOdyssseyCode: TStringField;
    MasterCdsCurrencyHdfcCode: TStringField;
    MasterCdsAmountIsAdvance: TBooleanField;
    MasterCdsPaymentTimeStamp: TSQLTimeStampField;
    MasterCdsUploadId: TStringField;
    MasterCdsPaymentId: TStringField;
    MasterCdsPaymentHDFCId: TStringField;
    MasterCdsTransactionHDFCId: TStringField;
    MasterCdsReferenceHDFCId: TStringField;
    MasterCdsReceiptTypes_id: TIntegerField;
    cxGrid1DBBandedTableView1QuoReceipts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RecdAmt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CurrencyOdyssseyCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CurrencyHdfcCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AmountIsAdvance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PaymentTimeStamp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UploadId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PaymentId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PaymentHDFCId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TransactionHDFCId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ReferenceHDFCId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ReceiptTypes_id: TcxGridDBBandedColumn;
    ReceiptTypeSds: TSQLDataSet;
    ReceiptTypeDsp: TDataSetProvider;
    ReceiptTypeCds: TClientDataSet;
    ReceiptTypeDs: TDataSource;
    ReceiptTypeCdsReceiptTypes_id: TIntegerField;
    ReceiptTypeCdsReceiptType: TStringField;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesDs: TDataSource;
    CurrenciesCdscurrencycode: TStringField;
    CurrenciesCdscurrency: TStringField;
    CurrenciesCdscurrencies_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure UpdateRecdAmt;
  end;

var
  QuoReceiptsForm: TQuoReceiptsForm;
  QuoReceiptsForm_Level: integer;
  QuoReceiptsForm_Quotations_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoReceiptsForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  MasterSds.Params[0].Value := QuoReceiptsForm_Quotations_id;

  ActivateInCustom;

  ReceiptTypeCds.Open;
  CurrenciesCds.Open;

  inherited;
end;

procedure TQuoReceiptsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoReceiptsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoReceipts';
  Custom_MasterKeyField := 'QuoReceipts_id';
  Custom_AdmLevel := QuoReceiptsForm_Level;

  Custom_FormWidth := 800;
  Custom_FormHeight := 500;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TQuoReceiptsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TQuoReceiptsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['TransactionHdfcId'] = null) or (Trim(MasterCds['TransactionHdfcId']) = '') then
    raise Exception.Create('Please enter the Transaction ID');

  if (MasterCds['ReceiptTypes_id'] = null) then
    MasterCds['ReceiptTypes_id'] := 1;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['QuoReceipts_id'] = null then
    raise Exception.Create('QuoReceipts_id is not assigned');

end;

function TQuoReceiptsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM QuoReceipts ' +
    'WHERE TransactionHdfcId = ' + QuotedStr(MasterCds['TransactionHdfcId']) + ' ' +
    'AND Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (QuoReceipts_id <> ' + IntToStr(MasterCds['QuoReceipts_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;


procedure TQuoReceiptsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Quotations_id'] := QuoReceiptsForm_Quotations_id;
  MasterCds['AmountIsAdvance'] := false;
end;

procedure TQuoReceiptsForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateRecdAmt;
end;

procedure TQuoReceiptsForm.UpdateRecdAmt;
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'UPDATE QuoPrint SET RecdAmt = ' +
         '(SELECT COALESCE(SUM(COALESCE(qr.RecdAmt,0.0)),0.0) FROM QuoReceipts qr ' +
         'WHERE QuoPrint.Quotations_id = qr.Quotations_id) ' +
         'WHERE Quotations_id = ' + IntToStr(QuoReceiptsForm_Quotations_id);

  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TQuoReceiptsForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateRecdAmt;
end;

procedure TQuoReceiptsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;
end;

end.
