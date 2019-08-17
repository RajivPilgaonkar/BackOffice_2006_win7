unit TransferPriceListFm;

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
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TTransferPriceListForm = class(TForm)
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
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    Statewise1: TMenuItem;
    Citywise1: TMenuItem;
    cxFromDateEdit: TcxDateEdit;
    scExcelExport: TscExcelExport;
    cxLabel1: TcxLabel;
    CloseBtn: TcxButton;
    cxMarginCkb: TcxCheckBox;
    cxCurrencyLcmb: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxVoucherCkb: TcxCheckBox;
    cxMarginEdit: TcxMaskEdit;
    cxMiscCkb: TcxCheckBox;
    Label1: TLabel;
    cxNumPaxEdit: TcxMaskEdit;
    cxDetailsCkb: TcxCheckBox;
    cxAgentCkb: TcxCheckBox;
    cxServiceTaxCkb: TcxCheckBox;
    N1: TMenuItem;
    CostinRange1101: TMenuItem;
    Statewise2: TMenuItem;
    Citywise2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Statewise1Click(Sender: TObject);
    procedure Citywise1Click(Sender: TObject);
    procedure PrintReport(x_option: integer; x_sightseeing: integer; x_DisplayOption: integer);
    procedure PrintReportToExcel (GpSds: TSQLDataSet; x_DisplayOption: integer);
    procedure PrintNextState(x_State: string; var x_row: integer);
    procedure PrintNextCity(x_City: string; var x_row: integer);
    procedure PrintNextService (x_Service: string; var x_row: integer; x_option: integer);
    procedure PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer; x_DisplayOption: integer);
    procedure CloseBtnClick(Sender: TObject);
    function GetCurrencyCode(x_Currencies_id: integer): string;
    function GetDefaultMargin: double;
    procedure Statewise2Click(Sender: TObject);
    procedure Citywise2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferPriceListForm: TTransferPriceListForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TTransferPriceListForm.FormCreate(Sender: TObject);
begin
  Height := 600;
  Width := 680;

  cxFromDateEdit.Date := StrToDate('01/10/' + IntToStr(YearOf(Date)));

  StateCds.Active := False;
  StateCds.Active := True;

  BackOfficeDataModule.CurrenciesCds.Open;

  cxCurrencyLcmb.EditValue := GetDefaultCurrency;

  cxMarginEdit.Text := FloatToStr(GetDefaultMargin);

end;

function TTransferPriceListForm.GetDefaultMargin: double;
var
  GpSds: TSQLDataSet;
  x_Margin: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Margin FROM FitMargins ' +
    'WHERE TrsType = 4 ';
  GpSds.Open;

  x_Margin := 0.0;
  if (not GpSds.EOF) and (GpSds['Margin'] <> null) then
    x_Margin := GpSds['Margin'];

  GpSds.Free;

  Result := x_Margin;

end;


procedure TTransferPriceListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTransferPriceListForm.FormDestroy(Sender: TObject);
begin
  TransferPriceListForm := nil;
end;

procedure TTransferPriceListForm.Statewise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(1,0,1);
  except
  end;
end;

procedure TTransferPriceListForm.Citywise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(2,0,1);
  except
  end;

end;

procedure TTransferPriceListForm.PrintReport(x_option: integer; x_sightseeing: integer; x_DisplayOption: integer);
var
  x_StateStr, x_Margin, x_OptionVoucher, x_Misc, x_Markup, x_ServiceTax: string;
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
  GpSds.CommandText := ' EXEC p_TransferPriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_SightSeeing) + ',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_OptionVoucher + ',' + cxNumPaxEdit.Text + ',' + x_Misc + ',' + x_MarkUp + ',' + x_ServiceTax;
  GpSds.Open;

  PrintReportToExcel(GpSds, x_DisplayOption);

  GpSds.Free;

end;

