unit BillPaymentsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxGroupBox, cxPC, cxControls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxCheckBox, cxRadioGroup, StdCtrls, cxButtons,
  FMTBcd, DB, DBClient, Provider, SqlExpr, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, cxGridBandedTableView,
  cxGridDBBandedTableView, ShlObj, cxGridExportLink, scExcelExport;

type
  TBillPaymentsForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    N1: TMenuItem;
    BankListings1: TMenuItem;
    cxPageControl1: TcxPageControl;
    TabSheetBillPayment: TcxTabSheet;
    BillPaymentSds: TSQLDataSet;
    BillPaymentDsp: TDataSetProvider;
    BillPaymentCds: TClientDataSet;
    BillPaymentDs: TDataSource;
    cxGridBillPaymentLevel1: TcxGridLevel;
    cxGridBillPayment: TcxGrid;
    BillPaymentCdsVoucherNo: TIntegerField;
    BillPaymentCdsVoucherDate: TSQLTimeStampField;
    BillPaymentCdsVoucherSeries: TStringField;
    BillPaymentCdsAccount: TStringField;
    BillPaymentCdsUnit: TStringField;
    BillPaymentCdsChequeNo: TIntegerField;
    BillPaymentCdsChequeDate: TSQLTimeStampField;
    BillPaymentCdsChequeType: TStringField;
    BillPaymentCdsPoNo: TStringField;
    BillPaymentCdsInvoiceNo: TStringField;
    BillPaymentCdsBillAmount: TFMTBCDField;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    cxGridBillPaymentDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridBillPaymentDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1VoucherDate: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1VoucherSeries: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1Account: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1Unit: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1ChequeNo: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1ChequeDate: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1ChequeType: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1Account_1: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1PoNo: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1InvoiceNo: TcxGridDBBandedColumn;
    cxGridBillPaymentDBBandedTableView1BillAmount: TcxGridDBBandedColumn;
    BillPaymentCdsBank_Acc: TStringField;
    scExcelExport: TscExcelExport;
    CheckBox1: TCheckBox;
    cxLabel3: TcxLabel;
    cxFromDate: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxToDate: TcxDateEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure cxButton3Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    function GetDesktopPath(Sender: TObject): string;
    procedure Print1Click(Sender: TObject);
    procedure BankListings1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillPaymentsForm: TBillPaymentsForm;

implementation

uses FunctionUt, MisDM, BackOfficeDM;

{$R *.dfm}

procedure TBillPaymentsForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TBillPaymentsForm.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePage := TabSheetBillPayment;

  AutoDateRange (Date(),1);

  cxButton2.Left := BillPaymentsForm.Width - cxButton2.Width - 20;  

end;

procedure TBillPaymentsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBillPaymentsForm.FormDestroy(Sender: TObject);
begin
  BillPaymentsForm := nil;
end;

procedure TBillPaymentsForm.cxButton4Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),-1),1);
end;

procedure TBillPaymentsForm.cxButton5Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),1),1);
end;

procedure TBillPaymentsForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
var
  x_Year, x_month, x_Day : Word;
  x_YearNext, x_MonthNext : Word;
  x_YearEnd, x_MonthEnd, x_DayEnd : Word;
  x_DateEnd: TDateTime;
begin

  DecodeDate(x_Date, x_Year, x_Month, x_Day);
  if x_month = 12 then
    begin
      x_MonthNext := 1;
      x_yearNext := x_Year + 1;
    end
  else
    begin
      x_MonthNext := x_Month + 1;
      x_yearNext := x_Year;
    end;

  x_DateEnd := StrToDate('01/' + padl(IntToStr(x_MonthNext),'0',2) + '/' + padl(IntToStr(x_YearNext),'0',4));
  x_DateEnd := x_DateEnd - 1;

  DecodeDate(x_DateEnd, x_YearEnd, x_MonthEnd, x_DayEnd);

  if x_option = 1 then
    begin
      cxFromDateEdit.Text := '01/' + padl(IntToStr(x_Month),'0',2) + '/' + padl(IntToStr(x_Year),'0',4);
      cxToDateEdit.Text := padl(IntToStr(x_DayEnd),'0',2) + '/' + padl(IntToStr(x_MonthEnd),'0',2) + '/' + padl(IntToStr(x_YearEnd),'0',4);
    end
  else if x_option = 2 then
    begin
      cxToDateEdit.Text := padl(IntToStr(x_DayEnd),'0',2) + '/' + padl(IntToStr(x_MonthEnd),'0',2) + '/' + padl(IntToStr(x_YearEnd),'0',4);
    end;

