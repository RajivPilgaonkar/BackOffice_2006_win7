unit QuoDayEditFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxPC, cxControls, ImgList, cxGraphics, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox, cxButtonEdit,
  cxTimeEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxCalendar,
  cxDBEdit, StdCtrls, cxButtons, cxLookupEdit, cxDBLookupEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxCheckBox, cxContainer, cxGroupBox, FMTBcd,
  DBClient, Provider, SqlExpr, DateUtils, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxMemo;

type
  TQuoDayEditForm = class(TForm)
    Panel2: TPanel;
    ImageList1: TImageList;
    ItineraryPC: TcxPageControl;
    TicketsTab: TcxTabSheet;
    AccTab: TcxTabSheet;
    ServicesTab: TcxTabSheet;
    TransfersTab: TcxTabSheet;
    cxDriveGB: TcxGroupBox;
    DistanceLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxDriveCkb: TcxCheckBox;
    cxDBTimeEdit3: TcxDBTimeEdit;
    cxTicketsGB: TcxGroupBox;
    Label22: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxModeLCMB: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDisplayScheduleButton: TcxButton;
    cxDBTimeEdit5: TcxDBTimeEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxGroupBox1: TcxGroupBox;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TravelDate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn;
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
    cxGridMasterLevel1: TcxGridLevel;
    cxRouteFinderButton: TcxButton;
    cxAlternateRouteButton: TcxButton;
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
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
    TicketCdsOvernight: TBooleanField;
    TicketCdsNights: TIntegerField;
    TicketCdsHops: TIntegerField;
    TicketCdsModePreference: TIntegerField;
    TicketCdsCarReleaseDate: TSQLTimeStampField;
    TicketDs: TDataSource;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    TktCitiesSds: TSQLDataSet;
    TktCitiesDsp: TDataSetProvider;
    TktCitiesCds: TClientDataSet;
    TktCitiesCdsCities_id: TIntegerField;
    TktCitiesCdsCity: TStringField;
    TktCitiesDs: TDataSource;
    TicketCdsClassLookUp: TStringField;
    cxGroupBox2: TcxGroupBox;
    Label32: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label5: TLabel;
    HotelLcmb: TcxDBLookupComboBox;
    RoomTypeLcmb: TcxDBLookupComboBox;
    ACchkbox: TcxDBCheckBox;
    MealPlanLcmb: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    Panel3: TPanel;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsQuotations_id: TIntegerField;
    AccCdsDayIn: TIntegerField;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsAC: TBooleanField;
    AccCdsRoomTypes_id: TIntegerField;
    AccCdsCities_id: TIntegerField;
    AccCdsMealPlans_id: TIntegerField;
    AccCdsCost: TFMTBCDField;
    AccCdsMasters_id: TStringField;
    AccCdsstatus: TIntegerField;
    AccCdsNights: TIntegerField;
    AccCdsHotelCities_id: TIntegerField;
    AccCdsAgentCities_id: TIntegerField;
    AccCdsLineNum: TIntegerField;
    AccCdsQuoCities_id: TIntegerField;
    AccCdsSelected: TBooleanField;
    AccDs: TDataSource;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsRoomTypes_id: TIntegerField;
    RoomTypeCdsRoomType: TStringField;
    RoomTypeCdsAddressbook_id: TIntegerField;
    RoomTypeCdsAC: TBooleanField;
    RoomTypeDs: TDataSource;
    HotelDs: TDataSource;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDsp: TDataSetProvider;
    HotelSds: TSQLDataSet;
    AccCitiesSds: TSQLDataSet;
    AccCitiesDsp: TDataSetProvider;
    AccCitiesCds: TClientDataSet;
    AccCitiesCdsCities_id: TIntegerField;
    AccCitiesDs: TDataSource;
    cxGroupBox3: TcxGroupBox;
    QuoLinesGrid: TcxGrid;
    QuoLinesGridDBTableView1: TcxGridDBTableView;
    QuoLinesGridDBTableView1QuoServices_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1Selected: TcxGridDBColumn;
    QuoLinesGridDBTableView1Services_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1Timings: TcxGridDBColumn;
    QuoLinesGridDBTableView1Guide: TcxGridDBColumn;
    QuoLinesGridDBTableView1Transport: TcxGridDBColumn;
    QuoLinesGridDBTableView1EntranceFees: TcxGridDBColumn;
    QuoLinesGridDBTableView1DaysName: TcxGridDBColumn;
    QuoLinesGridDBTableView1ServiceDate: TcxGridDBColumn;
    QuoLinesGridDBTableView1StartTime: TcxGridDBColumn;
    QuoLinesGridLevel1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxTransferGrid: TcxGrid;
    cxTransferGridDBTableView1: TcxGridDBTableView;
    cxTransferGridLevel1: TcxGridLevel;
    SightSeeingDsp: TDataSetProvider;
    SightSeeingSds: TSQLDataSet;
    SightSeeingCds: TClientDataSet;
    SightSeeingCdsQuoServices_id: TIntegerField;
    SightSeeingCdsQuotations_id: TIntegerField;
    SightSeeingCdsCities_id: TIntegerField;
    SightSeeingCdsAgentAddressbook_id: TIntegerField;
    SightSeeingCdsServices_id: TIntegerField;
    SightSeeingCdsStartTime: TSQLTimeStampField;
    SightSeeingCdsAC: TBooleanField;
    SightSeeingCdsGuide: TBooleanField;
    SightSeeingCdsTransport: TBooleanField;
    SightSeeingCdsSightSeeing: TBooleanField;
    SightSeeingCdsPlace: TStringField;
    SightSeeingCdsTransferTypes_id: TIntegerField;
    SightSeeingCdsVehicles_id: TIntegerField;
    SightSeeingCdsServiceDay: TIntegerField;
    SightSeeingCdsServiceDate: TSQLTimeStampField;
    SightSeeingCdsNoOfVehicles: TIntegerField;
    SightSeeingCdsCost: TFMTBCDField;
    SightSeeingCdsMasters_id: TStringField;
    SightSeeingCdsFlightNo: TStringField;
    SightSeeingCdsstatus: TIntegerField;
    SightSeeingCdsLineNum: TIntegerField;
    SightSeeingCdsEntranceFees: TBooleanField;
    SightSeeingCdsQuoCities_id: TIntegerField;
    SightSeeingCdsSelected: TBooleanField;
    SightSeeingCdsTimings: TStringField;
    SightSeeingCdsDaysName: TStringField;
    SightSeeingCdsDaysOfOperation: TIntegerField;
    SightSeeingDs: TDataSource;
    cxTransferGridDBTableView1QuoServices_id: TcxGridDBColumn;
    cxTransferGridDBTableView1Services_id: TcxGridDBColumn;
    cxTransferGridDBTableView1StartTime: TcxGridDBColumn;
    cxTransferGridDBTableView1ServiceDate: TcxGridDBColumn;
    cxTransferGridDBTableView1Selected: TcxGridDBColumn;
    TransferSds: TSQLDataSet;
    TransferDsp: TDataSetProvider;
    TransferCds: TClientDataSet;
    TransferDs: TDataSource;
    TransferCdsQuoServices_id: TIntegerField;
    TransferCdsQuotations_id: TIntegerField;
    TransferCdsCities_id: TIntegerField;
    TransferCdsAgentAddressbook_id: TIntegerField;
    TransferCdsServices_id: TIntegerField;
    TransferCdsStartTime: TSQLTimeStampField;
    TransferCdsAC: TBooleanField;
    TransferCdsGuide: TBooleanField;
    TransferCdsTransport: TBooleanField;
    TransferCdsSightSeeing: TBooleanField;
    TransferCdsPlace: TStringField;
    TransferCdsTransferTypes_id: TIntegerField;
    TransferCdsVehicles_id: TIntegerField;
    TransferCdsServiceDay: TIntegerField;
    TransferCdsServiceDate: TSQLTimeStampField;
    TransferCdsNoOfVehicles: TIntegerField;
    TransferCdsCost: TFMTBCDField;
    TransferCdsMasters_id: TStringField;
    TransferCdsFlightNo: TStringField;
    TransferCdsstatus: TIntegerField;
    TransferCdsLineNum: TIntegerField;
    TransferCdsEntranceFees: TBooleanField;
    TransferCdsQuoCities_id: TIntegerField;
    TransferCdsSelected: TBooleanField;
    TransferCdsTimings: TStringField;
    TransferCdsDaysOfOperation: TIntegerField;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton9: TcxButton;
    cxAlternateTransferButton: TcxButton;
    cxCopySightSeeingButton: TcxButton;
    TicketCdsP2P: TIntegerField;
    TicketCdsReserveHotelOvernight: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    SightSeeingCdsLock: TBooleanField;
    TransferCdsLock: TBooleanField;
    QuoLinesGridDBTableView1Lock: TcxGridDBColumn;
    cxTransferGridDBTableView1Lock: TcxGridDBColumn;
    AccCdsReserveHotelOvernight: TBooleanField;
    Label6: TLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    cxTransferGridDBTableView1Vehicles_id: TcxGridDBColumn;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    cxTransferGridDBTableView1NoOfVehicles: TcxGridDBColumn;
    QuoLinesGridDBTableView1NoOfVehicles: TcxGridDBColumn;
    QuoLinesGridDBTableView1Vehicles_id: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DateOut: TcxGridDBBandedColumn;
    QuoLinesGridDBTableView1AgentAddressbook_id: TcxGridDBColumn;
    cxTransferGridDBTableView1AgentAddressbook_id: TcxGridDBColumn;
    Label7: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    TicketCdsCarReportDate: TSQLTimeStampField;
    Label8: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label9: TLabel;
    cxDBTimeEdit4: TcxDBTimeEdit;
    Label10: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    TicketCdsVehicles_id: TIntegerField;
    cxTransferGridDBTableView1AC: TcxGridDBColumn;
    TicketCdsFromStationLookup: TStringField;
    TicketCdsToStationLookup: TStringField;
    DriveTypesSds: TSQLDataSet;
    DriveTypesDsp: TDataSetProvider;
    DriveTypesCds: TClientDataSet;
    DriveTypesDs: TDataSource;
    DriveTypesCdsDriveTypes_id: TIntegerField;
    DriveTypesCdsDriveType: TStringField;
    Label11: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    TicketCdsDriveTypes_id: TIntegerField;
    procedure DisplayLabel;
    procedure HandleTickets;
    function RoundOffDuration (x_duration: string): string;
    procedure cxDisplayScheduleButtonClick(Sender: TObject);
    procedure cxRouteFinderButtonClick(Sender: TObject);
    procedure cxAlternateRouteButtonClick(Sender: TObject);
    procedure InsertRoute;
    procedure EnterFlightInfo;
    procedure EnterTrainInfo;
    procedure AutoAddNightHalts;
    procedure InsertRouteAlternate(x_Hops, x_ModePreference :integer);
    function GetDefaultClass(x_Tickets_id: integer; x_FlightNo: string): integer;
    function GetModeString (x_QuoCities_id: integer): string;
    procedure cxGridMasterDBBandedTableView1Class_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure HandleAccommodation;
    procedure SetDefaultRoomType;
    procedure AccCdsAfterInsert(DataSet: TDataSet);
    procedure AccCdsAfterDelete(DataSet: TDataSet);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);

    procedure HandleSightSeeing;
    procedure SightSeeingCdsAfterPost(DataSet: TDataSet);
    procedure SightSeeingCdsAfterDelete(DataSet: TDataSet);
    procedure SightSeeingCdsCalcFields(DataSet: TDataSet);
    procedure SightSeeingCdsBeforePost(DataSet: TDataSet);
    procedure TransferCdsCalcFields(DataSet: TDataSet);
    procedure TransferCdsBeforePost(DataSet: TDataSet);
    procedure cxAlternateTransferButtonClick(Sender: TObject);
    procedure TransferCdsAfterPost(DataSet: TDataSet);
    procedure TransferCdsAfterDelete(DataSet: TDataSet);
    procedure cxModeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure TicketCdsAfterInsert(DataSet: TDataSet);
    procedure TicketCdsAfterPost(DataSet: TDataSet);
    procedure TicketCdsAfterDelete(DataSet: TDataSet);
    procedure TicketCdsBeforePost(DataSet: TDataSet);
    procedure cxGridMasterDBBandedTableView1FlightNoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    function GetMode: integer;
    procedure cxCopySightSeeingButtonClick(Sender: TObject);
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
  QuoDayEditForm: TQuoDayEditForm;

  _QuoDayEditForm_FromCities_id: integer;
  _QuoDayEditForm_QuoTickets_id: integer;
  _QuoDayEditForm_TravelDate: TDateTime;
  _QuoDayEditForm_Mode: integer;
  _QuoDayEditForm_Result: integer;

  _QuoDayEditForm_ToCities_id: integer;
  _QuoDayEditForm_QuoAccommodation_id: integer;
  _QuoDayEditForm_DateIn: TDateTime;
  _QuoDayEditForm_DateOut: TDateTime;
  _QuoDayEditForm_Nights: integer;

  _QuoDayEditForm_QuoCities_id: integer;
  _QuoDayEditForm_Quotations_id: integer;
  _QuoDayEditForm_ModeOfTravel: integer;
  _QuoDayEditForm_ServiceType: integer;


