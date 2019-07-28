unit TDSFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxGroupBox,
  StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeelPainters, cxButtons, cxNavigator, cxDBNavigator, cxCalendar,
  Menus, DBCtrls, DateUtils, scExcelExport, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TTDSForm = class(TCustom1M1DForm)
    Detail1Cdstdsdetails_id: TIntegerField;
    Detail1Cdstds_id: TIntegerField;
    Detail1Cdsdatepaid: TSQLTimeStampField;
    Detail1Cdsamountpaid: TBCDField;
    Detail1Cdsamountdeducted: TBCDField;
    Detail1Cdsrate: TBCDField;
    Detail1Cdsdatecredited: TSQLTimeStampField;
    Detail1Cdsbranch: TStringField;
    MasterCdstds_id: TIntegerField;
    MasterCdscertno: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsdate: TSQLTimeStampField;
    MasterCdstdscategories_id: TIntegerField;
    MasterCdsmonth: TIntegerField;
    MasterCdsyearref: TIntegerField;
    MasterCdscompanies_id: TIntegerField;
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CertificateNoEdit: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    CategoryLCmb: TcxDBLookupComboBox;
    TdsCategoriesSds: TSQLDataSet;
    TdsCategoriesDsp: TDataSetProvider;
    TdsCategoriesDs: TDataSource;
    TdsCategoriesCds: TClientDataSet;
    TdsCategoriesCdsTDSCategories_id: TIntegerField;
    TdsCategoriesCdsDescription: TStringField;
    TdsDetailGridDBTableView1: TcxGridDBTableView;
    TdsDetailGridLevel1: TcxGridLevel;
    TdsDetailGrid: TcxGrid;
    TdsDetailGridDBTableView1datepaid: TcxGridDBColumn;
    TdsDetailGridDBTableView1amountpaid: TcxGridDBColumn;
    TdsDetailGridDBTableView1amountdeducted: TcxGridDBColumn;
    TdsDetailGridDBTableView1rate: TcxGridDBColumn;
    TdsDetailGridDBTableView1datecredited: TcxGridDBColumn;
    TdsDetailGridDBTableView1branch: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    CloseBtn: TcxButton;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    YearSrchEdit: TcxTextEdit;
    CertSrchEdit: TcxTextEdit;
    OrgSrchEdit: TcxTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    DateEdit: TcxDBDateEdit;
    MasterCdsCompanyName: TStringField;
    UtilitiesBtn: TcxButton;
    ReportsBtn: TcxButton;
    UtilitiesPopup: TPopupMenu;
    ReportsPopup: TPopupMenu;
    DSCertificate1: TMenuItem;
    Statement1: TMenuItem;
    Summary1: TMenuItem;
    N1: TMenuItem;
    N194JReportProfessionalFees1: TMenuItem;
    Form26CAnnualReport1: TMenuItem;
    GenerateCertificatesformonth1: TMenuItem;
    DeleteCetificatesforthemonth1: TMenuItem;
    DBText1: TDBText;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    PartySds: TSQLDataSet;
    PartyDsp: TDataSetProvider;
    PartyCds: TClientDataSet;
    PartyCdsAddressbook_id: TIntegerField;
    PartyCdsOrganisation: TStringField;
    PartyCdsCity: TStringField;
    PartyCdsCities_id: TIntegerField;
    PartyCdsContact: TStringField;
    PartyDS: TDataSource;
    MonthSds: TSQLDataSet;
    MonthDsp: TDataSetProvider;
    MonthCds: TClientDataSet;
    MonthDS: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    MonthCdsMonths_id: TIntegerField;
    MonthCdsMonthName: TStringField;
    MonthCdsMonthShortName: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    N2: TMenuItem;
    N3: TMenuItem;
    Filter1: TMenuItem;
    N4: TMenuItem;
    DSReturnExcel1: TMenuItem;
    scExcelExport1: TscExcelExport;
    DSStatementNewExcel1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure YearSrchEditKeyPress(Sender: TObject; var Key: Char);
    procedure CertSrchEditKeyPress(Sender: TObject; var Key: Char);
    procedure OrgSrchEditKeyPress(Sender: TObject; var Key: Char);
    procedure DateEditExit(Sender: TObject);
    procedure DSCertificate1Click(Sender: TObject);
    procedure Statement1Click(Sender: TObject);
    procedure Summary1Click(Sender: TObject);
    procedure N194JReportProfessionalFees1Click(Sender: TObject);
    procedure Form26CAnnualReport1Click(Sender: TObject);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure Filter1Click(Sender: TObject);
    procedure TdsDetailGridDBTableView1DblClick(Sender: TObject);
    procedure GenerateCertificatesformonth1Click(Sender: TObject);
    procedure DeleteCetificatesforthemonth1Click(Sender: TObject);
    procedure DSReturnExcel1Click(Sender: TObject);
    procedure DSStatementNewExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TDSForm: TTDSForm;
  _TDSForm_Level : Integer;
  _TDSForm_YearRef: integer;
  _TDSForm_companies_id: integer;

