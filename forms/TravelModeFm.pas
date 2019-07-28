unit TravelModeFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls,
  cxCheckBox, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons, FMTBcd,
  DB, SqlExpr, cxGraphics, DBClient, Provider, cxSpinEdit, cxTimeEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, DateUtils, cxCalendar, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TTravelModeForm = class(TForm)
    Panel1: TPanel;
    cxDriveGB: TcxGroupBox;
    cxTicketsGB: TcxGroupBox;
    cxDriveCkb: TcxCheckBox;
    DistanceLabel: TLabel;
    Label22: TLabel;
    cxModeLCMB: TcxDBLookupComboBox;
    Label16: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label18: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Label23: TLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDisplayScheduleButton: TcxButton;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    cxCancelButton: TcxButton;
    cxOKButton: TcxButton;
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
    TicketDs: TDataSource;
    TicketCdsQuoTickets_id: TIntegerField;
    TicketCdsQuotations_id: TIntegerField;
    TicketCdsCities_id: TIntegerField;
    TicketCdsAgentAddressbook_id: TIntegerField;
    TicketCdsTickets_id: TIntegerField;
    TicketCdsNoOfTickets: TIntegerField;
    TicketCdsTravelDate: TSQLTimeStampField;
    TicketCdsFrom_Cities_id: TIntegerField;
    TicketCdsTo_Cities_id: TIntegerField;
    TicketCdsFlightNo: TStringField;
    TicketCdsFrom_TrainStations_id: TIntegerField;
    TicketCdsTo_TrainStations_id: TIntegerField;
    TicketCdsClass_id: TIntegerField;
    TicketCdsETD: TSQLTimeStampField;
    TicketCdsETA: TSQLTimeStampField;
    TicketCdsTravelDay: TIntegerField;
    TicketCdsCost: TFMTBCDField;
    TicketCdsMasters_id: TStringField;
    TicketCdsstatus: TIntegerField;
    TicketCdsTrainNo: TStringField;
    TicketCdsLineNum: TIntegerField;
    TicketCdsQuoCities_id: TIntegerField;
    TicketCdsDaysOfOperation: TIntegerField;
    Label1: TLabel;
    cxDBTimeEdit3: TcxDBTimeEdit;
    TicketCdsOvernight: TBooleanField;
    TicketCdsNights: TIntegerField;
    Label2: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TravelDate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1FlightNo: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1From_TrainStations_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1To_TrainStations_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Class_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ETD: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ETA: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TravelDay: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Masters_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1status: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1LineNum: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoCities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DaysOfOperation: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Overnight: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesDs: TDataSource;
    TicketCdsClassLookup: TStringField;
    cxRouteFinderButton: TcxButton;
    TicketCdsHops: TIntegerField;
    TicketCdsModePreference: TIntegerField;
    cxButton1: TcxButton;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTimeEdit5: TcxDBTimeEdit;
    TicketCdsCarReleaseDate: TSQLTimeStampField;
    cxDBDateEdit1: TcxDBDateEdit;
    TicketCdsP2P: TIntegerField;
    TicketCdsReserveHotelOvernight: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    TicketCdsFromStationLookup: TStringField;
    TicketCdsToStationLookup: TStringField;
    TicketCdsDriveTypes_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DisplayLabel;
    procedure cxModeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxDisplayScheduleButtonClick(Sender: TObject);
    procedure cxDriveCkbClick(Sender: TObject);
    procedure HandleTickets;
    procedure TicketCdsAfterInsert(DataSet: TDataSet);
    procedure TicketCdsAfterPost(DataSet: TDataSet);
    procedure TicketCdsAfterDelete(DataSet: TDataSet);
    procedure TicketCdsBeforePost(DataSet: TDataSet);
    procedure cxCancelButtonClick(Sender: TObject);
    procedure cxOKButtonClick(Sender: TObject);
    function GetMode: integer;
    function RoundOffDuration (x_duration: string): string;
    procedure cxGridMasterDBBandedTableView1FlightNoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridMasterDBBandedTableView1Class_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxRouteFinderButtonClick(Sender: TObject);
    procedure InsertRoute;
    procedure InsertRouteAlternate(x_Hops, x_ModePreference :integer);
    procedure EnterFlightInfo;
    procedure EnterTrainInfo;
    function GetDefaultClass(x_Tickets_id: integer; x_FlightNo: string): integer;
    procedure AutoAddNightHalts;
    function GetModeString (x_QuoCities_id: integer): string;
    procedure cxButton1Click(Sender: TObject);
    function IsP2P(x_FromCities_id, x_ToCities_id: integer; x_Date:TDatetime):boolean;
    procedure cxGridMasterDBBandedTableView1From_TrainStations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridMasterDBBandedTableView1To_TrainStations_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TravelModeForm: TTravelModeForm;
  _TravelModeForm_QuoCities_id: integer;
  _TravelModeForm_Quotations_id: integer;
  _TravelModeForm_FromCities_id: integer;
  _TravelModeForm_ToCities_id: integer;
  _TravelModeForm_QuoTickets_id: integer;
  _TravelModeForm_TravelDate: TDateTime;
  _TravelModeForm_Mode: integer;
  _TravelModeForm_Result: integer;

