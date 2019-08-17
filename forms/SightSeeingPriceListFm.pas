unit SightSeeingPriceListFm;

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
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Math, Excel2000,
  cxGroupBox, ExtCtrls;

type
  TSightSeeingPriceListForm = class(TForm)
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
    PopupMenu1: TPopupMenu;
    Statewise1: TMenuItem;
    Citywise1: TMenuItem;
    scExcelExport: TscExcelExport;
    N1: TMenuItem;
    CostsinRange1101: TMenuItem;
    State1: TMenuItem;
    City1: TMenuItem;
    Panel1: TPanel;
    CloseBtn: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxLabel1: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxCurrencyLcmb: TcxLookupComboBox;
    cxNumPaxEdit: TcxMaskEdit;
    cxVoucherCkb: TcxCheckBox;
    cxServiceTaxCkb: TcxCheckBox;
    cxMiscCkb: TcxCheckBox;
    cxGuideCkb: TcxCheckBox;
    cxEntranceCkb: TcxCheckBox;
    cxTransportCkb: TcxCheckBox;
    cxRecoCkb: TcxCheckBox;
    cxDetailsCkb: TcxCheckBox;
    cxSepLineCkb: TcxCheckBox;
    cxMarginCkb: TcxCheckBox;
    cxMarginEdit: TcxMaskEdit;
    N2: TMenuItem;
    mnuSightseeing: TMenuItem;
    CostBreakup1: TMenuItem;
    CostBreakupWithoutMargin1: TMenuItem;
    Cost1to101: TMenuItem;
    N3: TMenuItem;
    mnuTransfer: TMenuItem;
    CostBreakup2: TMenuItem;
    CostBreakupWithoutMargin2: TMenuItem;
    Cost1to102: TMenuItem;
    ExchRateLabel: TLabel;
    cxMeetCkb: TcxCheckBox;
    N4: TMenuItem;
    Cost1to10Stacked1: TMenuItem;
    N5: TMenuItem;
    Cost1to10Stacked2: TMenuItem;
    cxStatewiseCkb: TcxCheckBox;
    cxIndiaCkb: TcxCheckBox;
    N6: TMenuItem;
    MiscGuideEntranceDetails1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Statewise1Click(Sender: TObject);
    procedure Citywise1Click(Sender: TObject);
    procedure PrintReport(x_option: integer; x_sightseeing: integer);
    procedure PrintReportToExcel (GpSds: TSQLDataSet);
    procedure PrintNextState(x_State: string; var x_row: integer);
    procedure PrintNextCity(x_City: string; var x_row: integer);
    procedure PrintNextService (x_Service: string; var x_row: integer; x_option: integer);
    procedure PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
    procedure CloseBtnClick(Sender: TObject);
    function GetCurrencyCode(x_Currencies_id: integer): string;
    function GetDefaultMargin: double;
    procedure State1Click(Sender: TObject);
    procedure PrintRangeReport(x_option: integer; x_sightseeing: integer);
    procedure PrintRangeReportToExcel (GpSds: TSQLDataSet);
    procedure PrintRangeRecord(GpSds: TSQLDataSet; var x_row: integer; x_option, x_ShowComment: integer);
    function GetCost(x_services_id, x_Pax: integer; x_wef: TDateTime; x_option: integer): double;
    function GetCostBreakup(x_services_id, x_Pax: integer; x_wef: TDateTime): string;
    procedure City1Click(Sender: TObject);
    procedure CostBreakup1Click(Sender: TObject);
    procedure CostBreakupWithoutMargin1Click(Sender: TObject);
    procedure Cost1to101Click(Sender: TObject);
    procedure CostBreakup2Click(Sender: TObject);
    procedure CostBreakupWithoutMargin2Click(Sender: TObject);
    procedure Cost1to102Click(Sender: TObject);
    procedure cxCurrencyLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure Cost1to10Stacked1Click(Sender: TObject);
    procedure Cost1to10Stacked2Click(Sender: TObject);
    procedure MiscGuideEntranceDetails1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Services_PriceList(x_transfer: boolean; x_option: integer);
    procedure ServicesDetails_PriceList();
    function GetStateStr: string;
  public
    { Public declarations }
  end;

var
  SightSeeingPriceListForm: TSightSeeingPriceListForm;
  _SightSeeingPriceListForm_Type: integer;

implementation

uses BackOfficeDM, GeneralUt, MainFm, GST_Sightseeing_ExcelReportsUt,
  GST_SightseeingDetails_ExcelReportsUt;

{$R *.dfm}

