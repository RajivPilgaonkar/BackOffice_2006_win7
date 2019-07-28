unit InsListingFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, FMTBcd, DBClient,
  Provider, SqlExpr, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridDBTableView, cxGrid, ComCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxContainer, cxGroupBox, cxButtons,
  ExtCtrls, cxRadioGroup, cxCurrencyEdit, cxCalc, cxCheckBox;



type
  TInsListingForm = class(TForm)
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxFromDateEdit: TcxDateEdit;
    cxToDateEdit: TcxDateEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PageControl1: TPageControl;
    TabSheetInsListing: TTabSheet;
    cxGridInsList: TcxGrid;
    cxGridInsListDBTableView1: TcxGridDBTableView;
    cxGridInsListDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridInsListLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    InsListSds: TSQLDataSet;
    InsListDsp: TDataSetProvider;
    InsListCds: TClientDataSet;
    InsListDs: TDataSource;
    cxDivisionRadioGroup: TcxRadioGroup;
    cxDivCheckBox: TcxCheckBox;
    TabSheetPurInsListing: TTabSheet;
    cxGridPurInsListing: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridPurInsDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridPurInsLevel1: TcxGridLevel;
    InsListCdsIns_id: TIntegerField;
    InsListCdsInvNo: TIntegerField;
    InsListCdsInvDate: TSQLTimeStampField;
    InsListCdsAmount: TFMTBCDField;
    InsListCdsDiv: TStringField;
    cxGridInsListDBBandedTableView1Ins_id: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1InvNo: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1InvDate: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1Amount: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1Div: TcxGridDBBandedColumn;
    PurInsListSds: TSQLDataSet;
    PurInsListDsp: TDataSetProvider;
    PurInsListCds: TClientDataSet;
    PurInsListDs: TDataSource;
    PurInsListCdsIns_id: TIntegerField;
    PurInsListCdsInvNo: TStringField;
    PurInsListCdsInvDate: TSQLTimeStampField;
    PurInsListCdsGrnDate: TSQLTimeStampField;
    PurInsListCdsAmount: TFMTBCDField;
    PurInsListCdsCustomDuty: TFMTBCDField;
    PurInsListCdsDiv: TStringField;
    cxGridPurInsDBBandedTableView1Ins_id: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1InvNo: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1InvDate: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1GrnDate: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1Amount: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1CustomDuty: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1Div: TcxGridDBBandedColumn;
    InsListCdsInvType: TStringField;
    InsListCdsInsTerm: TStringField;
    InsListCdsAccount: TStringField;
    cxGridInsListDBBandedTableView1InvType: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1InsTerm: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1Account: TcxGridDBBandedColumn;
    PurInsListCdsGrnNo: TIntegerField;
    PurInsListCdsGrnType: TStringField;
    PurInsListCdsInsType: TStringField;
    PurInsListCdsAccount: TStringField;
    PurInsListCdsAccounts_id: TIntegerField;
    PurInsListCdsPackFwdAmt: TFMTBCDField;
    PurInsListCdsFreightAmt: TFMTBCDField;
    PurInsListCdsCustomClrAmt: TFMTBCDField;
    PurInsListCdsImportDutyAmt: TFMTBCDField;
    PurInsListCdsFreightFwdAmt: TFMTBCDField;
    cxGridPurInsDBBandedTableView1GrnNo: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1GrnType: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1InsType: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1PackFwdAmt: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1FreightAmt: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1CustomClrAmt: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1ImportDutyAmt: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1FreightFwdAmt: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1Account: TcxGridDBBandedColumn;
    TabSheetVendorListing: TTabSheet;
    VendorSds: TSQLDataSet;
    VendorDsp: TDataSetProvider;
    VendorCds: TClientDataSet;
    VendorDs: TDataSource;
    VendorCdsSuplNo: TStringField;
    VendorCdsSuplName: TStringField;
    VendorCdsInsType: TStringField;
    cxGridVendorList: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridVendorListDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridVendorLevel1: TcxGridLevel;
    cxGridVendorListDBBandedTableView1SuplNo: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1SuplName: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1InsType: TcxGridDBBandedColumn;
    TabSheetCustomerListing: TTabSheet;
    CustomerSds: TSQLDataSet;
    CustomerDsp: TDataSetProvider;
    CustomerCds: TClientDataSet;
    CustomerDs: TDataSource;
    cxGridCustomerList: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridCustomerListDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridCustomerLevel1: TcxGridLevel;
    CustomerCdsCustCode: TStringField;
    CustomerCdsClientName: TStringField;
    CustomerCdsInvToLocName: TStringField;
    CustomerCdsInsTerm: TStringField;
    cxGridCustomerListDBBandedTableView1CustCode: TcxGridDBBandedColumn;
    cxGridCustomerListDBBandedTableView1ClientName: TcxGridDBBandedColumn;
    cxGridCustomerListDBBandedTableView1InvToLocName: TcxGridDBBandedColumn;
    cxGridCustomerListDBBandedTableView1InsTerm: TcxGridDBBandedColumn;
    InsListCdsRecType: TIntegerField;
    InsListCdsRemarks: TStringField;
    cxGridInsListDBBandedTableView1RecType: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1PoNo: TcxGridDBBandedColumn;
    PurInsListCdsPoNo: TStringField;
    PurInsListCdsPoYrRef: TIntegerField;
    PurInsListCdsSuplCode: TStringField;
    cxGridPurInsDBBandedTableView1PoYrRef: TcxGridDBBandedColumn;
    cxGridPurInsDBBandedTableView1SuplCode: TcxGridDBBandedColumn;
    InsListCdsModeOfDispatch: TStringField;
    PurInsListCdsModeOfDispatch: TStringField;
    cxGridPurInsDBBandedTableView1ModeOfDispatch: TcxGridDBBandedColumn;
    cxGridInsListDBBandedTableView1ModeOfDispatch: TcxGridDBBandedColumn;
    VendorCdsAddress: TStringField;
    VendorCdsEnterpriseType: TStringField;
    VendorCdsTinNo: TStringField;
    VendorCdsCstNo: TStringField;
    VendorCdsPanNo: TStringField;
    VendorCdsServTaxNo: TStringField;
    VendorCdsExciseRegNo: TStringField;
    cxGridVendorListDBBandedTableView1Address: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1EnterpriseType: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1TinNo: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1CstNo: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1PanNo: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1ServTaxNo: TcxGridDBBandedColumn;
    cxGridVendorListDBBandedTableView1ExciseRegNo: TcxGridDBBandedColumn;
    InsListCdsPlace: TStringField;
    cxGridInsListDBBandedTableView1Place: TcxGridDBBandedColumn;
    PurInsListCdsPlace: TStringField;
    cxGridPurInsDBBandedTableView1Place: TcxGridDBBandedColumn;
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure cxGridInsListDBBandedTableView1CustomDrawFooterCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InsListingForm: TInsListingForm;

