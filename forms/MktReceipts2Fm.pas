unit MktReceipts2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_1DG_1SDG_Fm, Menus, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit, cxNavigator, cxDBNavigator, DateUtils;

type
  TMktReceipts2Form = class(TCustom_1ML_1DG_1SDG_Form)
    MasterCdsMktReceipts_id: TIntegerField;
    MasterCdsReceiptDate: TSQLTimeStampField;
    MasterCdsCustCode: TStringField;
    MasterCdsAccounts1_id: TIntegerField;
    MasterCdsChequeNo: TIntegerField;
    MasterCdsChequeDate: TSQLTimeStampField;
    MasterCdsChequeDetails: TStringField;
    MasterCdsChequeAmount: TFMTBCDField;
    MasterCdsInvoiceAmount: TFMTBCDField;
    MasterCdsDeductionAmount: TFMTBCDField;
    MasterCdsEntryNo: TIntegerField;
    MasterCdsDivisions_id: TIntegerField;
    MasterCdsstatus: TIntegerField;
    MasterCdsChequeType: TStringField;
    MasterCdsClientStatus: TIntegerField;
    MasterCdsUnidentified: TIntegerField;
    MasterCdsNewMktReceipts_id: TIntegerField;
    MasterCdsExchRate: TFMTBCDField;
    MasterCdsBounced: TBooleanField;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    DetailCdsMktReceiptDetails_id: TIntegerField;
    DetailCdsMktReceipts_id: TIntegerField;
    DetailCdsInvoiceNo: TIntegerField;
    DetailCdsInvoiceDate: TSQLTimeStampField;
    DetailCdsInvoiceAmount: TFMTBCDField;
    DetailCdsDeductionAmount: TFMTBCDField;
    DetailCdsReceiptTypes_id: TIntegerField;
    DetailCdsdivisions_id: TIntegerField;
    DetailCdsCustCode: TStringField;
    DetailCdsAccounts_id: TIntegerField;
    DetailCdsTotalInvoiceAmount: TFMTBCDField;
    DetailCdsRemarks: TStringField;
    DetailCdsSettled: TBooleanField;
    DetailCdsOriginalInvoiceAmount: TFMTBCDField;
    DetailCdsInvAmt_Curr: TFMTBCDField;
    DetailCdsOldExchRate: TFMTBCDField;
    cxGrid1DBBandedTableView1MktReceiptDetails_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MktReceipts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1InvoiceNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1InvoiceDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1InvoiceAmount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DeductionAmount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ReceiptTypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1divisions_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CustCode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Accounts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TotalInvoiceAmount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1InvAmt_Curr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OldExchRate: TcxGridDBBandedColumn;
    DivisionSds: TSQLDataSet;
    DivisionDsp: TDataSetProvider;
    DivisionCds: TClientDataSet;
    DivisionCdsDivisions_id: TIntegerField;
    DivisionCdsDivision: TStringField;
    DivisionDs: TDataSource;
    ReceiptTypeSds: TSQLDataSet;
    ReceiptTypeDsp: TDataSetProvider;
    ReceiptTypeCds: TClientDataSet;
    ReceiptTypeDs: TDataSource;
    ReceiptTypeCdsReceiptTypes_id: TIntegerField;
    ReceiptTypeCdsReceiptType: TStringField;
    AccountsSds: TSQLDataSet;
    AccountsDsp: TDataSetProvider;
    AccountsCds: TClientDataSet;
    AccountsCdsAccounts_id: TIntegerField;
    AccountsCdsAccount: TStringField;
    AccountsDs: TDataSource;
    AccountsCdsPlantCustNo: TStringField;
    DetailCdsDiffAmount: TFloatField;
    cxGrid1DBBandedTableView1DiffAmt: TcxGridDBBandedColumn;
    SubDetailCdsMktReceiptDeductions_id: TIntegerField;
    SubDetailCdsMktReceiptDetails_id: TIntegerField;
    SubDetailCdsDeductionAmount: TFMTBCDField;
    SubDetailCdsReceiptDeductionTypes_id: TIntegerField;
    cxGridDBBandedTableView1MktReceiptDeductions_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MktReceiptDetails_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DeductionAmount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ReceiptDeductionTypes_id: TcxGridDBBandedColumn;
    ReceiptDeductionTypeSds: TSQLDataSet;
    ReceiptDeductionTypeDsp: TDataSetProvider;
    ReceiptDeductionTypeCds: TClientDataSet;
    ReceiptDeductionTypeDs: TDataSource;
    ReceiptDeductionTypeCdsReceiptDeductionTypes_id: TIntegerField;
    ReceiptDeductionTypeCdsAccounts_id: TIntegerField;
    ReceiptDeductionTypeCdsAccount: TStringField;
    cxDBNavigator1: TcxDBNavigator;
    BankSds: TSQLDataSet;
    BankDsp: TDataSetProvider;
    BankCds: TClientDataSet;
    BankDs: TDataSource;
    BankCdsAccounts_id: TIntegerField;
    BankCdsAccount: TStringField;
    VoucherRefSds: TSQLDataSet;
    VoucherRefDsp: TDataSetProvider;
    VoucherRefCds: TClientDataSet;
    VoucherRefDs: TDataSource;
    VoucherRefCdsMktReceipts_id: TIntegerField;
    VoucherRefCdsVoucherRef: TStringField;
    cxDBLabel1: TcxDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  public
    { Public declarations }
  end;