procedure TSightSeeingPriceListForm.FormCreate(Sender: TObject);
begin
  Height := 570;
  Width := 670;

  // sightseeing
  if _SightSeeingPriceListForm_Type = 1 then
    begin
      cxMiscCkb.Enabled := true;
      cxGuideCkb.Enabled := true;
      cxEntranceCkb.Enabled := true;
      cxTransportCkb.Enabled := true;

      cxMeetCkb.Checked := true;
      cxMeetCkb.Enabled := true;

      cxRecoCkb.Checked := true;
      cxRecoCkb.Enabled := true;

      mnuTransfer.Visible := false;
    end
  else if _SightSeeingPriceListForm_Type = 2 then
    begin

      cxMiscCkb.Checked := true;
      cxMiscCkb.Visible := false;

      cxGuideCkb.Checked := true;
      cxGuideCkb.Visible := false;

      cxEntranceCkb.Checked := true;
      cxEntranceCkb.Visible := false;

      cxTransportCkb.Checked := true;
      cxTransportCkb.Visible := false;

      cxMeetCkb.Checked := true;
      cxMeetCkb.Enabled := true;
      cxMeetCkb.Top := cxMiscCkb.Top;

      cxRecoCkb.Checked := false;
      cxRecoCkb.Visible := false;

      mnuSightseeing.Visible := false;

    end;

  ExchRateLabel.Caption := '';

  cxFromDateEdit.Date := StrToDate('01/10/' + IntToStr(YearOf(Date)));

  StateCds.Active := False;
  StateCds.Active := True;

  BackOfficeDataModule.CurrenciesCds.Open;

  cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  cxMarginEdit.Text := FloatToStr(GetDefaultMargin);

end;

function TSightSeeingPriceListForm.GetDefaultMargin: double;
var
  GpSds: TSQLDataSet;
  x_Margin: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Margin FROM FitMargins ' +
    'WHERE TrsType = 3 ';
  GpSds.Open;

  x_Margin := 0.0;
  if (not GpSds.EOF) and (GpSds['Margin'] <> null) then
    x_Margin := GpSds['Margin'];

  GpSds.Free;

  Result := x_Margin;

end;


procedure TSightSeeingPriceListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSightSeeingPriceListForm.FormDestroy(Sender: TObject);
begin
  SightSeeingPriceListForm := nil;
end;

procedure TSightSeeingPriceListForm.Statewise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(1,1);
  except
  end;
end;

procedure TSightSeeingPriceListForm.Citywise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(2,1);
  except
  end;

end;

procedure TSightSeeingPriceListForm.PrintReport(x_option: integer; x_sightseeing: integer);
var
  x_StateStr, x_Margin, x_OptionVoucher, x_Misc, x_Guide, x_EntranceFees, x_Markup, x_Recommended, x_ServiceTax: string;
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

  if x_StateStr > '' then
    x_StateStr := '(' + x_StateStr + ')';

  x_Margin := '0';
  if cxMarginCkb.Checked then
    x_Margin := '1';

  x_OptionVoucher := '0';
  if cxVoucherCkb.Checked then
    x_OptionVoucher := '1';

  if cxCurrencyLcmb.EditValue = null then
    cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  x_Misc := '0';
  if cxMiscCkb.Checked then
    x_Misc := '1';

  x_Guide := '0';
  if cxGuideCkb.Checked then
    x_Guide := '1';

  x_EntranceFees := '0';
  if cxEntranceCkb.Checked then
    x_EntranceFees := '1';

  x_Markup := '0';
  if trim(cxMarginEdit.Text) > '' then
    x_Markup := trim(cxMarginEdit.Text);

  x_Recommended := '0';
  if cxRecoCkb.Checked then
    x_Recommended := '1';

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := ' EXEC p_SightSeeingPriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_SightSeeing) + ',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_OptionVoucher + ', ' + cxNumPaxEdit.Text + ',' + x_Misc + ',' + x_Guide + ',' +
    x_EntranceFees + ',' + x_MarkUp + ',' + x_Recommended + ',' + x_ServiceTax;
  GpSds.Open;

  PrintReportToExcel(GpSds);

  GpSds.Free;

end;

