unit MasterDepDatesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBLookupComboBox,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  cxSplitter, StdCtrls, Buttons, ComCtrls, cxContainer, cxGroupBox,
  cxRadioGroup, ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, DBCtrls,
  cxLookAndFeelPainters, cxButtons, DateUtils, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, dxSkinscxPCPainter;

type
  TMasterDepDatesForm = class(TForm)
    Panel1: TPanel;
    cxRadioGroup: TcxRadioGroup;
    cxActiveCheckBox: TcxCheckBox;
    MonthCalendar1: TMonthCalendar;
    Panel2: TPanel;
    cxSplitter1: TcxSplitter;
    ToursPC: TcxPageControl;
    MasterTabSheet: TcxTabSheet;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    TourTabSheet: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MasterDepDatesSds: TSQLDataSet;
    MasterDepDatesDsp: TDataSetProvider;
    MasterDepDatesDS: TDataSource;
    MasterDepDatesCds: TClientDataSet;
    MasterDepDatesCdsmasterdeparturedates_id: TIntegerField;
    MasterDepDatesCdstourdate: TSQLTimeStampField;
    MasterDepDatesCdsreturndate: TSQLTimeStampField;
    MasterDepDatesCdstourno: TIntegerField;
    MasterDepDatesCdsmasters_id: TIntegerField;
    MasterDepDatesCdslocalpayment: TFMTBCDField;
    CustomMasterCxGridDBTableView1tourdate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tourno: TcxGridDBColumn;
    TourDepDatesSds: TSQLDataSet;
    TourDepDatesDsp: TDataSetProvider;
    TourDepDatesDS: TDataSource;
    TourDepDatesCds: TClientDataSet;
    TourDepDatesCdstourdeparturedates_id: TIntegerField;
    TourDepDatesCdstourdate: TSQLTimeStampField;
    TourDepDatesCdsreturndate: TSQLTimeStampField;
    TourDepDatesCdstourref: TIntegerField;
    TourDepDatesCdstourcodes_id: TIntegerField;
    TourDepDatesCdsprice: TBCDField;
    TourDepDatesCdssinglesupplement: TBCDField;
    TourDepDatesCdsfair: TBooleanField;
    TourDepDatesCdsLocalPayment: TFMTBCDField;
    cxGridDBTableView1tourdate: TcxGridDBColumn;
    cxGridDBTableView1returndate: TcxGridDBColumn;
    cxGridDBTableView1tourref: TcxGridDBColumn;
    cxGridDBTableView1price: TcxGridDBColumn;
    cxGridDBTableView1singlesupplement: TcxGridDBColumn;
    cxGridDBTableView1fair: TcxGridDBColumn;
    cxGridDBTableView1LocalPayment: TcxGridDBColumn;
    SelectTourGB: TcxGroupBox;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeDS: TDataSource;
    MasterCodeCds: TClientDataSet;
    MasterCodeCdsmasters_id: TIntegerField;
    MasterCodeCdsmastercode: TStringField;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeDS: TDataSource;
    TourCodeCds: TClientDataSet;
    TourCodeCdstourcodes_id: TIntegerField;
    TourCodeCdstourcode: TStringField;
    MasterCodeDBLcmb: TDBLookupComboBox;
    TourCodeDBLcmb: TDBLookupComboBox;
    cxButton4: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterDepDatesCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterDepDatesCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterDepDatesCdsBeforeInsert(DataSet: TDataSet);
    procedure TourDepDatesCdsBeforeInsert(DataSet: TDataSet);
    procedure TourDepDatesCdsBeforeEdit(DataSet: TDataSet);
    procedure TourDepDatesCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterDepDatesCdsAfterPost(DataSet: TDataSet);
    procedure TourDepDatesCdsAfterPost(DataSet: TDataSet);
    procedure MasterDepDatesCdsBeforePost(DataSet: TDataSet);
    procedure TourDepDatesCdsBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TourDepDatesCdsAfterInsert(DataSet: TDataSet);
    procedure ToursPCChange(Sender: TObject);
    procedure FilterMasterTours;
    function IsMasterDepDateDuplicate: Boolean;
    function IsTourDepDateDuplicate: Boolean;
    procedure cxRadioGroupPropertiesChange(Sender: TObject);
    procedure cxActiveCheckBoxPropertiesChange(Sender: TObject);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterDepDatesCdsAfterInsert(DataSet: TDataSet);
    function GetnextTourNumber: integer;
    function GetNextTourRef: integer;
    procedure cxButton4Click(Sender: TObject);
    procedure TourDepDatesCdstourdateChange(Sender: TField);
    function GetDays: integer;
    procedure cxRadioGroupPropertiesEditValueChanged(Sender: TObject);
    procedure cxRadioGroupClick(Sender: TObject);
    procedure MasterDepDatesCdsAfterDelete(DataSet: TDataSet);
    procedure TourDepDatesCdsAfterDelete(DataSet: TDataSet);
    function GetPrevLocalPayment: double;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterDepDatesForm: TMasterDepDatesForm;
  _MasterDepDatesForm_Level: integer;

  MasterDepDatesCds_State :TDataSetState;
  MasterDepDatesCds_Name: string;
  MasterDepDatesKeyField: string;
  MasterDepDatesKeyFieldValue: Integer;
  LocateKeyId: Integer;

  TourDepDatesCds_State :TDataSetState;
  TourDepDatesCds_Name: string;
  TourDepDatesKeyField: string;
  TourDepDatesKeyFieldValue: Integer;
  LocateKeyId_t: Integer;

