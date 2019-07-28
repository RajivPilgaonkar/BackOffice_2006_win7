unit MasterTicketsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, StdCtrls, Buttons, DBCtrls, Mask, Grids,
  DBGrids, DBClient, DB, Provider, SqlExpr, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxNavigator,
  cxDBNavigator, cxCalendar, cxTimeEdit, cxSpinEdit, cxLookAndFeelPainters,
  cxButtons, cxButtonEdit, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGroupBox, DateUtils;

type
  TMasterTicketsForm = class(TCustom1M1DForm)
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    GroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    KeyIdDbText: TDBText;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    Label14: TLabel;
    Detail1Cdsmasterticketstours_id: TIntegerField;
    Detail1Cdsmastertickets_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxModeLCMB: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    MasterCdsmastertickets_id: TIntegerField;
    MasterCdsday: TIntegerField;
    MasterCdsflightno: TStringField;
    MasterCdstrainno: TStringField;
    MasterCdstours: TStringField;
    MasterCdsadvicenumpaxdays: TIntegerField;
    MasterCdsadvicenamepaxdays: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsclassid: TIntegerField;
    MasterCdsremarks: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdstickets_id: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    cxAgentCityLCMB: TcxLookupComboBox;
    cxDBNavigator1: TcxDBNavigator;
    CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsMasters_id: TIntegerField;
    TourCodeDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassDs: TDataSource;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    ClassCdstickets_id: TIntegerField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    MasterCdsdeparture: TSQLTimeStampField;
    MasterCdsarrival: TSQLTimeStampField;
    MasterCdsFromStations_id: TIntegerField;
    MasterCdsToStations_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure cxAgentCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxModeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure TourString;
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCdstickets_idChange(Sender: TField);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterTicketsForm: TMasterTicketsForm;
  _MasterTicketsForm_Mode: String;
  _MasterTicketsForm_Level: Integer;
implementation

uses BackOfficeDM, MasterFm, GeneralUt, TicketsFm;

{$R *.dfm}

procedure TMasterTicketsForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.AgentCityCds.Active := False;
  BackOfficeDataModule.AgentCityCds.Active := True;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.TicketsCDS.Active := False;
  BackOfficeDataModule.TicketsCDS.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  ClassCds.Active := False;
  ClassCds.Active := True;

  BackOfficeDataModule.TourCodeCds.Active := False;
  BackOfficeDataModule.TourCodeCds.Active := True;

  MasterCdsName := 'MasterTickets';
  MasterKeyField := 'MasterTickets_id';
  Detail1CdsName := 'MasterTicketsTours';
  Detail1KeyField := 'MasterTicketsTours_id';

  AdmLevel := _MasterForm_Level;

  MasterSds.DataSource := MasterForm.MasterDs;
  MasterCds.MasterSource := MasterForm.MasterDs;

  inherited;

  if _MasterTicketsForm_Mode = 'I' then
    MasterCds.Insert
  else if (_MasterTicketsForm_Mode = 'E') and (MasterForm.TicketsCds['MasterTickets_id'] <> null) then
    MasterCds.Locate('MasterTickets_id', MasterForm.TicketsCds['MasterTickets_id'],[]);

end;

procedure TMasterTicketsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterTicketsForm := nil;
end;

procedure TMasterTicketsForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TMasterTicketsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidateBlanks(MasterCdsday,'DAY');
  ValidateBlanks(MasterCdsfrom_cities_id,'FROM CITY');
  ValidateBlanks(MasterCdsto_cities_id,'TO CITY');
  ValidateBlanks(MasterCdstickets_id,'MODE');
  //ValidateBlanks(MasterCdsflightno,'TRAVEL SCHEDULE');
  ValidateBlanks(MasterCdsarrival,'ARRIVAL TIME');
  ValidateBlanks(MasterCdsdeparture,'DEPARTURE TIME');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

