unit TrainTicketsPriceListFm;

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
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls;

type
  TTrainTicketsPriceListForm = class(TForm)
    PopupMenu1: TPopupMenu;
    Statewise1: TMenuItem;
    cxFromDateEdit: TcxDateEdit;
    scExcelExport: TscExcelExport;
    cxLabel1: TcxLabel;
    cxMarginCkb: TcxCheckBox;
    cxCurrencyLcmb: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    Label1: TLabel;
    cxNumPaxEdit: TcxMaskEdit;
    cxMarginEdit: TcxMaskEdit;
    cxDetailsCkb: TcxCheckBox;
    cxServiceTaxCkb: TcxCheckBox;
    Panel1: TPanel;
    CloseBtn: TcxButton;
    cxButton1: TcxButton;
    ExchRateLabel: TLabel;
    N1: TMenuItem;
    CostBreakup1: TMenuItem;
    CostBreakupWith1: TMenuItem;
    Cost1to101: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Statewise1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    function GetCurrencyCode(x_Currencies_id: integer): string;
    function GetDefaultMargin: double;
    procedure PrintMultiReport;
    procedure WriteToExcel(GpSds:TSQLDataSet; scExcelExport:TscExcelExport; var x_row: integer; x_option, x_Agents_id: integer;
                           x_margin, x_markup, x_CostField: string);
    procedure CostBreakup1Click(Sender: TObject);
    procedure CostBreakupWith1Click(Sender: TObject);
    procedure Cost1to101Click(Sender: TObject);
    procedure cxCurrencyLcmbPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure Train_PriceList(x_option: integer);
  public
    { Public declarations }
  end;

var
  TrainTicketsPriceListForm: TTrainTicketsPriceListForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm, GST_Trains_ExcelReportsUt;

{$R *.dfm}

procedure TTrainTicketsPriceListForm.FormCreate(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  Height := 200;
  Width := 570;

  cxFromDateEdit.Date := StrToDate('01/10/' + IntToStr(YearOf(Date)));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT FromDate = MAX(Wef) FROM TrainFares ';
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['FromDate'] <> null) and (GpSds['FromDate'] > cxFromDateEdit.Date) then
    cxFromDateEdit.Date := GpSds['FromDate'];

  GpSds.Free;

  BackOfficeDataModule.CurrenciesCds.Open;

  cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  cxMarginEdit.Text := FloatToStr(GetDefaultMargin);

  ExchRateLabel.Caption := '';

end;

function TTrainTicketsPriceListForm.GetDefaultMargin: double;
var
  GpSds: TSQLDataSet;
  x_Margin: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Margin FROM FitMargins ' +
    'WHERE TrsType = 1 AND Tickets_id = 2 ';
  GpSds.Open;

  x_Margin := 0.0;
  if (not GpSds.EOF) and (GpSds['Margin'] <> null) then
    x_Margin := GpSds['Margin'];

  GpSds.Free;

  Result := x_Margin;

end;


procedure TTrainTicketsPriceListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTrainTicketsPriceListForm.FormDestroy(Sender: TObject);
begin
  TrainTicketsPriceListForm := nil;
end;

procedure TTrainTicketsPriceListForm.Statewise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintMultiReport;
  except
  end;
end;

procedure TTrainTicketsPriceListForm.PrintMultiReport;
var
  x_row, x_option, x_agents_id, x_overnight: integer;
  GpSds: TSQLDataSet;
  x_Margin, x_Markup, x_CostField, x_ServiceTax, x_FileName: string;
