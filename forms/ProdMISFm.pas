unit ProdMISFm;

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
  dxPScxCommon, dxPScxPivotGridLnk;

type
  TProdMISForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    FromDateEdit: TMaskEdit;
    ToDateEdit: TMaskEdit;
    cxDisplayButton: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    cxButton8: TcxButton;
    Panel3: TPanel;
    MachineCategoryLabel: TLabel;
    cxMachineTypeCkb: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxJobGridTableView: TcxGridDBTableView;
    cxJobGridTableViewBatch_id: TcxGridDBColumn;
    cxJobGridTableViewJobNo: TcxGridDBColumn;
    cxJobGridTableViewsubstrate: TcxGridDBColumn;
    cxJobGridTableViewJobSubstrate: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel4: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxJobNoCkb: TcxCheckBox;
    cxJobNoEdit: TcxTextEdit;
    cxActiveCkb: TcxCheckBox;
    cxDescCkb: TcxCheckBox;
    cxDescEdit: TcxTextEdit;
    cxSubstrateCkb: TcxCheckBox;
    cxFilterJobButton: TcxButton;
    cxSubstrateLCMB: TcxLookupComboBox;
    Panel5: TPanel;
    cxPageControl1: TcxPageControl;
    cxSummaryTab: TcxTabSheet;
    cxDetailTab: TcxTabSheet;
    SubstrateSds: TSQLDataSet;
    SubsrtateDsp: TDataSetProvider;
    SubstrateCds: TClientDataSet;
    SubstrateCdssubstrate: TStringField;
    SubstrateCdssubstrates_id: TIntegerField;
    SubstrateDS: TDataSource;
    BatchSds: TSQLDataSet;
    BatchDsp: TDataSetProvider;
    BatchCds: TClientDataSet;
    BatchCdsJobNo: TStringField;
    BatchCdssubstrate: TStringField;
    BatchCdsJobSubstrate: TStringField;
    BatchCdsBatches_id: TIntegerField;
    BatchDS: TDataSource;
    cxMachineTypeLCMB: TcxLookupComboBox;
    cxReportsCMB: TcxComboBox;
    Label3: TLabel;
    cxFilterJobCkb: TcxCheckBox;
    Detail1Sds: TSQLDataSet;
    Detail1Dsp: TDataSetProvider;
    Detail1Cds: TClientDataSet;
    Detail1DS: TDataSource;
    Detail1CdsP_id: TIntegerField;
    Detail1CdsProdDate: TSQLTimeStampField;
    Detail1CdsShift: TStringField;
    Detail1CdsMachineType: TStringField;
    Detail1CdsMachine: TStringField;
    Detail1CdsJobSubstrate: TStringField;
    Detail1CdsJobNo: TStringField;
    Detail1CdsSubstrate: TStringField;
    Detail1CdsReels: TIntegerField;
    Detail1CdsGroupType: TStringField;
    Detail1CdsSubGroupType: TStringField;
    Detail1CdsMachineTypes_id: TIntegerField;
    Detail1CdsOrderNo: TIntegerField;
    Detail1CdsSubOrderNo: TIntegerField;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGrid2ProdDate: TcxDBPivotGridField;
    cxDBPivotGrid2Shift: TcxDBPivotGridField;
    cxDBPivotGrid2MachineType: TcxDBPivotGridField;
    cxDBPivotGrid2Machine: TcxDBPivotGridField;
    cxDBPivotGrid2JobSubstrate: TcxDBPivotGridField;
    cxDBPivotGrid2JobNo: TcxDBPivotGridField;
    cxDBPivotGrid2Substrate: TcxDBPivotGridField;
    cxDBPivotGrid2Reels: TcxDBPivotGridField;
    cxDBPivotGrid2Length: TcxDBPivotGridField;
    cxDBPivotGrid2Qty: TcxDBPivotGridField;
    cxDBPivotGrid2GroupType: TcxDBPivotGridField;
    cxDBPivotGrid2SubGroupType: TcxDBPivotGridField;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    SummarySds: TSQLDataSet;
    SummaryDsp: TDataSetProvider;
    SummaryCds: TClientDataSet;
    SummaryDS: TDataSource;
    SummaryCdsMachineType: TStringField;
    SummaryCdsMachine: TStringField;
    SummaryCdsJobSubstrate: TStringField;
    SummaryCdsJobNo: TStringField;
    SummaryCdsSubstrate: TStringField;
    SummaryCdsReels: TIntegerField;
    SummaryCdsGroupType: TStringField;
    SummaryCdsSubGroupType: TStringField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1MachineType: TcxDBPivotGridField;
    cxDBPivotGrid1Machine: TcxDBPivotGridField;
    cxDBPivotGrid1JobSubstrate: TcxDBPivotGridField;
    cxDBPivotGrid1JobNo: TcxDBPivotGridField;
    cxDBPivotGrid1Substrate: TcxDBPivotGridField;
    cxDBPivotGrid1Reels: TcxDBPivotGridField;
    cxDBPivotGrid1Length: TcxDBPivotGridField;
    cxDBPivotGrid1Qty: TcxDBPivotGridField;
    cxDBPivotGrid1GroupType: TcxDBPivotGridField;
    cxDBPivotGrid1SubGroupType: TcxDBPivotGridField;
    SaveDialog: TSaveDialog;
    cxDBPivotGrid1Title: TcxDBPivotGridField;
    cxDBPivotGrid2Title: TcxDBPivotGridField;
    N1: TMenuItem;
    Print1: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TcxPivotGridReportLink;
    SummaryCdsWastageAmt: TFMTBCDField;
    cxDBPivotGrid1WastageAmt: TcxDBPivotGridField;
    cxDBPivotGrid2WastageAmt: TcxDBPivotGridField;
    Detail1CdsWastageAmt: TFMTBCDField;
    dxComponentPrinterLink2: TcxPivotGridReportLink;
    SummaryCdsProdType: TStringField;
    Detail1CdsProdType: TStringField;
    cxDBPivotGrid1ProdType: TcxDBPivotGridField;
    cxDBPivotGrid2ProdType: TcxDBPivotGridField;
    Detail1CdsLength: TFloatField;
    Detail1CdsQty: TFloatField;
    SummaryCdsLength: TFloatField;
    SummaryCdsQty: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxMachineTypeLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure cxFilterJobButtonClick(Sender: TObject);
    procedure FilterJobs;
    function GetJobList: string;
    procedure cxDisplayButtonClick(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure ReportType1(x_option: integer);
    procedure ReportType2(x_option: integer);
    procedure Print1Click(Sender: TObject);
    procedure cxDBPivotGrid1ReelsCalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdMISForm: TProdMISForm;
  _ProdMISForm_Level: integer;

implementation

uses GeneralUt, ApexDataModuleFm;

{$R *.dfm}

procedure TProdMISForm.FormCreate(Sender: TObject);
begin
  ProdMISForm.Height := 650;
  ProdMISForm.Width := 950;

  AutoDateRange (Date(),1);

  ApexDataModule.MachineTypeCds.Close;
  ApexDataModule.MachineTypeCds.Open;

  SubstrateCds.Close;
  SubstrateCds.Open;

  Detail1Cds.Close;

  cxDBPivotGrid1.ApplyBestFit;
  cxDBPivotGrid2.ApplyBestFit;

end;

procedure TProdMISForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
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


procedure TProdMISForm.cxButton1Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(FromDateEdit.Text),-1),1);
end;

