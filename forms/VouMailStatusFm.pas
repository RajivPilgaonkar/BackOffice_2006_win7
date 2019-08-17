unit VouMailStatusFm;

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
  TVouMailStatusForm = class(TForm)
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
    cxGridMailDBBandedTableView1VouAccommodation_id: TcxGridDBBandedColumn;
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
    cxGridTicketDBBandedTableView1VouchersTickets_id: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1TourCode: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1PaxName: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1uid: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1TicketString: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1TravelDate: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1Mode: TcxGridDBBandedColumn;
    MailStatusCdsVouchersAccommodation_id: TIntegerField;
    MailStatusCdsCity: TStringField;
    MailStatusCdsorganisation: TStringField;
    MailStatusCdsPhone: TStringField;
    MailStatusCdsMasterTourCode: TStringField;
    MailStatusCdsTourLeader: TStringField;
    MailStatusCdsVoucherNo: TIntegerField;
    MailStatusCdsIssuedBy: TStringField;
    MailStatusCdsAccString: TStringField;
    MailStatusCdsDateIn: TSQLTimeStampField;
    MailStatusCdsRequestedOn: TSQLTimeStampField;
    MailStatusCdsRemarks: TStringField;
    MailStatusTicketCdsVouchersTickets_id: TIntegerField;
    MailStatusTicketCdsorganisation: TStringField;
    MailStatusTicketCdsPhone: TStringField;
    MailStatusTicketCdsMasterTourCode: TStringField;
    MailStatusTicketCdsTourLeader: TStringField;
    MailStatusTicketCdsVoucherNo: TIntegerField;
    MailStatusTicketCdsIssuedBy: TStringField;
    MailStatusTicketCdsTicketString: TStringField;
    MailStatusTicketCdsTravelDate: TSQLTimeStampField;
    MailStatusTicketCdsRequestedOn: TSQLTimeStampField;
    MailStatusTicketCdsRemarks: TStringField;
    MailStatusTicketCdsMode: TStringField;
    TabSheetPendingReqSS: TTabSheet;
    TabSheetPendingReqTrsf: TTabSheet;
    MailStatusTrsfSds: TSQLDataSet;
    MailStatusTrsfDsp: TDataSetProvider;
    MailStatusTrsfCds: TClientDataSet;
    MailStatusTrsfDs: TDataSource;
    MailStatusTrsfCdsVouchersServices_id: TIntegerField;
    MailStatusTrsfCdsorganisation: TStringField;
    MailStatusTrsfCdsPhone: TStringField;
    MailStatusTrsfCdsMasterTourCode: TStringField;
    MailStatusTrsfCdsTourLeader: TStringField;
    MailStatusTrsfCdsVoucherNo: TIntegerField;
    MailStatusTrsfCdsIssuedBy: TStringField;
    MailStatusTrsfCdsServiceString: TStringField;
    MailStatusTrsfCdsTransferDate: TSQLTimeStampField;
    MailStatusTrsfCdsRequestedOn: TSQLTimeStampField;
    MailStatusTrsfCdsRemarks: TStringField;
    cxGridTrsf: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridTrsfDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridTrsfLevel1: TcxGridLevel;
    cxGridTrsfDBBandedTableView1VouchersServices_id: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1TourLeader: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1IssuedBy: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1ServiceString: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1TransferDate: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    MailStatusSsSds: TSQLDataSet;
    MailStatusSsDsp: TDataSetProvider;
    MailStatusSsCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField7: TStringField;
    MailStatusSsDs: TDataSource;
    cxGridSs: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridSsDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridSsDBBandedTableView1VouchersServices_id: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1IssuedBy: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1TourLeader: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1ServiceString: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1TransferDate: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxGridSsLevel1: TcxGridLevel;
    TabSheetPendingReqTrans: TTabSheet;
    cxGridTrans: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridTransDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridTransLevel1: TcxGridLevel;
    MailStatusTransSds: TSQLDataSet;
    MailStatusTransDsp: TDataSetProvider;
    MailStatusTransCds: TClientDataSet;
    MailStatusTransDs: TDataSource;
    MailStatusTransCdsVouchersTransport_id: TIntegerField;
    MailStatusTransCdsOrganisation: TStringField;
    MailStatusTransCdsPhone: TStringField;
    MailStatusTransCdsMasterTourCode: TStringField;
    MailStatusTransCdsTourLeader: TStringField;
    MailStatusTransCdsVoucherNo: TIntegerField;
    MailStatusTransCdsTransString: TStringField;
    MailStatusTransCdsFromDate: TSQLTimeStampField;
    MailStatusTransCdsToDate: TSQLTimeStampField;
    MailStatusTransCdsRequestedOn: TSQLTimeStampField;
    MailStatusTransCdsRemarks: TStringField;
    MailStatusTransCdsIssuedBy: TStringField;
    MailStatusTransCdsFromPLace: TStringField;
    MailStatusTransCdsToPlace: TStringField;
    cxGridTransDBBandedTableView1VouchersTransport_id: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1Organisation: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1TourLeader: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1TransString: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1FromDate: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1ToDate: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1IssuedBy: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1FromPLace: TcxGridDBBandedColumn;
    cxGridTransDBBandedTableView1ToPlace: TcxGridDBBandedColumn;
    MailStatusCdsContact: TStringField;
    MailStatusTicketCdsContact: TStringField;
    MailStatusSsCdsContact: TStringField;
    MailStatusTrsfCdsContact: TStringField;
    MailStatusTransCdsContact: TStringField;
    cxGridTransDBBandedTableView1Contact: TcxGridDBBandedColumn;
    cxGridTicketDBBandedTableView1Contact: TcxGridDBBandedColumn;
    cxGridSsDBBandedTableView1Contact: TcxGridDBBandedColumn;
    cxGridTrsfDBBandedTableView1Contact: TcxGridDBBandedColumn;
    cxGridMailDBBandedTableView1Contact: TcxGridDBBandedColumn;
    TabSheetPendingReqPackage: TTabSheet;
    MailStatusPackageSds: TSQLDataSet;
    MailStatusPackageDsp: TDataSetProvider;
    MailStatusPackageCds: TClientDataSet;
    MailStatusPackageDs: TDataSource;
    MailStatusPackageCdsVouchersPackages_id: TIntegerField;
    MailStatusPackageCdsOrganisation: TStringField;
    MailStatusPackageCdsPhone: TStringField;
    MailStatusPackageCdsMasterTourCode: TStringField;
    MailStatusPackageCdsTourLeader: TStringField;
    MailStatusPackageCdsVoucherNo: TIntegerField;
    MailStatusPackageCdsTransString: TStringField;
    MailStatusPackageCdsFrom_Date: TSQLTimeStampField;
    MailStatusPackageCdsTo_Date: TSQLTimeStampField;
    MailStatusPackageCdsRequestedOn: TSQLTimeStampField;
    MailStatusPackageCdsRemarks: TStringField;
    MailStatusPackageCdsIssuedBy: TStringField;
    MailStatusPackageCdsFrom_Place: TStringField;
    MailStatusPackageCdsTo_Place: TStringField;
    MailStatusPackageCdsContact: TStringField;
    cxGridPackage: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridPackageDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridPackageDBBandedTableView1VouchersPackages_id: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1Organisation: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1Phone: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1TourLeader: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1VoucherNo: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1TransString: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1From_Date: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1To_Date: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1Remarks: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1IssuedBy: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1From_Place: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1To_Place: TcxGridDBBandedColumn;
    cxGridPackageDBBandedTableView1Contact: TcxGridDBBandedColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouMailStatusForm: TVouMailStatusForm;

