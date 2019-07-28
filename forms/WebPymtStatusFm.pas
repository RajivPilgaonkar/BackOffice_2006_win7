unit WebPymtStatusFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, Menus,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxPC, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxGroupBox, ExtCtrls, FMTBcd, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridDBTableView, cxGrid, DBClient, Provider, SqlExpr, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, QDialogs, QFileCtrls, IniFiles;

type
  TWebPymtStatusForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxPageControl: TcxPageControl;
    cxTabSheetPymtStatus: TcxTabSheet;
    PymtStatusSds: TSQLDataSet;
    PymtStatusDsp: TDataSetProvider;
    PymtStatusCds: TClientDataSet;
    PymtStatusDs: TDataSource;
    PymtStatusCdsQuotations_id: TIntegerField;
    PymtStatusCdsPaxName: TStringField;
    PymtStatusCdsQuotationNo: TIntegerField;
    PymtStatusCdsStartDate: TSQLTimeStampField;
    PymtStatusCdsQuotationAmt: TFMTBCDField;
    PymtStatusCdsAdvanceAmt: TFMTBCDField;
    PymtStatusCdsBalanceAmt: TFMTBCDField;
    PymtStatusCdsRecdAmt: TFMTBCDField;
    PymtStatusCdsDueNowAmt: TFMTBCDField;
    PymtStatusCdsDueOnDateAmt: TFMTBCDField;
    PymtStatusCdsDueDate: TSQLTimeStampField;
    PymtStatusCdsCurrencyCode: TStringField;
    cxGridPymt: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridPymtDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridPymtLevel1: TcxGridLevel;
    cxGridPymtDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1PaxName: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1QuotationNo: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1StartDate: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1QuotationAmt: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1AdvanceAmt: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1BalanceAmt: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1RecdAmt: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1DueNowAmt: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1DueOnDateAmt: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1DueDate: TcxGridDBBandedColumn;
    cxGridPymtDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    cxButton2: TcxButton;
    OpenDialog: TOpenDialog;
    N1: TMenuItem;
    ResetAllPayments1: TMenuItem;
    cxTabSheetPymtRecd: TcxTabSheet;
    PymtRecdSds: TSQLDataSet;
    PymtRecdDsp: TDataSetProvider;
    PymtRecdCds: TClientDataSet;
    PymtRecdDs: TDataSource;
    PymtRecdCdsQuoReceipts_id: TIntegerField;
    PymtRecdCdsQuotations_id: TIntegerField;
    PymtRecdCdsPaxName: TStringField;
    PymtRecdCdsQuotationNo: TIntegerField;
    PymtRecdCdsStartDate: TSQLTimeStampField;
    PymtRecdCdsCurrencyCode: TStringField;
    PymtRecdCdsUploadId: TStringField;
    PymtRecdCdsPaymentId: TStringField;
    PymtRecdCdsPaymentHdfcId: TStringField;
    PymtRecdCdsTransactionHdfcId: TStringField;
    PymtRecdCdsReferenceHdfcId: TStringField;
    cxGridRecd: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridRecdDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridRecdLevel1: TcxGridLevel;
    cxGridRecdDBBandedTableView1QuoReceipts_id: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1PaxName: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1QuotationNo: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1StartDate: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1UploadId: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1PaymentId: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1PaymentHdfcId: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1TransactionHdfcId: TcxGridDBBandedColumn;
    cxGridRecdDBBandedTableView1ReferenceHdfcId: TcxGridDBBandedColumn;
    PymtRecdCdsPaymentTimeStamp: TSQLTimeStampField;
    cxGridRecdDBBandedTableView1PaymentTimeStamp: TcxGridDBBandedColumn;
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxFromDateEdit: TcxDateEdit;
    cxToDateEdit: TcxDateEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton3: TcxButton;
    PymtRecdCdsRecdAmt: TFMTBCDField;
    cxGridRecdDBBandedTableView1RecdAmt: TcxGridDBBandedColumn;
    cxButton6: TcxButton;
    PopupMenu2: TPopupMenu;
    Receipts1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure Receipts1Click(Sender: TObject);
  private
    procedure ScanIniFilesFromWeb(x_dir: WideString);
    procedure ReadQuoIniFilesFromWeb(x_filename: string);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure RefreshPaymentsRecd;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebPymtStatusForm: TWebPymtStatusForm;