implementation

uses BackOfficeDM, QuoCitywiseFm, GeneralUt, RouteFinderFm,
  RouteAlternateFm, SearchSortFm, TicketsFm;

{$R *.dfm}

procedure TQuoDayEditForm.HandleSightSeeing;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_GuideInt, x_EntranceFeesInt: integer;
  x_Guide, x_EntranceFees: boolean;
begin

  x_Guide := True;
  if QuoCitywiseForm.MasterCds['Guide'] <> null then
    x_Guide := QuoCitywiseForm.MasterCds['Guide'];

  x_EntranceFees := True;
  if QuoCitywiseForm.MasterCds['EntranceFees'] <> null then
    x_EntranceFees := QuoCitywiseForm.MasterCds['EntranceFees'];

  x_GuideInt := 0;
  if x_Guide = True then
    x_GuideInt := 1;

  x_EntranceFeesInt := 0;
  if x_EntranceFees = True then
    x_EntranceFeesInt := 1;

  //x_TransportInt := 1;
  //if _QuoDayEditForm_ModeOfTravel = 5 then
  //  x_TransportInt := 0;

  QueryString := 'EXEC p_InsertQuoSightSeeing ' +
    IntToStr(_QuoDayEditForm_Quotations_id) + ',' +
    IntToStr(_QuoDayEditForm_QuoCities_id) + ',' +
    IntToStr(x_GuideInt) + ',' +
    IntToStr(x_EntranceFeesInt);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  SightSeeingCds.Active := False;
  SightSeeingCds.Active := True;
