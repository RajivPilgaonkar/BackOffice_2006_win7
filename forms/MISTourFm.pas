unit MISTourFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, Mask,
  ExtCtrls, cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, cxClasses,
  cxCustomPivotGrid, cxDBPivotGrid, DBClient, Provider, SqlExpr, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxGroupBox, cxDBEdit, cxExportPivotGridLink,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, dxPScxPivotGridLnk, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TMISTourForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    FromDateEdit: TMaskEdit;
    ToDateEdit: TMaskEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    cxButton8: TcxButton;
    Panel3: TPanel;
    Panel5: TPanel;
    cxPageControl1: TcxPageControl;
    cxBookingsTab: TcxTabSheet;
    cxHotelTab: TcxTabSheet;
    cxHotelPivotGrid: TcxDBPivotGrid;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    BookingSds: TSQLDataSet;
    BookingDsp: TDataSetProvider;
    BookingCds: TClientDataSet;
    BookingDs: TDataSource;
    cxBookingPivotGrid: TcxDBPivotGrid;
    SaveDialog: TSaveDialog;
    N1: TMenuItem;
    Print1: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TcxPivotGridReportLink;
    dxComponentPrinterLink2: TcxPivotGridReportLink;
    BookingCdsTourCode: TStringField;
    BookingCdsMasterCode: TStringField;
    BookingCdsSex: TStringField;
    BookingCdsNationality: TStringField;
    BookingCdsPrincipalAgent: TStringField;
    BookingCdsTourType: TStringField;
    BookingCdsNumPax: TIntegerField;
    BookingCdsAgeRange: TStringField;
    BookingCdsMonthName: TStringField;
    BookingCdsYear: TIntegerField;
    BookingCdsMonths_id: TIntegerField;
    cxBookingPivotGridTourCode: TcxDBPivotGridField;
    cxBookingPivotGridMasterCode: TcxDBPivotGridField;
    cxBookingPivotGridSex: TcxDBPivotGridField;
    cxBookingPivotGridNationality: TcxDBPivotGridField;
    cxBookingPivotGridPrincipalAgent: TcxDBPivotGridField;
    cxBookingPivotGridTourType: TcxDBPivotGridField;
    cxBookingPivotGridNumPax: TcxDBPivotGridField;
    cxBookingPivotGridAgeRange: TcxDBPivotGridField;
    cxBookingPivotGridMonthName: TcxDBPivotGridField;
    cxBookingPivotGridYear: TcxDBPivotGridField;
    cxBookingPivotGridMonths_id: TcxDBPivotGridField;
    cxBookingPivotGridTitle: TcxDBPivotGridField;
    PopupMenu2: TPopupMenu;
    Bookings1: TMenuItem;
    N2: TMenuItem;
    Hotels1: TMenuItem;
    N3: TMenuItem;
    Agents1: TMenuItem;
    ourwise1: TMenuItem;
    Nationalitywise1: TMenuItem;
    PrincipalAgentwise1: TMenuItem;
    ourTypewise1: TMenuItem;
    Agewise1: TMenuItem;
    Monthwise1: TMenuItem;
    Year1: TMenuItem;
    Month1: TMenuItem;
    Hotel1: TMenuItem;
    Citywise1: TMenuItem;
    Hotelwise1: TMenuItem;
    Citywise2: TMenuItem;
    Year2: TMenuItem;
    Month2: TMenuItem;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsHotel: TStringField;
    HotelCdsRoomNights: TIntegerField;
    HotelCdsBedNights: TIntegerField;
    HotelCdsCost: TFloatField;
    HotelCdsCity: TStringField;
    HotelCdsMonthName: TStringField;
    HotelCdsYear: TIntegerField;
    cxHotelPivotGridHotel: TcxDBPivotGridField;
    cxHotelPivotGridRoomNights: TcxDBPivotGridField;
    cxHotelPivotGridBedNights: TcxDBPivotGridField;
    cxHotelPivotGridCost: TcxDBPivotGridField;
    cxHotelPivotGridCity: TcxDBPivotGridField;
    cxHotelPivotGridMonthName: TcxDBPivotGridField;
    cxHotelPivotGridYear: TcxDBPivotGridField;
    cxHotelPivotGridTitle: TcxDBPivotGridField;
    HotelCdsMonths_id: TIntegerField;
    cxHotelPivotGridMonths_id: TcxDBPivotGridField;
    cxAgentTAB: TcxTabSheet;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDs: TDataSource;
    cxAgentPivotGrid: TcxDBPivotGrid;
    AgentCdsAgent: TStringField;
    AgentCdsService: TStringField;
    AgentCdsTicket: TStringField;
    AgentCdsCost: TFloatField;
    AgentCdsMonthName: TStringField;
    AgentCdsYear: TIntegerField;
    AgentCdsVoucherTypes_id: TIntegerField;
    AgentCdsTickets_id: TIntegerField;
    AgentCdsMonths_id: TIntegerField;
    cxAgentPivotGridAgent: TcxDBPivotGridField;
    cxAgentPivotGridService: TcxDBPivotGridField;
    cxAgentPivotGridTicket: TcxDBPivotGridField;
    cxAgentPivotGridCost: TcxDBPivotGridField;
    cxAgentPivotGridMonthName: TcxDBPivotGridField;
    cxAgentPivotGridYear: TcxDBPivotGridField;
    cxAgentPivotGridMonths_id: TcxDBPivotGridField;
    cxReportButton: TcxButton;
    cxAgentPivotGridTitle: TcxDBPivotGridField;
    procedure FormCreate(Sender: TObject);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure ReportBooking_1(x_option: integer);
    procedure ReportBooking_2(x_option: integer);
    procedure ReportBooking_3(x_option: integer);    
    procedure Print1Click(Sender: TObject);
    procedure cxDBPivotGrid1ReelsCalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
    procedure ourwise1Click(Sender: TObject);
    procedure Nationalitywise1Click(Sender: TObject);
    procedure PrincipalAgentwise1Click(Sender: TObject);
    procedure ourTypewise1Click(Sender: TObject);
    procedure Agewise1Click(Sender: TObject);
    procedure Monthwise1Click(Sender: TObject);
    procedure Hotel1Click(Sender: TObject);
    procedure Citywise1Click(Sender: TObject);
    procedure Hotelwise1Click(Sender: TObject);
    procedure Citywise2Click(Sender: TObject);
    procedure Year2Click(Sender: TObject);
    procedure Month2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MISTourForm: TMISTourForm;
  _MISTourForm_Level: integer;