implementation

uses BackOfficeDM, GeneralUt, QuoCitywiseFm, SearchSortFm,
  RouteFinderFm, RouteAlternateFm, TicketsFm;


{$R *.dfm}

procedure TTravelModeForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.TrainStationCds.Open;

  //Mode -- 1-Insert, 2-Edit
  _TravelModeForm_Mode := GetMode;

  DisplayLabel;

  TicketCds.Active := False;
  TicketCds.Filter := 'QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);
  TicketCds.Filtered := True;
  TicketCds.Active := True;
  HandleTickets;

  ClassCds.Open;
  CitiesCds.Open;

  Height := 575;
  Width := 850;

end;

function TTravelModeForm.GetMode: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Mode, x_count: integer;
begin

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  // No ticket records means insert mode, else edit mode
  if x_count = 0 then
    x_Mode := 1
  else
    x_Mode := 2;

  GpSds.Free;

  Result := x_Mode;
end;

procedure TTravelModeForm.DisplayLabel;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Distance: double;
  x_DriveString : string;
  x_Duration: string;
  x_FromCities_id, x_ToCities_id: integer;
begin

  x_Distance := 0.0;
  x_Duration := '';

  QueryString := 'SELECT c1.City AS FromCity, c2.City as ToCity, q.FromCities_id, q.ToCities_id ' +
    'FROM QuoCities q ' +
    'LEFT JOIN Cities c1 ON q.FromCities_id = c1.Cities_id ' +
    'LEFT JOIN Cities c2 ON q.ToCities_id = c2.Cities_id ' +
    'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) then
    begin
      x_DriveString := 'I wish to drive from ' + GpSds['FromCity'] + ' to ' + GpSds['ToCity'];

      x_FromCities_id := GpSds['FromCities_id'];
      x_ToCities_id := GpSds['ToCities_id'];

      QueryString := 'SELECT d.Distance, substring(d.time,1,5) as duration ' +
        'FROM Distances d, QuoCities q ' +
        'WHERE d.From_Cities_id = q.FromCities_id ' +
        'AND d.To_Cities_id = q.ToCities_id ' +
        'AND q.QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id) + ' ' +
        'AND d.Drive = 1';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Distance := 0.0;
      if (not GpSds.EOF) and (GpSds['Distance'] <> null) then
        x_Distance := GpSds['Distance'];


      QueryString := 'SELECT x_Duration = dbo.fn_GetCityTravelDuration(' +
        IntToStr(x_FromCities_id) + ',' + IntToStr(x_ToCities_id) + ') ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Duration := '';
      if (not GpSds.EOF) and (GpSds['x_Duration'] <> null) then
        x_Duration := GpSds['x_Duration'];

      x_Duration := RoundOffDuration(x_Duration);

    end;

  GpSds.Free;

  // Insert Mode
  if _TravelModeForm_Mode = 1 then
    begin
      if x_Distance > 0 then
        begin
          cxDriveCkb.Caption := x_DriveString;
          DistanceLabel.Caption := 'Distance = ' + FormatFloat('#,##0',x_Distance) + ' kms.';
          if x_Duration > '' then
            DistanceLabel.Caption := DistanceLabel.Caption + ' (Duration ' + x_Duration + ' hrs.)';
          cxDriveCkb.Checked := True;
        end
      else
        begin
          cxDriveCkb.Caption := '';
          DistanceLabel.Caption := '';
          cxDriveGB.Visible := False;
        end;
    end
  // Edit Mode
  else if _TravelModeForm_Mode = 2 then
    begin
      // Its a Drive
      if _TravelModeForm_QuoTickets_id = 0 then
        begin
          cxDriveCkb.Caption := x_DriveString;
          DistanceLabel.Caption := 'Distance = ' + FormatFloat('#,##0',x_Distance) + ' kms.';
          if x_Duration > '' then
            DistanceLabel.Caption := DistanceLabel.Caption + ' (Duration ' + x_Duration + ' hrs.)';
          cxDriveCkb.Checked := True;
        end
      else
        begin
          if x_Distance > 0 then
            begin
              cxDriveCkb.Caption := x_DriveString;
              DistanceLabel.Caption := 'Distance = ' + FormatFloat('#,##0',x_Distance) + ' kms.';
              if x_Duration > '' then
                DistanceLabel.Caption := DistanceLabel.Caption + ' (Duration ' + x_Duration + ' hrs.)';
              cxDriveCkb.Checked := False;
            end
          else
            begin
              cxDriveCkb.Caption := '';
              DistanceLabel.Caption := '';
              cxDriveGB.Visible := False;
            end;
        end;
    end;

end;


function TTravelModeForm.RoundOffDuration (x_duration: string): string;
var
  x_RoundDuration: string;
begin
  if Copy(x_duration,4,2) > '30' then
    x_RoundDuration := padl(IntToStr(StrToInt(Copy(x_duration,1,2))+1),'0',2) + ':00'
  else if Copy(x_duration,4,2) > '00' then
    x_RoundDuration := Copy(x_duration,1,2) + ':30'
  else
    x_RoundDuration := x_duration;

  Result := x_RoundDuration;
end;


