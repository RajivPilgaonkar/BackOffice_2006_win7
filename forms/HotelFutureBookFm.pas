unit HotelFutureBookFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls,
  FMTBcd, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, DB, DBClient,
  Provider, SqlExpr, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, DateUtils, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, cxGridExportLink;

type
  THotelFutureBookForm = class(TForm)
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDs: TDataSource;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxCityLcmb: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxHotelLcmb: TcxLookupComboBox;
    Panel2: TPanel;
    cxButtonClose: TcxButton;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel3: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxToDateEdit: TcxDateEdit;
    AccCdsQuotations_id: TIntegerField;
    AccCdsTourCode: TStringField;
    AccCdsorganisation: TStringField;
    AccCdsPaxName: TStringField;
    AccCdsNumPax: TIntegerField;
    AccCdsSingles: TIntegerField;
    AccCdsDoubles: TIntegerField;
    AccCdsTriples: TIntegerField;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsroomtype: TStringField;
    AccCdsNights: TIntegerField;
    AccCdsQuoAccommodation_id: TIntegerField;
    cxGrid1DBTableView1QuoAccommodation_id: TcxGridDBColumn;
    cxGrid1DBTableView1Quotations_id: TcxGridDBColumn;
    cxGrid1DBTableView1TourCode: TcxGridDBColumn;
    cxGrid1DBTableView1organisation: TcxGridDBColumn;
    cxGrid1DBTableView1PaxName: TcxGridDBColumn;
    cxGrid1DBTableView1NumPax: TcxGridDBColumn;
    cxGrid1DBTableView1Singles: TcxGridDBColumn;
    cxGrid1DBTableView1Doubles: TcxGridDBColumn;
    cxGrid1DBTableView1Triples: TcxGridDBColumn;
    cxGrid1DBTableView1DateIn: TcxGridDBColumn;
    cxGrid1DBTableView1DateOut: TcxGridDBColumn;
    cxGrid1DBTableView1roomtype: TcxGridDBColumn;
    cxGrid1DBTableView1Nights: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    cxUtilities: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxStyleRed2: TcxStyle;
    cxStyleGrey: TcxStyle;
    AccCdsTwins: TIntegerField;
    cxGrid1DBTableView1Twins: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxHotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxFromDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxToDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  HotelFutureBookForm: THotelFutureBookForm;
  HotelFutureBookForm_Level: Integer;

implementation

uses MainFm;

{$R *.dfm}

procedure THotelFutureBookForm.FormCreate(Sender: TObject);
begin

  Height := 480;
  Width := 1050;

  CitiesCds.Open;
  HotelCds.Open;

  cxFromDateEdit.Date := Date();
  cxToDateEdit.Date := IncYear(Date(),1);

end;

procedure THotelFutureBookForm.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure THotelFutureBookForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THotelFutureBookForm.FormDestroy(Sender: TObject);
begin
  HotelFutureBookForm := nil;
end;

procedure THotelFutureBookForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  CitiesCds.Locate('Cities_id', x_Cities_id, []);

  FilterData;
  
end;

procedure THotelFutureBookForm.cxHotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;

end;

procedure THotelFutureBookForm.cxFromDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure THotelFutureBookForm.cxToDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure THotelFutureBookForm.FilterData;
var
  x_Addressbook_id: integer;
  x_FromDate, x_ToDate: TDateTime;
begin

  x_Addressbook_id := -1;

  if cxHotelLCMB.EditValue <> null then
    x_Addressbook_id := cxHotelLCMB.EditValue;

  x_FromDate := Date();

  if cxFromDateEdit.EditValue <> null then
    x_FromDate := cxFromDateEdit.EditValue;

  x_ToDate := Date();

  if cxToDateEdit.EditValue <> null then
    x_ToDate := cxToDateEdit.EditValue;

  AccCds.Close;
  AccSds.Close;

  AccSds.Params[0].Value := x_Addressbook_id;
  AccSds.Params[1].Value := x_FromDate;
  AccSds.Params[2].Value := x_ToDate;

  AccSds.Open;
  AccCds.Open;
end;

procedure THotelFutureBookForm.SaveAsExcel1Click(Sender: TObject);
var
  x_org,x_FileName: string;
begin

  x_org := '';
  if (AccCds['organisation'] <> null) then
    x_org := AccCds['organisation'];

  x_FileName := g_ReportDir + '\FutureBookings_' + x_org + '.xls';

  SaveDialog.FileName := x_FileName;
  if SaveDialog.Execute then
    ExportGridToExcel(SaveDialog.FileName, cxGrid1, True, True, False);

end;

end.