end;

procedure TBillPaymentsForm.cxButton3Click(Sender: TObject);
begin

  if cxPageControl1.ActivePage = TabSheetBillPayment then
    begin
      BillPaymentSds.Close;
      BillPaymentSds.CommandText := 'EXEC p_PymtListing ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + '''' ;
      BillPaymentSds.Open;

      BillPaymentCds.Close;
      BillPaymentCds.Open;

      cxGridBillPayment.SetFocus;

    end

end;

procedure TBillPaymentsForm.SaveAsExcel1Click(Sender: TObject);
var
  x_Path : string;
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      x_Path := GetDesktopPath(nil);

      SaveDialog.FileName := x_Path + '\BillPayments.xls';
      if SaveDialog.Execute then
        ExportGridToExcel(SaveDialog.FileName, cxGridBillPayment, True, True, False);
    end

end;

function TBillPaymentsForm.GetDesktopPath(Sender: TObject): string;
var
  pidl: PItemIDList;
  buf: array[0..MAX_PATH] of Char;
  x_Path: string;
begin

  x_Path := '';
  if Succeeded(ShGetSpecialFolderLocation(Handle, CSIDL_DESKTOP, pidl)) then
  begin
    if ShGetPathfromIDList(pidl, buf) then
      x_Path := buf;
    FreePIDL(pidl);
  end;

  Result := x_Path;

end;

procedure TBillPaymentsForm.Print1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridBillPayment;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Supplier Bill Listing between ' + cxFromDateEdit.Text + ' and ' + cxToDateEdit.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TBillPaymentsForm.BankListings1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_row, x_lastRow : integer;
  x_Path, x_FileName, x_Cell : string;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrNo then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := MisDataModule.SQLConnection;

      x_Path := GetDesktopPath(nil);
      x_FileName := x_Path + '\BillPayments.xlsx';

      GpSds.Close;
      GpSds.CommandText := 'EXEC p_PymtListing ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + '''' ;
      GpSds.Open;

      scExcelExport.ExcelVisible := True;
      scExcelExport.LoadDefaultProperties;

      scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\BillPayments.xlsx';

      scExcelExport.WorksheetName := 'Sheet1';

      scExcelExport.ConnectTo := ctNewExcel;
      scExcelExport.Connect;

      x_StartRow := 2;
      x_row := x_StartRow;


      while not GpSds.EOF do
      begin

        x_Cell := 'A';
        if GpSds['VoucherNo'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['VoucherNo'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['VoucherDate'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' +FormatDateTime('dd/mm/yyyy',GpSds['VoucherDate']);

        x_Cell := NextColumn(x_Cell);
        if GpSds['VoucherSeries'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['VoucherSeries'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['Bank_Acc'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Bank_Acc'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['Unit'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Unit'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['ChequeNo'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := IntToStr(GpSds['ChequeNo']);

        x_Cell := NextColumn(x_Cell);
        if GpSds['ChequeDate'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' +FormatDateTime('dd/mm/yyyy',GpSds['ChequeDate']);

       x_Cell := NextColumn(x_Cell);
        if GpSds['ChequeType'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ChequeType'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['Account'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Account'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['PoNo'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PoNo'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['InvoiceNo'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['InvoiceNo'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['BillAmount'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BillAmount'];

        x_row := x_row + 1;
        GpSds.Next;

      end;

      scExcelExport.SaveAs(x_FileName,ffXLS);

      //************************
      //    formating the cells
      //    Last column+1 alphabet should be passed, so that it shouldnt loop across the columns
      // ************************

      x_Cell := 'L';
      x_lastRow := x_row - 1;
      x_row := 2;

      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_lastRow)].NumberFormat := '#,##0.00';

      scExcelExport.SaveAs(x_FileName,ffXLS);
      scExcelExport.Disconnect;
      scExcelExport.CloseAllExcelApps;

      GpSds.Free;

      Showmessage('Saved As ' + x_FileName);

  end;
end;

procedure TBillPaymentsForm.FormResize(Sender: TObject);
begin
  cxButton2.Left := BillPaymentsForm.Width - cxButton2.Width - 20;
end;

end.