procedure TSightSeeingPriceListForm.PrintReportToExcel (GpSds: TSQLDataSet);
var
  x_PrevState, x_PrevCity, x_PrevService, x_CurrencyCode, x_FileName: string;
  x_row, x_option: integer;
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

      Range['A1','A1'].ColumnWidth := 15;
      Range['B1','B1'].ColumnWidth := 15;
      Range['C1','C1'].ColumnWidth := 30;
      Range['D1','X1'].ColumnWidth := 10;

      Range['A1','A1'].Value := 'SightSeeing as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

      Range['A3','A3'].Value := 'Cost based on ' + trim(cxNumPaxEdit.Text) + ' pax';
      Range['A3','A3'].Font.FontStyle := 'Bold';
      Range['A3','A3'].Font.Size := '10';


      Range['E3','X4'].Font.FontStyle := 'Bold';
      Range['E3','X4'].Font.Size := '10';

      Range['E3','E3'].Value := 'Cost';

      if cxDetailsCkb.Checked then
        begin
          Range['G3','G3'].Value := 'Default Agent';
          Range['H3','H3'].Value := 'Wef';
          Range['I3','I3'].Value := 'Rate';
          Range['J3','J3'].Value := 'Parking/Toll Fee';
          Range['K3','K3'].Value := 'Vehicle';
          Range['L3','L3'].Value := 'Transport';
          Range['M3','M3'].Value := 'Parking/Toll Cost';
          Range['N3','N3'].Value := 'Commission';
          Range['O3','O3'].Value := 'Misc Cost';
          Range['P3','P3'].Value := 'Guide';
          Range['Q3','Q3'].Value := 'Entrance Fees';
          Range['R3','R3'].Value := 'Sub Total';
          Range['S3','S3'].Value := 'Serv Tax';
          Range['T3','T3'].Value := 'Expected Cost (Rs.)';
        end;

      if cxMarginCkb.Checked and cxDetailsCkb.Checked then
        begin
          Range['U3','U3'].Value := 'Mark-up (%)';
          Range['V3','V3'].Value := 'Final (Rs.)';
          Range['W3','W3'].Value := 'Tour Serv Tax (%)';
          Range['X3','X3'].Value := 'Final with ST';
        end;

      if cxCurrencyLcmb.EditValue = null then
        cxCurrencyLcmb.EditValue := GetDefaultCurrency;

      x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

      if cxMarginCkb.Checked and cxDetailsCkb.Checked then
        begin
          if cxCurrencyLcmb.EditValue <> 13 then
            Range['X3','X3'].Value := x_CurrencyCode;
        end;

      Range['E3','E3'].Value := 'Cost';
      Range['E4','E4'].Value := x_CurrencyCode;

      if GpSds['ServiceTaxPerc'] <> null then
        Range['S4','S4'].Value := GpSds['ServiceTaxPerc'];

      if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
        Range['U4','U4'].Value := GpSds['Margin'];

      if GpSds['TourServiceTaxPerc'] <> null then
        Range['W4','W4'].Value := GpSds['TourServiceTaxPerc'];

    end;

  x_PrevState := '--';
  x_PrevCity := '--';
  x_PrevService := '--';
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

      // Service
      if (not GpSds.EOF) and (GpSds['Service'] <> x_PrevService) then
        begin
          x_option := 1;
          if x_NewCity then
            x_option := 2;
          PrintNextService(GpSds['Service'], x_row, x_option);
          PrintRecord(GpSds, x_row, 1);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRecord(GpSds, x_row, 2);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevService := GpSds['Service'];
        end;

      GpSds.Next;

    end;

//  scExcelExport.ExcelWorkSheet.Range['AN5','AP5'].Merge(3);

  x_FileName := g_ReportDir + '\SightSeeingRates.xls';
  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

function TSightSeeingPriceListForm.GetCurrencyCode(x_Currencies_id: integer): string;
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


procedure TSightSeeingPriceListForm.PrintNextState(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure TSightSeeingPriceListForm.PrintNextCity(x_City: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_City;
    end;

end;

procedure TSightSeeingPriceListForm.PrintNextService(x_Service: string; var x_row: integer; x_option: integer);
begin

  if x_option = 1 then
    x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.Size := '8';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_Service;
    end;

end;


procedure TSightSeeingPriceListForm.PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
begin

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'X'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'X'+IntToStr(x_row)].NumberFormat := '#,##0';

      Range['BJ1','BM1'].EntireColumn.Hidden := True;
{
      if cxDetailsCkb.Checked then
        begin
          if GpSds['ServiceTaxPerc'] <> null then
            Range['R4','R4'].Value := GpSds['ServiceTaxPerc'];
        end;
}


      if not cxMiscCkb.Checked then
        Range['O1','O1'].EntireColumn.Hidden := True;

      if not cxGuideCkb.Checked then
        Range['P1','P1'].EntireColumn.Hidden := True;

      if not cxEntranceCkb.Checked then
        Range['Q1','Q1'].EntireColumn.Hidden := True;


      if GpSds['Vehicle'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

      if GpSds['TotalCurr'] <> null then
        Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];

      if cxDetailsCkb.Checked then
        begin

          if (GpSds['DefaultAgent'] <> null)  then
            Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['DefaultAgent'];

          if (GpSds['Wef'] <> null)  then
            Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);

          if (GpSds['TransportRate'] <> null) and (GpSds['TransportRate'] <> 0.0) then
            Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['TransportRate'];

          if (GpSds['ParkingFee'] <> null) and (GpSds['ParkingFee'] <> 0.0) then
            Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['ParkingFee'];

          if (GpSds['NumVehicles'] <> null) and (GpSds['NumVehicles'] <> 0) then
            Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['NumVehicles'];

    //      if (GpSds['TransportCost'] <> null) and (GpSds['TransportCost'] <> 0.0) then
            Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := '=I' + IntToStr(x_row) + '*K' + IntToStr(x_row);
            Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := '=J' + IntToStr(x_row) + '*K' + IntToStr(x_row);

          if (GpSds['CommissionOnTransport'] <> null) and (GpSds['CommissionOnTransport'] <> 0.0) then
            Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := GpSds['CommissionOnTransport'];

          if (GpSds['MiscCost'] <> null) and (GpSds['MiscCost'] <> 0.0) then
            Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value := GpSds['MiscCost'];

          if (GpSds['GuideCost'] <> null) and (GpSds['GuideCost'] <> 0.0) then
            Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := GpSds['GuideCost'];

          if (GpSds['EntranceCost'] <> null) and (GpSds['EntranceCost'] <> 0.0) then
            Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := GpSds['EntranceCost'];

          Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value :=
              '=(L' + IntToStr(x_row) + '+M' + IntToStr(x_row) + '-N' + IntToStr(x_row) + '+O' + IntToStr(x_row) + '+P' + IntToStr(x_row) + '+Q' + IntToStr(x_row) + ')';

    {
          if (GpSds['ServiceTax'] <> null) and (GpSds['ServiceTax'] <> 0.0) then
            Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['ServiceTax'];
    }