implementation

uses MasterTourFm, GeneralUt, BackOfficeDM;

var
  AdmLevel: Integer;

{$R *.dfm}

procedure TMasterDepDatesForm.FormCreate(Sender: TObject);
begin

  Self.Width := 970;
  Self.Height := 640;
  Self.Top := 2;
  Self.Left := 20;

  MonthCalendar1.Date := Date;

  if MasterTourForm.ToursPC.ActivePage = MasterTourForm.MasterTabSheet then
    ToursPC.ActivePage := MasterTabSheet
  else
    ToursPC.ActivePage := TourTabSheet;

  ToursPCChange(nil);

  TourCodeDBLcmb.Top := MasterCodeDBLcmb.Top;

  cxRadioGroup.ItemIndex := MasterTourForm.cxRadioGroup.ItemIndex;

  FilterMasterTours;
  //MasterTourCds.Active := True;

  MasterCodeSds.Active := True;
  MasterCodeCds.Active := True;

  TourCodeSds.Active := True;
  TourCodeCds.Active := True;

  if MasterTourForm.MasterTourCds['Masters_id'] <> null then
    MasterCodeCds.Locate('Masters_id', MasterTourForm.MasterTourCds['Masters_id'],[]);

  if MasterTourForm.TourCds['TourCodes_id'] <> null then
    TourCodeCds.Locate('TourCodes_id', MasterTourForm.TourCds['TourCodes_id'],[]);

  MasterCodeDBLcmb.KeyValue := MasterCodeCds['masters_id'];
  TourCodeDBLcmb.KeyValue := TourCodeCds['TourCodes_id'];

  MasterDepDatesCds_Name := 'MasterDepartureDates';
  MasterDepDatesKeyField := 'MasterDepartureDates_id';

  TourDepDatesCds_Name := 'TourDepartureDates';
  TourDepDatesKeyField := 'TourDepartureDates_id';

  AdmLevel := _MasterDepDatesForm_Level;

end;

procedure TMasterDepDatesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMasterDepDatesForm.FormDestroy(Sender: TObject);
begin
   MasterDepDatesForm := nil;
end;

procedure TMasterDepDatesForm.MasterDepDatesCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterDepDatesForm.MasterDepDatesCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterDepDatesForm.MasterDepDatesCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterDepDatesForm.TourDepDatesCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterDepDatesForm.TourDepDatesCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterDepDatesForm.TourDepDatesCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterDepDatesForm.MasterDepDatesCdsAfterPost(
  DataSet: TDataSet);
begin
  MasterDepDatesCds.ApplyUpdates(0);
  //MasterDepDatesCds.Refresh;

end;

procedure TMasterDepDatesForm.TourDepDatesCdsAfterPost(DataSet: TDataSet);
begin
  TourDepDatesCds.ApplyUpdates(0);
  //TourDepDatesCds.Refresh;
end;

procedure TMasterDepDatesForm.MasterDepDatesCdsBeforePost(
  DataSet: TDataSet);
