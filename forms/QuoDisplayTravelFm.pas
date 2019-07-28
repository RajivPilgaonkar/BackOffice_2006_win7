unit QuoDisplayTravelFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, DBCtrls,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridBandedTableView, cxGridDBBandedTableView, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, cxSpinEdit, cxTimeEdit, cxDBEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Buttons;

type
  TQuoDisplayTravelForm = class(TForm)
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    cxButton2: TcxButton;
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCDS: TClientDataSet;
    MasterDS: TDataSource;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    MasterCDSqt_id: TIntegerField;
    MasterCDSQuoTickets_id: TIntegerField;
    MasterCDSQuoLines_id: TIntegerField;
    MasterCDSTravelDate: TSQLTimeStampField;
    MasterCDSFrom_Cities_id: TIntegerField;
    MasterCDSTo_Cities_id: TIntegerField;
    MasterCDSFromCity: TStringField;
    MasterCDSToCity: TStringField;
    MasterCDSMode: TStringField;
    MasterCDSModeDetails: TStringField;
    MasterCDSclass: TStringField;
    MasterCDSETD: TSQLTimeStampField;
    MasterCDSETA: TSQLTimeStampField;
    MasterCDSCarReleaseDate: TSQLTimeStampField;
    MasterCDSOvernight: TBooleanField;
    MasterCDSDriveType: TStringField;
    MasterCDSNewCar: TIntegerField;
    MasterCDSCarAgent: TStringField;
    MasterCDSCarHireCity: TStringField;
    MasterCDSVehicle: TStringField;
    MasterCDSModeNo: TIntegerField;
    cxGridMasterDBBandedTableView1qt_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TravelDate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1FromCity: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ToCity: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Mode: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ModeDetails: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1class: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ETD: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ETA: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CarReleaseDate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Overnight: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DriveType: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1NewCar: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CarAgent: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CarHireCity: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Vehicle: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ModeNo: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    MasterCDSCarReportDate: TSQLTimeStampField;
    cxGridMasterDBBandedTableView1CarReportDate: TcxGridDBBandedColumn;
    PopupMenu2: TPopupMenu;
    EnterDates1: TMenuItem;
    N1: TMenuItem;
    ClearDates1: TMenuItem;
    Report1: TMenuItem;
    Release1: TMenuItem;
    Report2: TMenuItem;
    Release2: TMenuItem;
    Panel3: TPanel;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    t: TIntegerField;
    TicketsCdsCarReleaseDate: TSQLTimeStampField;
    TicketsCdsCarReportDate: TSQLTimeStampField;
    TicketsDs: TDataSource;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label6: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxButton3: TcxButton;
    MasterCDSTickets_id: TIntegerField;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    TicketsCdsETD: TSQLTimeStampField;
    TicketsCdsETA: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Report2Click(Sender: TObject);
    procedure Release2Click(Sender: TObject);
    procedure Report1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Release1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  QuoDisplayTravelForm: TQuoDisplayTravelForm;
  _QuoDisplayTravelForm_Level : Integer;
  _QuoDisplayTravelForm_Quotations_id: integer;
  _QuoDisplayTravelForm_Type: integer;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TQuoDisplayTravelForm.FormCreate(Sender: TObject);
begin

  Panel3.Visible := false;

  if _QuoDisplayTravelForm_Type = 2 then
    begin
      cxGridMasterDBBandedTableView1CarAgent.Visible := false;
      cxGridMasterDBBandedTableView1CarHireCity.Visible := false;
      cxGridMasterDBBandedTableView1Vehicle.Visible := false;
    end;

  MasterSds.Active := False;
  MasterCds.Active := False;

  if _QuoDisplayTravelForm_Type = 1 then
    MasterSds.CommandText := 'EXEC p_QuoTravelItin ' + IntToStr(_QuoDisplayTravelForm_Quotations_id) + ' '
  else
    MasterSds.CommandText := 'EXEC p_QuoTravelItin_Inital ' + IntToStr(_QuoDisplayTravelForm_Quotations_id) + ' ';

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TQuoDisplayTravelForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoDisplayTravelForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnRecordType: TcxCustomGridTableItem;
begin

  AColumnRecordType := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('ModeNo');

  if (ARecord.Values[AColumnRecordType.Index] mod 2 = 1) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoDisplayTravelForm.SaveAsExcel1Click(Sender: TObject);