{
    //      if (GpSds['ServiceTax'] <> null) and (GpSds['ServiceTax'] <> 0.0) then
            Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value :=
              '=(L' + IntToStr(x_row) + '+M' + IntToStr(x_row) + '-N' + IntToStr(x_row) + '+O' + IntToStr(x_row) + '+P' + IntToStr(x_row) + '+Q' + IntToStr(x_row) + ') * (R4/100)';
}

          if (GpSds['ServiceTax'] <> null) and (GpSds['ServiceTax'] <> 0.0) then
            Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := GpSds['ServiceTax'];

          if (GpSds['TotalRs'] <> null) and (GpSds['TotalRs'] <> 0.0) then
            Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value := GpSds['TotalRs'];

          if cxMarginCkb.Checked then
            begin

    //          if GpSds['TotalRs'] <> null then
                Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value :=
                '=R' + IntToStr(x_row) + '+S' + IntToStr(x_row);

              if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
                Range['U'+IntToStr(x_row),'U'+IntToStr(x_row)].Value := '=T' + IntToStr(x_row) + '*' + FloatToStr(GpSds['Margin']/100);

              if (GpSds['TotalRs'] <> null) and (GpSds['TotalRs'] <> 0.0) then
                Range['V'+IntToStr(x_row),'V'+IntToStr(x_row)].Value := GpSds['TotalRs'];


    //          if (GpSds['TotalRs'] <> null) and (GpSds['TotalRs'] <> 0.0) then
    //            Range['V'+IntToStr(x_row),'V'+IntToStr(x_row)].Value := '=T' + IntToStr(x_row) + '*(1 + U' + IntToStr(x_row) + '/100.0)';

              if cxCurrencyLcmb.EditValue <> 13 then
                begin
                  Range['X4','X4'].Value := GpSds['SS_ExchRate'];
                end;

              if (GpSds['TotalCurr'] <> null) and (GpSds['TotalCurr'] <> 0.0) then
                Range['X'+IntToStr(x_row),'X'+IntToStr(x_row)].Value := GpSds['TotalCurr'];

              if cxServiceTaxCkb.Checked then
                begin

                  if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                    Range['W'+IntToStr(x_row),'W'+IntToStr(x_row)].Value := '=V' + IntToStr(x_row) + '*W4/100.0';

                  Range['W'+IntToStr(x_row),'W'+IntToStr(x_row)].NumberFormat := '#,##0';

                end;


            end;

        end;

      if (GpSds['Services_id'] <> null) then
        Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := GpSds['Services_id'];

      if (GpSds['DefaultAgents_id'] <> null) then
        Range['BK'+IntToStr(x_row),'BK'+IntToStr(x_row)].Value := GpSds['DefaultAgents_id'];

      if (GpSds['ServiceCities_id'] <> null) then
        Range['BL'+IntToStr(x_row),'BL'+IntToStr(x_row)].Value := GpSds['ServiceCities_id'];

      if (GpSds['Vehicles_id'] <> null) then
        Range['BM'+IntToStr(x_row),'BM'+IntToStr(x_row)].Value := GpSds['Vehicles_id'];

    end;

end;


procedure TSightSeeingPriceListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSightSeeingPriceListForm.State1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintRangeReport(1,1);
  except
  end;

end;