end;

function TQuoDayEditForm.GetModeString (x_QuoCities_id: integer): string;
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

function TQuoDayEditForm.GetMode: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Mode, x_count: integer;
begin

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

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


function TQuoDayEditForm.RoundOffDuration (x_duration: string): string;
var
  x_RoundDuration, QueryString: string;
  x_TimeInMin: integer;
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_TimeInMin := (StrToInt(Copy(x_duration,1,2)) * 60) + StrToInt(Copy(x_duration,4,2));

  QueryString := 'select dbo.fn_RoundDriveTime2 (' + IntToStr(x_TimeInMin) + ') as Duration';

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_RoundDuration := '00:00';
  if (not GpSds.EOF) and (GpSds['Duration'] <> null) then
    x_RoundDuration := GpSds['Duration'];

{
  if Copy(x_duration,4,2) > '30' then
    x_RoundDuration := padl(IntToStr(StrToInt(Copy(x_duration,1,2))+1),'0',2) + ':00'
  else if Copy(x_duration,4,2) > '00' then
    x_RoundDuration := Copy(x_duration,1,2) + ':30'
  else
    x_RoundDuration := x_duration;
}

  Result := x_RoundDuration;
end;

function TQuoDayEditForm.GetDefaultClass(x_Tickets_id: integer; x_FlightNo: string): integer;
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

