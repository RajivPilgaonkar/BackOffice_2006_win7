unit SelectElementsFm;

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
  scExcelExport, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DateUtils,
  cxGroupBox, cxRadioGroup;

type
  TSelectElementsForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxAccTab: TcxTabSheet;
    cxCloseBtn: TcxButton;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ElemAccSds: TSQLDataSet;
    ElemAccCds: TClientDataSet;
    ElemAccDsp: TDataSetProvider;
    ElemAccDs: TDataSource;
    cxGrid1DBTableView1Organisation: TcxGridDBColumn;
    cxGrid1DBTableView1ElemAccommodation_id: TcxGridDBColumn;
    cxGrid1DBTableView1AC: TcxGridDBColumn;
    cxGrid1DBTableView1RoomType: TcxGridDBColumn;
    cxGrid1DBTableView1MealPlan: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    scExcelExport1: TscExcelExport;
    PopupMenu2: TPopupMenu;
    ElemTrsfSds: TSQLDataSet;
    ElemTrsfCds: TClientDataSet;
    ElemTrsfDsp: TDataSetProvider;
    ElemTrsfDs: TDataSource;
    cxTransferTab: TcxTabSheet;
    cxTransferGrid: TcxGrid;
    cxTransferGridDBTableView1: TcxGridDBTableView;
    cxTransferGridDBTableView1Organisation: TcxGridDBColumn;
    cxTransferGridDBTableView1Service: TcxGridDBColumn;
    cxTransferGridDBTableView1ElemServices_id: TcxGridDBColumn;
    cxTransferGridLevel1: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    ElemTrainSds: TSQLDataSet;
    ElemTrainDsp: TDataSetProvider;
    ElemTrainCds: TClientDataSet;
    ElemTrainDs: TDataSource;
    cxTrainGrid2: TcxGrid;
    cxTrainGridDBTableView1: TcxGridDBTableView;
    cxTrainGridLevel1: TcxGridLevel;
    cxTrainGridDBTableView1Class: TcxGridDBColumn;
    cxTrainGridDBTableView1FromCity: TcxGridDBColumn;
    cxTrainGridDBTableView1ToCity: TcxGridDBColumn;
    cxTrainGridDBTableView1FromTrainStation: TcxGridDBColumn;
    cxTrainGridDBTableView1ToTrainStation: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainNo: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainName: TcxGridDBColumn;
    cxTrainGridDBTableView1Trains_id: TcxGridDBColumn;
    cxTrainGridDBTableView1DaysOfOperation: TcxGridDBColumn;
    cxTrainGridDBTableView1Timings: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    ElemSightSds: TSQLDataSet;
    ElemSightDsp: TDataSetProvider;
    ElemSightCds: TClientDataSet;
    ElemSightDs: TDataSource;
    cxSightGrid: TcxGrid;
    cxSightGridDBTableView1: TcxGridDBTableView;
    cxSightGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    ElemCarSds: TSQLDataSet;
    ElemCarDsp: TDataSetProvider;
    ElemCarCds: TClientDataSet;
    ElemCarDs: TDataSource;
    cxCarHireGrid: TcxGrid;
    cxCarHireGridDBTableView1: TcxGridDBTableView;
    cxCarHireGridLevel1: TcxGridLevel;
    cxCarHireGridDBTableView1ModuleElemCars_id: TcxGridDBColumn;
    cxCarHireGridDBTableView1Organisation: TcxGridDBColumn;
    cxCarHireGridDBTableView1City: TcxGridDBColumn;
    cxCarHireGridDBTableView1Vehicle: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    ElemIntercitiesSds: TSQLDataSet;
    ElemIntercitiesDsp: TDataSetProvider;
    ElemIntercitiesCds: TClientDataSet;
    ElemIntercitiesDs: TDataSource;
    cxInterCityGrid: TcxGrid;
    cxInterCityGridDBTableView1: TcxGridDBTableView;
    cxInterCityGridLevel1: TcxGridLevel;
    cxInterCityGridDBTableView1ModuleElemInterCities_id: TcxGridDBColumn;
    cxInterCityGridDBTableView1Organisation: TcxGridDBColumn;
    cxInterCityGridDBTableView1FromCity: TcxGridDBColumn;
    cxInterCityGridDBTableView1ToCity: TcxGridDBColumn;
    cxInterCityGridDBTableView1Vehicle: TcxGridDBColumn;
    EditInsert1: TMenuItem;
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
    cxButtonUtilities: TcxButton;
    PopupMenu1: TPopupMenu;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    cxCityLCMB: TcxLookupComboBox;
    cxTrainGridDBTableView1ModuleElemTickets_id: TcxGridDBColumn;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    ElemTrsfCdsElemServices_id: TIntegerField;
    ElemTrsfCdsAgentAddressbook_id: TIntegerField;
    ElemTrsfCdsOrganisation: TStringField;
    ElemTrsfCdsCities_id: TIntegerField;
    ElemAccCdsElemAccommodation_id: TIntegerField;
    ElemAccCdsAddressbook_id: TIntegerField;
    ElemAccCdsOrganisation: TStringField;
    ElemAccCdsAC: TBooleanField;
    ElemAccCdsRoomType: TStringField;
    ElemAccCdsMealPlan: TStringField;
    ElemAccCdsCities_id: TIntegerField;
    ElemCarCdsElemCars_id: TIntegerField;
    ElemCarCdsAddressbook_id: TIntegerField;
    ElemCarCdsOrganisation: TStringField;
    ElemCarCdsVehicle: TStringField;
    ElemCarCdsCities_id: TIntegerField;
    ElemIntercitiesCdsElemInterCities_id: TIntegerField;
    ElemIntercitiesCdsAddressbook_id: TIntegerField;
    ElemIntercitiesCdsOrganisation: TStringField;
    ElemIntercitiesCdsVehicle: TStringField;
    ElemIntercitiesCdsCities_id: TIntegerField;
    ElemSightCdsElemServices_id: TIntegerField;
    ElemSightCdsAgentAddressbook_id: TIntegerField;
    ElemSightCdsOrganisation: TStringField;
    ElemSightCdsVehicle: TStringField;
    ElemSightCdsCities_id: TIntegerField;
    ElemTrainCdsElemTickets_id: TIntegerField;
    ElemTrainCdsTickets_id: TIntegerField;
    ElemTrainCdsClass: TStringField;
    ElemTrainCdsFromCity: TStringField;
    ElemTrainCdsToCity: TStringField;
    ElemTrainCdsFromTrainStation: TStringField;
    ElemTrainCdsToTrainStation: TStringField;
    ElemTrainCdsTrainNo: TStringField;
    ElemTrainCdsTrainName: TStringField;
    ElemTrainCdsTrains_id: TIntegerField;
    ElemTrainCdsDaysOfOperation: TStringField;
    ElemTrainCdsTimings: TStringField;
    ElemTrainCdsFromCities_id: TIntegerField;
    ElemTrainCdsToCities_id: TIntegerField;
    ElemTrsfCdsDescription: TStringField;
    ElemSightCdsDescription: TStringField;
    cxSightGridDBTableView1ElemServices_id: TcxGridDBColumn;
    cxSightGridDBTableView1AgentAddressbook_id: TcxGridDBColumn;
    cxSightGridDBTableView1Organisation: TcxGridDBColumn;
    cxSightGridDBTableView1Vehicle: TcxGridDBColumn;
    cxSightGridDBTableView1Description: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure EditInsert1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxTransferGridDBTableView1DblClick(Sender: TObject);
    procedure cxTrainGridDBTableView1DblClick(Sender: TObject);
    procedure cxSightGridDBTableView1DblClick(Sender: TObject);
    procedure cxCarHireGridDBTableView1DblClick(Sender: TObject);
    procedure cxInterCityGridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure InsertElements;
  public
    { Public declarations }
  end;

