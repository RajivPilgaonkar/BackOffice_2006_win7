unit QuoFixedRateAccommodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxControls, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLabel, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, Provider, DBClient, SqlExpr,
  scExcelExport, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DateUtils;

type
  TQuoFixedRateAccommodationForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxAccTab: TcxTabSheet;
    cxImportBtn: TcxButton;
    cxCloseBtn: TcxButton;
    cxLabel1: TcxLabel;
    cxFilterBtn: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    CostAccSds: TSQLDataSet;
    CostAccCds: TClientDataSet;
    CostAccDsp: TDataSetProvider;
    CostAccDs: TDataSource;
    CostAccCdsOrganisation: TStringField;
    CostAccCdsState: TStringField;
    CostAccCdsCity: TStringField;
    CostAccCdsQuoFixedratesAccommodation_id: TIntegerField;
    CostAccCdsAddressBook_id: TIntegerField;
    CostAccCdsFromDate: TSQLTimeStampField;
    CostAccCdsToDate: TSQLTimeStampField;
    CostAccCdsAC: TBooleanField;
    CostAccCdsRoomTypes_id: TIntegerField;
    CostAccCdsMealPlans_id: TIntegerField;
    CostAccCdsCostSingle: TFMTBCDField;
    CostAccCdsCostDouble: TFMTBCDField;
    CostAccCdsCostTriple: TFMTBCDField;
    CostAccCdsCurrencies_id: TIntegerField;
    cxGrid1DBTableView1Organisation: TcxGridDBColumn;
    cxGrid1DBTableView1State: TcxGridDBColumn;
    cxGrid1DBTableView1City: TcxGridDBColumn;
    cxGrid1DBTableView1QuoFixedratesAccommodation_id: TcxGridDBColumn;
    cxGrid1DBTableView1FromDate: TcxGridDBColumn;
    cxGrid1DBTableView1ToDate: TcxGridDBColumn;
    cxGrid1DBTableView1AC: TcxGridDBColumn;
    cxGrid1DBTableView1CostSingle: TcxGridDBColumn;
    cxGrid1DBTableView1CostDouble: TcxGridDBColumn;
    cxGrid1DBTableView1CostTriple: TcxGridDBColumn;
    CostAccCdsRoomType: TStringField;
    CostAccCdsMealPlan: TStringField;
    CostAccCdsCurrencyCode: TStringField;
    CostAccCdsCurrency: TStringField;
    cxGrid1DBTableView1RoomType: TcxGridDBColumn;
    cxGrid1DBTableView1MealPlan: TcxGridDBColumn;
    cxGrid1DBTableView1CurrencyCode: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    scExcelExport1: TscExcelExport;
    cxDateEdit: TcxDateEdit;
    PopupMenu1: TPopupMenu;
    DisplayErrors1: TMenuItem;
    CostTrfSds: TSQLDataSet;
    CostTrfCds: TClientDataSet;
    CostTrfCdsOrganisation: TStringField;
    CostTrfCdsService: TStringField;
    CostTrfCdsCurrency: TStringField;
    CostTrfCdsVehicle: TStringField;
    CostTrfCdsServices_id: TIntegerField;
    CostTrfCdsAgentAddressBook_id: TIntegerField;
    CostTrfCdsWef: TSQLTimeStampField;
    CostTrfCdsCost: TFMTBCDField;
    CostTrfCdsCurrencies_id: TIntegerField;
    CostTrfDsp: TDataSetProvider;
    CostTrfDs: TDataSource;
    cxTransferTab: TcxTabSheet;
    cxTransferGrid: TcxGrid;
    cxTransferGridDBTableView1: TcxGridDBTableView;
    cxTransferGridDBTableView1Organisation: TcxGridDBColumn;
    cxTransferGridDBTableView1Service: TcxGridDBColumn;
    cxTransferGridDBTableView1Currency: TcxGridDBColumn;
    cxTransferGridDBTableView1Vehicle: TcxGridDBColumn;
    cxTransferGridDBTableView1QuoFixedratesTransfer_id: TcxGridDBColumn;
    cxTransferGridDBTableView1Services_id: TcxGridDBColumn;
    cxTransferGridDBTableView1AgentAddressBook_id: TcxGridDBColumn;
    cxTransferGridDBTableView1Wef: TcxGridDBColumn;
    cxTransferGridDBTableView1Vehicles_id: TcxGridDBColumn;
    cxTransferGridDBTableView1Cost: TcxGridDBColumn;
    cxTransferGridDBTableView1Currencies_id: TcxGridDBColumn;
    cxTransferGridLevel1: TcxGridLevel;
    CostTrfCdsVehicles_id: TIntegerField;
    CostTrfCdsState: TStringField;
    CostTrfCdsCity: TStringField;
    cxTransferGridDBTableView1State: TcxGridDBColumn;
    cxTransferGridDBTableView1City: TcxGridDBColumn;
    CostTrfCdsQuoFixedRatesServices_id: TIntegerField;
    CostTrfCdsSightSeeing: TBooleanField;
    cxTabSheet1: TcxTabSheet;
    CostTrainSds: TSQLDataSet;
    CostTrainDsp: TDataSetProvider;
    CostTrainCds: TClientDataSet;
    CostTrainDs: TDataSource;
    CostTrainCdsClass: TStringField;
    CostTrainCdsFromCity: TStringField;
    CostTrainCdsToCity: TStringField;
    CostTrainCdsFromTrainStation: TStringField;
    CostTrainCdsToTrainStation: TStringField;
    CostTrainCdsTrainNo: TStringField;
    CostTrainCdsTrainName: TStringField;
    CostTrainCdswef: TSQLTimeStampField;
    CostTrainCdsCost: TFMTBCDField;
    CostTrainCdsTrains_id: TIntegerField;
    cxTrainGrid2: TcxGrid;
    cxTrainGridDBTableView1: TcxGridDBTableView;
    cxTrainGridLevel1: TcxGridLevel;
    CostTrainCdsQuoFixedRatesTickets_id: TIntegerField;
    cxTrainGridDBTableView1Class: TcxGridDBColumn;
    cxTrainGridDBTableView1FromCity: TcxGridDBColumn;
    cxTrainGridDBTableView1ToCity: TcxGridDBColumn;
    cxTrainGridDBTableView1FromTrainStation: TcxGridDBColumn;
    cxTrainGridDBTableView1ToTrainStation: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainNo: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainName: TcxGridDBColumn;
    cxTrainGridDBTableView1wef: TcxGridDBColumn;
    cxTrainGridDBTableView1Cost: TcxGridDBColumn;
    cxTrainGridDBTableView1Trains_id: TcxGridDBColumn;
    cxTrainGridDBTableView1QuoFixedRatesTickets_id: TcxGridDBColumn;
    CostTrainCdsCurrencies_id: TIntegerField;
    cxTrainGridDBTableView1CurrencyCode: TcxGridDBColumn;
    CostTrainCdsCurrencyCode: TStringField;
    CostTrainCdsDaysOfOperation: TStringField;
    cxTrainGridDBTableView1DaysOfOperation: TcxGridDBColumn;
    CostTrainCdsTimings: TStringField;
    cxTrainGridDBTableView1Timings: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    CostSightSds: TSQLDataSet;
    CostSightDsp: TDataSetProvider;
    CostSightCds: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    FMTBCDField1: TFMTBCDField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField5: TIntegerField;
    BooleanField1: TBooleanField;
    CostSightDs: TDataSource;
    CostSightCdsCost_1: TFMTBCDField;
    CostSightCdsCost_2: TFMTBCDField;
    CostSightCdsCost_3: TFMTBCDField;
    CostSightCdsCost_4: TFMTBCDField;
    CostSightCdsCost_5: TFMTBCDField;
    CostSightCdsCost_6: TFMTBCDField;
    CostSightCdsCost_7: TFMTBCDField;
    CostSightCdsCost_8: TFMTBCDField;
    CostSightCdsCost_9: TFMTBCDField;
    CostSightCdsCost_10: TFMTBCDField;
    cxSightGrid: TcxGrid;
    cxSightGridDBTableView1: TcxGridDBTableView;
    cxSightGridLevel1: TcxGridLevel;
    cxSightGridDBTableView1Organisation: TcxGridDBColumn;
    cxSightGridDBTableView1Service: TcxGridDBColumn;
    cxSightGridDBTableView1Currency: TcxGridDBColumn;
    cxSightGridDBTableView1Vehicle: TcxGridDBColumn;
    cxSightGridDBTableView1Services_id: TcxGridDBColumn;
    cxSightGridDBTableView1AgentAddressBook_id: TcxGridDBColumn;
    cxSightGridDBTableView1Wef: TcxGridDBColumn;
    cxSightGridDBTableView1Currencies_id: TcxGridDBColumn;
    cxSightGridDBTableView1Vehicles_id: TcxGridDBColumn;
    cxSightGridDBTableView1State: TcxGridDBColumn;
    cxSightGridDBTableView1City: TcxGridDBColumn;
    cxSightGridDBTableView1QuoFixedRatesServices_id: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_1: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_2: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_3: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_4: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_5: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_6: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_7: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_8: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_9: TcxGridDBColumn;
    cxSightGridDBTableView1Cost_10: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    CostCarSds: TSQLDataSet;
    CostCarDsp: TDataSetProvider;
    CostCarCds: TClientDataSet;
    CostCarDs: TDataSource;
    CostCarCdsQuoFixedRatesCars_id: TIntegerField;
    CostCarCdsOrganisation: TStringField;
    CostCarCdsState: TStringField;
    CostCarCdsCity: TStringField;
    CostCarCdsVehicle: TStringField;
    CostCarCdsCurrency: TStringField;
    cxCarHireGrid: TcxGrid;
    cxCarHireGridDBTableView1: TcxGridDBTableView;
    cxCarHireGridLevel1: TcxGridLevel;
    cxCarHireGridDBTableView1QuoFixedRatesCars_id: TcxGridDBColumn;
    cxCarHireGridDBTableView1Organisation: TcxGridDBColumn;
    cxCarHireGridDBTableView1State: TcxGridDBColumn;
    cxCarHireGridDBTableView1City: TcxGridDBColumn;
    cxCarHireGridDBTableView1Vehicle: TcxGridDBColumn;
    cxCarHireGridDBTableView1Currency: TcxGridDBColumn;
    cxCarHireGridDBTableView1Wef: TcxGridDBColumn;
    CostCarCdswef: TSQLTimeStampField;
    CostCarCdsCost: TFMTBCDField;
    cxCarHireGridDBTableView1Cost: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    CostIntercitiesSds: TSQLDataSet;
    CostIntercitiesDsp: TDataSetProvider;
    CostIntercitiesCds: TClientDataSet;
    CostIntercitiesDs: TDataSource;
    CostIntercitiesCdsQuoFixedRatesInterCities_id: TIntegerField;
    CostIntercitiesCdsOrganisation: TStringField;
    CostIntercitiesCdsState: TStringField;
    CostIntercitiesCdsFromCity: TStringField;
    CostIntercitiesCdsToCity: TStringField;
    CostIntercitiesCdsVehicle: TStringField;
    CostIntercitiesCdsCurrency: TStringField;
    CostIntercitiesCdswef: TSQLTimeStampField;
    CostIntercitiesCdsCost: TFMTBCDField;
    cxInterCityGrid: TcxGrid;
    cxInterCityGridDBTableView1: TcxGridDBTableView;
    cxInterCityGridLevel1: TcxGridLevel;
    cxInterCityGridDBTableView1QuoFixedRatesInterCities_id: TcxGridDBColumn;
    cxInterCityGridDBTableView1Organisation: TcxGridDBColumn;
    cxInterCityGridDBTableView1State: TcxGridDBColumn;
    cxInterCityGridDBTableView1FromCity: TcxGridDBColumn;
    cxInterCityGridDBTableView1ToCity: TcxGridDBColumn;
    cxInterCityGridDBTableView1Vehicle: TcxGridDBColumn;
    cxInterCityGridDBTableView1Currency: TcxGridDBColumn;
    cxInterCityGridDBTableView1wef: TcxGridDBColumn;
    cxInterCityGridDBTableView1Cost: TcxGridDBColumn;
    N1: TMenuItem;
    Deleteallforselecteddate1: TMenuItem;
    Deleteselectedrecord1: TMenuItem;
    EditInsert1: TMenuItem;
    N2: TMenuItem;
    CostAccCdscities_id: TIntegerField;
    CostTrfCdsCities_id: TIntegerField;
    CostSightCdsCities_id: TIntegerField;
    CostCarCdsServiceCities_id: TIntegerField;
    CostCarCdsAddressbook_id: TIntegerField;
    CostIntercitiesCdsAddressbook_id: TIntegerField;
    CostTrainCdsFromCities_id: TIntegerField;
    CostTrainCdsToCities_id: TIntegerField;
    N3: TMenuItem;
    SaveAsExcel1: TMenuItem;
    TransModuleSds: TSQLDataSet;
    TransModuleDsp: TDataSetProvider;
    TransModuleCds: TClientDataSet;
    TransModuleDs: TDataSource;
    cxTabSheet5: TcxTabSheet;
    TransModuleCdsQuoFixedRatesTranspModules_id: TIntegerField;
    TransModuleCdsFixedItin_id: TIntegerField;
    TransModuleCdsTitle: TStringField;
    TransModuleCdsWef: TSQLTimeStampField;
    TransModuleCdsCurrencies_id: TIntegerField;
    TransModuleCdsCurrencyCode: TStringField;
    TransModuleCdsVehicles_id: TIntegerField;
    TransModuleCdsVehicle: TStringField;
    TransModuleCdsCost: TFMTBCDField;
    cxTranspModGrid: TcxGrid;
    cxTranspModGridDBTableView1: TcxGridDBTableView;
    cxTranspModGridLevel1: TcxGridLevel;
    cxTranspModGridDBTableView1QuoFixedRatesTranspModules_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1FixedItin_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1Title: TcxGridDBColumn;
    cxTranspModGridDBTableView1Wef: TcxGridDBColumn;
    cxTranspModGridDBTableView1Currencies_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1CurrencyCode: TcxGridDBColumn;
    cxTranspModGridDBTableView1Vehicles_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1Vehicle: TcxGridDBColumn;
    cxTranspModGridDBTableView1Cost: TcxGridDBColumn;
    N4: TMenuItem;
    Costs1101: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure cxImportBtnClick(Sender: TObject);
    procedure ImportCost;
    procedure InitializeExcel;
    procedure GetDataFromExcel;
    function GetCurrencies_id (x_CurrencyCode: String): Integer;
    function GetRoomTypes_id (x_RoomType: String): Integer;
    function GetMealPlans_id (x_MealPlan: String): Integer;
    procedure FilterData;
    procedure ShowAsError(x_Row: String; x_Error: String; x_Option: Integer);
    procedure cxFilterBtnClick(Sender: TObject);
    procedure DisplayErrors1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function CheckRecordExists (x_Addressbook_id, x_FromDate, x_AC, x_RoomTypes_id, x_MealPlans_id, x_Currencies_id: string): boolean;
    procedure DisplayErrors;
    function CheckRecordValid (x_Addressbook_id, x_RoomTypes_id, x_MealPlans_id: string): boolean;
    procedure GetTransferDataFromExcel;
    function CheckTrfRecordExists (x_Services_id, x_AgentAdressBook_id, x_Wef, x_Currencies_id, x_Vehicles_id: string): boolean;
    function GetVehicles_id (x_Vehicle: String): Integer;
    function GetClass_id(x_Class: String): Integer;
    procedure GetTrainDataFromExcel;
    function CheckTrainRecordExists (x_TrainNo, x_Wef, x_Currencies_id, x_Class_id: string): boolean;
    procedure GetSightSeeingDataFromExcel;
    function CheckSightSeeingRecordExists (x_Services_id, x_AgentAdressBook_id, x_Wef, x_Currencies_id: string): boolean;
    procedure GetCarHireDataFromExcel;
    function CheckCarRecordExists (x_Vehicles_id, x_AddressBook_id, x_ServiceCities_id, x_Wef, x_Currencies_id: string): boolean;
    procedure GetInterCityDataFromExcel;
    function CheckInterCityRecordExists (x_Vehicles_id, x_AddressBook_id, x_FromCities_id, x_ToCities_id, x_Wef, x_Currencies_id: string): boolean;
    procedure Deleteallforselecteddate1Click(Sender: TObject);
    procedure Deleteselectedrecord1Click(Sender: TObject);
    procedure EditInsert1Click(Sender: TObject);
    procedure SaveAsExcel1Click(Sender: TObject);
    procedure WriteTrainMultiReport;
    procedure Costs1101Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoFixedRateAccommodationForm: TQuoFixedRateAccommodationForm;
  _QuoFixedRateAccommodationForm_Level: integer;

