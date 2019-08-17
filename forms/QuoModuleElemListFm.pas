unit QuoModuleElemListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC, cxControls, StdCtrls,
  cxButtons, ExtCtrls, cxGraphics, FMTBcd, DB, DBClient, Provider, SqlExpr,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, StrUtils, cxGroupBox, cxRadioGroup;

type
  TQuoModuleElemListForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxCloseBtn: TcxButton;
    cxButton1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxModuleTabSheet: TcxTabSheet;
    cxAccTabSheet: TcxTabSheet;
    cxTrsfTabSheet: TcxTabSheet;
    cxSSTabSheet: TcxTabSheet;
    cxTrainTabSheet: TcxTabSheet;
    cxDriveTabSheet: TcxTabSheet;
    cxCityLcmb: TcxLookupComboBox;
    Label1: TLabel;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    CitiesDs: TDataSource;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    ModulesSds: TSQLDataSet;
    ModulesDsp: TDataSetProvider;
    ModulesCds: TClientDataSet;
    ModulesDs: TDataSource;
    ModulesCdstitle: TStringField;
    ModulesCdsCost: TFMTBCDField;
    ModulesCdswef: TSQLTimeStampField;
    ModulesCdsCurrencyCode: TStringField;
    ModulesCdsFixedItinCosts_id: TIntegerField;
    cxGridMasterDBBandedTableView1FixedItinCosts_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1title: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn;
    ModulesCdsnights: TIntegerField;
    cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    AccCdsOrganisation: TStringField;
    AccCdsFromDate: TSQLTimeStampField;
    AccCdsToDate: TSQLTimeStampField;
    AccCdsAC: TBooleanField;
    AccCdsRoomType: TStringField;
    AccCdsMealPlan: TStringField;
    AccCdsCostSingle: TFMTBCDField;
    AccCdsCostDouble: TFMTBCDField;
    AccCdsCostTriple: TFMTBCDField;
    AccCdsCurrencyCode: TStringField;
    cxGridDBBandedTableView1Organisation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FromDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ToDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RoomType: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MealPlan: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CostSingle: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CostDouble: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CostTriple: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ElemAccommodation_id: TcxGridDBBandedColumn;
    TrsfSds: TSQLDataSet;
    TrsfDsp: TDataSetProvider;
    TrsfCds: TClientDataSet;
    TrsfDs: TDataSource;
    SsSds: TSQLDataSet;
    SsDsp: TDataSetProvider;
    SsCds: TClientDataSet;
    SsDs: TDataSource;
    SsCdsOrganisation: TStringField;
    SsCdsDescription: TStringField;
    SsCdsVehicle: TStringField;
    SsCdsWef: TSQLTimeStampField;
    SsCdsCost: TFMTBCDField;
    SsCdsCurrencyCode: TStringField;
    cxGrid3: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBBandedTableView3ElemServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Organisation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Description: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3CurrencyCode: TcxGridDBBandedColumn;
    TrainSds: TSQLDataSet;
    TrainDsp: TDataSetProvider;
    TrainCds: TClientDataSet;
    TrainDs: TDataSource;
    TrainCdsFromCity: TStringField;
    TrainCdsTrainNo: TStringField;
    TrainCdsClass: TStringField;
    TrainCdsWef: TSQLTimeStampField;
    TrainCdsCost: TFMTBCDField;
    TrainCdsCurrencyCode: TStringField;
    TrainCdsTimings: TStringField;
    TrainCdsTrainName: TStringField;
    cxGrid4: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBBandedTableView4ElemTickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4ToCity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4TrainNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Class: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4CurrencyCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4Timings: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4TrainName: TcxGridDBBandedColumn;
    CarSds: TSQLDataSet;
    CarDsp: TDataSetProvider;
    CarCds: TClientDataSet;
    CarDs: TDataSource;
    cxGrid5: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    CarCdsAgent: TStringField;
    CarCdsVehicle: TStringField;
    CarCdsCity: TStringField;
    CarCdsWef: TSQLTimeStampField;
    CarCdsCurrencyCode: TStringField;
    cxGridDBBandedTableView5ElemCars_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Agent: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Vehicle: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5CurrencyCode: TcxGridDBBandedColumn;
    CarCdsCost: TFMTBCDField;
    cxGridDBBandedTableView5Cost: TcxGridDBBandedColumn;
    ModulesCdsFixedItin_id: TIntegerField;
    SsCdsServices_id: TIntegerField;
    TrainCdsToCity: TStringField;
    Label2: TLabel;
    ModulesCdsFromCity: TStringField;
    ModulesCdsToCity: TStringField;
    ModulesCdsCityOrder: TIntegerField;
    cxGridMasterDBBandedTableView1FromCity: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ToCity: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CityOrder: TcxGridDBBandedColumn;
    AccCdsAddressbook_id: TIntegerField;
    ModulesCdsx_count: TIntegerField;
    cxGridMasterDBBandedTableView1x_count: TcxGridDBBandedColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxStyleRed2: TcxStyle;
    cxStyleGrey: TcxStyle;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    AccCdsx_count: TIntegerField;
    cxGridDBBandedTableView1x_count: TcxGridDBBandedColumn;
    SsCdsx_count: TIntegerField;
    cxGridDBBandedTableView3x_count: TcxGridDBBandedColumn;
    TrainCdsx_count: TIntegerField;
    cxGridDBBandedTableView4x_count: TcxGridDBBandedColumn;
    cxTabSheet1: TcxTabSheet;
    InterCitiesSds: TSQLDataSet;
    InterCitiesDsp: TDataSetProvider;
    InterCitiesCds: TClientDataSet;
    InterCitiesDs: TDataSource;
    InterCitiesCdsAgent: TStringField;
    InterCitiesCdsVehicle: TStringField;
    InterCitiesCdsFromCity: TStringField;
    InterCitiesCdsToCity: TStringField;
    InterCitiesCdsWef: TSQLTimeStampField;
    InterCitiesCdsCurrencyCode: TStringField;
    InterCitiesCdsCost: TFMTBCDField;
    cxGrid6: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxGridDBBandedTableView6ElemInterCities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6Agent: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6Vehicle: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6FromCity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6ToCity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6CurrencyCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6Cost: TcxGridDBBandedColumn;
    InterCitiesCdsVehicles_id: TIntegerField;
    InterCitiesCdsFromCities_id: TIntegerField;
    InterCitiesCdsToCities_id: TIntegerField;
    InterCitiesCdsx_count: TIntegerField;
    cxGridDBBandedTableView6x_Count: TcxGridDBBandedColumn;
    TrsfCdsOrganisation: TStringField;
    TrsfCdsDescription: TStringField;
    TrsfCdsVehicle: TStringField;
    TrsfCdsWef: TSQLTimeStampField;
    TrsfCdsCost: TFMTBCDField;
    TrsfCdsCurrencyCode: TStringField;
    TrsfCdsServices_id: TIntegerField;
    TrsfCdsTransferTypes_id: TIntegerField;
    TrsfCdsCity: TStringField;
    TrsfCdsx_count: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2ElemServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Organisation: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Description: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Vehicle: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2CurrencyCode: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBBandedTableView2x_count: TcxGridDBBandedColumn;
    cxFlightTabSheet: TcxTabSheet;
    FlightSds: TSQLDataSet;
    FlightDsp: TDataSetProvider;
    FlightCds: TClientDataSet;
    FlightDs: TDataSource;
    FlightCdsFromCity: TStringField;
    FlightCdsToCity: TStringField;
    FlightCdsWef: TSQLTimeStampField;
    FlightCdsCost: TBCDField;
    FlightCdsFlightNo: TStringField;
    FlightCdsx_count: TIntegerField;
    cxGrid7: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    cxGridDBBandedTableView7QuoFixedRatesTickets_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7ToCity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7FlightNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7x_count: TcxGridDBBandedColumn;
    FlightCdsFlightSectorFaresIndia_id: TIntegerField;
    FlightCdsCities_id: TIntegerField;
    AccCdsElemAccommodation_id: TIntegerField;
    TrsfCdsElemServices_id: TIntegerField;
    SsCdsElemServices_id: TIntegerField;
    TrainCdsElemTickets_id: TIntegerField;
    CarCdsElemCars_id: TIntegerField;
    InterCitiesCdsElemInterCities_id: TIntegerField;
    cxTabSheet2: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView9: TcxGridDBTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridLevel8: TcxGridLevel;
    CityGroupsSds: TSQLDataSet;
    CityGroupsDsp: TDataSetProvider;
    CityGroupsCds: TClientDataSet;
    CityGroupsDs: TDataSource;
    CityGroupsCdsElemCityGroups_id: TIntegerField;
    CityGroupsCdsAgent: TStringField;
    CityGroupsCdsVehicle: TStringField;
    CityGroupsCdsCarHireGroup: TStringField;
    CityGroupsCdsWef: TSQLTimeStampField;
    CityGroupsCdsCurrencyCode: TStringField;
    CityGroupsCdsCost: TFMTBCDField;
    CityGroupsCdsVehicles_id: TIntegerField;
    CityGroupsCdsx_count: TIntegerField;
    cxGridDBBandedTableView8ElemCityGroups_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Agent: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Vehicle: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8CarHireGroup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8CurrencyCode: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8Vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView8x_count: TcxGridDBBandedColumn;
    CarCdsModule: TStringField;
    CarCdsSector: TStringField;
    cxGridDBBandedTableView5Module: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5Sector: TcxGridDBBandedColumn;
    CarCdsFromCities_id: TIntegerField;
    CarCdsToCities_id: TIntegerField;
    CityGroupsCdsFromCities_id: TIntegerField;
    CityGroupsCdsToCities_id: TIntegerField;
    CarCdsx_count: TIntegerField;
    cxGridDBBandedTableView5x_count: TcxGridDBBandedColumn;
    Label3: TLabel;
    cxNumPaxTextEdit: TcxTextEdit;
    cxRefreshButton: TcxButton;
    cxRadioGroup1: TcxRadioGroup;
    cxTransportCkb: TcxCheckBox;
    cxMiscCkb: TcxCheckBox;
    cxGuideCkb: TcxCheckBox;
    SsCdsTransportCost: TFMTBCDField;
    SsCdsMiscCost: TFMTBCDField;
    SsCdsGuideCost: TFMTBCDField;
    cxGridDBBandedTableView3TransportCost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3MiscCost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3GuideCost: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FilterData;
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridMasterDBBandedTableView1DblClick(Sender: TObject);
    procedure InsertModule;
    procedure cxGridDBBandedTableView2DblClick(Sender: TObject);
    procedure InsertTransfer;
    procedure cxGridDBBandedTableView3DblClick(Sender: TObject);
    procedure InsertSightSeeing;
    procedure cxGridDBBandedTableView4DblClick(Sender: TObject);
    procedure InsertTrainTravel;
    procedure cxGridDBBandedTableView5DblClick(Sender: TObject);
    procedure InsertCarTravel;
    procedure cxCloseBtnClick(Sender: TObject);
    procedure cxGridDBBandedTableView1DblClick(Sender: TObject);
    procedure InsertAccommodation;
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure Insert1Click(Sender: TObject);
    procedure cxGridDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView4StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView6DblClick(Sender: TObject);
    procedure InsertInterCityTravel;
    procedure InsertCityGroupTravel;
    procedure cxGridDBBandedTableView6StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure InsertAccommodationRoomSize(x_option, x_NumRoooms: integer);
    function GetNextMainOrderNo(x_QuoModules_id: integer): integer;
    function IsTrainOvernight(x_Timings: string): boolean;
    procedure cxGridDBBandedTableView7DblClick(Sender: TObject);
    procedure InsertFlightTravel;
    procedure cxGridDBBandedTableView7StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView8DblClick(Sender: TObject);
    procedure cxGridDBBandedTableView8StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGridDBBandedTableView5StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxRefreshButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoModuleElemListForm: TQuoModuleElemListForm;
  _QuoModuleElemListForm_NumPax: integer;
  _QuoModuleElemListForm_ArrivalDate: TDateTime;
  _QuoModuleElemListForm_QuoDate: TDateTime;
  x_Active_FixedItin_id: integer;

