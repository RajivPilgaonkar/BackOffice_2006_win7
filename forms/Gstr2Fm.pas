unit Gstr2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, Buttons, cxCheckBox, ShlObj,
  scExcelExport, Excel2000, DateUtils;

type
  TGstr2Form = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxVendorLcmb: TcxLookupComboBox;
    VendorSds: TSQLDataSet;
    VendorDsp: TDataSetProvider;
    VendorCds: TClientDataSet;
    VendorDs: TDataSource;
    CurrencyCds: TClientDataSet;
    CurrencyDS: TDataSource;
    CurrencyDsp: TDataSetProvider;
    CurrencySds: TSQLDataSet;
    PlaceOfSupplyDS: TDataSource;
    PlaceOfSupplyCds: TClientDataSet;
    PlaceOfSupplyDsp: TDataSetProvider;
    PlaceOfSupplySds: TSQLDataSet;
    CurrencyCdscurrencycode: TStringField;
    CurrencyCdscurrencies_id: TIntegerField;
    cxButton1: TcxButton;
    MasterCdst_id: TIntegerField;
    MasterCdsorganisation: TStringField;
    MasterCdsaccounts_id: TIntegerField;
    MasterCdstransactiondate: TSQLTimeStampField;
    MasterCdsbillno: TStringField;
    MasterCdsInternetPaymentNo: TStringField;
    MasterCdsGstApproveDate: TSQLTimeStampField;
    MasterCdsBillAmt: TFMTBCDField;
    cxGrid1DBBandedTableView1t_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1accounts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1transactiondate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1billno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1InternetPaymentNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1GstApproveDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BillAmt: TcxGridDBBandedColumn;
    VendorCdsAddressbook_id: TIntegerField;
    VendorCdsOrganisation: TStringField;
    Label3: TLabel;
    cxFromDateEdit: TcxDateEdit;
    Label2: TLabel;
    cxToDateEdit: TcxDateEdit;
    Label4: TLabel;
    cxGstr2Date: TcxDateEdit;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    PopupMenu2: TPopupMenu;
    SetGstr2Date1: TMenuItem;
    N1: TMenuItem;
    UndoReconciliation1: TMenuItem;
    MasterCdsGstPeriod: TStringField;
    cxGrid1DBBandedTableView1GstPeriod: TcxGridDBBandedColumn;
    MasterCdsBillPeriod: TStringField;
    cxGrid1DBBandedTableView1BillPeriod: TcxGridDBBandedColumn;
    SpeedButton1: TSpeedButton;
    MasterCdsI_GST: TFMTBCDField;
    MasterCdsC_GST: TFMTBCDField;
    MasterCdsS_GST: TFMTBCDField;
    MasterCdsTaxableValue: TFMTBCDField;
    cxGrid1DBBandedTableView1I_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1C_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1S_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TaxableValue: TcxGridDBBandedColumn;
    GSTR2ReconciliationReportExcel1: TMenuItem;
    scExcelExport: TscExcelExport;
    N2: TMenuItem;
    GSTR21: TMenuItem;
    Export1: TMenuItem;
    ExportCSVFilesAll1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxVendorLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure SetGstr2Date1Click(Sender: TObject);
    procedure UndoReconciliation1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure GSTR2ReconciliationReportExcel1Click(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure ExportCSVFilesAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    procedure FilterData(x_option: integer);
    procedure SetGstr2Date;
    procedure FilterVendorData;
    procedure RecoReport;
    function GetDesktopPath(Sender: TObject): string;
    procedure Export_Gstr2_CSV (x_option: integer);
  end;

var
  Gstr2Form: TGstr2Form;
  Gstr2Form_Level: Integer;

  Gstr2Form_FromDate: TDateTime;
  Gstr2Form_ToDate: TDateTime;

implementation

uses BackOfficeDM, MainFm, AccountFm, GeneralUt;

{$R *.dfm}

procedure TGstr2Form.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  cxFromDateEdit.Date := Gstr2Form_FromDate;
  cxToDateEdit.Date := Gstr2Form_ToDate;

  MasterSds.Params[0].Value := Gstr2Form_FromDate;
  MasterSds.Params[1].Value := Gstr2Form_ToDate;
  MasterSds.Params[2].Value := -1;

  inherited;

  //VendorCds.Open;
  FilterVendorData;

  SetGstr2Date;

end;

procedure TGstr2Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TGstr2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  Gstr2Form := nil;
end;

procedure TGstr2Form.ActivateInCustom;
begin
  Custom_AdmLevel := Gstr2Form_Level;

  Custom_FormWidth := 1220;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TGstr2Form.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;


procedure TGstr2Form.FilterData (x_option: integer);
var
  x_Addressbook_id: integer;
begin

  x_Addressbook_id := -1;

  if cxVendorLcmb.EditValue <> null then
    x_Addressbook_id := cxVendorLcmb.EditValue;

  if x_option = 2 then
    FilterVendorData;

  MasterCds.Active := False;
  MasterSds.Active := False;

  if cxFromDateEdit.Date <> null then
    begin
      MasterSds.Params[0].Value := cxFromDateEdit.Date;
    end
  else
    begin
      MasterSds.Params[0].Value := Date();
    end;

  if cxToDateEdit.Date <> null then
    begin
      MasterSds.Params[1].Value := cxToDateEdit.Date;
    end
  else
    begin
      MasterSds.Params[1].Value := Date();
    end;

  MasterSds.Params[2].Value := x_Addressbook_id;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TGstr2Form.FilterVendorData;
var
  x_Addressbook_id: integer;
begin

  x_Addressbook_id := -1;

  if cxVendorLcmb.EditValue <> null then
    x_Addressbook_id := cxVendorLcmb.EditValue;

  VendorCds.Close;
  VendorSds.Close;

  if cxFromDateEdit.Date <> null then
    begin
      VendorSds.Params[0].Value := cxFromDateEdit.Date;
    end
  else
    begin
      VendorSds.Params[0].Value := Date();
    end;

  if cxToDateEdit.Date <> null then
    begin
      VendorSds.Params[1].Value := cxToDateEdit.Date;
    end
  else
    begin
      VendorSds.Params[1].Value := Date();
    end;

  VendorSds.Active := True;
  VendorCds.Active := True;

  if x_Addressbook_id > 0 then
    cxVendorLcmb.EditValue := x_Addressbook_id;

end;

procedure TGstr2Form.cxVendorLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData(1);
end;

procedure TGstr2Form.cxButton1Click(Sender: TObject);
begin
  inherited;
  FilterData(1);
end;

procedure TGstr2Form.SetGstr2Date;
var
  GpSds: TSQLDataSet;
  x_Gstr2Date: TDateTime;
begin

  x_Gstr2Date := StrToDate('01/07/2017');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'SELECT MAX(GstApproveDate) AS Gstr2ApproveDate FROM Ledgers';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Gstr2ApproveDate'] <> null) then
    x_Gstr2Date := GpSds['Gstr2ApproveDate'];

  if x_Gstr2Date <= StrToDate('01/07/2017') then
    x_Gstr2Date := StrToDate('01/07/2017');

  cxGstr2Date.Date := x_Gstr2Date;

  GpSds.Free;

end;

procedure TGstr2Form.cxButton2Click(Sender: TObject);
begin
  inherited;
  cxGstr2Date.Date := IncMonth(cxGstr2Date.Date,-1);
  if cxGstr2Date.Date <= StrToDate('01/07/2017') then
    cxGstr2Date.Date := StrToDate('01/07/2017');
end;

procedure TGstr2Form.cxButton3Click(Sender: TObject);
begin
  inherited;
  cxGstr2Date.Date := IncMonth(cxGstr2Date.Date,1);
  if cxGstr2Date.Date <= StrToDate('01/07/2017') then
    cxGstr2Date.Date := StrToDate('01/07/2017');
end;

procedure TGstr2Form.SetGstr2Date1Click(Sender: TObject);
var
  x_BillNo: String;
  GpSds: TSQLDataSet;
  x_id: integer;
begin
  inherited;

  if MasterCds['GstApproveDate'] <> null then
    raise exception.create('Already Reconciled');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_id := MasterCds['t_id'];

  x_BillNo := '';
  if MasterCds['BillNo'] <> null then
    x_BillNo := trim(MasterCds['BillNo']);

  GpSds.CommandText := 'UPDATE Ledgers SET GstApproveDate = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxGstr2Date.Date)) + ' ' +
    'WHERE Accounts_id = ' + IntToStr(MasterCds['Accounts_id']) + ' ' +
    'AND LTRIM(RTRIM(COALESCE(BillNo,''''))) = ' + QuotedStr(x_BillNo);
  GpSds.ExecSQL;

  FilterData(1);
  MasterCds.Locate('t_id', x_id, []);

  GpSds.Free;

end;

procedure TGstr2Form.UndoReconciliation1Click(Sender: TObject);
var
  x_BillNo: String;
  GpSds: TSQLDataSet;
  x_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_id := MasterCds['t_id'];

  x_BillNo := '';
  if MasterCds['BillNo'] <> null then
    x_BillNo := trim(MasterCds['BillNo']);

  GpSds.CommandText := 'UPDATE Ledgers SET GstApproveDate = null ' +
    'WHERE Accounts_id = ' + IntToStr(MasterCds['Accounts_id']) + ' ' +
    'AND LTRIM(RTRIM(COALESCE(BillNo,''''))) = ' + QuotedStr(x_BillNo);
  GpSds.ExecSQL;

  FilterData(1);
  MasterCds.Locate('t_id', x_id, []);

  GpSds.Free;

end;

procedure TGstr2Form.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FilterData(2);
end;

procedure TGstr2Form.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;

  if (MasterCds['Accounts_id'] = null) then
    exit;

  if AccountForm <> nil then
    AccountForm.MasterCds.Locate('Accounts_id', MasterCds['Accounts_id'],[]);
end;

procedure TGstr2Form.GSTR2ReconciliationReportExcel1Click(Sender: TObject);
begin
  inherited;
  RecoReport;
end;

procedure TGstr2Form.RecoReport;
var
  x_Path, x_FileName, x_Cell, x_MonthName: string;
  x_StartRow, x_row : integer;
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT MonthShortName FROM Months ' +
      'WHERE Months_id = ' + IntToStr(MonthOf(cxGstr2Date.Date)) + ' ';
  GpSds.Open;
  x_MonthName := '';
  if (not GpSds.Eof) and (GpSds['MonthShortName'] <> null) then
    x_MonthName := GpSds['MonthShortName'];

  x_Path := GetDesktopPath(nil);
  x_FileName := x_Path + '\BackOffice_Rpt\GSTR2_VendorBills_Reco_' + x_MonthName + '_' + IntToStr(YearOf(cxGstr2Date.Date)) + '.xlsx';

  x_MonthName := x_MonthName + ', ' + IntToStr(YearOf(cxGstr2Date.Date));

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr2] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ',' +
      'null, 1, ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',cxGstr2Date.Date));
  GpSds.Open;

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\GSTR2_VendorBills_Reco.xlsx';

  scExcelExport.WorksheetName := 'VendorBills_Reco';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  scExcelExport.ExcelWorkSheet.Range['A1','A1'].Value := 'VENDOR-WISE INVOICES FOR THE PERIOD ' + x_MonthName;

  x_StartRow := 5;
  x_row := x_StartRow;

  while not GpSds.EOF do
  begin

    x_Cell := 'A';
    if GpSds['Gstin'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Gstin'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Organisation'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Organisation'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['Accounts_id'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Accounts_id'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['TransactionDate'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['TransactionDate']);

    x_Cell := NextColumn(x_Cell);
    if GpSds['BillNo'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BillNo'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['BillPeriod'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BillPeriod'];

    x_Cell := NextColumn(x_Cell);
    if GpSds['GstPeriod'] <> null then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['GstPeriod'];

    x_Cell := NextColumn(x_Cell);
    if (GpSds['BillAmt'] <> null) and (GpSds['BillAmt'] <> 0.0) then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['BillAmt'];

    x_Cell := NextColumn(x_Cell);
    if (GpSds['TaxableValue'] <> null) and (GpSds['TaxableValue'] <> 0.0) then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['TaxableValue'];

    x_Cell := NextColumn(x_Cell);
    if (GpSds['I_GST'] <> null) and (GpSds['I_GST'] <> 0.0) then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['I_GST'];

    x_Cell := NextColumn(x_Cell);
    if (GpSds['C_GST'] <> null) and (GpSds['C_GST'] <> 0.0) then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['C_GST'];

    x_Cell := NextColumn(x_Cell);
    if (GpSds['S_GST'] <> null) and (GpSds['S_GST'] <> 0.0) then
      scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['S_GST'];

    x_row := x_row + 1;
    GpSds.Next;

  end;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeTop].LineStyle := xlContinuous;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'K'+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlMedium;

  scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := '=SUM(G' + IntToStr(x_StartRow) + ':G' + IntToStr(x_row-1) + ')';
  scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value := '=SUM(H' + IntToStr(x_StartRow) + ':H' + IntToStr(x_row-1) + ')';
  scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value := '=SUM(I' + IntToStr(x_StartRow) + ':I' + IntToStr(x_row-1) + ')';
  scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value := '=SUM(J' + IntToStr(x_StartRow) + ':J' + IntToStr(x_row-1) + ')';
  scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value := '=SUM(K' + IntToStr(x_StartRow) + ':K' + IntToStr(x_row-1) + ')';

  scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'K'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  scExcelExport.SaveAs(x_FileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

  ShowMessage('Saved as ' + x_FileName);

end;

function TGstr2Form.GetDesktopPath(Sender: TObject): string;
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

procedure TGstr2Form.Export1Click(Sender: TObject);
begin
  inherited;
  Export_Gstr2_CSV (3);
end;

procedure TGstr2Form.ExportCSVFilesAll1Click(Sender: TObject);
begin
  inherited;
  Export_Gstr2_CSV (4);
end;

procedure TGstr2Form.Export_Gstr2_CSV(x_option: integer);
var
  x_Path, x_FileName1, x_str : string;
  f1: textFile;
  GpSds: TSQLDataSet;
begin

  x_Path := GetDesktopPath(nil);
  x_FileName1 := x_Path + '\BackOffice_Rpt\GSTR2_B2B.csv';

  AssignFile(f1, x_FileName1);
  ReWrite(f1);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'exec [p_Gstr2] ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ',' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ',' +
      'null, ' + IntToStr(x_option) + ', ' +
      QuotedStr(FormatDateTime('mm/dd/yyyy',cxGstr2Date.Date));
  GpSds.Open;

  x_str := 'GSTIN of Supplier,Invoice Number,Invoice date,Invoice Value,Place Of Supply,Reverse Charge,Invoice Type,Rate,Taxable Value,';
  x_str := x_str + 'Integrated Tax Paid,Central Tax Paid,State/UT Tax Paid,Cess Paid,Eligibility For ITC,Availed ITC Integrated Tax,Availed ITC Central Tax,Availed ITC State/UT Tax,Availed ITC Cess';
  WriteLn(f1,x_str);

  while not GpSds.EOF do
    begin

      x_str := '';

      if GpSds['Gstin'] <> null then
        x_str := x_str + GpSds['Gstin'];
      x_str := x_str + ',';

      if GpSds['BillNo'] <> null then
        x_str := x_str + GpSds['BillNo'];
      x_str := x_str + ',';

      if GpSds['BillDate'] <> null then
        x_str := x_str + FormatDateTime('dd-mmm-yy',GpSds['BillDate']);
      x_str := x_str + ',';

      if GpSds['BillAmt'] <> null then
        x_str := x_str + FloatToStr(GpSds['BillAmt']);
      x_str := x_str + ',';

      if GpSds['PlaceOfSupply'] <> null then
        x_str := x_str + GpSds['PlaceOfSupply'];
      x_str := x_str + ',';

      if GpSds['ReverseCharge'] <> null then
        x_str := x_str + GpSds['ReverseCharge'];
      x_str := x_str + ',';

      if GpSds['InvoiceType'] <> null then
        x_str := x_str + GpSds['InvoiceType'];
      x_str := x_str + ',';

      if GpSds['Rate'] <> null then
        x_str := x_str + FloatToStr(GpSds['Rate']);
      x_str := x_str + ',';

      if GpSds['TaxableValue'] <> null then
        x_str := x_str + FloatToStr(GpSds['TaxableValue']);
      x_str := x_str + ',';

      if GpSds['I_GST'] <> null then
        x_str := x_str + FloatToStr(GpSds['I_GST']);
      x_str := x_str + ',';

      if GpSds['C_GST'] <> null then
        x_str := x_str + FloatToStr(GpSds['C_GST']);
      x_str := x_str + ',';

      if GpSds['S_GST'] <> null then
        x_str := x_str + FloatToStr(GpSds['S_GST']);
      x_str := x_str + ',,';

      if GpSds['Eligibility'] <> null then
        x_str := x_str + GpSds['Eligibility'];
      x_str := x_str + ',,,,';

      WriteLn(f1,x_str);

      GpSds.Next;

    end;

  GpSds.Free;

  CloseFile(f1);

  ShowMessage ('CSV files saved in ' + x_Path + '\BackOffice_Rpt directory');

end;



end.
