unit ExpCostCompareFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, FMTBcd, DB, DBClient, Provider, SqlExpr, cxPC,
  cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxContainer, cxLabel,
  StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DateUtils;

type
  TExpCostCompareForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    ExpCostCompSds: TSQLDataSet;
    ExpCostCompDsp: TDataSetProvider;
    ExpCostCompCds: TClientDataSet;
    ExpCostCompDs: TDataSource;
    ExpCostCompCdsDiff_id: TIntegerField;
    ExpCostCompCdsTourCode: TStringField;
    ExpCostCompCdsTourDate: TSQLTimeStampField;
    ExpCostCompCdsQuo_ExpCost: TFMTBCDField;
    ExpCostCompCdsQuo_Quote: TFMTBCDField;
    ExpCostCompCdsVou_ExpCost: TFMTBCDField;
    ExpCostCompCdsMargin_Quote: TFMTBCDField;
    ExpCostCompCdsPerc_Diff: TFMTBCDField;
    ExpCostCompCdsQuotations_id: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Diff_id: TcxGridDBColumn;
    cxGrid1DBTableView1TourCode: TcxGridDBColumn;
    cxGrid1DBTableView1TourDate: TcxGridDBColumn;
    cxGrid1DBTableView1Quo_ExpCost: TcxGridDBColumn;
    cxGrid1DBTableView1Quo_Quote: TcxGridDBColumn;
    cxGrid1DBTableView1Vou_ExpCost: TcxGridDBColumn;
    cxGrid1DBTableView1Margin_Quote: TcxGridDBColumn;
    cxGrid1DBTableView1Perc_Diff: TcxGridDBColumn;
    cxGrid1DBTableView1Quotations_id: TcxGridDBColumn;
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
    ComputeQuotationCosts1: TMenuItem;
    cxTabSheet2: TcxTabSheet;
    TourCostSds: TSQLDataSet;
    TourCostDsp: TDataSetProvider;
    TourCostCds: TClientDataSet;
    TourCostDs: TDataSource;
    TourCostCdsDiff_id: TIntegerField;
    TourCostCdsQuoString: TStringField;
    TourCostCdsQuoDate: TSQLTimeStampField;
    TourCostCdsCities_id: TIntegerField;
    TourCostCdsAddressbook_id: TIntegerField;
    TourCostCdsServices_id: TIntegerField;
    TourCostCdsTrsType: TIntegerField;
    TourCostCdsQuoCost: TFMTBCDField;
    TourCostCdsVouCost: TFMTBCDField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Diff_id: TcxGridDBColumn;
    cxGrid2DBTableView1QuoString: TcxGridDBColumn;
    cxGrid2DBTableView1QuoDate: TcxGridDBColumn;
    cxGrid2DBTableView1Cities_id: TcxGridDBColumn;
    cxGrid2DBTableView1Addressbook_id: TcxGridDBColumn;
    cxGrid2DBTableView1Services_id: TcxGridDBColumn;
    cxGrid2DBTableView1TrsType: TcxGridDBColumn;
    cxGrid2DBTableView1QuoCost: TcxGridDBColumn;
    cxGrid2DBTableView1VouCost: TcxGridDBColumn;
    TourCostCdsDiff: TBooleanField;
    cxGrid2DBTableView1Diff: TcxGridDBColumn;
    ExpCostCompCdsIssuedBy: TStringField;
    cxGrid1DBTableView1IssuedBy: TcxGridDBColumn;
    procedure cxFromDateButtonClick(Sender: TObject);
    procedure cxToDateButtonClick(Sender: TObject);
    procedure cxGenerateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ComputeVoucherCosts1Click(Sender: TObject);
    procedure ComputeQuotationCosts1Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
    procedure FilterData;
    procedure ComputeCosts(x_option: integer);
  public
    { Public declarations }
  end;

