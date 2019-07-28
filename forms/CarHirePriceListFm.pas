unit CarHirePriceListFm;

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
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls,
  cxGroupBox;

type
  TCarHirePriceListForm = class(TForm)
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
    StatewiseP2P1: TMenuItem;
    CitywiseP2P1: TMenuItem;
    N2: TMenuItem;
    StatewiseCityGroups1: TMenuItem;
    CitywiseCityGroups1: TMenuItem;
    CostinRange1101: TMenuItem;
    StatewiseP2P2: TMenuItem;
    CitywiseP2P2: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxCurrencyLcmb: TcxLookupComboBox;
    cxDetailsCkb: TcxCheckBox;
    cxMarginCkb: TcxCheckBox;
    cxMarginEdit: TcxMaskEdit;
    cxServiceTaxCkb: TcxCheckBox;
    Panel1: TPanel;
    CloseBtn: TcxButton;
    cxButton1: TcxButton;
    ExchRateLabel: TLabel;
    N3: TMenuItem;
    P2P1: TMenuItem;
    CostBreakup1: TMenuItem;
    CostBreakupWithoutMargin1: TMenuItem;
    Cost1to101: TMenuItem;
    N4: TMenuItem;
    CityGroups1: TMenuItem;
    CostBreakup2: TMenuItem;
    CostBreakupWithoutMargin2: TMenuItem;
    Cost1to102: TMenuItem;
    N5: TMenuItem;
    PerKm1: TMenuItem;
    CostBreakup3: TMenuItem;
    CostBreakupWithoutMargin3: TMenuItem;
    Cost1to103: TMenuItem;
    cxStatewiseCkb: TcxCheckBox;
    cxIndiaCkb: TcxCheckBox;
    N6: TMenuItem;
    Cost1to10SingleLine1: TMenuItem;
    N7: TMenuItem;
    Cost1to10SingleLine2: TMenuItem;
    N8: TMenuItem;
    Cost1to10SingleLine3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Statewise1Click(Sender: TObject);
    procedure Citywise1Click(Sender: TObject);
    procedure PrintReport(x_option: integer; x_sightseeing: integer);
    procedure PrintReportP2P(x_option: integer; x_sightseeing: integer; x_DisplayOption: integer);
    procedure PrintReportCG(x_option: integer; x_sightseeing: integer);
    procedure PrintReportToExcel (GpSds: TSQLDataSet);
    procedure PrintReportToExcelP2P (GpSds: TSQLDataSet; x_DisplayOption: integer);
    procedure PrintReportToExcelCG (GpSds: TSQLDataSet);
    procedure PrintNextState(x_State: string; var x_row: integer);
    procedure PrintNextStateP2P(x_State: string; var x_row: integer);
    procedure PrintNextStateCG(x_State: string; var x_row: integer);
    procedure PrintNextCity(x_City: string; var x_row: integer);
    procedure PrintNextCityP2P(x_FromCity, x_ToCity: string; var x_row: integer);
    procedure PrintNextCityCG(x_CarHireGroup: string; var x_row: integer);
    procedure PrintNextAgent(x_Agents_id: integer; var x_row: integer; x_option: integer);
    procedure PrintNextAgentP2P(x_Agents_id: integer; var x_row: integer; x_option: integer);
    procedure PrintNextAgentCG(x_Agents_id: integer; var x_row: integer; x_option: integer);
    procedure PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
    procedure PrintRecordP2P(GpSds: TSQLDataSet; var x_row: integer; x_option: integer; x_DisplayOption: integer);
    procedure PrintRecordCG(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
    procedure CloseBtnClick(Sender: TObject);
    function GetCurrencyCode(x_Currencies_id: integer): string;
    function GetDefaultMargin: double;
    procedure StatewiseP2P1Click(Sender: TObject);
    procedure CitywiseP2P1Click(Sender: TObject);
    procedure StatewiseCityGroups1Click(Sender: TObject);
    procedure CitywiseCityGroups1Click(Sender: TObject);
    procedure StatewiseP2P2Click(Sender: TObject);
    procedure CitywiseP2P2Click(Sender: TObject);
    procedure cxCurrencyLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure CostBreakup1Click(Sender: TObject);
    procedure CostBreakupWithoutMargin1Click(Sender: TObject);
    procedure Cost1to101Click(Sender: TObject);
    procedure CostBreakup2Click(Sender: TObject);
    procedure CostBreakupWithoutMargin2Click(Sender: TObject);
    procedure Cost1to102Click(Sender: TObject);
    procedure CostBreakup3Click(Sender: TObject);
    procedure CostBreakupWithoutMargin3Click(Sender: TObject);
    procedure Cost1to103Click(Sender: TObject);
    procedure Cost1to10SingleLine1Click(Sender: TObject);
    procedure Cost1to10SingleLine2Click(Sender: TObject);
    procedure Cost1to10SingleLine3Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarP2P_PriceList(x_option: integer);
    procedure CarCG_PriceList(x_option: integer);
    procedure CarPerKm_PriceList(x_option: integer);
    function GetStateStr: string;
  public
    { Public declarations }
  end;

var
  CarHirePriceListForm: TCarHirePriceListForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm, GST_Car_P2P_ExcelReportsUt,
  GST_Car_CG_ExcelReportsUt, GST_Car_PerKm_ExcelReportsUt;

{$R *.dfm}

procedure TCarHirePriceListForm.FormCreate(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  Height := 600;
  Width := 680;

  cxFromDateEdit.Date := StrToDate('01/01/' + IntToStr(YearOf(Date)));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT FromDate = MAX(Wef) FROM CarHire ';
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['FromDate'] <> null) then
    cxFromDateEdit.Date := GpSds['FromDate'];

  GpSds.Free;

  StateCds.Active := False;
  StateCds.Active := True;

  BackOfficeDataModule.CurrenciesCds.Open;

  cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  cxMarginEdit.Text := FloatToStr(GetDefaultMargin);

  ExchRateLabel.Caption := '';

end;

function TCarHirePriceListForm.GetDefaultMargin: double;
var
  GpSds: TSQLDataSet;
  x_Margin: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Margin FROM FitMargins ' +
    'WHERE TrsType = 5 ';
  GpSds.Open;

  x_Margin := 0.0;
  if (not GpSds.EOF) and (GpSds['Margin'] <> null) then
    x_Margin := GpSds['Margin'];

  GpSds.Free;

  Result := x_Margin;

end;


procedure TCarHirePriceListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCarHirePriceListForm.FormDestroy(Sender: TObject);
begin
  CarHirePriceListForm := nil;
end;

procedure TCarHirePriceListForm.Statewise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(1,0);
  except
  end;
end;

procedure TCarHirePriceListForm.Citywise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(2,0);
  except
  end;

end;

procedure TCarHirePriceListForm.PrintReport(x_option: integer; x_sightseeing: integer);
var
  x_StateStr, x_Margin, x_Markup, x_ServiceTax: string;
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

  if cxCurrencyLcmb.EditValue = null then
    cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  x_Markup := '0';
  if trim(cxMarginEdit.Text) > '' then
    x_Markup := trim(cxMarginEdit.Text);

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := ' EXEC p_CarHirePriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_MarkUp + ',' + x_ServiceTax;
  GpSds.Open;

  PrintReportToExcel(GpSds);

  GpSds.Free;

end;

procedure TCarHirePriceListForm.PrintReportToExcel (GpSds: TSQLDataSet);
var
  x_PrevState, x_PrevCity, x_CurrencyCode, x_FileName: string;
  x_row, x_option, x_PrevDefaultAgents_id: integer;
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
      Range['D1','T1'].ColumnWidth := 10;

      Range['A1','A1'].Value := 'Car Hire Price Per Km as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

      Range['A3','A3'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);

      Range['E3','T4'].Font.FontStyle := 'Bold';
      Range['E3','T4'].Font.Size := '10';

      if cxDetailsCkb.Checked then
        begin

          Range['F3','F3'].Value := 'Wef';
          Range['H3','H3'].Value := 'Max Pax';
          Range['I3','I3'].Value := 'Rate Per Km';
          Range['J3','J3'].Value := 'Min Km';
          Range['K3','K3'].Value := 'Cost of Hire';
          Range['L3','L3'].Value := 'Night Halt';
          Range['M3','M3'].Value := 'Toll Tax';
          Range['N3','N3'].Value := 'Commisssion';
          Range['O3','O3'].Value := 'Serv Tax';
          Range['P3','P3'].Value := 'Total (Rs.)';

          if cxMarginCkb.Checked then
            begin
              Range['Q3','Q3'].Value := 'Mark-up (%)';
              Range['R3','R3'].Value := 'Final (Rs.)';
              Range['S3','S3'].Value := 'Tour Serv Tax (%)';
              Range['T3','T3'].Value := 'Final with ST';
            end;

          if cxCurrencyLcmb.EditValue = null then
            cxCurrencyLcmb.EditValue := GetDefaultCurrency;

          x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

          if cxCurrencyLcmb.EditValue <> 13 then
            begin
              Range['T3','T3'].Value := x_CurrencyCode;
              Range['E3','E3'].Value := x_CurrencyCode;
            end;

        end;

      Range['E3','E3'].Value := x_CurrencyCode;

    end;

  x_PrevState := '--';
  x_PrevCity := '--';
  x_PrevDefaultAgents_id := -1;
  x_row := 4;

  GpSds.First;

  while not GpSds.Eof do
    begin

      // State
      if (not GpSds.EOF) and (GpSds['State'] <> x_PrevState) then
        begin
          PrintNextState(GpSds['State'], x_row);
          x_PrevDefaultAgents_id := -1;
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
          x_PrevDefaultAgents_id := -1;
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevCity := GpSds['City'];
        end;

      // Service
      if (not GpSds.EOF) and (GpSds['DefaultAgents_id'] <> x_PrevDefaultAgents_id) then
        begin
          x_option := 1;
          if x_NewCity then
            x_option := 2;
          PrintNextAgent(GpSds['DefaultAgents_id'], x_row, x_option);
          PrintRecord(GpSds, x_row, 1);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRecord(GpSds, x_row, 2);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevDefaultAgents_id := GpSds['DefaultAgents_id'];
        end;

      GpSds.Next;

    end;

//  scExcelExport.ExcelWorkSheet.Range['AN5','AP5'].Merge(3);

  x_FileName := g_ReportDir + '\CarHireRates.xls';

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

function TCarHirePriceListForm.GetCurrencyCode(x_Currencies_id: integer): string;
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


procedure TCarHirePriceListForm.PrintNextState(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure TCarHirePriceListForm.PrintNextCity(x_City: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_City;
    end;

end;

procedure TCarHirePriceListForm.PrintNextAgent(x_Agents_id: integer; var x_row: integer; x_option: integer);
var
  GpSds: TSQLDataSet;
  x_Agent: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT LTRIM(RTRIM(Organisation)) + '', '' + City  AS Organisation FROM Addressbook WHERE Addressbook_id = ' + IntToStr(x_Agents_id);
  GpSds.Open;

  x_Agent := '';
  if (not GpSds.Eof) and (GpSds['Organisation'] <> null) then
    x_Agent := GpSds['Organisation'];

  if x_option = 1 then
    x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.Size := '8';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_Agent;
    end;

end;


procedure TCarHirePriceListForm.PrintRecordP2P(GpSds: TSQLDataSet; var x_row: integer; x_option: integer; x_DisplayOption: integer);
var
  x_CurrencyCode,x_ServiceTax: string;
  Gp2Sds: TSQLDataSet;
begin

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'R'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0';
      Range['G'+IntToStr(x_row),'R'+IntToStr(x_row)].NumberFormat := '#,##0';

      if x_DisplayOption = 1 then
        begin

          if GpSds['Vehicle'] <> null then
            Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

          if GpSds['TotalCurr'] <> null then
            begin
              Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];
              x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);
              if cxCurrencyLcmb.EditValue <> 13 then
                Range['E3','E3'].Value := x_CurrencyCode;
            end;

          if cxDetailsCkb.Checked then
            begin

              if GpSds['Wef'] <> null then
                Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);

              if GpSds['ServiceTaxPerc'] <> null then
                Range['M4','M4'].Value := GpSds['ServiceTaxPerc'];

              if GpSds['Margin'] <> null then
                Range['O4','O4'].Value := GpSds['Margin'];

              if GpSds['TourServiceTaxPerc'] <> null then
                Range['Q4','Q4'].Value := GpSds['TourServiceTaxPerc'];

              if GpSds['ToPax'] <> null then
                Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['ToPax'];

              if (GpSds['CostTransport'] <> null) and (GpSds['CostTransport'] <> 0.0) then
                Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['CostTransport'];

              if (GpSds['CostRep'] <> null) and (GpSds['CostRep'] <> 0.0) then
                Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['CostRep'];

              if (GpSds['CostGuide'] <> null) and (GpSds['CostGuide'] <> 0.0) then
                Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['CostGuide'];

              if (GpSds['Commission'] <> null) and (GpSds['Commission'] <> 0) then
                Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := GpSds['Commission'];

                Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value :=
                  '=(SUM(I' + IntToStr(x_row) + ':K' + IntToStr(x_row) + ') - L' + IntToStr(x_row) + ') * (M4/100)';

              if GpSds['TotalRs'] <> null then
                Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value :=
                  '=(SUM(I' + IntToStr(x_row) + ':K' + IntToStr(x_row) + ') - L' + IntToStr(x_row) + ' + M' + IntToStr(x_row) + ') ';


              if cxMarginCkb.Checked then
                begin

                  if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
                    Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value := '=N' + IntToStr(x_row) + '*' + FloatToStr(GpSds['Margin']/100);

                  Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := '=N' + IntToStr(x_row) + '+ O' + IntToStr(x_row);

                  if cxCurrencyLcmb.EditValue <> 13 then
                    begin
                      Range['R4','R4'].Value := GpSds['CH_ExchRate'];
    //                  Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + '/Q4' ;
                    end;

                  if (GpSds['TotalCurr'] <> null) and (GpSds['TotalCurr'] <> 0.0) then
                    Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := GpSds['TotalCurr'];

                  if cxServiceTaxCkb.Checked then
                    begin

                      if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                        Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + ' * $Q$4/100';

                      Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].NumberFormat := '#,##0';

                    end;

                end;

            end;


          if GpSds['Vehicles_id'] <> null then
            Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := GpSds['Vehicles_id'];

          if GpSds['DefaultAgents_id'] <> null then
            Range['BK'+IntToStr(x_row),'BK'+IntToStr(x_row)].Value := GpSds['DefaultAgents_id'];

          if GpSds['FromCities_id'] <> null then
            Range['BL'+IntToStr(x_row),'BL'+IntToStr(x_row)].Value := GpSds['FromCities_id'];

          if GpSds['ToCities_id'] <> null then
            Range['BM'+IntToStr(x_row),'BM'+IntToStr(x_row)].Value := GpSds['ToCities_id'];

        end
      else
        begin

          if GpSds['Vehicle'] <> null then
            Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

          if GpSds['TotalCurr'] <> null then
            begin
              Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];
              x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);
              if cxCurrencyLcmb.EditValue <> 13 then
                Range['E3','E3'].Value := x_CurrencyCode;
            end;

          if GpSds['Wef'] <> null then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);

          if x_option = 1 then
            begin

              Gp2Sds.Close;
              Gp2Sds.CommandText := 'SELECT * FROM TmpTransferPrices_PaxRange ' +
                'WHERE FromCities_id = ' + IntToStr(GpSds['FromCities_id']) + ' ' +
                'AND ToCities_id = ' + IntToStr(GpSds['ToCities_id']) + ' ' +
                'AND DefaultAgents_id = ' + IntToStr(GpSds['DefaultAgents_id']);
              Gp2Sds.Open;

              if (not Gp2Sds.Eof) then
                begin
                  if Gp2Sds['Cost_1'] <> null then
                    Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := Gp2Sds['Cost_1'];
                  if Gp2Sds['Cost_2'] <> null then
                    Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := Gp2Sds['Cost_2'];
                  if Gp2Sds['Cost_3'] <> null then
                    Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := Gp2Sds['Cost_3'];
                  if Gp2Sds['Cost_4'] <> null then
                    Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := Gp2Sds['Cost_4'];
                  if Gp2Sds['Cost_5'] <> null then
                    Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := Gp2Sds['Cost_5'];
                  if Gp2Sds['Cost_6'] <> null then
                    Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := Gp2Sds['Cost_6'];
                  if Gp2Sds['Cost_7'] <> null then
                    Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := Gp2Sds['Cost_7'];
                  if Gp2Sds['Cost_8'] <> null then
                    Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value := Gp2Sds['Cost_8'];
                  if Gp2Sds['Cost_9'] <> null then
                    Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := Gp2Sds['Cost_9'];
                  if Gp2Sds['Cost_10'] <> null then
                    Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := Gp2Sds['Cost_10'];

                end;

            end;

        end;

    end;

  Gp2Sds.Free;