begin

  SaveDialog.FileName := g_ReportDir + '\QuoTravel.xls';
  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW_Banded (SaveDialog.FileName, cxGridMaster, True, True, False, cxGridMasterDBBandedTableView1);

end;

procedure TQuoDisplayTravelForm.Print1Click(Sender: TObject);
begin

  dxComponentPrinter.CurrentLink.Component := cxGridMaster;
  dxComponentPrinter.CurrentLink.PrinterPage.Orientation := poLandscape;
  dxComponentPrinter.CurrentLink.ReportTitle.Text :=
    'Travel Details ';

  dxComponentPrinter.Preview(True,nil);

end;

procedure TQuoDisplayTravelForm.Report2Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  x_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'UPDATE QuoTickets SET CarReportDate = null WHERE QuoTickets_id = ' + IntToStr(MasterCds['QuoTickets_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  x_id := MasterCds['qt_id'];
  FilterData;
  MasterCds.Locate('qt_id', x_id, []);

end;

procedure TQuoDisplayTravelForm.Release2Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  x_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'UPDATE QuoTickets SET CarReleaseDate = null WHERE QuoTickets_id = ' + IntToStr(MasterCds['QuoTickets_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  x_id := MasterCds['qt_id'];
  FilterData;
  MasterCds.Locate('qt_id', x_id, []);

end;

procedure TQuoDisplayTravelForm.FilterData;
begin

  MasterSds.Active := False;
  MasterCds.Active := False;

  if _QuoDisplayTravelForm_Type = 1 then
    MasterSds.CommandText := 'EXEC p_QuoTravelItin ' + IntToStr(_QuoDisplayTravelForm_Quotations_id) + ' '
  else
    MasterSds.CommandText := 'EXEC p_QuoTravelItin_Inital ' + IntToStr(_QuoDisplayTravelForm_Quotations_id) + ' ';

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoDisplayTravelForm.Report1Click(Sender: TObject);
begin

  if MasterCds['Tickets_id'] <> 5 then
    raise exception.create('Only for cars');

  cxDBDateEdit1.Enabled := true;
  cxDBTimeEdit1.Enabled := true;

  cxDBDateEdit2.Enabled := false;
  cxDBTimeEdit2.Enabled := false;

  SpeedButton3.Enabled := true;
  SpeedButton1.Enabled := false;

  Panel3.Visible := true;

  TicketsCds.Active := false;
  TicketsSds.Active := false;

  TicketsSds.Params[0].Value := MasterCds['QuoTickets_id'];

  TicketsSds.Active := true;
  TicketsCds.Active := true;

end;

procedure TQuoDisplayTravelForm.Release1Click(Sender: TObject);
begin

  if MasterCds['Tickets_id'] <> 5 then
    raise exception.create('Only for cars');

  cxDBDateEdit1.Enabled := false;
  cxDBTimeEdit1.Enabled := false;

  cxDBDateEdit2.Enabled := true;
  cxDBTimeEdit2.Enabled := true;

  SpeedButton3.Enabled := false;
  SpeedButton1.Enabled := true;

  Panel3.Visible := true;

  TicketsCds.Active := false;
  TicketsSds.Active := false;

  TicketsSds.Params[0].Value := MasterCds['QuoTickets_id'];

  TicketsSds.Active := true;
  TicketsCds.Active := true;

end;

procedure TQuoDisplayTravelForm.cxButton3Click(Sender: TObject);
var
  x_id: integer;
begin

  if (TicketsCds.State = dsInsert) or (TicketsCds.State = dsEdit) then
    begin
      TicketsCds.Post;
      TicketsCds.ApplyUpdates(0);
    end;

  Panel3.Visible := false;

  x_id := MasterCds['qt_id'];
  FilterData;
  MasterCds.Locate('qt_id', x_id, []);

end;


procedure TQuoDisplayTravelForm.SpeedButton1Click(Sender: TObject);
begin
  if TicketsCds.State = dsBrowse then
    TicketsCds.Edit;

  TicketsCds['CarReleaseDate'] := TicketsCds['ETA'];

end;

procedure TQuoDisplayTravelForm.SpeedButton3Click(Sender: TObject);
begin

  if TicketsCds.State = dsBrowse then
    TicketsCds.Edit;

  TicketsCds['CarReportDate'] := TicketsCds['ETD'];

end;

end.