procedure TProdMISForm.cxButton2Click(Sender: TObject);
begin
  AutoDateRange (IncMonth(StrToDate(FromDateEdit.Text),1),1);
end;

procedure TProdMISForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TProdMISForm.FormDestroy(Sender: TObject);
begin
  ProdMISForm := nil;
end;

procedure TProdMISForm.cxButton8Click(Sender: TObject);
begin
  Close;
end;

procedure TProdMISForm.cxMachineTypeLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if Trim(cxMachineTypeLCMB.Text) > '' then
      cxMachineTypeCkb.Checked := True;
end;

procedure TProdMISForm.FilterJobs;
var
  x_filter: string;
begin

  if cxJobNoCkb.Checked then
    x_filter := ' AND (b.BatchCode = ''' + Trim(cxJobNoEdit.Text) + ''') ';

  x_filter := x_filter + ' AND (b.ToDate BETWEEN ''' +
      FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' AND '' ' +
      FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''') ';

  if cxActiveCkb.Checked then
    x_filter := x_filter + ' AND (Active = 1) ';

  if cxDescCkb.Checked then
    x_filter := x_filter + ' AND (js.JobSubstrate LIKE ''%' + Trim(cxDescEdit.Text) + '%'') ';

  if cxSubstrateCkb.Checked then
    x_filter := x_filter + ' AND (s.Substrate LIKE ''%' + Trim(cxSubstrateLCMB.Text) + '%'') ';

  BatchSds.Close;
  BatchSds.CommandText :=
    'SELECT b.Batches_id, b.BatchCode as JobNo, s.substrate, js.JobSubstrate ' +
    'FROM batches b LEFT JOIN JobSubstrates js ON b.JobSubstrates_id = js.JobSubstrates_id ' +
    'LEFT JOIN Substrates s ON js.Substrates_id = s.Substrates_id ' +
    'WHERE (1=1) ' + x_filter + ' ' +
    'ORDER BY JobNo ';
  BatchSds.Open;

  BatchCds.Close;
  BatchCds.Open;

end;


procedure TProdMISForm.cxFilterJobButtonClick(Sender: TObject);
begin
  FilterJobs;
end;

function TProdMISForm.GetJobList: string;
var
  x_JobString: string;
  i: Integer;
  RecIndex: Integer;
  x_Batch_id: integer;
begin

  x_JobString := '';

  try
    for i := 0 to cxJobGridTableView.DataController.GetSelectedCount - 1 do
      begin
        RecIndex := cxJobGridTableView.DataController.GetSelectedRowIndex(i);
        x_Batch_id := cxJobGridTableView.DataController.GetValue(RecIndex,0);

        if x_JobString > '' then
          x_JobString := x_JobString + ',';

        x_JobString := x_JobString + IntToStr(x_Batch_id)

      end;
  finally
  end;

  Result := x_JobString;

end;


procedure TProdMISForm.cxDisplayButtonClick(Sender: TObject);
begin

  if cxReportsCMB.ItemIndex = 0 then
    ReportType1(1)
  else if cxReportsCMB.ItemIndex = 1 then
    ReportType1(2)
  else if cxReportsCMB.ItemIndex = 2 then
    ReportType1(3)
  else if cxReportsCMB.ItemIndex = 3 then
    ReportType1(4)
  else if cxReportsCMB.ItemIndex = 4 then
    ReportType1(5)
  else if cxReportsCMB.ItemIndex = 5 then
    ReportType2(1)
  else if cxReportsCMB.ItemIndex = 6 then
    ReportType2(2)
  else if cxReportsCMB.ItemIndex = 7 then
    ReportType2(3)
  else if cxReportsCMB.ItemIndex = 8 then
    ReportType2(4)
  else if cxReportsCMB.ItemIndex = 9 then
    ReportType2(5)
  else if cxReportsCMB.ItemIndex = 10 then
    ReportType1(21)
  else if cxReportsCMB.ItemIndex = 11 then
    ReportType2(22);

end;

procedure TProdMISForm.SaveAsExcel1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      SaveDialog.FileName := 'C:\SummaryPivot.xls';

      if SaveDialog.Execute then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1, True, False);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      SaveDialog.FileName := 'C:\DetailsPivot.xls';
      if SaveDialog.Execute then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid2, True, False);
    end;

end;


procedure TProdMISForm.ReportType1(x_option: integer);
var
  x_MachineTypes_id: integer;
  x_GetJobs: string;
begin

  cxPageControl1.ActivePageIndex := 1;

  x_MachineTypes_id := 0;
  if cxMachineTypeCkb.Checked then
    x_MachineTypes_id := cxMachineTypeLCMB.EditValue;

  x_GetJobs := '';
  if cxFilterJobCkb.Checked = true then
    x_GetJobs := GetJobList;

  Detail1Sds.Close;
  Detail1Sds.CommandText := 'EXEC p_ProductionDetails ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''', ' +
    IntToStr(x_MachineTypes_id) + ',''' + x_GetJobs + ''', 1';
  Detail1Sds.Open;

  if x_option = 1 then
    begin
      Detail1Cds.Filtered := False;
    end
  else if x_option = 2 then
    begin
      Detail1Cds.Filter := 'GroupType = ''Prod'' ';
      Detail1Cds.Filtered := True;
    end
  else if x_option = 3 then
    begin
      Detail1Cds.Filter := 'GroupType = ''Waste'' ';
      Detail1Cds.Filtered := True;
    end
  else if x_option = 4 then
    begin
      Detail1Cds.Filter := 'GroupType = ''Adhesive'' ';
      Detail1Cds.Filtered := True;
    end
  else if x_option = 5 then
    begin
      Detail1Cds.Filter := 'GroupType = ''Time'' ';
      Detail1Cds.Filtered := True;
    end
  else if (x_option = 21) then
    begin
      Detail1Cds.Filter := 'GroupType = ''Waste'' ';
      Detail1Cds.Filtered := True;
    end;

  Detail1Cds.Close;

  // Rows
  cxDBPivotGrid2MachineType.Area := faRow;
  cxDBPivotGrid2MachineType.AreaIndex := 0;

  cxDBPivotGrid2Machine.Area := faRow;
  cxDBPivotGrid2Machine.AreaIndex := 1;

  cxDBPivotGrid2JobSubstrate.Area := faRow;
  cxDBPivotGrid2JobSubstrate.AreaIndex := 2;

  cxDBPivotGrid2Substrate.Area := faRow;
  cxDBPivotGrid2Substrate.AreaIndex := 3;

  cxDBPivotGrid2JobNo.Area := faRow;
  cxDBPivotGrid2JobNo.AreaIndex := 4;

  cxDBPivotGrid2ProdDate.Area := faRow;
  cxDBPivotGrid2ProdDate.AreaIndex := 5;

  cxDBPivotGrid2Shift.Area := faRow;
  cxDBPivotGrid2Shift.AreaIndex := 6;


  // Columns
  cxDBPivotGrid2GroupType.Area := faColumn;
  cxDBPivotGrid2GroupType.AreaIndex := 0;

  cxDBPivotGrid2SubGroupType.Area := faColumn;
  cxDBPivotGrid2SubGroupType.AreaIndex := 1;

  // Data
  if ((x_option = 1) or (x_option = 2)) then
    begin
      cxDBPivotGrid2Reels.Area := faData;
      cxDBPivotGrid2Reels.AreaIndex := 0;
      cxDBPivotGrid2Reels.Visible := True;

      cxDBPivotGrid2Length.Area := faData;
      cxDBPivotGrid2Length.AreaIndex := 1;
      cxDBPivotGrid2Length.Visible := True;

      cxDBPivotGrid2Qty.Area := faData;
      cxDBPivotGrid2Qty.AreaIndex := 2;
      cxDBPivotGrid2Qty.Visible := True;

      cxDBPivotGrid2WastageAmt.Area := faFilter;
      cxDBPivotGrid2WastageAmt.AreaIndex := 2;
      cxDBPivotGrid2WastageAmt.Visible := False;
      cxDBPivotGrid2WastageAmt.AllowedAreas := [];

    end
  else if (x_option = 21) then
    begin
      cxDBPivotGrid2Reels.Area := faData;
      cxDBPivotGrid2Reels.AreaIndex := 0;
      cxDBPivotGrid2Reels.Visible := False;

      cxDBPivotGrid2Length.Area := faData;
      cxDBPivotGrid2Length.AreaIndex := 1;
      cxDBPivotGrid2Length.Visible := False;

      cxDBPivotGrid2Qty.Area := faData;
      cxDBPivotGrid2Qty.AreaIndex := 2;
      cxDBPivotGrid2Qty.Visible := True;

      cxDBPivotGrid2WastageAmt.Area := faData;
      cxDBPivotGrid2WastageAmt.AreaIndex := 2;
      cxDBPivotGrid2WastageAmt.Visible := True;
      cxDBPivotGrid2WastageAmt.AllowedAreas := [faData, faFilter];

    end
  else
    begin
      cxDBPivotGrid2Reels.Area := faFilter;
      cxDBPivotGrid2Reels.AreaIndex := 0;
      cxDBPivotGrid2Reels.Visible := True;

      cxDBPivotGrid2Length.Area := faFilter;
      cxDBPivotGrid2Length.AreaIndex := 1;
      cxDBPivotGrid2Length.Visible := True;

      cxDBPivotGrid2Qty.Area := faData;
      cxDBPivotGrid2Qty.AreaIndex := 2;
      cxDBPivotGrid2Qty.Visible := True;

      cxDBPivotGrid2WastageAmt.Area := faData;
      cxDBPivotGrid2WastageAmt.AreaIndex := 2;
      cxDBPivotGrid2WastageAmt.Visible := False;
      cxDBPivotGrid2WastageAmt.AllowedAreas := [];

    end;

  cxDBPivotGrid2MachineType.Width := 90;
  cxDBPivotGrid2Machine.Width := 50;
  cxDBPivotGrid2JobSubstrate.Width := 130;
  cxDBPivotGrid2JobNo.Width := 50;
  cxDBPivotGrid2Substrate.Width := 50;
  cxDBPivotGrid2ProdDate.Width := 90;
  cxDBPivotGrid2Shift.Width := 40;

  cxDBPivotGrid2Title.Caption := 'Between ' +
    FormatDateTime('dd/mm/yyyy',StrToDate(FromDateEdit.Text)) + ' and ' +
    FormatDateTime('dd/mm/yyyy',StrToDate(ToDateEdit.Text));

  Detail1Cds.Open;

  cxDBPivotGrid2.ApplyBestFit;

end;

procedure TProdMISForm.ReportType2(x_option: integer);
var
  x_MachineTypes_id: integer;
  x_GetJobs: string;
begin

  cxPageControl1.ActivePageIndex := 0;

  x_MachineTypes_id := 0;
  if cxMachineTypeCkb.Checked then
    x_MachineTypes_id := cxMachineTypeLCMB.EditValue;

  x_GetJobs := '';
  if cxFilterJobCkb.Checked = true then
    x_GetJobs := GetJobList;

  SummarySds.Close;
  SummarySds.CommandText := 'EXEC p_ProductionDetails ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''',''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''', ' +
    IntToStr(x_MachineTypes_id) + ',''' + x_GetJobs + ''', 2';
  SummarySds.Open;

  if x_option = 1 then
    begin
      SummaryCds.Filtered := False;
    end
  else if x_option = 2 then
    begin
      SummaryCds.Filter := 'GroupType = ''Prod'' ';
      SummaryCds.Filtered := True;
    end
  else if x_option = 3 then
    begin
      SummaryCds.Filter := 'GroupType = ''Waste'' ';
      SummaryCds.Filtered := True;
    end
  else if x_option = 4 then
    begin
      SummaryCds.Filter := 'GroupType = ''Adhesive'' ';
      SummaryCds.Filtered := True;
    end
  else if x_option = 5 then
    begin
      SummaryCds.Filter := 'GroupType = ''Time'' ';
      SummaryCds.Filtered := True;
    end
  else if (x_option = 22) then
    begin
      SummaryCds.Filter := 'GroupType = ''Waste'' ';
      SummaryCds.Filtered := True;
    end;


  SummaryCds.Close;

  // Rows
  cxDBPivotGrid1MachineType.Area := faRow;
  cxDBPivotGrid1MachineType.AreaIndex := 0;

  cxDBPivotGrid1Machine.Area := faRow;
  cxDBPivotGrid1Machine.AreaIndex := 1;

  cxDBPivotGrid1JobSubstrate.Area := faRow;
  cxDBPivotGrid1JobSubstrate.AreaIndex := 2;

  cxDBPivotGrid1Substrate.Area := faRow;
  cxDBPivotGrid1Substrate.AreaIndex := 3;

  cxDBPivotGrid1JobNo.Area := faRow;
  cxDBPivotGrid1JobNo.AreaIndex := 4;

  // Columns
  cxDBPivotGrid1GroupType.Area := faColumn;
  cxDBPivotGrid1GroupType.AreaIndex := 0;

  cxDBPivotGrid1SubGroupType.Area := faColumn;
  cxDBPivotGrid1SubGroupType.AreaIndex := 1;

  // Data
  if ((x_option = 1) or (x_option = 2)) then
    begin
      cxDBPivotGrid1Reels.Area := faData;
      cxDBPivotGrid1Reels.AreaIndex := 0;
      cxDBPivotGrid1Reels.Visible := True;

      cxDBPivotGrid1Length.Area := faData;
      cxDBPivotGrid1Length.AreaIndex := 1;
      cxDBPivotGrid1Length.Visible := True;

      cxDBPivotGrid1Qty.Area := faData;
      cxDBPivotGrid1Qty.AreaIndex := 2;
      cxDBPivotGrid1Qty.Visible := True;

      cxDBPivotGrid1WastageAmt.Area := faFilter;
      cxDBPivotGrid1WastageAmt.AreaIndex := 3;
      cxDBPivotGrid1WastageAmt.Visible := False;
      cxDBPivotGrid1WastageAmt.AllowedAreas := [];

    end
  else if (x_option = 22) then
    begin
      cxDBPivotGrid1Reels.Area := faData;
      cxDBPivotGrid1Reels.AreaIndex := 0;
      cxDBPivotGrid1Reels.Visible := False;

      cxDBPivotGrid1Length.Area := faData;
      cxDBPivotGrid1Length.AreaIndex := 1;
      cxDBPivotGrid1Length.Visible := False;

      cxDBPivotGrid1Qty.Area := faData;
      cxDBPivotGrid1Qty.AreaIndex := 2;
      cxDBPivotGrid1Qty.Visible := True;

      cxDBPivotGrid1WastageAmt.Area := faData;
      cxDBPivotGrid1WastageAmt.AreaIndex := 2;
      cxDBPivotGrid1WastageAmt.Visible := True;
      cxDBPivotGrid1WastageAmt.AllowedAreas := [faData, faFilter];

    end
  else
    begin
      cxDBPivotGrid1Reels.Area := faFilter;
      cxDBPivotGrid1Reels.AreaIndex := 0;
      cxDBPivotGrid1Reels.Visible := True;

      cxDBPivotGrid1Length.Area := faFilter;
      cxDBPivotGrid1Length.AreaIndex := 1;
      cxDBPivotGrid1Length.Visible := True;

      cxDBPivotGrid1Qty.Area := faData;
      cxDBPivotGrid1Qty.AreaIndex := 2;
      cxDBPivotGrid1Qty.Visible := True;

      cxDBPivotGrid1WastageAmt.Area := faFilter;
      cxDBPivotGrid1WastageAmt.AreaIndex := 3;
      cxDBPivotGrid1WastageAmt.Visible := False;
      cxDBPivotGrid1WastageAmt.AllowedAreas := [];
    end;

  cxDBPivotGrid1MachineType.Width := 90;
  cxDBPivotGrid1Machine.Width := 50;
  cxDBPivotGrid1JobSubstrate.Width := 130;
  cxDBPivotGrid1JobNo.Width := 50;
  cxDBPivotGrid1Substrate.Width := 50;

  cxDBPivotGrid1Title.Caption := 'Between ' +
    FormatDateTime('dd/mm/yyyy',StrToDate(FromDateEdit.Text)) + ' and ' +
    FormatDateTime('dd/mm/yyyy',StrToDate(ToDateEdit.Text));

  SummaryCds.Open;

  cxDBPivotGrid1.ApplyBestFit;  

end;



procedure TProdMISForm.Print1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      dxComponentPrinterLink1.ReportTitle.Text := cxDBPivotGrid1Title.Caption;
      dxComponentPrinter.CurrentLink := dxComponentPrinterLink1;
      dxComponentPrinter.Preview(True,nil);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      dxComponentPrinterLink2.ReportTitle.Text := cxDBPivotGrid2Title.Caption;
      dxComponentPrinter.CurrentLink := dxComponentPrinterLink2;
      dxComponentPrinter.Preview(True,nil);
    end;

end;

procedure TProdMISForm.cxDBPivotGrid1ReelsCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
var
  AOrderCount: integer;
  AGroup: string;
  i: integer;
  ARow, AColumn: TcxPivotGridGroupItem;
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

end.
