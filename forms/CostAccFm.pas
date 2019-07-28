unit CostAccFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_CostAcc_Fm, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, Menus, cxLookAndFeelPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxMemo, cxDBEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxDBLabel, cxNavigator, cxDBNavigator,
  cxTextEdit, cxGroupBox, cxRadioGroup, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxLabel, Buttons, ExtCtrls, cxButtonEdit, DateUtils,
  cxCalendar;

type
  TCostAccForm = class(TCustom_CostAcc_Form)
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView3mealcosts_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3seasons_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3currencies_pt_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3breakfast_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3lunch_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3dinner_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3breakfast: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3lunch: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3dinner: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2hoteltariffs_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2seasons_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2roomtypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2currencies_pt_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_single_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_double_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_single_ac_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_double_ac_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2mealplans_pt_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2extrabed_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2nett_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_single: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_double: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_single_ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cost_double_ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2mealplans_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2extrabed: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2nett: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2freetransfer: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridDBBandedTableView9seasons_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9fromdate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9todate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9frompax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9to_pax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9git: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9closed: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9servicecharges: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9tac_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9taconmealplan_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9tac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9taconmealplan: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9servicechargesonplan: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9policyonescorts_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9tl_discount: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9tl_discountabove: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9tl_freeabove: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9tl_halfdouble: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9extrabedcost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9dayoftheweek: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9extrabedpercentage: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9luxtax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9luxtaxonpt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9exptax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9salestax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9salestaxinclusive: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9default_roomtypes_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9default_ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9exptax_notapplicable: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9salestaxinclusive_pt: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9SpecialPeriod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9Notes: TcxGridDBBandedColumn;
    cxGridDBBandedTableView9DaysName: TcxGridDBBandedColumn;
    cxGridLevel9: TcxGridLevel;
    cxNotesLabel: TcxLabel;
    cxDBNotesMemo: TcxDBMemo;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsroomtypes_id: TIntegerField;
    RoomTypeCdsroomtype: TStringField;
    RoomTypeCdsac: TBooleanField;
    RoomTypeDs: TDataSource;
    MealPlansSds: TSQLDataSet;
    MealPlansDsp: TDataSetProvider;
    MealPlansCds: TClientDataSet;
    MealPlansDs: TDataSource;
    MealPlansCdsmealplans_id: TIntegerField;
    MealPlansCdsmealplan: TStringField;
    MealPlansCdsplan: TStringField;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    TlPolicySds: TSQLDataSet;
    TlPolicyDsp: TDataSetProvider;
    TlPolicyCds: TClientDataSet;
    TlPolicyCdspolicyonescorts_id: TIntegerField;
    TlPolicyCdspolicy: TStringField;
    TlPolicyDs: TDataSource;
    Label19: TcxLabel;
    SinglesTxt: TcxTextEdit;
    Label20: TcxLabel;
    RoomTypeLcmb: TcxLookupComboBox;
    Label21: TcxLabel;
    TravelDate: TcxDateEdit;
    Label22: TcxLabel;
    DoublesTxt: TcxTextEdit;
    Label28: TcxLabel;
    AcChkBox: TcxCheckBox;
    Label29: TcxLabel;
    FitChkBox: TcxCheckBox;
    Label23: TcxLabel;
    ExtraBedsTxt: TcxTextEdit;
    Label24: TcxLabel;
    NightsTxt: TcxTextEdit;
    Label30: TcxLabel;
    UsdChkBox: TcxCheckBox;
    Label26: TcxLabel;
    MealPlanLcmb: TcxLookupComboBox;
    Label27: TcxLabel;
    ExchangeRateTxt: TcxTextEdit;
    WebChkBox: TcxCheckBox;
    PackageChkBox: TcxCheckBox;
    ResidentChkBox: TcxCheckBox;
    cxButton1: TcxButton;
    Shape1: TShape;
    Label31: TcxLabel;
    Shape2: TShape;
    Label32: TcxLabel;
    CopyCosts1: TMenuItem;
    N1: TMenuItem;
    CopyfromGITtoFIT1: TMenuItem;
    CopyfromFITtoGIT1: TMenuItem;
    N2: TMenuItem;
    HotelPriceList1: TMenuItem;
    N3: TMenuItem;
    DeletethisCosting1: TMenuItem;
    cxButton4: TcxButton;
    HotelRoomTypeSds: TSQLDataSet;
    HotelRoomTypeDsp: TDataSetProvider;
    HotelRoomTypeCds: TClientDataSet;
    HotelRoomTypeDs: TDataSource;
    PopupMenu2: TPopupMenu;
    MultiWefMnu: TMenuItem;
    Panel8: TPanel;
    Label10: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    Panel9: TPanel;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    Panel10: TPanel;
    cxLabel4: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    Panel11: TPanel;
    cxLabel5: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Panel12: TPanel;
    cxLabel6: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCheckBox6: TcxDBCheckBox;
    Panel13: TPanel;
    cxLabel7: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBCheckBox7: TcxDBCheckBox;
    HotelCdsPymtTerms: TStringField;
    cxLabel8: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    SpeedButton2: TSpeedButton;
    VenPayTermsSds: TSQLDataSet;
    VenPayTermsDsp: TDataSetProvider;
    VenPayTermsCds: TClientDataSet;
    VenPayTermsDs: TDataSource;
    VenPayTermsCdsVendorPaymentTerms_id: TIntegerField;
    VenPayTermsCdsVendorPaymentTerm: TStringField;
    cxPymtTermLcmb: TcxLookupComboBox;
    PopupMenu3: TPopupMenu;
    DisplayLuxTaxSrvT1: TMenuItem;
    Panel14: TPanel;
    cxLabel9: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBCheckBox8: TcxDBCheckBox;
    MasterCdsAgentCommPerc: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure cxHotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxGridDBBandedTableView9DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBBandedTableView9DblClick(Sender: TObject);
    procedure CopyfromGITtoFIT1Click(Sender: TObject);
    procedure CopyCosts1Click(Sender: TObject);
    procedure CopyfromFITtoGIT1Click(Sender: TObject);
    procedure HotelPriceList1Click(Sender: TObject);
    procedure DeletethisCosting1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure MultiWefMnuClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DisplayLuxTaxSrvT1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWet;
  public
    { Public declarations }
  end;