end;


procedure TCarHirePriceListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TCarHirePriceListForm.StatewiseP2P1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReportP2P(1,0,1);
  except
  end;

end;

procedure TCarHirePriceListForm.PrintReportP2P(x_option: integer; x_sightseeing: integer; x_DisplayOption: integer);
var
  x_StateStr, x_Margin, x_Markup, x_ServiceTax: string;
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

  if cxCurrencyLcmb.EditValue = null then
    cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  x_Markup := '0';
  if trim(cxMarginEdit.Text) > '' then
    x_Markup := trim(cxMarginEdit.Text);

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := ' EXEC p_CarHire_P2P_PriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_MarkUp + ',' + x_ServiceTax;
  GpSds.Open;

  PrintReportToExcelP2P(GpSds, x_DisplayOption);

  GpSds.Free;

end;

procedure TCarHirePriceListForm.PrintReportCG(x_option: integer; x_sightseeing: integer);
var
  x_StateStr, x_CatStr, x_Margin, x_OptionVoucher, x_Misc, x_Markup, x_ServiceTax: string;
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

  if cxCurrencyLcmb.EditValue = null then
    cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  x_Markup := '0';
  if trim(cxMarginEdit.Text) > '' then
    x_Markup := trim(cxMarginEdit.Text);

  x_ServiceTax := '0';
  if cxServiceTaxCkb.Checked then
    x_ServiceTax := '1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := ' EXEC p_CarHire_CityGroup_PriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_MarkUp + ',' + x_ServiceTax;
  GpSds.Open;

  PrintReportToExcelCG(GpSds);

  GpSds.Free;