procedure TTravelModeForm.cxModeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if (CxModeLCMB.EditValue <> null) and (BackOfficeDataModule.TicketsCds.State <> dsInactive) then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',CxModeLCMB.EditValue,[]);
  except
  end;

end;

procedure TTravelModeForm.cxDisplayScheduleButtonClick(Sender: TObject);
begin

  if (TicketCds['Tickets_id']=null) or (TicketCds['Tickets_id']=0) then
      Exit;

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if TicketCds['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if TicketCds['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if TicketCds['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if TicketCds['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := TicketCds['From_Cities_id'];
  TicketsForm_ToCities_id := TicketCds['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;

  if TicketsForm.ModalResult = mrOK then
  begin
    if TicketCds.State = dsBrowse then
      TicketCds.Edit;
    if TicketCds['Tickets_id'] = 1 then
    begin

      if TicketsForm.FlightsCds['FlightNo'] <> null then
        TicketCds['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

      if TicketsForm.FlightsCds['Arrival'] <> null then
        TicketCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
          FormatDateTime('HH:mm',TicketsForm.FlightsCds['Arrival']));

      if TicketsForm.FlightsCds['Departure'] <> null then
        TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
          FormatDateTime('HH:mm',TicketsForm.FlightsCds['Departure']));

      if TicketsForm.FlightsCds['Days'] <> null then
        TicketCds['DaysOfOperation'] := TicketsForm.FlightsCds['Days'];

      TicketCds['Overnight'] := False;

      if TicketsForm.FlightsCds['Overnight'] <> null then
        TicketCds['Overnight'] := TicketsForm.FlightsCds['Overnight'];

      if TicketCds['Overnight'] = True then
        TicketCds['Nights'] := 1
      else
        TicketCds['Nights'] := 0;

      if TicketCds['ETA'] <> null then
        TicketCds['ETA'] := IncDay(TicketCds['ETA'],TicketCds['Nights']);

    end;

    if TicketCds['Tickets_id'] = 2 then
    begin
      if TicketsForm.TrainsCds['TrainName'] <> null then
        TicketCds['FlightNo'] := Trim(TicketsForm.TrainsCds['TrainNo']) + ' ' + Trim(TicketsForm.TrainsCds['TrainName']);

      if TicketsForm.TrainsCds['TrainNo'] <> null then
        TicketCds['TrainNo'] := TicketsForm.TrainsCds['TrainNo'];

      if TicketsForm.TrainsCds['Arrival'] <> null then
        TicketCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
          FormatDateTime('HH:mm',TicketsForm.TrainsCds['Arrival']));

      if TicketsForm.TrainsCds['Departure'] <> null then
        TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
          FormatDateTime('HH:mm',TicketsForm.TrainsCds['Departure']));


      if TicketsForm.TrainsCds['FromStations_id'] <> null then
        TicketCds['From_TrainStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

      if TicketsForm.TrainsCds['ToStations_id'] <> null then
        TicketCds['To_TrainStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

      if TicketsForm.TrainsCds['DayOfOperation'] <> null then
        TicketCds['DaysOfOperation'] := TicketsForm.TrainsCds['DayOfOperation'];

      TicketCds['Overnight'] := False;

      if TicketsForm.TrainsCds['Overnight'] <> null then
        TicketCds['Overnight'] := TicketsForm.TrainsCds['Overnight'];

      if TicketsForm.TrainsCds['Nights'] <> null then
        TicketCds['Nights'] := TicketsForm.TrainsCds['Nights']
      else
        TicketCds['Nights'] := 0;

      if TicketCds['ETA'] <> null then
        TicketCds['ETA'] := IncDay(TicketCds['ETA'],TicketCds['Nights']);

    end;

    if TicketCds['Tickets_id'] = 3 then
    begin
      if TicketsForm.BusesCds['busno'] <> null then
        TicketCds['FlightNo']:= TicketsForm.BusesCds['BusNo'];

      if TicketsForm.BusesCds['Arrival'] <> null then
        TicketCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
          FormatDateTime('HH:mm',TicketsForm.BusesCds['Arrival']));


      if TicketsForm.BusesCds['Departure'] <> null then
        TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
          FormatDateTime('HH:mm',TicketsForm.BusesCds['Departure']));


      if TicketsForm.BusesCds['Days'] <> null then
        TicketCds['DaysOfOperation'] := TicketsForm.BusesCds['Days'];

      TicketCds['Overnight'] := False;

      if TicketsForm.BusesCds['Overnight'] <> null then
        TicketCds['Overnight'] := TicketsForm.BusesCds['Overnight'];

      if TicketsForm.BusesCds['Nights'] <> null then
        TicketCds['Nights'] := TicketsForm.BusesCds['Nights']
      else
        TicketCds['Nights'] := 0;

      if TicketCds['ETA'] <> null then
        TicketCds['ETA'] := IncDay(TicketCds['ETA'],TicketCds['Nights']);
    end;

    if TicketCds['Tickets_id'] = 4 then
    begin
      TicketCds['FlightNo']:= NULL;
      TicketCds['Arrival'] := NULL;
      TicketCds['Departure'] := NULL;
    end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TTravelModeForm.cxDriveCkbClick(Sender: TObject);