procedure TMasterTicketsForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterTicketsTours ' +
    'WHERE MasterTickets_id = ' + IntToStr(MasterCds['MasterTickets_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TMasterTicketsForm.cxAgentCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CxAgentCityLCMB.EditValue <> null then
      BackOfficeDataModule.AgentCityCds.Locate('Cities_id',CxAgentCityLCMB.EditValue,[]);
  except
  end;

end;

procedure TMasterTicketsForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMasterTicketsForm.cxModeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CxModeLCMB.EditValue <> null then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',CxModeLCMB.EditValue,[]);
  except
  end;

end;

procedure TMasterTicketsForm.cxButton2Click(Sender: TObject);
begin
  inherited;

  if (MasterCDS['Tickets_id']=null) or (MasterCDS['Tickets_id']=0) then
      Exit;

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if MasterCDS['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if MasterCDS['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if MasterCDS['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if MasterCDS['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := MasterCDS['From_Cities_id'];
  TicketsForm_ToCities_id := MasterCDS['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;

  if TicketsForm.ModalResult = mrOK then
  begin
    if MasterCDS.State = dsBrowse then
      MasterCDS.Edit;
    if MasterCDS['Tickets_id'] = 1 then
    begin

      if TicketsForm.FlightsCds['FlightNo'] <> null then
        MasterCDS['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

      if TicketsForm.FlightsCds['Arrival'] <> null then
        MasterCDS['Arrival'] := TicketsForm.FlightsCds['Arrival'];

      if TicketsForm.FlightsCds['Departure'] <> null then
        MasterCDS['Departure'] := TicketsForm.FlightsCds['Departure'];
    end;

    if MasterCDS['Tickets_id'] = 2 then
    begin
      if TicketsForm.TrainsCds['TrainName'] <> null then
        MasterCDS['FlightNo'] := Trim(TicketsForm.TrainsCds['TrainNo']) + ' ' + Trim(TicketsForm.TrainsCds['TrainName']);

      if TicketsForm.TrainsCds['TrainNo'] <> null then
        MasterCDS['TrainNo'] := TicketsForm.TrainsCds['TrainNo'];

      if TicketsForm.TrainsCds['Arrival'] <> null then
        MasterCDS['Arrival'] := TicketsForm.TrainsCds['Arrival'];

      if TicketsForm.TrainsCds['Departure'] <> null then
        MasterCDS['Departure'] := TicketsForm.TrainsCds['Departure'];

      if TicketsForm.TrainsCds['FromStations_id'] <> null then
        MasterCDS['FromStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

      if TicketsForm.TrainsCds['ToStations_id'] <> null then
        MasterCDS['ToStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

    end;

    if MasterCDS['Tickets_id'] = 3 then
    begin
      if TicketsForm.BusesCds['busno'] <> null then
        MasterCDS['FlightNo']:= TicketsForm.BusesCds['BusNo'];

      if TicketsForm.BusesCds['Arrival'] <> null then
        MasterCDS['Arrival'] := TicketsForm.BusesCds['Arrival'];

      if TicketsForm.BusesCds['Departure'] <> null then
        MasterCDS['Departure'] := TicketsForm.BusesCds['Departure'];
    end;

    if MasterCDS['Tickets_id'] = 4 then
    begin
      MasterCDS['FlightNo']:= NULL;
      MasterCDS['Arrival'] := NULL;
      MasterCDS['Departure'] := NULL;
    end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TMasterTicketsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['MasterTickets_id'] = null) then
    raise Exception.Create('Please enter the Ticket Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TMasterTicketsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterTickets ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND Day = ' + IntToStr(MasterCds['Day']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(MasterCds['From_cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_cities_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterTickets_id <> ' + IntToStr(MasterCds['MasterTickets_id']) + ') ';

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

function TMasterTicketsForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterTicketsTours ' +
    'WHERE MasterTickets_id = ' + IntToStr(Detail1Cds['MasterTickets_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterTicketsTours_id <> ' + IntToStr(Detail1Cds['MasterTicketsTours_id']) + ') ';

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


procedure TMasterTicketsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //MasterCds['Arrival'] := StrToDate('01/01/1900');
  //MasterCds['Departure'] := StrToDate('01/01/1900');
  cxAgentCityLcmb.EditValue := 0;
end;

procedure TMasterTicketsForm.cxButton3Click(Sender: TObject);
begin
  inherited;
  TourString;
end;

procedure TMasterTicketsForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;

  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['MasterTickets_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;

end;


procedure TMasterTicketsForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  cxAgentCityLCMB.EditValue := 0;

  if MasterCds['Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT cities_id FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['cities_id']<>null) then
        begin
          cxAgentCityLCMB.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;

    end;

  try
    if CxModeLCMB.EditValue <> null then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',CxModeLCMB.EditValue,[]);
  except
  end;


end;

procedure TMasterTicketsForm.MasterCdstickets_idChange(Sender: TField);
begin
  inherited;
  
  try
    if CxModeLCMB.EditValue <> null then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',CxModeLCMB.EditValue,[]);
  except
  end;

end;

procedure TMasterTicketsForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TMasterTicketsForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds.First;
  if Detail1Cds.Eof then
    begin
      ShowMessage ('Please enter the Tours');
      Detail1Cds.Insert;
      CustomMasterCxGrid.SetFocus;
    end;

end;

end.