procedure TQuoDayEditForm.AutoAddNightHalts;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_AddNightHalts ' + IntToStr(_QuoDayEditForm_QuoCities_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  TicketCds.Active := False;
  QuoCitywiseForm.Detail1Cds.Active := False;
  QuoCitywiseForm.Detail1Cds.Active := True;
  QuoCitywiseForm.Detail1Cds.Last;
  QuoCitywiseForm.Detail1Cds.Locate('QuoCities_id', _QuoDayEditForm_QuoCities_id, []);
  TicketCds.Active := True;

end;

procedure TQuoDayEditForm.InsertRouteAlternate(x_Hops, x_ModePreference: integer);
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
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

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
procedure TQuoDayEditForm.EnterFlightInfo;
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

procedure TQuoDayEditForm.EnterTrainInfo;
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

procedure TQuoDayEditForm.InsertRoute;
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
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

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

procedure TQuoDayEditForm.DisplayLabel;
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
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['FromCity'] <> null) then
    begin
      x_DriveString := 'I wish to drive from ' + GpSds['FromCity'] + ' to ' + GpSds['ToCity'];

      x_FromCities_id := GpSds['FromCities_id'];
      x_ToCities_id := GpSds['ToCities_id'];

      QueryString := 'SELECT d.Distance, substring(d.time,1,5) as duration ' +
        'FROM Distances d, QuoCities q ' +
        'WHERE d.From_Cities_id = q.FromCities_id ' +
        'AND d.To_Cities_id = q.ToCities_id ' +
        'AND q.QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

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

  if _QuoDayEditForm_QuoTickets_id = 0 then
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

procedure TQuoDayEditForm.HandleTickets;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  if cxDriveCkb.Checked = true then
    exit;

  QueryString := 'SELECT QuoTickets_id FROM QuoCities ' +
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  TicketCds.Locate('QuoTickets_id',GpSds['QuoTickets_id'],[]);
end;