procedure TTransferPriceListForm.PrintReportToExcel (GpSds: TSQLDataSet; x_DisplayOption: integer);
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


  if x_DisplayOption = 1 then
    begin
      with scExcelExport.ExcelWorkSheet do
        begin
          Range['A1','A1'].ColumnWidth := 15;
          Range['B1','B1'].ColumnWidth := 15;
          Range['C1','C1'].ColumnWidth := 30;
          Range['D1','V1'].ColumnWidth := 10;

          Range['A1','A1'].Value := 'Transfers as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
          Range['A1','A1'].Font.FontStyle := 'Bold';
          Range['A1','A1'].Font.Size := '10';
          Range['A4','A4'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);

          Range['A3','A3'].Value := 'Cost based on ' + trim(cxNumPaxEdit.Text) + ' pax';
          Range['A3','A3'].Font.FontStyle := 'Bold';
          Range['A3','A3'].Font.Size := '10';

          Range['E3','V4'].Font.FontStyle := 'Bold';
          Range['E3','V4'].Font.Size := '10';

          Range['E3','E3'].Value := 'Cost';

          if cxDetailsCkb.Checked then
            begin
              if not cxAgentCkb.Checked then
                begin
                  Range['G3','G3'].Value := 'Agent';
                  Range['H3','H3'].Value := 'Wef';
                end;
              Range['I3','I3'].Value := 'Rate';
              Range['J3','J3'].Value := 'Parking Fee';
              Range['K3','K3'].Value := 'Meet &';
              Range['K4','K4'].Value := 'Assist';
              Range['L3','L3'].Value := 'Entry';
              Range['L4','L4'].Value := 'A/P Rly Stn';
              Range['M3','M3'].Value := 'Commission';
              Range['N3','N3'].Value := 'Misc';
              Range['O3','O3'].Value := 'Sub Total';
              Range['P3','P3'].Value := 'Serv Tax';
              Range['Q3','Q3'].Value := 'Total (Rs.)';
            end;

          if cxMarginCkb.Checked and cxDetailsCkb.Checked then
            begin
              Range['R3','R3'].Value := 'Mark-up (%)';
              Range['S3','S3'].Value := 'Final (Rs.)';
              Range['T3','T3'].Value := 'Tour Serv Tax';
              Range['U3','U3'].Value := 'Final with ST';
            end;

          if cxCurrencyLcmb.EditValue = null then
            cxCurrencyLcmb.EditValue := GetDefaultCurrency;

          x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

          if cxMarginCkb.Checked and cxDetailsCkb.Checked then
            begin
              if cxCurrencyLcmb.EditValue <> 13 then
                Range['U3','U3'].Value := x_CurrencyCode;
            end;

          Range['E3','E3'].Value := 'Cost';
          Range['E4','E4'].Value := x_CurrencyCode;

          if cxDetailsCkb.Checked then
            begin
              if not cxMiscCkb.Checked then
                Range['K1','K1'].EntireColumn.Hidden := True;
            end;

          if not cxServiceTaxCkb.Checked then
            begin
              Range['T1','T1'].EntireColumn.Hidden := True;
            end;

          if GpSds['ServiceTaxPerc'] <> null then
            Range['P4','P4'].Value := GpSds['ServiceTaxPerc'];

          if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
            Range['R4','R4'].Value := GpSds['Margin'];

          if GpSds['TourServiceTaxPerc'] <> null then
            Range['T4','T4'].Value := GpSds['TourServiceTaxPerc'];

        end;

    end
  else
    begin

      with scExcelExport.ExcelWorkSheet do
        begin

          Range['A1','A1'].ColumnWidth := 15;
          Range['B1','B1'].ColumnWidth := 15;
          Range['C1','C1'].ColumnWidth := 30;
          Range['D1','V1'].ColumnWidth := 10;

          Range['A1','A1'].Value := 'Transfers as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
          Range['A1','A1'].Font.FontStyle := 'Bold';
          Range['A1','A1'].Font.Size := '10';
          Range['A4','A4'].Value := '''' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);

          Range['A3','A3'].Font.FontStyle := 'Bold';
          Range['A3','A3'].Font.Size := '10';

          Range['E3','V4'].Font.FontStyle := 'Bold';
          Range['E3','V4'].Font.Size := '10';

          Range['E3','E3'].Value := 'Cost';

          Range['E3','E3'].Value := 'Cost';
          Range['E4','E4'].Value := x_CurrencyCode;

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
          PrintRecord(GpSds, x_row, 1, x_DisplayOption);
        end
      else if (not GpSds.EOF) then
        begin
          PrintRecord(GpSds, x_row, 2, x_DisplayOption);
        end;

      if (not GpSds.EOF) then
        begin
          x_PrevService := GpSds['Service'];
        end;

      GpSds.Next;

    end;

//  scExcelExport.ExcelWorkSheet.Range['AN5','AP5'].Merge(3);

  x_FileName := g_ReportDir + '\TransferRates.xls';
  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

function TTransferPriceListForm.GetCurrencyCode(x_Currencies_id: integer): string;
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


procedure TTransferPriceListForm.PrintNextState(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure TTransferPriceListForm.PrintNextCity(x_City: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_City;
    end;

end;

procedure TTransferPriceListForm.PrintNextService(x_Service: string; var x_row: integer; x_option: integer);
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


procedure TTransferPriceListForm.PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer; x_DisplayOption: integer);
var
  Gp2Sds: TSQLDataSet;
begin

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'V'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'V'+IntToStr(x_row)].NumberFormat := '#,##0';

      Range['BJ1','BK1'].EntireColumn.Hidden := True;

{
      if cxDetailsCkb.Checked then
        begin
          if GpSds['ServiceTaxPerc'] <> null then
            Range['O4','O4'].Value := GpSds['ServiceTaxPerc'];
        end;
}

      if GpSds['Vehicle'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

      if GpSds['TotalCurr'] <> null then
        Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];


      if x_DisplayOption = 2 then
        begin
          if (GpSds['Wef'] <> null) then
            Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);
        end;

      if x_DisplayOption = 1 then
        begin

          if cxDetailsCkb.Checked then
            begin

              if not cxAgentCkb.Checked then
                begin

                  if (GpSds['DefaultAgent'] <> null) then
                    Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['DefaultAgent'];

                  if (GpSds['Wef'] <> null) then
                    Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);

                end;

              if (GpSds['TransportRate'] <> null) and (GpSds['TransportRate'] <> 0.0) then
                Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['TransportRate'];

              if (GpSds['ParkingFee'] <> null) and (GpSds['ParkingFee'] <> 0.0) then
                Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['ParkingFee'];

              if (GpSds['MeetAndAssistCost'] <> null) and (GpSds['MeetAndAssistCost'] <> 0.0) then
                Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['MeetAndAssistCost'];

              if (GpSds['EntryAp'] <> null) and (GpSds['EntryAp'] <> 0.0) then
                Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value := GpSds['EntryAp'];


    //          if (GpSds['NumVehicles'] <> null) and (GpSds['NumVehicles'] <> 0) then
    //            Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := GpSds['NumVehicles'];

        //      if GpSds['TransportCost'] <> null then
        //        Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['TransportCost'];
    //            Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=G' + IntToStr(x_row) + '*H' + IntToStr(x_row);

              if GpSds['CommissionOnTransport'] <> null then
                Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := GpSds['CommissionOnTransport'];

              if GpSds['MiscCost'] <> null then
                Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := GpSds['MiscCost'];

              // SubTotal
              Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value :=
                  '=(I' + IntToStr(x_row) + ' + J' + IntToStr(x_row) + ' + K' + IntToStr(x_row) +
                   ' + L' + IntToStr(x_row) + ' - M' + IntToStr(x_row) + ' + N' + IntToStr(x_row) +  ') ';


              if GpSds['ServiceTax'] <> null then
                Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := GpSds['ServiceTax'];

              Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value :=
                  '=(O' + IntToStr(x_row) + ' + P' + IntToStr(x_row) + ')';

              if cxMarginCkb.Checked then
                begin

                  if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
                    Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := '=Q' + IntToStr(x_row) + '*' + FloatToStr(GpSds['Margin']/100);

                  Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value := '=Q' + IntToStr(x_row) + '*(1 + R4/100.0)';

                  if cxCurrencyLcmb.EditValue <> 13 then
                    begin
                      Range['U2','U2'].Value := GpSds['SS_ExchRate'];
                    end;

                  if (GpSds['TotalCurr'] <> null) and (GpSds['TotalCurr'] <> 0.0) then
                    Range['U'+IntToStr(x_row),'U'+IntToStr(x_row)].Value := GpSds['TotalCurr'];

                  if cxServiceTaxCkb.Checked then
                    begin

                      if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                        Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value := '=S' + IntToStr(x_row) + '*T4/100';

                      Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].NumberFormat := '#,##0';

                    end;

                end;

            end;

        end
      else
        begin

          if x_option = 1 then
            begin

              Gp2Sds.Close;
              Gp2Sds.CommandText := 'SELECT * FROM TmpTransferPrices_PaxRange ' +
                'WHERE Services_id = ' + IntToStr(GpSds['Services_id']) + ' ' +
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


      if GpSds['DefaultAgents_id'] <> null then
        Range['BJ'+IntToStr(x_row),'BJ'+IntToStr(x_row)].Value := GpSds['DefaultAgents_id'];

      if GpSds['Services_id'] <> null then
        Range['BK'+IntToStr(x_row),'BK'+IntToStr(x_row)].Value := GpSds['Services_id'];

    end;

  Gp2Sds.Free;

end;


procedure TTransferPriceListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TTransferPriceListForm.Statewise2Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(1,0,2);
  except
  end;

end;

procedure TTransferPriceListForm.Citywise2Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(2,0,2);
  except
  end;

end;

end.