var
  SelectElementsForm: TSelectElementsForm;
  SelectElementsForm_Level: integer;
  SelectElementsForm_FixedItin_id: integer;

implementation

uses BackOfficeDM, Excel2000, GeneralUt, ImportErrorsFm,
  QuoFixedRateAccModifyFm, QuoFixedRateTrsfModifyFm,
  QuoFixedRateSsModifyFm, QuoFixedRateCarHireModifyFm,
  QuoFixedRateInterCityModifyFm, QuoFixedRateTrainModifyFm,
  HotelPriceListFm, TransferPriceListFm, SightSeeingPriceListFm,
  TrainTicketsPriceListFm, CarHirePriceListFm,
  QuoFixedRateTranspModuleModifyFm, QuoFixedRateAccFm, ElemAccCostFm,
  ElemAccFm, ElementsFm, ModuleElementsFm;

{$R *.dfm}

procedure TSelectElementsForm.FormCreate(Sender: TObject);
var
  x_Year: integer;
begin
  cxPageControl1.ActivePageIndex := 0;

  CitiesCds.Open;
  cxCityLCMB.EditValue :=-1;

  ElemAccCds.Open;
  ElemTrsfCds.Open;
  ElemSightCds.Open;
  ElemTrainCds.Open;
end;

procedure TSelectElementsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSelectElementsForm.FormDestroy(Sender: TObject);
begin
  SelectElementsForm := nil;