procedure TQuoDayEditForm.cxDisplayScheduleButtonClick(Sender: TObject);
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

procedure TQuoDayEditForm.cxRouteFinderButtonClick(Sender: TObject);
begin
  if RouteFinderForm <> nil then
    begin
      RouteFinderForm.Free;
      RouteFinderForm := nil;
    end;

  _RouteFinderForm_Type := 2;
  _RouteFinderForm_FromCities_id := _QuoDayEditForm_FromCities_id;
  _RouteFinderForm_ToCities_id := _QuoDayEditForm_ToCities_id;
  _RouteFinderForm_TravelDate := _QuoDayEditForm_TravelDate;
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

procedure TQuoDayEditForm.cxAlternateRouteButtonClick(Sender: TObject);
begin

  if (TicketCds['Hops'] = null) or (TicketCds['ModePreference'] = null) then
    raise exception.create ('The route must first be selected form the route finder in order for the alternates to work');

  _RouteAlternateForm_Type := 2;
  _RouteAlternateForm_FromCities_id := _QuoDayEditForm_FromCities_id;
  _RouteAlternateForm_ToCities_id := _QuoDayEditForm_ToCities_id;
  _RouteAlternateForm_Hops := TicketCds['Hops'];
  _RouteAlternateForm_ModePreference := TicketCds['ModePreference'];
  _RouteAlternateForm_Date := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) +
    ' 05:00');

  Self.Enabled := false;

  try

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

  finally

      Self.Enabled := true;

  end;
end;