implementation

uses GeneralUt, BackOfficeDM, MainFm;

{$R *.dfm}

procedure TMISTourForm.FormCreate(Sender: TObject);
begin

  BookingCds.Active := False;

  MISTourForm.Height := 650;
  MISTourForm.Width := 950;

  //AutoDateRange (Date(),1);

  FromDateEdit.Text := '01/01/2005';
  ToDateEdit.Text := FormatDateTime('dd/mm/yyyy',Date);

  cxPageControl1.ActivePageIndex := 0;

  cxBookingPivotGrid.ApplyBestFit;
  cxHotelPivotGrid.ApplyBestFit;

end;

procedure TMISTourForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
var
  x_Year, x_month, x_Day : Word;
  x_YearNext, x_MonthNext : Word;
  x_YearEnd, x_MonthEnd, x_DayEnd : Word;
  x_DateEnd: TDateTime;
begin

  DecodeDate(x_Date, x_Year, x_Month, x_Day);
  if x_month = 12 then
    begin
      x_MonthNext := 1;
      x_yearNext := x_Year + 1;
    end
  else
    begin
      x_MonthNext := x_Month + 1;
      x_yearNext := x_Year;
    end;

  x_DateEnd := StrToDate('01/' + padl(IntToStr(x_MonthNext),'0',2) + '/' + padl(IntToStr(x_YearNext),'0',4));
  x_DateEnd := x_DateEnd - 1;

  DecodeDate(x_DateEnd, x_YearEnd, x_MonthEnd, x_DayEnd);

  if x_option = 1 then
    begin
      FromDateEdit.Text := '01/' + padl(IntToStr(x_Month),'0',2) + '/' + padl(IntToStr(x_Year),'0',4);
      ToDateEdit.Text := padl(IntToStr(x_DayEnd),'0',2) + '/' + padl(IntToStr(x_MonthEnd),'0',2) + '/' + padl(IntToStr(x_YearEnd),'0',4);
    end
  else if x_option = 2 then
    begin
      ToDateEdit.Text := padl(IntToStr(x_DayEnd),'0',2) + '/' + padl(IntToStr(x_MonthEnd),'0',2) + '/' + padl(IntToStr(x_YearEnd),'0',4);
    end;