implementation

uses QuoModulesFm, BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TQuoModuleElemListForm.FormCreate(Sender: TObject);
begin
  CitiesCds.Open;

  cxNumPaxTextEdit.Text := IntToStr(_QuoModuleElemListForm_NumPax);

  cxTransportCkb.Checked := true;
  cxMiscCkb.Checked := true;
  cxGuideCkb.Checked := true;

  FilterData;

  cxPageControl1.ActivePageIndex := 0;

  if (QuoModulesForm.Detail1Cds['FixedItin_id'] <> null) then
    x_Active_FixedItin_id := QuoModulesForm.Detail1Cds['FixedItin_id']
  else if (QuoModulesForm.Detail1Cds['ParentFixedItin_id'] <> null) then
    x_Active_FixedItin_id := QuoModulesForm.Detail1Cds['ParentFixedItin_id']
  else
    x_Active_FixedItin_id := -1;

end;

procedure TQuoModuleElemListForm.FilterData;
begin

  //Modules
  ModulesCds.Active := False;
  ModulesSds.Active := False;

  if cxCityLcmb.EditValue <> null then
    ModulesSds.Params[0].Value := cxCityLcmb.EditValue
  else
    ModulesSds.Params[0].Value := -1;

  ModulesSds.Params[1].Value := QuoModulesForm.MasterCds['QuoModules_id'];
  ModulesSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  ModulesSds.Params[3].Value := _QuoModuleElemListForm_ArrivalDate;
  ModulesSds.Params[4].Value := _QuoModuleElemListForm_NumPax;

  ModulesSds.Active := True;
  ModulesCds.Active := True;


  //Accommodation
  AccCds.Active := False;
  AccSds.Active := False;

  AccSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    AccSds.Params[1].Value := cxCityLcmb.EditValue
  else
    AccSds.Params[1].Value := -1;

  AccSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  AccSds.Params[3].Value := _QuoModuleElemListForm_ArrivalDate;

  AccSds.Active := True;
  AccCds.Active := True;



  //Transfer
  TrsfCds.Active := False;
  TrsfSds.Active := False;

  TrsfSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    TrsfSds.Params[1].Value := cxCityLcmb.EditValue
  else
    TrsfSds.Params[1].Value := -1;
  TrsfSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  TrsfSds.Params[3].Value := _QuoModuleElemListForm_NumPax;  

  TrsfSds.Active := True;
  TrsfCds.Active := True;



  //SightSeeing
  SsCds.Active := False;
  SsSds.Active := False;

  SsSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    SsSds.Params[1].Value := cxCityLcmb.EditValue
  else
    SsSds.Params[1].Value := -1;
  SsSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  SsSds.Params[3].Value := _QuoModuleElemListForm_NumPax;

  SsSds.Active := True;
  SsCds.Active := True;



  //Train
  TrainCds.Active := False;
  TrainSds.Active := False;

  TrainSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    TrainSds.Params[1].Value := cxCityLcmb.EditValue
  else
    TrainSds.Params[1].Value := -1;
  TrainSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;

  TrainSds.Active := True;
  TrainCds.Active := True;


  //Flight
  FlightCds.Active := False;
  FlightSds.Active := False;

  FlightSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    FlightSds.Params[1].Value := cxCityLcmb.EditValue
  else
    FlightSds.Params[1].Value := -1;
  FlightSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;

  FlightSds.Active := True;
  FlightCds.Active := True;



  //Car
  CarCds.Active := False;
  CarSds.Active := False;

  CarSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    CarSds.Params[1].Value := cxCityLcmb.EditValue
  else
    CarSds.Params[1].Value := -1;
  CarSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  CarSds.Params[3].Value := _QuoModuleElemListForm_ArrivalDate;
  CarSds.Params[4].Value := _QuoModuleElemListForm_NumPax;

  CarSds.Active := True;
  CarCds.Active := True;


  //InterCities
  InterCitiesCds.Active := False;
  InterCitiesSds.Active := False;

  InterCitiesSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    InterCitiesSds.Params[1].Value := cxCityLcmb.EditValue
  else
    InterCitiesSds.Params[1].Value := -1;
  InterCitiesSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  InterCitiesSds.Params[3].Value := _QuoModuleElemListForm_ArrivalDate;
  InterCitiesSds.Params[4].Value := _QuoModuleElemListForm_NumPax;

  InterCitiesSds.Active := True;
  InterCitiesCds.Active := True;

  // City Groups
  CityGroupsCds.Active := False;
  CityGroupsSds.Active := False;

  CityGroupsSds.Params[0].Value := QuoModulesForm.MasterCds['QuoModules_id'];

  if cxCityLcmb.EditValue <> null then
    CityGroupsSds.Params[1].Value := cxCityLcmb.EditValue
  else
    CityGroupsSds.Params[1].Value := -1;
  CityGroupsSds.Params[2].Value := _QuoModuleElemListForm_ArrivalDate;
  CityGroupsSds.Params[3].Value := _QuoModuleElemListForm_ArrivalDate;
  CityGroupsSds.Params[4].Value := _QuoModuleElemListForm_NumPax;

  CityGroupsSds.Active := True;
  CityGroupsCds.Active := True;


