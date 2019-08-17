unit InvVouCostCompareFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, FMTBcd, DB, DBClient, Provider, SqlExpr, cxPC,
  cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxContainer, cxLabel,
  StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DateUtils,
  cxCurrencyEdit;

type
  TInvVouCostCompareForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    InvVouCostCompSds: TSQLDataSet;
    InvVouCostCompDsp: TDataSetProvider;
    InvVouCostCompCds: TClientDataSet;
    InvVouCostCompDs: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Diff_id: TcxGridDBColumn;
    cxGrid1DBTableView1TourCode: TcxGridDBColumn;
    cxGrid1DBTableView1TourDate: TcxGridDBColumn;
    cxGrid1DBTableView1Perc_Diff: TcxGridDBColumn;
    cxButton4: TcxButton;
    cxLabel1: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxToDateEdit: TcxDateEdit;
    cxFromDateButton: TcxButton;
    cxToDateButton: TcxButton;
    cxGenerateButton: TcxButton;
    PopupMenu1: TPopupMenu;
    ComputeVoucherCosts1: TMenuItem;
    N1: TMenuItem;
    cxTabSheet2: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1ExchRate: TcxGridDBColumn;
    cxGrid1DBTableView1InvCost: TcxGridDBColumn;
    cxGrid1DBTableView1VoucherCost: TcxGridDBColumn;
    InvVouCostCompCdsDiff_id: TIntegerField;
    InvVouCostCompCdsOrganisation: TStringField;
    InvVouCostCompCdsTourCode: TStringField;
    InvVouCostCompCdsTourDate: TSQLTimeStampField;
    InvVouCostCompCdsForex: TFMTBCDField;
    InvVouCostCompCdscurrencycode: TStringField;
    InvVouCostCompCdsExchRate: TFMTBCDField;
    InvVouCostCompCdsInvCost: TFMTBCDField;
    InvVouCostCompCdsVoucherCost: TFMTBCDField;
    InvVouCostCompCdsPerc_Diff: TFMTBCDField;
    cxGrid1DBTableView1Organisation: TcxGridDBColumn;
    cxGrid1DBTableView1Forex: TcxGridDBColumn;
    cxGrid1DBTableView1currencycode: TcxGridDBColumn;
    TourCostSds: TSQLDataSet;
    TourCostDsp: TDataSetProvider;
    TourCostCds: TClientDataSet;
    TourCostDs: TDataSource;
    TourCostCdsDiff_id: TIntegerField;
    TourCostCdsRemarks: TStringField;
    TourCostCdsTrsDate: TSQLTimeStampField;
    TourCostCdsForex: TFMTBCDField;
    TourCostCdscurrencycode: TStringField;
    TourCostCdsExchRate: TFMTBCDField;
    TourCostCdsInvCost: TFMTBCDField;
    TourCostCdsVoucherCost: TFMTBCDField;
    TourCostCdsPerc_Diff: TFMTBCDField;
    TourCostCdsService: TStringField;
    TourCostCdsFromCity: TStringField;
    TourCostCdsToCity: TStringField;
    TourCostCdsHotel: TStringField;
    TourCostCdsMatch: TBooleanField;
    cxGrid2DBTableView1Diff_id: TcxGridDBColumn;
    cxGrid2DBTableView1Remarks: TcxGridDBColumn;
    cxGrid2DBTableView1TrsDate: TcxGridDBColumn;
    cxGrid2DBTableView1InvCost: TcxGridDBColumn;
    cxGrid2DBTableView1VoucherCost: TcxGridDBColumn;
    cxGrid2DBTableView1Perc_Diff: TcxGridDBColumn;
    cxGrid2DBTableView1Service: TcxGridDBColumn;
    cxGrid2DBTableView1FromCity: TcxGridDBColumn;
    cxGrid2DBTableView1ToCity: TcxGridDBColumn;
    cxGrid2DBTableView1Hotel: TcxGridDBColumn;
    cxGrid2DBTableView1Match: TcxGridDBColumn;
    EnterExchRateforselectedInvoice1: TMenuItem;
    InvVouCostCompCdsAddressbook_id: TIntegerField;
    InvVouCostCompCdsinvoices_id: TIntegerField;
    InvVouCostCompCdsInvoiceNo: TIntegerField;
    InvVouCostCompCdsInvoiceDate: TSQLTimeStampField;
    cxGrid1DBTableView1Addressbook_id: TcxGridDBColumn;
    cxGrid1DBTableView1invoices_id: TcxGridDBColumn;
    cxGrid1DBTableView1InvoiceNo: TcxGridDBColumn;
    cxGrid1DBTableView1InvoiceDate: TcxGridDBColumn;
    InvVouCostCompCdsExtraAmt: TFMTBCDField;
    cxGrid1DBTableView1ExtraAmt: TcxGridDBColumn;
    procedure cxFromDateButtonClick(Sender: TObject);
    procedure cxToDateButtonClick(Sender: TObject);
    procedure cxGenerateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ComputeVoucherCosts1Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure EnterExchRateforselectedInvoice1Click(Sender: TObject);
  private
    { Private declarations }
    procedure FilterData;
    //procedure ComputeCosts(x_option: integer);
  public
    { Public declarations }
  end;

var
  InvVouCostCompareForm: TInvVouCostCompareForm;
  InvVouCostCompareForm_FromDate: TDateTime;
  InvVouCostCompareForm_ToDate: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TInvVouCostCompareForm.FormCreate(Sender: TObject);