end;


procedure TCarHirePriceListForm.PrintReportToExcelP2P (GpSds: TSQLDataSet; x_DisplayOption: integer);
var
  x_PrevState, x_PrevFromCity, x_PrevToCity, x_CurrencyCode, x_FileName: string;
  x_row, x_option, x_PrevDefaultAgents_id: integer;
  x_NewCity: boolean;
begin

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.WorksheetName:='Prices';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;


  if x_DisplayOption = 1 then
    begin
      with scExcelExport.ExcelWorkSheet do
        begin
          Range['A1','A1'].ColumnWidth := 15;
          Range['B1','B1'].ColumnWidth := 30;
          Range['C1','C1'].ColumnWidth := 30;
          Range['D1','O1'].ColumnWidth := 10;

          Range['A1','A1'].Value := 'Car Hire Price Point To Point as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
          Range['A1','A1'].Font.FontStyle := 'Bold';
          Range['A1','A1'].Font.Size := '10';

          Range['A3','A3'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);

          Range['E3','T4'].Font.FontStyle := 'Bold';
          Range['E3','T4'].Font.Size := '10';

          if cxDetailsCkb.Checked then
            begin

              Range['F3','F3'].Value := 'Wef';
              Range['H3','H3'].Value := 'Max Pax';
              Range['I3','I3'].Value := 'Cost of Hire';
              Range['J3','J3'].Value := 'Rep';
              Range['K3','K3'].Value := 'Guide';
              Range['L3','L3'].Value := 'Commission';
              Range['M3','M3'].Value := 'Serv Tax';
              Range['N3','N3'].Value := 'Total (Rs.)';

              if cxMarginCkb.Checked then
                begin
                  Range['O3','O3'].Value := 'Mark-up (%)';
                  Range['P3','P3'].Value := 'Final (Rs.)';
                  Range['Q3','Q3'].Value := 'Serv Tax (%)';
                  Range['R3','R3'].Value := 'Final with ST';
                end;

              if cxCurrencyLcmb.EditValue = null then
                cxCurrencyLcmb.EditValue := GetDefaultCurrency;

              x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

              if cxCurrencyLcmb.EditValue <> 13 then
                Range['R3','R3'].Value := x_CurrencyCode;

            end;

          Range['E3','E3'].Value := x_CurrencyCode;

        end;

    end

  else

    begin
      with scExcelExport.ExcelWorkSheet do
        begin
          Range['A1','A1'].ColumnWidth := 15;
          Range['B1','B1'].ColumnWidth := 30;
          Range['C1','C1'].ColumnWidth := 30;
          Range['D1','O1'].ColumnWidth := 10;

          Range['A1','A1'].Value := 'Car Hire Price Point To Point as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
          Range['A1','A1'].Font.FontStyle := 'Bold';
          Range['A1','A1'].Font.Size := '10';

          Range['A3','A3'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);

          Range['E3','T4'].Font.FontStyle := 'Bold';
          Range['E3','T4'].Font.Size := '10';

          if cxCurrencyLcmb.EditValue = null then
            cxCurrencyLcmb.EditValue := GetDefaultCurrency;

          x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

          Range['E3','E3'].Value := x_CurrencyCode;

          Range['F3','F3'].Value := 'Wef';

          Range['H3','H3'].Value := 'Cost 1';
          Range['I3','I3'].Value := 'Cost 2';
          Range['J3','J3'].Value := 'Cost 3';
          Range['K3','K3'].Value := 'Cost 4';
          Range['L3','L3'].Value := 'Cost 5';
          Range['M3','M3'].Value := 'Cost 6';
          Range['N3','N3'].Value := 'Cost 7';
          Range['O3','O3'].Value := 'Cost 8';
          Range['P3','P3'].Value := 'Cost 9';
          Range['Q3','Q3'].Value := 'Cost 10';

        end;
    end;

  x_PrevState := '--';
  x_PrevFromCity := '--';
  x_PrevToCity := '--';
  x_PrevDefaultAgents_id := -1;
  x_row := 4;

  GpSds.First;

  while not GpSds.Eof do
    begin

      // State
      if (not GpSds.EOF) and (GpSds['State'] <> x_PrevState) then
        begin
          PrintNextStateP2P(GpSds['State'], x_row);
          x_PrevDefaultAgents_id := -1;
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevState := GpSds['State'];
        end;

      // City
      x_NewCity := false;
      if (not GpSds.EOF) and ((GpSds['FromCity'] <> x_PrevFromCity) or (GpSds['ToCity'] <> x_PrevToCity)) then
        begin
          PrintNextCityP2P(GpSds['FromCity'], GpSds['ToCity'], x_row);
          x_NewCity := True;
          x_PrevDefaultAgents_id := -1;
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevFromCity := GpSds['FromCity'];
          x_PrevToCity := GpSds['ToCity'];
        end;

      // Service
      if (not GpSds.EOF) and (GpSds['DefaultAgents_id'] <> x_PrevDefaultAgents_id) then
        begin
          x_option := 1;
          if x_NewCity then
            x_option := 2;
          PrintNextAgentP2P(GpSds['DefaultAgents_id'], x_row, x_option);
          PrintRecordP2P(GpSds, x_row, 1, x_DisplayOption);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRecordP2P(GpSds, x_row, 2, x_DisplayOption);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevDefaultAgents_id := GpSds['DefaultAgents_id'];
        end;

      GpSds.Next;

    end;