end;


procedure TMISTourForm.cxButton1Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(FromDateEdit.Text),-1),1);
end;

procedure TMISTourForm.cxButton2Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(FromDateEdit.Text),1),1);
end;

procedure TMISTourForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMISTourForm.FormDestroy(Sender: TObject);
begin
  MISTourForm := nil;
end;

procedure TMISTourForm.cxButton8Click(Sender: TObject);
begin
  Close;
end;

procedure TMISTourForm.SaveAsExcel1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := g_ReportDir + '\BookingPivot.xls';

      if SaveDialog.Execute then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxBookingPivotGrid, True, False);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := g_ReportDir + '\HotelPivot.xls';
      if SaveDialog.Execute then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxHotelPivotGrid, True, False);
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      SaveDialog.FileName := g_ReportDir + '\AgentPivot.xls';
      if SaveDialog.Execute then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxAgentPivotGrid, True, False);
    end;

end;


procedure TMISTourForm.ReportBooking_1(x_option: integer);
begin

  cxPageControl1.ActivePageIndex := 0;

  BookingSds.Close;
  BookingSds.CommandText := 'EXEC p_MIS_Bookings ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''', 1, 1 ';
  BookingSds.Open;

  BookingCds.Close;


  // Filter
  cxBookingPivotGridMasterCode.Area := faFilter;
  cxBookingPivotGridMasterCode.AreaIndex := 0;

  cxBookingPivotGridSex.Area := faFilter;
  cxBookingPivotGridSex.AreaIndex := 1;

  cxBookingPivotGridNationality.Area := faFilter;
  cxBookingPivotGridNationality.AreaIndex := 2;

  cxBookingPivotGridAgeRange.Area := faFilter;
  cxBookingPivotGridAgeRange.AreaIndex := 3;

  cxBookingPivotGridTourType.Area := faFilter;
  cxBookingPivotGridTourType.AreaIndex := 4;

  cxBookingPivotGridMonths_id.Area := faFilter;
  cxBookingPivotGridMonths_id.AreaIndex := 5;

  cxBookingPivotGridPrincipalAgent.Area := faFilter;
  cxBookingPivotGridPrincipalAgent.AreaIndex := 6;

  cxBookingPivotGridTourCode.Area := faFilter;
  cxBookingPivotGridTourCode.AreaIndex := 7;

  // Rows
  if x_option = 1 then
    begin
      cxBookingPivotGridTourCode.Area := faRow;
      cxBookingPivotGridTourCode.AreaIndex := 0;
    end
  else if x_option = 2 then
    begin
      cxBookingPivotGridNationality.Area := faRow;
      cxBookingPivotGridNationality.AreaIndex := 0;
    end
  else if x_option = 3 then
    begin
      cxBookingPivotGridPrincipalAgent.Area := faRow;
      cxBookingPivotGridPrincipalAgent.AreaIndex := 0;
    end
  else if x_option = 4 then
    begin
      cxBookingPivotGridTourType.Area := faRow;
      cxBookingPivotGridTourType.AreaIndex := 0;
    end
  else if x_option = 5 then
    begin
      cxBookingPivotGridAgeRange.Area := faRow;
      cxBookingPivotGridAgeRange.AreaIndex := 0;

      cxBookingPivotGridSex.Area := faRow;
      cxBookingPivotGridSex.AreaIndex := 1;

    end
  else if x_option = 6 then
    begin
      cxBookingPivotGridMonths_id.Area := faRow;
      cxBookingPivotGridMonths_id.AreaIndex := 0;
    end;


  // Columns
  cxBookingPivotGridYear.Area := faColumn;
  cxBookingPivotGridYear.AreaIndex := 0;

  // Data
  cxBookingPivotGridNumPax.Area := faData;
  cxBookingPivotGridNumPax.AreaIndex := 0;

  //cxBookingPivotGridMasterTourCode.Width := 60;

  BookingCds.Open;

  cxBookingPivotGrid.ApplyBestFit;