procedure TSightSeeingPriceListForm.PrintRangeReport(x_option: integer; x_sightseeing: integer);
var
  x_StateStr, x_Margin, x_OptionVoucher, x_Misc, x_Guide, x_EntranceFees, x_Markup, x_Recommended, x_ServiceTax: string;
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

  if x_StateStr > '' then
    x_StateStr := '(' + x_StateStr + ')';

  x_Margin := '0';
  if cxMarginCkb.Checked then
    x_Margin := '1';

  x_OptionVoucher := '0';
  if cxVoucherCkb.Checked then
    x_OptionVoucher := '1';

  if cxCurrencyLcmb.EditValue = null then
    cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  x_Misc := '0';
  if cxMiscCkb.Checked then
    x_Misc := '1';

  x_Guide := '0';
  if cxGuideCkb.Checked then
    x_Guide := '1';

  x_EntranceFees := '0';
  if cxEntranceCkb.Checked then
    x_EntranceFees := '1';

  x_Markup := '0';
  if trim(cxMarginEdit.Text) > '' then
    x_Markup := trim(cxMarginEdit.Text);

  x_Recommended := '0';
  if cxRecoCkb.Checked then
    x_Recommended := '1';

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := ' EXEC p_SightSeeingPriceList_PaxRange ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_SightSeeing) + ',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_OptionVoucher + ', ' + x_Misc + ',' + x_Guide + ',' +
    x_EntranceFees + ',' + x_MarkUp + ',' + x_Recommended + ',' + x_ServiceTax;
  GpSds.ExecSQL;

  GpSds.Close;
  GpSds.CommandText :=
    'SELECT DISTINCT t.State, c.City as City, s.Description as Service, a.Organisation as DefaultAgent, t.wef, ' +
    's.Services_id, t.Addressbook_id ' +
    'FROM TmpSightSeeingPrices t ' +
    'LEFT JOIN Addressbook a ON t.Addressbook_id = a.Addressbook_id ' +
    'LEFT JOIN Services s ON t.Services_id = s.Services_id ' +
    'LEFT JOIN Cities c ON t.ServiceCities_id = c.Cities_id ';
  GpSds.Open;

  PrintRangeReportToExcel(GpSds);

  GpSds.Free;

end;

procedure TSightSeeingPriceListForm.PrintRangeReportToExcel (GpSds: TSQLDataSet);
var
  x_PrevState, x_PrevCity, x_PrevService, x_CurrencyCode, x_FileName: string;
  x_row, x_option, x_ShowComment: integer;
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

      Range['A1','A1'].ColumnWidth := 15;
      Range['B1','B1'].ColumnWidth := 15;
      Range['C1','C1'].ColumnWidth := 30;
      Range['D1','X1'].ColumnWidth := 10;

      Range['A1','A1'].Value := 'SightSeeing as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A3','A3'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

      Range['E3','X4'].Font.FontStyle := 'Bold';
      Range['E3','X4'].Font.Size := '10';

      Range['F3','F3'].Value := 'Cost 1';
      Range['G3','G3'].Value := 'Cost 2';
      Range['H3','H3'].Value := 'Cost 3';
      Range['I3','I3'].Value := 'Cost 4';
      Range['J3','J3'].Value := 'Cost 5';
      Range['K3','K3'].Value := 'Cost 6';
      Range['L3','L3'].Value := 'Cost 7';
      Range['M3','M3'].Value := 'Cost 8';
      Range['N3','N3'].Value := 'Cost 9';
      Range['O3','O3'].Value := 'Cost 10';

      if cxCurrencyLcmb.EditValue = null then
        cxCurrencyLcmb.EditValue := GetDefaultCurrency;

      x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);
      x_ShowComment := 0;
      if cxCurrencyLcmb.EditValue = GetDefaultCurrency then
        x_ShowComment := 1;

      Range['E3','E3'].Value := x_CurrencyCode;

    end;

  x_PrevState := '--';
  x_PrevCity := '--';
  x_PrevService := '--';
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

      // Service
      if (not GpSds.EOF) and (GpSds['Service'] <> x_PrevService) then
        begin
          x_option := 1;
          if x_NewCity then
            x_option := 2;
          PrintNextService(GpSds['Service'], x_row, x_option);
          PrintRangeRecord(GpSds, x_row, 1, x_ShowComment);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRangeRecord(GpSds, x_row, 2, x_ShowComment);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevService := GpSds['Service'];
        end;

      GpSds.Next;

    end;

//  scExcelExport.ExcelWorkSheet.Range['AN5','AP5'].Merge(3);

  x_FileName := g_ReportDir + '\SightSeeingRatesInRange.xls';
  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

procedure TSightSeeingPriceListForm.PrintRangeRecord(GpSds: TSQLDataSet; var x_row: integer; x_option, x_ShowComment: integer);
var
  x_cost: double;
  x_NumPax, x_num, x_AllCostZero, x_StartRow: integer;
  x_col, x_comment: string;