end;

procedure TSelectElementsForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSelectElementsForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxCityLCMB.EditValue <> null then
    CitiesCds.Locate('Cities_id', cxCityLCMB.EditValue, []);
end;

procedure TSelectElementsForm.EditInsert1Click(Sender: TObject);
begin
  InsertElements;
end;

procedure TSelectElementsForm.InsertElements;
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      x_QueryString := 'EXEC p_ModuleMaster_InsertElements ' +
        IntToStr(ElemAccCds['ElemAccommodation_id']) + ',' +
        IntToStr(SelectElementsForm_FixedItin_id) + ', 1';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      ModuleElementsForm.ModElemAccCds.Close;
      ModuleElementsForm.ModElemAccCds.Open;

    end

  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      x_QueryString := 'EXEC p_ModuleMaster_InsertElements ' +
        IntToStr(ElemTrsfCds['ElemServices_id']) + ',' +
        IntToStr(SelectElementsForm_FixedItin_id) + ', 2';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      ModuleElementsForm.ModElemTrsfCds.Close;
      ModuleElementsForm.ModElemTrsfCds.Open;

    end

  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      x_QueryString := 'EXEC p_ModuleMaster_InsertElements ' +
        IntToStr(ElemTrainCds['ElemTickets_id']) + ',' +
        IntToStr(SelectElementsForm_FixedItin_id) + ', 3';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      ModuleElementsForm.ModElemTrainCds.Close;
      ModuleElementsForm.ModElemTrainCds.Open;

    end

  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      x_QueryString := 'EXEC p_ModuleMaster_InsertElements ' +
        IntToStr(ElemSightCds['ElemServices_id']) + ',' +
        IntToStr(SelectElementsForm_FixedItin_id) + ', 4';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      ModuleElementsForm.ModElemTrsfCds.Close;
      ModuleElementsForm.ModElemTrsfCds.Open;

    end;

  GpSds.Free;

end;

procedure TSelectElementsForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  InsertElements;
end;

procedure TSelectElementsForm.cxTransferGridDBTableView1DblClick(
  Sender: TObject);
begin
  InsertElements;
end;

procedure TSelectElementsForm.cxTrainGridDBTableView1DblClick(
  Sender: TObject);
begin
  InsertElements;
end;

procedure TSelectElementsForm.cxSightGridDBTableView1DblClick(
  Sender: TObject);
begin
  InsertElements;
end;

procedure TSelectElementsForm.cxCarHireGridDBTableView1DblClick(
  Sender: TObject);
begin
  InsertElements;
end;

procedure TSelectElementsForm.cxInterCityGridDBTableView1DblClick(
  Sender: TObject);
begin
  InsertElements;
end;

end.
