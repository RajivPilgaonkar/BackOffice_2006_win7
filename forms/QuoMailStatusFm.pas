unit QuoMailStatusFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, FMTBcd, DBClient,
  Provider, SqlExpr, dxPSCore, dxPScxCommon, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridDBTableView, cxGrid, ComCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxContainer, cxGroupBox, cxButtons,
  ExtCtrls, cxRadioGroup, cxCurrencyEdit, cxCalc, cxCheckBox, DateUtils,
  dxPScxGrid6Lnk, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;



type
  TQuoMailStatusForm = class(TForm)
    Panel1: TPanel;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxToDateEdit: TcxDateEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PageControl: TPageControl;
    TabSheetPendingReq: TTabSheet;
    cxGridMail: TcxGrid;
    cxGridMailDBTableView1: TcxGridDBTableView;
    cxGridMailDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMailLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    MailStatusSds: TSQLDataSet;
    MailStatusDsp: TDataSetProvider;
    MailStatusCds: TClientDataSet;
    MailStatusDs: TDataSource;
    N1: TMenuItem;
    ExpansAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    MailStatusCdsQuoAccommodation_id: TIntegerField;
    MailStatusCdsCity: TStringField;
    MailStatusCdsorganisation: TStringField;
    MailStatusCdsTourCode: TStringField;
    MailStatusCdsPaxName: TStringField;
    MailStatusCdsQuotationNo: TIntegerField;
    MailStatusCdsuid: TStringField;
    MailStatusCdsAccString: TStringField;
    MailStatusCdsDateIn: TSQLTimeStampField;
    MailStatusCdsRequestedOn: TSQLTimeStampField;
    MailStatusCdsRemarks: TStringField;
    cxGridMailDBBandedTableView1QuoAccommodation_id: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1City: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1TourCode: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1PaxName: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1QuotationNo: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1uid: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1AccString: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxUserCkb: TcxCheckBox;
    TabSheetPendingReqTickets: TTabSheet;
    cxGridTicket: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridTicketDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridTicketLevel1: TcxGridLevel;
    MailStatusTicketSds: TSQLDataSet;
    MailStatusTicketDsp: TDataSetProvider;
    MailStatusTicketCds: TClientDataSet;
    MailStatusTicketDs: TDataSource;
    MailStatusTicketCdsQuoTickets_id: TIntegerField;
    MailStatusTicketCdsorganisation: TStringField;
    MailStatusTicketCdsPhone: TStringField;
    MailStatusTicketCdsTourCode: TStringField;
    MailStatusTicketCdsPaxName: TStringField;
    MailStatusTicketCdsQuotationNo: TIntegerField;
    MailStatusTicketCdsuid: TStringField;
    MailStatusTicketCdsTicketString: TStringField;
    MailStatusTicketCdsTravelDate: TSQLTimeStampField;
    MailStatusTicketCdsRequestedOn: TSQLTimeStampField;
    MailStatusTicketCdsRemarks: TStringField;
    cxGridTicketDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1TourCode: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1PaxName: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1QuotationNo: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1uid: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1TicketString: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1TravelDate: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    MailStatusTicketCdsMode: TStringField;
    cxGridTicketDBBandedTableView1Mode: TcxGridDBBandedColumn;
    MailStatusCdsPhone: TStringField;
    MailStatusCdsContact: TStringField;
    cxGridTicketDBBandedTableView1Contact: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1Contact: TcxGridDBBandedColumn;
    MailStatusTicketCdsContact: TStringField;
    MailStatusTicketCdsBookingDate: TSQLTimeStampField;
    cxGridTicketDBBandedTableView1BookingDate: TcxGridDBBandedColumn;
    MailStatusCdsQuotations_id: TIntegerField;
    MailStatusTicketCdsQuotations_id: TIntegerField;
    PopupMenu2: TPopupMenu;
    UpdateString1: TMenuItem;
    MailStatusTicketCdsTrainNo: TStringField;
    cxGridTicketDBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxUnsentReqCkb: TcxCheckBox;
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure ExpansAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure cxGridImpPoDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure UpdateString1Click(Sender: TObject);
    procedure cxGridMailDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxUnsentReqCkbPropertiesEditValueChanged(Sender: TObject);
    procedure cxUserCkbPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoMailStatusForm: TQuoMailStatusForm;

