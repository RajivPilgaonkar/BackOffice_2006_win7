unit TrainsMismatchFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, FMTBcd, DBClient,
  Provider, SqlExpr, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView,
  cxGridDBTableView, cxGrid, ComCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxContainer, cxGroupBox, cxButtons,
  ExtCtrls, cxRadioGroup, cxCurrencyEdit, cxCalc, cxCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;



type
  TTrainsMismatchForm = class(TForm)
    Panel1: TPanel;
    cxButton3: TcxButton;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PageControl1: TPageControl;
    TabSheetSystem: TTabSheet;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    SysSds: TSQLDataSet;
    SysDsp: TDataSetProvider;
    SysCds: TClientDataSet;
    SysDs: TDataSource;
    TabSheetDownloaded: TTabSheet;
    DownSds: TSQLDataSet;
    DownDsp: TDataSetProvider;
    DownCds: TClientDataSet;
    DownDs: TDataSource;
    SysCdsTrainNo: TStringField;
    SysCdstrainName: TStringField;
    SysCdsWef: TSQLTimeStampField;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxGridSys: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridSysDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridSysLevel1: TcxGridLevel;
    cxGridSysDBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxGridSysDBBandedTableView1trainName: TcxGridDBBandedColumn;
    cxGridSysDBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGridDown: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDownDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDownLevel1: TcxGridLevel;
    DownCdsShortName: TStringField;
    DownCdsLongName: TStringField;
    DownCdsStartName: TStringField;
    DownCdsStartTime: TStringField;
    DownCdsEndName: TStringField;
    DownCdsEndTime: TStringField;
    cxGridDownDBBandedTableView1ShortName: TcxGridDBBandedColumn;
    cxGridDownDBBandedTableView1LongName: TcxGridDBBandedColumn;
    cxGridDownDBBandedTableView1StartName: TcxGridDBBandedColumn;
    cxGridDownDBBandedTableView1StartTime: TcxGridDBBandedColumn;
    cxGridDownDBBandedTableView1EndName: TcxGridDBBandedColumn;
    cxGridDownDBBandedTableView1EndTime: TcxGridDBBandedColumn;
    N1: TMenuItem;
    erminateTrainsInSysbutnotDownloaded1: TMenuItem;
    N2: TMenuItem;
    ImportTrainsSchedules1: TMenuItem;
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure erminateTrainsInSysbutnotDownloaded1Click(Sender: TObject);
    procedure ImportTrainsSchedules1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrainsMismatchForm: TTrainsMismatchForm;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TTrainsMismatchForm.SaveAsExcel1Click(Sender: TObject);
begin

  if PageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\InSystemButNotDownloaded.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridSys, True, True, False, cxGridSysDBBandedTableView1);
    end
  else if PageControl1.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := g_ReportDir + '\DownloadedButNotInSystem.xls';
      if SaveDialog.Execute then
        ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridDown, True, True, False, cxGridDownDBBandedTableView1);
    end;

end;

procedure TTrainsMismatchForm.Print1Click(Sender: TObject);
begin

  if PageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridSys;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'In System but not downloaded ';
    end
  else if PageControl1.ActivePageIndex = 1 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridDown;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'In Download but not in System ';
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure TTrainsMismatchForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TTrainsMismatchForm.cxButton3Click(Sender: TObject);
begin

  if PageControl1.ActivePage = TabSheetSystem then
    begin
      SysSds.Close;
      SysSds.CommandText := 'EXEC p_Trains_PreUploadCheck 2 ';
      SysSds.Open;

      SysCds.Close;
      SysCds.Open;

    end
  else if PageControl1.ActivePage = TabSheetDownloaded then
    begin
      DownSds.Close;
      DownSds.CommandText := 'EXEC p_Trains_PreUploadCheck 1 ';
      DownSds.Open;

      DownCds.Close;
      DownCds.Open;

    end;

end;

procedure TTrainsMismatchForm.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheetSystem;
end;

procedure TTrainsMismatchForm.FormDestroy(Sender: TObject);
begin
  TrainsMismatchForm:=nil;
end;

procedure TTrainsMismatchForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTrainsMismatchForm.erminateTrainsInSysbutnotDownloaded1Click(
  Sender: TObject);
var
  GPSds: TSQLDataSet;
  QueryString: string;
  x_Date: TDateTime;
begin

  x_Date := Date();

  if MessageDlg ('Are you sure you want to terminate the trains as of ''' +
     FormatDateTime('mm/dd/yyyy',x_Date) + '?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GPSds.CommandType := ctQuery;

  QueryString := 'EXEC p_Trains_Terminate ''' + FormatDateTime('mm/dd/yyyy',x_Date) + '''';

  GPSds.Close;
  GPSds.CommandText := QueryString;
  GPSds.ExecSQL;

  GPSds.Free;

  ShowMessage ('Terminated');
end;

procedure TTrainsMismatchForm.ImportTrainsSchedules1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  QueryString: string;
  x_Date: TDateTime;
begin

  x_Date := Date();

  if MessageDlg ('Are you sure you want to import trains & schedules as of ''' +
     FormatDateTime('mm/dd/yyyy',x_Date) + '?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GPSds.CommandType := ctQuery;

  QueryString := 'EXEC p_ImportTrainsFromTmp ''' + FormatDateTime('mm/dd/yyyy',x_Date) + '''';

  GPSds.Close;
  GPSds.CommandText := QueryString;
  GPSds.ExecSQL;

  GPSds.Free;

  ShowMessage ('Imported');

end;

end.


