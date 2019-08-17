unit ToDoFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr,
  Menus, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, StdCtrls, cxButtons, Mask, cxDBLookupComboBox,
  dxPScxCommon, dxPScxGrid6Lnk, cxContainer, cxGroupBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox;

type
  TToDoForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ToDoReqSds: TSQLDataSet;
    ToDoReqDsp: TDataSetProvider;
    ToDoReqCds: TClientDataSet;
    ToDoReqDs: TDataSource;
    cxButton1: TcxButton;
    PopupMenu2: TPopupMenu;
    SaveAsExcel1: TMenuItem;
    N1: TMenuItem;
    Print1: TMenuItem;
    SaveDialog: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ToDoReqCdsToDo_id: TIntegerField;
    ToDoReqCdsFromUsers_id: TIntegerField;
    ToDoReqCdsToUsers_id: TIntegerField;
    ToDoReqCdsRemarks: TStringField;
    ToDoReqCdsDueDate: TSQLTimeStampField;
    cxButton5: TcxButton;
    ToDoReqCdsStatusLabel: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    ToDoReqCdsStatus: TBooleanField;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxGridReportLink;
    cxGroupBox1: TcxGroupBox;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridDBTableView1ToDo_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromUsers_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToUsers_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Remarks: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DueDate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Status: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1StatusLabel: TcxGridDBColumn;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ToDoReqCdsConfirmed: TBooleanField;
    CustomMasterCxGridDBTableView1Confirmed: TcxGridDBColumn;
    cxGridDBTableView1FromUsers_id: TcxGridDBColumn;
    cxGridDBTableView1Remarks: TcxGridDBColumn;
    cxGridDBTableView1DueDate: TcxGridDBColumn;
    cxGridDBTableView1StatusLabel: TcxGridDBColumn;
    cxGridDBTableView1Status: TcxGridDBColumn;
    cxGridDBTableView1Confirmed: TcxGridDBColumn;
    cxGridDBTableView1ToDo_id: TcxGridDBColumn;
    ToDoPendSds: TSQLDataSet;
    ToDoPendDsp: TDataSetProvider;
    ToDoPendCds: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    ToDoPendDs: TDataSource;
    FromDateEdit: TcxDateEdit;
    ToDateEdit: TcxDateEdit;
    cxStyleBlue: TcxStyle;
    Shape6: TShape;
    Shape7: TShape;
    Shape2: TShape;
    DataSource1: TDataSource;
    Shape4: TShape;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FilterData;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure AutoDateRange (x_Date: TDateTime; x_option: integer);
    procedure FormCreate(Sender: TObject);
    procedure ToDoReqCdsBeforePost(DataSet: TDataSet);
    procedure ToDoReqCdsAfterPost(DataSet: TDataSet);
    procedure ToDoReqCdsAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ToDoReqCdsBeforeInsert(DataSet: TDataSet);
    procedure ToDoReqCdsBeforeEdit(DataSet: TDataSet);
    procedure ToDoReqCdsBeforeDelete(DataSet: TDataSet);
    procedure CustomMasterCxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure SetReqColumnRights;
    procedure SetPendColumnRights;    
    procedure FormActivate(Sender: TObject);
    procedure ToDoReqCdsCalcFields(DataSet: TDataSet);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FromDateEditEit(Sender: TObject);
    procedure ToDoPendCdsBeforeEdit(DataSet: TDataSet);
    procedure cxGridDBTableView1StatusPropertiesEditValueChanged(
      Sender: TObject);
    procedure CustomMasterCxGridDBTableView1ConfirmedPropertiesEditValueChanged(
      Sender: TObject);
    procedure CustomMasterCxGridDBTableView1StatusPropertiesEditValueChanged(
      Sender: TObject);
    procedure ToDoPendCdsAfterPost(DataSet: TDataSet);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ToDoPendCdsBeforeDelete(DataSet: TDataSet);
    procedure FromDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure ToDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure ToDoReqCdsAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToDoForm: TToDoForm;
  _ToDoForm_Level, AdmLevel : Integer;
  MasterCdsName, MasterKeyField: string;
  Tbl_State :TDataSetState;