end;

procedure TQuoModuleElemListForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TQuoModuleElemListForm.cxGridMasterDBBandedTableView1DblClick(
  Sender: TObject);
begin
  InsertModule;
end;

procedure TQuoModuleElemListForm.InsertModule;
var
  x_QuoModules_id, x_FixedItin_id, x_NumPax: integer;
  x_QueryString: string;
  GpSds : TSQLDataSet;
  x_Transport, x_Misc, x_Guide: integer;
begin

  x_QuoModules_id := 0;
  if QuoModulesForm.MasterCds['QuoModules_id'] <> null then
    x_QuoModules_id := QuoModulesForm.MasterCds['QuoModules_id'];

  x_FixedItin_id := 0;
  if ModulesCds['FixedItin_id'] <> null then
    x_FixedItin_id := ModulesCds['FixedItin_id'];

  x_NumPax := 1;
  if QuoModulesForm.MasterCds['NumPax'] <> null then
    x_NumPax := QuoModulesForm.MasterCds['NumPax'];

  x_Transport := 1;
  if not cxTransportCkb.Checked then
    x_Transport := 0;

  x_Misc := 1;
  if not cxMiscCkb.Checked then
    x_Misc := 0;

  x_Guide := 1;
  if not cxGuideCkb.Checked then
    x_Guide := 0;

  x_QueryString := 'EXEC p_InsertElemOfModule ' +
    IntToStr(x_QuoModules_id) + ',' + IntToStr(x_FixedItin_id) + ',' +
    IntToStr(x_NumPax) + ',' +
    IntToStr(x_Transport) + ',' + IntToStr(x_Misc) + ',' + IntToStr(x_Guide) ;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  QuoModulesForm.FixedItinCds.Close;
  QuoModulesForm.FixedItinCds.Open;

  x_FixedItin_id := ModulesCds['FixedItin_id'];
  ModulesCds.Active := False;
  ModulesSds.Active := False;
  ModulesSds.Active := True;
  ModulesCds.Active := True;
  ModulesCds.Locate('FixedItin_id',x_FixedItin_id,[]);

  x_Active_FixedItin_id := x_FixedItin_id;

  QuoModulesForm.Detail1Cds.active := false;
  QuoModulesForm.Detail1Cds.active := true;

  QuoModulesForm.Detail1Cds.Locate('FixedItin_id',x_FixedItin_id,[]);

