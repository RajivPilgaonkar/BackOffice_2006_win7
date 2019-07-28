unit ImpPoPymtDueFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, FMTBcd, DBClient,
  Provider, SqlExpr, dxPSCore, dxPScxCommon, dxPScxGridLnk, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridDBTableView, cxGrid, ComCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxContainer, cxGroupBox, cxButtons,
  ExtCtrls, cxRadioGroup, cxCurrencyEdit, cxCalc, cxCheckBox, DateUtils;



type
  TImpPoPymtDueForm = class(TForm)
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxToDateEdit: TcxDateEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PageControl1: TPageControl;
    TabSheetImpPoPymtDue: TTabSheet;
    cxGridImpPo: TcxGrid;
    cxGridImpPoDBTableView1: TcxGridDBTableView;
    cxGridImpPoDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridImpPoLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    ImpPoSds: TSQLDataSet;
    ImpPoDsp: TDataSetProvider;
    ImpPoCds: TClientDataSet;
    ImpPoDs: TDataSource;
    cxDivisionRadioGroup: TcxRadioGroup;
    cxDivCheckBox: TcxCheckBox;
    N1: TMenuItem;
    ExpansAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    ImpPoCdsImpPoPymtSch_id: TIntegerField;
    ImpPoCdsDivision: TStringField;
    ImpPoCdsPoNo: TStringField;
    ImpPoCdsPoDate: TSQLTimeStampField;
    ImpPoCdsCurrency: TStringField;
    ImpPoCdsAccount: TStringField;
    ImpPoCdsDueDate: TSQLTimeStampField;
    ImpPoCdsAmt: TFMTBCDField;
    ImpPoCdsRemarks: TStringField;
    cxGridImpPoDBBandedTableView1ImpPoPymtSch_id: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1Division: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1PoNo: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1PoDate: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1Currency: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1Account: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1DueDate: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1Amt: TcxGridDBBandedColumn;
    cxGridImpPoDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    ImpPoCdsDueType: TStringField;
    cxGridImpPoDBBandedTableView1DueType: TcxGridDBBandedColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure ExpansAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure cxGridImpPoDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpPoPymtDueForm: TImpPoPymtDueForm;

implementation

uses MisDM, FunctionUt, GrnCancelledFm, RegisterColumnFm;

{$R *.dfm}

procedure TImpPoPymtDueForm.SaveAsExcel1Click(Sender: TObject);
begin

  if PageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := 'C:\Imports_PymtsDue.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW (SaveDialog.FileName, cxGridImpPo, True, True, False, cxGridImpPoDBBandedTableView1);
    end;

end;

procedure TImpPoPymtDueForm.Print1Click(Sender: TObject);
begin

  if PageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridImpPo;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Payments due upto ' + cxToDateEdit.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TImpPoPymtDueForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TImpPoPymtDueForm.cxButton3Click(Sender: TObject);
var
  x_Divisions_id, x_Option : integer;
  x_Div: string;
begin

  x_Divisions_id := cxDivisionRadioGroup.ItemIndex + 1;

  if cxDivCheckBox.Checked then
    x_Divisions_id := 0;

  if PageControl1.ActivePage = TabSheetImpPoPymtDue then
    begin

      if x_Divisions_id > 0 then
        x_div := ' AND i.Divisions_id = ' + IntToStr(x_Divisions_id) + ' '
      else
        x_div := '';

      ImpPoSds.Close;
      ImpPoSds.CommandText :=
        'SELECT ip.ImpPoPymtSch_id, i.Division, i.PoNo, i.PoDate, i.Currency, a.Account, ' +
        'ip.DueDate, ip.Amt, ip.Remarks, ' +
        'CASE WHEN GetDate() >= ip.DueDate THEN ''OverDue'' ELSE ''Due'' END AS DueType ' +
        'FROM ImpPos i ' +
        'INNER JOIN ImpPoPymtSch ip ON i.ImpPos_id = ip.ImpPos_id ' +
        'LEFT JOIN Accounts a ON i.Accounts_id = a.Accounts_id ' +
        'WHERE ip.DueDate <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        x_div + ' ' +
        'AND ((ip.VoucherNo IS NULL) AND (ip.ForceClose = 0)) ' +
        'ORDER BY ip.DueDate, a.Account';
      ImpPoSds.Open;

      ImpPoCds.Close;
      ImpPoCds.Open;

    end;


end;

procedure TImpPoPymtDueForm.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheetImpPoPymtDue;

  cxToDateEdit.Date := Date;
end;

procedure TImpPoPymtDueForm.FormDestroy(Sender: TObject);
begin
  ImpPoPymtDueForm:=nil;
end;

procedure TImpPoPymtDueForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TImpPoPymtDueForm.cxButton4Click(Sender: TObject);
begin
  cxToDateEdit.Date := IncWeek(StrToDate(cxToDateEdit.Text),-1);
end;

procedure TImpPoPymtDueForm.cxButton5Click(Sender: TObject);
begin
  cxToDateEdit.Date := IncWeek(StrToDate(cxToDateEdit.Text),1);
end;

procedure TImpPoPymtDueForm.ExpansAll1Click(Sender: TObject);
begin
  cxGridImpPoDBBandedTableView1.ViewData.Expand(True);
end;

procedure TImpPoPymtDueForm.CollapseAll1Click(Sender: TObject);
begin
  cxGridImpPoDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TImpPoPymtDueForm.cxGridImpPoDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('DueType');

  if ARecord.Values[AColumn.Index] = 'Due' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleRed;


end;

end.


