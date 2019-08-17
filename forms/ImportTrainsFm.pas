unit ImportTrainsFm;

interface

//otherwise warns about FileCtrl being platform specific
{$WARN UNIT_PLATFORM OFF}

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
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, scExcelExport, FileCtrl;

type
  TImportTrainsForm = class(TCustomMasterCxGridForm)
    cxButtonErrors: TcxButton;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxButton1: TcxButton;
    MasterCdsActive: TIntegerField;
    MasterCdsSchdUpdtOn: TSQLTimeStampField;
    MasterCdsRecdUpdtOn: TSQLTimeStampField;
    MasterCdsErrorNo: TIntegerField;
    MasterCdsErrorDesc: TStringField;
    CustomMasterCxGridDBTableView1ShortName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1LongName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1StartName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1StartTime: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EndName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EndTime: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1RunsOn: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Active: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SchdUpdtOn: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1RecdUpdtOn: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Type: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ErrorNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ErrorDesc: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    DisplaySchedule1: TMenuItem;
    N1: TMenuItem;
    DisplayFares1: TMenuItem;
    cxButton2: TcxButton;
    PopupMenu2: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    ImportfromExcel1: TMenuItem;
    N2: TMenuItem;
    OpenDialog: TOpenDialog;
    scExcelExport1: TscExcelExport;
    MasterCdsTrainClass: TStringField;
    MasterCdsFreq: TStringField;
    CustomMasterCxGridDBTableView1TrainClass: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Freq: TcxGridDBColumn;
    MasterCdsType: TIntegerField;
    MasterCdsshortname: TStringField;
    MasterCdsstartname: TStringField;
    MasterCdsstarttime: TStringField;
    MasterCdsendname: TStringField;
    MasterCdsendtime: TStringField;
    MasterCdsrunson: TIntegerField;
    MasterCdslongname: TStringField;
    MasterCdsDays: TStringField;
    ImportSectorwisefaresfromTmpscrpaing1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonErrorsClick(Sender: TObject);
    procedure RefreshDisplay;
    procedure CustomMasterCxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButton1Click(Sender: TObject);
    procedure DisplaySchedule1Click(Sender: TObject);
    procedure DisplayFares1Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure ImportfromExcel1Click(Sender: TObject);
    procedure ImportSectorwisefaresfromTmpscrpaing1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportTrainsForm: TImportTrainsForm;
  _ImportTrainsForm_Level: Integer;

implementation

uses BackOfficeDM, SearchSortFm, GeneralUt, TrainExcelImportUt, MainFm;

{$R *.dfm}

procedure TImportTrainsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'zz_trains';
  MasterKeyField := 'ShortName';
  AdmLevel := _ImportTrainsForm_Level;

  BackOfficeDataModule.TrainCategoriesCds.Open;

  MasterCds.Filtered := True;
  inherited;

end;

procedure TImportTrainsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ImportTrainsForm := nil;
end;