end;

function TQuoModuleElemListForm.GetNextMainOrderNo(x_QuoModules_id: integer): integer;
var
  x_OrderNo: integer;
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_OrderNo := 0;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'SELECT MAX(MainOrderNo) AS OrderNo FROM QuoModuleDetails ' +
    'WHERE QuoModules_id = ' + IntToStr(x_QuoModules_id);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['OrderNo'] <> null) then
    x_OrderNo := GpSds['OrderNo'];

  x_OrderNo := x_OrderNo + 1;

  GpSds.Free;

  Result := x_OrderNo;

end;


procedure TQuoModuleElemListForm.cxGridDBBandedTableView2DblClick(
  Sender: TObject);
begin
  InsertTransfer;
end;

procedure TQuoModuleElemListForm.InsertTransfer;
var
  x_Services_id: integer;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin
  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Services_id'] := TrsfCds['Services_id'];
  QuoModulesForm.Detail1Cds['TransferTypes_id'] := TrsfCds['TransferTypes_id'];
  QuoModulesForm.Detail1Cds['TrsType'] := 4;
  QuoModulesForm.Detail1Cds['Nights'] := 0;

  QuoModulesForm.Detail1Cds['Qty'] := _QuoModuleElemListForm_NumPax;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  x_cost := 0.0;
  if TrsfCds['Cost'] <> null then
    x_cost := TrsfCds['Cost'];

  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;


  QuoModulesForm.Detail1Cds['QuoModuleDetails'] :=
    TrsfCds['City'] + ' - ' + TrsfCds['Description'];

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_Services_id := TrsfCds['Services_id'];
  TrsfCds.Active := False;
  TrsfSds.Active := False;
  TrsfSds.Active := True;
  TrsfCds.Active := True;
  TrsfCds.Locate('Services_id',x_Services_id,[]);

  cxGridDBBandedTableView2.ViewData.Expand(True);

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView3DblClick(
  Sender: TObject);