var
  CostAccForm: TCostAccForm;
  CostAccForm_Level: Integer;

implementation

uses BackOfficeDM, SelOprFm, GeneralUt, CostingTraceFm, MainFm,
  ReportParameterFm, HotelPriceListFm, DefaultHotelsFm,
  CostAccommodationFm;

var
  CostAccForm_DisplayType: integer;

{$R *.dfm}

procedure TCostAccForm.FormCreate(Sender: TObject);
begin
  Caption := 'Cost - Accommodation';
  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := '01/01/1990';

  inherited;

  CitiesCds.Open;
  HotelCds.Open;

  RoomTypeCds.Open;
  MealPlansCds.Open;
  CurrencyCds.Open;
  TlPolicyCds.Open;
  HotelRoomTypeCds.Open;
  VenPayTermsCds.Open;

  Top := 10;

  CostAccForm_DisplayType := 1;

  cxGrid3.LookAndFeel.SkinName := '';
  cxGrid2.LookAndFeel.SkinName := '';
  cxGrid9.LookAndFeel.SkinName := '';

  cxPymtTermLcmb.Visible := false;

end;

procedure TCostAccForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCostAccForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CostAccForm := nil;
end;

procedure TCostAccForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Seasons';
  Custom_MasterKeyField := 'Seasons_id';

  Custom_Detail1CdsName := 'HotelTariffsIndia';
  Custom_Detail1KeyField := 'HotelTariffs_id';

  Custom_Detail2CdsName := 'MealCostsIndia';
  Custom_Detail2KeyField := 'MealCosts_id';

  Custom_AdmLevel := CostAccForm_Level;

  //Custom_FormWidth := 1100;
  //Custom_FormHeight := 710;

  Custom_FormWidth := Screen.Width - 1;
  Custom_FormHeight := Screen.Height - 60;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TCostAccForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  FormResize(nil);