//  scExcelExport.ExcelWorkSheet.Range['AN5','AP5'].Merge(3);

  x_FileName := g_ReportDir + '\CarHireRates_P2P.xls';

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

procedure TCarHirePriceListForm.PrintNextStateP2P(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure TCarHirePriceListForm.PrintNextCityP2P(x_FromCity, x_ToCity: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_FromCity + '-' + x_ToCity;
    end;

end;

procedure TCarHirePriceListForm.PrintNextAgentP2P(x_Agents_id: integer; var x_row: integer; x_option: integer);
var
  GpSds: TSQLDataSet;
  x_Agent: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT LTRIM(RTRIM(Organisation)) + '', '' + City  AS Organisation FROM Addressbook WHERE Addressbook_id = ' + IntToStr(x_Agents_id);
  GpSds.Open;

  x_Agent := '';
  if (not GpSds.Eof) and (GpSds['Organisation'] <> null) then
    x_Agent := GpSds['Organisation'];

  if x_option = 1 then
    x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.Size := '8';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_Agent;
    end;

end;


procedure TCarHirePriceListForm.PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
var
  x_CurrencyCode: string;
begin

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['BJ1','BL1'].EntireColumn.Hidden := True;

      Range['D'+IntToStr(x_row),'T'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0';
      Range['G'+IntToStr(x_row),'T'+IntToStr(x_row)].NumberFormat := '#,##0';

      if GpSds['ServiceTaxPerc'] <> null then
        Range['O4','O4'].Value := GpSds['ServiceTaxPerc'];

      if GpSds['Margin'] <> null then
        Range['Q4','Q4'].Value := GpSds['Margin'];

      if GpSds['TourServiceTaxPerc'] <> null then
        Range['S4','S4'].Value := GpSds['TourServiceTaxPerc'];

      if GpSds['Vehicle'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

      if GpSds['TotalCurr'] <> null then
        begin
          Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];
          x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);
          if cxCurrencyLcmb.EditValue <> 13 then
            Range['E3','E3'].Value := x_CurrencyCode;
        end;

      if cxDetailsCkb.Checked then
        begin

          if GpSds['wef'] <> null then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['wef']);

          if GpSds['ToPax'] <> null then
            Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['ToPax'];

          if (GpSds['CostPerKm'] <> null) and (GpSds['CostPerKm'] <> 0.0) then
            Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['CostPerKm'];

          if (GpSds['MinimumKm'] <> null) and (GpSds['MinimumKm'] <> 0) then
            Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['MinimumKm'];

          Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=I' + IntToStr(x_row) + '*J' + IntToStr(x_row);

          if (GpSds['CostNightHalt'] <> null) and (GpSds['CostNightHalt'] <> 0) then
            Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := GpSds['CostNightHalt'];

          if (GpSds['TollTax'] <> null) and (GpSds['TollTax'] <> 0) then
            Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := GpSds['TollTax'];

          if (GpSds['Commission'] <> null) and (GpSds['Commission'] <> 0) then
            Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := GpSds['Commission'];

            Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value :=
              '=(SUM(K' + IntToStr(x_row) + ':M' + IntToStr(x_row) + ') - N' + IntToStr(x_row) + ') * (O4/100)';

          if GpSds['TotalRs'] <> null then
            Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value :=
              '=(SUM(K' + IntToStr(x_row) + ':M' + IntToStr(x_row) + ') - N' + IntToStr(x_row) + ' + O' + IntToStr(x_row) + ') ';

          if cxMarginCkb.Checked then
            begin

              if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
                Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + '*' + FloatToStr(GpSds['Margin']/100);

              Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + '+ Q' + IntToStr(x_row);

              if cxCurrencyLcmb.EditValue <> 13 then
                begin
                  Range['T4','T4'].Value := GpSds['CH_ExchRate'];
//                  Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=R' + IntToStr(x_row) + '/S4' ;
                end;

              if (GpSds['TotalCurr'] <> null) and (GpSds['TotalCurr'] <> 0.0) then
                Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value := GpSds['TotalCurr'];


              if cxServiceTaxCkb.Checked then
                begin

                  if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                    Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=R' + IntToStr(x_row) + ' * $S$4/100';
                  Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].NumberFormat := '#,##0';

                end;

            end;

        end;

      if GpSds['Vehicles_id'] <> null then
        Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := GpSds['Vehicles_id'];

      if GpSds['DefaultAgents_id'] <> null then
        Range['BK'+IntToStr(x_row),'BK'+IntToStr(x_row)].Value := GpSds['DefaultAgents_id'];

      if GpSds['ServiceCities_id'] <> null then
        Range['BL'+IntToStr(x_row),'BL'+IntToStr(x_row)].Value := GpSds['ServiceCities_id'];

    end;