begin
  InsertSightSeeing;
end;

procedure TQuoModuleElemListForm.InsertSightSeeing;
var
  x_Services_id: integer;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin
  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Services_id'] := SsCds['Services_id'];
  QuoModulesForm.Detail1Cds['TrsType'] := 3;
  QuoModulesForm.Detail1Cds['Nights'] := 0;

  QuoModulesForm.Detail1Cds['Qty'] := _QuoModuleElemListForm_NumPax;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  //x_cost := 0.0;
  //if SsCds['Cost'] <> null then
  //  x_cost := SsCds['Cost'];

  x_cost := 0.0;
  if SsCds['TransportCost'] <> null then
    x_cost := x_cost + SsCds['TransportCost'];
  if SsCds['MiscCost'] <> null then
    x_cost := x_cost + SsCds['MiscCost'];
  if SsCds['GuideCost'] <> null then
    x_cost := x_cost + SsCds['GuideCost'];


  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] :=
    SsCds['Description'];

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_Services_id := SsCds['Services_id'];
  SsCds.Active := False;
  SsSds.Active := False;
  SsSds.Active := True;
  SsCds.Active := True;
  SsCds.Locate('Services_id',x_Services_id,[])

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView4DblClick(
  Sender: TObject);
begin
  InsertTrainTravel;