implementation

uses QuoCitywiseFm, BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TVouMailStatusForm.SaveAsExcel1Click(Sender: TObject);
begin

  if PageControl.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsAccommodationVouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridMail, True, True, False, cxGridMailDBBandedTableView1);
    end
  else if PageControl.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsTicketVouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridTicket, True, True, False, cxGridTicketDBBandedTableView1);
    end
  else if PageControl.ActivePageIndex = 2 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsSSVouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridSs, True, True, False, cxGridSsDBBandedTableView1);
    end
  else if PageControl.ActivePageIndex = 3 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsTrsfVouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridTrsf, True, True, False, cxGridTrsfDBBandedTableView1);
    end
  else if PageControl.ActivePageIndex = 4 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsTransportVouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridTrans, True, True, False, cxGridTransDBBandedTableView1);
    end
  else if PageControl.ActivePageIndex = 5 then
    begin
      SaveDialog.FileName := g_ReportDir + '\PendingRequestsPackageVouchers.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridPackage, True, True, False, cxGridPackageDBBandedTableView1);
    end;

end;

procedure TVouMailStatusForm.Print1Click(Sender: TObject);
begin

  if PageControl.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridMail;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Voucher (Accommodation) Requests due upto ' + cxToDateEdit.Text;
    end
  else if PageControl.ActivePageIndex = 1 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridTicket;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Voucher (Tickets) Requests due upto ' + cxToDateEdit.Text;
    end
  else if PageControl.ActivePageIndex = 2 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridSs;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Voucher (Sight Seeing) Requests due upto ' + cxToDateEdit.Text;
    end
  else if PageControl.ActivePageIndex = 3 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridTrsf;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Voucher (Transfer) Requests due upto ' + cxToDateEdit.Text;
    end
  else if PageControl.ActivePageIndex = 4 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridTrans;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Voucher (Transport) Requests due upto ' + cxToDateEdit.Text;
    end
  else if PageControl.ActivePageIndex = 5 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridPackage;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Voucher (Package) Requests due upto ' + cxToDateEdit.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TVouMailStatusForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TVouMailStatusForm.cxButton3Click(Sender: TObject);