end;

procedure TCostAccForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['Addressbook_id'] = null then
    raise Exception.Create('Please enter the hotel');

  if MasterCds['FromDate'] = null then
    raise Exception.Create('Please enter the from date');

  if MasterCds['GIT'] = null then
    raise Exception.Create('Please enter if GIT');

  if MasterCds['ToDate'] <> null then
    if MasterCds['ToDate'] < MasterCds['FromDate'] then
      raise Exception.Create('From Date should be less than or equal to To Date');

  if MasterCds['FromPax'] = null then
    raise Exception.Create('Please enter the "from pax"');

  if MasterCds['To_Pax'] = null then
    raise Exception.Create('Please enter the "To Pax"');

  if MasterCds['To_pax'] < MasterCds['FromPax'] then
    raise Exception.Create('The number of "to pax" should be greater than "from pax"');

  if MasterCds['DayOfTheWeek'] = null then
    raise Exception.Create('Enter day of the week');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['Seasons_id'] = null then
    raise Exception.Create('Seasons_id is not assigned');

end;

function TCostAccForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Seasons ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND FromDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['FromDate'])) + ' ' +
    'AND GIT = ' + IntToStr(MasterCds['GIT']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Seasons_id <> ' + IntToStr(MasterCds['Seasons_id']) + ') ';

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

procedure TCostAccForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin

  if Detail1Cds['Seasons_id'] = null then
    raise exception.Create('Please enter the season');

  if Detail1Cds['RoomTypes_id'] = null then
    raise exception.Create('Please enter the room type');

  //Check if the tour code and tour date combination  already exists
  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail1Cds['HotelTariffs_id'] = null then
    raise Exception.Create('HotelTariffs_id not assigned');

end;

function TCostAccForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM HotelTariffsIndia ' +
    'WHERE Seasons_id = ' + IntToStr(Detail1Cds['Seasons_id']) + ' ' +
    'AND RoomTypes_id = ' + IntToStr(Detail1Cds['RoomTypes_id']) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (HotelTariffs_id <> ' + IntToStr(Detail1Cds['HotelTariffs_id']) + ') ';

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



procedure TCostAccForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  if Detail2Cds['Seasons_id'] = null then
    raise exception.Create('Please enter the season');

  if Detail2Cds['Breakfast'] = null then
    Detail2Cds['Breakfast'] := 0.0;

  if Detail2Cds['Lunch'] = null then
    Detail2Cds['Lunch'] := 0.0;

  if Detail2Cds['Dinner'] = null then
    Detail2Cds['Dinner'] := 0.0;

  if Detail2Cds['Breakfast_PT'] = null then
    Detail2Cds['Breakfast_PT'] := 0.0;

  if Detail2Cds['Lunch_PT'] = null then
    Detail2Cds['Lunch_PT'] := 0.0;

  if Detail2Cds['Dinner_PT'] = null then
    Detail2Cds['Dinner_PT'] := 0.0;

  if (Detail2Cds['Breakfast'] = 0) and (Detail2Cds['Lunch'] = 0) and
     (Detail2Cds['Dinner'] = 0) and (Detail2Cds['Breakfast_PT'] = 0) and
     (Detail2Cds['Lunch_PT'] = 0) and (Detail2Cds['Dinner_PT'] = 0) then
    raise Exception.Create ('Please enter the rates');

  if Detail2Cds['Currencies_pt_id'] = null then
    raise exception.Create('Please enter the Currency of the Published Tariff');

  //Check if the tour code and tour date combination  already exists
  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['MealCosts_id'] = null then
    raise Exception.Create('MealCosts_id not assigned');

end;

function TCostAccForm.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM MealCostsIndia ' +
    'WHERE Seasons_id = ' + IntToStr(Detail2Cds['Seasons_id']) + ' ' +
    'AND Currencies_pt_id = ' + IntToStr(Detail2Cds['Currencies_pt_id']) + ' ';

  if Detail2Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MealCosts_id <> ' + IntToStr(Detail2Cds['MealCosts_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

