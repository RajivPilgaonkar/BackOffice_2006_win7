unit AddrCategorySearchFm;

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
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel;

type
  TAddrCategorySearchForm = class(TForm)
    Panel1: TPanel;
    Label2: TcxLabel;
    CategoriesSds: TSQLDataSet;
    CategoriesDsp: TDataSetProvider;
    CategoriesCds: TClientDataSet;
    CategoriesDS: TDataSource;
    cxAddrrCategoryLCMB: TcxLookupComboBox;
    cxGridAddr: TcxGrid;
    cxGridAddrDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    AddrCatSearchSds: TSQLDataSet;
    AddrCatSearchDsp: TDataSetProvider;
    AddrCatSearchCds: TClientDataSet;
    AddrCatSearchDS: TDataSource;
    AddrCatSearchCdsAddressbook_id: TIntegerField;
    AddrCatSearchCdsOrganisation: TStringField;
    AddrCatSearchCdsCity: TStringField;
    AddrCatSearchCdsCities_id: TIntegerField;
    AddrCatSearchCdsContact: TStringField;
    cxGridAddrDBTableView1Organisation: TcxGridDBColumn;
    cxGridAddrDBTableView1City: TcxGridDBColumn;
    cxButton1: TcxButton;
    CategoriesCdscategory: TStringField;
    CategoriesCdsdescription: TStringField;
    CategoriesCdscategories_id: TIntegerField;
    AddrCatSearchCdsAddress: TStringField;
    AddrCatSearchCdsPhone: TStringField;
    AddrCatSearchCdsFax: TStringField;
    AddrCatSearchCdsPAN: TStringField;
    AddrCatSearchCdsemail: TStringField;
    AddrCatSearchCdswww: TStringField;
    cxGridAddrDBTableView1Address: TcxGridDBColumn;
    cxGridAddrDBTableView1Contact: TcxGridDBColumn;
    cxGridAddrDBTableView1Email: TcxGridDBColumn;
    cxGridAddrDBTableView1Fax: TcxGridDBColumn;
    cxGridAddrDBTableView1PAN: TcxGridDBColumn;
    cxGridAddrDBTableView1Phone: TcxGridDBColumn;
    cxGridAddrDBTableView1WWW: TcxGridDBColumn;
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
    N2: TMenuItem;
    ListAddressesWordFormat1: TMenuItem;
    AddrCatSearchCdsPostalCode: TStringField;
    cxGridAddrDBTableView1PostalCode: TcxGridDBColumn;
    AddrCatSearchCdsState: TStringField;
    cxGridAddrDBTableView1State: TcxGridDBColumn;
    AddrCatSearchCdsorg_mobile: TStringField;
    cxGridAddrDBTableView1org_mobile: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FilterData;
    procedure cxAddrrCategoryLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure ExpandAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure ListAddressesWordFormat1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddrCategorySearchForm: TAddrCategorySearchForm;

implementation

uses BackOfficeDM, GeneralUt, RptAddressFm, MainFm;

{$R *.dfm}

procedure TAddrCategorySearchForm.FormCreate(Sender: TObject);
begin
  CategoriesCds.Active := True;
end;

procedure TAddrCategorySearchForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAddrCategorySearchForm.FormDestroy(Sender: TObject);
begin
  AddrCategorySearchForm := nil;
end;

procedure TAddrCategorySearchForm.cxButton1Click(Sender: TObject);
begin
  FilterData;
end;

procedure TAddrCategorySearchForm.FilterData;
var
  GpSds: TSQLDataSet;
  x_Category: string;
begin

  if (CategoriesCds['Categories_id'] = null) or (cxAddrrCategoryLCMB.EditValue = null) then
    exit;

  CategoriesCds.Locate('Categories_id',cxAddrrCategoryLCMB.EditValue,[]);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Category FROM Categories WHERE Categories_id = ' +
    IntToStr(CategoriesCds['Categories_id']) +
    ' ORDER BY Category';
  GpSds.Open;

  x_Category := GpSds['Category'];

  GpSds.Free;

  AddrCatSearchSds.Close;
  AddrCatSearchSds.CommandText := 'select f.*, a.Address, ' +
    '''('' + coalesce(a.AreaCode,'''') + '') '' + coalesce(a.Phone,'''') as Phone, ' +
    'a.Fax, a.PAN, a.email, a.www, s.State, a.org_mobile ' +
    'from dbo.fn_Addressbook (2, ''' + x_Category + ''') f ' +
    'LEFT JOIN Addressbook a ON f.Addressbook_id = a.Addressbook_id ' +
    'LEFT JOIN Cities c ON f.Cities_id = c.Cities_id ' +
    'LEFT JOIN States s ON s.States_id = c.States_id ' +
    'ORDER BY f.City, f.Organisation';
  AddrCatSearchCds.Close;
  AddrCatSearchCds.Open;


end;

procedure TAddrCategorySearchForm.cxAddrrCategoryLCMBKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;
end;

procedure TAddrCategorySearchForm.SaveAsExcel1Click(Sender: TObject);
begin
  SaveDialog.FileName := g_ReportDir + '\AddressbookByCategory.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW_NoBand (SaveDialog.FileName, cxGridAddr, True, True, False, cxGridAddrDBTableView1);

end;

procedure TAddrCategorySearchForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridAddr;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Listing for Category ' + cxAddrrCategoryLCMB.Text;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TAddrCategorySearchForm.ExpandAll1Click(Sender: TObject);
begin
  cxGridAddrDBTableView1.ViewData.Expand(True);
end;

procedure TAddrCategorySearchForm.CollapseAll1Click(Sender: TObject);
begin
  cxGridAddrDBTableView1.ViewData.Collapse(True);
end;

procedure TAddrCategorySearchForm.ListAddressesWordFormat1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Category: string;
begin


  if (CategoriesCds['Categories_id'] = null) or (cxAddrrCategoryLCMB.EditValue = null) then
    exit;

  CategoriesCds.Locate('Categories_id',cxAddrrCategoryLCMB.EditValue,[]);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Category FROM Categories WHERE Categories_id = ' +
    IntToStr(CategoriesCds['Categories_id']) +
    ' ORDER BY Category';
  GpSds.Open;

  x_Category := GpSds['Category'];

  GpSds.Free;


  if RptAddressForm = nil then
    Application.CreateForm(TRptAddressForm, RptAddressForm);

  RptAddressForm.ReportSds.Close;
  RptAddressForm.ReportSds.CommandText :=
    'SELECT f.*, ' +
    'coalesce(a.Address,'''') + char(13) + coalesce(f.City,'''') + '' - '' + coalesce(f.PostalCode,'''') + ' +
    'char(13) + coalesce(s.State,'''') + char(13) + ''Tel: ('' + coalesce(a.AreaCode,'''') + '') '' + coalesce(a.Phone,'''') as Address,' +
    'a.Phone, a.Fax, a.PAN, a.email, a.www, s.State ' +
    'FROM dbo.fn_Addressbook (2, ''' + x_category + ''') f ' +
    'LEFT JOIN Addressbook a ON f.Addressbook_id = a.Addressbook_id ' +
    'LEFT JOIN Cities c ON f.Cities_id = c.Cities_id ' +
    'LEFT JOIN States s ON s.States_id = c.States_id ' +
    'ORDER BY f.Organisation, f.City';

  RptAddressForm.ReportSds.Open;

  RptAddressForm.ReportCds.Close;
  RptAddressForm.ReportCds.Open;

  RptAddressForm.QuickRep1.PreviewModal;

  RptAddressForm.Release;
  RptAddressForm := nil;


end;

end.