implementation

uses BackOfficeDM, MainFm, GeneralUt, SearchSortFm, ReportParameterFm,
  RptTdsFormNo16Fm, Math, RptTDSStamentFm, RptTDSSummaryFm, RptTDS194JFm,
  RptTDSForm26CFm, Tds_ExcelReportsUt;

{$R *.dfm}

procedure TTDSForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'TDS';
  MasterKeyField := 'TDS_id';

  Detail1CdsName := 'TDSDetails';
  Detail1KeyField := 'TDSDetails_id';

  MasterCds.Close;
  MasterCds.Filter := 'YearRef = ' + IntToStr(_TDSForm_YearRef) + ' ' +
    'AND Companies_id = ' + IntToStr(g_companies_id);
  MasterCds.Filtered := True;

  AdmLevel := _TDSForm_Level;

  inherited;

  TdsCategoriesCds.Active := False;
  TdsCategoriesCds.Active := True;

  PartyCds.Active := False;
  PartyCds.Active := True;

  MonthCds.Active := False;
  MonthCds.Active := True;

end;

procedure TTDSForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TDSForm := nil;
end;

procedure TTDSForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TTDSForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['date']=null then
    Raise Exception.Create('Enter TDS Date');

  if MasterCds['addressbook_id']=null then
    Raise Exception.Create('Enter The Organisation Name');

  if MasterCds['tdscategories_id']=null then
    Raise Exception.Create('Enter The Category');

  if MasterCds['month']=null then
    Raise Exception.Create('Enter The TDS Month');

  if MasterCds['month'] > 12 then
    Raise Exception.Create('Month should not be greator than 12 ');

  if MasterCds['companies_id']=null then
    Raise Exception.Create('Please select company');

  if MasterCds['CertNo']=null then
    Raise Exception.Create('Please enter certificate no.');

  if MasterCds['YearRef']=null then
    Raise Exception.Create('Please enter year reference');

  if IsRecordDuplicate then
    Raise Exception.Create('Duplicate certificate found');



end;
procedure TTDSForm.MasterCdsAfterInsert(DataSet: TDataSet);
var
  yr_ref: string;
  cert_n: integer;
  GpSds : TSQLDataSet;
begin
  inherited;
  yr_ref := CalcCentury(Date(),4);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT MAX(CertNo) AS MaxCertNo FROM tds ' +
    'WHERE yearref = ' + yr_ref +
    ' AND companies_id = ' + IntToStr(g_companies_id);
  GpSds.Open;
  GpSds.First;

  if (not GpSds.Eof) and (GpSds['MaxCertNo'] <> null) then
    cert_n := GpSds['MaxCertNo'] + 1
  else
    cert_n := 1;

  MasterCds['CertNo'] := cert_n;
  MasterCds['YearRef'] := StrToInt(yr_ref);
  MasterCds['Date'] := date();
  MasterCds['Companies_id'] := g_companies_id;

end;

procedure TTDSForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Detail1Cds['Branch'] = null then
    raise Exception.Create ('Please Enter the branch');

end;

