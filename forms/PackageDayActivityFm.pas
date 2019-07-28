unit PackageDayActivityFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_QuoDayActivity_Fm, Menus, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  cxLabel, cxDBLabel, cxPC, StdCtrls, cxButtons, ExtCtrls, cxCheckBox, DateUtils,
  cxDBLookupComboBox, cxButtonEdit, cxTimeEdit, cxCalendar, Grids, DBGrids,
  Custom_PackagesDayActivity_Fm;

type
  TPackageDayActivityForm = class(TCustom_PackagesDayActivity_Form)
    cxGridDBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FlightNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ClassLookup: TcxGridDBBandedColumn;
    ModesSds: TSQLDataSet;
    ModesDsp: TDataSetProvider;
    ModesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    TicketsCdsdetails: TStringField;
    ModesDs: TDataSource;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesDs: TDataSource;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    TrainStationSds: TSQLDataSet;
    TrainStationDsp: TDataSetProvider;
    TrainStationCds: TClientDataSet;
    TrainStationCdstrainstations_id: TIntegerField;
    TrainStationCdsstation: TStringField;
    TrainStationCdsrailwaycode: TStringField;
    TrainStationCdsstationname: TStringField;
    TrainStationCdscities_id: TIntegerField;
    TrainStationCdsin_use: TBooleanField;
    TrainStationDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleDs: TDataSource;
    Panel8: TPanel;
    cxGridDBBandedTableView2HotelAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2RoomTypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2MealPlans_id: TcxGridDBBandedColumn;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsroomtypes_id: TIntegerField;
    RoomTypeCdsroomtype: TStringField;
    RoomTypeCdsac: TBooleanField;
    RoomTypeDs: TDataSource;
    MealPlanSds: TSQLDataSet;
    MealPlanDsp: TDataSetProvider;
    MealPlanCds: TClientDataSet;
    MealPlanCdsmealplans_id: TIntegerField;
    MealPlanCdsmealplan: TStringField;
    MealPlanCdsplan: TStringField;
    MealPlanDs: TDataSource;
    AccCdsRoomTypeLookup: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    Panel9: TPanel;
    Panel10: TPanel;
    cxGridDBBandedTableView3AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Services_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3StartTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Guide: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Transport: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3EntranceFees: TcxGridDBBandedColumn;
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesCdsServices_id: TIntegerField;
    ServicesCdsService: TStringField;
    ServicesCdsDescription: TStringField;
    ServicesCdsActive: TBooleanField;
    ServicesDs: TDataSource;
    cxGridDBBandedTableView4AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Services_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4StartTime: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Vehicles_id: TcxGridDBBandedColumn;
    TicketsCdsClassLookup: TStringField;
    cxCityLabel: TcxLabel;
    cxGridDBBandedTableView1PackagesTickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DayNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2PackagesAccommodation_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2DayIn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Nights: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Cities_id: TcxGridDBBandedColumn;
    AccCdsHotelLookup: TStringField;
    cxGridDBBandedTableView3PackagesServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3DayNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Cities_id: TcxGridDBBandedColumn;
    SsCdsAgentAddressbookLookup: TStringField;
    SsCdsServicesLookup: TStringField;
    SsCdsServiceCitiesLookup: TStringField;
    cxGridDBBandedTableView3ServiceCities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4PackagesServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4DayNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Cities_id: TcxGridDBBandedColumn;
    TransfersCdsServiceCities_id: TIntegerField;
    cxGridDBBandedTableView4ServiceCities_id: TcxGridDBBandedColumn;
    TransfersCdsAgentAddressbookLookup: TStringField;
    TransfersCdsServicesLookup: TStringField;
    TransfersCdsServiceCitiesLookup: TStringField;
    TicketsCdsNights: TIntegerField;
    cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn;
    TicketsCdsStartTime: TSQLTimeStampField;
    cxGridDBBandedTableView1StartTime: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TicketsCdsBeforePost(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure cxGridDBBandedTableView1FlightNoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView1Class_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TicketsCdsAfterInsert(DataSet: TDataSet);
    procedure cxGridDBBandedTableView2RoomTypes_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AccCdsAfterInsert(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure cxGridDBBandedTableView3LockPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView3SelectedPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView4SelectedPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGridDBBandedTableView4LockPropertiesEditValueChanged(
      Sender: TObject);
    procedure AccCdsHotelAddressbook_idChange(Sender: TField);
    procedure cxGridDBBandedTableView2HotelAddressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView3AgentAddressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView3Services_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView3ServiceCities_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SsCdsAfterInsert(DataSet: TDataSet);
    procedure cxGridDBBandedTableView4AgentAddressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView4ServiceCities_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView4Services_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SsCdsBeforePost(DataSet: TDataSet);
    procedure TransfersCdsAfterInsert(DataSet: TDataSet);
    procedure TransfersCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsTicketsRecordDuplicate: Boolean;
    procedure EnterFlightInfo;
    procedure DisplayCityLabel;
    procedure SetDefaultRoomType;
    function IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
  public
    { Public declarations }
  end;

var
  PackageDayActivityForm: TPackageDayActivityForm;
  PackageDayActivityForm_Level: integer;
  PackageDayActivityForm_Packages_id: integer;
  PackageDayActivityForm_FormType: integer;
  PackageDayActivityForm_Cities_id: integer;

implementation

uses PrestoFm, BackOfficeDM, GeneralUt, RouteFinderFm, RouteAlternateFm,
  TicketsFm, SearchSortFm, PackagesFm;

{$R *.dfm}

procedure TPackageDayActivityForm.FormCreate(Sender: TObject);
begin
  Caption := 'Day Activity';
  ActivateInCustom;

  TicketsSds.Close;
  TicketsSds.Params[0].Value := PackageDayActivityForm_Packages_id;
  TicketsCds.Close;

  AccSds.Close;
  AccSds.Params[0].Value := PackageDayActivityForm_Packages_id;
  AccCds.Close;

  SsSds.Close;
  SsSds.Params[0].Value := PackageDayActivityForm_Packages_id;
  SsCds.Close;

  TransfersSds.Close;
  TransfersSds.Params[0].Value := PackageDayActivityForm_Packages_id;
  TransfersCds.Close;

  Custom_FormType := PackageDayActivityForm_FormType;

  inherited;

  ModesCds.Open;
  CitiesCds.Open;
  TrainStationCds.Open;
  AgentCds.Open;
  VehicleCds.Open;
  ClassCds.Open;
  HotelCds.Open;

  RoomTypeCds.Open;
  MealPlanCds.Open;

  ServicesCds.Open;

  DisplayCityLabel;

  Top := 10;

  Left:=(Screen.Width-Width)  div 2;
  Top:=(Screen.Height-Height) div 2;

end;

procedure TPackageDayActivityForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  Action := caFree;
end;

procedure TPackageDayActivityForm.FormDestroy(Sender: TObject);
begin
  inherited;
//  QuoDayActivityForm := nil;
end;

procedure TPackageDayActivityForm.ActivateInCustom;
begin
  Custom_TicketsCdsName := 'PackagesTickets';
  Custom_TicketsKeyField := 'PackagesTickets_id';

  Custom_AccCdsName := 'PackagesAccommodation';
  Custom_AccKeyField := 'PackagesAccommodation_id';

  Custom_SsCdsName := 'PackagesServices';
  Custom_SsKeyField := 'PackagesServices_id';

  Custom_TransfersCdsName := 'PackagesServices';
  Custom_TransfersKeyField := 'PackagesServices_id';

  Custom_AdmLevel := PackageDayActivityForm_Level;

  Custom_FormWidth := 1250;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TPackageDayActivityForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure TPackageDayActivityForm.TicketsCdsBeforePost(DataSet: TDataSet);
begin

  if TicketsCds['Packages_id'] = null then
    raise Exception.Create('Enter the Packages_id');

  if (TicketsCds['Tickets_id'] = null) then
    TicketsCds['Tickets_id'] := 5;

  if TicketsCds['Tickets_id'] = 5 then
    TicketsCds['FlightNo'] := '';

  if TicketsCds['DayNo'] = null then
    raise Exception.Create('Please enter the day no.');

  if TicketsCds['From_Cities_id'] = null then
    raise Exception.Create('Please enter "From City"');

  if TicketsCds['To_Cities_id'] = null then
    raise Exception.Create('Please enter "To City"');

  if TicketsCds['Nights'] = null then
    raise Exception.Create('Please enter "Nights"');

  if IsTicketsRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if TicketsCds['PackagesTickets_id'] = null then
    raise Exception.Create('PackagesTickets_id is not assigned');

end;


function TPackageDayActivityForm.IsTicketsRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM PackagesTickets ' +
    'WHERE Packages_id = ' + IntToStr(TicketsCds['Packages_id']) + ' ' +
    'AND DayNo = ' + IntToStr(TicketsCds['DayNo']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(TicketsCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(TicketsCds['To_Cities_id']);

  if TicketsCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (PackagesTickets_id <> ' + IntToStr(TicketsCds['PackagesTickets_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;



procedure TPackageDayActivityForm.cxButtonCloseClick(Sender: TObject);
begin
  inherited;
  Close;

end;


procedure TPackageDayActivityForm.EnterFlightInfo;
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
    'WHERE FlightNo = ''' + TicketsCds['FlightNo'] + ''' ' +
    'AND CONVERT(VARCHAR(5),Arrival,108) = ''' + FormatDateTime('HH:mm',TicketsCds['ETA']) + ''' ' +
    'AND CONVERT(VARCHAR(5),Departure,108) = ''' + FormatDateTime('HH:mm',TicketsCds['ETD']) + ''' ' +
    'AND From_Cities_id = ' + IntToStr(TicketsCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(TicketsCds['To_Cities_id']) + ' ' +
    'AND ''' + FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate']) + ''' >= wef ' +
    'AND ((''' + FormatDateTime('mm/dd/yyyy',TicketsCds['TravelDate']) + ''' <= wet)  OR (wet IS NULL))';

  GpSds.CommandText := QueryString;
  GpSds.Open;

  if not GpSds.EOF then
    begin
      TicketsCds['OverNight'] := GpSds['OverNight'];
      TicketsCds['Nights'] := GpSds['Nights'];
    end
  else
    begin
      TicketsCds['OverNight'] := False;
      TicketsCds['Nights'] := 0;
    end;

  GpSds.Free;

end;


procedure TPackageDayActivityForm.cxGridDBBandedTableView1FlightNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if (TicketsCds['Tickets_id'] = null) or (TicketsCds['Tickets_id'] = 0) then
    exit;

  if (TicketsCds['From_Cities_id'] = null) or (TicketsCds['To_Cities_id'] = null)then
    raise Exception.Create('Please select the From & To Cities');

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if TicketsCds['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if TicketsCds['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if TicketsCds['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if TicketsCds['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := TicketsCds['From_Cities_id'];
  TicketsForm_ToCities_id := TicketsCds['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date(),-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;

  if TicketsForm.ModalResult = mrOK then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;

      if TicketsCds['Tickets_id'] = 1 then
        begin

          if TicketsForm.FlightsCds['FlightNo'] <> null then
            TicketsCds['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

        end;

      if TicketsCds['Tickets_id'] = 2 then
        begin

          if TicketsForm.TrainsCds['TrainNo'] <> null then
            TicketsCds['FlightNo'] := TicketsForm.TrainsCds['TrainNo'];

        end;

      if TicketsCds['Tickets_id'] = 3 then
        begin

          if TicketsForm.BusesCds['busno'] <> null then
            TicketsCds['FlightNo']:= TicketsForm.BusesCds['BusNo'];

        end;

      if TicketsCds['Tickets_id'] = 4 then
        begin

          if TicketsForm.FerriesCds['FerryNo'] <> null then
            TicketsCds['FlightNo']:= TicketsForm.FerriesCds['FerryNo'];

        end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView1Class_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if (TicketsCds['Tickets_id'] = null) or (TicketsCds['Tickets_id'] = 0) then
    exit;

  if TicketsCds.State in [dsBrowse] then
    TicketsCds.Edit;

  QueryString := 'SELECT Class_id, Class ' +
    'FROM Class ' +
    'WHERE Tickets_id =  ' + IntToStr(TicketsCds['Tickets_id']) + ' ' +
    'ORDER BY Class';

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Class_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Class';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Class';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Class_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TicketsCds.State = dsBrowse then
        TicketsCds.Edit;
      TicketsCds['Class_id'] := SearchSortForm.SearchCds['Class_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;


procedure TPackageDayActivityForm.TicketsCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  TicketsCds['Packages_id'] := PackageDayActivityForm_Packages_id;

end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView2RoomTypes_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if AccCds['HotelAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Hotel first');
      exit;
    end;

  if AccCds.State in [dsBrowse] then
    AccCds.Edit;

  x_QueryString := 'SELECT RoomTypes_id, RoomType, Addressbook_id, AC ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(AccCds['HotelAddressbook_id']) + ') ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'RoomTypes_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'RoomType';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Ac';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Room Type';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'AC';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'RoomTypes_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if AccCds.State = dsBrowse then
        AccCds.Edit;
      AccCds['RoomTypes_id'] := SearchSortForm.SearchCds['RoomTypes_id'];
      AccCds['AC'] := SearchSortForm.SearchCds['AC'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TPackageDayActivityForm.AccCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AccCds['Packages_id'] := PackageDayActivityForm_Packages_id;
  AccCds['Cities_id'] := PackageDayActivityForm_Cities_id;
  AccCds['AC'] := True;

end;

procedure TPackageDayActivityForm.AccCdsBeforePost(DataSet: TDataSet);
begin

  if AccCds['HotelAddressbook_id'] = null then
    raise Exception.Create('Enter the Hotel');

  if AccCds['RoomTypes_id'] = null then
    raise Exception.Create('Enter the Room Type');

  if AccCds['AC'] = null then
    raise Exception.Create('Mark if A/C room');

  if AccCds['MealPlans_id'] = null then
    raise Exception.Create('Enter the MealPlan');

  if AccCds['Packages_id'] = null then
    raise Exception.Create('Enter the Packages_id');

  if AccCds['Nights'] = null then
    AccCds['Nights'] := 1;

  if AccCds['Packages_id'] = null then
    raise Exception.Create('Enter the Packages_id');

  if not IsValidHotelRoom (AccCds['HotelAddressbook_id'], AccCds['RoomTypes_id']) then
     raise exception.Create('Invalid combination of Hotel/RoomType');

  inherited;

  if AccCds['PackagesAccommodation_id'] = null then
    raise Exception.Create('Enter the PackagesAccommodation_id');

end;

function TPackageDayActivityForm.IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(x_Addressbook_id) + ') ' +
    'WHERE RoomTypes_id = ' + IntToStr(x_RoomTypes_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_valid := True;

  GpSds.Free;

  Result := x_valid;
end;


procedure TPackageDayActivityForm.cxGridDBBandedTableView3LockPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  SsCds.Post;
end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView3SelectedPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  SsCds.Post;
end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView4SelectedPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  TransfersCds.Post;
end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView4LockPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  TransfersCds.Post;
end;

procedure TPackageDayActivityForm.DisplayCityLabel;
var
  GpSds : TSQLDataSet;
  x_QueryString, x_City: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT City FROM Cities WHERE Cities_id = ' + IntToStr(PackagesForm.MasterCds['To_Cities_id']);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_City := '';
  if (not GpSds.Eof) and (GpSds['City'] <> null) then
    x_City := GpSds['City'];

  cxCityLabel.Caption := x_City;

  GpSds.Free;

end;

procedure TPackageDayActivityForm.SetDefaultRoomType;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT Default_RoomTypes_id FROM Seasons ' +
    'WHERE ''' + FormatDateTime('mm/dd/yyyy',Date()) + ''' ' +
    'BETWEEN FromDate AND ToDate ' +
    'AND Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']);

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


procedure TPackageDayActivityForm.AccCdsHotelAddressbook_idChange(
  Sender: TField);
begin
  inherited;
  if AccCds['HotelAddressbook_id'] <> null then
    SetDefaultRoomType;
end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView2HotelAddressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if AccCds['Cities_id'] = null then
    begin
      ShowMessage('Please enter the City first');
      exit;
    end;

  if AccCds.State in [dsBrowse] then
    AccCds.Edit;

  x_QueryString := 'SELECT * FROM dbo.fn_Addressbook(2,''H'') ' +
    'WHERE Cities_id = ' +  IntToStr(AccCds['Cities_id']) + ' ' +
    'ORDER BY Organisation';
                   
  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Hotel';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if AccCds.State = dsBrowse then
        AccCds.Edit;
      AccCds['HotelAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView3AgentAddressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if SsCds['Cities_id'] = null then
    begin
      ShowMessage('Please enter the City first');
      exit;
    end;

  if SsCds.State in [dsBrowse] then
    SsCds.Edit;

  x_QueryString := 'SELECT * FROM dbo.fn_Addressbook(2,''A'') ' +
    'WHERE Cities_id = ' +  IntToStr(SsCds['Cities_id']) + ' ' +
    'ORDER BY Organisation';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Hotel';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if SsCds.State = dsBrowse then
        SsCds.Edit;
      SsCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView3Services_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if SsCds['AgentAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Agent first');
      exit;
    end;

  if SsCds['ServiceCities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if SsCds.State in [dsBrowse] then
    SsCds.Edit;

  x_QueryString := 'SELECT DISTINCT cs.Services_id, s.Description FROM CostServices cs ' +
    'INNER JOIN Services s ON cs.Services_id = s.Services_id ' +
    'WHERE cs.Addressbook_id = ' +  IntToStr(SsCds['AgentAddressbook_id']) + ' ' +
    'AND cs.Cities_id = ' +  IntToStr(SsCds['ServiceCities_id']) + ' ' +
    'AND s.Transfer = 0 ' +
    'ORDER BY s.Description';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
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
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Service';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if SsCds.State = dsBrowse then
        SsCds.Edit;
      SsCds['Services_id'] := SearchSortForm.SearchCds['Services_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView3ServiceCities_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if SsCds['AgentAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Agent first');
      exit;
    end;

  if SsCds.State in [dsBrowse] then
    SsCds.Edit;

  x_QueryString := 'SELECT DISTINCT cs.Cities_id, c.City FROM CostServices cs ' +
    'INNER JOIN Services s ON cs.Services_id = s.Services_id ' +
    'INNER JOIN Cities c ON s.Cities_id = c.Cities_id ' +
    'WHERE cs.Addressbook_id = ' +  IntToStr(SsCds['AgentAddressbook_id']) + ' ' +
    'AND s.Transfer = 0 ' +
    'ORDER BY c.City';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Cities_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if SsCds.State = dsBrowse then
        SsCds.Edit;
      SsCds['ServiceCities_id'] := SearchSortForm.SearchCds['Cities_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TPackageDayActivityForm.SsCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  SsCds['Packages_id'] := PackageDayActivityForm_Packages_id;
  SsCds['Sightseeing'] := true;

  SsCds['Guide'] := true;
  SsCds['Transport'] := true;
  SsCds['EntranceFees'] := false;
end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView4AgentAddressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if TransfersCds['Cities_id'] = null then
    begin
      ShowMessage('Please enter the City first');
      exit;
    end;

  if TransfersCds.State in [dsBrowse] then
    TransfersCds.Edit;

  x_QueryString := 'SELECT * FROM dbo.fn_Addressbook(2,''A'') ' +
    'WHERE Cities_id = ' +  IntToStr(TransfersCds['Cities_id']) + ' ' +
    'ORDER BY Organisation';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Hotel';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TransfersCds.State = dsBrowse then
        TransfersCds.Edit;
      TransfersCds['AgentAddressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView4ServiceCities_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if TransfersCds['AgentAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Agent first');
      exit;
    end;

  if TransfersCds.State in [dsBrowse] then
    TransfersCds.Edit;

  x_QueryString := 'SELECT DISTINCT cs.Cities_id, c.City FROM CostServices cs ' +
    'INNER JOIN Services s ON cs.Services_id = s.Services_id ' +
    'INNER JOIN Cities c ON s.Cities_id = c.Cities_id ' +
    'WHERE cs.Addressbook_id = ' +  IntToStr(TransfersCds['AgentAddressbook_id']) + ' ' +
    'AND s.Transfer = 1 ' +
    'ORDER BY c.City';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Cities_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TransfersCds.State = dsBrowse then
        TransfersCds.Edit;
      TransfersCds['ServiceCities_id'] := SearchSortForm.SearchCds['Cities_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TPackageDayActivityForm.cxGridDBBandedTableView4Services_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  x_QueryString: string;
  i: integer;
begin
  inherited;

  if TransfersCds['AgentAddressbook_id'] = null then
    begin
      ShowMessage('Please enter the Agent first');
      exit;
    end;

  if TransfersCds['ServiceCities_id'] = null then
    begin
      ShowMessage('Please enter the Service City first');
      exit;
    end;

  if TransfersCds.State in [dsBrowse] then
    TransfersCds.Edit;

  x_QueryString := 'SELECT DISTINCT cs.Services_id, s.Description FROM CostServices cs ' +
    'INNER JOIN Services s ON cs.Services_id = s.Services_id ' +
    'WHERE cs.Addressbook_id = ' +  IntToStr(TransfersCds['AgentAddressbook_id']) + ' ' +
    'AND cs.Cities_id = ' +  IntToStr(TransfersCds['ServiceCities_id']) + ' ' +
    'AND s.Transfer = 1 ' +
    'ORDER BY s.Description';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := x_QueryString;
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
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 250;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Service';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if TransfersCds.State = dsBrowse then
        TransfersCds.Edit;
      TransfersCds['Services_id'] := SearchSortForm.SearchCds['Services_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TPackageDayActivityForm.SsCdsBeforePost(DataSet: TDataSet);
begin

  if SsCds['AgentAddressbook_id'] = null then
    raise Exception.Create('Enter the Agent');

  if SsCds['Services_id'] = null then
    raise Exception.Create('Enter the service');

  if SsCds['Transport'] = null then
    SsCds['Transport'] := true;

  if (SsCds['Transport'] = true) and (SsCds['Vehicles_id'] = null) then
    raise Exception.Create('Enter the Vehicle');

  if SsCds['Guide'] = null then
    SsCds['Guide'] := false;

  if SsCds['EntranceFees'] = null then
    SsCds['EntranceFees'] := true;

  if SsCds['Packages_id'] = null then
    raise Exception.Create('Enter the Packages_id');

  inherited;

  if SsCds['PackagesServices_id'] = null then
    raise Exception.Create('Enter the PackagesServices_id');

end;

procedure TPackageDayActivityForm.TransfersCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;

  TransfersCds['Packages_id'] := PackageDayActivityForm_Packages_id;
  TransfersCds['Sightseeing'] := false;
  TransfersCds['AC'] := true;

end;

procedure TPackageDayActivityForm.TransfersCdsBeforePost(
  DataSet: TDataSet);
begin

  if TransfersCds['AgentAddressbook_id'] = null then
    raise Exception.Create('Enter the Agent');

  if TransfersCds['Services_id'] = null then
    raise Exception.Create('Enter the service');

  if TransfersCds['Vehicles_id'] = null then
    raise Exception.Create('Enter the vehicle');

  if TransfersCds['Services_id'] = null then
    raise Exception.Create('Enter the service');

  if TransfersCds['Packages_id'] = null then
    raise Exception.Create('Enter the Packages_id');

  inherited;

  if TransfersCds['PackagesServices_id'] = null then
    raise Exception.Create('Enter the PackagesServices_id');

end;

end.
