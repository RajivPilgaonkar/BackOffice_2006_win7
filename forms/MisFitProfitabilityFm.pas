unit MisFitProfitabilityFm;

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
  dxPScxCommon, dxPScxGrid6Lnk, cxCheckBox;

type
  TMisFitProfitabilityForm = class(TForm)
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
    cxTabSheetMisFitProfitability: TcxTabSheet;
    cxGridFitProfit: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridFitProfitDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    MisFitProfitSds: TSQLDataSet;
    MisFitProfitDsp: TDataSetProvider;
    MisFitProfitCds: TClientDataSet;
    MisFitProfitDs: TDataSource;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    N1: TMenuItem;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    MisFitProfitCdsMis_id: TIntegerField;
    MisFitProfitCdsAddressook_id: TIntegerField;
    MisFitProfitCdsTourCode: TStringField;
    MisFitProfitCdsTourDepartureDate: TSQLTimeStampField;
    MisFitProfitCdsNumPax: TIntegerField;
    MisFitProfitCdsStartDate: TSQLTimeStampField;
    MisFitProfitCdsEndDate: TSQLTimeStampField;
    MisFitProfitCdsDuration: TIntegerField;
    MisFitProfitCdsCost: TFMTBCDField;
    MisFitProfitCdsRevenue: TFMTBCDField;
    MisFitProfitCdsProfit: TFMTBCDField;
    MisFitProfitCdsMargin: TFMTBCDField;
    cxGridFitProfitDBBandedTableView1Mis_id: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1Addressook_id: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1TourCode: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1TourDepartureDate: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1StartDate: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1EndDate: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1Duration: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1Revenue: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1Profit: TcxGridDBBandedColumn;
    cxGridFitProfitDBBandedTableView1Margin: TcxGridDBBandedColumn;
    MisFitProfitCdsOrganisation: TStringField;
    cxGridFitProfitDBBandedTableView1Organisation: TcxGridDBBandedColumn;
    cxTourCodesCkb: TcxCheckBox;
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
  MisFitProfitabilityForm: TMisFitProfitabilityForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TMisFitProfitabilityForm.FormCreate(Sender: TObject);
begin
  Width := 1050;
  Height := 690;

  cxPageControl1.ActivePage := cxTabSheetMisFitProfitability;

  AutoDateRange (Date(),1);

end;

procedure TMisFitProfitabilityForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
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


procedure TMisFitProfitabilityForm.cxButton4Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),-1),1);
end;

procedure TMisFitProfitabilityForm.cxButton5Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),1),1);
end;

procedure TMisFitProfitabilityForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TMisFitProfitabilityForm.cxButton3Click(Sender: TObject);
var
  x_option: integer;
begin
  if cxPageControl1.ActivePage = cxTabSheetMisFitProfitability then
    begin

      cxGridFitProfitDBBandedTableView1.Bands[0].Caption :=
        'Profitability between ' + FormatDateTime('dd/mm/yyyy',StrToDate(cxFromDateEdit.Text)) + ' and ' +
        FormatDateTime('dd/mm/yyyy',StrToDate(cxToDateEdit.Text));

      x_option := 1;
      if cxTourCodesCkb.Checked then
        x_option := 2;

      MisFitProfitSds.Close;
      MisFitProfitSds.CommandText := 'EXEC p_MIS_TourProfitability ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + ''', ' +
        IntToStr(x_option);
      MisFitProfitSds.Open;

      MisFitProfitCds.Close;
      MisFitProfitCds.Open;

      cxGridFitProfitDBBandedTableView1.ViewData.Expand(True);
    end;

end;

procedure TMisFitProfitabilityForm.SaveAsExcel1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\FIT_Profitability.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridFitProfit, True, True, False, cxGridFitProfitDBBandedTableView1);
    end;
end;

procedure TMisFitProfitabilityForm.Print1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridFitProfit;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poPortrait;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Profitability between ' + cxFromDateEdit.Text + ' and ' + cxToDateEdit.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TMisFitProfitabilityForm.FormDestroy(Sender: TObject);
begin
  MisFitProfitabilityForm := nil;
end;

procedure TMisFitProfitabilityForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMisFitProfitabilityForm.ExpandAll1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    cxGridFitProfitDBBandedTableView1.ViewData.Expand(True);
end;

procedure TMisFitProfitabilityForm.CollapseAll1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    cxGridFitProfitDBBandedTableView1.ViewData.Collapse(True);
end;

end.