begin

  if (MasterDepDatesCds['TourDate'] = null) then
    raise exception.create ('Please enter the Start Date');

  //if (MasterDepDatesCds['ReturnDate'] = null) then
  //  raise exception.create ('Please enter the End Date');

  if (MasterDepDatesCds['TourNo'] = null) or (Trim(MasterDepDatesCds['TourNo']) = '')then
    raise exception.create ('Please enter the Tour Number');

  if (MasterDepDatesCds['Masters_id'] = null) then
    raise exception.create ('Please select a Master Code');

  if (IsMasterDepDateDuplicate) then
    raise exception.create ('Duplicate Master Date found');

  MasterDepDatesCds_State := MasterDepDatesCds.State;

  if MasterDepDatesCds.State = dsInsert then
    MasterDepDatesCds[MasterDepDatesKeyField] := GetNextId(MasterDepDatesCds_Name,MasterDepDatesKeyField);

  LocateKeyId := MasterDepDatesCds[MasterDepDatesKeyField];


end;

procedure TMasterDepDatesForm.TourDepDatesCdsBeforePost(DataSet: TDataSet);
begin

  if (TourDepDatesCds['TourDate'] = null) then
    raise exception.create ('Please enter the Start Date');

  if (TourDepDatesCds['ReturnDate'] = null) then
    raise exception.create ('Please enter the End Date');

  if (TourDepDatesCds['TourRef'] = null) or (Trim(TourDepDatesCds['TourRef']) = '')then
    raise exception.create ('Please enter the Tour Number');

  if (TourDepDatesCds['TourCodes_id'] = null) then
    raise exception.create ('Please select a Tour Code');

  if (TourDepDatesCds['Price'] = null) then
    TourDepDatesCds['Price'] := 0;

  if (TourDepDatesCds['SingleSupplement'] = null) then
    TourDepDatesCds['SingleSupplement'] := 0;

  if (TourDepDatesCds['Fair'] = null) then
    TourDepDatesCds['Fair'] := False;

  if (TourDepDatesCds['LocalPayment'] = null) then
    TourDepDatesCds['LocalPayment'] := 0;

  if (IsTourDepDateDuplicate) then
    raise exception.create ('Duplicate Tour Date found');

  TourDepDatesCds_State := TourDepDatesCds.State;

  if TourDepDatesCds.State = dsInsert then
    TourDepDatesCds[TourDepDatesKeyField] := GetNextId(TourDepDatesCds_Name,TourDepDatesKeyField);

  LocateKeyId_t := TourDepDatesCds[TourDepDatesKeyField];


end;

procedure TMasterDepDatesForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if MasterDepDatesCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master departure date record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TourDepDatesCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tour departure date record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;

end;

procedure TMasterDepDatesForm.TourDepDatesCdsAfterInsert(
  DataSet: TDataSet);
begin

  TourDepDatesCds['Price'] := 0.0;
  TourDepDatesCds['SingleSupplement'] := 0.0;
  TourDepDatesCds['Fair'] := False;
  TourDepDatesCds['LocalPayment'] := 0.0;

  TourDepDatesCds['TourRef'] := GetNextTourRef;

  TourDepDatesCds['LocalPayment'] := GetPrevLocalPayment;

end;

function TMasterDepDatesForm.GetPrevLocalPayment: double;
var
  QueryString: string;
  x_PrevLocalPayment: double;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT TourDepartureDates_id, LocalPayment FROM TourDepartureDates ' +
    'WHERE TourCodes_id = ' + IntToStr(TourCodeDBLcmb.KeyValue) + ' ' +
    'ORDER BY TourDate DESC';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_PrevLocalPayment := 0.0;
  if (not GpSds.EOF) and (GpSds['LocalPayment'] <> null) then
    x_PrevLocalPayment := GpSds['LocalPayment'];

  GpSds.Free;

  Result := x_PrevLocalPayment;

end;