implementation

uses MisDM, FunctionUt, GrnCancelledFm, RegisterColumnFm;

{$R *.dfm}

procedure TInsListingForm.SaveAsExcel1Click(Sender: TObject);
begin

  if PageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := 'C:\InsuranceSaleListing.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW (SaveDialog.FileName, cxGridInsList, True, True, False, cxGridInsListDBBandedTableView1);
    end
  else if PageControl1.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := 'C:\InsurancePurchaseListing.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW (SaveDialog.FileName, cxGridPurInsListing, True, True, False, cxGridPurInsDBBandedTableView1);
    end
  else if PageControl1.ActivePageIndex = 2 then
    begin
      SaveDialog.FileName := 'C:\VendorListing.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW (SaveDialog.FileName, cxGridVendorList, True, True, False, cxGridVendorListDBBandedTableView1);
    end
  else if PageControl1.ActivePageIndex = 3 then
    begin
      SaveDialog.FileName := 'C:\CustomerListing.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW (SaveDialog.FileName, cxGridCustomerList, True, True, False, cxGridCustomerListDBBandedTableView1);
    end;

end;

procedure TInsListingForm.Print1Click(Sender: TObject);
begin

  if PageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridInsList;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Sales Invoice Listing (for Insurance) between ' + cxFromDateEdit.Text + ' and ' + cxToDateEdit.Text;
    end
  else if PageControl1.ActivePageIndex = 1 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridPurInsListing;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Purchase Invoice Listing (for Insurance) between ' + cxFromDateEdit.Text + ' and ' + cxToDateEdit.Text;
    end
  else if PageControl1.ActivePageIndex = 2 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridVendorList;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Vendor Listing (for Insurance)';
    end
  else if PageControl1.ActivePageIndex = 3 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridCustomerList;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Customer Listing (for Insurance)';
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TInsListingForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TInsListingForm.cxButton3Click(Sender: TObject);
var
  x_Divisions_id : integer;