procedure TTDSForm.YearSrchEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      if CertSrchEdit.Text = '' then
        raise Exception.Create ('Please enter Certificate No.')
      else
        begin
          if not MasterCds.Locate('CertNo;YearRef',
            VarArrayOf([StrToInt(CertSrchEdit.Text) , StrToInt(YearSrchEdit.Text)]),[]) then
            ShowMessage('Not Found');
        end;
    end;
end;

procedure TTDSForm.CertSrchEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      if YearSrchEdit.Text = '' then
        raise Exception.Create('Please enter Year Referance ')
      else
        begin
          if not MasterCds.Locate('CertNo;YearRef',
              VarArrayOf([StrToInt(CertSrchEdit.Text) , StrToInt(YearSrchEdit.Text)]),[]) then
            ShowMessage('Not Found');
        end;
    end;
end;

procedure TTDSForm.OrgSrchEditKeyPress(Sender: TObject; var Key: Char);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  i: integer;
begin

  if key = #13 then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      QueryString := 'SELECT Tds_id, a.Organisation, m.MonthName ' +
        'FROM Tds t LEFT JOIN dbo.fn_Addressbook(3,'''') a ON t.Addressbook_id = a.Addressbook_id ' +
        'LEFT JOIN Months m ON t.Month = m.Months_id ' +
        'WHERE a.Organisation LIKE ''%' + Trim(OrgSrchEdit.Text) + '%'' ' +
        'AND t.YearRef = ' + IntToStr(_TdsForm_YearRef) + ' ' +
        'ORDER BY m.Months_id';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Close;
      SearchSortForm.SearchSds.CommandText := QueryString;
      SearchSortForm.SearchSds.Open;

      SearchSortForm.SearchCds.Open;

      for i := 0 to 2 do
        begin
          SearchSortForm.SearchGridDBTableView1.CreateColumn;
        end;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Tds_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'MonthName';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Month';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Tds_id';

      if not SearchSortForm.SearchCds.Eof then
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              MasterCds.Locate('Tds_id',SearchSortForm.SearchCds['Tds_id'],[]);
            end;

        end
      else
        ShowMessage ('No found');

      SearchSortForm.Free;
      SearchSortForm := nil;

      GPSds.Free;

    end;

end;

procedure TTDSForm.DateEditExit(Sender: TObject);
var
  YearRef : Integer;
begin
  inherited;
  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit )then
    begin
      try
        YearRef := StrToInt(CalcCentury(DateEdit.Date,4));
        MasterCds['YearRef'] := YearRef;
      except
        Raise Exception.Create('Invalid Date');
      end;
    end;  
end;

procedure TTDSForm.DSCertificate1Click(Sender: TObject);
var
   Str_month : Integer;
   xYear, xMonth, xDay: Word;
begin
  inherited;
  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);

  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      Str_month := MonIndex(UpperCase(ReportParameterForm.cxMonthLCMB.Text));

      if RptTdsFormNo16Form = nil then
        Application.CreateForm(TRptTdsFormNo16Form,RptTdsFormNo16Form);

      RptTdsFormNo16Form.Form16Sds.Active := False;
      RptTdsFormNo16Form.Form16Cds.Active := False;

      RptTdsFormNo16Form.Form16Sds.CommandText := '';
      RptTdsFormNo16Form.Form16Sds.CommandText := ' SELECT * FROM fn_Rpt_TDS_Certificate() ' +
                  ' WHERE Month = ' +  IntToStr(ReportParameterForm.cxMonthLCMB.EditValue) +
                  ' AND Year = ' +  IntToStr(ReportParameterForm.YearEdit.EditValue) +
                  ' AND Companies_id = ' + IntToStr(g_companies_id) +
                  ' ORDER BY CertNo ' ;

      RptTdsFormNo16Form.Form16Sds.Active := True;
      RptTdsFormNo16Form.Form16Cds.Active := True;

      RptTdsFormNo16Form.QuickRep1.PreviewModal;

      RptTdsFormNo16Form.Release;
      RptTdsFormNo16Form := nil;

    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TTDSForm.Statement1Click(Sender: TObject);
var
   x_FromDate, x_ToDate: TDateTime;
   xYear, xMonth, xDay: Word;
begin
  inherited;
  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);

  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      x_FromDate := EncodeDate(StrToInt(ReportParameterForm.YearEdit.Text),
        ReportparameterForm.cxMonthLCMB.EditValue, 1);
      x_ToDate := IncMonth(x_FromDate,1);
      x_ToDate := IncDay(x_ToDate, -1);

      if RptTDSStamentForm = nil then
        Application.CreateForm(TRptTDSStamentForm, RptTDSStamentForm);

      RptTDSStamentForm.StatementSds.Active := False;
      RptTDSStamentForm.StatementCds.Active := False;

      RptTDSStamentForm.StatementSds.CommandText := '';
      RptTDSStamentForm.StatementSds.CommandText := ' SELECT * FROM fn_Rpt_TDS_Statement() ' +
                ' WHERE  (TransactionDate BETWEEN ''' +
                FormatDateTime('mm/dd/yyyy',x_FromDate) + ''' AND ''' +
                FormatDateTime('mm/dd/yyyy',x_ToDate) + ''') ' +
                ' AND Companies_id = ' + IntToStr(g_companies_id) +
                ' ORDER BY Organisation, TransactionDate, BillNo ' ;

      RptTDSStamentForm.StatementSds.Open;
      RptTDSStamentForm.StatementCds.Active := True;

      RptTDSStamentForm.lbl_fromdate.Caption := FormatDateTime('dd/mm/yyyy', x_FromDate);
      RptTDSStamentForm.lbl_todate.Caption := FormatDateTime('dd/mm/yyyy', x_ToDate);

      RptTDSStamentForm.QuickRep1.PreviewModal;
      RptTDSStamentForm.Release;
      RptTDSStamentForm := nil;

    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TTDSForm.Summary1Click(Sender: TObject);
var
  xYear, xMonth, xDay: Word;
begin
  inherited;
  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);

  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      if RptTDSSummaryForm = nil then
        Application.CreateForm(TRptTDSSummaryForm, RptTDSSummaryForm);

      RptTDSSummaryForm.SummarySds.Active := False;
      RptTDSSummaryForm.SummaryCds.Active := False;

      RptTDSSummaryForm.SummarySds.CommandText := '';
      RptTDSSummaryForm.SummarySds.CommandText := ' SELECT yearmonth, company, category, organisation, sum(coalesce(amountpaid, 0)) as creditpaid, ' +
              ' sum(coalesce(amountdeducted, 0)) as deducted ' +
              ' FROM  fn_Rpt_TDS_Summary() ' +
              ' WHERE [month] = ' + IntToStr(ReportparameterForm.cxMonthLCMB.EditValue) +
              ' AND [year] = ' + ReportParameterForm.YearEdit.Text +
              ' AND companies_id = '+ IntToStr(g_companies_id) +
              ' GROUP BY companies_id, company, tdscategories_id, category, addressbook_id, organisation, yearmonth ' +
              ' ORDER BY company, yearmonth, category, organisation ' ;

      RptTDSSummaryForm.SummarySds.Open;
      RptTDSSummaryForm.SummaryCds.Active := True;

      RptTDSSummaryForm.QuickRep1.PreviewModal;
      RptTDSSummaryForm.Release;
      RptTDSSummaryForm := nil;

    end;
  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TTDSForm.N194JReportProfessionalFees1Click(Sender: TObject);
var
   xYear, xMonth, xDay: word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);

  if xMonth > 3 then
    xYear := xYear+1;

  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.Label7.Caption := 'Year Ref.';

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      if RptTDS194JForm = nil then
         Application.CreateForm(TRptTDS194JForm, RptTDS194JForm);

      RptTDS194JForm.ProfSds.Close;
      RptTDS194JForm.ProfCds.Active := False;

      RptTDS194JForm.ProfSds.CommandText := '';
      RptTDS194JForm.ProfSds.CommandText := 'SELECT  * FROM fn_Rpt_TDS_ProfessionalFees() '+
                ' WHERE YearRef = ' + ReportParameterForm.YearEdit.Text +
                ' ORDER BY Organisation, CertNo';
      RptTDS194JForm.ProfSds.Open;
      RptTDS194JForm.ProfCds.Active := True;

      RptTDS194JForm.QuickRep1.PreviewModal;
      RptTDS194JForm.Release;
      RptTDS194JForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;
end;

procedure TTDSForm.Form26CAnnualReport1Click(Sender: TObject);
var
   xYear, xMonth, xDay: Word;
begin
  inherited;

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);

  if xMonth > 3 then
    xYear := xYear+1;

  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.Label7.Caption := 'Year Ref.';

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      if RptTDSForm26CForm = nil then
         Application.CreateForm(TRptTDSForm26CForm, RptTDSForm26CForm);

      RptTDSForm26CForm.AnnualSds.Close;
      RptTDSForm26CForm.AnnualCds.Active := False;

      RptTDSForm26CForm.AnnualSds.CommandText := '';
      RptTDSForm26CForm.AnnualSds.CommandText := 'SELECT * FROM fn_Rpt_TDS_AnnualReport() ' +
      ' WHERE YearRef = ' + ReportParameterForm.YearEdit.Text +
      'ORDER BY Organisation, DatePaid' ;

      RptTDSForm26CForm.AnnualSds.Open;
      RptTDSForm26CForm.AnnualCds.Active :=True;

      RptTDSForm26CForm.QuickRep1.PreviewModal;

      RptTDSForm26CForm.Release;
      RptTDSForm26CForm := nil;
    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;
end;

procedure TTDSForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
DelSds : TSQLDataSet;
begin
  inherited;
  DelSds := TSQLDataSet.Create(nil);
  DelSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  DelSds.Close;
  DelSds.CommandText := '' ;
  DelSds.CommandText := 'SELECT COUNT(*) AS Cnt FROM TdsDetails ' +
    ' WHERE Tds_id = ' + IntToStr(MasterCdstds_id.Value);
  DelSds.Open;

  if DelSds['Cnt'] > 0 then
    raise Exception.Create('This TDS has Detail records. First you have to delete details records.');

end;

function TTDSForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Tds ' +
    'WHERE Companies_id = ' + IntToStr(MasterCds['Companies_id']) + ' ' +
    'AND CertNo = ' + IntToStr(MasterCds['CertNo']) + ' ' +
    'AND YearRef = ' + IntToStr(MasterCds['YearRef']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Tds_id <> ' + IntToStr(MasterCds['Tds_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TTDSForm.Filter1Click(Sender: TObject);
var
  x_Year: integer;
begin
  inherited;


  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MonthOfTheYear(Date) > 3 then
    x_Year := YearOf(Date) + 1
  else
    x_year := YearOf(Date);

  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.VouNoEdit.Visible := False;

  ReportParameterForm.YearEdit.Text := IntToStr(x_Year);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOK then
    begin

      _TDSForm_YearRef := StrToInt(ReportParameterForm.YearEdit.Text);

      MasterCds.Close;
      MasterCds.Filter := 'YearRef = ' + IntToStr(_TDSForm_YearRef) + ' ' +
        'AND Companies_id = ' + IntToStr(g_companies_id);
      MasterCds.Filtered := True;
      MasterCds.Open;

    end;

  ReportParameterForm.Free;
  ReportParameterForm := nil;



end;

procedure TTDSForm.TdsDetailGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;

  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TTDSForm.GenerateCertificatesformonth1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: word;
begin
  inherited;

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
    
  _inputstr := '22000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  //ReportParameterForm.cxDateEdit1.Date := EncodeDate(xYear,4,1);
  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Date := Date();
  ReportParameterForm.cxCompanyLCMB.EditValue := _TDSForm_Companies_id;

  ReportParameterForm.cxDateEdit2.Visible := False;
  ReportParameterForm.FromDateLabel.Caption := 'Cert. Date';

  DecodeDate(Date(),xYear,xMonth,xDay);

  if xMonth = 1 then
    begin
      xMonth := 12;
      xYear := xYear - 1;
    end
  else
    begin
      xMonth := xMonth - 1;
    end;

  ReportParameterForm.cxMonthLCMB.EditValue := xMonth;
  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'Exec p_GenerateTdsCertificates ''' +
                FormatDateTime('mm/dd/yyyy',ReportParameterForm.cxDateEdit1.Date) + ''',' +
                ReportParameterForm.YearEdit.Text + ',' +
                IntToStr(ReportParameterForm.cxMonthLCMB.EditValue) + ',' +
                IntToStr(ReportParameterForm.cxCOmpanyLCMB.EditValue);
      GpSds.ExecSQL;

      GpSds.Free;

      MasterCds.Close;
      MasterCds.Open;

      MasterCds.Last;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TTDSForm.DeleteCetificatesforthemonth1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  xYear,xMonth,xDay: word;
begin
  inherited;

  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  _inputstr := '02000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  DecodeDate(Date(),xYear,xMonth,xDay);
  if xMonth <= 3 then
    xYear := xYear - 1;

  ReportParameterForm.cxCompanyLCMB.EditValue := _TDSForm_Companies_id;

  DecodeDate(Date(),xYear,xMonth,xDay);

  if xMonth = 1 then
    begin
      xMonth := 12;
      xYear := xYear - 1;
    end
  else
    begin
      xMonth := xMonth - 1;
    end;

  ReportParameterForm.cxMonthLCMB.EditValue := xMonth;
  ReportParameterForm.YearEdit.Text := IntToStr(xYear);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if MessageDlg('Are you sure you want to delete?', mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin

          GpSds := TSQLDataSet.Create(nil);
          GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

          GpSds.Close;
          GpSds.CommandText := 'exec p_DeleteTdsCertificates ' +
                    ReportParameterForm.YearEdit.Text + ',' +
                    IntToStr(ReportParameterForm.cxMonthLCMB.EditValue) + ',' +
                    IntToStr(ReportParameterForm.cxCOmpanyLCMB.EditValue);
          GpSds.ExecSQL;

          GpSds.Free;

          MasterCds.Close;
          MasterCds.Open;

          MasterCds.Last;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;



end;

procedure TTDSForm.DSReturnExcel1Click(Sender: TObject);
var
   x_FromDate, x_ToDate: TDateTime;
   GpSds: TSQLDataSet;
begin
  inherited;

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      x_FromDate := VarToDateTime(_ret1[1]);
      x_ToDate := VarToDateTime(_ret2[1]);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'select Organisation, round(sum(Paid),2) As BillAmount, ' +
       'CONVERT(VARCHAR(10),TransactionDate,103) AS TrsDate, sum(paid) as Billed, ' +
       'sum(TotalDeduction) as TotalDeduction, ' +
       'sum(Tds) as Tds, ' +
       'sum(Surcharge) as Surcharge, ' +
       'sum(Cess) as Cess, ' +
       'City ' +
       'from fn_Rpt_TDS_Statement() ' +
       'WHERE  (TransactionDate BETWEEN ''' +
        FormatDateTime('mm/dd/yyyy',x_FromDate) + ''' AND ''' +
        FormatDateTime('mm/dd/yyyy',x_ToDate) + ''') ' +
        ' AND Companies_id = ' + IntToStr(g_companies_id) + ' ' +
        'group by Organisation, City, TransactionDate ' +
        'ORDER BY Organisation, City, TransactionDate';

      GpSds.Open;

      try
        scExcelExport1.ExcelVisible:=True;
        scExcelExport1.LoadDefaultProperties;
        scExcelExport1.Dataset := GpSds;
        scExcelExport1.WorksheetName:='TDS';
        scExcelExport1.ConnectTo := ctNewExcel;
        scExcelExport1.ExportDataset;
      finally
        scExcelExport1.Disconnect;
      end;

      GpSds.Free;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TTDSForm.DSStatementNewExcel1Click(Sender: TObject);
var
  x_FileName: string;
  x_FromDate, x_ToDate: TDateTime;
begin
  inherited;

  x_FileName := g_ReportDir + '\Tds.xlsx';

  _inputstr := '20000000';

  _def1[1] := g_FromDate;
  _def2[1] := g_ToDate;

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = mrOk then
    begin

      x_FromDate := VarToDateTime(_ret1[1]);
      x_ToDate := VarToDateTime(_ret2[1]);

      Tds_Excel(scExcelExport1, x_FileName, x_FromDate, x_ToDate, 1);

      ShowMessage('Saved As ' + x_FileName);

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

end.