end;

procedure TQuoModuleElemListForm.InsertTrainTravel;
var
  x_TrainNo: string;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin
  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Tickets_id'] := 2;
  QuoModulesForm.Detail1Cds['TrsType'] := 1;
  QuoModulesForm.Detail1Cds['Nights'] := 0;

  if QuoModulesForm.MasterCds['NumPax'] <> null then
    QuoModulesForm.Detail1Cds['Qty'] := QuoModulesForm.MasterCds['NumPax']
  else
    QuoModulesForm.Detail1Cds['Qty'] := _QuoModuleElemListForm_NumPax;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  x_cost := 0.0;
  if TrainCds['Cost'] <> null then
    x_cost := TrainCds['Cost'];

  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] :=
    'Train from ' + TrainCds['FromCity'] + ' to ' + TrainCds['ToCity'];

  if TrainCds['TrainNo'] <> null then
    QuoModulesForm.Detail1Cds['TrainNo'] := TrainCds['TrainNo'];

  if (QuoModulesForm.Detail1Cds['Tickets_id'] = 2) and (TrainCds['Timings'] <> null) then
    if (QuoModulesForm.Detail1Cds['QuoModuleDetails'] <> null) and (IsTrainOvernight(TrainCds['Timings'])) and (not AnsiContainsStr(QuoModulesForm.Detail1Cds['QuoModuleDetails'], '[Overnight]')) then
        QuoModulesForm.Detail1Cds['QuoModuleDetails'] := QuoModulesForm.Detail1Cds['QuoModuleDetails'] + ' [Overnight]';

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_TrainNo := TrainCds['TrainNo'];
  TrainCds.Active := False;
  TrainSds.Active := False;
  TrainSds.Active := True;
  TrainCds.Active := True;
  TrainCds.Locate('TrainNo',x_TrainNo,[])

end;

function TQuoModuleElemListForm.IsTrainOvernight(x_Timings: string): boolean;
var
  x_Overnight: boolean;
begin

  x_Overnight := false;

  if length(trim(x_Timings)) = 11 then
    begin
      if Copy(x_Timings, 7, 5) < Copy(x_Timings, 1, 5) then
        x_overnight := true;
    end;

  Result := x_Overnight;

end;


procedure TQuoModuleElemListForm.cxGridDBBandedTableView5DblClick(
  Sender: TObject);
begin
  InsertCarTravel;
end;

procedure TQuoModuleElemListForm.InsertCarTravel;
var
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin

  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Tickets_id'] := 5;
  QuoModulesForm.Detail1Cds['TrsType'] := 5;
  QuoModulesForm.Detail1Cds['Nights'] := 0;
  QuoModulesForm.Detail1Cds['P2P'] := 0;

  if (CarCds['FromCities_id'] <> null) then
    QuoModulesForm.Detail1Cds['FromCities_id'] := CarCds['FromCities_id'];

  if (CarCds['ToCities_id'] <> null) then
    QuoModulesForm.Detail1Cds['ToCities_id'] := CarCds['ToCities_id'];

  QuoModulesForm.Detail1Cds['Qty'] := _QuoModuleElemListForm_NumPax;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  x_cost := 0.0;
  if CarCds['Cost'] <> null then
    x_cost := CarCds['Cost'];

  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] := CarCds['Vehicle'];

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

end;

procedure TQuoModuleElemListForm.InsertInterCityTravel;
var
  x_ElemInterCities_id: integer;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin

  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Tickets_id'] := 5;
  QuoModulesForm.Detail1Cds['TrsType'] := 5;
  QuoModulesForm.Detail1Cds['Nights'] := 0;
  QuoModulesForm.Detail1Cds['P2P'] := 1;
  if InterCitiesCds['FromCities_id'] <> null then
    QuoModulesForm.Detail1Cds['FromCities_id'] := InterCitiesCds['FromCities_id'];
  if InterCitiesCds['ToCities_id'] <> null then
    QuoModulesForm.Detail1Cds['ToCities_id'] := InterCitiesCds['ToCities_id'];
  QuoModulesForm.Detail1Cds['P2P'] := 1;

  QuoModulesForm.Detail1Cds['Qty'] := _QuoModuleElemListForm_NumPax;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  x_cost := 0.0;
  if InterCitiesCds['Cost'] <> null then
    x_cost := InterCitiesCds['Cost'];

  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] := 'Intercity (' + InterCitiesCds['FromCity'] +
    ' to ' + InterCitiesCds['ToCity'] + ') by ' + InterCitiesCds['Vehicle'];

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_ElemInterCities_id := InterCitiesCds['ElemInterCities_id'];
  InterCitiesCds.Active := False;
  InterCitiesSds.Active := False;
  InterCitiesSds.Active := True;
  InterCitiesCds.Active := True;
  InterCitiesCds.Locate('ElemInterCities_id',x_ElemInterCities_id,[]);

