unit FitStatusListFm;

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
  TFitStatusListForm = class(TForm)
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
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsStartDate: TSQLTimeStampField;
    MasterCdsPaxName: TStringField;
    MasterCdsPrincipalAgent: TStringField;
    MasterCdsConsultant: TStringField;
    MasterCdsConfirmed: TBooleanField;
    MasterCdsDeadline: TSQLTimeStampField;
    MasterCdsProcessed: TBooleanField;
    MasterCdsTourCode: TStringField;
    MasterCdsStatus: TIntegerField;
    cxButton1: TcxButton;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    MasterCdsNumPax: TIntegerField;
    MasterCdsStatusLabel: TStringField;
    cxGridFitDBTableView1: TcxGridDBTableView;
    cxGridFitLevel1: TcxGridLevel;
    cxGridFit: TcxGrid;
    cxGridFitDBTableView1Quotations_id: TcxGridDBColumn;
    cxGridFitDBTableView1StartDate: TcxGridDBColumn;
    cxGridFitDBTableView1PaxName: TcxGridDBColumn;
    cxGridFitDBTableView1PrincipalAgent: TcxGridDBColumn;
    cxGridFitDBTableView1Consultant: TcxGridDBColumn;
    cxGridFitDBTableView1Confirmed: TcxGridDBColumn;
    cxGridFitDBTableView1Deadline: TcxGridDBColumn;
    cxGridFitDBTableView1Processed: TcxGridDBColumn;
    cxGridFitDBTableView1TourCode: TcxGridDBColumn;
    cxGridFitDBTableView1Status: TcxGridDBColumn;
    cxGridFitDBTableView1NumPax: TcxGridDBColumn;
    cxGridFitDBTableView1StatusLabel: TcxGridDBColumn;
    Panel2: TPanel;
    CloseBtn: TcxButton;
    MasterCdsMasters: TBooleanField;
    cxGridFitDBTableView1Masters: TcxGridDBColumn;
    cxStyleDarkRed: TcxStyle;
    MasterCdsComment: TStringField;
    cxGridFitDBTableView1Comment: TcxGridDBColumn;
    MasterCdsReference: TStringField;
    MasterCdsBookingRecdDate: TSQLTimeStampField;
    MasterCdsBookingEntryDate: TSQLTimeStampField;
    MasterCdsQuotationSendDate: TSQLTimeStampField;
    MasterCdsQuotationDate: TSQLTimeStampField;
    cxGridFitDBTableView1BookingRecdDate: TcxGridDBColumn;
    cxGridFitDBTableView1QuotationDate: TcxGridDBColumn;
    cxGridFitDBTableView1QuotationSendDate: TcxGridDBColumn;
    MasterCdsEndDate: TSQLTimeStampField;
    cxGridFitDBTableView1EndDate: TcxGridDBColumn;
    cxGridFitDBTableView1Reference: TcxGridDBColumn;
    MasterCdsQuotationNo: TIntegerField;
    cxGridFitDBTableView1QuotationNo: TcxGridDBColumn;
    MasterCdsTourFileSendDate: TSQLTimeStampField;
    cxGridFitDBTableView1TourFileSendDate: TcxGridDBColumn;
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
    procedure cxGridFitDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FitStatusListForm: TFitStatusListForm;

implementation

uses BackOfficeDM, GeneralUt, RptAddressFm, MainFm;

{$R *.dfm}

procedure TFitStatusListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFitStatusListForm.FormDestroy(Sender: TObject);
begin
  FitStatusListForm := nil;
end;

procedure TFitStatusListForm.FilterData;
begin

  if (cxFromDateEdit.Text = '') or (cxToDateEdit.Text = '') then
    exit;

  MasterCds.Close;

  MasterSds.Close;
  MasterSds.CommandText := 'exec p_QuoFitDeadline ''' +
    FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date) + ''',''' +
    FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date) + '''';
  MasterSds.Open;

  MasterCds.Open;

end;

procedure TFitStatusListForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\FitSchedules.xls';
  if SaveDialog.Execute then
    ExportGridToExcel(SaveDialog.FileName, cxGridFit, True, True, False);

end;

procedure TFitStatusListForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridFit;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Fit Schedule from ' + FormatDateTime('dd/mm/yyyy',cxFromDateEdit.Date) + ' to ' +
    FormatDateTime('dd/mm/yyyy',cxToDateEdit.Date);

  dxComponentPrinter.Preview(True,nil);

end;

procedure TFitStatusListForm.ExpandAll1Click(Sender: TObject);
begin
  cxGridFitDBTableView1.ViewData.Expand(True);
end;

procedure TFitStatusListForm.CollapseAll1Click(Sender: TObject);
begin
  cxGridFitDBTableView1.ViewData.Collapse(True);
end;

procedure TFitStatusListForm.cxButton1Click(Sender: TObject);
begin
  FilterData;
end;

procedure TFitStatusListForm.cxFromDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TFitStatusListForm.cxToDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TFitStatusListForm.FormCreate(Sender: TObject);
begin
  cxFromDateEdit.Date := Date();
  cxToDateEdit.Date := IncYear(Date(), 1);

end;

procedure TFitStatusListForm.cxGridFitDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else if ARecord.Values[AColumn.Index] = '2' then
    AStyle := cxStyleBlue
  else if ARecord.Values[AColumn.Index] = '3' then
    AStyle := cxStyleDarkRed
  else
    AStyle := cxStyleRed;

end;

procedure TFitStatusListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.