var
  x_month, x_year: integer;
begin
  Height := 700;
  Width := 1130;
  cxPageControl1.ActivePageIndex := 0;

  x_month := MonthOf(Date);
  x_year := YearOf(Date);

  if InvVouCostCompareForm_FromDate <> null then
    cxFromDateEdit.Date := InvVouCostCompareForm_FromDate
  else
    begin
      cxFromDateEdit.Date := StrToDate('01/' + IntToStr(x_month) + '/' + IntToStr(x_year));
      cxFromDateEdit.Date := IncMonth(cxFromDateEdit.Date,2);
    end;

  cxToDateEdit.Date := IncDay(IncMonth(cxFromDateEdit.Date, 1), -1);
end;

procedure TInvVouCostCompareForm.cxFromDateButtonClick(Sender: TObject);
begin
  cxFromDateEdit.Date := IncMonth(cxFromDateEdit.Date,-1);
  cxToDateEdit.Date := IncDay(IncMonth(cxFromDateEdit.Date,1),-1);
  FilterData;
end;

procedure TInvVouCostCompareForm.cxToDateButtonClick(Sender: TObject);
begin
  cxFromDateEdit.Date := IncMonth(cxFromDateEdit.Date,1);
  cxToDateEdit.Date := IncDay(IncMonth(cxFromDateEdit.Date,1),-1);
  FilterData;
end;

procedure TInvVouCostCompareForm.FilterData;
begin

  if cxFromDateEdit.Date = null then
    exit;

  if cxToDateEdit.Date = null then
    exit;

  InvVouCostCompCds.Close;
  InvVouCostCompSds.Close;

  InvVouCostCompSds.CommandText := 'EXEC [p_CostDiff_Inv_Voucher] '  +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ', 1 ';

  InvVouCostCompSds.Open;
  InvVouCostCompCds.Open;

end;

procedure TInvVouCostCompareForm.cxGenerateButtonClick(Sender: TObject);
begin
  FilterData;
end;


procedure TInvVouCostCompareForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TInvVouCostCompareForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TInvVouCostCompareForm.FormDestroy(Sender: TObject);
begin
  InvVouCostCompareForm := nil;
end;

procedure TInvVouCostCompareForm.ComputeVoucherCosts1Click(Sender: TObject);
var
  ClickedOk: boolean;
  GpSds : TSQLDataSet;
  QueryString, NewString: string;
begin

  if InvVouCostCompCds['Addressbook_id'] = null then
    raise exception.create('Please select an invoice with a principal agent');

  ClickedOK:= InputQuery('Enter Exch Rate for Principal Agent', 'Enter Exch Rate', NewString);

  if ClickedOK then
    begin

      if trim(NewString) = '' then
        abort;

      try
        QueryString := 'UPDATE Invoices SET PymtExchRate = ' + NewString + ' ' +
          'WHERE InvoiceDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ' ' +
          'AND Addressbook_id = ' + IntToStr(InvVouCostCompCds['Addressbook_id']);

        GpSds := TSQLDataSet.Create(nil);
        GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
        GpSds.CommandType := ctQuery;

        GpSds.CommandText := QueryString;
        GpSds.ExecSQL;

        GpSds.Free;

        FilterData;
        
      except
      end;

    end;


end;

{
procedure TInvVouCostCompareForm.ComputeCosts(x_option: integer);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  if InvVouCostCompCds['TourCode'] = null then
    exit;

  x_QueryString := 'EXEC [p_CostDiff_Inv_Voucher] '  +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ', ' + IntToStr(x_option);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;
}

procedure TInvVouCostCompareForm.cxPageControl1Change(Sender: TObject);
begin

  if cxPageControl1.ActivePage = cxTabSheet2 then
    begin

      if (InvVouCostCompCds['TourCode'] = null) or (InvVouCostCompCds['TourDate'] = null) then
        raise exception.create ('Please select a Tour Code');

      TourCostCds.Close;
      TourCostSds.Close;

      TourCostSds.CommandText := 'exec [p_CostDiff_Inv_Voucher_TourCode] '+
        QuotedStr(InvVouCostCompCds['TourCode']) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',InvVouCostCompCds['TourDate'])) + ', 1';

      TourCostSds.Open;
      TourCostCds.Open;

    end;

end;

procedure TInvVouCostCompareForm.EnterExchRateforselectedInvoice1Click(
  Sender: TObject);
var
  ClickedOk: boolean;
  GpSds : TSQLDataSet;
  QueryString, NewString: string;
begin

  ClickedOK:= InputQuery('Enter Exch Rate for Tour Code', 'Enter Exch Rate', NewString);

  if ClickedOK then
    begin

      if trim(NewString) = '' then
        abort;

      try
        QueryString := 'UPDATE Invoices SET PymtExchRate = ' + NewString + ' ' +
          'WHERE InvoiceDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ' AND ' +
          QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ' ' +
          'AND Invoices_id = ' + IntToStr(InvVouCostCompCds['Invoices_id']);

        GpSds := TSQLDataSet.Create(nil);
        GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
        GpSds.CommandType := ctQuery;

        GpSds.CommandText := QueryString;
        GpSds.ExecSQL;

        GpSds.Free;

        FilterData;
      except
      end;

    end;

end;

end.