implementation

uses GeneralUt, BackOfficeDM, QuoReceiptsFm, MainFm;

{$R *.dfm}

procedure TWebPymtStatusForm.FormCreate(Sender: TObject);
begin
  cxPageControl.ActivePage := cxTabSheetPymtStatus;
  PymtStatusCds.Open;
  cxGridPymtDBBandedTableView1.ViewData.Expand(True);
  AutoDateRange (Date(),1);
  RefreshPaymentsRecd;
end;

procedure TWebPymtStatusForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TWebPymtStatusForm.FormDestroy(Sender: TObject);
begin
  WebPymtStatusForm := nil;
end;

procedure TWebPymtStatusForm.SaveAsExcel1Click(Sender: TObject);
begin
  if cxPageControl.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\WebPymtStatus.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridPymt, True, True, False, cxGridPymtDBBandedTableView1);
    end
  else if cxPageControl.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := g_ReportDir + '\WebPymtRecd.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridRecd, True, True, False, cxGridRecdDBBandedTableView1);
    end;

end;

procedure TWebPymtStatusForm.Print1Click(Sender: TObject);
begin

  if cxPageControl.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridPymt;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Payment Status as of ' + FormatDateTime('dd/mm/yyyy',Date);
    end
  else if cxPageControl.ActivePageIndex = 1 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridRecd;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Payment Recd between ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date) + ' and ' +
          FormatDateTime('dd/mm/yyyy',cxToDateEdit.Date);
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TWebPymtStatusForm.cxButton2Click(Sender: TObject);
var
  x_dir: WideString;
begin

  x_dir := g_ReportDir;
  SelectDirectory('Select a directory', x_dir, x_dir);

  ScanIniFilesFromWeb (x_dir);

  PymtStatusCds.Close;
  PymtStatusCds.Open;

  cxGridPymtDBBandedTableView1.ViewData.Expand(True);

  RefreshPaymentsRecd;

end;

procedure TWebPymtStatusForm.ScanIniFilesFromWeb(x_dir: WideString);
var
  x_sr: TSearchRec;
  x_found: Boolean;