end;


procedure TCarHirePriceListForm.CitywiseP2P1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReportP2P(2,0,1);
  except
  end;


end;

procedure TCarHirePriceListForm.StatewiseCityGroups1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReportCG(1,0);
  except
  end;

end;

procedure TCarHirePriceListForm.PrintReportToExcelCG (GpSds: TSQLDataSet);
var
  x_PrevState, x_PrevGroup, x_CurrencyCode, x_FileName: string;
  x_row, x_option, x_PrevDefaultAgents_id: integer;
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
      Range['B1','B1'].ColumnWidth := 30;
      Range['C1','C1'].ColumnWidth := 30;
      Range['D1','T1'].ColumnWidth := 10;

      Range['A1','A1'].Value := 'Car Hire Price (City Groups) as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

      Range['A3','A3'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);      

      Range['E3','T4'].Font.FontStyle := 'Bold';
      Range['E3','T4'].Font.Size := '10';

      if cxDetailsCkb.Checked then
        begin

          Range['F3','F3'].Value := 'Wef';
          Range['H3','H3'].Value := 'Max Pax';
          Range['I3','I3'].Value := 'Cost of Hire';
          Range['J3','J3'].Value := 'Parking Fee';
          Range['K3','K3'].Value := 'Night Halt Charges';
          Range['L3','L3'].Value := 'Toll Tax';
          Range['M3','M3'].Value := 'Escort Charges';
          Range['N3','N3'].Value := 'Commisssion';
          Range['O3','O3'].Value := 'Serv Tax';
          Range['P3','P3'].Value := 'Total (Rs.)';

          if cxMarginCkb.Checked then
            begin
              Range['Q3','Q3'].Value := 'Mark-up (%)';
              Range['R3','R3'].Value := 'Final (Rs.)';
              Range['S3','S3'].Value := 'Serv Tax (%)';
              Range['T3','T3'].Value := 'Final with ST';
            end;

          if cxCurrencyLcmb.EditValue = null then
            cxCurrencyLcmb.EditValue := GetDefaultCurrency;

          x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

          if cxCurrencyLcmb.EditValue <> 13 then
            Range['T3','T3'].Value := x_CurrencyCode;

        end;

      Range['E3','E3'].Value := x_CurrencyCode;

    end;

  x_PrevState := '--';
  x_PrevGroup := '--';
  x_PrevDefaultAgents_id := -1;
  x_row := 4;

  GpSds.First;

  while not GpSds.Eof do
    begin

      // State
      if (not GpSds.EOF) and (GpSds['State'] <> x_PrevState) then
        begin
          PrintNextStateCG(GpSds['State'], x_row);
          x_PrevDefaultAgents_id := -1;
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevState := GpSds['State'];
        end;

      // City
      x_NewCity := false;
      if (not GpSds.EOF) and (GpSds['CarHireGroup'] <> x_PrevGroup) then
        begin
          PrintNextCityCG(GpSds['CarHireGroup'], x_row);
          x_NewCity := True;
          x_PrevDefaultAgents_id := -1;
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevGroup := GpSds['CarHireGroup'];
        end;

      // Service
      if (not GpSds.EOF) and (GpSds['DefaultAgents_id'] <> x_PrevDefaultAgents_id) then
        begin
          x_option := 1;
          if x_NewCity then
            x_option := 2;
          PrintNextAgentCG(GpSds['DefaultAgents_id'], x_row, x_option);
          PrintRecordCG(GpSds, x_row, 1);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRecordCG(GpSds, x_row, 2);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevDefaultAgents_id := GpSds['DefaultAgents_id'];
        end;

      GpSds.Next;

    end;

  x_FileName := g_ReportDir + '\CarHireRates_CityGroups.xls';

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

