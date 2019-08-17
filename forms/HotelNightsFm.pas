unit HotelNightsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxGroupBox, cxPC, cxControls, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxCheckBox, cxRadioGroup, StdCtrls, cxButtons,
  FMTBcd, DB, DBClient, Provider, SqlExpr, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxCommon, dxPScxGrid6Lnk, cxGridBandedTableView,
  cxGridDBBandedTableView, ShlObj, cxGridExportLink, scExcelExport, DateUtils;

type
  THotelNightsForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    N1: TMenuItem;
    BankListings1: TMenuItem;
    cxPageControl1: TcxPageControl;
    TabSheetNights: TcxTabSheet;
    HotelNightsSds: TSQLDataSet;
    HotelNightsDsp: TDataSetProvider;
    HotelNightsCds: TClientDataSet;
    HotelNightsDs: TDataSource;
    cxGridHotelNightsLevel1: TcxGridLevel;
    cxGridHotelNights: TcxGrid;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    cxGridHotelNightsDBBandedTableView1: TcxGridDBBandedTableView;
    scExcelExport: TscExcelExport;
    cxLabel3: TcxLabel;
    cxFromDate: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxToDate: TcxDateEdit;
    HotelNightsCdscity: TStringField;
    HotelNightsCdsPrincipalAgent: TStringField;
    HotelNightsCdsHotel: TStringField;
    HotelNightsCdsroomtype: TStringField;
    HotelNightsCdsNights: TIntegerField;
    cxGridHotelNightsDBBandedTableView1city: TcxGridDBBandedColumn;
    cxGridHotelNightsDBBandedTableView1PrincipalAgent: TcxGridDBBandedColumn;
    cxGridHotelNightsDBBandedTableView1Hotel: TcxGridDBBandedColumn;
    cxGridHotelNightsDBBandedTableView1roomtype: TcxGridDBBandedColumn;
    cxGridHotelNightsDBBandedTableView1Nights: TcxGridDBBandedColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    function GetDesktopPath(Sender: TObject): string;
    procedure Print1Click(Sender: TObject);
    procedure BankListings1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HotelNightsForm: THotelNightsForm;

implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure THotelNightsForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure THotelNightsForm.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePage := TabSheetNights;

  cxFromDate.Date := StrToDate('01/01/' + IntToStr(YearOf(Date)));
  cxToDate.Date := IncDay(IncYear(cxFromDate.Date, 1), -1);

  cxButton2.Left := HotelNightsForm.Width - cxButton2.Width - 20;

end;

procedure THotelNightsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THotelNightsForm.FormDestroy(Sender: TObject);
begin
  HotelNightsForm := nil;
end;

procedure THotelNightsForm.cxButton4Click(Sender: TObject);
begin
  cxFromDate.Date := IncYear(cxFromDate.Date, -1);
  cxToDate.Date := IncDay(IncYear(cxFromDate.Date, 1), -1);
end;

procedure THotelNightsForm.cxButton5Click(Sender: TObject);
begin
  cxFromDate.Date := IncYear(cxFromDate.Date, 1);
  cxToDate.Date := IncDay(IncYear(cxFromDate.Date, 1), -1);
end;

procedure THotelNightsForm.cxButton3Click(Sender: TObject);
begin

  if cxPageControl1.ActivePage = TabSheetNights then
    begin
      HotelNightsSds.Close;
      HotelNightsSds.CommandText := 'EXEC p_HotelNights ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDate.Date)) + ', ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDate.Date)) ;
      HotelNightsSds.Open;

      HotelNightsCds.Close;
      HotelNightsCds.Open;

    end

end;

procedure THotelNightsForm.SaveAsExcel1Click(Sender: TObject);
var
  x_Path : string;
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      x_Path := GetDesktopPath(nil);

      SaveDialog.FileName := x_Path + '\Hotel_Nights.xls';
      if SaveDialog.Execute then
        ExportGridToExcel(SaveDialog.FileName, cxGridHotelNights, True, True, False);
    end

end;

function THotelNightsForm.GetDesktopPath(Sender: TObject): string;
var
  pidl: PItemIDList;
  buf: array[0..MAX_PATH] of Char;
  x_Path: string;
begin

  x_Path := '';
  if Succeeded(ShGetSpecialFolderLocation(Handle, CSIDL_DESKTOP, pidl)) then
  begin
    if ShGetPathfromIDList(pidl, buf) then
      x_Path := buf;
    FreePIDL(pidl);
  end;

  Result := x_Path;

end;

procedure THotelNightsForm.Print1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinter.CurrentLink.Component := cxGridHotelNights;
      dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
      dxComponentPrinter.CurrentLink.ReportTitle.Text :=
        'Hotel Nights between ' + cxFromDate.Text + ' and ' + cxToDate.Text;
    end;

  dxComponentPrinter.Preview(True,nil);

end;

procedure THotelNightsForm.BankListings1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_StartRow, x_row : integer;
  x_Path, x_FileName, x_Cell : string;
begin

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrNo then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      x_Path := GetDesktopPath(nil);
      x_FileName := x_Path + '\Hotel_Nights.xlsx';

      GpSds.Close;
      GpSds.CommandText := 'EXEC p_HotelNights ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(cxFromDate.Text))) + ', ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(cxToDate.Text))) ;
      GpSds.Open;

      scExcelExport.ExcelVisible := True;
      scExcelExport.LoadDefaultProperties;

      scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'Excel\Hotel_Nights.xlsx';

      scExcelExport.WorksheetName := 'Data';

      scExcelExport.ConnectTo := ctNewExcel;
      scExcelExport.Connect;

      x_StartRow := 2;
      x_row := x_StartRow;


      while not GpSds.EOF do
      begin

        x_Cell := 'A';
        if GpSds['City'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['City'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['PrincipalAgent'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['PrincipalAgent'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['Hotel'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Hotel'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['RoomType'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['RoomType'];

        x_Cell := NextColumn(x_Cell);
        if GpSds['Nights'] <> null then
          scExcelExport.ExcelWorkSheet.Range[x_Cell+IntToStr(x_row),x_Cell+IntToStr(x_row)].Value := GpSds['Nights'];

        x_row := x_row + 1;
        GpSds.Next;

      end;

      scExcelExport.ExcelWorkSheet.Range['H1','H1'].Value := x_row-2;

      scExcelExport.SaveAs(x_FileName,ffXLS);

      scExcelExport.Disconnect;
      scExcelExport.CloseAllExcelApps;

      GpSds.Free;

      Showmessage('Saved As ' + x_FileName);

  end;
end;

procedure THotelNightsForm.FormResize(Sender: TObject);
begin
  cxButton2.Left := HotelNightsForm.Width - cxButton2.Width - 20;
end;

end.
