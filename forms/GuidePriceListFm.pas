unit GuidePriceListFm;

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
  TGuidePriceListForm = class(TForm)
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
    Label1: TLabel;
    cxNumPaxEdit: TcxMaskEdit;
    cxMarginEdit: TcxMaskEdit;
    cxDetailsCkb: TcxCheckBox;
    cxRecoCkb: TcxCheckBox;
    cxServiceTaxCkb: TcxCheckBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GuidePriceListForm: TGuidePriceListForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TGuidePriceListForm.FormCreate(Sender: TObject);
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

function TGuidePriceListForm.GetDefaultMargin: double;
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


procedure TGuidePriceListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TGuidePriceListForm.FormDestroy(Sender: TObject);
begin
  GuidePriceListForm := nil;
end;

procedure TGuidePriceListForm.Statewise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(1,1);
  except
  end;
end;

procedure TGuidePriceListForm.Citywise1Click(Sender: TObject);
begin

  if MessageDlg ('Are the latest exchange rates for $, euro entered in the Exchange Rates master?',
                 mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    PrintReport(2,1);
  except
  end;

end;

procedure TGuidePriceListForm.PrintReport(x_option: integer; x_sightseeing: integer);
var
  x_StateStr, x_CatStr, x_Margin, x_OptionVoucher, x_Misc, x_Guide, x_EntranceFees, x_Markup, x_Recommended, x_ServiceTax: string;
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

  x_Guide := '1';

  x_EntranceFees := '0';

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
  GpSds.CommandText := ' EXEC p_SightSeeingGuidePriceList ''' + FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''', ''' +
    x_StateStr + ''',' + IntToStr(x_SightSeeing) + ',' + IntToStr(x_option) + ',' + IntToStr(cxCurrencyLcmb.EditValue) + ',' +
    x_Margin + ',' + x_OptionVoucher + ', ' + cxNumPaxEdit.Text + ',' + x_Misc + ',' + x_Guide + ',' +
    x_EntranceFees + ',' + x_MarkUp + ',' + x_Recommended + ',' + x_ServiceTax;
  GpSds.Open;

  PrintReportToExcel(GpSds);

  GpSds.Free;

end;

procedure TGuidePriceListForm.PrintReportToExcel (GpSds: TSQLDataSet);
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
      Range['D1','W1'].ColumnWidth := 10;

      Range['A1','A1'].Value := 'Guide Cost as of ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

      //Range['A3','A3'].Value := 'Cost based on ' + trim(cxNumPaxEdit.Text) + ' pax';
      Range['A3','A3'].Font.FontStyle := 'Bold';
      Range['A3','A3'].Font.Size := '10';


      Range['E3','R4'].Font.FontStyle := 'Bold';
      Range['E3','R4'].Font.Size := '10';

      Range['E3','E3'].Value := 'Cost';

      Range['H3','H3'].Value := 'Wef';
      Range['I3','I3'].Value := 'From Pax';
      Range['J3','J3'].Value := 'To Pax';

      if cxDetailsCkb.Checked then
        begin
          Range['G3','G3'].Value := 'Default Agent';
          Range['K3','K3'].Value := 'Guide Cost';
          Range['L3','L3'].Value := 'Sub Total';
          Range['M3','M3'].Value := 'Serv Tax';
          Range['N3','N3'].Value := 'Expected Cost (Rs.)';
        end;

      if cxMarginCkb.Checked and cxDetailsCkb.Checked then
        begin
          Range['O3','O3'].Value := 'Mark-up (%)';
          Range['P3','P3'].Value := 'Final (Rs.)';
          Range['Q3','Q3'].Value := 'Tour Serv Tax';
          Range['R3','R3'].Value := 'Final with ST';
        end;

      if cxCurrencyLcmb.EditValue = null then
        cxCurrencyLcmb.EditValue := GetDefaultCurrency;

      x_CurrencyCode := GetCurrencyCode(cxCurrencyLcmb.EditValue);

      if cxMarginCkb.Checked and cxDetailsCkb.Checked then
        begin
          if cxCurrencyLcmb.EditValue <> 13 then
            Range['R3','R3'].Value := x_CurrencyCode;
        end;

      Range['E3','E3'].Value := 'Cost (' + x_CurrencyCode + ')';

      if GpSds['ServiceTaxPerc'] <> null then
        Range['M4','M4'].Value := GpSds['ServiceTaxPerc'];

      if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
        Range['O4','O4'].Value := GpSds['Margin'];

      if GpSds['TourServiceTaxPerc'] <> null then
        Range['Q4','Q4'].Value := GpSds['TourServiceTaxPerc'];

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

  x_FileName := g_ReportDir + '\GuideRates.xls';
  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);

end;

function TGuidePriceListForm.GetCurrencyCode(x_Currencies_id: integer): string;
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


procedure TGuidePriceListForm.PrintNextState(x_State: string; var x_row: integer);
begin

  x_row := x_row + 3;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '14';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_State;
    end;

end;

procedure TGuidePriceListForm.PrintNextCity(x_City: string; var x_row: integer);
begin

  x_row := x_row + 2;

  with scExcelExport.ExcelWorkSheet do
    begin
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Font.Size := '10';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := x_City;
    end;

end;

procedure TGuidePriceListForm.PrintNextService(x_Service: string; var x_row: integer; x_option: integer);
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


procedure TGuidePriceListForm.PrintRecord(GpSds: TSQLDataSet; var x_row: integer; x_option: integer);
begin

  if x_option = 2 then
    x_row := x_row + 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['D'+IntToStr(x_row),'R'+IntToStr(x_row)].Font.Size := '8';
      Range['E'+IntToStr(x_row),'R'+IntToStr(x_row)].NumberFormat := '#,##0';

{
      if cxDetailsCkb.Checked then
        begin
          if GpSds['ServiceTaxPerc'] <> null then
            Range['R4','R4'].Value := GpSds['ServiceTaxPerc'];
        end;
}

      if GpSds['Vehicle'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Vehicle'];

      if GpSds['TotalCurr'] <> null then
        Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['TotalCurr'];

      if (GpSds['Wef'] <> null)  then
        Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['Wef']);

      if (GpSds['FromPax'] <> null) then
        Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := GpSds['FromPax'];

      if (GpSds['ToPax'] <> null) then
        Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := GpSds['ToPax'];

      if cxDetailsCkb.Checked then
        begin

          if (GpSds['DefaultAgent'] <> null)  then
            Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := GpSds['DefaultAgent'];

          if (GpSds['GuideCost'] <> null)  then
            Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := GpSds['GuideCost'];

          Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value :=
              '=(K' + IntToStr(x_row) + ')';

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
            Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value := GpSds['ServiceTax'];

          if (GpSds['TotalRs'] <> null) and (GpSds['TotalRs'] <> 0.0) then
            Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value := GpSds['TotalRs'];

          if cxMarginCkb.Checked then
            begin

    //          if GpSds['TotalRs'] <> null then
                Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value :=
                '=L' + IntToStr(x_row) + '+M' + IntToStr(x_row);

              if (GpSds['Margin'] <> null) and (GpSds['Margin'] <> 0.0) then
                Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value := '=N' + IntToStr(x_row) + '*' + FloatToStr(GpSds['Margin']/100);

              if (GpSds['TotalRs'] <> null) and (GpSds['TotalRs'] <> 0.0) then
                Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := GpSds['TotalRs'];


    //          if (GpSds['TotalRs'] <> null) and (GpSds['TotalRs'] <> 0.0) then
    //            Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value := '=CEILING(N' + IntToStr(x_row) + '*(1 + O' + IntToStr(x_row) + '/100.0),1)';

              if cxCurrencyLcmb.EditValue <> 13 then
                begin
                  Range['R4','R4'].Value := GpSds['SS_ExchRate'];
                end;

              if (GpSds['TotalCurr'] <> null) and (GpSds['TotalCurr'] <> 0.0) then
                Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value := GpSds['TotalCurr'];

              if cxServiceTaxCkb.Checked then
                begin

                  if (GpSds['TourServiceTaxPerc'] <> null) and (GpSds['TourServiceTaxPerc'] <> 0.0) then
                    Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value := '=P' + IntToStr(x_row) + '*Q4/100.0';

                  Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].NumberFormat := '#,##0';

                end;

            end;

        end;

    end;

end;


procedure TGuidePriceListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.
