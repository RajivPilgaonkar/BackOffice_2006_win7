unit TicketsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_Tickets_MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Buttons, DateUtils, Math, cxButtonEdit, cxCalendar,
  cxTimeEdit;

type
  TTicketsForm = class(TCustom_Tickets_MG_Form)
    FromCitySds: TSQLDataSet;
    FromCityDsp: TDataSetProvider;
    FromCityCds: TClientDataSet;
    FromCityCdsCities_id: TIntegerField;
    FromCityCdsCity: TStringField;
    FromCityDs: TDataSource;
    Label2: TLabel;
    cxFromCityLcmb: TcxLookupComboBox;
    Label1: TLabel;
    cxToCityLcmb: TcxLookupComboBox;
    Label3: TLabel;
    ToCitySds: TSQLDataSet;
    ToCityDsp: TDataSetProvider;
    ToCityCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    ToCityDs: TDataSource;
    FlightsCdsflightsectorfaresindia_id: TIntegerField;
    FlightsCdsflights_id: TIntegerField;
    FlightsCdsdays: TSmallintField;
    FlightsCdsflightno: TStringField;
    FlightsCdsstops: TSmallintField;
    FlightsCdsdomestic: TBooleanField;
    FlightsCdswef: TSQLTimeStampField;
    FlightsCdswet: TSQLTimeStampField;
    FlightsCdsovernight: TBooleanField;
    FlightsCdsfrom_cities_id: TIntegerField;
    FlightsCdsto_cities_id: TIntegerField;
    FlightsCdsaircrafttypes_id: TIntegerField;
    FlightsCdsdeparture: TSQLTimeStampField;
    FlightsCdsarrival: TSQLTimeStampField;
    FlightsCdsduration: TStringField;
    FlightsCdsjcl: TFMTBCDField;
    FlightsCdsycl: TFMTBCDField;
    FlightsCdsjcl_usd: TFMTBCDField;
    FlightsCdsycl_usd: TFMTBCDField;
    FlightsCdsConstant1_amt: TFMTBCDField;
    FlightsCdsConstant2_amt: TFMTBCDField;
    FlightsCdsImportFlag: TIntegerField;
    FlightsCdsFlightAirline: TStringField;
    FlightsCdsFlightVia: TStringField;
    FlightsCdsFlightCompanies_id: TIntegerField;
    cxGrid1DBBandedTableView1flightsectorfaresindia_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1flights_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1days: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1flightno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1stops: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1domestic: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1overnight: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1from_cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1to_cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1aircrafttypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1departure: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1arrival: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1duration: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1jcl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ycl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1jcl_usd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ycl_usd: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Constant1_amt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Constant2_amt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ImportFlag: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FlightAirline: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FlightVia: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FlightCompanies_id: TcxGridDBBandedColumn;
    BusesCdsbussectorfaresindia_id: TIntegerField;
    BusesCdsbuses_id: TIntegerField;
    BusesCdsdays: TSmallintField;
    BusesCdsbusno: TStringField;
    BusesCdsstops: TSmallintField;
    BusesCdsdomestic: TBooleanField;
    BusesCdswef: TSQLTimeStampField;
    BusesCdswet: TSQLTimeStampField;
    BusesCdsovernight: TBooleanField;
    BusesCdsfrom_cities_id: TIntegerField;
    BusesCdsto_cities_id: TIntegerField;
    BusesCdsdeparture: TSQLTimeStampField;
    BusesCdsarrival: TSQLTimeStampField;
    BusesCdsduration: TStringField;
    BusesCdscostnonac: TFMTBCDField;
    BusesCdscostac: TFMTBCDField;
    BusesCdscurrencies_id: TIntegerField;
    BusesCdscost: TBCDField;
    BusesCdsclass_id: TIntegerField;
    FerriesCdsferries_id: TIntegerField;
    FerriesCdsdays: TSmallintField;
    FerriesCdsferryno: TStringField;
    FerriesCdsdomestic: TBooleanField;
    FerriesCdswef: TSQLTimeStampField;
    FerriesCdswet: TSQLTimeStampField;
    FerriesCdsfrom_cities_id: TIntegerField;
    FerriesCdsto_cities_id: TIntegerField;
    FerriesCdsdeparture: TSQLTimeStampField;
    FerriesCdsnights: TIntegerField;
    FerriesCdsclass_id: TIntegerField;
    FerriesCdscost: TBCDField;
    FerriesCdscurrencies_id: TIntegerField;
    FerriesCdsarrival: TSQLTimeStampField;
    FerriesCdsduration: TStringField;
    cxGridDBBandedTableView2bussectorfaresindia_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2buses_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2days: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2busno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2stops: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2domestic: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2wet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2overnight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2from_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2to_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2departure: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2arrival: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2duration: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2costnonac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2costac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2class_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ferries_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3days: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ferryno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3domestic: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3wet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3from_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3to_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3departure: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3nights: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3class_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3arrival: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3duration: TcxGridDBBandedColumn;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassDS: TDataSource;
    ClassCdsClass: TStringField;
    ClassCdsClass_id: TIntegerField;
    FlightsCdsDaysName: TStringField;
    BusesCdsDaysName: TStringField;
    FerriesCdsDaysName: TStringField;
    rainCostsinExcel1: TMenuItem;
    TrainsCdsTmpTrains_id: TIntegerField;
    TrainsCdsWef: TSQLTimeStampField;
    TrainsCdsWet: TSQLTimeStampField;
    TrainsCdsDayOfOperation: TSmallintField;
    TrainsCdsArrival: TSQLTimeStampField;
    TrainsCdsDeparture: TSQLTimeStampField;
    TrainsCdskms: TIntegerField;
    TrainsCdsTrainNo: TStringField;
    TrainsCdsTrains_id: TIntegerField;
    TrainsCdsT1C: TFMTBCDField;
    TrainsCdsT1C_AC: TFMTBCDField;
    TrainsCdsT2C: TFMTBCDField;
    TrainsCdsT2C_AC_2T: TFMTBCDField;
    TrainsCdsT2C_AC_3T: TFMTBCDField;
    TrainsCdsAC_CC: TFMTBCDField;
    TrainsCdsAC_CCE: TFMTBCDField;
    TrainsCdsSleeper: TFMTBCDField;
    TrainsCdsTrainCategories_id: TIntegerField;
    TrainsCdsTrainName: TStringField;
    TrainsCdsFromStation: TStringField;
    TrainsCdsToStation: TStringField;
    TrainsCdsFromStations_id: TIntegerField;
    TrainsCdsToStations_id: TIntegerField;
    TrainsCdsNights: TIntegerField;
    TrainsCdsOvernight: TBooleanField;
    TrainsCdsDays: TStringField;
    TrainsCdsSF: TBooleanField;
    TrainsCdstf_kms: TIntegerField;
    cxGridDBBandedTableView1TmpTrains_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Wet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DayOfOperation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Arrival: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Departure: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1kms: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TrainNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Trains_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1T1C: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1T1C_AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1T2C: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1T2C_AC_2T: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1T2C_AC_3T: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AC_CC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AC_CCE: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Sleeper: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TrainCategories_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TrainName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FromStation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ToStation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FromStations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ToStations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Overnight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Days: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SF: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Tf_Kms: TcxGridDBBandedColumn;
    cxWefDateEdit: TcxDateEdit;
    FlightCompaniesSds: TSQLDataSet;
    FlightCompaniesDsp: TDataSetProvider;
    FlightCompaniesCds: TClientDataSet;
    FlightCompaniesCdsFlightCompanies_id: TIntegerField;
    FlightCompaniesCdsFlightCompany: TStringField;
    FlightCompaniesDS: TDataSource;
    AirCraftSds: TSQLDataSet;
    AirCraftDsp: TDataSetProvider;
    AirCraftCds: TClientDataSet;
    AirCraftCdsAircraftTypes_id: TIntegerField;
    AirCraftCdsAircraft: TStringField;
    AirCraftDS: TDataSource;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    TrainsCdscategory: TStringField;
    cxGridDBBandedTableView1Category: TcxGridDBBandedColumn;
    cxButtonCancel: TcxButton;
    cxButtonOk: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FlightsCdsBeforePost(DataSet: TDataSet);
    procedure cxFromCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxToCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure FlightsCdsAfterInsert(DataSet: TDataSet);
    procedure FlightsCdsBeforeInsert(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1daysPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FlightsCdsCalcFields(DataSet: TDataSet);
    procedure BusesCdsBeforePost(DataSet: TDataSet);
    procedure BusesCdsAfterInsert(DataSet: TDataSet);
    procedure BusesCdsBeforeInsert(DataSet: TDataSet);
    procedure cxGridDBBandedTableView2daysPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure BusesCdsCalcFields(DataSet: TDataSet);
    procedure FerriesCdsBeforePost(DataSet: TDataSet);
    procedure FerriesCdsAfterInsert(DataSet: TDataSet);
    procedure FerriesCdsBeforeInsert(DataSet: TDataSet);
    procedure cxGridDBBandedTableView3daysPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FerriesCdsCalcFields(DataSet: TDataSet);
    procedure rainCostsinExcel1Click(Sender: TObject);
    procedure cxWefDateEditPropertiesEditValueChanged(Sender: TObject);
  private
    procedure ActivateInCustom;
    procedure FilterData;
    function IsFlightRecordDuplicate: Boolean;
    function IsBusRecordDuplicate: Boolean;
    function IsFerryRecordDuplicate: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TicketsForm: TTicketsForm;
  TicketsForm_Level: integer;
  TicketsForm_FormType: integer;
  TicketsForm_Type: integer;
  TicketsForm_FromCities_id: integer;
  TicketsForm_ToCities_id: integer;
  TicketsForm_Wef: TDateTime;
  TicketsForm_NullDate: TDateTime;

implementation

uses GeneralUt, BackOfficeDM, SelOprFm, TrainTicketsPriceListFm;

{$R *.dfm}

procedure TTicketsForm.FormCreate(Sender: TObject);
begin

  TicketsForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  if TicketsForm_FormType = 1 then
    begin
      cxButtonCancel.Visible := false;
      cxButtonOk.Visible := false;
    end
  else
    begin
      cxButtonClose.Visible := false;
    end;

  cxTabSheet1.TabVisible := false;
  cxTabSheet2.TabVisible := false;
  cxTabSheet3.TabVisible := false;
  cxTabSheet4.TabVisible := false;

  if (TicketsForm_Type = 1) then
    begin
      FlightsSds.Params[0].Value := TicketsForm_Wef;
      FlightsSds.Params[1].Value := -1;
      FlightsSds.Params[2].Value := -1;
      cxPageControl1.ActivePageIndex := 0;
      cxTabSheet1.TabVisible := true;
    end
  else if (TicketsForm_Type = 2) then
    begin
      TrainsSds.Params[0].Value := -1;
      TrainsSds.Params[1].Value := -1;
      TrainsSds.Params[2].Value := TicketsForm_Wef;
      cxPageControl1.ActivePageIndex := 1;
      cxTabSheet2.TabVisible := true;
      cxButtonUtilities.Visible := true;
    end
  else if (TicketsForm_Type = 3) then
    begin
      BusesSds.Params[0].Value := TicketsForm_Wef;
      BusesSds.Params[1].Value := -1;
      BusesSds.Params[2].Value := -1;
      cxPageControl1.ActivePageIndex := 2;
      cxTabSheet3.TabVisible := true;
      ClassSds.Params[0].Value := 3;
    end
  else if (TicketsForm_Type = 4) then
    begin
      FerriesSds.Params[0].Value := TicketsForm_Wef;
      FerriesSds.Params[1].Value := -1;
      FerriesSds.Params[2].Value := -1;
      cxPageControl1.ActivePageIndex := 3;
      cxTabSheet4.TabVisible := true;
      ClassSds.Params[0].Value := 4;
    end;

  inherited;

  FromCityCds.Open;
  ToCityCds.Open;
  ClassCds.Open;
  FlightCompaniesCds.Open;
  AirCraftCds.Open;
  CurrencyCds.Open;

  cxFromCityLcmb.EditValue := TicketsForm_FromCities_id;
  cxToCityLcmb.EditValue := TicketsForm_ToCities_id;
  cxWefDateEdit.EditValue := TicketsForm_Wef;

end;

procedure TTicketsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTicketsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TicketsForm := nil;
end;

procedure TTicketsForm.ActivateInCustom;
begin
  Custom_AdmLevel := TicketsForm_Level;

  Custom_FlightsCdsName := 'FlightSectorFaresIndia';
  Custom_FlightsKeyField := 'FlightSectorFaresIndia_id';

  Custom_TrainsCdsName := 'TmpTrains';
  Custom_TrainsKeyField := 'Trains_id';

  Custom_BusesCdsName := 'BusSectorFaresIndia';
  Custom_BusesKeyField := 'BusSectorFaresIndia_id';

  Custom_FerriesCdsName := 'Ferries';
  Custom_FerriesKeyField := 'Ferries_id';

  Custom_FormWidth := 985;
  Custom_FormHeight := 630;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

  cxButtonOk.Left := Ceil(Custom_FormWidth/2) + 20;
  cxButtonCancel.Left := Ceil(Custom_FormWidth/2) - 20 - cxButtonCancel.Width;

end;


procedure TTicketsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  if cxPageControl1.ActivePageIndex = 0 then
    cxGrid1.SetFocus
  else if cxPageControl1.ActivePageIndex = 1 then
    cxGrid2.SetFocus
  else if cxPageControl1.ActivePageIndex = 2 then
    cxGrid3.SetFocus
  else if cxPageControl1.ActivePageIndex = 3 then
    cxGrid4.SetFocus;
end;

procedure TTicketsForm.FlightsCdsBeforePost(DataSet: TDataSet);
var
  x_hours_str,x_min_str: string;
  x_hours: double;
begin

  FlightsCds['From_Cities_id'] := cxFromCityLcmb.EditValue;
  FlightsCds['To_Cities_id'] := cxToCityLcmb.EditValue;

  if FlightsCds['From_Cities_id'] = null then
    raise Exception.Create ('Please enter the From City');

  if FlightsCds['To_Cities_id'] = null then
    raise Exception.Create ('Please enter the To City');

  if FlightsCds['FlightCompanies_id'] = null then
    raise Exception.Create ('Please enter the Airline Company');

  if FlightsCds['FlightNo'] = null then
    raise Exception.Create ('Please enter the Flight No');

  if FlightsCds['Days'] = null then
    raise Exception.Create ('Please enter the Opearating Days');

  if FlightsCds['Wef'] = null then
    raise Exception.Create ('Please enter the wef date');

  if FlightsCds['Overnight'] = null then
    raise Exception.Create ('Please enter if overnight');

  if FlightsCds['Arrival'] = null then
    raise Exception.Create ('Please enter the arrival time');

  if FlightsCds['Departure'] = null then
    raise Exception.Create ('Please enter the departure time');

  x_hours := HourSpan (FlightsCds['Departure'],FlightsCds['Arrival']);
  x_hours_str := padl(trim(IntToStr(floor(x_hours))),'0',2);
  x_min_str := padl(trim(FormatFloat('0', (x_hours - floor(x_hours))*60.0)),'0',2);
  FlightsCds['Duration'] := x_hours_str + ':' + x_min_str;

  if IsFlightRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if FlightsCds['FlightSectorFaresIndia_id'] = null then
    raise Exception.Create('FlightSectorFaresIndia_id is not assigned');

end;

function TTicketsForm.IsFlightRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM FlightSectorFaresIndia ' +
    'WHERE From_Cities_id = ' + IntToStr(FlightsCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(FlightsCds['To_Cities_id']) + ' ' +
    'AND FlightCompanies_id = ' + IntToStr(FlightsCds['FlightCompanies_id']) + ' ' +
    'AND FlightNo = ' + QuotedStr(FlightsCds['FlightNo']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FlightsCds['wef']));

  if FlightsCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (FlightSectorFaresIndia_id <> ' + IntToStr(FlightsCds['FlightSectorFaresIndia_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TTicketsForm.FilterData;
var
  x_FromCities_id, x_ToCities_id: integer;
  x_wef: TDateTime;
begin

  x_FromCities_id := -1;
  x_ToCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  x_wef := StrToDate('01/01/' + IntToStr(YearOf(Date)));

  if cxWefDateEdit.EditValue <> null then
    x_wef := cxWefDateEdit.EditValue;

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      FlightsCds.Active := False;
      FlightsSds.Active := False;

      FlightsSds.Params[0].Value := x_Wef;
      FlightsSds.Params[1].Value := x_FromCities_id;
      FlightsSds.Params[2].Value := x_ToCities_id;

      FlightsSds.Active := True;
      FlightsCds.Active := True;
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      TrainsCds.Active := False;
      TrainsSds.Active := False;

      TrainsSds.Params[0].Value := x_FromCities_id;
      TrainsSds.Params[1].Value := x_ToCities_id;
      TrainsSds.Params[2].Value := x_Wef;

      TrainsSds.Active := True;
      TrainsCds.Active := True;
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      BusesCds.Active := False;
      BusesSds.Active := False;

      BusesSds.Params[0].Value := x_Wef;
      BusesSds.Params[1].Value := x_FromCities_id;
      BusesSds.Params[2].Value := x_ToCities_id;

      BusesSds.Active := True;
      BusesCds.Active := True;
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin
      FerriesCds.Active := False;
      FerriesSds.Active := False;

      FerriesSds.Params[0].Value := x_Wef;
      FerriesSds.Params[1].Value := x_FromCities_id;
      FerriesSds.Params[2].Value := x_ToCities_id;

      FerriesSds.Active := True;
      FerriesCds.Active := True;
    end;

end;


procedure TTicketsForm.cxFromCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_FromCities_id: integer;
begin
  inherited;

  x_FromCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  FromCityCds.Locate('Cities_id', x_FromCities_id, []);

  FilterData;

end;

procedure TTicketsForm.cxToCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_ToCities_id: integer;
begin
  inherited;

  x_ToCities_id := -1;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  ToCityCds.Locate('Cities_id', x_ToCities_id, []);

  FilterData;

end;

procedure TTicketsForm.FlightsCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxFromCityLCMB.EditValue = null then
    exit;

  if cxToCityLCMB.EditValue = null then
    exit;

  if cxWefDateEdit.EditValue = null then
    exit;

  FlightsCds['From_Cities_id'] := cxFromCityLCMB.EditValue;
  FlightsCds['To_Cities_id'] := cxToCityLCMB.EditValue;
  FlightsCds['Wef'] := cxWefDateEdit.EditValue;

  FlightsCds['Days'] := 127;
  FlightsCds['Stops'] := 0;
  FlightsCds['Overnight'] := False;
  FlightsCds['JCL']:= 0;
  FlightsCds['YCL']:= 0;
  FlightsCds['JCL_USD']:= 0;
  FlightsCds['YCL_USD']:= 0;
  FlightsCds['Domestic']:= true;

end;

procedure TTicketsForm.FlightsCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cxFromCityLCMB.EditValue = null then
    Abort;

  if cxToCityLCMB.EditValue = null then
    Abort;

  if cxWefDateEdit.EditValue = null then
    Abort;

end;

procedure TTicketsForm.cxGrid1DBBandedTableView1daysPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if FlightsCds.State = dsBrowse then
    FlightsCds.Edit;

  if SelOprForm = nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if FlightsCds['DaysName'] <> null then
    _InitStr := FlightsCds['DaysName'];

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    FlightsCds['Days'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;

end;

procedure TTicketsForm.FlightsCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if FlightsCds['Days'] <> null then
    FlightsCds['DaysName'] := DaysToStr(FlightsCds['Days']);
end;

procedure TTicketsForm.BusesCdsBeforePost(DataSet: TDataSet);
var
  x_hours_str,x_min_str: string;
  x_hours: double;
begin

  BusesCds['From_Cities_id'] := cxFromCityLcmb.EditValue;
  BusesCds['To_Cities_id'] := cxToCityLcmb.EditValue;

  if BusesCds['From_Cities_id'] = null then
    raise Exception.Create ('Please enter the From City');

  if BusesCds['To_Cities_id'] = null then
    raise Exception.Create ('Please enter the To City');

  if BusesCds['BusNo'] = null then
    raise Exception.Create ('Please enter the Bus No');

  if BusesCds['Days'] = null then
    raise Exception.Create ('Please enter the Opearating Days');

  if BusesCds['Wef'] = null then
    raise Exception.Create ('Please enter the wef date');

  if BusesCds['Overnight'] = null then
    raise Exception.Create ('Please enter if overnight');

  if BusesCds['Arrival'] = null then
    raise Exception.Create ('Please enter the arrival time');

  if BusesCds['Departure'] = null then
    raise Exception.Create ('Please enter the departure time');

  if BusesCds['Class_id'] = null then
    raise Exception.Create ('Please enter the class');

  x_hours := HourSpan (BusesCds['Departure'],BusesCds['Arrival']);
  x_hours_str := padl(trim(IntToStr(floor(x_hours))),'0',2);
  x_min_str := padl(trim(FormatFloat('0', (x_hours - floor(x_hours))*60.0)),'0',2);
  BusesCds['Duration'] := x_hours_str + ':' + x_min_str;

  if IsBusRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if BusesCds['BusSectorFaresIndia_id'] = null then
    raise Exception.Create('BusSectorFaresIndia_id is not assigned');

end;

function TTicketsForm.IsBusRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM BusSectorFaresIndia ' +
    'WHERE From_Cities_id = ' + IntToStr(BusesCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(BusesCds['To_Cities_id']) + ' ' +
    'AND BusNo = ' + QuotedStr(BusesCds['BusNo']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', BusesCds['wef']));

  if BusesCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (BusSectorFaresIndia_id <> ' + IntToStr(BusesCds['BusSectorFaresIndia_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TTicketsForm.BusesCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxFromCityLCMB.EditValue = null then
    exit;

  if cxToCityLCMB.EditValue = null then
    exit;

  if cxWefDateEdit.EditValue = null then
    exit;

  BusesCds['From_Cities_id'] := cxFromCityLCMB.EditValue;
  BusesCds['To_Cities_id'] := cxToCityLCMB.EditValue;
  BusesCds['Wef'] := cxWefDateEdit.EditValue;

  BusesCds['Days'] := 127;
  BusesCds['Overnight'] := False;
  BusesCds['Domestic']:= true;

  BusesCds['Currencies_id'] := GetDefaultCurrency;

end;

procedure TTicketsForm.BusesCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cxFromCityLCMB.EditValue = null then
    Abort;

  if cxToCityLCMB.EditValue = null then
    Abort;

  if cxWefDateEdit.EditValue = null then
    Abort;

end;

procedure TTicketsForm.cxGridDBBandedTableView2daysPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if BusesCds.State = dsBrowse then
    BusesCds.Edit;

  if SelOprForm = nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if BusesCds['DaysName'] <> null then
    _InitStr := BusesCds['DaysName'];

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    BusesCds['Days'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;

end;

procedure TTicketsForm.BusesCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if BusesCds['Days'] <> null then
    BusesCds['DaysName'] := DaysToStr(BusesCds['Days']);
end;

procedure TTicketsForm.FerriesCdsBeforePost(DataSet: TDataSet);
var
  x_hours_str,x_min_str: string;
  x_hours: double;
begin
  inherited;

  FerriesCds['From_Cities_id'] := cxFromCityLcmb.EditValue;
  FerriesCds['To_Cities_id'] := cxToCityLcmb.EditValue;

  if FerriesCds['From_Cities_id'] = null then
    raise Exception.Create ('Please enter the From City');

  if FerriesCds['To_Cities_id'] = null then
    raise Exception.Create ('Please enter the To City');

  if FerriesCds['FerryNo'] = null then
    raise Exception.Create ('Please enter the Ferry No');

  if FerriesCds['Days'] = null then
    raise Exception.Create ('Please enter the Opearating Days');

  if FerriesCds['Wef'] = null then
    raise Exception.Create ('Please enter the wef date');

  if FerriesCds['Arrival'] = null then
    raise Exception.Create ('Please enter the arrival time');

  if FerriesCds['Departure'] = null then
    raise Exception.Create ('Please enter the departure time');

  if FerriesCds['Class_id'] = null then
    raise Exception.Create ('Please enter the class');

  if FerriesCds['Cost'] = null then
    FerriesCds['Cost'] := 0.0;

  x_hours := HourSpan (FerriesCds['Departure'],FerriesCds['Arrival']);
  x_hours_str := padl(trim(IntToStr(floor(x_hours))),'0',2);
  x_min_str := padl(trim(FormatFloat('0', (x_hours - floor(x_hours))*60.0)),'0',2);
  FerriesCds['Duration'] := x_hours_str + ':' + x_min_str;

  if IsFerryRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if FerriesCds['Ferries_id'] = null then
    raise Exception.Create('Ferries_id is not assigned');

end;

function TTicketsForm.IsFerryRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Ferries ' +
    'WHERE From_Cities_id = ' + IntToStr(FerriesCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(FerriesCds['To_Cities_id']) + ' ' +
    'AND CONVERT(VARCHAR(5),Departure,108) = ' + QuotedStr(Copy(FerriesCds['Departure'],12,5)) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FerriesCds['wef']));

  if FerriesCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Ferries_id <> ' + IntToStr(FerriesCds['Ferries_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TTicketsForm.FerriesCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxFromCityLCMB.EditValue = null then
    exit;

  if cxToCityLCMB.EditValue = null then
    exit;

  if cxWefDateEdit.EditValue = null then
    exit;

  FerriesCds['From_Cities_id'] := cxFromCityLCMB.EditValue;
  FerriesCds['To_Cities_id'] := cxToCityLCMB.EditValue;
  FerriesCds['Wef'] := cxWefDateEdit.EditValue;

  FerriesCds['Days'] := 127;
  FerriesCds['Nights'] := 0;
  FerriesCds['Domestic']:= true;

  FerriesCds['Currencies_id'] := GetDefaultCurrency;

end;

procedure TTicketsForm.FerriesCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cxFromCityLCMB.EditValue = null then
    Abort;

  if cxToCityLCMB.EditValue = null then
    Abort;

  if cxWefDateEdit.EditValue = null then
    Abort;

end;

procedure TTicketsForm.cxGridDBBandedTableView3daysPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if FerriesCds.State = dsBrowse then
    FerriesCds.Edit;

  if SelOprForm = nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if FerriesCds['DaysName'] <> null then
    _InitStr := FerriesCds['DaysName'];

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    FerriesCds['Days'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;

end;

procedure TTicketsForm.FerriesCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if FerriesCds['Days'] <> null then
    FerriesCds['DaysName'] := DaysToStr(FerriesCds['Days']);

end;

procedure TTicketsForm.rainCostsinExcel1Click(Sender: TObject);
begin
  inherited;
   if TrainTicketsPriceListForm = nil then
    Application.CreateForm(TTrainTicketsPriceListForm, TrainTicketsPriceListForm);

end;

procedure TTicketsForm.cxWefDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
