unit HotelPriceListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBClient, Provider, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, scExcelExport, cxLabel, DateUtils,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ShlObj,
  cxGroupBox, ExtCtrls;

type
  THotelPriceListForm = class(TForm)
    cxGridStateDBTableView1: TcxGridDBTableView;
    cxGridStateLevel1: TcxGridLevel;
    cxGridState: TcxGrid;
    StateSds: TSQLDataSet;
    StateDsp: TDataSetProvider;
    StateCds: TClientDataSet;
    StateDs: TDataSource;
    StateCdsStates_id: TIntegerField;
    StateCdsState: TStringField;
    StateCdsSelected: TBooleanField;
    cxGridStateDBTableView1States_id: TcxGridDBColumn;
    cxGridStateDBTableView1State: TcxGridDBColumn;
    cxGridStateDBTableView1Selected: TcxGridDBColumn;
    cxGridCat: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    CatSds: TSQLDataSet;
    CatDsp: TDataSetProvider;
    CatCds: TClientDataSet;
    CatDS: TDataSource;
    CatCdsCategories_id: TIntegerField;
    CatCdsDescription: TStringField;
    CatCdsSelected: TBooleanField;
    cxGridDBTableView1Categories_id: TcxGridDBColumn;
    cxGridDBTableView1Description: TcxGridDBColumn;
    cxGridDBTableView1Selected: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Statewise1: TMenuItem;
    Citywise1: TMenuItem;
    scExcelExport: TscExcelExport;
    N1: TMenuItem;
    ItereoExcelReport1: TMenuItem;
    N2: TMenuItem;
    CostBreakup1: TMenuItem;
    Cost1to101: TMenuItem;
    CostBreakupwithoutMargin1: TMenuItem;
    Panel1: TPanel;
    CloseBtn: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxMealPlanLcmb: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxCurrencyLcmb: TcxLookupComboBox;
    cxMarginCkb: TcxCheckBox;
    cxServiceTaxCkb: TcxCheckBox;
    cxRankCkb: TcxCheckBox;
    cxOneToTenCkb: TcxCheckBox;
    cxVoucherCkb: TcxCheckBox;
    cxDetailsCkb: TcxCheckBox;
    ExchRateLabel: TLabel;
    cxStatewiseCkb: TcxCheckBox;
    cxIndiaCkb: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Statewise1Click(Sender: TObject);
    procedure Citywise1Click(Sender: TObject);
    procedure PrintReport(x_option: integer);
    procedure PrintReportToExcel (GpSds: TSQLDataSet);
    procedure PrintNextState(x_State: string; var x_row: integer);
    procedure PrintNextCity(x_City: string; var x_row: integer);
    procedure PrintNextHotel(x_Hotel: string; x_Rank: integer; var x_row: integer; x_option: integer; x_category: string; x_optionCat: integer);
    procedure PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
    procedure CloseBtnClick(Sender: TObject);
    function GetCurrencyCode(x_Currencies_id: integer): string;
    procedure cxOneToTenCkbClick(Sender: TObject);
    procedure cxDetailsCkbClick(Sender: TObject);
    procedure ItereoExcelReport1Click(Sender: TObject);
    function GetDesktopPath(Sender: TObject): string;
    procedure CostBreakup1Click(Sender: TObject);
    procedure cxCurrencyLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure CostBreakupwithoutMargin1Click(Sender: TObject);
    procedure Cost1to101Click(Sender: TObject);
  private
    { Private declarations }
    function GetStateStr: string;
    function GetCategoryStr: string;
    procedure HotelPriceList(x_option: integer);
  public
    { Public declarations }
  end;

var
  HotelPriceListForm: THotelPriceListForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm, GST_HotelPriceList_ExcelReportsUt;

{$R *.dfm}

procedure THotelPriceListForm.FormCreate(Sender: TObject);
begin

  ExchRateLabel.Caption := '';

  Height := 600;
  Width := 1010;

  cxFromDateEdit.Date := StrToDate('01/10/' + IntToStr(YearOf(Date)));

  StateCds.Active := False;
  StateCds.Active := True;

  CatCds.Active := False;
  CatCds.Active := True;

  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.MealPlanCds.Open;

  cxCurrencyLcmb.EditValue := GetDefaultCurrency;
  cxMealPlanLcmb.EditValue := 2;

end;

procedure THotelPriceListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THotelPriceListForm.FormDestroy(Sender: TObject);
begin
  HotelPriceListForm := nil;
end;

procedure THotelPriceListForm.Statewise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(1);
  except
  end;
end;

procedure THotelPriceListForm.Citywise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(2);
  except
  end;

end;

procedure THotelPriceListForm.PrintReport(x_option: integer);
var
  x_StateStr, x_CatStr, x_Margin, x_OptionVoucher, x_ServiceTax, x_Ranked: string;
  GpSds: TSQLDataSet;