begin

  x_Margin := '0';
  if cxMarginCkb.Checked then
    x_Margin := '1';

  x_Markup := '0';
  if trim(cxMarginEdit.Text) > '' then
    x_Markup := trim(cxMarginEdit.Text);

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  x_Agents_id := GetDefaultTrainTicketAgent;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.WorksheetName:='Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A1','S1'].ColumnWidth := 9;

      Range['A1','A1'].Value := 'As of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

      Range['A2','A2'].Value := 'Service Charges for Train Bookings ';
      Range['A4','A4'].Value := 'Trains';
      Range['D4','D4'].Value := cxMarginEdit.Text;
      Range['A6','A6'].Value := 'Exchange Rate';

      Range['A8','A8'].Value := 'TRAINS';
      Range['A8','A8'].Font.FontStyle := 'Bold';
      Range['A8','A8'].Font.Size := '12';

      x_row := 10;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Day Trains';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '10';
      x_row := x_row + 2;
      x_overnight := 0;
      x_CostField := 'ac_cc';
      x_option := 1;
      GpSds.Close;
      GpSds.CommandText := ' EXEC p_TrainTicketsPriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ' +
        IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
        x_Margin + ',' + cxNumPaxEdit.Text + ',' + x_MarkUp + ',' + IntToStr(x_Agents_id) + ',' +
        IntToStr(x_overnight) + ',' + x_ServiceTax;
      GpSds.Open;
      WriteToExcel(GpSds, scExcelExport, x_row, 1, x_Agents_id, x_margin, x_markup, x_CostField);

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Overnight Trains - 2 Tier';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '10';
      x_row := x_row + 2;
      x_overnight := 1;
      x_CostField := 'ac_2t';
      x_option := 2;
      GpSds.Close;
      GpSds.CommandText := ' EXEC p_TrainTicketsPriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ' +
        IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
        x_Margin + ',' + cxNumPaxEdit.Text + ',' + x_MarkUp + ',' + IntToStr(x_Agents_id) + ',' +
        IntToStr(x_overnight) + ',' + x_ServiceTax;
      GpSds.Open;
      WriteToExcel(GpSds, scExcelExport, x_row, 2, x_Agents_id, x_margin, x_markup, x_CostField);

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Overnight Trains - 3 Tier';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '10';
      x_row := x_row + 2;
      x_overnight := 1;
      x_CostField := 'ac_3t';
      x_option := 3;
      GpSds.Close;
      GpSds.CommandText := ' EXEC p_TrainTicketsPriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ' +
        IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
        x_Margin + ',' + cxNumPaxEdit.Text + ',' + x_MarkUp + ',' + IntToStr(x_Agents_id) + ',' +
        IntToStr(x_overnight) + ',' + x_ServiceTax;
      GpSds.Open;
      WriteToExcel(GpSds, scExcelExport, x_row, 3, x_Agents_id, x_margin, x_markup, x_CostField);

    end;

  GpSds.Free;

  x_FileName := g_ReportDir + '\TrainTicketRates.xls';
  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

procedure TTrainTicketsPriceListForm.WriteToExcel(GpSds:TSQLDataSet; scExcelExport:TscExcelExport; var x_row: integer; x_option, x_Agents_id: integer;
          x_margin, x_markup, x_CostField: string);
var
  x_CurrencyCode: string;