end;



procedure TMISTourForm.Print1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinterLink1.ReportTitle.Text := cxBookingPivotGridTitle.Caption;
      dxComponentPrinter.CurrentLink := dxComponentPrinterLink1;
      dxComponentPrinter.Preview(True,nil);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      dxComponentPrinterLink2.ReportTitle.Text := cxHotelPivotGridTitle.Caption;
      dxComponentPrinter.CurrentLink := dxComponentPrinterLink2;
      dxComponentPrinter.Preview(True,nil);
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      dxComponentPrinterLink2.ReportTitle.Text := cxAgentPivotGridTitle.Caption;
      dxComponentPrinter.CurrentLink := dxComponentPrinterLink2;
      dxComponentPrinter.Preview(True,nil);
    end;

end;

procedure TMISTourForm.cxDBPivotGrid1ReelsCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
{
var
  AOrderCount: integer;
  AGroup: string;
  i: integer;
  ARow, AColumn: TcxPivotGridGroupItem;
}  
begin

{
  // Used to store the count of the orders with amount greater than $50,000.
  AOrderCount := 0;
  with ASummary do
  begin
    // Iterate all the records that correspond to a data cell.
    for I := 0 to Records.Count - 1 do
    begin

      AColumn := ASummary.Owner.Column;
      Acolumn.Field.Visible := False;

      Inc(AOrderCount);
    end;

  end;
}

end;

procedure TMISTourForm.ourwise1Click(Sender: TObject);
begin
  ReportBooking_1(1);
end;

procedure TMISTourForm.Nationalitywise1Click(Sender: TObject);
begin
  ReportBooking_1(2);
end;

procedure TMISTourForm.PrincipalAgentwise1Click(Sender: TObject);
begin
  ReportBooking_1(3);
end;

procedure TMISTourForm.ourTypewise1Click(Sender: TObject);
begin
  ReportBooking_1(4);
end;

procedure TMISTourForm.Agewise1Click(Sender: TObject);
begin
  ReportBooking_1(5);
end;

procedure TMISTourForm.Monthwise1Click(Sender: TObject);
begin
  ReportBooking_1(6);
end;

procedure TMISTourForm.Hotel1Click(Sender: TObject);
begin
  ReportBooking_2(1);
end;

procedure TMISTourForm.ReportBooking_2(x_option: integer);
begin

  cxPageControl1.ActivePageIndex := 1;

  HotelSds.Close;
  HotelSds.CommandText := 'EXEC p_MIS_Hotels ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''', 1';
  HotelSds.Open;

  HotelCds.Close;

  // Filter
  cxHotelPivotGridHotel.Area := faFilter;
  cxHotelPivotGridHotel.AreaIndex := 0;

  cxHotelPivotGridRoomNights.Area := faFilter;
  cxHotelPivotGridRoomNights.AreaIndex := 1;

  cxHotelPivotGridBedNights.Area := faFilter;
  cxHotelPivotGridBedNights.AreaIndex := 2;

  cxHotelPivotGridCost.Area := faFilter;
  cxHotelPivotGridCost.AreaIndex := 3;

  cxHotelPivotGridCity.Area := faFilter;
  cxHotelPivotGridCity.AreaIndex := 4;

  cxHotelPivotGridMonths_id.Area := faFilter;
  cxHotelPivotGridMonths_id.AreaIndex := 5;

  cxHotelPivotGridYear.Area := faFilter;
  cxHotelPivotGridYear.AreaIndex := 6;

  // Rows
  if (x_option = 1) or (x_option = 3) then
    begin
      cxHotelPivotGridHotel.Area := faRow;
      cxHotelPivotGridHotel.AreaIndex := 0;
    end
  else if (x_option = 2) or (x_option = 4) then
    begin
      cxHotelPivotGridCity.Area := faRow;
      cxHotelPivotGridCity.AreaIndex := 0;

      cxHotelPivotGridHotel.Area := faRow;
      cxHotelPivotGridHotel.AreaIndex := 1;
    end;

  // Columns
  cxHotelPivotGridYear.Area := faColumn;
  cxHotelPivotGridYear.AreaIndex := 0;

  if (x_option = 3) or (x_option = 4) then
    begin
      cxHotelPivotGridMonths_id.Area := faColumn;
      cxHotelPivotGridMonths_id.AreaIndex := 1;
    end;

  // Data
  cxHotelPivotGridRoomNights.Area := faData;
  cxHotelPivotGridRoomNights.AreaIndex := 0;

  cxHotelPivotGridBedNights.Area := faData;
  cxHotelPivotGridBedNights.AreaIndex := 1;

  cxHotelPivotGridCost.Area := faData;
  cxHotelPivotGridCost.AreaIndex := 2;

  //cxHotelPivotGridMasterTourCode.Width := 60;

  HotelCds.Open;

  cxHotelPivotGrid.ApplyBestFit;