implementation

uses QuoCitywiseFm, BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TQuoMailStatusForm.SaveAsExcel1Click(Sender: TObject);
begin

  if PageControl.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsAccommodation.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridMail, True, True, False, cxGridMailDBBandedTableView1);
    end
  else if PageControl.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsTickets.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridTicket, True, True, False, cxGridTicketDBBandedTableView1);
    end;

end;

procedure TQuoMailStatusForm.Print1Click(Sender: TObject);
begin

  if PageControl.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridMail;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Accommodation Requests due upto ' + cxToDateEdit.Text;
    end
  else if PageControl.ActivePageIndex = 1 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridTicket;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Ticket Requests due upto ' + cxToDateEdit.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TQuoMailStatusForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoMailStatusForm.cxButton3Click(Sender: TObject);
var
  x_User, x_str: string;
begin

  x_user := '';
  if cxUserCkb.Checked then
    x_user := ' AND q.Admusers_id = ' + IntToStr(g_users_id) + ' ';

  if PageControl.ActivePage = TabSheetPendingReq then
    begin

      x_str := ' ';
      if cxUnsentReqCkb.Checked = false then
        x_str := 'AND qa.RequestedOn IS NOT NULL ';

      MailStatusSds.Close;
      MailStatusSds.CommandText :=
        'SELECT qa.QuoAccommodation_id, a.City, a.organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'q.TourCode, q.PaxName, q.QuotationNo, ' +
        'u.uid, qa.AccString, qa.DateIn, qa.RequestedOn, qa.Remarks, dbo.fn_GetContact(a.Addressbook_id) as Contact, qa.Quotations_id ' +
        'FROM QuoAccommodation qa ' +
        'LEFT JOIN Quotations q ON qa.Quotations_id = q.Quotations_id ' +
        'LEFT JOIN Addressbook a ON qa.HotelAddressbook_id = a.Addressbook_id ' +
        'LEFT JOIN AdmUsers u ON q.AdmUsers_id = u.AdmUsers_id ' +
        'WHERE DateIn <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        x_str +
        'AND qa.ConfirmedOn IS NULL ' +
        'AND qa.DateIn > GETDATE() ' +
        'AND q.Trial = 0 ' +
        'AND qa.Packages_id IS NULL ' +
        x_user + ' ' +
        'ORDER BY u.uid, qa.DateIn';
      MailStatusSds.Open;

      MailStatusCds.Close;
      MailStatusCds.Open;

      cxGridMailDBBandedTableView1.ViewData.Expand(True);

    end
  else if PageControl.ActivePage = TabSheetPendingReqTickets then
    begin

      x_str := ' ';
      if cxUnsentReqCkb.Checked = false then
        x_str := 'AND qt.RequestedOn IS NOT NULL ';

      MailStatusTicketSds.Close;
      MailStatusTicketSds.CommandText :=
        'SELECT qt.QuoTickets_id, a.organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'q.TourCode, q.PaxName, q.QuotationNo,' +
        'u.uid, qt.TicketString, qt.TravelDate, qt.RequestedOn, qt.Remarks, ' +
        't.Details as Mode, dbo.fn_GetContact(a.Addressbook_id) as Contact,  ' +
        'DATEADD(day, CASE WHEN qt.Tickets_id = 1 THEN -180 WHEN qt.Tickets_id = 2 AND td.DeadlinePaxDays IS NOT NULL THEN (td.DeadlinePaxDays)*-1 ELSE -120 END, qt.TravelDate) AS BookingDate, ' +
        'qt.Quotations_id,  ' +
        'CASE WHEN qt.Tickets_id = 1 THEN qt.FlightNo ELSE qt.TrainNo END AS TrainNo ' +
        'FROM QuoTickets qt ' +
        'LEFT JOIN Quotations q ON qt.Quotations_id = q.Quotations_id ' +
        'LEFT JOIN Addressbook a ON qt.AgentAddressbook_id = a.Addressbook_id ' +
        'LEFT JOIN AdmUsers u ON q.AdmUsers_id = u.AdmUsers_id ' +
        'LEFT JOIN Tickets t ON qt.Tickets_id = t.Tickets_id ' +
        'LEFT JOIN TicketDeadlines td ON qt.Tickets_id = td.Tickets_id AND qt.TrainNo = td.TrainNo AND td.Tickets_id = 2 ' +
        'WHERE TravelDate <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        x_str +
        'AND qt.ConfirmedOn IS NULL ' +
        'AND qt.TravelDate > GETDATE() ' +
        'AND q.Trial = 0 ' +
        'AND qt.Tickets_id IN (1,2) ' +
        'AND qt.Packages_id IS NULL ' +
        x_user + ' ' +
        'ORDER BY u.uid, qt.TravelDate';
      MailStatusTicketSds.Open;

      MailStatusTicketCds.Close;
      MailStatusTicketCds.Open;

      cxGridTicketDBBandedTableView1.ViewData.Expand(True);

    end;