var
  x_User: string;
begin

  x_user := '';
  if cxUserCkb.Checked then
    x_user := ' AND v.IssuedBy = ''' + GetAdmUserName(g_users_id) + ''' ';

  if PageControl.ActivePage = TabSheetPendingReq then
    begin

      MailStatusSds.Close;
      MailStatusSds.CommandText :=
        'SELECT va.VouchersAccommodation_id, a.City, a.organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'v.MasterTourCode, v.TourLeader, v.VoucherNo, ' +
        'v.[Description] AS AccString, va.DateIn, va.RequestedOn, va.Remarks, ' +
        'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS IssuedBy, ' +
        ' dbo.fn_GetContact(a.Addressbook_id) as Contact ' +
        'FROM VouchersAccommodation va ' +
        'LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON va.Addressbook_id = a.Addressbook_id ' +
        'LEFT JOIN Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0 ' +
        'LEFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id ' +
        'WHERE va.DateIn <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        'AND va.RequestedOn IS NOT NULL ' +
        'AND va.ConfirmedOn IS NULL ' +
        'AND va.DateIn > GETDATE() ' +
        x_user + ' ' +
        'ORDER BY v.IssuedBy, va.DateIn';
      MailStatusSds.Open;

      MailStatusCds.Close;
      MailStatusCds.Open;

      cxGridMailDBBandedTableView1.ViewData.Expand(True);

    end
  else if PageControl.ActivePage = TabSheetPendingReqTickets then
    begin

      MailStatusTicketSds.Close;
      MailStatusTicketSds.CommandText :=
         'SELECT vt.VouchersTickets_id, a.organisation, ' +
         ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
         'v.MasterTourCode, v.TourLeader, v.VoucherNo, ' +
         'v.[Description] AS TicketString, vt.TravelDate, vt.RequestedOn, vt.Remarks, ' +
         't.Details as Mode, ' +
         'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS IssuedBy, ' +
        ' dbo.fn_GetContact(a.Addressbook_id) as Contact ' +
         'FROM VouchersTickets vt ' +
         'LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
         'LEFT JOIN Addressbook a ON vt.Addressbook_id = a.Addressbook_id ' +
         'LEFT JOIN Tickets t ON vt.Tickets_id = t.Tickets_id ' +
         'LEFT JOIN Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0 ' +
         'LEFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id ' +
         'WHERE vt.TravelDate <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
         'AND vt.RequestedOn IS NOT NULL ' +
         'AND vt.ConfirmedOn IS NULL ' +
         'AND vt.TravelDate > GETDATE() ' +
         x_user + ' ' +
         'ORDER BY v.IssuedBy, vt.TravelDate';
      MailStatusTicketSds.Open;

      MailStatusTicketCds.Close;
      MailStatusTicketCds.Open;

      cxGridTicketDBBandedTableView1.ViewData.Expand(True);

    end
  else if PageControl.ActivePage = TabSheetPendingReqSS then
    begin

      MailStatusSsSds.Close;
      MailStatusSsSds.CommandText :=
        'SELECT vs.VouchersServices_id, a.organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'v.MasterTourCode, v.TourLeader, v.VoucherNo, ' +
        'v.[Description] AS ServiceString, vs.TransferDate, vs.RequestedOn, vs.Remarks, ' +
        'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS IssuedBy, ' +
        ' dbo.fn_GetContact(a.Addressbook_id) as Contact ' +
        'FROM VouchersServices vs ' +
        'LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON vs.Addressbook_id = a.Addressbook_id ' +
        'LEFT JOIN Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0 ' +
        'LEFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id ' +
        'WHERE vs.TransferDate <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        'AND vs.RequestedOn IS NOT NULL ' +
        'AND vs.ConfirmedOn IS NULL ' +
        'AND vs.TransferDate > GETDATE() ' +
        'AND vs.SightSeeing = 1 ';
      MailStatusSsSds.Open;

      MailStatusSsCds.Close;
      MailStatusSsCds.Open;

      cxGridSsDBBandedTableView1.ViewData.Expand(True);

    end
  else if PageControl.ActivePage = TabSheetPendingReqTrsf then
    begin

      MailStatusTrsfSds.Close;
      MailStatusTrsfSds.CommandText :=
        'SELECT vs.VouchersServices_id, a.organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'v.MasterTourCode, v.TourLeader, v.VoucherNo, ' +
        'v.[Description] AS ServiceString, vs.TransferDate, vs.RequestedOn, vs.Remarks, ' +
        'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS IssuedBy, ' +
        ' dbo.fn_GetContact(a.Addressbook_id) as Contact ' +
        'FROM VouchersServices vs ' +
        'LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON vs.Addressbook_id = a.Addressbook_id ' +
        'LEFT JOIN Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0 ' +
        'LEFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id ' +
        'WHERE vs.TransferDate <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        'AND vs.RequestedOn IS NOT NULL ' +
        'AND vs.ConfirmedOn IS NULL ' +
        'AND vs.TransferDate > GETDATE() ' +
        'AND vs.SightSeeing = 0 ';
      MailStatusTrsfSds.Open;

      MailStatusTrsfCds.Close;
      MailStatusTrsfCds.Open;

      cxGridTrsfDBBandedTableView1.ViewData.Expand(True);

    end

  else if PageControl.ActivePage = TabSheetPendingReqTrans then
    begin

      MailStatusTransSds.Close;
      MailStatusTransSds.CommandText :=
        'SELECT vt.VouchersTransport_id, a.Organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'v.MasterTourCode, v.TourLeader, v.VoucherNo, ' +
        'v.[Description] AS TransString, vt.FromDate, vt.ToDate, vt.RequestedOn, vt.Remarks, ' +
        'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS IssuedBy, ' +
        '  vt.FromPLace, vt.ToPlace, ' +
        ' dbo.fn_GetContact(a.Addressbook_id) as Contact ' +
        'FROM VouchersTransport vt ' +
        'LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON vt.Addressbook_id = a.Addressbook_id ' +
        'LEFT JOIN Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0 ' +
        'LEFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id ' +
        'WHERE vt.FromDate <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        'AND vt.RequestedOn IS NOT NULL ' +
        'AND vt.ConfirmedOn IS NULL ' +
        'AND vt.FromDate > GETDATE()';
      MailStatusTransSds.Open;

      MailStatusTransCds.Close;
      MailStatusTransCds.Open;

      cxGridTransDBBandedTableView1.ViewData.Expand(True);

    end

  else if PageControl.ActivePage = TabSheetPendingReqPackage then
    begin

      MailStatusPackageSds.Close;
      MailStatusPackageSds.CommandText :=
        'SELECT vp.VouchersPackages_id, a.Organisation, ' +
        ' ''('' + coalesce(a.areaCode,'''') + '') '' + a.Phone AS Phone, ' +
        'v.MasterTourCode, v.TourLeader, v.VoucherNo, ' +
        'v.[Description] AS TransString, vp.From_Date, vp.To_Date, vp.RequestedOn, vp.Remarks, ' +
        'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS IssuedBy, ' +
        '  vp.From_Place, vp.To_Place, ' +
        ' dbo.fn_GetContact(a.Addressbook_id) as Contact ' +
        'FROM VouchersPackages vp ' +
        'LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON vp.Addressbook_id = a.Addressbook_id ' +
        'LEFT JOIN Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0 ' +
        'LEFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id ' +
        'WHERE vp.From_Date <= ''' + FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + ''' ' +
        'AND vp.RequestedOn IS NOT NULL ' +
        'AND vp.ConfirmedOn IS NULL ' +
        'AND vp.From_Date > GETDATE()';

      MailStatusPackageSds.Open;

      MailStatusPackageCds.Close;
      MailStatusPackageCds.Open;

      cxGridPackageDBBandedTableView1.ViewData.Expand(True);

    end;



end;

procedure TVouMailStatusForm.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetPendingReq;

  cxToDateEdit.Date := IncMonth(Date,6);
end;

procedure TVouMailStatusForm.FormDestroy(Sender: TObject);
begin
  VouMailStatusForm:=nil;
end;

procedure TVouMailStatusForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TVouMailStatusForm.cxButton4Click(Sender: TObject);
begin
  cxToDateEdit.Date := IncMonth(StrToDate(cxToDateEdit.Text),-1);
end;

procedure TVouMailStatusForm.cxButton5Click(Sender: TObject);
begin
  cxToDateEdit.Date := IncMonth(StrToDate(cxToDateEdit.Text),1);
end;

procedure TVouMailStatusForm.ExpansAll1Click(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
    cxGridMailDBBandedTableView1.ViewData.Expand(True)
  else if PageControl.ActivePageIndex = 1 then
    cxGridTicketDBBandedTableView1.ViewData.Expand(True)
  else if PageControl.ActivePageIndex = 2 then
    cxGridSsDBBandedTableView1.ViewData.Expand(True)
  else if PageControl.ActivePageIndex = 3 then
    cxGridTrsfDBBandedTableView1.ViewData.Expand(True)
  else if PageControl.ActivePageIndex = 4 then
    cxGridTransDBBandedTableView1.ViewData.Expand(True)
  else if PageControl.ActivePageIndex = 5 then
    cxGridPackageDBBandedTableView1.ViewData.Expand(True);

end;

procedure TVouMailStatusForm.CollapseAll1Click(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 0 then
    cxGridTicketDBBandedTableView1.ViewData.Collapse(True)
  else if PageControl.ActivePageIndex = 1 then
    cxGridTicketDBBandedTableView1.ViewData.Collapse(True)
  else if PageControl.ActivePageIndex = 2 then
    cxGridSsDBBandedTableView1.ViewData.Collapse(True)
  else if PageControl.ActivePageIndex = 3 then
    cxGridTrsfDBBandedTableView1.ViewData.Collapse(True)
  else if PageControl.ActivePageIndex = 4 then
    cxGridTransDBBandedTableView1.ViewData.Collapse(True)
  else if PageControl.ActivePageIndex = 5 then
    cxGridPackageDBBandedTableView1.ViewData.Collapse(True);

end;

procedure TVouMailStatusForm.cxGridImpPoDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
//var
//  AColumn: TcxCustomGridTableItem;
begin

{
  AColumn := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('DueType');

  if ARecord.Values[AColumn.Index] = 'Due' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleRed;
}


end;

end.


