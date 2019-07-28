unit FlightSectorFm;

interface
                                 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, StdCtrls,
  Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, FMTBcd, SqlExpr, Provider, DBClient, cxPC, cxCalendar,
  cxButtonEdit, cxTimeEdit, DateUtils, Math, cxLookAndFeelPainters, Menus,
  cxButtons, cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TFlightSectorForm = class(TForm)
    TopPnl: TPanel;
    BottomPnl: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    WefLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    FromCityDS: TDataSource;
    FromCityCds: TClientDataSet;
    FromCityDsp: TDataSetProvider;
    FromCitySds: TSQLDataSet;
    ToCityDS: TDataSource;
    ToCityCds: TClientDataSet;
    ToCityDsp: TDataSetProvider;
    ToCitySds: TSQLDataSet;
    cxPageControl1: TcxPageControl;
    FlightsTab: TcxTabSheet;
    FlightsGrid: TcxGrid;
    FlightsGridDBTableView1: TcxGridDBTableView;
    FlightsGridLevel1: TcxGridLevel;
    BusesTab: TcxTabSheet;
    TrainsTab: TcxTabSheet;
    FerriesTab: TcxTabSheet;
    BusesGrid: TcxGrid;
    BusesGridDBTableView1: TcxGridDBTableView;
    BusesGridLevel1: TcxGridLevel;
    TrainsGrid: TcxGrid;
    TrainsGridDBTableView1: TcxGridDBTableView;
    TrainsGridLevel1: TcxGridLevel;
    FerriesGrid: TcxGrid;
    FerriesGridDBTableView1: TcxGridDBTableView;
    FerriesGridLevel1: TcxGridLevel;
    FlightsDS: TDataSource;
    FlightsCds: TClientDataSet;
    FlightsDsp: TDataSetProvider;
    FlightsSds: TSQLDataSet;
    BusesDS: TDataSource;
    BusesCds: TClientDataSet;
    BusesDsp: TDataSetProvider;
    BusesSds: TSQLDataSet;
    TrainsDS: TDataSource;
    TrainsCds: TClientDataSet;
    TrainsDsp: TDataSetProvider;
    TrainsSds: TSQLDataSet;
    FerriesDS: TDataSource;
    FerriesCds: TClientDataSet;
    FerriesDsp: TDataSetProvider;
    FerriesSds: TSQLDataSet;
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
    FlightsGridDBTableView1flightno: TcxGridDBColumn;
    FlightsGridDBTableView1stops: TcxGridDBColumn;
    FlightsGridDBTableView1domestic: TcxGridDBColumn;
    FlightsGridDBTableView1wef: TcxGridDBColumn;
    FlightsGridDBTableView1wet: TcxGridDBColumn;
    FlightsGridDBTableView1overnight: TcxGridDBColumn;
    FlightsGridDBTableView1aircrafttypes_id: TcxGridDBColumn;
    FlightsGridDBTableView1departure: TcxGridDBColumn;
    FlightsGridDBTableView1arrival: TcxGridDBColumn;
    FlightsGridDBTableView1duration: TcxGridDBColumn;
    FlightsGridDBTableView1jcl: TcxGridDBColumn;
    FlightsGridDBTableView1ycl: TcxGridDBColumn;
    FlightsGridDBTableView1jcl_usd: TcxGridDBColumn;
    FlightsGridDBTableView1ycl_usd: TcxGridDBColumn;
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
    BusesGridDBTableView1busno: TcxGridDBColumn;
    BusesGridDBTableView1domestic: TcxGridDBColumn;
    BusesGridDBTableView1wef: TcxGridDBColumn;
    BusesGridDBTableView1wet: TcxGridDBColumn;
    BusesGridDBTableView1overnight: TcxGridDBColumn;
    BusesGridDBTableView1departure: TcxGridDBColumn;
    BusesGridDBTableView1arrival: TcxGridDBColumn;
    BusesGridDBTableView1currencies_id: TcxGridDBColumn;
    BusesGridDBTableView1cost: TcxGridDBColumn;
    BusesGridDBTableView1class_id: TcxGridDBColumn;
    TrainsGridDBTableView1trainno: TcxGridDBColumn;
    TrainsGridDBTableView1trains_id: TcxGridDBColumn;
    TrainsGridDBTableView1wef: TcxGridDBColumn;
    TrainsGridDBTableView1wet: TcxGridDBColumn;
    TrainsGridDBTableView1arrival: TcxGridDBColumn;
    TrainsGridDBTableView1departure: TcxGridDBColumn;
    TrainsGridDBTableView1t1c: TcxGridDBColumn;
    TrainsGridDBTableView1t1c_ac: TcxGridDBColumn;
    TrainsGridDBTableView1t2c: TcxGridDBColumn;
    TrainsGridDBTableView1t2c_ac_2t: TcxGridDBColumn;
    TrainsGridDBTableView1t2c_ac_3t: TcxGridDBColumn;
    TrainsGridDBTableView1ac_cc: TcxGridDBColumn;
    TrainsGridDBTableView1ac_cce: TcxGridDBColumn;
    TrainsGridDBTableView1sleeper: TcxGridDBColumn;
    TrainsGridDBTableView1DaysName: TcxGridDBColumn;
    FerriesGridDBTableView1DaysName: TcxGridDBColumn;
    FerriesGridDBTableView1ferryno: TcxGridDBColumn;
    FerriesGridDBTableView1domestic: TcxGridDBColumn;
    FerriesGridDBTableView1wef: TcxGridDBColumn;
    FerriesGridDBTableView1wet: TcxGridDBColumn;
    FerriesGridDBTableView1departure: TcxGridDBColumn;
    FerriesGridDBTableView1nights: TcxGridDBColumn;
    FerriesGridDBTableView1class_id: TcxGridDBColumn;
    FerriesGridDBTableView1cost: TcxGridDBColumn;
    FerriesGridDBTableView1currencies_id: TcxGridDBColumn;
    FerriesGridDBTableView1arrival: TcxGridDBColumn;
    FerriesCdsDaysName: TStringField;
    FromCityCdsCities_id: TIntegerField;
    FromCityCdsCity: TStringField;
    ToCityCdsCities_id: TIntegerField;
    ToCityCdsCity: TStringField;
    cxWefDateEdit: TcxDateEdit;
    BitBtn3: TBitBtn;
    ClassDS: TDataSource;
    ClassCds: TClientDataSet;
    ClassDsp: TDataSetProvider;
    ClassSds: TSQLDataSet;
    AirCraftDS: TDataSource;
    AirCraftCds: TClientDataSet;
    AirCraftSds: TSQLDataSet;
    TrainLookUpDS: TDataSource;
    TrainLookUpCds: TClientDataSet;
    TrainLookUpDsp: TDataSetProvider;
    TrainLookUpSds: TSQLDataSet;
    DataSource3: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLDataSet4: TSQLDataSet;
    AirCraftDsp: TDataSetProvider;
    AirCraftCdsAircraftTypes_id: TIntegerField;
    AirCraftCdsAircraft: TStringField;
    FromCityLcmb: TcxLookupComboBox;
    ToCityLcmb: TcxLookupComboBox;
    FlightsCdsDaysName: TStringField;
    FlightsGridDBTableView1DaysName: TcxGridDBColumn;
    CloseBtn: TcxButton;
    BusesGridDBTableView1DaysName: TcxGridDBColumn;
    BusesCdsDaysName: TStringField;
    TrainLookUpCdsTrains_id: TIntegerField;
    TrainLookUpCdsTrainNo: TStringField;
    TrainLookUpCdsTrainName: TStringField;
    TrainsCdsWef: TSQLTimeStampField;
    TrainsCdsWet: TSQLTimeStampField;
    TrainsCdsDayOfOperation: TIntegerField;
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
    TrainsCdsTmpTrains_id: TIntegerField;
    TrainsCdsDaysName: TStringField;
    TrainsCdsTrainName: TStringField;
    TrainsCdsFromStation: TStringField;
    TrainsCdsToStation: TStringField;
    TrainsCdsFromStations_id: TIntegerField;
    TrainsCdsToStations_id: TIntegerField;
    TrainsGridDBTableView1FromStation: TcxGridDBColumn;
    TrainsGridDBTableView1ToStation: TcxGridDBColumn;
    FlightsCdsConstant1_amt: TFMTBCDField;
    FlightsCdsConstant2_amt: TFMTBCDField;
    FlightsGridDBTableView1Constant1_amt: TcxGridDBColumn;
    FlightsGridDBTableView1Constant2_amt: TcxGridDBColumn;
    UtilitiesButton: TcxButton;
    UtilitiesPopup: TPopupMenu;
    CopyCosts1: TMenuItem;
    TrainsCdsNights: TIntegerField;
    TrainsCdsOvernight: TBooleanField;
    rainsGridDBTableView1Nights: TcxGridDBColumn;
    rainsGridDBTableView1Overnight: TcxGridDBColumn;
    TrainsCdsDays: TStringField;
    N1: TMenuItem;
    rainCostsToExcel1: TMenuItem;
    cxButton1: TcxButton;
    FlightsCdsFlightVia: TStringField;
    FlightsCdsFlightCompanies_id: TIntegerField;
    FlightsCdsFlightAirline: TStringField;
    FlightsGridDBTableView1FlightAirline: TcxGridDBColumn;
    FlightsGridDBTableView1FlightVia: TcxGridDBColumn;
    FlightsGridDBTableView1FlightCompanies_id: TcxGridDBColumn;
    FlightCompaniesDS: TDataSource;
    FlightCompaniesCds: TClientDataSet;
    FlightCompaniesDsp: TDataSetProvider;
    FlightCompaniesSds: TSQLDataSet;
    FlightCompaniesCdsFlightCompanies_id: TIntegerField;
    FlightCompaniesCdsFlightCompany: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure FlightsCdsAfterPost(DataSet: TDataSet);
    procedure FlightsCdsBeforePost(DataSet: TDataSet);
    procedure FlightsGridDBTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FlightsCdsCalcFields(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure FromCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure FromCityLcmbExit(Sender: TObject);
    procedure cxWefDateEditExit(Sender: TObject);
    procedure FromCityLcmbKeyPress(Sender: TObject; var Key: Char);
    procedure FlightsCdsBeforeInsert(DataSet: TDataSet);
    procedure FlightsCdsAfterInsert(DataSet: TDataSet);
    procedure BusesCdsAfterPost(DataSet: TDataSet);
    procedure BusesCdsAfterInsert(DataSet: TDataSet);
    procedure BusesCdsBeforePost(DataSet: TDataSet);
    procedure BusesCdsCalcFields(DataSet: TDataSet);
    procedure BussesGridDBTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FerriesCdsAfterInsert(DataSet: TDataSet);
    procedure FerriesCdsAfterDelete(DataSet: TDataSet);
    procedure FerriesCdsBeforePost(DataSet: TDataSet);
    procedure FerriesGridDBTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FerriesCdsCalcFields(DataSet: TDataSet);
    procedure FilterData;
    procedure TrainsCdsCalcFields(DataSet: TDataSet);
    procedure FlightsCdsBeforeDelete(DataSet: TDataSet);
    procedure BusesCdsBeforeDelete(DataSet: TDataSet);
    procedure TrainsCdsBeforeDelete(DataSet: TDataSet);
    procedure FerriesCdsBeforeDelete(DataSet: TDataSet);
    procedure FlightsCdsBeforeEdit(DataSet: TDataSet);
    procedure BusesCdsBeforeEdit(DataSet: TDataSet);
    procedure TrainsCdsBeforeEdit(DataSet: TDataSet);
    procedure TrainsCdsBeforeInsert(DataSet: TDataSet);
    procedure FerriesCdsBeforeEdit(DataSet: TDataSet);
    procedure CopyCosts1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGroupBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlightSectorForm: TFlightSectorForm;
  _FlightSectorForm_Level : Integer;
  _FlightSectorForm_DisplayType: Integer;
  _FlightSectorForm_TransportType: Integer;
  _FlightTbl_State, _BusTbl_State, _TrainTbl_State, _FerryTbl_State: TDataSetState;
implementation

uses BackOfficeDM, GeneralUt, SelOprFm, ReportParameterFm,
  TrainTicketsPriceListFm, TicketsFm;

var
  AdmLevel : Integer;

{$R *.dfm}

procedure TFlightSectorForm.FilterData;
var
  CityFilter, DateFilter, DateBusFilter, x_Filter: string;
  x_FromCities_id, x_ToCities_id, x_Date: string;
begin

  x_Filter := ' (1=1) ';

  CityFilter := '';

  try
    if (FromCityLcmb.EditValue = 0) or (FromCityLcmb.EditValue = null) then
      CityFilter := ' AND (From_Cities_id = -1) '
    else
      Cityfilter := ' AND (From_Cities_id = ' + IntToStr(FromCityLcmb.EditValue) + ') ';
  except
  end;

  try
    if (ToCityLcmb.EditValue = 0) or (ToCityLcmb.EditValue = null) then
      CityFilter := CityFilter + ' AND (To_Cities_id = -1) '
    else
      Cityfilter := CityFilter + ' AND (To_Cities_id = ' + IntToStr(ToCityLcmb.EditValue) + ') ';
  except
  end;

  DateFilter := '';
  try
    if (Trim(cxWefDateEdit.Text) > '') then
      DateFilter := ' AND ((wet IS NULL) OR (wet >= ''' + FormatDateTime('mm/dd/yyyy',StrToDate(cxWefDateEdit.Text)) + ''')) '
    else
      Datefilter := ' AND (wet >= ''01/01/2020'') ';
  except
  end;

  DateBusFilter := '';
  try
    if (Trim(cxWefDateEdit.Text) > '') then
      DateBusFilter := ' AND ((wet IS NULL) OR (wet >= ''' + FormatDateTime('dd/mm/yyyy',StrToDate(cxWefDateEdit.Text)) + ''')) '
    else
      DateBusFilter := ' AND (wet >= ''01/01/2020'') ';
  except
  end;

 UtilitiesButton.Visible := False;

 if cxPageControl1.ActivePage = FlightsTab then
    begin

      FlightsSds.Active := False;
      FlightsCds.Active := False;
      FlightsSds.CommandText := 'SELECT * FROM FlightSectorFaresIndia WHERE ' +
          x_Filter + CityFilter + DateFilter;
      //FlightsCds.Filtered := True;
      FlightsSds.Active := True;
      FlightsCds.Active := True;
      FlightsCds.Last;

      UtilitiesButton.Visible := True;

    end;

 if cxPageControl1.ActivePage = TrainsTab then
    begin

      if (FromCityLcmb.EditValue = 0) or (FromCityLcmb.EditValue = null) then
        x_FromCities_id := '-1'
      else
        x_FromCities_id := FromCityLcmb.EditValue;

      if (ToCityLcmb.EditValue = 0) or (ToCityLcmb.EditValue = null) then
        x_ToCities_id := '-1'
      else
        x_ToCities_id := ToCityLcmb.EditValue;

      if (Trim(cxWefDateEdit.Text) > '') then
        x_Date := FormatDateTime('mm/dd/yyyy',StrToDate(cxWefDateEdit.Text))
      else
        x_Date := '01/01/2020';

      TrainsSds.Active := False;
      TrainsSds.CommandText := 'EXEC p_TmpTrains ' +
        x_fromCities_id + ',' +
        x_ToCities_id + ',''' +
        x_Date + ''',1 ';
      TrainsSds.Active := True;
      TrainsCds.Active := False;
      TrainsCds.Active := True;

      TrainLookUpSds.Active := True;
      TrainLookUpCds.Active := True;
    end;

  if cxPageControl1.ActivePage = BusesTab then
    begin
      BusesCds.Active := False;
      BusesCds.Filter := x_Filter + CityFilter + DateBusFilter;
      BusesCds.Filtered := True;
      BusesCds.Active := True;
      BusesCds.Last;
    end;

  if cxPageControl1.ActivePage = FerriesTab then
    begin
      FerriesCds.Active := False;
      FerriesCds.Filter := x_Filter + CityFilter + DateBusFilter;
      FerriesCds.Filtered := True;
      FerriesCds.Active := True;
      FerriesCds.Last;
    end;

end;



procedure TFlightSectorForm.FormDestroy(Sender: TObject);
begin
  FlightSectorForm := nil;
end;

procedure TFlightSectorForm.FormCreate(Sender: TObject);
begin
  AdmLevel := _FlightSectorForm_Level;

  cxPageControl1.ActivePage := FlightsTab;

  FromCityCds.Active := False;
  FromCityCds.Active := True;
  ToCityCds.Active := False;
  ToCityCds.Active := True;

  FromCityLcmb.EditValue := FromCityCdsCities_id.Value;
  ToCityLcmb.EditValue := ToCityCdsCities_id.Value;

  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active := True;

  AirCraftCds.Active := False;
  AirCraftCds.Active := True;

  FlightsCds.Active := False;
  FlightsCds.Active := True;

  BusesCds.Active := False;
  BusesCds.Active := True;

  TrainsCds.Active := False;
  TrainsCds.Active := True;

  FerriesCds.Active := False;
  FerriesCds.Active := True;

  FlightCompaniesCds.Active := True;

  if _FlightSectorForm_DisplayType = 0 then
    begin
      OKBtn.Visible := False;
      CancelBtn.Visible := False;
      CloseBtn.Visible := True;
    end
  else if _FlightSectorForm_DisplayType = 1 then
    begin
      cxGroupBox2.Enabled := False;
      CloseBtn.Visible := False;
    end;

  if _FlightSectorForm_TransportType = 1 then
    begin
      BusesTab.TabVisible := False;
      TrainsTab.TabVisible := False;
      FerriesTab.TabVisible := False;
      WefLabel.Caption := 'Wef'
    end
  else if _FlightSectorForm_TransportType = 2 then
    begin
      FlightsTab.TabVisible := False;
      TrainsTab.TabVisible := False;
      FerriesTab.TabVisible := False;
      WefLabel.Caption := 'Wef'
    end
  else if _FlightSectorForm_TransportType = 3 then
    begin
      FlightsTab.TabVisible := False;
      BusesTab.TabVisible := False;
      FerriesTab.TabVisible := False;
      WefLabel.Caption := 'Schedule as of'
    end
  else if _FlightSectorForm_TransportType = 4 then
    begin
      FlightsTab.TabVisible := False;
      BusesTab.TabVisible := False;
      TrainsTab.TabVisible := False;
      WefLabel.Caption := 'Wef'
    end;

  cxWefDateEdit.Text := FormatDateTime('dd/mm/yyyy',GetDefaultCostingDate(Date));

  FilterData;
end;

procedure TFlightSectorForm.cxPageControl1Change(Sender: TObject);
begin
  ClassSds.Active := False;
  ClassCds.Active := False;

  if cxPageControl1.ActivePage = BusesTab then
    ClassSds.Params[0].Value := 3
  else if cxPageControl1.ActivePage = FerriesTab then
    ClassSds.Params[0].Value := 4;

  ClassSds.Active := True;
  ClassCds.Active := True;

  FilterData;

end;

procedure TFlightSectorForm.FlightsCdsAfterPost(DataSet: TDataSet);
begin
  FlightsCds.ApplyUpdates(0);
  //FlightsCds.Refresh;
end;

procedure TFlightSectorForm.FlightsCdsBeforePost(DataSet: TDataSet);
var
  x_hours: double;
  x_hours_str, x_min_str: string;
begin
  _FlightTbl_State := FlightsCds.State;

  FlightsCds['From_Cities_id'] := FromCityLcmb.EditValue;
  FlightsCds['To_Cities_id'] := toCityLcmb.EditValue;

  if FlightsCds['From_Cities_id'] = null then
    raise Exception.Create ('Please enter the From City');

  if FlightsCds['To_Cities_id'] = null then
    raise Exception.Create ('Please enter the To City');

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

{
  if ((FlightsCds['JCL'] = null) or (FlightsCds['JCL'] = 0)) and ((FlightsCds['YCL'] = null) or (FlightsCds['YCL'] = 0))
      and ((FlightsCds['YCL_USD']= null) or (FlightsCds['YCL_USD']= 0)) and ((FlightsCds['JCL_USD']= null) or (FlightsCds['JCL_USD']= 0))
   then
      Raise Exception.Create('Please Enter the Flight Fares');
}      

  x_hours := HourSpan (FlightsCds['Departure'],FlightsCds['Arrival']);
  x_hours_str := padl(trim(IntToStr(floor(x_hours))),'0',2);
  x_min_str := padl(trim(FormatFloat('0', (x_hours - floor(x_hours))*60.0)),'0',2);
  FlightsCds['Duration'] := x_hours_str + ':' + x_min_str;

  if FlightsCds.State = dsInsert then
   FlightsCds['FlightSectorFaresIndia_id'] := GetNextId('FlightSectorFaresIndia','FlightSectorFaresIndia_id');
end;

procedure TFlightSectorForm.FlightsGridDBTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
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

procedure TFlightSectorForm.FlightsCdsCalcFields(DataSet: TDataSet);
begin
  if FlightsCds['Days'] <> null then
    FlightsCds['DaysName'] := DaysToStr(FlightsCds['Days']);
end;

procedure TFlightSectorForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFlightSectorForm.FromCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TFlightSectorForm.FromCityLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TFlightSectorForm.cxWefDateEditExit(Sender: TObject);
begin
  FilterData;
end;

procedure TFlightSectorForm.FromCityLcmbKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    FilterData;
end;

procedure TFlightSectorForm.FlightsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if FromCityLcmb.EditValue = 0 then
    raise Exception.Create ('Please select the From City first');
  if ToCityLcmb.EditValue = 0 then
    raise Exception.Create ('Please select the To City first');
end;

procedure TFlightSectorForm.FlightsCdsAfterInsert(DataSet: TDataSet);
var
  Domestic: Boolean;
  GpSds: TSQLDataSet;
  DefaultCountry: Integer;
begin

  FlightsCds['Days'] := 127;

  FlightsCds['From_Cities_id'] := FromCityLcmb.EditValue;
  FlightsCds['To_Cities_id'] := ToCityLcmb.EditValue;

  FlightsCds['Stops'] := 0;
  FlightsCds['Overnight'] := False;
  FlightsCds['JCL']:= 0;
  FlightsCds['YCL']:= 0;
  FlightsCds['JCL_USD']:= 0;
  FlightsCds['YCL_USD']:= 0;

  // Domestic
  // Obtain default country
  Domestic := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Number FROM Defaults ' +
    'WHERE Item = ''Country'' ';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Number'] <> null) then
    begin
      DefaultCountry := GpSds['Number'];

      GpSds.Close;
      GpSds.CommandText := 'SELECT Countries_id FROM Cities ' +
        'WHERE Cities_id = ' + IntToStr(FlightsCds['From_Cities_id']);
      GpSds.Open;
      if (not GpSds.EOF) and (GpSds['Countries_id'] <> null) then
        if DefaultCountry <> GpSds['Countries_id'] then
          Domestic := False;

      if Domestic = True then
        begin
          GpSds.Close;
          GpSds.CommandText := 'SELECT Countries_id FROM Cities ' +
            'WHERE Cities_id = ' + IntToStr(FlightsCds['To_Cities_id']);
          GpSds.Open;
          if (not GpSds.EOF) and (GpSds['Countries_id'] <> null) then
            if DefaultCountry <> GpSds['Countries_id'] then
              Domestic := False;
        end;

    end;

  GpSds.Free;

  FlightsCds['Domestic'] := Domestic;

end;

procedure TFlightSectorForm.BusesCdsAfterPost(DataSet: TDataSet);
begin
  BusesCds.ApplyUpdates(0);
  //BusesCds.Refresh;
end;

procedure TFlightSectorForm.BusesCdsAfterInsert(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
  Domestic: Boolean;
  DefaultCountry: Integer;
begin

  if FromCityLcmb.Editvalue = 0 then
    raise Exception.Create ('Please enter the From City first');

  if ToCityLcmb.Editvalue = 0 then
    raise Exception.Create ('Please enter the To City first');

  BusesCds['Days'] := 127;
  BusesCds['From_Cities_id'] := FromCityLcmb.Editvalue;
  BusesCds['To_Cities_id'] := ToCityLcmb.Editvalue;

  BusesCds['Overnight'] := False;

  // Domestic
  // Obtain default country
  Domestic := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Number FROM Defaults ' +
    'WHERE Item = ''Country'' ';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['number']<>null) then
    begin
      DefaultCountry := GpSds['number'];

      GpSds.Close;
      GpSds.CommandText := 'SELECT Countries_id FROM Cities ' +
        'WHERE Cities_id = ' + IntToStr(BusesCds['From_Cities_id']) ;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['Countries_id']<>null) then
        if DefaultCountry <> GpSds['Countries_id'] then
          Domestic := False;

      if Domestic = True then
        begin
          GpSds.Close;
          GpSds.CommandText := 'SELECT Countries_id FROM Cities ' +
            'WHERE Cities_id = ' + IntToStr(BusesCds['To_Cities_id']) ;
          GpSds.Open;
          if (not GpSds.EOF) and (GpSds['countries_id']<>null) then
            if DefaultCountry <> GpSds['countries_id'] then
              Domestic := False;
        end;

    end;

  BusesCds['Domestic'] := Domestic;

  // Currency
  // Obtain default currency
  GpSds.Close;
  GpSds.CommandText := 'SELECT number FROM defaults ' +
    'WHERE Item = ''Currency'' ';
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    BusesCds['Currencies_id'] := GpSds['number'];

  GpSds.Free;

end;

procedure TFlightSectorForm.BusesCdsBeforePost(DataSet: TDataSet);
begin
  _BusTbl_State := BusesCds.State;

  BusesCds['From_Cities_id'] := FromCityLcmb.EditValue;
  BusesCds['To_Cities_id'] := toCityLcmb.EditValue;

  if BusesCds['From_Cities_id'] = null then
    raise Exception.Create ('Please enter the From City');

  if BusesCds['To_Cities_id'] = null then
    raise Exception.Create ('Please enter the To City');

  if BusesCds['Days'] = null then
    raise Exception.Create ('Please enter the Opearating Days');

  if BusesCds['Wef'] = null then
    raise Exception.Create ('Please enter the wef date');

  if BusesCds['Overnight'] = null then
    raise Exception.Create ('Please enter if overnight');

  if BusesCds['Departure'] = null then
    raise Exception.Create ('Please enter the departure time');

  if BusesCds['Arrival'] = null then
    raise Exception.Create ('Please enter the Arrival time');

  if BusesCds['Cost'] = null then
    raise Exception.Create ('Please enter the fare');

  if BusesCds['Currencies_id'] = null then
    raise Exception.Create ('Please enter the currency');

  if _BusTbl_State = dsInsert then
    BusesCds['BusSectorFaresIndia_id'] := GetNextId('BusSectorFaresIndia', 'BusSectorFaresIndia_id');
end;

procedure TFlightSectorForm.BusesCdsCalcFields(DataSet: TDataSet);
begin
  if BusesCds['Days'] <> null then
    BusesCds['DaysName'] := DaysToStr(BusesCds['Days']);
end;

procedure TFlightSectorForm.BussesGridDBTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
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

procedure TFlightSectorForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFlightSectorForm.FerriesCdsAfterInsert(DataSet: TDataSet);
var
  GpSds: TSQLDataSet;
  Domestic: Boolean;
  DefaultCountry: integer;
begin

  if FromCityLcmb.EditValue = 0 then
    raise Exception.Create ('Please enter the From City first');

  if ToCityLcmb.EditValue = 0 then
    raise Exception.Create ('Please enter the To City first');

  FerriesCds['Days'] := 127;
  FerriesCds['From_Cities_id'] := FromCityLcmb.EditValue;
  FerriesCds['To_Cities_id'] := ToCityLcmb.EditValue;
  FerriesCds['Nights'] := 0;

  // Domestic
  // Obtain default country
  Domestic := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Number FROM Defaults ' +
    'WHERE Item = ''Country'' ';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Number']<>null) then
    begin
      DefaultCountry := GpSds['Number'];

      GpSds.Close;
      GpSds.CommandText := 'SELECT Countries_id FROM Cities ' +
        'WHERE Cities_id = ' + IntToStr(FerriesCds['From_Cities_id']);
      GpSds.Open;
      if (not GpSds.EOF) and (GpSds['Countries_id']<>null) then
        if DefaultCountry <> GpSds['Countries_id'] then
          Domestic := False;

      if Domestic = True then
        begin
          GpSds.Close;
          GpSds.CommandText := 'SELECT Countries_id FROM Cities ' +
            'WHERE Cities_id = ' + IntToStr(FerriesCds['To_Cities_id']) ;
          GpSds.Open;
          if (not GpSds.EOF) and (GpSds['countries_id']<>null) then
            if DefaultCountry <> GpSds['countries_id'] then
              Domestic := False;
        end;

    end;

  FerriesCds['Domestic'] := Domestic;

  // Currency
  // Obtain default currency
  GpSds.Close;
  GpSds.CommandText := 'SELECT Number FROM Defaults ' +
    'WHERE Item = ''Currency'' ';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Number']<>null) then
    FerriesCds['Currencies_id'] := GpSds['Number'];

end;
procedure TFlightSectorForm.FerriesCdsAfterDelete(DataSet: TDataSet);
begin
  FerriesCds.ApplyUpdates(0);
  //FerriesCds.Refresh;
end;

procedure TFlightSectorForm.FerriesCdsBeforePost(DataSet: TDataSet);
var
   Nights : Integer;
begin
  _FerryTbl_State := FerriesCds.State;

  if FerriesCds['From_Cities_id'] = null then
    raise Exception.Create ('Please enter the From City');

  if FerriesCds['To_Cities_id'] = null then
    raise Exception.Create ('Please enter the To City');

  if FerriesCds['Days'] = null then
    raise Exception.Create ('Please enter the Opearating Days');

  if FerriesCds['Wef'] = null then
    raise Exception.Create ('Please enter the wef date');

  if FerriesCds['Departure'] = null then
    raise Exception.Create ('Please enter the departure time');

  if FerriesCds['Arrival'] = null then
    raise Exception.Create ('Please enter the arrival time');

  if FerriesCds['Cost'] = null then
    raise Exception.Create ('Please enter the fare');

  if FerriesCds['Currencies_id'] = null then
    raise Exception.Create ('Please enter the currency');

  if FerriesCds['nights']= null then
      Nights := 0
  else
      Nights := FerriesCdsnights.Value;

  FerriesCds['duration'] := (FerriesCds['Departure'] - FerriesCds['Arrival']) + Nights;

  if _FerryTbl_State = dsInsert then
    FerriesCds['Ferries_id'] := GetNextId( 'Ferries', 'Ferries_id');

end;

procedure TFlightSectorForm.FerriesGridDBTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if FerriesCds.State = dsBrowse then
    FerriesCds.Edit;

  if SelOprForm = nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if FlightsCds['DaysName'] <> null then
    _InitStr := FerriesCds['DaysName'];

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
      FerriesCds['Days'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;
end;

procedure TFlightSectorForm.FerriesCdsCalcFields(DataSet: TDataSet);
begin
  if FerriesCds['Days'] <> null then
     FerriesCds['DaysName'] := DaysToStr(FerriesCds['Days']);
end;

procedure TFlightSectorForm.TrainsCdsCalcFields(DataSet: TDataSet);
begin
{
  if TrainsCds['DayOfOperation'] <> null then
    begin
      TrainsCds['DaysName'] := IntToStr(TrainsCds['DayOfOperation'] + 1);
    end;
}

end;

procedure TFlightSectorForm.FlightsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.BusesCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.TrainsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.FerriesCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.FlightsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.BusesCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.TrainsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.TrainsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.FerriesCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFlightSectorForm.CopyCosts1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if FlightsCds['Wef'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := FlightsCds['Wef'];
      ReportParameterForm.cxDateEdit2.Date := IncYear(FlightsCds['Wef'],1);
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (FlightsCds['FlightSectorFaresIndia_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostFlight ' +
            IntToStr(FlightsCds['FlightSectorFaresIndia_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + '''';

          GpSds.ExecSQL;

          FilterData;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;


end;

procedure TFlightSectorForm.cxButton1Click(Sender: TObject);
begin
   if TrainTicketsPriceListForm = nil then
    Application.CreateForm(TTrainTicketsPriceListForm, TrainTicketsPriceListForm);

end;

procedure TFlightSectorForm.cxGroupBox2Click(Sender: TObject);
begin

  TicketsForm_Level := 4;
  TicketsForm_FormType := 1;
  TicketsForm_Type := 2;
  TicketsForm_FromCities_id := FromCityLcmb.EditValue;
  TicketsForm_ToCities_id := ToCityLcmb.EditValue;
  TicketsForm_Wef := cxWefDateEdit.Date;

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);


end;

end.