procedure TCarHirePriceListForm.PrintRecordCG(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
var
  x_CurrencyCode: string;
begin

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'T'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].NumberFormat := '#,##0';
      Range['G'+IntToStr(x_row),'T'+IntToStr(x_row)].NumberFormat := '#,##0';

      if GpSds['ServiceTaxPerc'] <> null then
        Range['O4','O4'].Value := GpSds['ServiceTaxPerc'];

      if GpSds['Margin'] <> null then
        Range['Q4','Q4'].Value := GpSds['Margin'];

      if GpSds['TourServiceTaxPerc'] <> null then
        Range['S4','S4'].Value := GpSds['TourServiceTaxPerc'];

      if GpSds['Vehicle'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

      if GpSds['TotalCurr'] <> null then
        begin
          Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];
          x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);
          if cxCurrencyLcmb.EditValue <> 13 then
            Range['E3','E3'].Value := x_CurrencyCode;
        end;

      if cxDetailsCkb.Checked then
        begin

          if GpSds['Wef'] <> null then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);

          if GpSds['ToPax'] <> null then
            Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['ToPax'];

          if (GpSds['CostTransport'] <> null) and (GpSds['CostTransport'] <> 0.0) then
            Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['CostTransport'];

          if (GpSds['ParkingFee'] <> null) and (GpSds['ParkingFee'] <> 0.0) then
            Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['ParkingFee'];

          if (GpSds['CostNightHalt'] <> null) and (GpSds['CostNightHalt'] <> 0.0) then
            Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['CostNightHalt'];

          if (GpSds['TollTax'] <> null) and (GpSds['TollTax'] <> 0.0) then
            Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := GpSds['TollTax'];

          if (GpSds['CostEscort'] <> null) and (GpSds['CostEscort'] <> 0.0) then
            Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := GpSds['CostEscort'];

          if (GpSds['Commission'] <> null) and (GpSds['Commission'] <> 0) then
            Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := GpSds['Commission'];

            Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value :=
              '=(SUM(I' + IntToStr(x_row) + ':M' + IntToStr(x_row) + ') - N' + IntToStr(x_row) + ') * (O4/100)';

          if GpSds['TotalRs'] <> null then
            Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value :=
              '=(SUM(I' + IntToStr(x_row) + ':M' + IntToStr(x_row) + ') - N' + IntToStr(x_row) + ' + O' + IntToStr(x_row) + ') ';


          if cxMarginCkb.Checked then
            begin

              if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
                Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + '*' + FloatToStr(GpSds['Margin']/100);

              Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + '+Q' + IntToStr(x_row);

              if cxCurrencyLcmb.EditValue <> 13 then
                begin
                  Range['T4','T4'].Value := GpSds['CH_ExchRate'];