begin

  x_found := FindFirst(x_dir+'\*.ini', faAnyFile, x_sr) = 0;
  while x_found do
    begin
      ReadQuoIniFilesFromWeb(x_dir+'\'+x_sr.Name);
      x_found := FindNext(x_sr) = 0;
    end;
  FindClose(x_sr);

end;

procedure TWebPymtStatusForm.ReadQuoIniFilesFromWeb(x_filename: string);
var
  x_ini: TIniFile;
  x_quotation_id_str, x_AmountCharged_str, x_UploadId_str, x_PaymentId_str, x_Advance_str: string;
  x_PaymentHDFCId_str, x_TransactionHDFCId_str, x_ReferenceHDFCId_str, x_PymtTimeStamp_str, x_Label: string;
  x_CurrOdyCode_str, x_CurrHdfcCode_str: string;
  GpSds : TSQLDataSet;
  x_done: boolean;
  x_Max_id, x_LeadPaxOrder, x_count: integer;
  x_PaxName, x_PaxPassportName, x_PaxNationality, x_PaxPassportNo, x_PaxPassportPlace, x_PaxPassportDate: string;
  x_PaxPassportValid, x_PaxEmail, x_PaxTravelEmail, x_PaxPreferredPhone, x_QueryString: string;
  x_PaxEmergencyContact, x_PaxEmergencyEmail, x_PaxEmergencyHomePhone, x_PaxEmergencyMobilePhone: string;
begin
  x_ini := TIniFile.Create(x_filename);

  x_quotation_id_str := x_ini.ReadString('Payment', 'QuotationId', '');
  x_AmountCharged_str := x_ini.ReadString('Payment', 'AmountCharged', '0');
  x_UploadId_str := x_ini.ReadString('Payment', 'UploadId', '');
  x_PaymentId_str := x_ini.ReadString('Payment', 'PaymentId', '');
  x_PaymentHDFCId_str := x_ini.ReadString('Payment', 'PaymentHDFCId', '');
  x_TransactionHDFCId_str := x_ini.ReadString('Payment', 'TransactionHDFCId', '');
  x_ReferenceHDFCId_str := x_ini.ReadString('Payment', 'ReferenceHDFCId', '');
  x_PymtTimeStamp_str := x_ini.ReadString('Payment', 'PaymentTimeStamp', '');
  x_Advance_str := x_ini.ReadString('Payment', 'AmountIsAdvance', '0');
  x_CurrOdyCode_str := x_ini.ReadString('Payment', 'CurrencyOdyssseyCode', '0');
  x_CurrHdfcCode_str := x_ini.ReadString('Payment', 'CurrencyHDFCCode', '0');

  if (trim(x_quotation_id_str) = '') or (trim(x_AmountCharged_str) = '') then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_QuoInsertReceipts ' + x_quotation_id_str + ', ' +
    x_AmountCharged_str + ',' + QuotedStr(x_UploadId_str) + ',' + QuotedStr(x_PaymentId_str) + ',' +
    QuotedStr(x_PaymentHDFCId_str) + ',' + QuotedStr(x_TransactionHDFCId_str) + ',' + QuotedStr(x_ReferenceHDFCId_str) + ',' +
    QuotedStr(x_PymtTimeStamp_str) + ',' + x_Advance_str + ',' + x_CurrOdyCode_str + ',' + x_CurrHdfcCode_str;
  GpSds.ExecSQL;

  x_done := false;
  x_count := 0;
  while (not x_done) do
    begin

      if x_count = 0 then
        x_Label := 'LeadPax'
      else
        x_Label := 'Pax' + IntToStr(x_count+1);

      x_PaxName := Copy(trim(x_ini.ReadString(x_Label, 'Name', '')),1,20);
      x_PaxPassportName := Copy(trim(x_ini.ReadString(x_Label, 'Name', '')),1,100);
      x_PaxNationality := x_ini.ReadString(x_Label, 'Nationality', '');
      x_PaxPassportNo := x_ini.ReadString(x_Label, 'PassportNo', '');
      x_PaxPassportPlace := x_ini.ReadString(x_Label, 'PassportPlaceOfIssue', '');
      x_PaxPassportDate := x_ini.ReadString(x_Label, 'PassportDateOfIssue', '');
      x_PaxPassportValid := x_ini.ReadString(x_Label, 'PassportDateOfExpiry', '');
      x_PaxEmail := x_ini.ReadString(x_Label, 'Email', '');
      x_PaxTravelEmail := x_ini.ReadString(x_Label, 'TravelEmail', '');
      x_PaxPreferredPhone := x_ini.ReadString(x_Label, 'PreferredPhone', '');
      x_PaxEmergencyContact := x_ini.ReadString(x_Label, 'EmergencyContact', '');
      x_PaxEmergencyEmail := x_ini.ReadString(x_Label, 'EmergencyEmail', '');
      x_PaxEmergencyHomePhone := x_ini.ReadString(x_Label, 'EmergencyHomePhone', '');
      x_PaxEmergencyMobilePhone := x_ini.ReadString(x_Label, 'EmergencyMobilePhone', '');

      if x_PaxName = '' then
        x_done := true;

      GpSds.Close;
      GpSds.CommandText := 'SELECT qbc.QuoBookingsClients_id FROM QuoBookingsClients qbc ' +
        'WHERE qbc.Quotations_id = ' + x_quotation_id_str + ' ' +
        'AND LTRIM(RTRIM(qbc.Name)) = ' + QuotedStr(x_PaxName) + ' ';
      GpSds.Open;

      if (GpSds.Eof) and (not x_done) then
        begin

          GpSds.Close;
          GpSds.CommandText := 'SELECT MAX(QuoBookingsClients_id) AS MaxId FROM QuoBookingsClients ';
          GpSds.Open;

          x_LeadPaxOrder := 1;
          if x_count = 0 then
            x_LeadPaxOrder := 100;

          x_Max_id := 0;
          if (not GpSds.Eof) and (GpSds['MaxId'] <> null) then
            x_Max_id := GpSds['MaxId'];
          x_Max_id := x_Max_id + 1;

          x_QueryString := 'INSERT INTO QuoBookingsClients (QuoBookingsClients_id, Quotations_id, ' +
            'Name, PassportNo, DateOfIssue, PlaceOfIssue, ValidTo, LeadPaxOrder, ' +
            'Email, TravelEmail, PreferredPhone, EmergencyContact, EmergencyEmail, EmergencyHomePhone, ' +
            'EmergencyMobilePhone, PaxPassportName) ' +
            'VALUES (' + IntToStr(x_Max_id) + ',' + x_quotation_id_str + ',' +
            QuotedStr(x_PaxName) + ',' + QuotedStr(x_PaxPassportNo) + ',' + QuotedStr(x_PaxPassportDate) + ',' +
            QuotedStr(x_PaxPassportPlace) + ',' + QuotedStr(x_PaxPassportValid) + ', ' + IntToStr(x_LeadPaxOrder) + ', ' +
            QuotedStr(x_PaxEmail) + ',' + QuotedStr(x_PaxTravelEmail) + ',' + QuotedStr(x_PaxPreferredPhone) + ',' +
            QuotedStr(x_PaxEmergencyContact) + ',' + QuotedStr(x_PaxEmergencyEmail) + ',' + QuotedStr(x_PaxEmergencyHomePhone) + ',' +
            QuotedStr(x_PaxEmergencyMobilePhone) + ',' + QuotedStr(x_PaxPassportName) + ')';

          GpSds.Close;
          GpSds.CommandText := x_QueryString;
          GpSds.ExecSQL;

        end;

      x_count := x_count + 1;

    end;

  GpSds.Free;

  x_ini.Free;

end;

procedure TWebPymtStatusForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
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


procedure TWebPymtStatusForm.cxButton4Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),-1),1);
end;