end;

procedure TQuoModuleElemListForm.InsertCityGroupTravel;
var
  x_ElemCityGroups_id: integer;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin

  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Tickets_id'] := 5;
  QuoModulesForm.Detail1Cds['TrsType'] := 8;
  QuoModulesForm.Detail1Cds['Nights'] := 0;
  QuoModulesForm.Detail1Cds['P2P'] := 0;

  if (CityGroupsCds['FromCities_id'] <> null) then
    QuoModulesForm.Detail1Cds['FromCities_id'] := CityGroupsCds['FromCities_id'];

  if (CityGroupsCds['ToCities_id'] <> null) then
    QuoModulesForm.Detail1Cds['ToCities_id'] := CityGroupsCds['ToCities_id'];

  QuoModulesForm.Detail1Cds['Qty'] := _QuoModuleElemListForm_NumPax;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  x_cost := 0.0;
  if CityGroupsCds['Cost'] <> null then
    x_cost := CityGroupsCds['Cost'];

  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] := 'CityGroup (' + CityGroupsCds['CarHireGroup'] +
    ') by ' + CityGroupsCds['Vehicle'];

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_ElemCityGroups_id := CityGroupsCds['ElemCityGroups_id'];
  CityGroupsCds.Active := False;
  CityGroupsCds.Active := False;
  CityGroupsCds.Active := True;
  CityGroupsCds.Active := True;
  CityGroupsCds.Locate('ElemCityGroups_id',x_ElemCityGroups_id,[]);

end;


procedure TQuoModuleElemListForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView1DblClick(
  Sender: TObject);
begin
  InsertAccommodation;
end;

procedure TQuoModuleElemListForm.InsertAccommodation;
begin

  if (QuoModulesForm.MasterCds['NumSingles'] <> null) and (QuoModulesForm.MasterCds['NumSingles'] <> 0) then
    InsertAccommodationRoomSize(1, QuoModulesForm.MasterCds['NumSingles']);

  if (QuoModulesForm.MasterCds['NumDoubles'] <> null) and (QuoModulesForm.MasterCds['NumDoubles'] <> 0) then
    InsertAccommodationRoomSize(2, QuoModulesForm.MasterCds['NumDoubles']);

  if (QuoModulesForm.MasterCds['NumTriples'] <> null) and (QuoModulesForm.MasterCds['NumTriples'] <> 0) then
    InsertAccommodationRoomSize(3, QuoModulesForm.MasterCds['NumTriples']);

end;

procedure TQuoModuleElemListForm.InsertAccommodationRoomSize(x_option, x_NumRoooms: integer);
var
  x_Addressbook_id: integer;
  x_RoomSize: string;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin

  x_ServiceTaxPerc := 0.0;

  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['HotelAddressbook_id'] := AccCds['Addressbook_id'];
  QuoModulesForm.Detail1Cds['TrsType'] := 2;
  QuoModulesForm.Detail1Cds['Nights'] := 1;

  QuoModulesForm.Detail1Cds['Qty'] := x_NumRoooms;

  //x_Rooms := 0;
  QuoModulesForm.Detail1Cds['Rate'] := 0.0;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;
  x_RoomSize := '';

  x_cost := 0.0;

  if (x_option = 1) then
    begin
      //if (QuoModulesForm.MasterCds['NumSingles'] <> null) then
      //  x_Rooms := QuoModulesForm.MasterCds['NumSingles'];

      if (AccCds['CostSingle'] <> null) then
        x_cost := AccCds['CostSingle'];

      x_RoomSize := ' (Singles)';
    end;

  if (x_option = 2) then
    begin
      //if (QuoModulesForm.MasterCds['NumDoubles'] <> null) then
      //  x_Rooms := QuoModulesForm.MasterCds['NumDoubles'];

      if (AccCds['CostDouble'] <> null) then
        x_cost := AccCds['CostDouble'];

      x_RoomSize := ' (Doubles)';
    end;

  if (x_option = 3) then
    begin
      //if (QuoModulesForm.MasterCds['NumTriples'] <> null) then
      //  x_Rooms := QuoModulesForm.MasterCds['NumTriples'];

      if (AccCds['CostTriple'] <> null) then
        x_cost := AccCds['CostTriple'];

      x_RoomSize := ' (Triples)';
    end;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);
  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] :=
    AccCds['Organisation'] + x_RoomSize;

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_Addressbook_id := AccCds['Addressbook_id'];
  AccCds.Active := False;
  AccSds.Active := False;
  AccSds.Active := True;
  AccCds.Active := True;
  AccCds.Locate('Addressbook_id',x_Addressbook_id,[])