begin

  x_Divisions_id := cxDivisionRadioGroup.ItemIndex + 1;

  if cxDivCheckBox.Checked then
    x_Divisions_id := 0;

  if PageControl1.ActivePage = TabSheetInsListing then
    begin
      InsListSds.Close;
      InsListSds.CommandText := 'EXEC p_Insurance ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + ''', ' +
        IntToStr(x_Divisions_id) + ', 1, 1';
      InsListSds.Open;

      InsListCds.Close;
      InsListCds.Open;

    end
  else if PageControl1.ActivePage = TabSheetPurInsListing then
    begin
      PurInsListSds.Close;
      PurInsListSds.CommandText := 'EXEC p_Insurance ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDateEdit.Text)) + ''', ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(cxToDateEdit.Text)) + ''', ' +
        IntToStr(x_Divisions_id) + ', 2, 1';
      PurInsListSds.Open;

      PurInsListCds.Close;
      PurInsListCds.Open;

    end
  else if PageControl1.ActivePage = TabSheetVendorListing then
    begin
      VendorSds.Close;
      VendorSds.CommandText := 'EXEC p_Insurance null, null, 0, 3, 1';
      VendorSds.Open;

      VendorCds.Close;
      VendorCds.Open;

    end
  else if PageControl1.ActivePage = TabSheetCustomerListing then
    begin
      CustomerSds.Close;
      CustomerSds.CommandText := 'EXEC p_Insurance null, null, 0, 4, 1';
      CustomerSds.Open;

      CustomerCds.Close;
      CustomerCds.Open;

    end;

end;

procedure TInsListingForm.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheetInsListing;

  AutoDateRange (Date(),1);
end;

procedure TInsListingForm.FormDestroy(Sender: TObject);
begin
  InsListingForm:=nil;
end;

procedure TInsListingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TInsListingForm.cxButton4Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),-1),1);
end;

procedure TInsListingForm.cxButton5Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),1),1);
end;

procedure TInsListingForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
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

procedure TInsListingForm.cxGridInsListDBBandedTableView1CustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var
  ASummary: TcxDataSummary;
  AFooterSummaryItems: TcxDataFooterSummaryItems;
  AVarType: Integer;
  AText: string;
  ALevel, ADataGroupIndex: Integer;
  AGridRecord, AGroupRecord: TcxCustomGridRecord;
begin

{
  if (TcxGridDBColumn(AViewInfo.Column).DataBinding.FieldName = 'InvNo') then
    AViewInfo.Text := 'Grand Total';

  if AViewInfo is TcxGridRowFooterCellViewInfo and   // Row footer
     (TcxGridDBColumn(AViewInfo.Column).DataBinding.FieldName = 'InvNo') then
    begin
      AGridRecord := TcxGridRowFooterCellViewInfo(AViewInfo).GridRecord;
      ALevel := TcxGridRowFooterCellViewInfo(AViewInfo).Container.GroupLevel;
      ADataGroupIndex := Sender.DataController.Groups.DataGroupIndexByRowIndex[AGridRecord.Index];
      if ADataGroupIndex <> -1 then
      begin
        AGroupRecord := AGridRecord;
        while AGroupRecord.Level <> ALevel do
          AGroupRecord := AGroupRecord.ParentRecord;
        AViewInfo.Text := 'Sub Total for ' + AGroupRecord.DisplayTexts[0];
      end;
    end;
}

end;

end.