//                  Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=R' + IntToStr(x_row) + '/S4' ;
                end;

              if (GpSds['TotalCurr'] <> null) and (GpSds['TotalCurr'] <> 0.0) then
                Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value := GpSds['TotalCurr'];


              if cxServiceTaxCkb.Checked then
                begin

                  if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                    Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=R' + IntToStr(x_row) + ' * $S$4/100';

                  Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].NumberFormat := '#,##0';

                end;

            end;

        end;

    end;

end;


procedure TCarHirePriceListForm.PrintNextStateCG(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure TCarHirePriceListForm.PrintNextCityCG(x_CarHireGroup: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_CarHireGroup;
    end;

end;

procedure TCarHirePriceListForm.PrintNextAgentCG(x_Agents_id: integer; var x_row: integer; x_option: integer);
var
  GpSds: TSQLDataSet;
  x_Agent: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT LTRIM(RTRIM(Organisation)) + '', '' + City  AS Organisation FROM Addressbook WHERE Addressbook_id = ' + IntToStr(x_Agents_id);
  GpSds.Open;

  x_Agent := '';
  if (not GpSds.Eof) and (GpSds['Organisation'] <> null) then
    x_Agent := GpSds['Organisation'];

  if x_option = 1 then
    x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Font.Size := '8';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := x_Agent;
    end;

end;


procedure TCarHirePriceListForm.CitywiseCityGroups1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReportCG(2,0);
  except
  end;


end;

procedure TCarHirePriceListForm.StatewiseP2P2Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReportP2P(1,0,2);
  except
  end;

end;

procedure TCarHirePriceListForm.CitywiseP2P2Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReportP2P(2,0,2);
  except
  end;


end;

procedure TCarHirePriceListForm.cxCurrencyLcmbPropertiesEditValueChanged(
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

procedure TCarHirePriceListForm.CostBreakup1Click(Sender: TObject);
begin
  CarP2P_PriceList(1);
end;

procedure TCarHirePriceListForm.CostBreakupWithoutMargin1Click(
  Sender: TObject);
begin
  CarP2P_PriceList(2);
end;

procedure TCarHirePriceListForm.Cost1to101Click(Sender: TObject);
begin
  CarP2P_PriceList(3);
end;

procedure TCarHirePriceListForm.Cost1to10SingleLine1Click(Sender: TObject);
begin
  CarP2P_PriceList(4);
end;

procedure TCarHirePriceListForm.CarP2P_PriceList(x_option: integer);
var
  x_FileName, x_StateStr, x_Margin: string;
  x_currencies_id, x_OptionOrder, x_OptionIndia: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\Car_P2P_PriceList_Breakup';

  if x_option = 2 then
    x_FileName := x_FileName + '_NoMargin'
  else if x_option = 3 then
    x_FileName := x_FileName + '_1_to_10'
  else if x_option = 4 then
    x_FileName := x_FileName + '_1_to_10_SingleLine';

  x_StateStr := GetStateStr;

  x_Margin := '0';
  if (x_option = 1) or (x_option = 3) or (x_option = 4) then
    x_Margin := '1';

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

  if (x_option = 1) or (x_option = 2) or (x_option = 3) then
    GST_Car_P2P_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_StateStr, x_Margin, x_FileName, x_option, x_OptionOrder, x_OptionIndia)
  else
    GST_Car_P2P_LineWise_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_StateStr, x_Margin, x_FileName, x_option, x_OptionOrder, x_OptionIndia);

  ShowMessage('Saved as ' + x_FileName);

end;

procedure TCarHirePriceListForm.CarCG_PriceList(x_option: integer);
var
  x_FileName, x_StateStr, x_Margin: string;
  x_currencies_id, x_OptionOrder, x_OptionIndia: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\Car_CG_PriceList_Breakup';

  if x_option = 2 then
    x_FileName := x_FileName + '_NoMargin'
  else if x_option = 3 then
    x_FileName := x_FileName + '_1_to_10'
  else if x_option = 4 then
    x_FileName := x_FileName + '_1_to_10_SingleLine';

  x_StateStr := GetStateStr;

  x_Margin := '0';
  if (x_option = 1) or (x_option = 3) or (x_option = 4) then
    x_Margin := '1';

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

  if (x_option = 1) or (x_option = 2) or (x_option = 3) then
    GST_Car_CG_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_StateStr, x_Margin, x_FileName, x_option, x_OptionOrder, x_OptionIndia)
  else
    GST_Car_CG_LineWise_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_StateStr, x_Margin, x_FileName, x_option, x_OptionOrder, x_OptionIndia);

  ShowMessage('Saved as ' + x_FileName);