begin
{
  if cxDriveCkb.Checked then
    cxTicketsGB.Enabled := False
  else
    cxTicketsGB.Enabled := True;
}
end;

procedure TTravelModeForm.HandleTickets;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Mode: integer;
begin

  if _TravelModeForm_Mode = 1 then
    TicketCds.Insert;

  if cxDriveCkb.Checked = true then
    exit;

  QueryString := 'SELECT QuoTickets_id FROM QuoCities ' +
    'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Mode := _TravelModeForm_Mode;

  if x_Mode = 1 then
    begin
      if TicketCds.State = dsBrowse then
        TicketCds.Insert;
    end
  else
    begin
      TicketCds.Locate('QuoTickets_id',GpSds['QuoTickets_id'],[]);
    end;

end;


procedure TTravelModeForm.TicketCdsAfterInsert(DataSet: TDataSet);
begin
  TicketCds['Quotations_id'] := _TravelModeForm_Quotations_id;
  TicketCds['From_Cities_id'] := _TravelModeForm_FromCities_id;
  TicketCds['To_Cities_id'] := _TravelModeForm_ToCities_id;
  TicketCds['TravelDate'] := _TravelModeForm_TravelDate;
  TicketCds['QuoCities_id'] := _TravelModeForm_QuoCities_id;
  TicketCds['ReserveHotelOvernight'] := false;
end;

procedure TTravelModeForm.TicketCdsAfterPost(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);
end;

procedure TTravelModeForm.TicketCdsAfterDelete(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);
end;

procedure TTravelModeForm.TicketCdsBeforePost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
  QueryString, x_Duration, x_Time: string;
  x_Hours, x_Min: integer;
begin

  if TicketCds.State = dsInsert then
    begin
      TicketCds['QuoTickets_id'] := GetNextId('QuoTickets','QuoTickets_id');
    end;

  if TicketCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  if TicketCds['QuoTickets_id'] = Null then
    Raise Exception.Create('Enter the QuoTickets_id');

  if (TicketCds['Tickets_id'] = null) then
    TicketCds['Tickets_id'] := 5;

  if TicketCds['Tickets_id'] = 5 then
    TicketCds['FlightNo'] := '';

  if QuoCitywiseForm.Detail1Cds['DriveStartTime'] <> null then
    x_Time := FormatDateTime('HH:mm',QuoCitywiseForm.Detail1Cds['DriveStartTime'])
  else
    x_Time := '09:00';

  if (TicketCds['Tickets_id'] = 5) and (TicketCds['ETD'] = null) then
    TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' +
        x_Time);

  TicketCds['P2P'] := 0;

  if TicketCds['ReserveHotelOvernight'] = null then
    TicketCds['ReserveHotelOvernight'] := false;

  if (TicketCds['ReserveHotelOvernight'] = true) and (TicketCds['Overnight'] <> true) then
    raise exception.create ('Cannot mark as "Reserve Hotel on overnight" when not traveling overnight');

  if (TicketCds['Tickets_id'] = 2) then
    TicketCds['AgentAddressbook_id'] := GetDefaultTrainTicketAgent
  else if (TicketCds['Tickets_id'] = 1) then
    TicketCds['AgentAddressbook_id'] := GetDefaultAirTicketAgent;  

  if (TicketCds['ETD'] <> null) and (TicketCds['TravelDate'] <> null) then
    TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETD']));

  if (TicketCds['ETA'] <> null) and (TicketCds['TravelDate'] <> null) then
    TicketCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETA']));

  if (TicketCds['ETA'] <> null) and (TicketCds['Overnight'] = true) and (TicketCds['Nights'] <> null) then
    TicketCds['ETA'] := IncDay(TicketCds['ETA'], TicketCds['Nights']);

  // Road Travel & Not selected through route finder
  if (TicketCds['Tickets_id'] = 5) then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      QueryString := 'SELECT x_Duration = dbo.fn_GetCityTravelDuration(' +
        IntToStr(TicketCds['From_Cities_id']) + ',' + IntToStr(TicketCds['To_Cities_id']) + ') ';

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Duration := '';
      if (not GpSds.EOF) and (GpSds['x_Duration'] <> null) then
        x_Duration := GpSds['x_Duration'];

      GpSds.Free;

      x_Duration := RoundOffDuration(x_Duration);

      x_Hours := StrToInt(Copy(x_Duration,1,2));
      x_Min := StrToInt(Copy(x_Duration,4,2));

      TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETD']));

      TicketCds['ETA'] := IncHour (TicketCds['ETD'], x_Hours);
      TicketCds['ETA'] := IncMinute (TicketCds['ETA'], x_Min);

      if IsP2P(TicketCds['From_Cities_id'], TicketCds['To_Cities_id'],TicketCds['TravelDate']) then
        TicketCds['P2P'] := 1;

//      if TicketCds['DriveTypes_id'] <> 2 then
//        TicketCds['P2P'] := 0;

    end;
end;