begin

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'X'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'X'+IntToStr(x_row)].NumberFormat := '#,##0';

      Range['BJ1','BL1'].EntireColumn.Hidden := True;

      x_NumPax := 1;
      x_col := 'F';
      //x_StartRow := 0;

      if GpSds['Services_id'] <> null then
        Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := GpSds['Services_id'];

      if GpSds['Addressbook_id'] <> null then
        Range['BK'+IntToStr(x_row),'BK'+IntToStr(x_row)].Value := GpSds['Addressbook_id'];

      if not cxSepLineCkb.Checked then
        begin

          while x_NumPax <= 10 do
            begin

              x_cost := GetCost(GpSds['Services_id'], x_NumPax, GpSds['wef'], 1);

              // Print Cost Per Pax
              if x_cost <> 0 then
                begin
                  Range[x_col+IntToStr(x_row),x_col+IntToStr(x_row)].Value := SimpleRoundTo(x_cost / x_NumPax,0);
                  if x_ShowComment = 1 then
                    begin
                      x_comment := GetCostBreakup(GpSds['Services_id'], x_NumPax, GpSds['wef']);
                      Range[x_col+IntToStr(x_row),x_col+IntToStr(x_row)].AddComment(x_comment);
                    end;
                end;

              x_col := NextColumn(x_col);

              x_NumPax := x_NumPax + 1;
            end;
        end
      else
        begin
          x_num := 11;

          //x_SSCostZero := 0;
          x_StartRow := 0;

          while x_num <= 14 do
            begin

              Range['D'+IntToStr(x_row),'X'+IntToStr(x_row)].Font.Size := '8';
              Range['E'+IntToStr(x_row),'X'+IntToStr(x_row)].NumberFormat := '#,##0';

              if x_num = 11 then
                Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Transport'
              else if x_num = 12 then
                Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Guide'
              else if x_num = 13 then
                Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Misc'
              else if x_num = 14 then
                Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Entrance';

              x_NumPax := 1;
              x_col := 'F';
              x_AllCostZero := 0;

              while x_NumPax <= 10 do
                begin

                  x_cost := GetCost(GpSds['Services_id'], x_NumPax, GpSds['wef'], x_num);

                  // Print Cost Per Pax
                  if x_cost <> 0 then
                    begin
                      Range[x_col+IntToStr(x_row),x_col+IntToStr(x_row)].Value := SimpleRoundTo(x_cost / x_NumPax,0);
                      x_AllCostZero := x_AllCostZero + 1;
                      if x_StartRow = 0 then
                        x_StartRow := x_row;
                    end;

                  x_col := NextColumn(x_col);

                  x_NumPax := x_NumPax + 1;
                end;

              x_num := x_num + 1;

              if x_AllCostZero > 0 then
                begin
                  x_row := x_row + 1;
                  //x_SSCostZero := x_SSCostZero + 1;
                end
              else
                Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := '';

            end;

          if (x_row - x_StartRow > 1) and (x_StartRow > 0) then
            begin

              Range['F'+IntToStr(x_row),'X'+IntToStr(x_row)].Font.Size := '9';
              Range['F'+IntToStr(x_row),'X'+IntToStr(x_row)].NumberFormat := '#,##0';
              Range['F'+IntToStr(x_row),'X'+IntToStr(x_row)].Font.FontStyle := 'Bold';
              Range['F'+IntToStr(x_row),'X'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlThin;

              x_col := 'F';
              x_numPax := 1;

              while x_NumPax <= 10 do
                begin

                  Range[x_col+IntToStr(x_row),x_col+IntToStr(x_row)].Value := '=SUM(' + x_col + IntToStr(x_StartRow) + ':' + x_col + IntToStr(x_row-1) + ')';

                  x_col := NextColumn(x_col);

                  x_NumPax := x_NumPax + 1;
                end;

            end;

        end;

    end;

end;

function TSightSeeingPriceListForm.GetCostBreakup(x_services_id, x_Pax: integer; x_wef: TDateTime): string;
var
  GpSds: TSQLDataSet;
  x_Comment: string;
  x_TransportCost: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT TransportCost, CommissionOnTransport, ParkingCost, ' +
    'MiscCost, GuideCost, EntranceCost, ServiceTax, Margin FROM TmpSightSeeingPrices ' +
    'WHERE Services_id = ' + IntToStr(x_services_id) + ' ' +
    'AND NumPax = ' + IntToStr(x_Pax) + ' ' +
    'AND wef = ''' + FormatDateTime('mm/dd/yyyy', x_wef) + ''' ';
  GpSds.Open;

  x_comment := '';
  if (not GpSds.EOF) then
    begin

      x_Comment := x_Comment + '[Incl. Tax & Margin] ' + chr(10);

      x_TransportCost := 0.0;

      if (GpSds['TransportCost'] <> null) and (GpSds['TransportCost'] <> 0) then
        x_TransportCost := x_TransportCost + GpSds['TransportCost'];

      if (GpSds['ParkingCost'] <> null) and (GpSds['ParkingCost'] <> 0) then
        x_TransportCost := x_TransportCost + GpSds['ParkingCost'];

      if (x_TransportCost <> 0) then
        x_Comment := x_Comment + 'Transport: ' + FormatFloat('#,##0', x_TransportCost) + chr(10);

      if (GpSds['CommissionOnTransport'] <> null) and (GpSds['CommissionOnTransport'] <> 0) then
        x_Comment := x_Comment + 'Commission: ' + FormatFloat('#,##0', GpSds['CommissionOnTransport']) + chr(10);

      if (GpSds['GuideCost'] <> null) and (GpSds['GuideCost'] <> 0) then
        x_Comment := x_Comment + 'Guide: ' + FormatFloat('#,##0', GpSds['GuideCost']) + chr(10);

      if (GpSds['MiscCost'] <> null) and (GpSds['MiscCost'] <> 0) then
        x_Comment := x_Comment + 'Misc: ' + FormatFloat('#,##0', GpSds['MiscCost']) + chr(10);

      if (GpSds['EntranceCost'] <> null) and (GpSds['EntranceCost'] <> 0) then
        x_Comment := x_Comment + 'Entrance: ' + FormatFloat('#,##0', GpSds['EntranceCost']) + chr(10);

//      if (GpSds['ServiceTax'] <> null) and (GpSds['ServiceTax'] <> 0) then
//        x_Comment := x_Comment + 'ServiceTax: ' + FormatFloat('#,##0', GpSds['ServiceTax']) + chr(10);

//      if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0) then
//        x_Comment := x_Comment + 'Margin: ' + FormatFloat('#,##0', GpSds['Margin']) + chr(10);

    end;

  GpSds.Free;

  Result := x_Comment;

end;



function TSightSeeingPriceListForm.GetCost(x_services_id, x_Pax: integer; x_wef: TDateTime; x_option: integer): double;
var
  GpSds: TSQLDataSet;
  x_Cost: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if x_option = 1 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT Cost FROM TmpSightSeeingPrices ' +
        'WHERE Services_id = ' + IntToStr(x_services_id) + ' ' +
        'AND NumPax = ' + IntToStr(x_Pax) + ' ' +
        'AND wef = ''' + FormatDateTime('mm/dd/yyyy', x_wef) + ''' ';
      GpSds.Open;
    end
  else if x_option = 11 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT ROUND(COALESCE(TransportCost/ExchRate,0.0) - COALESCE(CommissionOnTransport/ExchRate,0.0) + COALESCE(ParkingCost/ExchRate,0.0),0) As Cost FROM TmpSightSeeingPrices ' +
        'WHERE Services_id = ' + IntToStr(x_services_id) + ' ' +
        'AND NumPax = ' + IntToStr(x_Pax) + ' ' +
        'AND wef = ''' + FormatDateTime('mm/dd/yyyy', x_wef) + ''' ';
      GpSds.Open;
    end
  else if x_option = 12 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT ROUND(GuideCost/ExchRate,0) As Cost FROM TmpSightSeeingPrices ' +
        'WHERE Services_id = ' + IntToStr(x_services_id) + ' ' +
        'AND NumPax = ' + IntToStr(x_Pax) + ' ' +
        'AND wef = ''' + FormatDateTime('mm/dd/yyyy', x_wef) + ''' ';
      GpSds.Open;
    end
  else if x_option = 13 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT ROUND(MiscCost/ExchRate,0) As Cost FROM TmpSightSeeingPrices ' +
        'WHERE Services_id = ' + IntToStr(x_services_id) + ' ' +
        'AND NumPax = ' + IntToStr(x_Pax) + ' ' +
        'AND wef = ''' + FormatDateTime('mm/dd/yyyy', x_wef) + ''' ';
      GpSds.Open;
    end
  else if x_option = 14 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT ROUND(EntranceCost/ExchRate,0) As Cost FROM TmpSightSeeingPrices ' +
        'WHERE Services_id = ' + IntToStr(x_services_id) + ' ' +
        'AND NumPax = ' + IntToStr(x_Pax) + ' ' +
        'AND wef = ''' + FormatDateTime('mm/dd/yyyy', x_wef) + ''' ';
      GpSds.Open;
    end;

  x_cost := 0.0;
  if (not GpSds.EOF) and (GpSds['Cost'] <> null) then
    x_Cost := GpSds['Cost'];

  GpSds.Free;

  Result := x_Cost;

end;


procedure TSightSeeingPriceListForm.City1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintRangeReport(2,1);
  except
  end;

end;

procedure TSightSeeingPriceListForm.Services_PriceList(x_transfer: boolean; x_option: integer);
var
  x_StateStr, x_FileName, x_Margin, x_OneToTen, x_TransferStr, x_Recommended, x_Misc, x_Guide, x_EntranceFees, x_Transport, x_Meet: string;
  x_currencies_id, x_NumPax, x_OptionOrder, x_OptionIndia: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\Sightseeing_PriceList_Breakup';
  if x_transfer = true then
     x_FileName := g_ReportDir + '\Transfer_PriceList_Breakup';

  if x_option = 2 then
    x_FileName := x_FileName + '_NoMargin'
  else if x_option = 3 then
    x_FileName := x_FileName + '_1_to_10'
  else if x_option = 4 then
    x_FileName := x_FileName + '_Stacked_1_to_10';

  x_StateStr := GetStateStr;

  x_Margin := '0';
  if (x_option = 1) or (x_option = 3) or (x_option = 4) then
    x_Margin := '1';

  x_currencies_id := 13;
  if cxCurrencyLcmb.EditValue <> null then
    x_currencies_id := cxCurrencyLcmb.EditValue;

  if x_option = 2 then
    x_currencies_id := 13;

  if trim(cxNumPaxEdit.Text) = '' then
    x_NumPax := 2
  else
    x_NumPax := StrToInt(trim(cxNumPaxEdit.Text));

  x_OneToTen := '0';
  if (x_option = 3) or (x_option = 4) then
    x_OneToTen := '1';

  x_TransferStr := '0';
  if x_transfer = true then
    x_TransferStr := '1';

  x_Recommended := '0';
  if cxRecoCkb.Checked then
    x_Recommended := '1';

  x_Misc := '0';
  if cxMiscCkb.Checked then
    x_Misc := '1';

  x_Guide := '0';
  if cxGuideCkb.Checked then
    x_Guide := '1';

  x_EntranceFees := '0';
  if cxEntranceCkb.Checked then
    x_EntranceFees := '1';

  x_Transport := '0';
  if cxTransportCkb.Checked then
    x_Transport := '1';

  x_Meet := '0';
  if cxMeetCkb.Checked then
    x_Meet := '1';

  x_OptionOrder := 2;
  if cxStatewiseCkb.Checked then
    x_OptionOrder := 1;

  x_OptionIndia := 1;
  if not cxIndiaCkb.Checked then
    x_OptionIndia := 2;

  if (x_option = 1) or (x_option = 2) or (x_option = 3) then
    GST_Sightseeing_PriceList (scExcelExport,  cxFromDateEdit.Date,  x_NumPax, x_OneToTen, x_TransferStr, x_Recommended,
                               x_Misc, x_Guide, x_EntranceFees, x_Transport, x_Meet, x_Currencies_id, x_StateStr, x_Margin,
                               x_FileName, x_option, x_OptionOrder, x_OptionIndia)
  else
    GST_Sightseeing_LineWise_PriceList (scExcelExport, cxFromDateEdit.Date, x_NumPax, x_OneToTen, x_TransferStr, x_Recommended,
                                        x_Misc, x_Guide, x_EntranceFees, x_Transport, x_Meet, x_Currencies_id, x_StateStr, x_Margin,
                                        x_FileName, x_option, x_OptionOrder, x_OptionIndia);

  ShowMessage('Saved as ' + x_FileName);

end;


procedure TSightSeeingPriceListForm.ServicesDetails_PriceList;
var
  x_StateStr, x_FileName, x_Margin, x_TransferStr, x_Recommended, x_Meet: string;
  x_currencies_id, x_OptionOrder, x_OptionIndia: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\Misc_Guide_Entrance_Transport_PriceList';

  x_StateStr := GetStateStr;

  x_Margin := '1';

  x_currencies_id := 13;
  if cxCurrencyLcmb.EditValue <> null then
    x_currencies_id := cxCurrencyLcmb.EditValue;

  x_TransferStr := '0';

  x_Recommended := '0';
  if cxRecoCkb.Checked then
    x_Recommended := '1';

  x_Meet := '0';
  if cxMeetCkb.Checked then
    x_Meet := '1';

  x_OptionOrder := 2;
  if cxStatewiseCkb.Checked then
    x_OptionOrder := 1;

  x_OptionIndia := 1;
  if not cxIndiaCkb.Checked then
    x_OptionIndia := 2;

  GST_SightseeingDetails_PriceList (scExcelExport, cxFromDateEdit.Date, x_Recommended, x_Meet, 
                                    x_Currencies_id, x_StateStr, x_Margin, x_FileName, x_OptionOrder, x_OptionIndia);

  ShowMessage('Saved as ' + x_FileName);

end;

function TSightSeeingPriceListForm.GetStateStr: string;
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



procedure TSightSeeingPriceListForm.CostBreakup1Click(Sender: TObject);
begin
  Services_PriceList(false, 1);
end;

procedure TSightSeeingPriceListForm.CostBreakupWithoutMargin1Click(
  Sender: TObject);
begin
  Services_PriceList(false, 2);
end;

procedure TSightSeeingPriceListForm.Cost1to101Click(Sender: TObject);
begin
  Services_PriceList(false, 3);
end;

procedure TSightSeeingPriceListForm.CostBreakup2Click(Sender: TObject);
begin
  Services_PriceList(true, 1);
end;

procedure TSightSeeingPriceListForm.CostBreakupWithoutMargin2Click(
  Sender: TObject);
begin
  Services_PriceList(true, 2);
end;

procedure TSightSeeingPriceListForm.Cost1to102Click(Sender: TObject);
begin
  Services_PriceList(true, 3);
end;

procedure TSightSeeingPriceListForm.cxCurrencyLcmbPropertiesEditValueChanged(
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

procedure TSightSeeingPriceListForm.Cost1to10Stacked1Click(
  Sender: TObject);
begin
  Services_PriceList(false, 4);
end;

procedure TSightSeeingPriceListForm.Cost1to10Stacked2Click(
  Sender: TObject);
begin
  Services_PriceList(true, 4);
end;

procedure TSightSeeingPriceListForm.MiscGuideEntranceDetails1Click(
  Sender: TObject);
begin
  ServicesDetails_PriceList;
end;

end.