implementation

uses BackOfficeDM, Excel2000, GeneralUt, ImportErrorsFm,
  QuoFixedRateAccModifyFm, QuoFixedRateTrsfModifyFm,
  QuoFixedRateSsModifyFm, QuoFixedRateCarHireModifyFm,
  QuoFixedRateInterCityModifyFm, QuoFixedRateTrainModifyFm,
  HotelPriceListFm, TransferPriceListFm, SightSeeingPriceListFm,
  TrainTicketsPriceListFm, CarHirePriceListFm,
  QuoFixedRateTranspModuleModifyFm, QuoFixedRateAccFm, MainFm;

{$R *.dfm}

procedure TQuoFixedRateAccommodationForm.FormCreate(Sender: TObject);
var
  x_Year: integer;
begin
  x_Year := YearOf(IncYear(Date,-1));
  cxDateEdit.Date := StrToDate('01/01/' + IntToStr(x_Year));
  cxPageControl1.ActivePageIndex := 0;
  FilterData;
end;

procedure TQuoFixedRateAccommodationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQuoFixedRateAccommodationForm.FormDestroy(Sender: TObject);
begin
  QuoFixedRateAccommodationForm := nil;
end;

procedure TQuoFixedRateAccommodationForm.GetTransferDataFromExcel;
var
  x_Count, x_Row : Integer;
  x_eof: Boolean;
  x_QuoFixedRatesServices_id, x_QueryString, x_Cost, x_Wef, x_Rate: String;
  x_CurrencyCode, x_Currencies_id, x_Services_id, x_Vehicles_id, x_AgentAddressbook_id: string;
  GpSds: TSQLDataSet;
  x_exists, x_valid: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_eof := False;
  x_Row := 7;

  ShowAsError('', '', 1);

  x_CurrencyCode := 'INR';

  if Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E4', 'E4'].Value)) <> '' then
    x_CurrencyCode := Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E4', 'E4'].Value));

  x_Currencies_id := IntToStr(GetCurrencies_id(x_CurrencyCode));

  x_Wef := FormatDateTime('mm/dd/yyyy',VarToDateTime(Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['A4','A4'].Value))));

  x_Count := 0;
  with scExcelExport1.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value)) <> '' then
            begin
              x_count := 0;

              x_AgentAddressbook_id := VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value);
              x_Services_id := VarToStr(Range['BK'+IntToStr(x_Row), 'BK'+IntToStr(x_Row)].Value);

              if Trim(VarToStr(Range['D'+IntToStr(x_Row), 'D'+IntToStr(x_Row)].Value)) <> '' then
                x_Vehicles_id := IntToStr(GetVehicles_id(Trim(VarToStr(Range['D'+IntToStr(x_Row), 'D'+IntToStr(x_Row)].Value))));
              if x_Vehicles_id = '-1' then
                x_Vehicles_id := 'null';

              x_Cost := 'null';
              if Trim(VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost := VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value);

              x_QuoFixedRatesServices_id := IntToStr(GetNextId('QuoFixedRatesServices', 'QuoFixedRatesServices_id'));

              x_exists := CheckTrfRecordExists(x_Services_id, x_AgentAddressbook_id, x_wef, x_Currencies_id, x_Vehicles_id);

              x_valid := true;

              if (x_Vehicles_id = 'null') then
                begin
                  if x_Vehicles_id = 'null' then
                    ShowAsError(IntToStr(x_Row), 'Invalid vehicle', 2)
                end
              else if not x_valid then
                begin
                  ShowAsError(IntToStr(x_Row), 'Invalid vehicle', 2);
                end

              else if not x_exists then
                begin
                  x_QueryString := 'INSERT INTO QuoFixedRatesServices (QuoFixedRatesServices_id, ' +
                    'Services_id, AgentAddressBook_id, Wef, Vehicles_id, Cost, Currencies_id, SightSeeing) ' +
                    'VALUES (' + x_QuoFixedRatesServices_id + ',' + x_Services_id + ',' + x_AgentAddressbook_id +
                    ',''' + x_Wef + ''',' + x_Vehicles_id + ',' + x_Cost + ',' + x_Currencies_id + ', 0)';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end
              else
                begin
                  x_QueryString := 'UPDATE QuoFixedRatesServices ' +
                    'SET Cost = ' + x_Cost + ' ' +
                    'WHERE Services_id = ' + x_Services_id + ' ' +
                    'AND Wef = ''' + x_Wef + ''' ' +
                    'AND Vehicles_id = ' + x_Vehicles_id + ' ' +
                    'AND AgentAddressBook_id = ' + x_AgentAddressBook_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ' +
                    'AND SightSeeing = 0';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;
                end
            end
          else
            begin
              x_count := x_count + 1;
              if x_count = 10 then
                x_eof := true;
            end;
          x_row := x_row + 1;
        end;
    end;

  GpSds.Free;

end;

procedure TQuoFixedRateAccommodationForm.GetCarHireDataFromExcel;
var
  x_Count, x_Row : Integer;
  x_eof: Boolean;
  x_QuoFixedRatesCars_id, x_QueryString, x_Cost, x_Wef, x_Rate: String;
  x_CurrencyCode, x_Currencies_id, x_ServiceCities_id, x_Vehicles_id, x_Addressbook_id: string;
  GpSds: TSQLDataSet;
  x_exists, x_valid: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_eof := False;
  x_Row := 7;

  ShowAsError('', '', 1);

  x_CurrencyCode := 'INR';

  if Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E3', 'E3'].Value)) <> '' then
    x_CurrencyCode := Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E3','E3'].Value));

  x_Currencies_id := IntToStr(GetCurrencies_id(x_CurrencyCode));

  x_Wef := FormatDateTime('mm/dd/yyyy',VarToDateTime(Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['A3','A3'].Value))));

  x_Count := 0;
  with scExcelExport1.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value)) <> '' then
            begin
              x_count := 0;

              x_Vehicles_id := VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value);
              x_Addressbook_id := VarToStr(Range['BK'+IntToStr(x_Row), 'BK'+IntToStr(x_Row)].Value);
              x_ServiceCities_id := VarToStr(Range['BL'+IntToStr(x_Row), 'BL'+IntToStr(x_Row)].Value);

              x_Cost := 'null';
              if Trim(VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost := VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value);

              x_QuoFixedRatesCars_id := IntToStr(GetNextId('QuoFixedRatesCars', 'QuoFixedRatesCars_id'));

              x_exists := CheckCarRecordExists(x_Vehicles_id, x_Addressbook_id, x_ServiceCities_id, x_wef, x_Currencies_id);

              x_valid := true;

              if (x_Vehicles_id = 'null') then
                begin
                  if x_Vehicles_id = 'null' then
                    ShowAsError(IntToStr(x_Row), 'Invalid vehicle', 2)
                end
              else if not x_valid then
                begin
                  ShowAsError(IntToStr(x_Row), 'Invalid vehicle', 2);
                end

              else if not x_exists then
                begin
                  x_QueryString := 'INSERT INTO QuoFixedRatesCars (QuoFixedRatesCars_id, ' +
                    'Vehicles_id, AddressBook_id, ServiceCities_id, Wef, Cost, Currencies_id) ' +
                    'VALUES (' + x_QuoFixedRatesCars_id + ',' + x_Vehicles_id + ',' + x_Addressbook_id + ',' + x_ServiceCities_id + 
                    ',''' + x_Wef + ''',' + x_Cost + ',' + x_Currencies_id + ')';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end
              else
                begin
                  x_QueryString := 'UPDATE QuoFixedRatesCars ' +
                    'SET Cost = ' + x_Cost + ' ' +
                    'WHERE Vehicles_id = ' + x_Vehicles_id + ' ' +
                    'AND Wef = ''' + x_Wef + ''' ' +
                    'AND AddressBook_id = ' + x_AddressBook_id + ' ' +
                    'AND ServiceCities_id = ' + x_ServiceCities_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;
                end
            end
          else
            begin
              x_count := x_count + 1;
              if x_count = 10 then
                x_eof := true;
            end;
          x_row := x_row + 1;
        end;
    end;

  GpSds.Free;

end;

procedure TQuoFixedRateAccommodationForm.GetInterCityDataFromExcel;
var
  x_Count, x_Row : Integer;
  x_eof: Boolean;
  x_QuoFixedRatesInterCities_id, x_QueryString, x_Cost, x_Wef, x_Rate: String;
  x_CurrencyCode, x_Currencies_id, x_FromCities_id, x_ToCities_id, x_Vehicles_id, x_Addressbook_id: string;
  GpSds: TSQLDataSet;
  x_exists, x_valid: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_eof := False;
  x_Row := 7;

  ShowAsError('', '', 1);

  x_CurrencyCode := 'INR';

  if Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E3', 'E3'].Value)) <> '' then
    x_CurrencyCode := Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E3','E3'].Value));

  x_Currencies_id := IntToStr(GetCurrencies_id(x_CurrencyCode));

  x_Wef := FormatDateTime('mm/dd/yyyy',VarToDateTime(Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['A3','A3'].Value))));

  x_Count := 0;
  with scExcelExport1.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value)) <> '' then
            begin
              x_count := 0;

              x_Vehicles_id := VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value);
              x_Addressbook_id := VarToStr(Range['BK'+IntToStr(x_Row), 'BK'+IntToStr(x_Row)].Value);
              x_FromCities_id := VarToStr(Range['BL'+IntToStr(x_Row), 'BL'+IntToStr(x_Row)].Value);
              x_ToCities_id := VarToStr(Range['BM'+IntToStr(x_Row), 'BM'+IntToStr(x_Row)].Value);

              x_Cost := 'null';
              if Trim(VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost := VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value);

              x_QuoFixedRatesInterCities_id := IntToStr(GetNextId('QuoFixedRatesInterCities', 'QuoFixedRatesInterCities_id'));

              x_exists := CheckInterCityRecordExists(x_Vehicles_id, x_Addressbook_id, x_FromCities_id, x_ToCities_id, x_wef, x_Currencies_id);

              x_valid := true;

              if (x_Vehicles_id = 'null') then
                begin
                  if x_Vehicles_id = 'null' then
                    ShowAsError(IntToStr(x_Row), 'Invalid vehicle', 2)
                end
              else if not x_valid then
                begin
                  ShowAsError(IntToStr(x_Row), 'Invalid vehicle', 2);
                end

              else if not x_exists then
                begin
                  x_QueryString := 'INSERT INTO QuoFixedRatesInterCities (QuoFixedRatesInterCities_id, ' +
                    'Vehicles_id, AddressBook_id, FromCities_id, ToCities_id, Wef, Cost, Currencies_id) ' +
                    'VALUES (' + x_QuoFixedRatesInterCities_id + ',' + x_Vehicles_id + ',' + x_Addressbook_id + ',' + x_FromCities_id + ',' + x_ToCities_id +
                    ',''' + x_Wef + ''',' + x_Cost + ',' + x_Currencies_id + ')';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end
              else
                begin
                  x_QueryString := 'UPDATE QuoFixedRatesInterCities ' +
                    'SET Cost = ' + x_Cost + ' ' +
                    'WHERE Vehicles_id = ' + x_Vehicles_id + ' ' +
                    'AND Wef = ''' + x_Wef + ''' ' +
                    'AND AddressBook_id = ' + x_AddressBook_id + ' ' +
                    'AND FromCities_id = ' + x_FromCities_id + ' ' +
                    'AND ToCities_id = ' + x_ToCities_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;
                end
            end
          else
            begin
              x_count := x_count + 1;
              if x_count = 10 then
                x_eof := true;
            end;
          x_row := x_row + 1;
        end;
    end;

  GpSds.Free;

end;



procedure TQuoFixedRateAccommodationForm.GetSightSeeingDataFromExcel;
var
  x_Count, x_Row : Integer;
  x_eof: Boolean;
  x_QuoFixedRatesServices_id, x_QueryString, x_Wef, x_Rate: String;
  x_Cost_1, x_Cost_2, x_Cost_3, x_Cost_4, x_Cost_5: string;
  x_Cost_6, x_Cost_7, x_Cost_8, x_Cost_9, x_Cost_10: string;
  x_CurrencyCode, x_Currencies_id, x_Services_id, x_Vehicles_id, x_AgentAddressbook_id: string;
  GpSds: TSQLDataSet;
  x_exists, x_valid: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_eof := False;
  x_Row := 7;

  ShowAsError('', '', 1);

  x_CurrencyCode := 'INR';

  if Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E3', 'E3'].Value)) <> '' then
    x_CurrencyCode := Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['E3', 'E3'].Value));

  x_Wef := FormatDateTime('mm/dd/yyyy',VarToDateTime(Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['A3','A3'].Value))));

  x_Currencies_id := IntToStr(GetCurrencies_id(x_CurrencyCode));

  x_Count := 0;
  with scExcelExport1.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value)) <> '' then
            begin
              x_count := 0;

              x_AgentAddressbook_id := VarToStr(Range['BK'+IntToStr(x_Row), 'BK'+IntToStr(x_Row)].Value);
              x_Services_id := VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value);

              if Trim(VarToStr(Range['BL'+IntToStr(x_Row), 'BL'+IntToStr(x_Row)].Value)) <> '' then
                x_Vehicles_id := IntToStr(GetVehicles_id(Trim(VarToStr(Range['BL'+IntToStr(x_Row), 'BL'+IntToStr(x_Row)].Value))));
              if x_Vehicles_id = '-1' then
                x_Vehicles_id := 'null';

              x_Cost_1 := 'null';
              if Trim(VarToStr(Range['F'+IntToStr(x_Row), 'F'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_1 := VarToStr(Range['F'+IntToStr(x_Row), 'F'+IntToStr(x_Row)].Value);

              x_Cost_2 := 'null';
              if Trim(VarToStr(Range['G'+IntToStr(x_Row), 'G'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_2 := VarToStr(Range['G'+IntToStr(x_Row), 'G'+IntToStr(x_Row)].Value);

              x_Cost_3 := 'null';
              if Trim(VarToStr(Range['H'+IntToStr(x_Row), 'H'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_3 := VarToStr(Range['H'+IntToStr(x_Row), 'H'+IntToStr(x_Row)].Value);

              x_Cost_4 := 'null';
              if Trim(VarToStr(Range['I'+IntToStr(x_Row), 'I'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_4 := VarToStr(Range['I'+IntToStr(x_Row), 'I'+IntToStr(x_Row)].Value);

              x_Cost_5 := 'null';
              if Trim(VarToStr(Range['J'+IntToStr(x_Row), 'J'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_5 := VarToStr(Range['J'+IntToStr(x_Row), 'J'+IntToStr(x_Row)].Value);

              x_Cost_6 := 'null';
              if Trim(VarToStr(Range['K'+IntToStr(x_Row), 'K'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_6 := VarToStr(Range['K'+IntToStr(x_Row), 'K'+IntToStr(x_Row)].Value);

              x_Cost_7 := 'null';
              if Trim(VarToStr(Range['L'+IntToStr(x_Row), 'L'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_7 := VarToStr(Range['L'+IntToStr(x_Row), 'L'+IntToStr(x_Row)].Value);

              x_Cost_8 := 'null';
              if Trim(VarToStr(Range['M'+IntToStr(x_Row), 'M'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_8 := VarToStr(Range['M'+IntToStr(x_Row), 'M'+IntToStr(x_Row)].Value);

              x_Cost_9 := 'null';
              if Trim(VarToStr(Range['N'+IntToStr(x_Row), 'N'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_9 := VarToStr(Range['N'+IntToStr(x_Row), 'N'+IntToStr(x_Row)].Value);

              x_Cost_10 := 'null';
              if Trim(VarToStr(Range['O'+IntToStr(x_Row), 'O'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost_10 := VarToStr(Range['O'+IntToStr(x_Row), 'O'+IntToStr(x_Row)].Value);

              x_QuoFixedRatesServices_id := IntToStr(GetNextId('QuoFixedRatesServices', 'QuoFixedRatesServices_id'));

              x_exists := CheckSightSeeingRecordExists(x_Services_id, x_AgentAddressbook_id, x_wef, x_Currencies_id);

              x_valid := true;

              if not x_exists then
                begin
                  x_QueryString := 'INSERT INTO QuoFixedRatesServices (QuoFixedRatesServices_id, ' +
                    'Services_id, AgentAddressBook_id, Wef, Vehicles_id, Currencies_id, SightSeeing, ' +
                    'Cost_1, Cost_2, Cost_3, Cost_4, Cost_5, Cost_6, Cost_7, Cost_8, Cost_9, Cost_10 ) ' +
                    'VALUES (' + x_QuoFixedRatesServices_id + ',' + x_Services_id + ',' + x_AgentAddressbook_id +
                    ',''' + x_Wef + ''',' + x_Vehicles_id + ',' + x_Currencies_id + ', 1,' +
                    x_Cost_1 + ',' + x_Cost_2 + ',' + x_Cost_3 + ',' + x_Cost_4 + ',' + x_Cost_5 + ',' +
                    x_Cost_6 + ',' + x_Cost_7 + ',' + x_Cost_8 + ',' + x_Cost_9 + ',' + x_Cost_10 + ')';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                  x_QueryString := 'UPDATE QuoFixedRatesServices SET ' +
                    'Cost_1 = ROUND(Cost_1,0), ' +
                    'Cost_2 = ROUND(Cost_2,0), ' +
                    'Cost_3 = ROUND(Cost_3,0), ' +
                    'Cost_4 = ROUND(Cost_4,0), ' +
                    'Cost_5 = ROUND(Cost_5,0), ' +
                    'Cost_6 = ROUND(Cost_6,0), ' +
                    'Cost_7 = ROUND(Cost_7,0), ' +
                    'Cost_8 = ROUND(Cost_8,0), ' +
                    'Cost_9 = ROUND(Cost_9,0), ' +
                    'Cost_10 = ROUND(Cost_10,0) ' +
                    'WHERE QuoFixedRatesServices_id = ' + x_QuoFixedRatesServices_id;

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;


                end
              else
                begin
                  x_QueryString := 'UPDATE QuoFixedRatesServices ' +
                    'SET Cost_1 = ' + x_Cost_1 + ', ' +
                    'Cost_2 = ' + x_Cost_2 + ', ' +
                    'Cost_3 = ' + x_Cost_3 + ', ' +
                    'Cost_4 = ' + x_Cost_4 + ', ' +
                    'Cost_5 = ' + x_Cost_5 + ', ' +
                    'Cost_6 = ' + x_Cost_6 + ', ' +
                    'Cost_7 = ' + x_Cost_7 + ', ' +
                    'Cost_8 = ' + x_Cost_8 + ', ' +
                    'Cost_9 = ' + x_Cost_9 + ', ' +
                    'Cost_10 = ' + x_Cost_10 + ' ' +
                    'WHERE Services_id = ' + x_Services_id + ' ' +
                    'AND Wef = ''' + x_Wef + ''' ' +
                    'AND AgentAddressBook_id = ' + x_AgentAddressBook_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ' +
                    'AND SightSeeing = 1';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;


                  x_QueryString := 'UPDATE QuoFixedRatesServices SET ' +
                    'Cost_1 = ROUND(Cost_1,0), ' +
                    'Cost_2 = ROUND(Cost_2,0), ' +
                    'Cost_3 = ROUND(Cost_3,0), ' +
                    'Cost_4 = ROUND(Cost_4,0), ' +
                    'Cost_5 = ROUND(Cost_5,0), ' +
                    'Cost_6 = ROUND(Cost_6,0), ' +
                    'Cost_7 = ROUND(Cost_7,0), ' +
                    'Cost_8 = ROUND(Cost_8,0), ' +
                    'Cost_9 = ROUND(Cost_9,0), ' +
                    'Cost_10 = ROUND(Cost_10,0) ' +
                    'WHERE Services_id = ' + x_Services_id + ' ' +
                    'AND Wef = ''' + x_Wef + ''' ' +
                    'AND AgentAddressBook_id = ' + x_AgentAddressBook_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ' +
                    'AND SightSeeing = 1';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end
            end
          else
            begin
              x_count := x_count + 1;
              if x_count = 10 then
                x_eof := true;
            end;
          x_row := x_row + 1;
        end;
    end;

  GpSds.Free;

end;


procedure TQuoFixedRateAccommodationForm.GetTrainDataFromExcel;
var
  x_Count, x_Row : Integer;
  x_eof: Boolean;
  x_QuoFixedRatesServices_id, x_QueryString, x_Cost, x_Wef, x_Rate: String;
  x_CurrencyCode, x_Currencies_id, x_Trains_id, x_class_id, x_TrainNo: string;
  x_FromCities_id, x_ToCities_id, x_FromStations_id, x_ToStations_id, x_QuoFixedRatesTickets_id: string;
  NewString, x_Timings: string;
  GpSds: TSQLDataSet;
  x_exists, x_valid, ClickedOK: boolean;
begin

  NewString := '01/01/' + IntToStr(YearOf(Date()));

  ClickedOK:= InputQuery('Enter Wef', 'Enter Wef', NewString);

  if not ClickedOk then
    exit;

  x_wef := FormatDateTime('mm/dd/yyyy',StrToDate(NewString));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_eof := False;
  x_Row := 10;

  ShowAsError('', '', 1);

  x_CurrencyCode := 'INR';

  if Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['K12', 'K12'].Value)) <> '' then
    x_CurrencyCode := Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['K12', 'K12'].Value));

  x_Currencies_id := IntToStr(GetCurrencies_id(x_CurrencyCode));

  x_Count := 0;
  with scExcelExport1.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if VarToStr(Range['F'+IntToStr(x_Row), 'F'+IntToStr(x_Row)].Value) = 'A/C Chair' then
            x_class_id := '5'
          else if VarToStr(Range['F'+IntToStr(x_Row), 'F'+IntToStr(x_Row)].Value) = '2 Tier A/C' then
            x_class_id := '6'
          else if VarToStr(Range['F'+IntToStr(x_Row), 'F'+IntToStr(x_Row)].Value) = '3 Tier A/C' then
            x_class_id := '8';

          if trim(VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value)) <> '' then
            begin
              x_count := 0;

              x_Trains_id := VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value);
              x_FromCities_id := VarToStr(Range['BK'+IntToStr(x_Row), 'BK'+IntToStr(x_Row)].Value);
              x_ToCities_id := VarToStr(Range['BL'+IntToStr(x_Row), 'BL'+IntToStr(x_Row)].Value);
              x_FromStations_id := VarToStr(Range['BM'+IntToStr(x_Row), 'BM'+IntToStr(x_Row)].Value);
              x_ToStations_id := VarToStr(Range['BN'+IntToStr(x_Row), 'BN'+IntToStr(x_Row)].Value);

              x_TrainNo := 'null';
              if Trim(VarToStr(Range['N'+IntToStr(x_Row), 'N'+IntToStr(x_Row)].Value)) <> '' then
                x_TrainNo := VarToStr(Range['N'+IntToStr(x_Row), 'N'+IntToStr(x_Row)].Value);

              x_Cost := 'null';
              if Trim(VarToStr(Range['K'+IntToStr(x_Row), 'K'+IntToStr(x_Row)].Value)) <> '' then
                x_Cost := VarToStr(Range['K'+IntToStr(x_Row), 'K'+IntToStr(x_Row)].Value);

              x_Timings := 'null';
              if Trim(VarToStr(Range['Q'+IntToStr(x_Row), 'Q'+IntToStr(x_Row)].Value)) <> '' then
                begin
                  if Pos('/',VarToStr(Range['Q'+IntToStr(x_Row), 'Q'+IntToStr(x_Row)].Value)) > 0 then
                    x_Timings := VarToStr(Range['Q'+IntToStr(x_Row), 'Q'+IntToStr(x_Row)].Value)
                  else
                    begin
                      x_Timings := Range['Q'+IntToStr(x_Row), 'Q'+IntToStr(x_Row)].Text;
                    end;
                end;

              x_QuoFixedRatesTickets_id := IntToStr(GetNextId('QuoFixedRatesTickets', 'QuoFixedRatesTickets_id'));

              x_exists := CheckTrainRecordExists(x_TrainNo, x_wef, x_Currencies_id, x_Class_id);

              x_valid := true;

              if not x_exists then
                begin
                  x_QueryString := 'INSERT INTO QuoFixedRatesTickets (QuoFixedRatesTickets_id, ' +
                    'Tickets_id, From_Cities_id, To_Cities_id, From_TrainStations_id, To_TrainStations_id, ' +
                    'TrainNo, Class_id, Wef, Cost, Currencies_id, Trains_id, Timings) ' +
                    'VALUES (' + x_QuoFixedRatesTickets_id + ',' +
                    '2' + ',' + x_FromCities_id + ',' + x_ToCities_id + ',' + x_FromStations_id + ',' + x_ToStations_id + ',''' +
                    x_TrainNo + ''',' + x_Class_id + ',''' + x_Wef + ''',' + x_Cost + ',' + x_Currencies_id + ',' + x_Trains_id + ',''' +
                    x_Timings + ''')';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end
              else
                begin
                  x_QueryString := 'UPDATE QuoFixedRatesTickets ' +
                    'SET Cost = ' + x_Cost + ', Timings = ''' + x_Timings + ''' ' +
                    'WHERE TrainNo = ''' + x_TrainNo + ''' ' +
                    'AND Wef = ''' + x_Wef + ''' ' +
                    'AND Class_id = ' + x_Class_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ' +
                    'AND Tickets_id = 2';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;
                end
            end
          else
            begin
              x_count := x_count + 1;
              if x_count = 10 then
                x_eof := true;
            end;
          x_row := x_row + 1;
        end;
    end;
  GpSds.Free;
end;


procedure TQuoFixedRateAccommodationForm.ShowAsError(x_Row: String; x_Error: String; x_Option: Integer);
var
  GpSds: TSQLDataSet;
  x_QueryString, x_ImportId: String;
begin
  if x_Option = 1 then
    x_QueryString := 'TRUNCATE TABLE ImportErrors';

  if x_Option = 2 then
    begin
      x_ImportId := IntToStr(GetNextId('ImportErrors', 'ImportErrors_id'));

      x_QueryString := 'INSERT INTO ImportErrors(ImportErrors_id, RowNo, ErrorDescription) ' +
        ' VALUES (' + x_ImportId + ',' + x_Row + ',' + QuotedStr(x_Error) + ')';
    end;
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;


procedure TQuoFixedRateAccommodationForm.FilterData;
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      CostAccSds.Close;
      CostAccSds.Params[0].Value := cxDateEdit.Date;
      CostAccSds.Open;

      CostAccCds.Close;
      CostAccCds.Open;
      cxGrid1DBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      CostTrfSds.Close;
      CostTrfSds.Params[0].Value := cxDateEdit.Date;
      CostTrfSds.Open;

      CostTrfCds.Close;
      CostTrfCds.Open;
      cxTransferGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      CostTrainSds.Close;
      CostTrainSds.Params[0].Value := cxDateEdit.Date;
      CostTrainSds.Open;

      CostTrainCds.Close;
      CostTrainCds.Open;
      cxTrainGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin
      CostSightSds.Close;
      CostSightSds.Params[0].Value := cxDateEdit.Date;
      CostSightSds.Open;

      CostSightCds.Close;
      CostSightCds.Open;
      cxSightGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin
      CostCarSds.Close;
      CostCarSds.Params[0].Value := cxDateEdit.Date;
      CostCarSds.Open;

      CostCarCds.Close;
      CostCarCds.Open;
      cxCarHireGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin
      CostInterCitiesSds.Close;
      CostInterCitiesSds.Params[0].Value := cxDateEdit.Date;
      CostInterCitiesSds.Open;

      CostInterCitiesCds.Close;
      CostInterCitiesCds.Open;
      cxInterCityGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin
      TransModuleSds.Close;
      TransModuleSds.Params[0].Value := cxDateEdit.Date;
      TransModuleSds.Open;

      TransModuleCds.Close;
      TransModuleCds.Open;
      cxTranspModGridDBTableView1.ViewData.Expand(True);
    end;
end;

function TQuoFixedRateAccommodationForm.GetMealPlans_id (x_MealPlan: String): Integer;
var
  GpSds: TSQLDataSet;
  x_MealPlans_id : Integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT MealPlans_id FROM MealPlans WHERE MealPlan = ' + QuotedStr(x_MealPlan);
  GpSds.Open;

  x_MealPlans_id := -1;
  if (not GpSds.Eof) and (GpSds['MealPlans_id'] <> null) then
    x_MealPlans_id := GpSds['MealPlans_id'];

  GpSds.Free;

  Result := x_MealPlans_id;
end;

function TQuoFixedRateAccommodationForm.GetVehicles_id (x_Vehicle: String): Integer;
var
  GpSds: TSQLDataSet;
  x_Vehicles_id : Integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Vehicles_id FROM Vehicles WHERE Vehicle = ' + QuotedStr(x_Vehicle);
  GpSds.Open;

  x_Vehicles_id := -1;
  if (not GpSds.Eof) and (GpSds['Vehicles_id'] <> null) then
    x_Vehicles_id := GpSds['Vehicles_id'];

  GpSds.Free;

  Result := x_Vehicles_id;
end;

function TQuoFixedRateAccommodationForm.GetRoomTypes_id (x_RoomType: String): Integer;
var
  GpSds: TSQLDataSet;
  x_RoomTypes_id : Integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT RoomTypes_id FROM RoomTypes WHERE RoomType = ' + QuotedStr(x_RoomType);
  GpSds.Open;

  x_RoomTypes_id := -1;
  if (not GpSds.Eof) and (GpSds['RoomTypes_id'] <> null) then
    x_RoomTypes_id := GpSds['RoomTypes_id'];

  GpSds.Free;

  Result := x_RoomTypes_id;
end;

function TQuoFixedRateAccommodationForm.GetCurrencies_id(x_CurrencyCode: String): Integer;
var
  GpSds: TSQLDataSet;
  x_Currencies_id : Integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Currencies_id FROM Currencies WHERE CurrencyCode = ' + QuotedStr(x_CurrencyCode);
  GpSds.Open;

  x_Currencies_id := -1;
  if (not GpSds.Eof) and (GpSds['Currencies_id'] <> null) then
    x_Currencies_id := GpSds['Currencies_id'];

  GpSds.Free;

  Result := x_Currencies_id;
end;

function TQuoFixedRateAccommodationForm.GetClass_id(x_Class: String): Integer;
var
  GpSds: TSQLDataSet;
  x_Class_id : Integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Class_id FROM Class WHERE Class = ' + QuotedStr(x_Class);
  GpSds.Open;

  x_Class_id := -1;
  if (not GpSds.Eof) and (GpSds['Class_id'] <> null) then
    x_Class_id := GpSds['Class_id'];

  GpSds.Free;

  Result := x_Class_id;
end;


procedure TQuoFixedRateAccommodationForm.GetDataFromExcel;
var
  x_Count, x_Row : Integer;
  x_CurrencyCode, x_AddressBook_id, x_RoomTypes_id, x_MealPlans_id, x_Currencies_id: String;
  x_FromDate, x_ToDate, x_ac, x_CostSingle, x_CostDouble, x_CostTriple: string;
  x_eof: Boolean;
  x_QuoFixedRatesAccommodation_id, x_QueryString: string;
  GpSds: TSQLDataSet;
  x_exists, x_valid: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_eof := False;
  x_Row := 7;

  ShowAsError('', '', 1);

  x_CurrencyCode := 'INR';
  if Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['I6', 'I6'].Value)) <> '' then
    x_CurrencyCode := Trim(VarToStr(scExcelExport1.ExcelWorkSheet.Range['I6', 'I6'].Value));

  x_Currencies_id := IntToStr(GetCurrencies_id(x_CurrencyCode));

  x_Count := 0;

  with scExcelExport1.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value)) <> '' then
            begin
              x_count := 0;

              x_AddressBook_id := VarToStr(Range['BJ'+IntToStr(x_Row), 'BJ'+IntToStr(x_Row)].Value);

              x_FromDate := FormatDateTime('mm/dd/yyyy',VarToDateTime(Trim(VarToStr(Range['D'+IntToStr(x_Row), 'D'+IntToStr(x_Row)].Value))));

              x_ToDate := 'null';
              if Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value > '' then
                x_ToDate := '''' + FormatDateTime('mm/dd/yyyy',VarToDateTime(Trim(VarToStr(Range['E'+IntToStr(x_Row), 'E'+IntToStr(x_Row)].Value)))) + '''';

              x_ac := '1';
              if Trim(VarToStr(Range['F'+IntToStr(x_Row), 'F'+IntToStr(x_Row)].Value)) = 'NAC' then
                x_ac := '0';

              x_RoomTypes_id := 'null';
              if Trim(VarToStr(Range['G'+IntToStr(x_Row), 'G'+IntToStr(x_Row)].Value)) <> '' then
                x_RoomTypes_id := IntToStr(GetRoomTypes_id(Trim(VarToStr(Range['G'+IntToStr(x_Row), 'G'+IntToStr(x_Row)].Value))));
              if x_RoomTypes_id = '-1' then
                x_RoomTypes_id := 'null';

              x_MealPlans_id := 'null';
              if Trim(VarToStr(Range['H'+IntToStr(x_Row), 'H'+IntToStr(x_Row)].Value)) <> '' then
                x_MealPlans_id := IntToStr(GetMealPlans_id(Trim(VarToStr(Range['H'+IntToStr(x_Row), 'H'+IntToStr(x_Row)].Value))));
              if x_MealPlans_id = '-1' then
                x_MealPlans_id := 'null';

              x_CostSingle := 'null';
              if Trim(VarToStr(Range['I'+IntToStr(x_Row), 'I'+IntToStr(x_Row)].Value)) <> '' then
                x_CostSingle := VarToStr(Range['I'+IntToStr(x_Row), 'I'+IntToStr(x_Row)].Value);

              x_CostDouble := 'null';
              if Trim(VarToStr(Range['J'+IntToStr(x_Row), 'J'+IntToStr(x_Row)].Value)) <> '' then
                x_CostDouble := VarToStr(Range['J'+IntToStr(x_Row), 'J'+IntToStr(x_Row)].Value);

              x_CostTriple := 'null';
              if Trim(VarToStr(Range['K'+IntToStr(x_Row), 'K'+IntToStr(x_Row)].Value)) <> '' then
                x_CostTriple := VarToStr(Range['K'+IntToStr(x_Row), 'K'+IntToStr(x_Row)].Value);

              x_QuoFixedRatesAccommodation_id := IntToStr(GetNextId('QuoFixedRatesAccommodation', 'QuoFixedRatesAccommodation_id'));

              x_exists := CheckRecordExists (x_Addressbook_id, x_FromDate, x_AC, x_RoomTypes_id, x_MealPlans_id, x_Currencies_id);

              // do not check validity of roomtype+mealplan as some hotels give net rate which includes b/f so no meal costing will be found
//              x_valid := CheckRecordValid (x_Addressbook_id, x_RoomTypes_id, x_MealPlans_id);
              x_valid := true;

              if (x_RoomTypes_id = 'null') or (x_MealPlans_id = 'null') then
                begin
                  if x_RoomTypes_id = 'null' then
                    ShowAsError(IntToStr(x_Row), 'Invalid Room Type for hotel', 2)
                  else if x_MealPlans_id = 'null' then
                    ShowAsError(IntToStr(x_Row), 'Invalid Meal Plan for hotel', 2);
                end
              else if not x_valid then
                begin
                  ShowAsError(IntToStr(x_Row), 'Invalid RoomType / MealPlan combination for hotel', 2);
                end
              else if not x_exists then
                begin
                  x_QueryString := 'INSERT INTO QuoFixedRatesAccommodation (QuoFixedRatesAccommodation_id, ' +
                    'Addressbook_id, FromDate, ToDate, AC, RoomTypes_id, MealPlans_id, ' +
                    'CostSingle, CostDouble, CostTriple, Currencies_id) ' +
                    'VALUES (' + x_QuoFixedratesAccommodation_id + ',' +
                    x_Addressbook_id + ',''' + x_FromDate + ''',' + x_ToDate + ',' +
                    x_ac + ',' + x_RoomTypes_id + ',' + x_MealPlans_id + ',' +
                    x_CostSingle + ',' + x_CostDouble + ',' + x_CostTriple + ',' + x_Currencies_id + ')';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end
              else
                begin
                  x_QueryString := 'UPDATE QuoFixedRatesAccommodation ' +
                    'SET CostSingle = ' + x_CostSingle + ', ' +
                    'CostDouble = ' + x_CostDouble + ', ' +
                    'CostTriple = ' + x_CostTriple + ' ' +
                    'WHERE Addressbook_id = ' + x_Addressbook_id + ' ' +
                    'AND FromDate = ''' + x_FromDate + ''' ' +
                    'AND ac = ' + x_ac + ' ' +
                    'AND RoomTypes_id = ' + x_RoomTypes_id + ' ' +
                    'AND MealPlans_id = ' + x_MealPlans_id + ' ' +
                    'AND Currencies_id = ' + x_Currencies_id + ' ';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end

            end
          else
            begin
              x_count := x_count + 1;
              if x_count = 10 then
                x_eof := true;
            end;

          x_row := x_row + 1;

        end;

    end;

  GpSds.Free;

end;

function TQuoFixedRateAccommodationForm.CheckTrfRecordExists (x_Services_id, x_AgentAdressBook_id, x_Wef, x_Currencies_id, x_Vehicles_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoFixedRatesServices ' +
    'WHERE Services_id = ' + x_Services_id + ' ' +
    'AND Wef = ''' + x_Wef + ''' ' +
    'AND Vehicles_id = ' + x_Vehicles_id + ' ' +
    'AND Currencies_id = ' + x_Currencies_id + ' ' +
    'AND AgentAddressBook_id = ' + x_AgentAdressBook_id + ' ' +
    'AND SightSeeing = 0';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;

function TQuoFixedRateAccommodationForm.CheckCarRecordExists (x_Vehicles_id, x_AddressBook_id, x_ServiceCities_id, x_Wef, x_Currencies_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoFixedRatesCars ' +
    'WHERE Vehicles_id = ' + x_Vehicles_id + ' ' +
    'AND Wef = ''' + x_Wef + ''' ' +
    'AND ServiceCities_id = ' + x_ServiceCities_id + ' ' +
    'AND Currencies_id = ' + x_Currencies_id + ' ' +
    'AND AddressBook_id = ' + x_AddressBook_id + ' ';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;

function TQuoFixedRateAccommodationForm.CheckInterCityRecordExists (x_Vehicles_id, x_AddressBook_id, x_FromCities_id, x_ToCities_id, x_Wef, x_Currencies_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoFixedRatesInterCities ' +
    'WHERE Vehicles_id = ' + x_Vehicles_id + ' ' +
    'AND Wef = ''' + x_Wef + ''' ' +
    'AND FromCities_id = ' + x_FromCities_id + ' ' +
    'AND ToCities_id = ' + x_ToCities_id + ' ' +
    'AND Currencies_id = ' + x_Currencies_id + ' ' +
    'AND AddressBook_id = ' + x_AddressBook_id + ' ';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;


function TQuoFixedRateAccommodationForm.CheckSightSeeingRecordExists (x_Services_id, x_AgentAdressBook_id, x_Wef, x_Currencies_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoFixedRatesServices ' +
    'WHERE Services_id = ' + x_Services_id + ' ' +
    'AND Wef = ''' + x_Wef + ''' ' +
    'AND Currencies_id = ' + x_Currencies_id + ' ' +
    'AND AgentAddressBook_id = ' + x_AgentAdressBook_id + ' ' +
    'AND SightSeeing = 1';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;


function TQuoFixedRateAccommodationForm.CheckTrainRecordExists (x_TrainNo, x_Wef, x_Currencies_id, x_Class_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoFixedRatesTickets ' +
    'WHERE TrainNo = ''' + x_TrainNo + ''' ' +
    'AND Wef = ''' + x_Wef + ''' ' +
    'AND Currencies_id = ' + x_Currencies_id + ' ' +
    'AND Class_id = ' + x_Class_id + ' ' +
    'AND Tickets_id = 2';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;


function TQuoFixedRateAccommodationForm.CheckRecordExists (x_Addressbook_id, x_FromDate, x_AC, x_RoomTypes_id, x_MealPlans_id, x_Currencies_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoFixedRatesAccommodation ' +
    'WHERE Addressbook_id = ' + x_Addressbook_id + ' ' +
    'AND FromDate = ''' + x_FromDate + ''' ' +
    'AND ac = ' + x_ac + ' ' +
    'AND RoomTypes_id = ' + x_RoomTypes_id + ' ' +
    'AND MealPlans_id = ' + x_MealPlans_id + ' ' +
    'AND Currencies_id = ' + x_Currencies_id;
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;

function TQuoFixedRateAccommodationForm.CheckRecordValid (x_Addressbook_id, x_RoomTypes_id, x_MealPlans_id: string): boolean;
var
  GpSds: TSQLDataSet;
  x_count: integer;
  x_exists: boolean;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM Seasons s INNER JOIN HotelTariffsIndia h ' +
    'ON s.Seasons_id = h.Seasons_id ' +
    'WHERE s.Addressbook_id = ' + x_Addressbook_id + ' ' +
    'AND h.RoomTypes_id = ' + x_RoomTypes_id + ' ' +
    'AND h.MealPlans_id = ' + x_MealPlans_id + ' ';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    x_exists := true;

  GpSds.Free;
  Result := x_exists;
end;


procedure TQuoFixedRateAccommodationForm.InitializeExcel;
begin
  scExcelExport1.CloseAllExcelApps;
  OpenDialog1.Execute;
  scExcelExport1.ExcelVisible:=True;
  scExcelExport1.LoadDefaultProperties;
  scExcelExport1.Filename := OpenDialog1.FileName;
  scExcelExport1.WorksheetName:= 'Prices';
  scExcelExport1.ConnectTo := ctNewExcel;
  scExcelExport1.Connect;
end;

procedure TQuoFixedRateAccommodationForm.ImportCost;
begin
  InitializeExcel;

  if cxPageControl1.ActivePageIndex = 0 then
    GetDataFromExcel
  else if cxPageControl1.ActivePageIndex = 1 then
    GetTransferDataFromExcel
  else if cxPageControl1.ActivePageIndex = 2 then
    GetTrainDataFromExcel
  else if cxPageControl1.ActivePageIndex = 3 then
    GetSightSeeingDataFromExcel
  else if cxPageControl1.ActivePageIndex = 4 then
    GetCarHireDataFromExcel
  else if cxPageControl1.ActivePageIndex = 5 then
    GetInterCityDataFromExcel;

  DisplayErrors;
  scExcelExport1.SaveAs(OpenDialog1.FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  ShowMessage ('Done');
end;


procedure TQuoFixedRateAccommodationForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TQuoFixedRateAccommodationForm.cxImportBtnClick(Sender: TObject);
begin
  ImportCost;
  FilterData;
end;

procedure TQuoFixedRateAccommodationForm.cxFilterBtnClick(Sender: TObject);
begin
  FilterData;
end;

procedure TQuoFixedRateAccommodationForm.DisplayErrors;
var
  GpSds: TSQLDataSet;
  x_count: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM ImportErrors ';
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count > 0 then
    DisplayErrors1Click(nil);

  GpSds.Free;

end;


procedure TQuoFixedRateAccommodationForm.DisplayErrors1Click(
  Sender: TObject);
begin
  if ImportErrorsForm = nil then
    Application.CreateForm(TImportErrorsForm, ImportErrorsForm);

  ImportErrorsForm.ShowModal;
  ImportErrorsForm.Free;
  ImportErrorsForm := nil;

end;


procedure TQuoFixedRateAccommodationForm.Deleteallforselecteddate1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_QueryString, x_Msg: string;
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      if CostAccCds['FromDate'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesAccommodation WHERE FromDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',CostAccCds['FromDate']));
      x_Msg := 'This will delete all accommodation for ' + FormatDateTime('dd/mm/yyyy',CostAccCds['FromDate']);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      if CostTrfCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesServices WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',CostTrfCds['Wef'])) + ' AND SightSeeing = 0';
      x_Msg := 'This will delete all transfers for ' + FormatDateTime('dd/mm/yyyy',CostTrfCds['wef']);
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      if CostTrainCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesTickets WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',CostTrainCds['Wef']));
      x_Msg := 'This will delete all trains for ' + FormatDateTime('dd/mm/yyyy',CostTrainCds['wef']);
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin
      if CostSightCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesServices WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',CostSightCds['Wef'])) + ' AND SightSeeing = 1';
      x_Msg := 'This will delete all s/s for ' + FormatDateTime('dd/mm/yyyy',CostSightCds['wef']);
    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin
      if CostCarCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesCars WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',CostCarCds['Wef']));
      x_Msg := 'This will delete all cars for ' + FormatDateTime('dd/mm/yyyy',CostCarCds['wef']);
    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin
      if CostInterCitiesCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesInterCities WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',CostInterCitiesCds['Wef']));
      x_Msg := 'This will delete all inter city transport for ' + FormatDateTime('dd/mm/yyyy',CostInterCitiesCds['wef']);
    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin
      if TransModuleCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesTranspModules WHERE Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',TransModuleCds['Wef']));
      x_Msg := 'This will delete all module transport for ' + FormatDateTime('dd/mm/yyyy',TransModuleCds['wef']);
    end;

  if MessageDlg (x_Msg + '. Are you sure?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  FilterData;

end;

procedure TQuoFixedRateAccommodationForm.Deleteselectedrecord1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_QueryString, x_Msg: string;
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      if CostAccCds['QuoFixedRatesAccommodation_id'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesAccommodation WHERE QuoFixedRatesAccommodation_id = ' + IntToStr(CostAccCds['QuoFixedRatesAccommodation_id']);
      x_Msg := 'This will delete the selected accommodation record';
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      if CostTrfCds['QuoFixedRatesServices_id'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesServices WHERE QuoFixedRatesServices_id = ' + IntToStr(CostTrfCds['QuoFixedRatesServices_id']) + ' AND SightSeeing = 0';
      x_Msg := 'This will delete the selected transfer record';
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      if CostTrainCds['QuoFixedRatesTickets_id'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesTickets WHERE QuoFixedRatesTickets_id = ' + IntToStr(CostTrainCds['QuoFixedRatesTickets_id']);
      x_Msg := 'This will delete the selected train record';
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin
      if CostSightCds['QuoFixedRatesServices_id'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesServices WHERE QuoFixedRatesServices_id = ' + IntToStr(CostSightCds['QuoFixedRatesServices_id']) + ' AND SightSeeing = 1';
      x_Msg := 'This will delete the selected s/s record';
    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin
      if CostCarCds['QuoFixedRatesCars_id'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesCars WHERE QuoFixedRatesCars_id = ' + IntToStr(CostCarCds['QuoFixedRatesCars_id']);
      x_Msg := 'This will delete the selected car hire record';
    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin
      if CostInterCitiesCds['QuoFixedRatesInterCities_id'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesInterCities WHERE QuoFixedRatesInterCities_id = ' + IntToStr(CostInterCitiesCds['QuoFixedRatesInterCities_id']);
      x_Msg := 'This will delete the selected inter-city hire record';
    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin
      if TransModuleCds['Wef'] <> null then
        x_QueryString := 'DELETE FROM QuoFixedRatesTranspModules WHERE QuoFixedRatesTranspModules_id = ' + IntToStr(TransModuleCds['QuoFixedRatesTranspModules_id']);
      x_Msg := 'This will delete the selected module transport record';
    end;

  if MessageDlg (x_Msg + '. Are you sure?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  FilterData;

end;

procedure TQuoFixedRateAccommodationForm.EditInsert1Click(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      _QuoFixedRateAccModifyForm_Level := 4;

      If _QuoFixedRateAccModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateAccModifyForm_Cities_id := CostAccCds['Cities_id'];
      _QuoFixedRateAccModifyForm_Addressbook_id := CostAccCds['Addressbook_id'];
      _QuoFixedRateAccModifyForm_wef := CostAccCds['FromDate'];

      if QuoFixedRateAccModifyForm = nil then
         Application.CreateForm(TQuoFixedRateAccModifyForm, QuoFixedRateAccModifyForm);

    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      _QuoFixedRateTrsfModifyForm_Level := 4;

      If _QuoFixedRateTrsfModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateTrsfModifyForm_Cities_id := CostTrfCds['Cities_id'];
      _QuoFixedRateTrsfModifyForm_Services_id := CostTrfCds['Services_id'];
      _QuoFixedRateTrsfModifyForm_wef := CostTrfCds['Wef'];

      if QuoFixedRateTrsfModifyForm = nil then
         Application.CreateForm(TQuoFixedRateTrsfModifyForm, QuoFixedRateTrsfModifyForm);

    end

  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      _QuoFixedRateTrainModifyForm_Level := 4;

      If _QuoFixedRateTrainModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateTrainModifyForm_FromCities_id := CostTrainCds['FromCities_id'];
      _QuoFixedRateTrainModifyForm_ToCities_id := CostTrainCds['ToCities_id'];
      _QuoFixedRateTrainModifyForm_TrainNo := CostTrainCds['TrainNo'];
      _QuoFixedRateTrainModifyForm_wef := CostTrainCds['Wef'];

      if QuoFixedRateTrainModifyForm = nil then
         Application.CreateForm(TQuoFixedRateTrainModifyForm, QuoFixedRateTrainModifyForm);

    end

  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      _QuoFixedRateSsModifyForm_Level := 4;

      If _QuoFixedRateSsModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateSsModifyForm_Cities_id := CostSightCds['Cities_id'];
      _QuoFixedRateSsModifyForm_Services_id := CostSightCds['Services_id'];
      _QuoFixedRateSsModifyForm_wef := CostSightCds['Wef'];

      if QuoFixedRateSsModifyForm = nil then
         Application.CreateForm(TQuoFixedRateSsModifyForm, QuoFixedRateSsModifyForm);

    end

  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      _QuoFixedRateCarHireModifyForm_Level := 4;

      If _QuoFixedRateCarHireModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateCarHireModifyForm_Cities_id := CostCarCds['ServiceCities_id'];
      _QuoFixedRateCarHireModifyForm_Addressbook_id := CostCarCds['Addressbook_id'];
      _QuoFixedRateCarHireModifyForm_wef := CostCarCds['Wef'];

      if QuoFixedRateCarHireModifyForm = nil then
         Application.CreateForm(TQuoFixedRateCarHireModifyForm, QuoFixedRateCarHireModifyForm);

    end

  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      _QuoFixedRateInterCityModifyForm_Level := 4;

      If _QuoFixedRateInterCityModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateInterCityModifyForm_Addressbook_id := CostInterCitiesCds['Addressbook_id'];
      _QuoFixedRateInterCityModifyForm_wef := CostInterCitiesCds['Wef'];

      if QuoFixedRateInterCityModifyForm = nil then
         Application.CreateForm(TQuoFixedRateInterCityModifyForm, QuoFixedRateInterCityModifyForm);

    end

  else if cxPageControl1.ActivePageIndex = 6 then
    begin

      _QuoFixedRateTranspModuleModifyForm_Level := 4;

      If _QuoFixedRateTranspModuleModifyForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      _QuoFixedRateTranspModuleModifyForm_FixedItin_id := -1;
      if TransModuleCds['FixedItin_id'] <> null then
        _QuoFixedRateTranspModuleModifyForm_FixedItin_id := TransModuleCds['FixedItin_id'];

      _QuoFixedRateTranspModuleModifyForm_wef := StrToDate('01/01/1970');  
      if TransModuleCds['Wef'] <> null then
        _QuoFixedRateTranspModuleModifyForm_wef := TransModuleCds['Wef'];

      if QuoFixedRateTranspModuleModifyForm = nil then
         Application.CreateForm(TQuoFixedRateTranspModuleModifyForm, QuoFixedRateTranspModuleModifyForm);

    end

end;

procedure TQuoFixedRateAccommodationForm.SaveAsExcel1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  raise exception.create ('under construction');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRateAcc_HotelPriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',2';
      GpSds.Open;


      if HotelPriceListForm = nil then
        Application.CreateForm(THotelPriceListForm,HotelPriceListForm);
      HotelPriceListForm.FormStyle := fsNormal;
      HotelPriceListForm.Visible := false;

      // Euro
      HotelPriceListForm.cxCurrencyLcmb.EditValue := 27;
      HotelPriceListForm.cxMarginCkb.Checked := false;
      HotelPriceListForm.cxDetailsCkb.Checked := false;      

      HotelPriceListForm.PrintReportToExcel(GpSds);

      HotelPriceListForm.Close;
      HotelPriceListForm.Free;
      HotelPriceListForm := nil;

    end

  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRateServices_TrsfPriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',2';
      GpSds.Open;

      if TransferPriceListForm = nil then
        Application.CreateForm(TTransferPriceListForm,TransferPriceListForm);
      TransferPriceListForm.FormStyle := fsNormal;
      TransferPriceListForm.Visible := false;

      // Euro
      TransferPriceListForm.cxCurrencyLcmb.EditValue := 27;
      TransferPriceListForm.cxMarginCkb.Checked := false;
      TransferPriceListForm.cxDetailsCkb.Checked := false;

      TransferPriceListForm.PrintReportToExcel(GpSds,1);

      TransferPriceListForm.Close;
      TransferPriceListForm.Free;
      TransferPriceListForm := nil;

    end

  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      WriteTrainMultiReport;

    end

  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRateServices_SsPriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',2';
      GpSds.Open;

      if SightSeeingPriceListForm = nil then
        Application.CreateForm(TSightSeeingPriceListForm,SightSeeingPriceListForm);
      SightSeeingPriceListForm.FormStyle := fsNormal;
      SightSeeingPriceListForm.Visible := false;

      // Euro
      SightSeeingPriceListForm.cxCurrencyLcmb.EditValue := 27;

      SightSeeingPriceListForm.PrintRangeReportToExcel(GpSds);

      SightSeeingPriceListForm.Close;
      SightSeeingPriceListForm.Free;
      SightSeeingPriceListForm := nil;

    end

  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRate_CarHirePriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',2';
      GpSds.Open;

      if CarHirePriceListForm = nil then
        Application.CreateForm(TCarHirePriceListForm,CarHirePriceListForm);
      CarHirePriceListForm.FormStyle := fsNormal;
      CarHirePriceListForm.Visible := false;

      // Euro
      CarHirePriceListForm.cxCurrencyLcmb.EditValue := 27;
      CarHirePriceListForm.cxMarginCkb.Checked := false;
      CarHirePriceListForm.cxDetailsCkb.Checked := false;

      CarHirePriceListForm.PrintReportToExcel(GpSds);

      CarHirePriceListForm.Close;
      CarHirePriceListForm.Free;
      CarHirePriceListForm := nil;

    end

  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRate_Car_P2P_PriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',2';
      GpSds.Open;

      if CarHirePriceListForm = nil then
        Application.CreateForm(TCarHirePriceListForm,CarHirePriceListForm);
      CarHirePriceListForm.FormStyle := fsNormal;
      CarHirePriceListForm.Visible := false;

      // Euro
      CarHirePriceListForm.cxCurrencyLcmb.EditValue := 27;
      CarHirePriceListForm.cxMarginCkb.Checked := false;
      CarHirePriceListForm.cxDetailsCkb.Checked := false;

      CarHirePriceListForm.PrintReportToExcelP2P(GpSds, 1);

      CarHirePriceListForm.Close;
      CarHirePriceListForm.Free;
      CarHirePriceListForm := nil;

    end;


  GpSds.Free;

end;

procedure TQuoFixedRateAccommodationForm.WriteTrainMultiReport;
var
  x_row, x_option, x_agents_id: integer;
  GpSds: TSQLDataSet;
  x_Margin, x_Markup, x_FileName: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_Margin := '0';

  x_Markup := '0';

  x_Agents_id := GetDefaultTrainTicketAgent;

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  scExcelExport1.ExcelVisible:=True;
  scExcelExport1.LoadDefaultProperties;
  scExcelExport1.WorksheetName:='Prices';

  scExcelExport1.ConnectTo := ctNewExcel;
  scExcelExport1.Connect;

  if TrainTicketsPriceListForm = nil then
    Application.CreateForm(TTrainTicketsPriceListForm,TrainTicketsPriceListForm);
  TrainTicketsPriceListForm.FormStyle := fsNormal;
  TrainTicketsPriceListForm.Visible := false;

  TrainTicketsPriceListForm.cxCurrencyLcmb.EditValue := 27;
  TrainTicketsPriceListForm.cxDetailsCkb.Checked := false;
  TrainTicketsPriceListForm.cxMarginCkb.Checked := false;

  with scExcelExport1.ExcelWorkSheet do
    begin

      Range['A1','S1'].ColumnWidth := 9;

      Range['A1','A1'].Value := 'As of ' + FormatDateTime('dd/mm/yyyy',cxDateEdit.Date);
      Range['A1','A1'].Font.FontStyle := 'Bold';
      Range['A1','A1'].Font.Size := '10';

//      Range['A2','A2'].Value := 'Service Charges for Train Bookings ';
//      Range['A4','A4'].Value := 'Trains';
//      Range['D4','D4'].Value := cxMarginEdit.Text;
//      Range['A6','A6'].Value := 'Exchange Rate';

      Range['A8','A8'].Value := 'TRAINS';
      Range['A8','A8'].Font.FontStyle := 'Bold';
      Range['A8','A8'].Font.Size := '12';

      x_row := 10;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Day Trains';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '10';
      x_row := x_row + 2;
      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRateTickets_TrainPriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',1, 5';
      GpSds.Open;
      TrainTicketsPriceListForm.WriteToExcel(GpSds, scExcelExport1, x_row, 1, x_Agents_id, x_margin, x_markup, 'ac_cc');

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Overnight Trains - 2 Tier';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '10';
      x_row := x_row + 2;
      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRateTickets_TrainPriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',1, 6';
      GpSds.Open;
      TrainTicketsPriceListForm.WriteToExcel(GpSds, scExcelExport1, x_row, 2, x_Agents_id, x_margin, x_markup, 'ac_2t');

      x_row := x_row + 2;
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Overnight Trains - 3 Tier';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '10';
      x_row := x_row + 2;
      GpSds.Close;
      GpSds.CommandText := ' EXEC p_DisplayFixedRateTickets_TrainPriceList ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',1, 8';
      GpSds.Open;
      TrainTicketsPriceListForm.WriteToExcel(GpSds, scExcelExport1, x_row, 3, x_Agents_id, x_margin, x_markup, 'ac_3t');

    end;

  TrainTicketsPriceListForm.Close;
  TrainTicketsPriceListForm.Free;
  TrainTicketsPriceListForm := nil;

  GpSds.Free;

  x_FileName := g_ReportDir + '\TrainTicketRates.xls';

  scExcelExport1.SaveAs(x_FileName,ffXLS);

  scExcelExport1.Disconnect;
  scExcelExport1.CloseAllExcelApps;

  ShowMessage ('Saved as ' + x_FileName);


end;



procedure TQuoFixedRateAccommodationForm.Costs1101Click(Sender: TObject);
begin

  QuoFixedRateAccForm_Level := _QuoFixedRateAccommodationForm_Level;

  If QuoFixedRateAccForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  QuoFixedRateAccForm_Acc_id := CostAccCds['QuoFixedratesAccommodation_id'];

  if QuoFixedRateAccForm = nil then
    Application.CreateForm(TQuoFixedRateAccForm,QuoFixedRateAccForm);

  QuoFixedRateAccForm.FormStyle := fsNormal;
  QuoFixedRateAccForm.Visible := false;
  QuoFixedRateAccForm.ShowModal;

  QuoFixedRateAccForm.Free;
  QuoFixedRateAccForm := nil;

end;

end.