begin

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'S'+IntToStr(x_row)].Font.Size := '10';

      Range['BJ1','BN1'].EntireColumn.Hidden := True;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'From City';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'To City';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'From Station';
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'To Station';
      if (cxDetailsCkb.Checked) then
        Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := 'Final (Rs)';

      Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := 'Schedule';
      Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value := 'Train No';
      Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := 'Train';
      Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := 'Timings';

      if cxDetailsCkb.Checked then
        begin
          if x_option = 1 then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'A/C Chair'
          else if x_option = 2 then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '2 Tier A/C'
          else if x_option = 3 then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '3 Tier A/C';
          Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := 'S.C.';
          Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := 'Total';
          if cxMarginCkb.Checked then
            Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := 'Mark-up';
        end;

      if cxServiceTaxCkb.Checked then
        begin
          Range['J' + IntToStr(x_row),'J' + IntToStr(x_row)].Value := 'Serv Tax';
        end;

      if cxCurrencyLcmb.EditValue = null then
        cxCurrencyLcmb.EditValue := GetDefaultCurrency;

      x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

      if cxCurrencyLcmb.EditValue <> 13 then
        Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := x_CurrencyCode;

    end;

  x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      GpSds.First;

      if (x_option = 1) and (cxDetailsCkb.Checked) then
        begin
          if (GpSds['BookingFee'] <> null) then
            Range['D2','D2'].Value := GpSds['BookingFee'];

          Range['D4','D4'].Value := cxMarginEdit.Text;

          if (GpSds['ExchRate'] <> null) then
            Range['D6','D6'].Value := GpSds['ExchRate'];
        end;

      while not GpSds.Eof do
        begin

          if (GpSds['FromCity'] <> null) then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['FromCity'];

          if (GpSds['ToCity'] <> null) then
            Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['ToCity'];

          if (GpSds['FromStation'] <> null) then
            Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := GpSds['FromStation'];

          if (GpSds['ToStation'] <> null) then
            Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['ToStation'];

          if cxDetailsCkb.Checked then
            begin

              if (GpSds[x_CostField] <> null) and (GpSds[x_CostField] <> 0.0) then
                Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := GpSds[x_CostField];

              Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '=$D$2';

              Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=F' + IntToStr(x_row) + '+G' + IntToStr(x_row);

              if cxMarginCkb.Checked then
                  Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=H' + IntToStr(x_row) + '*($D$4/100)';

              Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=ROUND(H' + IntToStr(x_row) + '+I' + IntToStr(x_row) + '+J' + IntToStr(x_row)+ ',0)';

            end;

          if (cxCurrencyLcmb.EditValue <> 13) then
            Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=ROUND(K' + IntToStr(x_row) + '/$D$6,0)';

          if (GpSds['DaysSch'] <> null) then
            Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := GpSds['DaysSch'];

          if (GpSds['TrainNo'] <> null) then
            Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value := GpSds['TrainNo'];

          if (GpSds['TrainName'] <> null) then
            Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := GpSds['TrainName'];

          if (GpSds['Timing'] <> null) then
            Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := GpSds['Timing'];

          if cxServiceTaxCkb.Checked then
            begin

              if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := '=CEILING((' +
                FormatFloat('#,##0.0000',GpSds['TourServiceTaxPerc']) + '/100.0)*(' +
                'H'+IntToStr(x_row) + '+' + 'I'+IntToStr(x_row) + '),1)';

              Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].NumberFormat := '#,##0';

            end;

          if (GpSds['Trains_id'] <> null) then
            Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := GpSds['Trains_id'];

          if (GpSds['FromCities_id'] <> null) then
            Range['BK'+IntToStr(x_row),'BK'+IntToStr(x_row)].Value := GpSds['FromCities_id'];

          if (GpSds['ToCities_id'] <> null) then
            Range['BL'+IntToStr(x_row),'BL'+IntToStr(x_row)].Value := GpSds['ToCities_id'];

          if (GpSds['FromTrainStations_id'] <> null) then
            Range['BM'+IntToStr(x_row),'BM'+IntToStr(x_row)].Value := GpSds['FromTrainStations_id'];

          if (GpSds['ToTrainStations_id'] <> null) then
            Range['BN'+IntToStr(x_row),'BN'+IntToStr(x_row)].Value := GpSds['ToTrainStations_id'];

          GpSds.Next;

          x_row := x_row + 1;

        end;


    end;

end;

function TTrainTicketsPriceListForm.GetCurrencyCode(x_Currencies_id: integer): string;
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


procedure TTrainTicketsPriceListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TTrainTicketsPriceListForm.CostBreakup1Click(Sender: TObject);
begin
  Train_PriceList(1);
end;

procedure TTrainTicketsPriceListForm.CostBreakupWith1Click(
  Sender: TObject);
begin
  Train_PriceList(2);
end;

procedure TTrainTicketsPriceListForm.Cost1to101Click(Sender: TObject);
begin
  Train_PriceList(3);
end;

procedure TTrainTicketsPriceListForm.Train_PriceList(x_option: integer);
var
  x_FileName, x_Margin: string;
  x_currencies_id: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\Train_PriceList_Breakup';

  if x_option = 2 then
    x_FileName := x_FileName + '_NoMargin'
  else if x_option = 3 then
    x_FileName := x_FileName + '_1_to_10';

  x_Margin := '0';
  if (x_option = 1) or (x_option = 3) then
    x_Margin := '1';

  x_currencies_id := 13;
  if cxCurrencyLcmb.EditValue <> null then
    x_currencies_id := cxCurrencyLcmb.EditValue;

  if x_option = 2 then
    x_currencies_id := 13;

  GST_Trains_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_Margin, x_FileName, x_option);

  ShowMessage('Saved as ' + x_FileName);

end;


procedure TTrainTicketsPriceListForm.cxCurrencyLcmbPropertiesEditValueChanged(
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