end;

procedure TCarHirePriceListForm.CarPerKm_PriceList(x_option: integer);
var
  x_FileName, x_StateStr, x_Margin: string;
  x_currencies_id, x_OptionOrder, x_OptionIndia: integer;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\Car_PerKm_PriceList_Breakup';

  if x_option = 2 then
    x_FileName := x_FileName + '_NoMargin'
  else if x_option = 3 then
    x_FileName := x_FileName + '_1_to_10'
  else if x_option = 4 then
    x_FileName := x_FileName + '_1_to_10_SingleLine';

  x_StateStr := GetStateStr;

  x_Margin := '0';
  if (x_option = 1) or (x_option = 3) or (x_option = 4) then
    x_Margin := '1';

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

  if (x_option = 1) or (x_option = 2) or (x_option = 3) then
    GST_Car_PerKm_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_StateStr, x_Margin, x_FileName, x_option, x_OptionOrder, x_OptionIndia)
  else
    GST_Car_PerKm_LineWise_PriceList (scExcelExport, cxFromDateEdit.Date, x_currencies_id, x_StateStr, x_Margin, x_FileName, x_option, x_OptionOrder, x_OptionIndia);

  ShowMessage('Saved as ' + x_FileName);

end;

function TCarHirePriceListForm.GetStateStr: string;
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


procedure TCarHirePriceListForm.CostBreakup2Click(Sender: TObject);
begin
  CarCG_PriceList(1);
end;

procedure TCarHirePriceListForm.CostBreakupWithoutMargin2Click(
  Sender: TObject);
begin
  CarCG_PriceList(2);
end;

procedure TCarHirePriceListForm.Cost1to102Click(Sender: TObject);
begin
  CarCG_PriceList(3);
end;

procedure TCarHirePriceListForm.Cost1to10SingleLine2Click(Sender: TObject);
begin
  CarCG_PriceList(4);
end;

procedure TCarHirePriceListForm.CostBreakup3Click(Sender: TObject);
begin
  CarPerKm_PriceList(1);
end;

procedure TCarHirePriceListForm.CostBreakupWithoutMargin3Click(
  Sender: TObject);
begin
  CarPerKm_PriceList(2);
end;

procedure TCarHirePriceListForm.Cost1to103Click(Sender: TObject);
begin
  CarPerKm_PriceList(3);
end;

procedure TCarHirePriceListForm.Cost1to10SingleLine3Click(Sender: TObject);
begin
  CarPerKm_PriceList(4);
end;

end.