procedure TImportTrainsForm.cxButtonErrorsClick(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  QueryString := 'EXEC p_ImportTrains 1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshDisplay;

  ShowMessage ('Done');

end;

procedure TImportTrainsForm.RefreshDisplay;
begin
  MasterCds.Active := false;
  MasterCds.Active := true;
end;


procedure TImportTrainsForm.CustomMasterCxGridDBTableView1StylesGetContentStyle(
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

procedure TImportTrainsForm.cxButton1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to import the trains?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  QueryString := 'EXEC p_ImportTrains 2';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshDisplay;

  ShowMessage ('Trains imported');

end;

procedure TImportTrainsForm.DisplaySchedule1Click(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if MasterCds['ShortName'] <> null then
    QueryString := 'SELECT StopName, StopCode, Arrival, Departure, Distance, StopNum, DayNum, RouteNum, XlsName ' +
       'FROM zz_schedule ' +
       ' WHERE shortname = ''' + MasterCds['ShortName'] + ''' ' +
       ' AND Ignore = 0 ' + 
       'ORDER BY ShortName, RouteNum, Distance, StopNum';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 8 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'StopName';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'StopCode';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Arrival';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Departure';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'Distance';
  SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'StopNum';
  SearchSortForm.SearchGridDBTableView1.Columns[6].DataBinding.FieldName := 'DayNum';
  SearchSortForm.SearchGridDBTableView1.Columns[7].DataBinding.FieldName := 'RouteNum';
  SearchSortForm.SearchGridDBTableView1.Columns[8].DataBinding.FieldName := 'XlsName';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[6].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[7].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[8].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Stop Name';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Stop Code';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Arrival';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Departure';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Distance';
  SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Stop Num';
  SearchSortForm.SearchGridDBTableView1.Columns[6].Caption := 'Day Num';
  SearchSortForm.SearchGridDBTableView1.Columns[7].Caption := 'Route Num';
  SearchSortForm.SearchGridDBTableView1.Columns[8].Caption := 'File Name';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'StopNum';

  SearchSortForm.ShowModal;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TImportTrainsForm.DisplayFares1Click(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin
  inherited;


  if MasterCds['ShortName'] <> null then
    QueryString := 'SELECT id, source, destn, class, basefare, resfare, sfstfare, othrfare, ttklfare, addlrfare ' +
        ' FROM zz_fares ' +
        ' WHERE trnnum = ''' + MasterCds['ShortName'] + ''' ' +
        'ORDER BY trnnum, source, destn, class ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 9 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'source';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'destn';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'class';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'basefare';
  SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'resfare';
  SearchSortForm.SearchGridDBTableView1.Columns[6].DataBinding.FieldName := 'sfstfare';
  SearchSortForm.SearchGridDBTableView1.Columns[7].DataBinding.FieldName := 'othrfare';
  SearchSortForm.SearchGridDBTableView1.Columns[8].DataBinding.FieldName := 'ttklfare';
  SearchSortForm.SearchGridDBTableView1.Columns[9].DataBinding.FieldName := 'addlrfare';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[6].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[7].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[8].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[9].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  //SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'source';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'destn';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'class';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'basefare';
  SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'resfare';
  SearchSortForm.SearchGridDBTableView1.Columns[6].Caption := 'sfstfare';
  SearchSortForm.SearchGridDBTableView1.Columns[7].Caption := 'othrfare';
  SearchSortForm.SearchGridDBTableView1.Columns[8].Caption := 'ttklfare';
  SearchSortForm.SearchGridDBTableView1.Columns[9].Caption := 'addlrfare';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'id';

  SearchSortForm.ShowModal;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TImportTrainsForm.SaveAsExcel1Click(Sender: TObject);
begin
  inherited;

  SaveDialog.FileName := g_ReportDir + '\TrainImports.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW (SaveDialog.FileName, CustomMasterCxGrid, True, True, False, CustomMasterCxGridDBTableView1);

end;

procedure TImportTrainsForm.Print1Click(Sender: TObject);
begin
  inherited;

  dxComponentPrinter.CurrentLink.Component := CustomMasterCxGrid;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Train Imports ';

  dxComponentPrinter.Preview(True,nil);

end;

procedure TImportTrainsForm.ImportfromExcel1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_wef: TDateTime;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to import the km-wise train fares?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT MAX(wef) AS Wef FROM zz_trainFares_DistWise';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds.eof) or (GpSds['Wef'] = null) then
    begin
      GpSds.Free;
      raise exception.create ('No wef mentioned in zz_trainFares_DistWise table');
    end
  else
    x_wef := GpSds['Wef'];

  QueryString := 'EXEC [p_UpdateTrainFaresKmWise] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_wef));

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC [p_UpdateTrainFaresExtraChg] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_wef));

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshDisplay;

  ShowMessage ('Km-wise fares imported');

end;

procedure TImportTrainsForm.ImportSectorwisefaresfromTmpscrpaing1Click(
  Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_wef: TDateTime;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to import the sector-wise train fares from the tmp scraping table?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT MAX(wef) AS Wef FROM zz_fares';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds.eof) or (GpSds['Wef'] = null) then
    begin
      GpSds.Free;
      raise exception.create ('No wef mentioned in zz_fares table');
    end
  else
    x_wef := GpSds['Wef'];

  QueryString := 'EXEC [p_ImportTrainFares] ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',x_wef));

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshDisplay;

  ShowMessage ('Sector-wise fares imported');


end;

end.