end;


procedure TMISTourForm.Citywise1Click(Sender: TObject);
begin
  ReportBooking_2(2);
end;

procedure TMISTourForm.Hotelwise1Click(Sender: TObject);
begin
  ReportBooking_2(3);
end;

procedure TMISTourForm.Citywise2Click(Sender: TObject);
begin
  ReportBooking_2(4);
end;

procedure TMISTourForm.Year2Click(Sender: TObject);
begin
  ReportBooking_3(1);
end;

procedure TMISTourForm.Month2Click(Sender: TObject);
begin
  ReportBooking_3(2);
end;

procedure TMISTourForm.ReportBooking_3(x_option: integer);
begin

  cxPageControl1.ActivePageIndex := 2;

  AgentSds.Close;
  AgentSds.CommandText := 'EXEC p_MIS_Agents ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''', 1';
  AgentSds.Open;

  AgentCds.Close;

  // Filter
  cxAgentPivotGridAgent.Area := faFilter;
  cxAgentPivotGridAgent.AreaIndex := 0;

  cxAgentPivotGridService.Area := faFilter;
  cxAgentPivotGridService.AreaIndex := 1;

  cxAgentPivotGridTicket.Area := faFilter;
  cxAgentPivotGridTicket.AreaIndex := 2;

  cxAgentPivotGridCost.Area := faFilter;
  cxAgentPivotGridCost.AreaIndex := 3;

  cxAgentPivotGridMonths_id.Area := faFilter;
  cxAgentPivotGridMonths_id.AreaIndex := 4;

  // Rows
  if (x_option = 1) or (x_option = 2) then
    begin
      cxAgentPivotGridAgent.Area := faRow;
      cxAgentPivotGridAgent.AreaIndex := 0;
    end;

  // Columns
  if (x_option = 1) then
    begin
      cxAgentPivotGridYear.Area := faColumn;
      cxAgentPivotGridYear.AreaIndex := 0;

      cxAgentPivotGridService.Area := faColumn;
      cxAgentPivotGridService.AreaIndex := 1;

      cxAgentPivotGridTicket.Area := faColumn;
      cxAgentPivotGridTicket.AreaIndex := 2;

    end
  else if (x_option = 2) then
    begin
      cxAgentPivotGridYear.Area := faColumn;
      cxAgentPivotGridYear.AreaIndex := 0;

      cxAgentPivotGridMonths_id.Area := faColumn;
      cxAgentPivotGridMonths_id.AreaIndex := 1;

      cxAgentPivotGridService.Area := faColumn;
      cxAgentPivotGridService.AreaIndex := 2;

      cxAgentPivotGridTicket.Area := faColumn;
      cxAgentPivotGridTicket.AreaIndex := 3;

    end;

  // Data
  cxAgentPivotGridCost.Area := faData;
  cxAgentPivotGridCost.AreaIndex := 0;

  //cxAgentPivotGridMasterTourCode.Width := 60;

  AgentCds.Open;

  cxAgentPivotGrid.ApplyBestFit;

end;


end.