var
  MktReceipts2Form: TMktReceipts2Form;
  _MktReceiptsForm_Level: integer;
  _MktReceiptsForm_Divisions_id: integer;
  _MktReceiptsForm_FromDate: TDateTime;
  _MktReceiptsForm_ToDate: TDateTime;

implementation

uses CommonUt, MainFm, AccountsDM;

{$R *.dfm}

procedure TMktReceipts2Form.FormCreate(Sender: TObject);
begin

  Caption := 'Marketing Receipts';
  Width := 770;

  ActivateInCustom;

  MasterSds.Params[0].Value := _MktReceiptsForm_Divisions_id;
  MasterSds.Params[1].Value := _MktReceiptsForm_FromDate;
  MasterSds.Params[2].Value := _MktReceiptsForm_ToDate;

  inherited;

  AccountsCds.Open;
  ReceiptTypeCds.Open;
  DivisionCds.Open;
  ReceiptDeductionTypeCds.Open;
  BankCds.Open;
  VoucherRefCds.Open;

end;

procedure TMktReceipts2Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TMktReceipts2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  MktReceipts2Form := nil;
end;

procedure TMktReceipts2Form.ActivateInCustom;
begin
  Custom_MasterCdsName := 'MktReceipts';
  Custom_MasterKeyField := 'MktReceipts_id';

  Custom_DetailCdsName := 'MktReceiptDetails';
  Custom_DetailKeyField := 'MktReceiptDetails_id';

  Custom_SubDetailCdsName := 'MktReceiptDeductions';
  Custom_SubDetailKeyField := 'MktReceiptDeductions_id';

  Custom_AdmLevel := _MktReceiptsForm_Level;

  Custom_FormWidth := 915;
  Custom_FormHeight := 660 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TMktReceipts2Form.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_LockDate: TDateTime;
begin

  if (MasterCds['EntryNo'] = null) or (MasterCds['EntryNo'] = 0) then
    raise Exception.Create('Please enter the "Entry No"');

  if (MasterCds['Divisions_id'] = null) then
    raise Exception.Create('Please enter the "Division"');

  if (MasterCds['ChequeNo'] = null)  then
    raise Exception.Create('Please enter the "Cheque No"');

  if (MasterCds['ChequeDate'] = null)  then
    raise Exception.Create('Please enter the "Cheque Date"');

  if (MasterCds['ReceiptDate'] = null)  then
    raise Exception.Create('Please enter the "Receipt Date"');

  if (MasterCds['ReceiptDate'] < _MktReceiptsForm_FromDate) or (MasterCds['ReceiptDate'] > _MktReceiptsForm_ToDate) then
    raise Exception.Create('Receipt Date should be between ' +
      FormatDateTime('dd/mm/yyyy',_MktReceiptsForm_FromDate) + ' and ' +
      FormatDateTime('dd/mm/yyyy',_MktReceiptsForm_ToDate));

  x_LockDate := GetMaxLockDate;

  if (MasterCds['ReceiptDate'] <= x_LockDate) then
    raise exception.create ('Cannot save. Period locked upto ' + FormatDateTime('dd/mm/yyyy',x_LockDate));

  if (GetFinancialYearStatusId(g_FinancialYears_id) = 1) then
    raise exception.create ('Cannot save. FinancialYear is locked');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  // get the next id just before posting.
  // this will minimize chances to duplicate ids in a multiuser situation
  inherited;

  if (MasterCds['MktReceipts_id'] = null) then
    raise Exception.Create('Please Enter the MktReceipts_id');

end;

function TMktReceipts2Form.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM MktReceipts_id ' +
    'WHERE Divisions_id = ' + IntToStr(MasterCds['Divisions_id']) + ' ' +
    'AND MONTH(ReceiptDate) = ' + IntToStr(MonthOf(MasterCds['ReceiptDate'])) + ' ' +
    'AND EntryNo = ' + IntToStr(MasterCds['EntryNo']);

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MktReceipts_id <> ' + IntToStr(MasterCds['MktReceipts_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := AccountsDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


end.