var
  ExpCostCompareForm: TExpCostCompareForm;
  ExpCostCompareForm_FromDate: TDateTime;
  ExpCostCompareForm_ToDate: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TExpCostCompareForm.FormCreate(Sender: TObject);
var
  x_month, x_year: integer;
begin
  Height := 700;
  Width := 950;
  cxPageControl1.ActivePageIndex := 0;

  x_month := MonthOf(Date);
  x_year := YearOf(Date);

  if ExpCostCompareForm_FromDate <> null then
    cxFromDateEdit.Date := ExpCostCompareForm_FromDate
  else
    begin
      cxFromDateEdit.Date := StrToDate('01/' + IntToStr(x_month) + '/' + IntToStr(x_year));
      cxFromDateEdit.Date := IncMonth(cxFromDateEdit.Date,2);
    end;

  cxToDateEdit.Date := IncDay(IncMonth(cxFromDateEdit.Date, 1), -1);
end;

procedure TExpCostCompareForm.cxFromDateButtonClick(Sender: TObject);
begin
  cxFromDateEdit.Date := IncMonth(cxFromDateEdit.Date,-1);
  cxToDateEdit.Date := IncDay(IncMonth(cxFromDateEdit.Date,1),-1);
  FilterData;
end;

procedure TExpCostCompareForm.cxToDateButtonClick(Sender: TObject);
begin
  cxFromDateEdit.Date := IncMonth(cxFromDateEdit.Date,1);
  cxToDateEdit.Date := IncDay(IncMonth(cxFromDateEdit.Date,1),-1);
  FilterData;
end;

procedure TExpCostCompareForm.FilterData;
begin

  if cxFromDateEdit.Date = null then
    exit;

  if cxToDateEdit.Date = null then
    exit;

  ExpCostCompCds.Close;
  ExpCostCompSds.Close;

  ExpCostCompSds.CommandText := 'EXEC [p_CostDiff_Quo_Voucher] '  +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ', 1, '''' ';

  ExpCostCompSds.Open;
  ExpCostCompCds.Open;

end;

procedure TExpCostCompareForm.cxGenerateButtonClick(Sender: TObject);
begin
  FilterData;
end;


procedure TExpCostCompareForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TExpCostCompareForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TExpCostCompareForm.FormDestroy(Sender: TObject);
begin
  ExpCostCompareForm := nil;
end;

procedure TExpCostCompareForm.ComputeVoucherCosts1Click(Sender: TObject);
var
  x_diff_id: integer;
begin
  x_diff_id := ExpCostCompCds['Diff_id'];
  ComputeCosts(2);
  FilterData;
  ExpCostCompCds.Locate('Diff_id', x_diff_id, []);
end;

procedure TExpCostCompareForm.ComputeQuotationCosts1Click(Sender: TObject);
var
  x_diff_id: integer;
begin
  x_diff_id := ExpCostCompCds['Diff_id'];
  ComputeCosts(3);
  FilterData;
  ExpCostCompCds.Locate('Diff_id', x_diff_id, []);
end;

procedure TExpCostCompareForm.ComputeCosts(x_option: integer);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  if ExpCostCompCds['TourCode'] = null then
    exit;

  x_QueryString := 'EXEC [p_CostDiff_Quo_Voucher] '  +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ',' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ', ' + IntToStr(x_option) + ', ' +
    QuotedStr(ExpCostCompCds['TourCode']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;


procedure TExpCostCompareForm.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheet2 then
    begin

      if (ExpCostCompCds['TourCode'] = null) or (ExpCostCompCds['TourDate'] = null) then
        raise exception.create ('Please select a Tour Code');

      TourCostCds.Close;
      TourCostSds.Close;

      TourCostSds.CommandText := 'exec p_CostDiff_Quo_Vou_Lines '+
        QuotedStr(ExpCostCompCds['TourCode']) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',ExpCostCompCds['TourDate'])) + ', 1';

      TourCostSds.Open;
      TourCostCds.Open;

    end;
end;

end.