end;

procedure TQuoMailStatusForm.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetPendingReq;

  cxToDateEdit.Date := IncMonth(Date,6);
end;

procedure TQuoMailStatusForm.FormDestroy(Sender: TObject);
begin
  QuoMailStatusForm:=nil;
end;

procedure TQuoMailStatusForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQuoMailStatusForm.cxButton4Click(Sender: TObject);
begin
  cxToDateEdit.Date := IncMonth(StrToDate(cxToDateEdit.Text),-1);
end;

procedure TQuoMailStatusForm.cxButton5Click(Sender: TObject);
begin
  cxToDateEdit.Date := IncMonth(StrToDate(cxToDateEdit.Text),1);
end;

procedure TQuoMailStatusForm.ExpansAll1Click(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
    cxGridMailDBBandedTableView1.ViewData.Expand(True)
  else if PageControl.ActivePageIndex = 1 then
    cxGridTicketDBBandedTableView1.ViewData.Expand(True);

end;

procedure TQuoMailStatusForm.CollapseAll1Click(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
    cxGridTicketDBBandedTableView1.ViewData.Collapse(True)
  else if PageControl.ActivePageIndex = 1 then
    cxGridTicketDBBandedTableView1.ViewData.Collapse(True);

end;

procedure TQuoMailStatusForm.cxGridImpPoDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('RequestedOn');

  if ARecord.Values[AColumn.Index] = null then
    AStyle := cxStyleRed;


end;

procedure TQuoMailStatusForm.UpdateString1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: String;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if PageControl.ActivePage = TabSheetPendingReq then
    QueryString := 'EXEC p_Quo_UpdateEmailStrings ' + IntToStr(MailStatusCds['Quotations_id'])
  else if PageControl.ActivePage = TabSheetPendingReqTickets then
    QueryString := 'EXEC p_Quo_UpdateEmailStrings ' + IntToStr(MailStatusTicketCds['Quotations_id']);

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Please click on the ''Refresh'' button to see the update');

end;

procedure TQuoMailStatusForm.cxGridMailDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('RequestedOn');

  if ARecord.Values[AColumn.Index] = null then
    AStyle := cxStyleRed;

end;

procedure TQuoMailStatusForm.cxUnsentReqCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxButton3Click(nil);
end;

procedure TQuoMailStatusForm.cxUserCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxButton3Click(nil);
end;

end.