end;


procedure TQuoModuleElemListForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.Insert1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    InsertModule
  else if cxPageControl1.ActivePageIndex = 1 then
    InsertAccommodation
  else if cxPageControl1.ActivePageIndex = 2 then
    InsertTransfer
  else if cxPageControl1.ActivePageIndex = 3 then
    InsertSightSeeing
  else if cxPageControl1.ActivePageIndex = 4 then
    InsertTrainTravel
  else if cxPageControl1.ActivePageIndex = 5 then
    InsertFlightTravel
  else if cxPageControl1.ActivePageIndex = 6 then
    InsertInterCityTravel
  else if cxPageControl1.ActivePageIndex = 7 then
    InsertCityGroupTravel;
end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView4StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView6DblClick(
  Sender: TObject);
begin
  InsertInterCityTravel;
end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView6StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin

  inherited;

  try

    AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

    if (ARecord.IsData) then
      begin
        if (ARecord.Values[AColumnCount.Index] > 0) then
          AStyle := cxStyleBlue
        else
          AStyle := cxStyleGreen;
      end;
  except
  end;


end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView7DblClick(
  Sender: TObject);
begin
  InsertFlightTravel;
end;

procedure TQuoModuleElemListForm.InsertFlightTravel;
var
  x_FlightNo: string;
  x_cost, x_ServiceTaxPerc, x_rate: double;
begin
  QuoModulesForm.Detail1Cds.Insert;

  QuoModulesForm.Detail1Cds['Tickets_id'] := 1;
  QuoModulesForm.Detail1Cds['TrsType'] := 1;
  QuoModulesForm.Detail1Cds['Nights'] := 0;

  if QuoModulesForm.MasterCds['NumPax'] <> null then
    QuoModulesForm.Detail1Cds['Qty'] := QuoModulesForm.MasterCds['NumPax']
  else
    QuoModulesForm.Detail1Cds['Qty'] := 1;

  QuoModulesForm.Detail1Cds['Rate'] := 0.0;

  x_ServiceTaxPerc := GetServiceTax(QuoModulesForm.MasterCds['QuotationDate'],  15);

  x_cost := 0.0;

  x_rate := GetRateBeforeServiceTax(x_cost, x_ServiceTaxPerc, 1);

  QuoModulesForm.Detail1Cds['Rate'] := x_rate;
  QuoModulesForm.Detail1Cds['ServTaxPerc'] := x_ServiceTaxPerc;

  QuoModulesForm.Detail1Cds['QuoModuleDetails'] :=
    'Flight from ' + FlightCds['FromCity'] + ' to ' + FlightCds['ToCity'];

  if FlightCds['FlightNo'] <> null then
    QuoModulesForm.Detail1Cds['FlightNo'] := FlightCds['FlightNo'];

  QuoModulesForm.Detail1Cds['FromCities_id'] := cxCityLcmb.EditValue;
  QuoModulesForm.Detail1Cds['ToCities_id'] := FlightCds['Cities_id'];

  if x_Active_FixedItin_id > 0 then
    QuoModulesForm.Detail1Cds['ParentFixedItin_id'] := x_Active_FixedItin_id;

  QuoModulesForm.Detail1Cds.Post;

  x_FlightNo := FlightCds['FlightNo'];
  FlightCds.Active := False;
  FlightSds.Active := False;
  FlightSds.Active := True;
  FlightCds.Active := True;
  FlightCds.Locate('FlightNo',x_FlightNo,[])

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView7StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView8DblClick(
  Sender: TObject);
begin
  InsertCityGroupTravel;
end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView8StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;


end;

procedure TQuoModuleElemListForm.cxGridDBBandedTableView5StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnCount: TcxCustomGridTableItem;
begin
  inherited;

  AColumnCount := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('x_count');

  if (ARecord.Values[AColumnCount.Index] > 0) then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleGreen;

end;

procedure TQuoModuleElemListForm.cxRefreshButtonClick(Sender: TObject);
begin
  try
    _QuoModuleElemListForm_NumPax := StrToInt(cxNumPaxTextEdit.Text);
  except
    cxNumPaxTextEdit.Text := '2';
    _QuoModuleElemListForm_NumPax := 2;
  end;

  FilterData;
end;

end.