procedure TCostAccForm.FilterData;
var
  x_Addressbook_id: integer;
  x_wef: TDateTime;
begin

  x_Addressbook_id := -1;

  if cxHotelLCMB.EditValue <> null then
    x_Addressbook_id := cxHotelLCMB.EditValue;

  x_wef := StrToDate('01/01/' + IntToStr(YearOf(Date)));

  if cxWefLcmb.EditValue <> null then
    x_wef := cxWefLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  if CostAccForm_DisplayType = 1 then
    begin
      MasterSds.CommandText := 'SELECT * FROM Seasons ' +
                               'WHERE Addressbook_id = :Addressbook_id ' +
                               'AND FromDate = :Wef ' +
                               'ORDER BY FromDate DESC';
      MasterSds.Params[0].DataType := ftInteger;
      MasterSds.Params[1].DataType := ftDateTime;
      MasterSds.Params[0].ParamType := ptInput;
      MasterSds.Params[1].ParamType := ptInput;
    end
  else
    begin
      MasterSds.CommandText := 'SELECT * FROM Seasons ' +
                               'WHERE Addressbook_id = :Addressbook_id ' +
                               'AND FromDate >= :Wef ' +
                               'ORDER BY FromDate DESC';
      MasterSds.Params[0].DataType := ftInteger;
      MasterSds.Params[1].DataType := ftDateTime;
      MasterSds.Params[0].ParamType := ptInput;
      MasterSds.Params[1].ParamType := ptInput;
    end;


  MasterSds.Params[0].Value := x_Addressbook_id;
  MasterSds.Params[1].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;



procedure TCostAccForm.cxHotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Hotels_id: integer;
begin
  inherited;
  x_Hotels_id := -1;

  if cxHotelLCMB.EditValue <> null then
    x_Hotels_id := cxHotelLCMB.EditValue;

  HotelCds.Locate('Addressbook_id', x_Hotels_id, []);

  if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef'];

  cxPymtTermLcmb.Visible := false;

  FilterData;

end;

procedure TCostAccForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCostAccForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxHotelLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxHotelLCMB.EditValue;

  if (cxWefLCMB.EditValue = null) then
    MasterCds['FromDate'] := cxWefLCMB.EditValue;

  MasterCds['GIT'] := false;
  MasterCds['FromPax'] := 1;

  MasterCds['ServiceCharges'] := 0.0;
  MasterCds['TAC'] := 0.0;
  MasterCds['TAC_pt'] := 0.0;
  MasterCds['TacOnMealPlan'] := false;
  MasterCds['TacOnMealPlan_pt'] := false;
  MasterCds['ServiceChargesOnPlan'] := false;
  MasterCds['Closed'] := false;
  MasterCds['TL_Discount'] := 0.0;
  MasterCds['TL_DiscountAbove'] := 0;
  MasterCds['TL_FreeAbove'] := 0;
  MasterCds['TL_HalfDouble'] := false;
  MasterCds['ExtraBedCost'] := 0.0;
  MasterCds['ExtraBedPercentage'] := 0.0;
  MasterCds['DayOfTheWeek'] := 127;
  MasterCds['LuxTax'] := 0.0;
  MasterCds['LuxTaxOnPt'] := 0.0;
  MasterCds['ExpTax'] := 0.0;
  MasterCds['SalesTax'] := 0.0;
  MasterCds['SalesTaxInclusive'] := false;
  MasterCds['SalesTaxInclusive_pt'] := false;
  MasterCds['Default_ac'] := true;
  MasterCds['ExpTax_NotApplicable'] := false;

end;

procedure TCostAccForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if cxHotelLCMB.EditValue = null then
    abort;

//  if cxWefLCMB.EditValue = null then
//    abort;

end;

procedure TCostAccForm.PostWet;
begin
  inherited;

  if MasterCds['FromDate'] <> cxWefLCMB.EditValue then
    begin
      if not WefCds.Locate ('wef', MasterCds['FromDate'], []) then
        begin
          WefCds.Close;
          WefCds.Open;
          if WefCds.Locate ('wef', MasterCds['FromDate'], []) then
            cxWefLCMB.EditValue := MasterCds['FromDate'];
        end;
    end;

