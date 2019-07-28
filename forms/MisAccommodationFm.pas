unit MisAccommodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxButtons, ExtCtrls, dxSkinscxPCPainter, cxPC, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, FMTBcd,
  DBClient, Provider, SqlExpr, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, dxPScxGrid6Lnk;

type
  TMisAccommodationForm = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxFromDateEdit: TcxDateEdit;
    cxToDateEdit: TcxDateEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheetBusinessVouchers: TcxTabSheet;
    cxGridBusinessVouchers: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridBusinessVouchersDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    BusVouchersSds: TSQLDataSet;
    BusVouchersDsp: TDataSetProvider;
    BusVouchersCds: TClientDataSet;
    BusVouchersDs: TDataSource;
    BusVouchersCdsVouchersAccommodation_id: TIntegerField;
    BusVouchersCdsVoucherDate: TSQLTimeStampField;
    BusVouchersCdsVoucherNo: TIntegerField;
    BusVouchersCdsTourRef: TStringField;
    BusVouchersCdsDateIn: TSQLTimeStampField;
    BusVouchersCdsAmountBilled: TBCDField;
    BusVouchersCdsCity: TStringField;
    BusVouchersCdsOrganisation: TStringField;
    BusVouchersCdsNights: TIntegerField;
    BusVouchersCdsRoomType: TStringField;
    BusVouchersCdsPlan: TStringField;
    BusVouchersCdsSingles: TIntegerField;
    BusVouchersCdsDoubles: TIntegerField;
    BusVouchersCdsTriples: TIntegerField;
    cxGridBusinessVouchersDBBandedTableView1VouchersAccommodation_id: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1VoucherDate: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1TourRef: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1AmountBilled: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1City: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1Organisation: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1RoomType: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1Plan: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1Singles: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1Doubles: TcxGridDBBandedColumn;
    cxGridBusinessVouchersDBBandedTableView1Triples: TcxGridDBBandedColumn;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    N1: TMenuItem;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    cxTabSheetBusinessItin: TcxTabSheet;
    BusItinSds: TSQLDataSet;
    BusItinDsp: TDataSetProvider;
    BusItinCds: TClientDataSet;
    BusItinDs: TDataSource;
    cxGridBusinessItin: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridBusinessItinDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    BusItinCdsItineraryAccommodation_id: TIntegerField;
    BusItinCdsTours: TStringField;
    BusItinCdsDateIn: TSQLTimeStampField;
    BusItinCdsCity: TStringField;
    BusItinCdsOrganisation: TStringField;
    BusItinCdsNights: TIntegerField;
    BusItinCdsRoomType: TStringField;
    BusItinCdsPlan: TStringField;
    BusItinCdsSingles: TIntegerField;
    BusItinCdsDoubles: TIntegerField;
    BusItinCdsTriples: TIntegerField;
    BusItinCdsStatus: TStringField;
    cxGridBusinessItinDBBandedTableView1ItineraryAccommodation_id: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Tours: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1City: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Organisation: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1RoomType: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Plan: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Singles: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Doubles: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Triples: TcxGridDBBandedColumn;
    cxGridBusinessItinDBBandedTableView1Status: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExpandAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    { Public declarations }
  end;

var
  MisAccommodationForm: TMisAccommodationForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TMisAccommodationForm.FormCreate(Sender: TObject);
begin
  Width := 1050;
  Height := 690;

  cxPageControl1.ActivePage := cxTabSheetBusinessVouchers;

  AutoDateRange (Date(),1);

end;

procedure TMisAccommodationForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
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


procedure TMisAccommodationForm.cxButton4Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),-1),1);
end;

procedure TMisAccommodationForm.cxButton5Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),1),1);
end;

procedure TMisAccommodationForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TMisAccommodationForm.cxButton3Click(Sender: TObject);
begin
  if cxPageControl1.ActivePage = cxTabSheetBusinessVouchers then
    begin

      cxGridBusinessVouchersDBBandedTableView1.Bands[0].Caption :=
        'Business between ' + FormatDateTime('dd/mm/yyyy',StrToDate(cxFromDateEdit.Text)) + ' and ' +
        FormatDateTime('dd/mm/yyyy',StrToDate(cxToDateEdit.Text));

      BusVouchersSds.Close;
      BusVouchersSds.CommandText := 'EXEC p_VoucherAcc_BusinessGiven ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + ''', ' +
        '1';
      BusVouchersSds.Open;

      BusVouchersCds.Close;
      BusVouchersCds.Open;

      cxGridBusinessVouchersDBBandedTableView1.ViewData.Expand(True);
    end

  else if cxPageControl1.ActivePage = cxTabSheetBusinessItin then
    begin

      cxGridBusinessItinDBBandedTableView1.Bands[0].Caption :=
        'Business between ' + FormatDateTime('dd/mm/yyyy',StrToDate(cxFromDateEdit.Text)) + ' and ' +
        FormatDateTime('dd/mm/yyyy',StrToDate(cxToDateEdit.Text));

      BusItinSds.Close;
      BusItinSds.CommandText := 'EXEC p_VoucherAcc_BusinessGiven ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + ''', ' +
        '2';
      BusItinSds.Open;

      BusItinCds.Close;
      BusItinCds.Open;

      cxGridBusinessItinDBBandedTableView1.ViewData.Expand(True);
    end;

end;

procedure TMisAccommodationForm.SaveAsExcel1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\BusinessGiven_Vouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridBusinessVouchers, True, True, False, cxGridBusinessVouchersDBBandedTableView1);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := g_ReportDir + '\BusinessGiven_Itinerary.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridBusinessItin, True, True, False, cxGridBusinessItinDBBandedTableView1);
    end;

end;

procedure TMisAccommodationForm.Print1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridBusinessVouchers;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poPortrait;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Business (from Vouchers) between ' + cxFromDateEdit.Text + ' and ' + cxToDateEdit.Text;
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridBusinessItin;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poPortrait;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Business (from Itineraries) between ' + cxFromDateEdit.Text + ' and ' + cxToDateEdit.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TMisAccommodationForm.FormDestroy(Sender: TObject);
begin
  MisAccommodationForm := nil;
end;

procedure TMisAccommodationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMisAccommodationForm.ExpandAll1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    cxGridBusinessVouchersDBBandedTableView1.ViewData.Expand(True)
  else if cxPageControl1.ActivePageIndex = 1 then
    cxGridBusinessItinDBBandedTableView1.ViewData.Expand(True);
end;

procedure TMisAccommodationForm.CollapseAll1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    cxGridBusinessVouchersDBBandedTableView1.ViewData.Collapse(True)
  else if cxPageControl1.ActivePageIndex = 1 then
    cxGridBusinessItinDBBandedTableView1.ViewData.Collapse(True);
end;

end.