procedure TWebPymtStatusForm.cxButton5Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(cxFromDateEdit.Text),1),1);
end;

procedure TWebPymtStatusForm.RefreshPaymentsRecd;
begin
  PymtRecdCds.Close;
  PymtRecdSds.Close;

  PymtRecdSds.Params[0].Value := cxFromDateEdit.Date;
  PymtRecdSds.Params[1].Value := cxToDateEdit.Date;

  PymtRecdSds.Open;
  PymtRecdCds.Open;

  cxGridRecdDBBandedTableView1.ViewData.Expand(True);

end;


procedure TWebPymtStatusForm.cxButton3Click(Sender: TObject);
begin
  RefreshPaymentsRecd;
end;

procedure TWebPymtStatusForm.cxButton6Click(Sender: TObject);
var
  x_dir: WideString;
begin

  x_dir := GetServerWebQuotationsPath;

  ScanIniFilesFromWeb (x_dir);

  PymtStatusCds.Close;
  PymtStatusCds.Open;

  cxGridPymtDBBandedTableView1.ViewData.Expand(True);

  RefreshPaymentsRecd;


end;

procedure TWebPymtStatusForm.Receipts1Click(Sender: TObject);
begin

  QuoReceiptsForm_Level := 4;
  QuoReceiptsForm_Quotations_id := PymtStatusCds['Quotations_id'];

  if QuoReceiptsForm = nil then
    Application.CreateForm(TQuoReceiptsForm,QuoReceiptsForm);

  QuoReceiptsForm.FormStyle := fsNormal;
  QuoReceiptsForm.Visible := false;
  QuoReceiptsForm.ShowModal;

  QuoReceiptsForm.Free;
  QuoReceiptsForm := nil;

end;

end.