begin

  StateCds.First;

  while not StateCds.Eof do
    begin
      if StateCds['Selected'] = true then
        begin
          if x_StateStr > '' then
            x_StateStr := x_StateStr + ',';

          x_StateStr := x_StateStr + IntToStr(StateCds['States_id']);

        end;
      StateCds.Next;
    end;

  StateCds.First;


  CatCds.First;

  while not CatCds.Eof do
    begin
      if CatCds['Selected'] = true then
        begin
          if x_CatStr > '' then
            x_CatStr := x_CatStr + ',';

          x_CatStr := x_CatStr + IntToStr(CatCds['Categories_id']);

        end;
      CatCds.Next;
    end;

  CatCds.First;

  if x_StateStr > '' then
    x_StateStr := '(' + x_StateStr + ')';

  if x_CatStr > '' then
    x_CatStr := '(' + x_CatStr + ')';

  x_Margin := '0';
  if cxMarginCkb.Checked then
    x_Margin := '1';

  x_OptionVoucher := '0';
  if cxVoucherCkb.Checked then
    x_OptionVoucher := '1';

  if cxCurrencyLcmb.EditValue = null then
    cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  x_Ranked := '0';
  if cxRankCkb.Checked then
    x_Ranked := '1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := ' EXEC p_HotelPriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',''' + x_CatStr + ''',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' + x_Margin + ',' +
    IntToStr(cxMealPlanLcmb.EditValue) + ',' + x_OptionVoucher + ',0, null,' + x_ServiceTax + ',' + x_Ranked;
  GpSds.Open;

  PrintReportToExcel(GpSds);

  GpSds.Free;

end;

procedure THotelPriceListForm.PrintReportToExcel (GpSds: TSQLDataSet);
var
  x_PrevState, x_PrevCity, x_PrevHotel, x_PrevCategory, x_CurrencyCode, x_Category, x_FileName: string;
  x_row, x_option, x_optionCat, x_Rank: integer;
  x_NewCity: boolean;
begin

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.WorksheetName:='Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;


  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B1','B1'].ColumnWidth := 17;
      Range['C1','C1'].ColumnWidth := 17;
      Range['D1','D1'].ColumnWidth := 8;

      Range['E1','E1'].ColumnWidth := 26;
      Range['F1','F1'].ColumnWidth := 12;
      Range['G1','G1'].ColumnWidth := 12;
      Range['H1','H1'].ColumnWidth := 4;
      Range['I1','I1'].ColumnWidth := 15;
      Range['J1','J1'].ColumnWidth := 8;

      Range['A3','A3'].Value := 'From ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A3','A3'].Font.FontStyle := 'Bold';
      Range['A3','A3'].Font.Size := '10';

      Range['C5','M5'].Font.FontStyle := 'Bold';
      Range['C5','M5'].Font.Size := '10';

      Range['P5','BJ5'].Font.FontStyle := 'Bold';
      Range['P5','BJ5'].Font.Size := '10';


      Range['C5','C5'].Value := 'Category';
      Range['D5','D5'].Value := 'Ranking';
      Range['E5','E5'].Value := 'Hotel';

      Range['F5','F5'].Value := 'From Date';
      Range['G5','G5'].Value := 'To Date';
      Range['H5','H5'].Value := 'AC';
      Range['I5','I5'].Value := 'Room Type';
      Range['J5','J5'].Value := 'Meal Plan';
      Range['K5','K5'].Value := 'Single';
      Range['L5','L5'].Value := 'Double';
      Range['M5','M5'].Value := 'Triple';

      if cxDetailsCkb.Checked then
        begin
          Range['P5','P5'].Value := 'Single';
          Range['Q6','Q6'].Value := 'TAC';
          Range['R6','R6'].Value := 'GST (%)';
          Range['S6','S6'].Value := 'GST';
          Range['T6','T6'].Value := 'SC';

          Range['U5','U5'].Value := 'Double';
          Range['V6','V6'].Value := 'TAC';
          Range['W6','W6'].Value := 'GST (%)';
          Range['X6','X6'].Value := 'GST';
          Range['Y6','Y6'].Value := 'SC';

          Range['Z5','Z5'].Value := 'Triple';
          Range['AA6','AA6'].Value := 'TAC';
          Range['AB6','AB6'].Value := 'GST (%)';
          Range['AC6','AC6'].Value := 'GST';
          Range['AD6','AD6'].Value := 'SC';
          Range['AE5','AE5'].Value := 'Nett';

          Range['AF5','AF5'].Value := 'Meal Cost';
          Range['AG6','AG6'].Value := 'TAC';
          Range['AH6','AH6'].Value := 'GST';
          Range['AI6','AI6'].Value := 'SC';

          Range['AJ5','AJ5'].Value := 'Extra Meals (Extra Bed)';
          Range['AK6','AK6'].Value := 'TAC';
          Range['AL6','AL6'].Value := 'GST';
          Range['AM6','AM6'].Value := 'SC';

          Range['AN5','AN5'].Value := 'Agent Commission';
          Range['AN6','AN6'].Value := 'Single';
          Range['AO6','AO6'].Value := 'Double';
          Range['AP6','AP6'].Value := 'Triple';


          Range['AQ5','AQ5'].Value := 'Total (Rs.)';
          Range['AQ6','AQ6'].Value := 'Single';
          Range['AR6','AR6'].Value := 'Double';
          Range['AS6','AS6'].Value := 'Triple';

          Range['AT5','AT5'].Value := 'Margin (%)';
          Range['AT6','AT6'].Value := 'Single';
          Range['AU6','AU6'].Value := 'Double';
          Range['AV6','AV6'].Value := 'Triple';

          Range['AW5','AW5'].Value := 'Quote (Rs.)';
          Range['AW6','AW6'].Value := 'Single';
          Range['AX6','AX6'].Value := 'Double';
          Range['AY6','AY6'].Value := 'Triple';

          if cxServiceTaxCkb.Checked then
            begin
              Range['AZ5','AZ5'].Value := 'Tour GST (%)';
              Range['BA5','BA5'].Value := 'Quote with GST (Rs.)';

              Range['BA6','BA6'].Value := 'Single';
              Range['BB6','BB6'].Value := 'Double';
              Range['BC6','BC6'].Value := 'Triple';
            end;

        end
      else if cxOneToTenCkb.Checked then
        begin
          Range['P6','P6'].Value := '1';
          Range['Q6','Q6'].Value := '2';
          Range['R6','R6'].Value := '3';
          Range['S6','S6'].Value := '4';
          Range['T6','T6'].Value := '5';
          Range['U6','U6'].Value := '6';
          Range['V6','V6'].Value := '7';
          Range['W6','W6'].Value := '8';
          Range['X6','X6'].Value := '9';
          Range['Y6','Y6'].Value := '10';
        end;

      if cxVoucherCkb.Checked then
        begin
          Range['BD5','BD5'].Value := 'Voucher';
          Range['BD6','BD6'].Value := 'Single';
          Range['BE6','BE6'].Value := 'Double';
          Range['BF6','BF6'].Value := 'Triple';
        end;


      if cxCurrencyLcmb.EditValue = null then
        cxCurrencyLcmb.EditValue := GetDefaultCurrency;

      x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

      Range['K6','K6'].Value := x_CurrencyCode;
      Range['L6','L6'].Value := x_CurrencyCode;
      Range['M6','M6'].Value := x_CurrencyCode;

      if (x_CurrencyCode <> 'INR') then
        begin
          Range['BH5','BH5'].Value := 'Quote with GST (' + x_CurrencyCode + ')';
          Range['BH6','BH6'].Value := 'Single';
          Range['BI6','BI6'].Value := 'Double';
          Range['BJ6','BJ6'].Value := 'Triple';
        end;

    end;

  x_PrevState := '--';
  x_PrevCity := '--';
  x_PrevHotel := '--';
  x_PrevCategory := '--';
  x_row := 4;

  GpSds.First;

  while not GpSds.Eof do
    begin

      // State
      if (not GpSds.EOF) and (GpSds['State'] <> x_PrevState) then
        begin
          PrintNextState(GpSds['State'], x_row);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevState := GpSds['State'];
        end;


      // City
      x_NewCity := false;
      if (not GpSds.EOF) and (GpSds['City'] <> x_PrevCity) then
        begin
          PrintNextCity(GpSds['City'], x_row);
          x_NewCity := True;
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevCity := GpSds['City'];
        end;

      // Hotel
      if (not GpSds.EOF) and (GpSds['Hotel'] <> x_PrevHotel) then
        begin
          x_option := 1;
          if x_NewCity then
            x_option := 2;

          x_category := '';
          if (GpSds['Category'] <> null) then
            x_Category := GpSds['Category'];

          x_optionCat := 1;
          if (x_NewCity) or (x_Category <> x_PrevCategory) then
            x_optionCat := 2;

          x_Rank := 0;
          if GpSds['Ranking'] <> null then
            x_Rank := GpSds['Ranking'];

          PrintNextHotel(GpSds['Hotel'], x_Rank, x_row, x_option, x_Category, x_optionCat);
          PrintRecord(GpSds, x_row, 1);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRecord(GpSds, x_row, 2);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevHotel := GpSds['Hotel'];
          x_PrevCategory := x_Category;
        end;

      GpSds.Next;

    end;

  x_FileName := g_ReportDir + '\HotelRates.xls';
  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

function THotelPriceListForm.GetCurrencyCode(x_Currencies_id: integer): string;
var
  x_CurrencyCode: string;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT CurrencyCode FROM Currencies WHERE Currencies_id = ' + IntToStr(x_Currencies_id);
  GpSds.Open;

  x_CurrencyCode := '';
  if (not GpSds.EOF) and (GpSds['CurrencyCode'] <> null) then
    x_CurrencyCode := GpSds['CurrencyCode'];

  GpSds.Free;

  Result := x_CurrencyCode;

end;


procedure THotelPriceListForm.PrintNextState(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure THotelPriceListForm.PrintNextCity(x_City: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_City;
    end;

end;


procedure THotelPriceListForm.PrintNextHotel(x_Hotel: string; x_Rank: integer; var x_row: integer; x_option: integer; x_Category: string; x_optionCat: integer);
begin

  if x_option = 1 then
    x_row := x_row + 2;

  if x_optionCat = 2 then
    begin
      with scExcelExport.ExcelWorkSheet do
        begin
          Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
          Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.Size := '8';
          Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_Category;
        end;
    end;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := x_Hotel;
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := x_Rank;
    end;

end;


procedure THotelPriceListForm.PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
begin

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'M'+IntToStr(x_row)].Font.Size := '8';
      Range['P'+IntToStr(x_row),'BG'+IntToStr(x_row)].Font.Size := '8';

      Range['J'+IntToStr(x_row),'M'+IntToStr(x_row)].NumberFormat := '#,##0';
      Range['P'+IntToStr(x_row),'BJ'+IntToStr(x_row)].NumberFormat := '#,##0';

      Range['BJ1','BJ1'].EntireColumn.Hidden := True;

      if GpSds['Old'] = true then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := '*';

      if GpSds['FromDate'] <> null then
        Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['FromDate']);

      if GpSds['ToDate'] <> null then
        Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['ToDate']);

      if GpSds['AC'] <> null then
        Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['AC'];

      if GpSds['RoomType'] <> null then
        Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['RoomType'];

      if GpSds['HotelMealPlan'] <> null then
        Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['HotelMealPlan'];

      if cxCurrencyLcmb.EditValue = GetDefaultCurrency then
        begin

          if GpSds['SingleTotalRs_ST'] <> null then
            Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['SingleTotalRs_ST'];

          if GpSds['DoubleTotalRs_ST'] <> null then
            Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := GpSds['DoubleTotalRs_ST'];

          if (GpSds['TripleTotalRs_ST'] <> null) and (GpSds['TripleTotalRs_ST'] > 0.0) then
            Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := GpSds['TripleTotalRs_ST'];

        end
      else
        begin

          if GpSds['SingleTotalCurr'] <> null then
            Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['SingleTotalCurr'];

          if GpSds['DoubleTotalCurr'] <> null then
            Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := GpSds['DoubleTotalCurr'];

          if (GpSds['TripleTotalCurr'] <> null) and (GpSds['TripleTotalCurr'] > 0.0) then
            Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := GpSds['TripleTotalCurr'];

        end;

      if cxDetailsCkb.Checked then
        begin

          if (GpSds['SingleRoom'] <> null) and (GpSds['SingleRoom'] <> 0.0) then
            Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := GpSds['SingleRoom'];

          if (GpSds['TacSingle'] <> null) and (GpSds['SingleRoom'] <> 0.0) and (GpSds['TacSingle'] <> 0.0) then
            Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := GpSds['TacSingle'];

          if (GpSds['GstPercSingle'] <> null) and (GpSds['SingleRoom'] <> 0.0) and (GpSds['GstPercSingle'] <> 0.0) then
            Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := GpSds['GstPercSingle'];

          if (GpSds['GstSingle'] <> null) and (GpSds['SingleRoom'] <> 0.0) and (GpSds['GstSingle'] <> 0.0) then
            Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := GpSds['GstSingle'];

          if (GpSds['ServiceChargesSingle'] <> null) and (GpSds['SingleRoom'] <> 0.0) and (GpSds['ServiceChargesSingle'] <> 0.0) then
            Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value := GpSds['ServiceChargesSingle'];

          if (GpSds['DoubleRoom'] <> null) and (GpSds['DoubleRoom'] <> 0.0) then
            Range['U'+IntToStr(x_row),'U'+IntToStr(x_row)].Value := GpSds['DoubleRoom'];

          if (GpSds['TacDouble'] <> null) and (GpSds['DoubleRoom'] <> 0.0) and (GpSds['TacDouble'] <> 0.0) then
            Range['V'+IntToStr(x_row),'V'+IntToStr(x_row)].Value := GpSds['TacDouble'];

          if (GpSds['GstPercDouble'] <> null) and (GpSds['DoubleRoom'] <> 0.0) and (GpSds['GstPercDouble'] <> 0.0) then
            Range['W'+IntToStr(x_row),'W'+IntToStr(x_row)].Value := GpSds['GstPercDouble'];

          if (GpSds['GstDouble'] <> null) and (GpSds['DoubleRoom'] <> 0.0) and (GpSds['GstDouble'] <> 0.0) then
            Range['X'+IntToStr(x_row),'X'+IntToStr(x_row)].Value := GpSds['GstDouble'];

          if (GpSds['ServiceChargesDouble'] <> null) and (GpSds['DoubleRoom'] <> 0.0) and (GpSds['ServiceChargesDouble'] <> 0.0)  then
            Range['Y'+IntToStr(x_row),'Y'+IntToStr(x_row)].Value := GpSds['ServiceChargesDouble'];

          if (GpSds['TripleRoom'] <> null) and (GpSds['TripleRoom'] > 0.0) then
            Range['Z'+IntToStr(x_row),'Z'+IntToStr(x_row)].Value := GpSds['TripleRoom'];

          if (GpSds['TacTriple'] <> null) and (GpSds['TripleRoom'] > 0.0) and (GpSds['TacTriple'] <> 0.0) then
            Range['AA'+IntToStr(x_row),'AA'+IntToStr(x_row)].Value := GpSds['TacTriple'];

          if (GpSds['GstPercTriple'] <> null) and (GpSds['TripleRoom'] > 0.0) and (GpSds['GstPercTriple'] <> 0.0) then
            Range['AB'+IntToStr(x_row),'AB'+IntToStr(x_row)].Value := GpSds['GstPercTriple'];

          if (GpSds['GstTriple'] <> null) and (GpSds['TripleRoom'] > 0.0) and (GpSds['GstTriple'] <> 0.0) then
            Range['AC'+IntToStr(x_row),'AC'+IntToStr(x_row)].Value := GpSds['GstTriple'];

          if (GpSds['ServiceChargesTriple'] <> null) and (GpSds['TripleRoom'] > 0.0) and (GpSds['ServiceChargesTriple'] <> 0.0) then
            Range['AD'+IntToStr(x_row),'AD'+IntToStr(x_row)].Value := GpSds['ServiceChargesTriple'];

          if GpSds['Nett'] = true then
            Range['AE'+IntToStr(x_row),'AE'+IntToStr(x_row)].Value := 'Yes'
          else
            Range['AE'+IntToStr(x_row),'AE'+IntToStr(x_row)].Value := 'No';

          if (GpSds['MealCost'] <> null) and (GpSds['MealCost'] <> 0.0) then
            Range['AF'+IntToStr(x_row),'AF'+IntToStr(x_row)].Value := GpSds['MealCost'];

          if (GpSds['TacMealPlan'] <> null) and (GpSds['MealCost'] <> 0.0) and (GpSds['TacMealPlan'] <> 0.0) then
            Range['AG'+IntToStr(x_row),'AG'+IntToStr(x_row)].Value := GpSds['TacMealPlan'];

          if (GpSds['SalesTax'] <> null) and (GpSds['MealCost'] <> 0.0) and (GpSds['SalesTax'] <> 0.0) then
            Range['AH'+IntToStr(x_row),'AH'+IntToStr(x_row)].Value := GpSds['SalesTax'];

          if (GpSds['ServiceChargesMealPlan'] <> null) and (GpSds['MealCost'] <> 0.0) and (GpSds['ServiceChargesMealPlan'] <> 0.0) then
            Range['AI'+IntToStr(x_row),'AI'+IntToStr(x_row)].Value := GpSds['ServiceChargesMealPlan'];

          if (GpSds['ExtraMealCost'] <> null) and (GpSds['ExtraMealCost'] > 0.0) then
            Range['AJ'+IntToStr(x_row),'AJ'+IntToStr(x_row)].Value := GpSds['ExtraMealCost'];

          if (GpSds['ExtraTacMealPlan'] <> null) and (GpSds['ExtraMealCost'] > 0.0) and (GpSds['ExtraTacMealPlan'] <> 0.0) then
            Range['AK'+IntToStr(x_row),'AK'+IntToStr(x_row)].Value := GpSds['ExtraTacMealPlan'];

          if (GpSds['ExtraSalesTax'] <> null) and (GpSds['ExtraMealCost'] > 0.0) and (GpSds['ExtraSalesTax'] <> 0.0) then
            Range['AL'+IntToStr(x_row),'AL'+IntToStr(x_row)].Value := GpSds['ExtraSalesTax'];

          if (GpSds['ExtraServiceChargesMealPlan'] <> null) and (GpSds['ExtraMealCost'] > 0.0) and (GpSds['ExtraServiceChargesMealPlan'] <> 0.0) then
            Range['AM'+IntToStr(x_row),'AM'+IntToStr(x_row)].Value := GpSds['ExtraServiceChargesMealPlan'];

          if (GpSds['AgentCommSingle'] <> null) and (GpSds['AgentCommSingle'] <> 0.0) then
            Range['AN'+IntToStr(x_row),'AN'+IntToStr(x_row)].Value := GpSds['AgentCommSingle'];

          if (GpSds['AgentCommDouble'] <> null) and (GpSds['AgentCommDouble'] <> 0.0) then
            Range['AO'+IntToStr(x_row),'AO'+IntToStr(x_row)].Value := GpSds['AgentCommDouble'];

          if (GpSds['AgentCommTriple'] <> null) and (GpSds['AgentCommTriple'] <> 0.0) then
            Range['AP'+IntToStr(x_row),'AP'+IntToStr(x_row)].Value := GpSds['AgentCommTriple'];

          if (GpSds['SingleTotalRs'] <> null) and (GpSds['SingleTotalRs'] <> 0.0) then
            Range['AQ'+IntToStr(x_row),'AQ'+IntToStr(x_row)].Value := '=P'+ IntToStr(x_row) +
              '-Q' + IntToStr(x_row) + '+S' + IntToStr(x_row) +
              '+T' + IntToStr(x_row) + '+AF' + IntToStr(x_row) + '-AG' + IntToStr(x_row) +
              '+AH' + IntToStr(x_row) + '+AI' + IntToStr(x_row) + '+AN' + IntToStr(x_row);

          if (GpSds['DoubleTotalRs_ST'] <> null) and (GpSds['DoubleTotalRs_ST'] <> 0.0) then
            Range['AR'+IntToStr(x_row),'AR'+IntToStr(x_row)].Value := '=U'+ IntToStr(x_row) +
              '-V' + IntToStr(x_row) + '+X' + IntToStr(x_row) +
              '+Y' + IntToStr(x_row)+ '+ 2*(AF' + IntToStr(x_row) + '-AG' + IntToStr(x_row) +
              '+AH' + IntToStr(x_row) + '+AI' + IntToStr(x_row) + ') '  + '+AO' + IntToStr(x_row);

          if (GpSds['TripleTotalRs_ST'] <> null) and (GpSds['TripleTotalRs_ST'] <> 0.0) then
            Range['AS'+IntToStr(x_row),'AS'+IntToStr(x_row)].Value := '=Z'+ IntToStr(x_row) +
              '-AA' + IntToStr(x_row) + '+AC' + IntToStr(x_row) +
              '+AD' + IntToStr(x_row)+ '+ 2*(AF' + IntToStr(x_row) + '-AG' + IntToStr(x_row) +
              '+AH' + IntToStr(x_row) + '+AI' + IntToStr(x_row) + ') + ' +
              '(AJ' + IntToStr(x_row) + '-AK' + IntToStr(x_row) + '+AL' + IntToStr(x_row) +
              '+AM' + IntToStr(x_row) + ')'  + '+AP' + IntToStr(x_row);

          if GpSds['MarginSingle'] <> null then
            Range['AT'+IntToStr(x_row),'AT'+IntToStr(x_row)].Value := GpSds['MarginSingle'];

          if GpSds['MarginDouble'] <> null then
            Range['AU'+IntToStr(x_row),'AU'+IntToStr(x_row)].Value := GpSds['MarginDouble'];

          if GpSds['MarginTriple'] <> null then
            Range['AV'+IntToStr(x_row),'AV'+IntToStr(x_row)].Value := GpSds['MarginTriple'];

          if (GpSds['SingleTotalRs'] <> null) and (GpSds['SingleTotalRs'] <> 0.0) then
            Range['AW'+IntToStr(x_row),'AW'+IntToStr(x_row)].Value := GpSds['SingleTotalRs'];

          if (GpSds['DoubleTotalRs'] <> null) and (GpSds['DoubleTotalRs'] <> 0.0) then
            Range['AX'+IntToStr(x_row),'AX'+IntToStr(x_row)].Value := GpSds['DoubleTotalRs'];

          if (GpSds['TripleTotalRs'] <> null) and (GpSds['TripleTotalRs'] <> 0.0) then
            Range['AY'+IntToStr(x_row),'AY'+IntToStr(x_row)].Value := GpSds['TripleTotalRs'];

          if cxServiceTaxCkb.Checked then
            begin

              if (GpSds['ServiceTaxPerc'] <> null) and (GpSds['ServiceTaxPerc'] <> 0.0) then
                Range['AZ'+IntToStr(x_row),'AZ'+IntToStr(x_row)].Value := GpSds['ServiceTaxPerc'];

              if (GpSds['SingleTotalRs_ST'] <> null) and (GpSds['SingleTotalRs_ST'] <> 0.0) then
                Range['BA'+IntToStr(x_row),'BA'+IntToStr(x_row)].Value := GpSds['SingleTotalRs_ST'];

              if (GpSds['DoubleTotalRs_ST'] <> null) and (GpSds['DoubleTotalRs_ST'] <> 0.0) then
                Range['BB'+IntToStr(x_row),'BB'+IntToStr(x_row)].Value := GpSds['DoubleTotalRs_ST'];

              if (GpSds['TripleTotalRs_ST'] <> null) and (GpSds['TripleTotalRs_ST'] <> 0.0) then
                Range['BC'+IntToStr(x_row),'BC'+IntToStr(x_row)].Value := GpSds['TripleTotalRs_ST'];

            end;

        end
      else if cxOneToTenCkb.Checked then
        begin

          Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := '=K'+IntToStr(x_row);
          Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=(L'+IntToStr(x_row)+')/2';
          Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=(K'+IntToStr(x_row) + '+(1*' + 'L'+IntToStr(x_row)+')'+')/3';
          Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=(2*L'+IntToStr(x_row)+')/4';
          Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value := '=(K'+IntToStr(x_row) + '+(2*' + 'L'+IntToStr(x_row)+')'+')/5';
          Range['U'+IntToStr(x_row),'U'+IntToStr(x_row)].Value := '=(3*L'+IntToStr(x_row)+')/6';
          Range['V'+IntToStr(x_row),'V'+IntToStr(x_row)].Value := '=(K'+IntToStr(x_row) + '+(3*' + 'L'+IntToStr(x_row)+')'+')/7';
          Range['W'+IntToStr(x_row),'W'+IntToStr(x_row)].Value := '=(4*L'+IntToStr(x_row)+')/8';
          Range['X'+IntToStr(x_row),'X'+IntToStr(x_row)].Value := '=(K'+IntToStr(x_row) + '+(4*' + 'L'+IntToStr(x_row)+')'+')/9';
          Range['Y'+IntToStr(x_row),'Y'+IntToStr(x_row)].Value := '=(5*L'+IntToStr(x_row)+')/10';

        end;


      if cxVoucherCkb.Checked then
        begin

          if (GpSds['VoucherCostSingle'] <> null) and (GpSds['VoucherCostSingle'] <> 0.0) then
            Range['BD'+IntToStr(x_row),'BD'+IntToStr(x_row)].Value := GpSds['VoucherCostSingle'];

          if (GpSds['VoucherCostDouble'] <> null) and (GpSds['VoucherCostDouble'] <> 0.0) then
            Range['BE'+IntToStr(x_row),'BE'+IntToStr(x_row)].Value := GpSds['VoucherCostDouble'];

          if (GpSds['VoucherCostTriple'] <> null) and (GpSds['VoucherCostTriple'] <> 0.0) then
            Range['BF'+IntToStr(x_row),'BF'+IntToStr(x_row)].Value := GpSds['VoucherCostTriple'];

        end;

      if cxCurrencyLcmb.EditValue <> GetDefaultCurrency then
        begin

          if Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value > 0 then
            Range['BH'+IntToStr(x_row),'BH'+IntToStr(x_row)].Value := '=K' + IntToStr(x_row);
          if Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value > 0 then
            Range['BI'+IntToStr(x_row),'BI'+IntToStr(x_row)].Value := '=L' + IntToStr(x_row);
          if Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value > 0 then
            Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := '=M' + IntToStr(x_row);

        end;

      if GpSds['Addressbook_id'] <> null then
        Range['BM'+IntToStr(x_row),'BM'+IntToStr(x_row)].Value := GpSds['Addressbook_id'];

    end;

end;


procedure THotelPriceListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure THotelPriceListForm.cxOneToTenCkbClick(Sender: TObject);
begin
  if (cxDetailsCkb.Checked) and (cxOneToTenCkb.Checked) then
    cxDetailsCkb.Checked := false;
end;

procedure THotelPriceListForm.cxDetailsCkbClick(Sender: TObject);
begin
  if (cxDetailsCkb.Checked) and (cxOneToTenCkb.Checked) then
    cxOneToTenCkb.Checked := false;
end;

procedure THotelPriceListForm.ItereoExcelReport1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_row : integer;
  x_Path, x_FileName, x_Cell : string;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  ShowMessage('For Service & Transport, the [1-10] costs will be picked up from Costings->Modules->Elements');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebHotelReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue);
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Hotels';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['HotelCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['HotelCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Organisation'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Organisation'];
    scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].WrapText := False;

    x_Cell := NextColumn(x_Cell);
    if GpSds['Description'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Description'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Category'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Category'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CheckIn'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CheckIn'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['CheckOut'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CheckOut'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Phone'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Phone'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Breakfast'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Breakfast'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['IsBoarding'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['IsBoarding'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Childfree'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Childfree'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Restaurant'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Restaurant'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Bar'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Bar'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['BusinessCentre'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BusinessCentre'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Parking'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Parking'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Swim'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Swim'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Laundry'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Laundry'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Fitness'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Fitness'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Sauna'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Sauna'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['AC'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['AC'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Heating'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Heating'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Wifi'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Wifi'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Minibar'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Minibar'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['RoomPhone'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['RoomPhone'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Security'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Security'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Smoke'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Smoke'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cable'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cable'];

    x_Cell := NextColumn(x_Cell);
    x_Cell := NextColumn(x_Cell);
    if GpSds['www'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['www'];
    scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].WrapText := False;

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  //***********************
  // 2nd pass fo fill costs
  //***********************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebHotelReport_2] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue);
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Hotel rooms';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'B';
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['HotelCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['HotelCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Organisation'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Organisation'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['RoomType'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['RoomType'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['RoomSize'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['RoomSize'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['FromDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['FromDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['ToDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['ToDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  //******************************
  // 3rd pass fo fill sightseeing
  //*****************************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebSightSeeingReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue) + ',1';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Excursion';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceName'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceName'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceDescription'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceDescription'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Duration'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Duration'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['StartTime'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['StartTime'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransportIncl'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TransportIncl'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransportNotes'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TransportNotes'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['GuideIncl'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['GuideIncl'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['GuideNotes'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['GuideNotes'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['EntranceFeesIncl'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['EntranceFeesIncl'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['EntranceNotes'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['EntranceNotes'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['PrivateGroup'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PrivateGroup'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['MaxPax'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['MaxPax'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepMon'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepMon'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepTue'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepTue'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepWed'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepWed'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepThu'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepThu'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepFri'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepFri'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepSat'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepSat'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['DepSun'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DepSun'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;


  //***********************************
  // 4th pass fo fill sightseeing costs
  //***********************************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebSightSeeingReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue) + ',2';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Excursion rates';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'B';
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceName'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceName'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['FromDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['FromDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['ToDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['ToDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_1'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_1'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_2'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_2'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_3'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_3'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_4'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_4'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_5'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_5'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_6'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_6'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_7'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_7'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_8'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_8'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_9'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_9'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_10'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_10'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;


  //****************************
  // 5th pass fo fill transfers
  //***************************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebTransferReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue) + ',1';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Innercity Transfer';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceName'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceName'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceDescription'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceDescription'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceType'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceType'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['StartTime'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['StartTime'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['EndTime'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['EndTime'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Duration'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Duration'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;


  //********************************
  // 6th pass fo fill transfer costs
  //********************************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebTransferReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue) + ',2';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Transfer rate';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'B';
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ServiceName'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ServiceName'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['FromDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['FromDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['ToDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['ToDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_1'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_1'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_2'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_2'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_3'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_3'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_4'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_4'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_5'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_5'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_6'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_6'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_7'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_7'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_8'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_8'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_9'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_9'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_10'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_10'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;


  //***************************
  // 7th pass fo fill transport
  //***************************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebInterCityReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue) + ',1';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Intercity Transport';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['DestCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DestCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransportCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TransportCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Sector'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Sector'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransportDescription'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TransportDescription'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransportType'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TransportType'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['FromCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['FromCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['ToCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['ToCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['StartTime'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['StartTime'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['EndTime'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['EndTime'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Duration'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Duration'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;


  //********************************
  // 8th pass fo fill transport costs
  //********************************
  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebInterCityReport_1] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ', ' +
    IntToStr(cxCurrencyLcmb.EditValue) + ',2';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Transport rates';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'B';
    if GpSds['DestCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['DestCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransportCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TransportCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Sector'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Sector'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['FromDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['FromDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['ToDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('mm-dd-yyyy',GpSds['ToDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_1'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_1'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_2'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_2'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_3'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_3'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_4'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_4'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_5'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_5'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_6'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_6'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_7'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_7'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_8'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_8'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_9'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_9'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Cost_10'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Cost_10'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  //********************************
  // 9th pass fo fill cities
  //********************************

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\Itereo_Hotels.xlsx';

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_WebCityReport] ';
  GpSds.Open;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := x_Path + '\Itereo_Hotels.xlsx';

  scExcelExport.WorksheetName := 'Destination';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_StartRow := 2;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['CountryCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['CountryCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['WebCityCode'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['WebCityCode'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['City'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_StartRow),'A'+IntToStr(x_row)].RowHeight := 15;

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

  Showmessage('Saved As ' + x_FileName);

end;

function THotelPriceListForm.GetDesktopPath(Sender: TObject): string;
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


procedure THotelPriceListForm.CostBreakup1Click(Sender: TObject);
begin
  HotelPriceList(1);
end;

procedure THotelPriceListForm.CostBreakupwithoutMargin1Click(
  Sender: TObject);
begin
  HotelPriceList(2);
end;

procedure THotelPriceListForm.Cost1to101Click(Sender: TObject);
begin
  HotelPriceList(3);
end;

procedure THotelPriceListForm.HotelPriceList(x_option: integer);
var
  x_FileName, x_StateStr, x_CategoryStr, x_Margin, x_Ranked: string;
  x_currencies_id, x_OptionOrder, x_OptionIndia: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\HotelPriceList_Breakup';

  if x_option = 2 then
    x_FileName := x_FileName + '_NoMargin'
  else if x_option = 3 then
    x_FileName := x_FileName + '_1_to_10';

  x_StateStr := GetStateStr;
  x_CategoryStr := GetCategoryStr;

  x_Margin := '0';
  if x_option = 1 then
    x_Margin := '1';

  x_Ranked := '0';
  if cxRankCkb.Checked then
    x_Ranked := '1';

  x_currencies_id := 13;
  if cxCurrencyLcmb.EditValue <> null then
    x_currencies_id := cxCurrencyLcmb.EditValue;

  if x_option = 2 then
    x_currencies_id := 13;

  x_OptionOrder := 2;
  if cxStatewiseCkb.Checked then
    x_OptionOrder := 1;

  x_OptionIndia := 1;
  if not cxIndiaCkb.Checked then
    x_OptionIndia := 2;

  GST_HotelPriceList (scExcelExport, cxFromDateEdit.Date, cxMealPlanLcmb.EditValue, x_currencies_id, x_StateStr, x_CategoryStr,
                      x_Margin, x_Ranked, x_FileName, x_option, x_OptionOrder, x_OptionIndia);

  ShowMessage('Saved as ' + x_FileName);

end;

function THotelPriceListForm.GetStateStr: string;
var
  x_StateStr: string;
begin

  x_StateStr := '';

  StateCds.First;

  while not StateCds.Eof do
    begin
      if StateCds['Selected'] = true then
        begin
          if x_StateStr > '' then
            x_StateStr := x_StateStr + ',';

          x_StateStr := x_StateStr + IntToStr(StateCds['States_id']);

        end;
      StateCds.Next;
    end;

  StateCds.First;

  if x_StateStr > '' then
    x_StateStr := '(' + x_StateStr + ')';

  Result := x_StateStr;

end;


function THotelPriceListForm.GetCategoryStr: string;
var
  x_CategoryStr: string;
begin

  x_CategoryStr := '';

  CatCds.First;

  while not CatCds.Eof do
    begin
      if CatCds['Selected'] = true then
        begin
          if x_CategoryStr > '' then
            x_CategoryStr := x_CategoryStr + ',';

          x_CategoryStr := x_CategoryStr + IntToStr(CatCds['Categories_id']);

        end;
      CatCds.Next;
    end;

  CatCds.First;

  if x_CategoryStr > '' then
    x_CategoryStr := '(' + x_CategoryStr + ')';

  Result := x_CategoryStr;

end;

procedure THotelPriceListForm.cxCurrencyLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Currencies_id: integer;
begin

  x_Currencies_id := 13;

  if cxCurrencyLcmb.EditValue <> null then
    x_Currencies_id := cxCurrencyLcmb.EditValue;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  ExchRateLabel.Caption := '';
  if x_Currencies_id <> 13 then
    begin

      // Exch Rate
      GpSds.Close;
      GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ')';
      GpSds.Open;
      if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
        ExchRateLabel.Caption := ' @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

    end;

  GpSds.Free;

end;



end.
