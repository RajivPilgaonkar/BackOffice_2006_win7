unit ImportFlightsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons, Menus, cxDBLookupComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit, cxLabel,
  cxContainer, cxGroupBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, scExcelExport, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  TImportFlightsForm = class(TCustomMasterCxGridForm)
    MasterCdsflights_id: TIntegerField;
    MasterCdsflightcode: TStringField;
    MasterCdsflightsource: TStringField;
    MasterCdsflightstarttime: TStringField;
    MasterCdsflightdestination: TStringField;
    MasterCdsflightendtime: TStringField;
    MasterCdsflightairline: TStringField;
    MasterCdsErrorNo: TIntegerField;
    MasterCdsErrorDesc: TStringField;
    CustomMasterCxGridDBTableView1flights_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightcode: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightsource: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightstarttime: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightdestination: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightendtime: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightairline: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ErrorNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ErrorDesc: TcxGridDBColumn;
    cxButtonErrors: TcxButton;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxButton1: TcxButton;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    PopupMenu2: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    cxButton2: TcxButton;
    MasterCdsflightwef: TStringField;
    MasterCdsflightwet: TStringField;
    MasterCdsflightrunson: TIntegerField;
    MasterCdsSpecialCode: TIntegerField;
    CustomMasterCxGridDBTableView1SpecialCode: TcxGridDBColumn;
    N1: TMenuItem;
    ImportFromExcel1: TMenuItem;
    Kingfisher1: TMenuItem;
    scExcelExport1: TscExcelExport;
    OpenDialog: TOpenDialog;
    JetAirways1: TMenuItem;
    SiceJet1: TMenuItem;
    FlightCompanyLCMB: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    FlightCompanySds: TSQLDataSet;
    FlightCompanyDsp: TDataSetProvider;
    FlightCompanyDs: TDataSource;
    FlightCompanyCds: TClientDataSet;
    FlightCompanyCdsFlightCompanies_id: TIntegerField;
    FlightCompanyCdsFlightCompany: TStringField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    MasterCdsFlightCompanies_id: TIntegerField;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    MasterCdsSch: TStringField;
    CustomMasterCxGridDBTableView1Sch: TcxGridDBColumn;
    N2: TMenuItem;
    IgnoreCities1: TMenuItem;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Indigo1: TMenuItem;
    GOAir1: TMenuItem;
    MasterCdsflightvia: TStringField;
    MasterCdsflightstops: TIntegerField;
    CustomMasterCxGridDBTableView1FlightVia: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FlightStops: TcxGridDBColumn;
    IndianAirlines1: TMenuItem;
    IndigoExcel1: TMenuItem;
    AirIndiaExcel1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonErrorsClick(Sender: TObject);
    procedure RefreshDisplay;
    procedure CustomMasterCxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButton1Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Kingfisher1Click(Sender: TObject);
    procedure JetAirways1Click(Sender: TObject);
    procedure SiceJet1Click(Sender: TObject);
    procedure FlightCompanyLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure IgnoreCities1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Indigo1Click(Sender: TObject);
    procedure GOAir1Click(Sender: TObject);
    procedure IndianAirlines1Click(Sender: TObject);
    procedure IndigoExcel1Click(Sender: TObject);
    procedure AirIndiaExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportFlightsForm: TImportFlightsForm;
  _ImportFlightsForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, FlightExcelImportUt, FlightIgnoreCitiesFm,
  MainFm;

{$R *.dfm}

procedure TImportFlightsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'zz_flights';
  MasterKeyField := 'flights_id';
  AdmLevel := _ImportFlightsForm_Level;

  FlightCompanyCds.Open;
  FlightCompanyLCMB.EditValue := 1;

  inherited;

end;

procedure TImportFlightsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ImportFlightsForm := nil;
end;