implementation

uses GeneralUt, BackOfficeDM, MainFm, DateUtils;

{$R *.dfm}

procedure TToDoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TToDoForm.FormDestroy(Sender: TObject);
begin
  ToDoForm := Nil;
end;

procedure TToDoForm.cxButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TToDoForm.cxButton4Click(Sender: TObject);
begin
  FilterData;
end;

procedure TToDoForm.FilterData ;
var
  x_FromDate, x_ToDate: TDateTime;
  x_FromDate_str, x_ToDate_str: string;
begin

  if (trim(FromDateEdit.Text) = '') or (trim(ToDateEdit.Text) = '') then
    exit;

  try
    x_FromDate := StrToDate(FromDateEdit.Text);
    x_ToDate := StrToDate(ToDateEdit.Text);
    x_FromDate_str := FormatDateTime('mm/dd/yyyy',x_FromDate);
    x_ToDate_str := FormatDateTime('mm/dd/yyyy',x_ToDate);
  except
    exit;
  end;

  ToDoReqCds.Active := False;
  ToDoReqCds.Filter := 'FromUsers_id = ' + IntToStr(g_Users_id) + ' ' +
                       'AND ((DueDate >= '''+ FormatDateTime('dd/mm/yyyy',x_FromDate) + ''' ' +
                       'AND DueDate <= '''+ FormatDateTime('dd/mm/yyyy',x_ToDate) + ''') ' +
                       'OR (Confirmed = False)) ';

  ToDoReqCds.Filtered := True;
  ToDoReqCds.Active := True;

  ToDoPendCds.Active := False;
  ToDoPendCds.Filter := 'ToUsers_id = ' + IntToStr(g_Users_id) + ' ' +
                       'AND ((DueDate >= '''+ FormatDateTime('dd/mm/yyyy',x_FromDate) + ''' ' +
                       'AND DueDate <= '''+ FormatDateTime('dd/mm/yyyy',x_ToDate) + ''') ' +
                       'OR (Confirmed = False)) ';

  ToDoPendCds.Filtered := True;
  ToDoPendCds.Active := True;

end;


procedure TToDoForm.cxButton2Click(Sender: TObject);
begin
  ToDateEdit.Date := IncMonth(ToDateEdit.Date,-1);
  
  if ToDateEdit.Date < FromDateEdit.Date then
    ToDateEdit.Date := IncMonth(FromDateEdit.Date,1);
end;

procedure TToDoForm.cxButton3Click(Sender: TObject);
begin
  ToDateEdit.Date := IncMonth(ToDateEdit.Date,1);
end;

procedure TToDoForm.AutoDateRange (x_Date: TDateTime; x_option: integer);
//var
//  x_Day, x_Month, x_Year : Word;
begin

  ToDateEdit.Date  :=  IncMonth(x_date);

{
  DecodeDate(x_Date, x_Year, x_Month, x_Day );

  if x_Month = 12 then
    begin
      x_Year := x_Year + 1;
      x_Month := 1;
    end
  else
    x_Month := x_Month + 1;

  if x_option = 1 then
    begin
      //FromDateEdit.Date := x_Date;
      ToDateEdit.Date  :=  EncodeDate(x_Year, x_Month, x_Day);
    end;
}    
end;

procedure TToDoForm.FormCreate(Sender: TObject);
var
  x_date: TDateTime;
begin

  x_date := Date();

  AutoDateRange (x_date,1);
  MasterCdsName := 'ToDo';
  MasterKeyField := 'ToDo_id';
  AdmLevel := _ToDoForm_Level;

  UsersCds.Active := False;
  UsersCds.Active := True;

  FromDateEdit.Date := Date;
  ToDateEdit.Date := IncMonth(FromDateEdit.Date,1);

  FilterData;

end;

procedure TToDoForm.ToDoReqCdsBeforePost(DataSet: TDataSet);
begin

  if ToDoReqCds['DueDate'] = null then
    raise Exception.Create('Please enter the Due Date');

  Tbl_State := ToDoReqCds.State;

  if ToDoReqCds.State = dsInsert then
    ToDoReqCds[MasterKeyField] := GetNextId(MasterCdsName,MasterKeyField);

end;

procedure TToDoForm.ToDoReqCdsAfterPost(DataSet: TDataSet);
begin
  ToDoReqCds.ApplyUpdates(0);
end;

procedure TToDoForm.ToDoReqCdsAfterInsert(DataSet: TDataSet);
begin
  ToDoReqCds['FromUsers_id'] := g_users_id;
  ToDoReqCds['Status'] := 0;
  ToDoReqCds['Confirmed'] := 0;

end;

procedure TToDoForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  if ToDoReqCds.State in [dsInsert, dsEdit] then
    ToDoReqCds.Post;

  if ToDoPendCds.State in [dsInsert, dsEdit] then
    ToDoPendCds.Post;

end;

procedure TToDoForm.ToDoReqCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TToDoForm.ToDoReqCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TToDoForm.SetReqColumnRights;
begin
{
  if ToDoReqCds['FromUsers_id'] =  g_users_id then
    begin
      if (CustomMasterCxGridDBTableView1Status.Focused) then
        abort;
    end
  else if ToDoReqCds['FromUsers_id'] <> g_users_id then
    begin
      if ((CustomMasterCxGridDBTableView1ToUsers_id.Focused) or
         (CustomMasterCxGridDBTableView1Remarks.Focused) or
         (CustomMasterCxGridDBTableView1DueDate.Focused) or
         (CustomMasterCxGridDBTableView1Confirmed.Focused ))  then
        abort;
    end;
}

end;

procedure TToDoForm.SetPendColumnRights;
begin
{
  if ToDoReqCds['FromUsers_id'] = g_users_id then
    begin
      if ((cxGridDBTableView1FromUsers_id.Focused) or
         (cxGridDBTableView1Remarks.Focused) or
         (cxGridDBTableView1DueDate.Focused) or
         (cxGridDBTableView1Confirmed.Focused ))  then
        abort;
    end
  else if ToDoReqCds['FromUsers_id'] <> g_users_id then
    begin
      if (cxGridDBTableView1Status.Focused) then
        abort;

    end;
}

end;

procedure TToDoForm.ToDoReqCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if ToDoReqCds['Confirmed'] = true then
    raise exception.Create('Cannot delete after confirmation');

end;

procedure TToDoForm.CustomMasterCxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnStatus, AColumnDueDate, AColumnConfirmed : TcxCustomGridTableItem;

begin
  AColumnStatus := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');
  AColumnDueDate := (Sender as TcxGridDBTableView).GetColumnByFieldName('DueDate');
  AColumnConfirmed := (Sender as TcxGridDBTableView).GetColumnByFieldName('Confirmed');

  if (ARecord.Values[AColumnConfirmed.Index] = True) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnStatus.Index] = False) and (ARecord.Values[AColumnDueDate.Index] < Date)  then
    AStyle := cxStyleRed
  else if (ARecord.Values[AColumnStatus.Index] = False) and (ARecord.Values[AColumnDueDate.Index] >= Date)  then
    AStyle := cxStyleYellow
  else if (ARecord.Values[AColumnStatus.Index] = True) and (ARecord.Values[AColumnConfirmed.Index] = False) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleBlue;

end;


procedure TToDoForm.FormActivate(Sender: TObject);
begin

  MasterCdsName := 'ToDo';
  MasterKeyField := 'ToDo_id';
  AdmLevel := _ToDoForm_Level;

  UsersCds.Active := False;
  UsersCds.Active := True;

end;

procedure TToDoForm.ToDoReqCdsCalcFields(DataSet: TDataSet);
begin
  if ToDoReqCds['Status'] = 1  then
    ToDoReqCds['StatusLabel'] := 'Action Completed'
  else if (ToDoReqCds['Status'] = 0) AND (ToDoReqCds['DueDate'] < FromDateEdit.Text) then
    ToDoReqCds['StatusLabel'] := 'Over Due'
  else if (ToDoReqCds['Status'] = 0) AND (ToDoReqCds['DueDate'] >= FromDateEdit.Text) then
    ToDoReqCds['StatusLabel'] := 'Action in Process';
end;

procedure TToDoForm.SaveAsExcel1Click(Sender: TObject);
var
  x_ReportDir: String;
begin
  SaveDialog.Filter := '.xls';
  x_ReportDir := g_ReportDir + '\ToDo Folder';
  if not DirectoryExists(x_ReportDir) then
    CreateDir(x_ReportDir);

  SaveDialog.FileName := x_ReportDir + '\ToDo List.xls';
  SaveDialog.InitialDir :=  ExtractFilePath(x_ReportDir);

  if SaveDialog.Execute then
    ExportGrid4ToExcel_BW_NoBand(SaveDialog.FileName, CustomMasterCxGrid, True, True, False, CustomMasterCxGridDBTableView1)

end;

procedure TToDoForm.Print1Click(Sender: TObject);
begin
  dxComponentPrinter.CurrentLink.Component := CustomMasterCxGrid;
  dxComponentPrinter.CurrentLink.ReportTitle.Text := ' ToDo List' ;
  dxComponentPrinter.Preview(True,nil);

end;

procedure TToDoForm.FromDateEditEit(Sender: TObject);
begin
  try
    AutoDateRange (strtodate(FromDateEdit.Text), 1);
  except
    ShowMessage('Invalid Date');
  end;

end;

procedure TToDoForm.ToDoPendCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TToDoForm.cxGridDBTableView1StatusPropertiesEditValueChanged(
  Sender: TObject);
begin
//  ToDoPendCds.Post;
end;

procedure TToDoForm.CustomMasterCxGridDBTableView1ConfirmedPropertiesEditValueChanged(
  Sender: TObject);
begin
//  ToDoReqCds.Post;
end;

procedure TToDoForm.CustomMasterCxGridDBTableView1StatusPropertiesEditValueChanged(
  Sender: TObject);
begin
//  ToDoReqCds.Post;
end;

procedure TToDoForm.ToDoPendCdsAfterPost(DataSet: TDataSet);
begin
  ToDoPendCds.ApplyUpdates(0);
end;

procedure TToDoForm.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnStatus, AColumnDueDate, AColumnConfirmed : TcxCustomGridTableItem;

begin

  AColumnStatus := (Sender as TcxGridDBTableView).GetColumnByFieldName('Status');
  AColumnDueDate := (Sender as TcxGridDBTableView).GetColumnByFieldName('DueDate');
  AColumnConfirmed := (Sender as TcxGridDBTableView).GetColumnByFieldName('Confirmed');

  if (ARecord.Values[AColumnConfirmed.Index] = True) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnStatus.Index] = False) and (ARecord.Values[AColumnDueDate.Index] < Date)  then
    AStyle := cxStyleRed
  else if (ARecord.Values[AColumnStatus.Index] = False) and (ARecord.Values[AColumnDueDate.Index] >= Date)  then
    AStyle := cxStyleYellow
  else if (ARecord.Values[AColumnStatus.Index] = True) and (ARecord.Values[AColumnConfirmed.Index] = False) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleBlue;

end;

procedure TToDoForm.ToDoPendCdsBeforeDelete(DataSet: TDataSet);
begin
  raise exception.create ('Cannot delete');
end;

procedure TToDoForm.FromDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TToDoForm.ToDateEditPropertiesEditValueChanged(Sender: TObject);
begin
  FilterData;
end;

procedure TToDoForm.ToDoReqCdsAfterDelete(DataSet: TDataSet);
begin
  ToDoReqCds.ApplyUpdates(0);
end;

end.