function TMasterDepDatesForm.IsMasterDepDateDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterDepartureDates ' +
    'WHERE TourDate = ''' + FormatDateTime('mm/dd/yyyy',MasterDepDatesCds['TourDate']) + ''' ' +
    'AND Masters_id = ' + IntToStr(MasterDepDatesCds['Masters_id']);

  if MasterDepDatesCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterDepartureDates_id <> ' + IntToStr(MasterDepDatesCds['MasterDepartureDates_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

function TMasterDepDatesForm.IsTourDepDateDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TourDepartureDates ' +
    'WHERE TourDate = ''' + FormatDateTime('mm/dd/yyyy',TourDepDatesCds['TourDate']) + ''' ' +
    'AND TourCodes_id = ' + IntToStr(TourDepDatesCds['TourCodes_id']);

  if TourDepDatesCds.State = dsEdit then
    QueryString := QueryString + ' AND (TourDepartureDates_id <> ' + IntToStr(TourDepDatesCds['TourDepartureDates_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

procedure TMasterDepDatesForm.FilterMasterTours;
var
  FilterString: string;
  x_MasterDepartureDates_id, x_TourDepartureDates_id: integer;
  x_Masters_id, x_TourCodes_id: integer;
begin

  FilterString := ' WHERE (1=1) ';

  if cxRadioGroup.ItemIndex = 0 then
    FilterString := FilterString + ' AND (TailorMade = 0) '
  else if cxRadioGroup.ItemIndex = 1 then
    FilterString := FilterString + ' AND (TailorMade = 1) ';

  if cxActiveCheckBox.Checked = True then
    FilterString := FilterString + ' AND (Active = 1) '
  else
    FilterString := FilterString + ' AND (Active = 0) ';

  x_MasterDepartureDates_id := 0;
  x_TourDepartureDates_id := 0;

  if MasterDepDatesCds['MasterDepartureDates_id'] <> null then
    x_MasterDepartureDates_id := MasterDepDatesCds['MasterDepartureDates_id'];

  if TourDepDatesCds['TourDepartureDates_id'] <> null then
    x_TourDepartureDates_id := TourDepDatesCds['TourDepartureDates_id'];

  x_Masters_id := 0;
  x_TourCodes_id := 0;

  if MasterCodeCds['Masters_id'] <> null then
    x_Masters_id := MasterCodeCds['Masters_id'];

  if TourCodeCds['TourCodes_id'] <> null then
    x_TourCodes_id := TourCodeCds['TourCodes_id'];

  MasterCodeCds.Active := False;;
  TourCodeCds.Active := False;

  MasterCodeSds.Active := False;;
  TourCodeSds.Active := False;

  MasterCodeSds.CommandText := 'select masters_id, mastercode from masters ' +
    FilterString + ' order by mastercode';

  TourCodeSds.CommandText := 'select tourcodes_id, tourcode from tourcodes ' +
    FilterString + ' order by tourcode';

  MasterCodeCds.Active := True;
  MasterCodeCds.First;
  MasterCodeCds.Locate('Masters_id', x_masters_id, []);

  TourCodeCds.Active := True;
  TourCodeCds.First;
  TourCodeCds.Locate('TourCodes_id', x_TourCodes_id, []);

  MasterDepDatesCds.Active := False;
  MasterDepDatesCds.Active := True;
  if x_masterDepartureDates_id > 0 then
    MasterDepDatesCds.Locate('MasterDepartureDates_id', x_masterDepartureDates_id, []);

  TourDepDatesCds.Active := False;
  TourDepDatesCds.Active := True;
  if x_TourDepartureDates_id > 0 then
    TourDepDatesCds.Locate('TourDepartureDates_id', x_TourDepartureDates_id, []);

  MasterCodeDBLcmb.KeyValue := MasterCodeCds['masters_id'];
  TourCodeDBLcmb.KeyValue := TourCodeCds['TourCodes_id'];

end;



procedure TMasterDepDatesForm.ToursPCChange(Sender: TObject);
begin

  if ToursPC.ActivePage = MasterTabSheet then
    begin
      TourCodeDBLcmb.Visible := False;
      MasterCodeDBLcmb.Visible := True;
    end
  else
    begin
      TourCodeDBLcmb.Visible := True;
      MasterCodeDBLcmb.Visible := False;
    end;

  FilterMasterTours;

end;

procedure TMasterDepDatesForm.cxRadioGroupPropertiesChange(
  Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterDepDatesForm.cxActiveCheckBoxPropertiesChange(
  Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterDepDatesForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  if MasterDepDatesCds.EOF then
    MasterDepDatesCds.Insert;
end;

procedure TMasterDepDatesForm.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if TourDepDatesCds.EOF then
    TourDepDatesCds.Insert;

end;

procedure TMasterDepDatesForm.MasterDepDatesCdsAfterInsert(
  DataSet: TDataSet);
begin
  MasterDepDatesCds['TourNo'] := GetNextTourNumber;
end;

function TMasterDepDatesForm.GetnextTourNumber: integer;
var
  QueryString: string;
  x_MaxTourNo: integer;
  x_MaxDate: TDateTime;
  GpSds: TSQLDataSet;
begin

  if MasterDepDatesCds['masters_id'] = null then
    begin
      Result := 0;
      exit;
    end;


  QueryString := 'SELECT MAX(TourDate) As MaxDate FROM MasterDepartureDates ' +
    'WHERE Masters_id = ' + IntToStr(MasterDepDatesCds['masters_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_MaxTourNo := 1;

  if (not GpSds.EOF) and (GpSds['MaxDate'] <> null) then
    begin
      x_MaxDate := GpSds['MaxDate'];

      QueryString := 'SELECT MAX(TourNo) As MaxTourNo FROM MasterDepartureDates ' +
        'WHERE Masters_id = ' + IntToStr(MasterDepDatesCds['masters_id']) + ' ' +
        'AND TourDate = ''' + FormatDateTime('mm/dd/yyyy',x_MaxDate) + '''';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['MaxTourNo'] <> null) then
        x_maxTourNo := GpSds['MaxTourNo']+1
      else
        x_MaxTourNo := 1;

    end;

  GpSds.Free;

  Result := x_maxTourNo;

end;

function TMasterDepDatesForm.GetNextTourRef: integer;
var
  QueryString: string;
  x_MaxTourNo: integer;
  x_MaxDate: TDateTime;
  GpSds: TSQLDataSet;
begin

  if TourDepDatesCds['TourCodes_id'] = null then
    begin
      Result := 0;
      exit;
    end;

  QueryString := 'SELECT MAX(TourDate) As MaxDate FROM TourDepartureDates ' +
    'WHERE TourCodes_id = ' + IntToStr(TourDepDatesCds['TourCodes_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_MaxTourNo := 1;

  if (not GpSds.EOF) and (GpSds['MaxDate'] <> null) then
    begin
      x_MaxDate := GpSds['MaxDate'];

      QueryString := 'SELECT MAX(TourRef) As MaxTourRef FROM TourDepartureDates ' +
        'WHERE TourCodes_id = ' + IntToStr(TourDepDatesCds['TourCodes_id']) + ' ' +
        'AND TourDate = ''' + FormatDateTime('mm/dd/yyyy',x_MaxDate) + '''';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['MaxTourRef'] <> null) then
        x_maxTourNo := GpSds['MaxTourRef']+1
      else
        x_MaxTourNo := 1;

    end;

  GpSds.Free;

  Result := x_maxTourNo;

end;



procedure TMasterDepDatesForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TMasterDepDatesForm.TourDepDatesCdstourdateChange(
  Sender: TField);
begin
  if TourDepDatesCds['TourDate'] <> null then
    TourDepDatesCds['ReturnDate'] := IncDay(TourDepDatesCds['TourDate'],GetDays-1);
end;

function TMasterDepDatesForm.GetDays: integer;
var
  QueryString: string;
  x_Days: integer;
  GpSds: TSQLDataSet;
begin

  if TourDepDatesCds['TourCodes_id'] = null then
    begin
      Result := 0;
      exit;
    end;

  QueryString := 'SELECT NoOfDays FROM TourCodes ' +
    'WHERE TourCodes_id = ' + IntToStr(TourDepDatesCds['TourCodes_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Days := 0;

  if (not GpSds.EOF) and (GpSds['NoOfDays'] <> null) then
    x_Days := GpSds['NoOfDays'];

  GpSds.Free;

  Result := x_Days;


end;


procedure TMasterDepDatesForm.cxRadioGroupPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterDepDatesForm.cxRadioGroupClick(Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterDepDatesForm.MasterDepDatesCdsAfterDelete(
  DataSet: TDataSet);
begin
  MasterDepDatesCds.ApplyUpdates(0);
  MasterDepDatesCds.Refresh;
end;

procedure TMasterDepDatesForm.TourDepDatesCdsAfterDelete(
  DataSet: TDataSet);
begin
  TourDepDatesCds.ApplyUpdates(0);
  TourDepDatesCds.Refresh;
end;

end.