procedure TQuoDayEditForm.cxGridMasterDBBandedTableView1Class_idPropertiesButtonClick(
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

procedure TQuoDayEditForm.FormDestroy(Sender: TObject);
begin
  QuoDayEditForm := nil;
end;

procedure TQuoDayEditForm.FormCreate(Sender: TObject);
begin

  ItineraryPC.ActivePage := TicketsTab;

  //****************//
  // Tickets
  //****************//

  //Mode -- 1-Insert, 2-Edit
  _QuoDayEditForm_Mode := GetMode;

  DisplayLabel;

  TicketCds.Active := False;

  TicketSds.Active := False;
  TicketSds.Params[0].Value := _QuoDayEditForm_QuoCities_id;
  TicketSds.Active := True;

  TicketCds.Active := True;

  HandleTickets;

  ClassCds.Open;
  TktCitiesCds.Open;
  VehicleCds.Open;
  BackOfficeDataModule.AgentCds.Open;

  //****************//
  // Accommodation
  //****************//

  AccCitiesSds.Close;
  AccCitiesSds.CommandText := 'SELECT Cities_id FROM Cities WHERE Cities_id = ' + IntToStr(_QuoDayEditForm_ToCities_id);
  AccCitiesSds.Open;
  AccCitiesCds.Close;
  AccCitiesCds.Open;

  AccCds.Active := False;

  AccSds.Active := False;
  AccSds.Params[0].Value := _QuoDayEditForm_QuoCities_id;
  AccSds.Active := True;

  AccCds.Active := True;

  HandleAccommodation;

  //ClassCds.Open;
  HotelCds.Open;
  RoomTypeCds.Open;
  BackOfficeDataModule.MealPlanCds.Open;
  DriveTypesCds.Open;

  if AccCds['HotelAddressbook_id'] <> null then
    HotelCds.Locate('Addressbook_id',AccCds['HotelAddressbook_id'],[]);

  if AccCds['RoomTypes_id'] <> null then
    RoomTypeCds.Locate('RoomTypes_id',AccCds['RoomTypes_id'],[]);

  //****************//
  // Sight Seeing
  //****************//
  SightSeeingCds.Active := False;

  SightSeeingSds.Active := False;
  SightSeeingSds.Params[0].Value := _QuoDayEditForm_QuoCities_id;
  SightSeeingSds.Params[1].Value := true;
  SightSeeingSds.Active := True;

  SightSeeingCds.Active := True;

  HandleSightSeeing;

  //****************//
  // Transfers
  //****************//
  TransferCds.Active := False;

  TransferSds.Active := False;
  TransferSds.Params[0].Value := _QuoDayEditForm_QuoCities_id;
  TransferSds.Params[1].Value := false;
  TransferSds.Active := True;

  TransferCds.Active := True;

  BackOfficeDataModule.ServicesCds.Open;

  Width := 1000;
  Height := 640;

end;

procedure TQuoDayEditForm.HandleAccommodation;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Count: integer;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoAccommodation ' +
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count = 0 then
    AccCds.Insert
  else
    AccCds.Locate ('QuoCities_id', _QuoDayEditForm_QuoCities_id, []);

  GpSds.Free;

end;

procedure TQuoDayEditForm.SetDefaultRoomType;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT Default_RoomTypes_id FROM Seasons ' +
    'WHERE ''' + FormatDateTime('mm/dd/yyyy',AccCds['DateIn']) + ''' ' +
    'BETWEEN FromDate AND ToDate ' +
    'AND ' + IntToStr(QuoCitywiseForm.MasterCds['NumPax']) + ' BETWEEN FromPax AND To_Pax ' +
    'AND Addressbook_id = ' + IntToStr(HotelLcmb.EditValue);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['Default_RoomTypes_id'] <> null) and
    ((AccCds.State = dsEdit) or (AccCds.State = dsInsert)) then
    AccCds['RoomTypes_id'] := GpSds['Default_RoomTypes_id'];

  GpSds.Free;

end;


procedure TQuoDayEditForm.AccCdsAfterInsert(DataSet: TDataSet);
begin
  AccCds['Quotations_id'] := _QuoDayEditForm_Quotations_id;
  AccCds['QuoCities_id'] := _QuoDayEditForm_QuoCities_id;
  AccCds['Cities_id'] := _QuoDayEditForm_ToCities_id;
  AccCds['DateIn'] := _QuoDayEditForm_DateIn;
  AccCds['DateOut'] := _QuoDayEditForm_DateOut;
  AccCds['AC'] := True;
  if QuoCitywiseForm.MasterCds['MealPlans_id'] <> null then
    AccCds['MealPlans_id'] := QuoCitywiseForm.MasterCds['MealPlans_id'];
end;

procedure TQuoDayEditForm.AccCdsAfterDelete(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.AccCdsBeforePost(DataSet: TDataSet);
var
  x_nights: integer;
begin
  if AccCds.State = dsInsert then
    begin
      AccCds['QuoAccommodation_id'] := GetNextId('QuoAccommodation','QuoAccommodation_id');
    end;

  if (AccCds['DateIn'] < QuoCitywiseForm.Detail1Cds['DateIn']) or
     (AccCds['DateIn'] > QuoCitywiseForm.Detail1Cds['DateOut']) then
    raise exception.create('Invalid date');

  if (AccCds['DateOut'] < QuoCitywiseForm.Detail1Cds['DateIn']) or
     (AccCds['DateOut'] > QuoCitywiseForm.Detail1Cds['DateOut']) then
    raise exception.create('Invalid date');

//  AccCds['DateIn'] := QuoCitywiseForm.Detail1Cds['DateIn'];
//  AccCds['DateOut'] := QuoCitywiseForm.Detail1Cds['DateOut'];
//  AccCds['Nights'] := QuoCitywiseForm.Detail1Cds['Nights'];

  x_nights := DaysBetween(StrToDate(FormatDateTime('dd/mm/yyyy',AccCds['DateIn'])),
                          StrToDate(FormatDateTime('dd/mm/yyyy',AccCds['DateOut'])));
  AccCds['Nights'] := x_nights;

  if AccCds['HotelAddressbook_id'] = Null then
    Raise Exception.Create('Enter the Hotel');

  if AccCds['RoomTypes_id'] = Null then
    Raise Exception.Create('Enter the Room Type');

  if AccCds['AC'] = Null then
    Raise Exception.Create('Enter enter is A/C room');

  if AccCds['MealPlans_id'] = Null then
    Raise Exception.Create('Enter enter the MealPlan');

  if AccCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  if AccCds['QuoAccommodation_id'] = Null then
    Raise Exception.Create('Enter the QuoAccommodation_id');

  if AccCds['Selected'] = Null then
    AccCds['Selected'] := true;

end;

procedure TQuoDayEditForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if (HotelLcmb.EditValue <> null) and (HotelCds.State <> dsInactive) then
      begin
        HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
        SetDefaultRoomType;
      end;
  except
  end;
end;

procedure TQuoDayEditForm.SightSeeingCdsAfterPost(DataSet: TDataSet);
begin
  SightSeeingCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.SightSeeingCdsAfterDelete(DataSet: TDataSet);
begin
  SightSeeingCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.SightSeeingCdsCalcFields(DataSet: TDataSet);
begin
  if SightSeeingCds['DaysOfOperation'] <> null then
    SightSeeingCds['DaysName'] := DaysToStr(SightSeeingCds['DaysOfOperation']);

end;

procedure TQuoDayEditForm.SightSeeingCdsBeforePost(DataSet: TDataSet);
begin
  if (SightSeeingCds['ServiceDate'] <> null) and (SightSeeingCds['StartTime'] <> null) then
    SightSeeingCds['StartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',SightSeeingCds['ServiceDate']) + ' ' +
      FormatDateTime('HH:mm',SightSeeingCds['StartTime']));
end;

procedure TQuoDayEditForm.TransferCdsCalcFields(DataSet: TDataSet);
begin
  if TransferCds['DaysOfOperation'] <> null then
    TransferCds['DaysName'] := DaysToStr(TransferCds['DaysOfOperation']);

end;

procedure TQuoDayEditForm.TransferCdsBeforePost(DataSet: TDataSet);
begin
  if (TransferCds['ServiceDate'] <> null) and (TransferCds['StartTime'] <> null) then
    TransferCds['StartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TransferCds['ServiceDate']) + ' ' +
      FormatDateTime('HH:mm',TransferCds['StartTime']));
end;

procedure TQuoDayEditForm.cxAlternateTransferButtonClick(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin

  if ItineraryPC.ActivePageIndex <> 3 then
    raise exception.create ('Please go to the "Transfers" tab and then click this button');

  if TransferCds['SightSeeing'] <> 0 then
    exit;

  QueryString := 'SELECT Services_id, Description ' +
    'FROM Services ' +
    'WHERE Cities_id = ' + IntToStr(TransferCds['Cities_id']) + ' ' +
    'AND Transfer = 1 ' +
    'AND Active = 1 ';

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Services_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 300;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Service';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
  begin
    TransferCds.Edit;
    TransferCds['Services_id'] := SearchSortForm.SearchCds['Services_id'];
    TransferCds.Post;
  end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TQuoDayEditForm.TransferCdsAfterPost(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.TransferCdsAfterDelete(DataSet: TDataSet);
begin
  TransferCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.cxModeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if (CxModeLCMB.EditValue <> null) and (BackOfficeDataModule.TicketsCds.State <> dsInactive) then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',CxModeLCMB.EditValue,[]);
  except
  end;

end;

procedure TQuoDayEditForm.TicketCdsAfterInsert(DataSet: TDataSet);
begin
  TicketCds['Quotations_id'] := _QuoDayEditForm_Quotations_id;
  TicketCds['From_Cities_id'] := _QuoDayEditForm_FromCities_id;
  TicketCds['To_Cities_id'] := _QuoDayEditForm_ToCities_id;
  TicketCds['TravelDate'] := _QuoDayEditForm_TravelDate;
  TicketCds['QuoCities_id'] := _QuoDayEditForm_QuoCities_id;
  TicketCds['ReserveHotelOvernight'] := false;  
end;

procedure TQuoDayEditForm.TicketCdsAfterPost(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.TicketCdsAfterDelete(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);
end;

procedure TQuoDayEditForm.TicketCdsBeforePost(DataSet: TDataSet);
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

  if (TicketCds['CarReleaseDate'] <> null) and (TicketCds['Tickets_id'] <> 5) then
    begin
      TicketCds['CarReleaseDate'] := null;
      ShowMessage ('Car Release Date can only be set for Drives');
    end;

  if (TicketCds['CarReportDate'] <> null) and (TicketCds['Tickets_id'] <> 5) then
    begin
      TicketCds['CarReportDate'] := null;
      ShowMessage ('Car Report Date can only be set for Drives');
    end;

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

  if (TicketCds['Tickets_id'] = 2) and (TicketCds['AgentAddressbook_id'] = null) then
    TicketCds['AgentAddressbook_id'] := GetDefaultTrainTicketAgent
  else if (TicketCds['Tickets_id'] = 1) and (TicketCds['AgentAddressbook_id'] = null) then
    TicketCds['AgentAddressbook_id'] := GetDefaultAirTicketAgent;

  if (TicketCds['ETD'] <> null) and (TicketCds['TravelDate'] <> null) then
    TicketCds['ETD'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETD']));

  if (TicketCds['ETA'] <> null) and (TicketCds['TravelDate'] <> null) then
    TicketCds['ETA'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',TicketCds['TravelDate']) + ' ' + FormatDateTime('HH:mm',TicketCds['ETA']));

  if (TicketCds['ETA'] <> null) and (TicketCds['Overnight'] = true) and (TicketCds['Nights'] > 0) then
    TicketCds['ETA'] := IncDay(TicketCds['ETA'],TicketCds['Nights']);

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
        begin
          if (TicketCds['DriveTypes_id']=null) then
            begin
              TicketCds['P2P'] := 1;
              TicketCds['DriveTypes_id'] := 2;
            end
          else if (TicketCds['DriveTypes_id']=2) then
            begin
              TicketCds['P2P'] := 1;
            end
          else
            begin
              TicketCds['P2P'] := 0;
            end
        end
      else if (TicketCds['DriveTypes_id'] = null) then
        begin
          TicketCds['P2P'] := 0;
        end
      else if (TicketCds['DriveTypes_id'] = 2) then
        begin
          TicketCds['P2P'] := 0;
          TicketCds['DriveTypes_id'] := 1;
        end;

    end;

end;

function TQuoDayEditForm.IsP2P(x_FromCities_id, x_ToCities_id: integer; x_Date:TDatetime):boolean;
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


procedure TQuoDayEditForm.cxGridMasterDBBandedTableView1FlightNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  cxDisplayScheduleButtonClick(nil);
end;

procedure TQuoDayEditForm.cxButton1Click(Sender: TObject);
begin
  if SightSeeingCds.State in [dsEdit, dsInsert] then
    SightSeeingCds.Cancel;

  if TransferCds.State in [dsEdit, dsInsert] then
    TransferCds.Cancel;

  if AccCds.State in [dsEdit, dsInsert] then
    AccCds.Post;

  if TicketCds.State in [dsEdit, dsInsert] then
    TicketCds.Cancel;

  _QuoDayEditForm_Result := 2;

  Close;

end;

procedure TQuoDayEditForm.cxButton9Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Count, x_Tickets_id, x_P2P: integer;
  x_Timing, x_ModeString: string;
begin

  //*****************
  //*** SightSeeing
  //*****************
  if SightSeeingCds.State in [dsEdit, dsInsert] then
    SightSeeingCds.Post;

  //*****************
  //*** Transfer
  //*****************

  if TransferCds.State in [dsEdit, dsInsert] then
    TransferCds.Post;

  //*****************
  //*** Accommocation
  //*****************

  if AccCds.State in [dsEdit, dsInsert] then
    AccCds.Post;

  QuoCitywiseForm.AccCds.Close;
  QuoCitywiseForm.AccCds.Open;


  //*****************
  //*** Tickets
  //*****************

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoTickets ' +
    'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  // Check if single hop & drive
  if (x_count = 1) then
    begin

      QueryString := 'SELECT Tickets_id FROM QuoTickets ' +
        'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

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

      x_Timing := FormatDateTime('mm/dd/yyyy',QuoCitywiseForm.Detail1Cds['DateIn']) + ' ' +
         FormatDateTime('HH:mm',QuoCitywiseForm.Detail1Cds['DriveStartTime']) + ' ';

      x_ModeString := GetModeString (_QuoDayEditForm_QuoCities_id);

      x_P2P := 0;
      if TicketCds['P2P'] <> null then
        x_P2P := TicketCds['P2P'];

      QueryString := 'UPDATE QuoCities SET ModeOfTravel = 5, QuoTickets_id = null, ' +
        'DriveStartTime = ''' + x_Timing + ''', ' +
        'ModeString = ''' + x_ModeString + ''', P2P = ' + IntToStr(x_P2P) + ' ' +
        'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end
  else
    begin

      if TicketCds.State in [dsEdit, dsInsert] then
        TicketCds.Post;

      x_ModeString := GetModeString (_QuoDayEditForm_QuoCities_id);

      QueryString := 'UPDATE QuoCities SET ModeOfTravel = ' + IntToStr(TicketCds['Tickets_id']) +
        ', QuoTickets_id = ' + IntToStr(TicketCds['QuoTickets_id']) + ', ' +
        'ModeString = ''' + x_ModeString + ''', P2P = ' + IntToStr(TicketCds['P2P']) + ' ' +
        'WHERE QuoCities_id = ' + IntToStr(_QuoDayEditForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

  _QuoDayEditForm_Result := 1;

  Close;

end;

procedure TQuoDayEditForm.cxCopySightSeeingButtonClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  if MessageDlg ('Are you sure you want to add the same SightSeeing again?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoCopyServices ' + IntToStr(SightSeeingCds['QuoServices_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  SightSeeingCds.Active := False;
  SightSeeingCds.Active := True;

end;

procedure TQuoDayEditForm.cxGridMasterDBBandedTableView1From_TrainStations_idPropertiesButtonClick(
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

procedure TQuoDayEditForm.cxGridMasterDBBandedTableView1To_TrainStations_idPropertiesButtonClick(
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
