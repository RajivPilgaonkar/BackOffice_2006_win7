unit VoucherListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  DBClient, Provider, SqlExpr, StdCtrls, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxButtons,
  Menus, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, cxMemo, dxPScxGrid6Lnk, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel, cxCalendar, DateUtils, cxGridExportLink;

type
  TVoucherListForm = class(TForm)
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDS: TDataSource;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    cxButton4: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    N1: TMenuItem;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    cxLabel1: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxToDateEdit: TcxDateEdit;
    cxButton1: TcxButton;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxGridFitDBTableView1: TcxGridDBTableView;
    cxGridFitLevel1: TcxGridLevel;
    cxGridFit: TcxGrid;
    Panel2: TPanel;
    CloseBtn: TcxButton;
    cxStyleDarkRed: TcxStyle;
    MasterCdsVouchers_id: TIntegerField;
    MasterCdsVoucherNo: TIntegerField;
    MasterCdsVoucherDate: TSQLTimeStampField;
    MasterCdsMastertourcode: TStringField;
    MasterCdsDescription: TStringField;
    MasterCdsTourRef: TStringField;
    MasterCdsTourLeader: TStringField;
    MasterCdsOrganisation: TStringField;
    cxGridFitDBTableView1Vouchers_id: TcxGridDBColumn;
    cxGridFitDBTableView1VoucherNo: TcxGridDBColumn;
    cxGridFitDBTableView1VoucherDate: TcxGridDBColumn;
    cxGridFitDBTableView1Mastertourcode: TcxGridDBColumn;
    cxGridFitDBTableView1Description: TcxGridDBColumn;
    cxGridFitDBTableView1TourRef: TcxGridDBColumn;
    cxGridFitDBTableView1TourLeader: TcxGridDBColumn;
    cxGridFitDBTableView1Organisation: TcxGridDBColumn;
    MasterCdsphone: TStringField;
    MasterCdsorg_mobile: TStringField;
    cxGridFitDBTableView1phone: TcxGridDBColumn;
    cxGridFitDBTableView1org_mobile: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FilterData;
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure ExpandAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxFromDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxToDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VoucherListForm: TVoucherListForm;

implementation

uses BackOfficeDM, GeneralUt, RptAddressFm, MainFm;

{$R *.dfm}

procedure TVoucherListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TVoucherListForm.FormDestroy(Sender: TObject);
begin
  VoucherListForm := nil;
end;

procedure TVoucherListForm.FilterData;
begin

  if (cxFromDateEdit.Text = '') or (cxToDateEdit.Text = '') then
    exit;

  MasterCds.Close;
  MasterSds.Close;

  MasterSds.Params[0].Value := cxFromDateEdit.Date;
  MasterSds.Params[1].Value := cxToDateEdit.Date;

  MasterSds.Open;
  MasterCds.Open;

  cxGridFitDBTableView1.ViewData.Expand(True);

end;

procedure TVoucherListForm.SaveAsExcel1Click(Sender: TObject);
begin
  SaveDialog.FileName := g_ReportDir + '\VoucherListing.xls';
  if SaveDialog.Execute then
    ExportGridToExcel(SaveDialog.FileName, cxGridFit, True, True, False);

end;

procedure TVoucherListForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridFit;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Voucher listing between ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date) + ' and ' +
    FormatDateTime('dd/mm/yyyy',cxToDateEdit.Date);

  dxComponentPrinter.Preview(True,nil);

end;

procedure TVoucherListForm.ExpandAll1Click(Sender: TObject);
begin
  cxGridFitDBTableView1.ViewData.Expand(True);
end;

procedure TVoucherListForm.CollapseAll1Click(Sender: TObject);
begin
  cxGridFitDBTableView1.ViewData.Collapse(True);
end;

procedure TVoucherListForm.cxButton1Click(Sender: TObject);
begin
  FilterData;
end;

procedure TVoucherListForm.cxFromDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TVoucherListForm.cxToDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TVoucherListForm.FormCreate(Sender: TObject);
begin
  cxFromDateEdit.Date := Date();
  cxToDateEdit.Date := IncDay(Date(), 1);

end;

procedure TVoucherListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.