function TTravelModeForm.IsP2P(x_FromCities_id, x_ToCities_id: integer; x_Date:TDatetime):boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_CarHireP2P_id: integer;
  x_RetVal: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString :=
    'SELECT x_CarHireP2P_id = dbo.fn_GetCarHireP2P_id (' + IntToStr(x_FromCities_id) + ',' +
    IntToStr(x_ToCities_id) + ',''' + FormatDateTime('mm/dd/yyyy',x_Date) + ''')';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_CarHireP2P_id := 0;
  if (not GpSds.EOF) and (GpSds['x_CarHireP2P_id'] <> null) then
    x_CarHireP2P_id := GpSds['x_CarHireP2P_id'];

  GpSds.Free;

  if x_CarHireP2P_id > 0 then
    x_RetVal := True
  else
    x_RetVal := False;

  Result := x_RetVal;

end;


procedure TTravelModeForm.cxCancelButtonClick(Sender: TObject);
begin
  if TicketCds.State in [dsEdit, dsInsert] then
    TicketCds.Cancel;

  _TravelModeForm_Result := 2;

  Close;
end;

procedure TTravelModeForm.cxOKButtonClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Count, x_Tickets_id: integer;
  x_Timing, x_ModeString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  // Check if single hop & drive
  if (x_count = 1) then
    begin

      QueryString := 'SELECT Tickets_id FROM QuoTickets ' +
        'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Tickets_id := 0;
      if (not GpSds.EOF) and (GpSds['Tickets_id'] <> null) then
        x_Tickets_id := GpSds['Tickets_id'];

      if x_Tickets_id = 5 then
        cxDriveCkb.Checked := True;

    end;


  if cxDriveCkb.Checked then
    begin

      if TicketCds.State in [dsEdit, dsInsert] then
        TicketCds.Post;

{
      QueryString := 'DELETE FROM QuoTickets ' +
        'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;
}

      x_Timing := FormatDateTime('mm/dd/yyyy',QuoCitywiseForm.Detail1Cds['DateIn']) + ' ' +
         FormatDateTime('HH:mm',QuoCitywiseForm.Detail1Cds['DriveStartTime']) + ' ';

      x_ModeString := GetModeString (_TravelModeForm_QuoCities_id);

      QueryString := 'UPDATE QuoCities SET ModeOfTravel = 5, QuoTickets_id = null, ' +
        'DriveStartTime = ''' + x_Timing + ''', ' +
        'ModeString = ''' + x_ModeString + ''' ' +
        'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end
  else
    begin

      if TicketCds.State in [dsEdit, dsInsert] then
        TicketCds.Post;

      x_ModeString := GetModeString (_TravelModeForm_QuoCities_id);

      QueryString := 'UPDATE QuoCities SET ModeOfTravel = ' + IntToStr(TicketCds['Tickets_id']) +
        ', QuoTickets_id = ' + IntToStr(TicketCds['QuoTickets_id']) + ', ' +
        'ModeString = ''' + x_ModeString + ''' ' +
        'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

  _TravelModeForm_Result := 1;

  Close;

end;

function TTravelModeForm.GetModeString (x_QuoCities_id: integer): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ModeString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT Tickets_id FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(x_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ModeString := '';

  while not GpSds.Eof do
    begin
      if GpSds['Tickets_id'] <> null then
        begin
          if x_ModeString > '' then
            x_ModeString := x_ModeString + '/';
          if GpSds['Tickets_id'] = 1 then
            x_ModeString := x_ModeString + 'Air';
          if GpSds['Tickets_id'] = 2 then
            x_ModeString := x_ModeString + 'Train';
          if GpSds['Tickets_id'] = 3 then
            x_ModeString := x_ModeString + 'Bus';
          if GpSds['Tickets_id'] = 4 then
            x_ModeString := x_ModeString + 'Ferry';
          if GpSds['Tickets_id'] = 5 then
            x_ModeString := x_ModeString + 'Road';
        end;
      GpSds.Next;
    end;

  GpSds.Free;

  Result := x_ModeString;

end;


procedure TTravelModeForm.cxGridMasterDBBandedTableView1FlightNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  cxDisplayScheduleButtonClick(nil);
end;

procedure TTravelModeForm.cxGridMasterDBBandedTableView1Class_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if (TicketCds['Tickets_id']=null) or (TicketCds['Tickets_id']=0) then
      exit;

  QueryString := 'SELECT Class_id, Class, Code ' +
        'FROM Class ' +
        'WHERE Tickets_id = ' + IntToStr(TicketCds['Tickets_id']) + ' ' +
        'ORDER BY Class';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Class_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Class';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Code';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Class';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Code';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Class_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TicketCds.State = dsBrowse then
        TicketCds.Edit;
      TicketCds['Class_id'] := SearchSortForm.SearchCds['Class_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TTravelModeForm.cxRouteFinderButtonClick(Sender: TObject);
begin

  if RouteFinderForm <> nil then
    begin
      RouteFinderForm.Free;
      RouteFinderForm := nil;
    end;

  _RouteFinderForm_Type := 2;
  _RouteFinderForm_FromCities_id := _TravelModeForm_FromCities_id;
  _RouteFinderForm_ToCities_id := _TravelModeForm_ToCities_id;
  _RouteFinderForm_TravelDate := _TravelModeForm_TravelDate;
  _RouteFinderForm_Alternate := false;  

  if RouteFinderForm = nil then
    Application.CreateForm(TRouteFinderForm, RouteFinderForm);

  RouteFinderForm.FormStyle := fsNormal;
  RouteFinderForm.Visible := False;

  RouteFinderForm.ShowModal;

  if RouteFinderForm.ModalResult = mrOK then
    begin
        if TicketCds.State <> dsBrowse then
          TicketCds.Cancel;
        InsertRoute;
        AutoAddNightHalts;
    end;

  RouteFinderForm.Free;
  RouteFinderForm := nil;

end;

procedure TTravelModeForm.AutoAddNightHalts;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_AddNightHalts ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  TicketCds.Active := False;
  QuoCitywiseForm.Detail1Cds.Active := False;
  QuoCitywiseForm.Detail1Cds.Active := True;
  QuoCitywiseForm.Detail1Cds.Last;
  QuoCitywiseForm.Detail1Cds.Locate('QuoCities_id', _TravelModeForm_QuoCities_id, []);
  TicketCds.Active := True;

  TicketCds.First;
  while not TicketCds.Eof do
    begin
      TicketCds.Edit;
      TicketCds.Post;
      TicketCds.Next;
    end;

  TicketCds.First;

end;

procedure TTravelModeForm.InsertRouteAlternate(x_Hops, x_ModePreference: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  CdsClone: TClientDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (TicketCds.State = dsInsert) or (TicketCds.State = dsEdit) then
    TicketCds.Cancel;

  QueryString := 'DELETE FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  TicketCds.Active := False;
  TicketCds.Active := True;

  CdsClone := TClientDataSet.Create(nil);

  CdsClone.CloneCursor(RouteAlternateForm.RouteFinderCds, True);
  CdsClone.Filtered := True;
  CdsClone.Filter := 'OptionNo = ' + IntToStr(RouteAlternateForm.RouteFinderCds['OptionNo']);

  CdsClone.First;

  while not CdsClone.EOF do
    begin
      TicketCds.Insert;
      TicketCds['From_Cities_id'] := CdsClone['FromCities_id'];
      TicketCds['To_Cities_id'] := CdsClone['ToCities_id'];
      TicketCds['TravelDate'] := StrToDate(FormatDateTime('dd/mm/yyyy',CdsClone['Departure']));
      if CdsClone['Mode'] = 1 then
        TicketCds['Tickets_id'] := 5
      else if CdsClone['Mode'] = 2 then
        TicketCds['Tickets_id'] := 1
      else if CdsClone['Mode'] = 3 then
        TicketCds['Tickets_id'] := 2;
      TicketCds['FlightNo'] := CdsClone['ModeNo'];
      TicketCds['ETD'] := StrToDateTime(CdsClone['Departure']);
      TicketCds['ETA'] := StrToDateTime(CdsClone['Arrival']);

      TicketCds['Hops'] := x_Hops;

      TicketCds['ModePreference'] := x_ModePreference;

      if TicketCds['Tickets_id'] = 1 then
        begin
          TicketCds['Class_id'] := GetDefaultClass(TicketCds['Tickets_id'], TicketCds['FlightNo']);
          EnterFlightInfo;
        end
      else if TicketCds['Tickets_id'] = 2 then
        begin
          TicketCds['TrainNo'] := CdsClone['TrainNo'];
          TicketCds['Class_id'] := GetDefaultClass(TicketCds['Tickets_id'], TicketCds['TrainNo']);
          EnterTrainInfo;
          TicketCds['overnight'] := False;
          TicketCds['Nights'] := 0;
          if not IsSameDay (TicketCds['ETD'], TicketCds['ETA']) then
            begin
              TicketCds['overnight'] := True;
              TicketCds['Nights'] := StrToDate(FormatDateTime('dd/mm/yyyy',TicketCds['ETA'])) -
                                     StrToDate(FormatDateTime('dd/mm/yyyy',TicketCds['ETD']));
            end;
        end;

      TicketCds.Post;

      CdsClone.Next;

    end;

  CdsClone.Active := False;
  CdsClone.Filtered := False;
  CdsClone.Active := True;

  GpSds.Free;

end;


procedure TTravelModeForm.InsertRoute;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  CdsClone: TClientDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if (TicketCds.State = dsInsert) or (TicketCds.State = dsEdit) then
    TicketCds.Cancel;

  QueryString := 'DELETE FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(_TravelModeForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  TicketCds.Active := False;
  TicketCds.Active := True;

  CdsClone := TClientDataSet.Create(nil);

  if RouteFinderForm.cxOptionRadioGroup.ItemIndex = 0 then
    begin
      CdsClone.CloneCursor(RouteFinderForm.RouteFinderCds, True);
      CdsClone.Filtered := True;
      CdsClone.Filter := 'OptionNo = 1';
    end
  else if RouteFinderForm.cxOptionRadioGroup.ItemIndex = 1 then
    begin
      CdsClone.CloneCursor(RouteFinderForm.RouteFinderCds, True);
      CdsClone.Filtered := True;
      CdsClone.Filter := 'OptionNo = 2';
    end
  else if RouteFinderForm.cxOptionRadioGroup.ItemIndex = 2 then
    begin
      CdsClone.CloneCursor(RouteFinderForm.RouteFinderCds, True);
      CdsClone.Filtered := True;
      CdsClone.Filter := 'OptionNo = 3';
    end;


  CdsClone.First;

  while not CdsClone.EOF do
    begin
      TicketCds.Insert;
      TicketCds['From_Cities_id'] := CdsClone['FromCities_id'];
      TicketCds['To_Cities_id'] := CdsClone['ToCities_id'];
      TicketCds['TravelDate'] := StrToDate(FormatDateTime('dd/mm/yyyy',CdsClone['Departure']));
      if CdsClone['Mode'] = 1 then
        TicketCds['Tickets_id'] := 5
      else if CdsClone['Mode'] = 2 then
        TicketCds['Tickets_id'] := 1
      else if CdsClone['Mode'] = 3 then
        TicketCds['Tickets_id'] := 2;
      TicketCds['FlightNo'] := CdsClone['ModeNo'];
      TicketCds['ETD'] := StrToDateTime(CdsClone['Departure']);
      TicketCds['ETA'] := StrToDateTime(CdsClone['Arrival']);

      if CdsClone['Hops'] <> null then
        TicketCds['Hops'] := CdsClone['Hops'];

      if CdsClone['ModePreference'] <> null then
        TicketCds['ModePreference'] := CdsClone['ModePreference'];

      if TicketCds['Tickets_id'] = 1 then
        begin
          TicketCds['Class_id'] := GetDefaultClass(TicketCds['Tickets_id'], TicketCds['FlightNo']);
          EnterFlightInfo;
        end
      else if TicketCds['Tickets_id'] = 2 then
        begin
          TicketCds['TrainNo'] := CdsClone['TrainNo'];
          TicketCds['Class_id'] := GetDefaultClass(TicketCds['Tickets_id'], TicketCds['TrainNo']);
          EnterTrainInfo;
          TicketCds['overnight'] := False;
          TicketCds['Nights'] := 0;
          if not IsSameDay (TicketCds['ETD'], TicketCds['ETA']) then
            begin
              TicketCds['overnight'] := True;
              TicketCds['Nights'] := StrToDate(FormatDateTime('dd/mm/yyyy',TicketCds['ETA'])) -
                                     StrToDate(FormatDateTime('dd/mm/yyyy',TicketCds['ETD']));
            end;
        end;

      TicketCds.Post;

      CdsClone.Next;

    end;

  CdsClone.Active := False;
  CdsClone.Filter := '(OptionNo = 1) OR (OptionNo = 2) OR (OptionNo = 3)';
  CdsClone.Filtered := True;
  CdsClone.Active := True;

  GpSds.Free;

end;

function TTravelModeForm.GetDefaultClass(x_Tickets_id: integer; x_FlightNo: string): integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Class_id: integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if x_Tickets_id = 1 then
    begin
      QueryString := 'SELECT Class_id FROM Class ' +
        'WHERE Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
        'ORDER BY OrderNo';
    end
  else if x_Tickets_id = 2 then
    begin
      QueryString := 'SELECT c.Class_id FROM Trains t, TrainAvailableClass tac, Class c ' +
        'WHERE t.Trains_id = tac.Trains_id ' +
        'AND tac.Class_id = c.Class_id ' +
        'AND c.Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
        'AND t.TrainNo = ''' + x_FlightNo + '''';
    end;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Class_id := 0;

  if (not GpSds.EOF) and (GpSds['Class_id'] <> null) then
    x_Class_id := GpSds['Class_id'];

  GpSds.Free;

  Result := x_Class_id;

end;

procedure TTravelModeForm.EnterTrainInfo;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT t.TrainName, td1.TrainStations_id As FromTrainStations_id, ' +
    'td2.TrainStations_id As ToTrainStations_id, ' +
    't.DayOfOperation, ' +
    'CASE WHEN COALESCE(td2.Nights,0) > COALESCE(td1.Nights,0) THEN 1 ELSE 0 END AS Overnight, ' +
    'COALESCE(td2.Nights,0) - COALESCE(td1.Nights,0) AS Nights ' +
    'FROM Trains t INNER JOIN TrainDetails td1 ON t.Trains_id = td1.Trains_id ' +
    'INNER JOIN TrainDetails td2 ON t.Trains_id = td2.Trains_id ' +
    'LEFT JOIN TrainStations ts1 ON td1.TrainStations_id = ts1.TrainStations_id ' +
    'LEFT JOIN TrainStations ts2 ON td2.TrainStations_id = ts2.TrainStations_id ' +
    'WHERE t.TrainNo = ''' + TicketCds['TrainNo'] + ''' ' +
    'AND td1.Cities_id = ' + IntToStr(TicketCds['From_Cities_id']) + ' ' +
    'AND td2.Cities_id = ' + IntToStr(TicketCds['To_Cities_id']) + ' ' +
    'AND td1.kms < td2.kms ' +
    'AND ''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' >= wef ' +
    'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' <= wet)  OR (wet IS NULL)) ' +
    'ORDER BY COALESCE(ts1.DefaultOrder,100), COALESCE(ts2.DefaultOrder,100) ';


  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not GpSds.EOF then
    begin
      TicketCds['From_TrainStations_id'] := GpSds['FromTrainStations_id'];
      TicketCds['To_TrainStations_id'] := GpSds['ToTrainStations_id'];
      TicketCds['DaysOfOperation'] := GpSds['DayOfOperation'];
      TicketCds['OverNight'] := GpSds['OverNight'];
      TicketCds['Nights'] := GpSds['Nights'];
    end
  else
    begin
      TicketCds['DaysOfOperation'] := 0;
      TicketCds['OverNight'] := False;
      TicketCds['Nights'] := 0;
    end;

  GpSds.Free;

end;



procedure TTravelModeForm.EnterFlightInfo;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT COALESCE(OverNight,0) AS OverNight, ' +
    'CASE COALESCE(OverNight,0) WHEN 0 THEN 0 ELSE 1 END AS Nights ' +
    'FROM FlightSectorFaresIndia ' +
    'WHERE FlightNo = ''' + TicketCds['FlightNo'] + ''' ' +
    'AND CONVERT(VARCHAR(5),Arrival,108) = ''' + FormatDateTime('HH:mm',TicketCds['ETA']) + ''' ' +
    'AND CONVERT(VARCHAR(5),Departure,108) = ''' + FormatDateTime('HH:mm',TicketCds['ETD']) + ''' ' +
    'AND From_Cities_id = ' + IntToStr(TicketCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(TicketCds['To_Cities_id']) + ' ' +
    'AND ''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' >= wef ' +
    'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' <= wet)  OR (wet IS NULL))';

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not GpSds.EOF then
    begin
      TicketCds['OverNight'] := GpSds['OverNight'];
      TicketCds['Nights'] := GpSds['Nights'];
    end
  else
    begin
      TicketCds['OverNight'] := False;
      TicketCds['Nights'] := 0;
    end;

  GpSds.Free;

end;


procedure TTravelModeForm.cxButton1Click(Sender: TObject);
begin

  if (TicketCds['Hops'] = null) or (TicketCds['ModePreference'] = null) then
    raise exception.create ('The route must first be selected form the route finder in order for the alternates to work');

  _RouteAlternateForm_Type := 2;
  _RouteAlternateForm_FromCities_id := _TravelModeForm_FromCities_id;
  _RouteAlternateForm_ToCities_id := _TravelModeForm_ToCities_id;
  _RouteAlternateForm_Hops := TicketCds['Hops'];
  _RouteAlternateForm_ModePreference := TicketCds['ModePreference'];
  _RouteAlternateForm_Date := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) +
    ' 05:00');

  if RouteAlternateForm = nil then
    Application.CreateForm(TRouteAlternateForm, RouteAlternateForm);

  RouteAlternateForm.FormStyle := fsNormal;
  RouteAlternateForm.Visible := False;

  RouteAlternateForm.ShowModal;

  if RouteAlternateForm.ModalResult = mrOK then
    begin
        if TicketCds.State <> dsBrowse then
          TicketCds.Cancel;
        InsertRouteAlternate(_RouteAlternateForm_Hops, _RouteAlternateForm_ModePreference);
        AutoAddNightHalts;
    end;

  RouteAlternateForm.Free;
  RouteAlternateForm := nil;

end;

procedure TTravelModeForm.cxGridMasterDBBandedTableView1From_TrainStations_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if (TicketCds['From_Cities_id'] = null) or (TicketCds['TrainNo'] = null) or (TicketCds['TravelDate'] = null) then
    exit;

  QueryString := 'SELECT DISTINCT ts.TrainStations_id, ts.Station FROM Trains t ' +
      'LEFT JOIN TrainDetails td ON t.Trains_id = td.Trains_id ' +
      'LEFT JOIN TrainStations ts ON td.Cities_id = ts.cities_id ' +
      'WHERE TrainNo = ''' + TicketCds['TrainNo'] + ''' ' +
      'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' BETWEEN wef AND wet) OR (''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' >= wef AND wet IS NULL)) ' +
      'AND ts.Cities_id = ' + IntToStr(TicketCds['From_Cities_id']) + ' ' ;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Station';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Station';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainStations_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
  begin
    if (TicketCds.State = dsBrowse) then
      TicketCds.Edit;
    TicketCds['From_TrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];
  end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TTravelModeForm.cxGridMasterDBBandedTableView1To_TrainStations_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if (TicketCds['To_Cities_id'] = null) or (TicketCds['TrainNo'] = null) or (TicketCds['TravelDate'] = null) then
    exit;

  QueryString := 'SELECT DISTINCT ts.TrainStations_id, ts.Station FROM Trains t ' +
      'LEFT JOIN TrainDetails td ON t.Trains_id = td.Trains_id ' +
      'LEFT JOIN TrainStations ts ON td.Cities_id = ts.cities_id ' +
      'WHERE TrainNo = ''' + TicketCds['TrainNo'] + ''' ' +
      'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' BETWEEN wef AND wet) OR (''' + FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''' >= wef AND wet IS NULL)) ' +
      'AND ts.Cities_id = ' + IntToStr(TicketCds['To_Cities_id']) + ' ' ;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Station';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Station';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainStations_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
  begin
    if (TicketCds.State = dsBrowse) then
      TicketCds.Edit;
    TicketCds['To_TrainStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];
  end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