end;


procedure TCostAccForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWet;
end;

procedure TCostAccForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  WefCds.Close;
  WefCds.Open;
  if WefCds.Locate ('wef', MasterCds['FromDate'], []) then
    cxWefLCMB.EditValue := MasterCds['FromDate'];
end;

procedure TCostAccForm.cxGridDBBandedTableView9DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  if SelOprForm = Nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if MasterCds['DayOfTheWeek'] <> null then
    _InitStr := DaysToStr(MasterCds['DayOfTheWeek'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    MasterCds['DayOfTheWeek'] := DaysToBit(_RetStr);

  SelOprForm.Release;
  SelOprForm := nil;

end;

procedure TCostAccForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['DayOfTheWeek'] <> null then
    MasterCds['DaysName'] := DaysToStr(MasterCds['DayOfTheWeek']);
end;

procedure TCostAccForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds['Currencies_id'] := GetDefaultCurrency;
  Detail1Cds['Currencies_PT_id'] := GetDefaultCurrency;

  Detail1Cds['Nett'] := false;
  Detail1Cds['Nett_PT'] := false;
  Detail1Cds['MealPlans_id'] := 1;
  Detail1Cds['MealPlans_PT_id'] := 1;
  Detail1Cds['FreeTransfer'] := false;
  Detail1Cds['extrabed']:=0;
  Detail1Cds['extrabed_pt']:=0;

end;

procedure TCostAccForm.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds['Currencies_id'] := GetDefaultCurrency;
  Detail2Cds['Currencies_PT_id'] := GetDefaultCurrency;

end;

procedure TCostAccForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  inherited;
  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  CitiesCds.Locate('Cities_id', x_Cities_id, []);

end;


procedure TCostAccForm.FormResize(Sender: TObject);
var
  x_point: TPoint;
begin
  inherited;
  x_point := cxDBNotesMemo.ClientToScreen(Point(0,0));
  cxNotesLabel.Left := x_point.X - cxNotesLabel.Width - 5;
end;

procedure TCostAccForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_AddressBook_id, x_NumSingles, x_NumDoubles, x_RoomTypes_id, x_NumExtraBeds, x_MealPlans_id, x_currencies_id: Integer;
  x_AC, x_FIT: String;
  x_ExchRate: Double;
  x_FromDate, x_ToDate: TDateTime;
  x_Nights, x_Count: Integer;
begin
  inherited;

  if cxHotelLcmb.EditValue = null then
     exit;

  x_AddressBook_id := MasterCds['Addressbook_id'];

  if SinglesTxt.Text = '' then
    x_NumSingles := 0
  else
    x_NumSingles:= StrToInt(SinglesTxt.Text);

  if DoublesTxt.Text = '' then
    x_NumDoubles := 0
  else
    x_NumDoubles:= StrToInt(DoublesTxt.Text);

  if ExtraBedsTxt.Text = '' then
    x_NumExtraBeds := 0
  else
    x_NumExtraBeds:= StrToInt(ExtraBedsTxt.Text);

  if Length(Trim(NightsTxt.Text))<>0 then
     x_Nights:= StrToInt(NightsTxt.Text)
  else
     x_Nights:=0;

  GpSds:= TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM CostingTrace ' +
    'WHERE Vouchers_id = -99';
  GpSds.Open;

  x_count := GpSds['x_count'];
  if x_count > 0 then
    begin
      if MessageDlg('Another user may be using this feature. Do you want to override?',
        mtWarning, [mbYes, mbNo], 0) <> mrYes then
        begin
          GpSds.Free;
          exit;
        end;
    end;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT RoomTypes_id FROM RoomTypes ' +
    'WHERE RoomType = ''' + RoomTypeLcmb.Text + '''';
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['RoomTypes_id'] <> null) then
    x_RoomTypes_id := GpSds['RoomTypes_id']
  else
    x_RoomTypes_id := 0;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT mealplans_id FROM MealPlans ' +
    'WHERE [plan] = ''' + MealPlanLcmb.Text + '''';
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['mealplans_id'] <> null) then
    x_MealPlans_id := GpSds['mealplans_id']
  else
    x_MealPlans_id:= 0;

  if AcChkBox.Checked then
    x_AC := '1'
  else
    x_AC := '0';

  if FitChkBox.Checked then
    x_FIT := '1'
  else
    x_FIT := '0';

  if UsdChkBox.Checked then
    x_currencies_id := 25
  else
    x_currencies_id := GetDefaultCurrency;

  if ExchangeRateTxt.Text = '' then
    ExchangeRateTxt.Text := '1.0';

  x_ExchRate := StrToFloat(ExchangeRateTxt.Text);
  x_FromDate := TravelDate.Date;
  x_ToDate := x_FromDate + x_Nights;

  _CostingTraceForm_Gst := 0;
  if x_FromDate >= StrToDate('01/07/2017') then
    _CostingTraceForm_Gst := 1;

  if x_FromDate < StrToDate('01/07/2017') then
    begin

      GpSds.Close;
      GpSds.CommandText :=
        'EXEC p_CostAccommodation ' + IntToStr(x_Addressbook_id) + ',''' +
        FormatDateTime('mm/dd/yyyy',x_FromDate) + ''',''' +
        FormatDateTime('mm/dd/yyyy',x_ToDate) + ''',' + IntToStr(x_RoomTypes_id) + ',' +
        IntToStr(x_MealPlans_id) + ',' + x_Ac + ',' + x_Fit + ',' +
        IntToStr(x_NumSingles) + ',' + IntToStr(x_NumDoubles) + ',' +
        IntToStr(x_NumExtraBeds) + ',' + IntToStr(x_Currencies_id) + ',' + '-99' + ',' +
        FloatToStr(x_ExchRate);
      GpSds.ExecSQL;

    end
  else
    begin

      GpSds.Close;
      GpSds.CommandText := 'DELETE FROM CostingTrace WHERE (Vouchers_id = -99) OR (Vouchers_id IS NULL)';
      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.CommandText := 'TRUNCATE TABLE tmpCost';
      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.CommandText :=
        'INSERT INTO tmpCost (RecType,Category,Descr,Qty,Rate,Amt,GstPerc,Gst,Total,CostingCode, MealCost, AgentComm, MarginPerc, Margin) ' +
        'EXEC [p_GST_CostAccommodation] ' + IntToStr(x_Addressbook_id) + ',''' +
          FormatDateTime('mm/dd/yyyy',x_FromDate) + ''',''' +
          FormatDateTime('mm/dd/yyyy',x_ToDate) + ''',' + IntToStr(x_RoomTypes_id) + ',' +
          IntToStr(x_MealPlans_id) + ',' + x_Ac + ',' +
          IntToStr(x_NumSingles) + ',' + IntToStr(x_NumDoubles) + ',' +
          IntToStr(x_NumExtraBeds) + ',' + IntToStr(x_Currencies_id) + ',1';
      GpSds.ExecSQL;

      GpSds.Close;
      GpSds.CommandText :=
        'INSERT INTO CostingTrace (Vouchers_id, RecordType, Description, Qty, Rate, Cost, ' +
           'CostingCode, GstPerc, Gst, Total, MealCost, AgentComm, MarginPerc, Margin, GroupAmt) ' +
        'SELECT -99, RecType, Descr, Qty, Rate, Amt, ' +
          'CostingCode, GstPerc, Gst, Total, MealCost, AgentComm, MarginPerc, Margin, GroupAmt ' +
        'FROM tmpCost ';
      GpSds.ExecSQL;

    end;

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 2000);
  If _CostingTraceForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  _CostingTraceForm_Vouchers_id := -99;
  _CostingTraceForm_VoucherTypes_id := 3;

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.cxButton1.Visible := False;

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;

  GpSds.Close;
  GpSds.CommandText := 'DELETE FROM CostingTrace WHERE Vouchers_id = -99';
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TCostAccForm.cxGridDBBandedTableView9DblClick(Sender: TObject);
begin
  inherited;

  if trim(SinglesTxt.Text) = '' then
    SinglesTxt.Text := '1';

  if trim(DoublesTxt.Text) = '' then
    DoublesTxt.Text := '1';

  if Detail1Cds['RoomTypes_id'] <> null then
    RoomTypeLcmb.EditValue := Detail1Cds['RoomTypes_id']
  else if MasterCds['Default_RoomTypes_id'] <> null then
    RoomTypeLcmb.EditValue := MasterCds['Default_RoomTypes_id'];

  TravelDate.Date := MasterCds['FromDate'];

  if MasterCds['Default_ac'] = true then
    AcChkBox.Checked := true;

  if MasterCds['GIT'] = true then
    FitChkBox.Checked := true;

  if trim(ExtraBedsTxt.Text) = '' then
    ExtraBedsTxt.Text := '0';

  if trim(NightsTxt.Text) = '' then
    NightsTxt.Text := '1';

  if Detail1Cds['MealPlans_id'] <> null then
    MealPlanLcmb.EditValue := Detail1Cds['MealPlans_id']
  else if Detail1Cds['MealPlans_pt_id'] <> null then
    MealPlanLcmb.EditValue := Detail1Cds['MealPlans_pt_id'];

  if trim(ExchangeRateTxt.Text) = '' then
    begin
      if UsdChkBox.Checked then
        ExchangeRateTxt.Text := FloatToStr(GetExchangeRate (25,TravelDate.Date))
      else
        ExchangeRateTxt.Text := '1.0';
    end;

end;

procedure TCostAccForm.CopyfromGITtoFIT1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (CostAccForm_Level < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if MasterCds['Git'] = false then
    raise exception.create('A GIT costing should be hightlighted first');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MasterCds['FromDate'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := MasterCds['FromDate'];
      ReportParameterForm.cxDateEdit2.Date := MasterCds['ToDate'];
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (MasterCds['Seasons_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostSeasonsGitToFit ' +
            IntToStr(MasterCds['Seasons_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + ''',1';

          GpSds.ExecSQL;

          WefCds.Close;
          WefCds.Open;
          WefCds.Locate ('wef', ReportParameterForm.cxDateEdit1.Date, []);
          cxWefLCMB.EditValue := ReportParameterForm.cxDateEdit1.Date;
          FilterData;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GpSds.Free;

end;

procedure TCostAccForm.CopyCosts1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (CostAccForm_Level < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MasterCds['FromDate'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := IncYear(MasterCds['FromDate'],1);
      ReportParameterForm.cxDateEdit2.Date := IncYear(MasterCds['ToDate'],1);
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (MasterCds['Seasons_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostSeasons ' +
            IntToStr(MasterCds['Seasons_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + '''';

          GpSds.ExecSQL;

          WefCds.Close;
          WefCds.Open;
          WefCds.Locate ('wef', ReportParameterForm.cxDateEdit1.Date, []);
          cxWefLCMB.EditValue := ReportParameterForm.cxDateEdit1.Date;
          FilterData;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GpSds.Free;

end;

procedure TCostAccForm.CopyfromFITtoGIT1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (CostAccForm_Level < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if MasterCds['Git'] = true then
    raise exception.create('A FIT costing should be hightlighted first');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if MasterCds['FromDate'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := MasterCds['FromDate'];
      ReportParameterForm.cxDateEdit2.Date := MasterCds['ToDate'];
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (MasterCds['Seasons_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostSeasonsGitToFit ' +
            IntToStr(MasterCds['Seasons_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + ''',2';

          GpSds.ExecSQL;

          WefCds.Close;
          WefCds.Open;
          WefCds.Locate ('wef', ReportParameterForm.cxDateEdit1.Date, []);
          cxWefLCMB.EditValue := ReportParameterForm.cxDateEdit1.Date;
          FilterData;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GpSds.Free;

end;

procedure TCostAccForm.HotelPriceList1Click(Sender: TObject);
begin
  inherited;

   if HotelPriceListForm = nil then
    Application.CreateForm(THotelPriceListForm, HotelPriceListForm);

end;

procedure TCostAccForm.DeletethisCosting1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if MasterCds.Eof then
    exit;

  if MessageDlg('Are you sure you want to delete this costing?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if not MasterCds.Eof then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.CommandText := 'DELETE FROM MealCostsIndia WHERE Seasons_id = ' +
        IntToStr(MasterCds['Seasons_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM HotelTariffsIndia WHERE Seasons_id = ' +
        IntToStr(MasterCds['Seasons_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM Seasons WHERE Seasons_id = ' +
        IntToStr(MasterCds['Seasons_id']);
      GpSds.ExecSQL;

      WefCds.Close;
      WefCds.Open;
      if not WefCds.Eof then
        cxWefLCMB.EditValue := WefCds['Wef']
      else
        cxWefLCMB.Text := '';
      FilterData;

      GpSds.Free;

    end;
end;

procedure TCostAccForm.cxButton4Click(Sender: TObject);
begin
  inherited;

  if (cxCityLcmb.EditValue = null) or (cxCityLcmb.EditValue = 0) then
    raise exception.create ('Please enter the city');

  _DefaultHotelsForm_Level := CostAccForm_Level;
  _DefaultHotelsForm_Cities_id := cxCityLcmb.EditValue;

  if DefaultHotelsForm = nil then
    Application.CreateForm(TDefaultHotelsForm, DefaultHotelsForm);

  DefaultHotelsForm.FormStyle := fsNormal;
  DefaultHotelsForm.Visible := False;

  DefaultHotelsForm.ShowModal;

  DefaultHotelsForm.Free;
  DefaultHotelsForm := nil;

end;

procedure TCostAccForm.Panel2Click(Sender: TObject);
begin
  inherited;

  _CostAccommodationForm_Level := CostAccForm_Level;

  if CostAccommodationForm = nil then
    Application.CreateForm(TCostAccommodationForm, CostAccommodationForm);

end;

procedure TCostAccForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  HotelRoomTypeCds.Close;
  HotelRoomTypeCds.Open;
end;

procedure TCostAccForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  HotelRoomTypeCds.Close;
  HotelRoomTypeCds.Open;
end;

procedure TCostAccForm.MultiWefMnuClick(Sender: TObject);
begin
  inherited;

  if CostAccForm_DisplayType = 1 then
    begin
      CostAccForm_DisplayType := 2;
      MultiWefMnu.Caption := 'Single Wef';
    end
  else
    begin
      CostAccForm_DisplayType := 1;
      MultiWefMnu.Caption := 'Multi Wef';
    end;

  FilterData;

end;

procedure TCostAccForm.SpeedButton2Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_value: string;
  x_Hotels_id: integer;
begin
  inherited;

  if HotelCds['Addressbook_id'] = null then
    exit;

  x_Hotels_id := HotelCds['Addressbook_id'];

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if cxPymtTermLcmb.visible = true then
    begin
      if MessageDlg ('Are you sure you would like to update the payment terms?',
        mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin

          if trim(cxPymtTermLcmb.Text) = '' then
            x_value := 'null'
          else
            x_value := IntToStr(cxPymtTermLcmb.EditValue);

          GpSds.CommandText := 'UPDATE Addressbook SET VendorPaymentTerms_id = ' + x_value + ' ' +
            'WHERE Addressbook_id = ' + IntToStr(HotelCds['Addressbook_id']);

          GpSds.ExecSQL;

          HotelCds.Close;
          HotelCds.Open;

          HotelCds.Locate('addressbook_id',x_Hotels_id,[]);

        end;
    end
  else
    begin

      if HotelCds['PymtTerms'] <> null then
        cxPymtTermLcmb.Text := HotelCds['PymtTerms'];

    end;

  cxPymtTermLcmb.visible := not cxPymtTermLcmb.visible;

  GpSds.Close;
  GpSds.Free;

end;

procedure TCostAccForm.DisplayLuxTaxSrvT1Click(Sender: TObject);
begin
  inherited;
  Panel8.Visible := not Panel8.Visible;
  Panel10.Visible := not Panel10.Visible;
end;

end.