procedure TImportFlightsForm.cxButtonErrorsClick(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  QueryString := 'EXEC p_ImportFlights 1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshDisplay;

  ShowMessage ('Done');

end;

procedure TImportFlightsForm.RefreshDisplay;
begin
  MasterCds.Active := false;
  MasterCds.Active := true;
end;


procedure TImportFlightsForm.CustomMasterCxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AErrorNo: TcxCustomGridTableItem;
begin
  inherited;

  AErrorNo := (Sender as TcxGridDBTableView).GetColumnByFieldName('ErrorNo');

  if (ARecord.Values[AErrorNo.Index] > 0) then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleGreen;

end;

procedure TImportFlightsForm.cxButton1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to import the flights?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  QueryString := 'EXEC p_ImportFlights 2';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshDisplay;

  ShowMessage ('Flights imported');

end;

procedure TImportFlightsForm.SaveAsExcel1Click(Sender: TObject);
begin
  inherited;

  SaveDialog.FileName := g_ReportDir + '\FlightImports.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW (SaveDialog.FileName, CustomMasterCxGrid, True, True, False, CustomMasterCxGridDBTableView1);

end;

procedure TImportFlightsForm.Print1Click(Sender: TObject);
begin
  inherited;

  dxComponentPrinter.CurrentLink.Component := CustomMasterCxGrid;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Flight Imports ';

  dxComponentPrinter.Preview(True,nil);

end;

procedure TImportFlightsForm.Kingfisher1Click(Sender: TObject);
begin
  inherited;
  if not OpenDialog.Execute then
    exit;

  ImportKingfisher_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 1;

end;

procedure TImportFlightsForm.JetAirways1Click(Sender: TObject);
begin
  inherited;

  if not OpenDialog.Execute then
    exit;

  ImportJetAirways_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 2;

end;

procedure TImportFlightsForm.SiceJet1Click(Sender: TObject);
begin
  inherited;

  if not OpenDialog.Execute then
    exit;

//  ImportSpiceJet_Excel(scExcelExport1, OpenDialog.FileName);
  ImportSpiceJet2_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 3;

end;

procedure TImportFlightsForm.FlightCompanyLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if FlightCompanyLCMB.EditValue <> null then
    FlightCompanyCds.Locate('FlightCompanies_id', FlightCompanyLCMB.EditValue, []);
end;

procedure TImportFlightsForm.IgnoreCities1Click(Sender: TObject);
begin
  inherited;

  _FlightIgnoreCitiesForm_Level := 4;

  If _FlightIgnoreCitiesForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if FlightIgnoreCitiesForm = nil then
    Application.CreateForm(TFlightIgnoreCitiesForm, FlightIgnoreCitiesForm);


end;

procedure TImportFlightsForm.MenuItem1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  QueryString := 'INSERT INTO FlightIgnoreCities (City) ' +
    'SELECT z.FlightSource FROM zz_Flights z ' +
    'WHERE z.Flights_id = ' + IntToStr(MasterCds['Flights_id']) + ' ' +
    'AND z.FlightSource NOT IN (SELECT City FROM FlightIgnoreCities)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TImportFlightsForm.MenuItem2Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  QueryString := 'INSERT INTO FlightIgnoreCities (City) ' +
    'SELECT z.FlightDestination FROM zz_Flights z ' +
    'WHERE z.Flights_id = ' + IntToStr(MasterCds['Flights_id']) + ' ' +
    'AND z.FlightDestination NOT IN (SELECT City FROM FlightIgnoreCities)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TImportFlightsForm.Indigo1Click(Sender: TObject);
begin
  inherited;

  if not OpenDialog.Execute then
    exit;

  ImportIndigo_Txt(OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 4;

end;

procedure TImportFlightsForm.GOAir1Click(Sender: TObject);
begin
  inherited;

  if not OpenDialog.Execute then
    exit;

  ImportGoAir_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 5;

end;

procedure TImportFlightsForm.IndianAirlines1Click(Sender: TObject);
begin
  inherited;
  if not OpenDialog.Execute then
    exit;

  ImportIndianAirlines_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 6;

end;

procedure TImportFlightsForm.IndigoExcel1Click(Sender: TObject);
begin
  inherited;

  if not OpenDialog.Execute then
    exit;

  ImportIndigoAirlines_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 4;

end;

procedure TImportFlightsForm.AirIndiaExcel1Click(Sender: TObject);
begin
  inherited;

  if not OpenDialog.Execute then
    exit;

  ImportAirIndia_Excel(scExcelExport1, OpenDialog.FileName);

  cxButtonErrorsClick(nil);

  FlightCompanyLCMB.EditValue := 6;

end;

end.
