unit CostAccommodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, StdCtrls, Menus, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeelPainters, cxButtons, cxButtonEdit,
  cxNavigator, cxDBNavigator, DateUtils, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox, cxLabel, cxMemo;

type
  TCostAccommodationForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TcxGroupBox;
    Panel3: TPanel;
    GroupBox2: TcxGroupBox;
    GroupBox3: TcxGroupBox;
    GroupBox4: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    cxCityLcmb: TcxLookupComboBox;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    SeasonsGrid: TcxGrid;
    SeasonsGridDBTableView1: TcxGridDBTableView;
    SeasonsGridLevel1: TcxGridLevel;
    SeasonsSds: TSQLDataSet;
    SeasonsDsp: TDataSetProvider;
    SeasonsCds: TClientDataSet;
    SeasonsDs: TDataSource;
    SeasonsCdsaddressbook_id: TIntegerField;
    SeasonsCdsfromdate: TSQLTimeStampField;
    SeasonsCdstodate: TSQLTimeStampField;
    SeasonsCdsfrompax: TBCDField;
    SeasonsCdsto_pax: TBCDField;
    SeasonsCdsgit: TBooleanField;
    SeasonsCdsservicecharges: TBCDField;
    SeasonsCdstac: TBCDField;
    SeasonsCdstac_pt: TBCDField;
    SeasonsCdstaconmealplan: TBooleanField;
    SeasonsCdstaconmealplan_pt: TBooleanField;
    SeasonsCdsservicechargesonplan: TBooleanField;
    SeasonsCdsclosed: TBooleanField;
    SeasonsCdstl_discount: TBCDField;
    SeasonsCdstl_discountabove: TIntegerField;
    SeasonsCdstl_freeabove: TIntegerField;
    SeasonsCdstl_halfdouble: TBooleanField;
    SeasonsCdsextrabedcost: TBCDField;
    SeasonsCdspolicyonescorts_id: TIntegerField;
    SeasonsCdsdayoftheweek: TIntegerField;
    SeasonsCdsextrabedpercentage: TBCDField;
    SeasonsCdsluxtax: TBCDField;
    SeasonsCdsluxtaxonpt: TBooleanField;
    SeasonsCdsexptax: TBCDField;
    SeasonsCdssalestax: TBCDField;
    SeasonsCdssalestaxinclusive: TBooleanField;
    SeasonsCdsdefault_roomtypes_id: TIntegerField;
    SeasonsCdsdefault_ac: TBooleanField;
    SeasonsCdsexptax_notapplicable: TBooleanField;
    SeasonsGridDBTableView1fromdate: TcxGridDBColumn;
    SeasonsGridDBTableView1todate: TcxGridDBColumn;
    SeasonsGridDBTableView1frompax: TcxGridDBColumn;
    SeasonsGridDBTableView1to_pax: TcxGridDBColumn;
    SeasonsGridDBTableView1closed: TcxGridDBColumn;
    SeasonsGridDBTableView1DaysName: TcxGridDBColumn;
    SeasonsCdsDaysName: TStringField;
    cxHotelLcmb: TcxLookupComboBox;
    GroupBox5: TcxGroupBox;
    GroupBox6: TcxGroupBox;
    GroupBox7: TcxGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    DefaultRoomLcmb: TcxDBLookupComboBox;
    DefaultRoomTypesSds: TSQLDataSet;
    DefaultRoomTypesDsp: TDataSetProvider;
    DefaultRoomTypesCds: TClientDataSet;
    DefaultRoomTypesDs: TDataSource;
    DefaultRoomTypesCdsroomtype: TStringField;
    DefaultRoomTypesCdsroomtypes_id: TIntegerField;
    DefaultRoomTypesCdsSeasons_id: TIntegerField;
    TariffGrid: TcxGrid;
    TariffGridDBTableView1: TcxGridDBTableView;
    TariffGridLevel1: TcxGridLevel;
    MealCostGrid: TcxGrid;
    MealCostGridDBTableView1: TcxGridDBTableView;
    MealCostGridLevel1: TcxGridLevel;
    TariffSds: TSQLDataSet;
    TariffDsp: TDataSetProvider;
    TariffCds: TClientDataSet;
    TariffDs: TDataSource;
    TariffCdshoteltariffs_id: TIntegerField;
    TariffCdsseasons_id: TIntegerField;
    TariffCdsroomtypes_id: TIntegerField;
    TariffCdscurrencies_id: TIntegerField;
    TariffCdscurrencies_pt_id: TIntegerField;
    TariffCdscost_single: TBCDField;
    TariffCdscost_single_pt: TBCDField;
    TariffCdscost_single_ac: TBCDField;
    TariffCdscost_single_ac_pt: TBCDField;
    TariffCdscost_double: TBCDField;
    TariffCdscost_double_pt: TBCDField;
    TariffCdscost_double_ac: TBCDField;
    TariffCdscost_double_ac_pt: TBCDField;
    TariffCdsnett: TBooleanField;
    TariffCdsnett_pt: TBooleanField;
    TariffCdsmealplans_id: TIntegerField;
    TariffCdsmealplans_pt_id: TIntegerField;
    TariffCdsfreetransfer: TBooleanField;
    TariffCdsextrabed: TBCDField;
    TariffGridDBTableView1roomtypes_id: TcxGridDBColumn;
    TariffGridDBTableView1currencies_id: TcxGridDBColumn;
    TariffGridDBTableView1currencies_pt_id: TcxGridDBColumn;
    TariffGridDBTableView1cost_single: TcxGridDBColumn;
    TariffGridDBTableView1cost_single_pt: TcxGridDBColumn;
    TariffGridDBTableView1cost_single_ac: TcxGridDBColumn;
    TariffGridDBTableView1cost_single_ac_pt: TcxGridDBColumn;
    TariffGridDBTableView1cost_double: TcxGridDBColumn;
    TariffGridDBTableView1cost_double_pt: TcxGridDBColumn;
    TariffGridDBTableView1cost_double_ac: TcxGridDBColumn;
    TariffGridDBTableView1cost_double_ac_pt: TcxGridDBColumn;
    TariffGridDBTableView1nett: TcxGridDBColumn;
    TariffGridDBTableView1nett_pt: TcxGridDBColumn;
    TariffGridDBTableView1mealplans_id: TcxGridDBColumn;
    TariffGridDBTableView1mealplans_pt_id: TcxGridDBColumn;
    TariffGridDBTableView1freetransfer: TcxGridDBColumn;
    TariffGridDBTableView1extrabed: TcxGridDBColumn;
    MealCostsSds: TSQLDataSet;
    MealCostsDsp: TDataSetProvider;
    MealCostsCds: TClientDataSet;
    MealCostsDs: TDataSource;
    MealCostsCdsmealcosts_id: TIntegerField;
    MealCostsCdsseasons_id: TIntegerField;
    MealCostsCdsbreakfast: TBCDField;
    MealCostsCdsbreakfast_pt: TBCDField;
    MealCostsCdslunch: TBCDField;
    MealCostsCdslunch_pt: TBCDField;
    MealCostsCdsdinner: TBCDField;
    MealCostsCdsdinner_pt: TBCDField;
    MealCostsCdscurrencies_id: TIntegerField;
    MealCostsCdscurrencies_pt_id: TIntegerField;
    MealCostGridDBTableView1breakfast: TcxGridDBColumn;
    MealCostGridDBTableView1breakfast_pt: TcxGridDBColumn;
    MealCostGridDBTableView1lunch: TcxGridDBColumn;
    MealCostGridDBTableView1lunch_pt: TcxGridDBColumn;
    MealCostGridDBTableView1dinner: TcxGridDBColumn;
    MealCostGridDBTableView1dinner_pt: TcxGridDBColumn;
    MealCostGridDBTableView1currencies_id: TcxGridDBColumn;
    MealCostGridDBTableView1currencies_pt_id: TcxGridDBColumn;
    GroupBox8: TcxGroupBox;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Tax_1: TcxDBCheckBox;
    Tax_3: TcxDBCheckBox;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    cxDBCheckBox9: TcxDBCheckBox;
    TourLeaderLcmb: TcxDBLookupComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    SinglesTxt: TcxTextEdit;
    DoublesTxt: TcxTextEdit;
    ExtraBedsTxt: TcxTextEdit;
    NightsTxt: TcxTextEdit;
    NoofPaxTxt: TcxTextEdit;
    ExchangeRateTxt: TcxTextEdit;
    TravelDate: TcxDateEdit;
    DisplayCostBtn: TcxButton;
    RoomTypeLcmb: TcxLookupComboBox;
    MealPlanLcmb: TcxLookupComboBox;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    TourLeaderSds: TSQLDataSet;
    TourLeaderDsp: TDataSetProvider;
    TourLeaderCds: TClientDataSet;
    TourLeaderDs: TDataSource;
    TourLeaderCdspolicyonescorts_id: TIntegerField;
    TourLeaderCdspolicy: TStringField;
    GTChkBox: TcxCheckBox;
    cxDBNavigator1: TcxDBNavigator;
    cxButton1: TcxButton;
    AcChkBox: TcxCheckBox;
    FitChkBox: TcxCheckBox;
    UsdChkBox: TcxCheckBox;
    WebChkBox: TcxCheckBox;
    PackageChkBox: TcxCheckBox;
    ResidentChkBox: TcxCheckBox;
    cxDefaultRoomButton: TcxButton;
    Shape1: TShape;
    Label31: TcxLabel;
    Shape2: TShape;
    Label32: TcxLabel;
    cxButton3: TcxButton;
    UtilitiesPopup: TPopupMenu;
    CopyCosts1: TMenuItem;
    SeasonsGridDBTableView1Column1: TcxGridDBColumn;
    SeasonsCdsseasons_id: TIntegerField;
    cxButton4: TcxButton;
    N1: TMenuItem;
    CopyfromGITtoFIT1: TMenuItem;
    CopyfromFITtoGIT1: TMenuItem;
    TariffCdsextrabed_pt: TBCDField;
    ariffGridDBTableView1ExtraBed: TcxGridDBColumn;
    SeasonsCdssalestaxinclusive_pt: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxWefLCMB: TcxLookupComboBox;
    cxButtonUpdate: TcxButton;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    WefCdsWef: TSQLTimeStampField;
    N2: TMenuItem;
    HotelPriceList1: TMenuItem;
    SeasonsCdsSpecialPeriod: TBooleanField;
    SeasonsGridDBTableView1SpecialPeriod: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    SeasonsCdsNotes: TMemoField;
    procedure NoofPax;
    procedure FilterCosts;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure GTChkBoxClick(Sender: TObject);
    procedure SinglesTxtPropertiesChange(Sender: TObject);
    procedure DoublesTxtPropertiesChange(Sender: TObject);
    procedure ExtraBedsTxtPropertiesChange(Sender: TObject);
    procedure WebChkBoxClick(Sender: TObject);
    procedure SeasonsCdsAfterInsert(DataSet: TDataSet);
    procedure SeasonsCdsBeforePost(DataSet: TDataSet);
    procedure SeasonsCdsAfterPost(DataSet: TDataSet);
    procedure SeasonsCdsBeforeInsert(DataSet: TDataSet);
    procedure SeasonsCdsBeforeEdit(DataSet: TDataSet);
    procedure SeasonsCdsBeforeDelete(DataSet: TDataSet);
    procedure SeasonsCdsAfterDelete(DataSet: TDataSet);
    procedure SeasonsGridDBTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SeasonsCdsCalcFields(DataSet: TDataSet);
    procedure SeasonsCdsluxtaxChange(Sender: TField);
    procedure SeasonsCdssalestaxChange(Sender: TField);
    procedure SeasonsCdsAfterScroll(DataSet: TDataSet);
    procedure TariffCdsAfterInsert(DataSet: TDataSet);
    procedure TariffCdsBeforePost(DataSet: TDataSet);
    procedure TariffCdsAfterPost(DataSet: TDataSet);
    procedure TariffCdsBeforeInsert(DataSet: TDataSet);
    procedure TariffCdsBeforeEdit(DataSet: TDataSet);
    procedure TariffCdsBeforeDelete(DataSet: TDataSet);
    procedure MealCostsCdsAfterInsert(DataSet: TDataSet);
    procedure MealCostsCdsBeforePost(DataSet: TDataSet);
    procedure MealCostsCdsAfterPost(DataSet: TDataSet);
    procedure MealCostsCdsBeforeEdit(DataSet: TDataSet);
    procedure MealCostsCdsBeforeInsert(DataSet: TDataSet);
    procedure MealCostsCdsBeforeDelete(DataSet: TDataSet);    
    procedure DisplayCostBtnClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDefaultRoomButtonClick(Sender: TObject);
    function GetExchangeRate: double;
    function IsRecordDuplicate: Boolean;
    procedure TariffCdsAfterDelete(DataSet: TDataSet);
    procedure MealCostsCdsAfterDelete(DataSet: TDataSet);
    procedure CopyCosts1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure CopyfromGITtoFIT1Click(Sender: TObject);
    procedure CopyfromFITtoGIT1Click(Sender: TObject);
    procedure cxWefLCMBEnter(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure cxHotelLcmbExit(Sender: TObject);
    procedure cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure ChangeWefCombo;
    procedure FilterHotels;
    function DoesWefExist: Boolean;
    procedure HotelPriceList1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostAccommodationForm: TCostAccommodationForm;
  _CostAccommodationForm_Level: Integer;
implementation

uses BackOfficeDM, GeneralUt, SelOprFm, CentralTaxesFm, BoQryFm,
  SearchSortFm, ReportParameterFm, CostingTraceFm, MainFm, DefaultHotelsFm,
  HotelPriceListFm, CostAccFm;

var
  Tbl_array: Array[0..2] of TClientDataSet;
  Qry_array: Array[0..6] of TClientDataSet;
  AdmLevel: Integer;
  _IsNewWef:  Boolean;


{$R *.dfm}

procedure TCostAccommodationForm.NoofPax;
begin
  try
    if (SinglesTxt.Text = '') or (Length(Trim(SinglesTxt.Text)) <= 0 ) then
      SinglesTxt.Text := IntToStr(0);

    if (DoublesTxt.Text = '') or (Length(Trim(DoublesTxt.Text)) <= 0 ) then
      DoublesTxt.Text := IntToStr(0);

    if (ExtraBedsTxt.Text = '') or (Length(Trim(ExtraBedsTxt.Text)) <= 0 ) then
      ExtraBedsTxt.Text := IntToStr(0);

    NoofPaxTxt.Text := IntToStr(StrToInt(SinglesTxt.Text) + (StrToInt(DoublesTxt.Text)*2) + StrToInt(ExtraBedsTxt.text));
  except
    DoublesTxt.Text := '0';
  end;
end;

procedure TCostAccommodationForm.FilterCosts;
var
  x_filter, GitFilter, DateFilter, HotelFilter: string;
begin

  if Trim(cxWefLCMB.Text) = '' then
    x_filter := ' (1=2) '
  else
    x_filter := ' (1=1) ';

  // Group Tours
  GitFilter := '';
  if GTChkBox.Checked then
    GitFilter := ' AND (GIT = True) '
  else
    GitFilter := ' AND (GIT = False) ';

  DateFilter := '';
  try
    if Trim(cxWefLCMB.Text) <> '' then
       DateFilter := ' AND (FromDate >= ''' + FormatDateTime('dd/mm/yyyy', StrToDate(cxWefLCMB.Text) ) + ''') ';
  except
  end;

  HotelFilter := '';
  try
    if (cxHotelLcmb.EditValue <> null) and (cxHotelLcmb.EditValue <> 0) then
       HotelFilter := ' AND (Addressbook_id = ' + IntToStr(cxHotelLcmb.EditValue) + ') '
    else
       HotelFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  SeasonsCds.Active := False;
  SeasonsCds.Filter := x_filter + HotelFilter + GitFilter + DateFilter;
  SeasonsCds.Filtered := True;
  SeasonsCds.Active := True;
  SeasonsCds.First;

  cxDefaultRoomButtonClick(nil);

end;

procedure TCostAccommodationForm.ChangeWefCombo;
var
  x_Filter, GitFilter, HotelFilter, DateFilter : string;
begin
  inherited;

  // Group Tours
  GitFilter := '';
  if GTChkBox.Checked then
    GitFilter := ' AND (GIT = 1) '
  else
    GitFilter := ' AND (GIT = 0) ';

  HotelFilter := '';
  try
    if (cxHotelLcmb.EditValue <> null) and (cxHotelLcmb.EditValue <> 0) then
       HotelFilter := ' AND (Addressbook_id = ' + IntToStr(cxHotelLcmb.EditValue) + ') '
    else
       HotelFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  x_Filter := 'SELECT DISTINCT FromDate AS wef FROM Seasons WHERE (1=1) ' +
    GitFilter + HotelFilter +
    ' ORDER BY FromDate DESC';

  WefSds.Close;
  WefSds.CommandText := x_Filter;

  WefCds.Close;
  WefCds.Open;

  if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.EditValue := null;

end;


procedure TCostAccommodationForm.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  AdmLevel := _CostAccommodationForm_Level;

  Tbl_array[0]:= SeasonsCds;
  Tbl_array[1]:= TariffCds;
  Tbl_array[2]:= MealCostsCds;

  Qry_array[0] := BackOfficeDataModule.CitiesCds;
  Qry_array[1] := BackOfficeDataModule.RoomTypeCds;
  Qry_array[2] := BackOfficeDataModule.CurrenciesCds;
  Qry_array[3] := BackOfficeDataModule.MealPlanCds;
  Qry_array[4] := HotelCds;
  Qry_array[5] := DefaultRoomTypesCds;
  Qry_array[6] := TourLeaderCds;

  for i := 0 to 6 do
    begin
      Qry_array[i].Active:=True;
    end;
  for i := 0 to 2 do
    begin
      Tbl_array[i].Active:=True;
    end;

  SeasonsSds.Active := False;
  SeasonsCds.Active := False;

  SeasonsCds.Filter := 'Seasons_id = -1 ';
  SeasonsCds.Filtered := True;

  SeasonsSds.Active := True;
  SeasonsCds.Active := True;

  TravelDate.Date := Date;

  ExchangeRateTxt.Text := FormatFloat('#,##0.00',GetExchangeRate);

  TariffGrid.LookAndFeel.SkinName := '';
  MealCostGrid.LookAndFeel.SkinName := '';

  FilterCosts;

  ChangeWefCombo;

end;

function TCostAccommodationForm.GetExchangeRate: double;
var
  GpSds : TSQLDataSet;
  x_exchRate: double;
  x_countries_id: integer;
begin

  x_countries_id := GetDefaultCountry;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'SELECT ExchangeRate FROM CurrencyDetails '+
                 ' WHERE Currencies_id = 25 '+
                 ' AND Countries_id = ' + IntToStr(x_countries_id) + ' ' +
                 ' AND WEF =(SELECT MAX(WEF) FROM CurrencyDetails '+
                 '            WHERE Currencies_id = 25 '+
                 '              AND Countries_id = ' + IntToStr(x_countries_id) + ' ' +
                 ' AND WEF <= getdate())';
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['ExchangeRate'] <> null ) then
    x_ExchRate := GpSds['exchangerate']
  else
    x_ExchRate := 1.0;

  GpSds.close;
  GpSds.Free;

  Result := x_ExchRate;

end;


procedure TCostAccommodationForm.FormDestroy(Sender: TObject);
begin
  CostAccommodationForm := nil;
end;

procedure TCostAccommodationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  for i := 0 to 6 do
  begin
    Qry_array[i].Active:=False;
  end;
  for i := 0 to 2 do
  begin
    Tbl_array[i].Active:=False;
  end;
  Action:=caFree;
end;

procedure TCostAccommodationForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if cxCityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id', cxCityLcmb.Editvalue, []);
  except
  end;

  FilterHotels;

  try
    cxButtonUpdateClick(nil);
  except
  end;

end;

procedure TCostAccommodationForm.FilterHotels;
var
  x_Cities_id: integer;
begin

  x_Cities_id := -1;
  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  HotelSds.Active := False;
  HotelCds.Active := False;

  HotelSds.CommandText := 'SELECT * FROM fn_Addressbook(2,''H'') WHERE Cities_id = ' + IntToStr(x_Cities_id);

  HotelSds.Active := True;
  HotelCds.Active := True;

end;


procedure TCostAccommodationForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if (CxHotelLCMB.EditValue <> null) and (HotelCds.State <> dsInactive) then
      begin
        cxButtonUpdateClick(nil);
      end;

  except
  end;


end;

procedure TCostAccommodationForm.GTChkBoxClick(Sender: TObject);
begin
  FilterCosts;
end;

procedure TCostAccommodationForm.SinglesTxtPropertiesChange(
  Sender: TObject);
begin
   NoofPax;
end;

procedure TCostAccommodationForm.DoublesTxtPropertiesChange(
  Sender: TObject);
begin
  NoofPax;
end;

procedure TCostAccommodationForm.ExtraBedsTxtPropertiesChange(
  Sender: TObject);
begin
  NoofPax;
end;

procedure TCostAccommodationForm.WebChkBoxClick(Sender: TObject);
begin
  PackageChkBox.Visible := WebChkBox.Checked;
  ResidentChkBox.Visible := WebChkBox.Checked;
end;

procedure TCostAccommodationForm.SeasonsCdsAfterInsert(DataSet: TDataSet);
begin
  if cxHotelLcmb.EditValue = Null then
    raise Exception.Create('Please Select Hotel');

  if cxCityLcmb.EditValue = Null then
    raise Exception.Create('Please Select City');

  SeasonsCds['Addressbook_id'] := cxHotelLcmb.EditValue;

  if GTChkBox.Checked then
    SeasonsCds['GIT'] := True
  else
    SeasonsCds['GIT'] := False;

  SeasonsCds['LuxTaxonPT'] := 0;
  SeasonsCds['TacOnMealPlan_PT'] := 0;
  SeasonsCds['TacOnMealPlan'] := 0;
  SeasonsCds['Closed'] := 0;
  SeasonsCds['DayOfTheWeek'] := 127;
  SeasonsCds['TL_HalfDouble'] := 0;
  SeasonsCds['ServiceChargesOnPlan'] := 0;
  SeasonsCds['SalesTaxInclusive'] := 0;
  SeasonsCds['TAC_PT'] := 10;
  SeasonsCds['exptax_notapplicable']:= 0;
  SeasonsCds['SpecialPeriod'] := false;  

  try
    if cxWefLCMB.Text <> '' then
      SeasonsCds['FromDate'] := cxWefLCMB.Text;
  except
  end;


end;

procedure TCostAccommodationForm.SeasonsCdsBeforePost(DataSet: TDataSet);
begin

  if SeasonsCds.State = dsInsert then
    SeasonsCds['Seasons_id'] := GetNextId('Seasons','Seasons_id')
  else
    SeasonsCds['Seasons_id'] := SeasonsCds['Seasons_id'];

  if SeasonsCds['FromDate'] = null then
    raise Exception.Create('Please enter the from date');

  if SeasonsCds['ToDate'] <> null then
    if SeasonsCds['ToDate'] < SeasonsCds['FromDate'] then
      raise Exception.Create('From Date should be less than or equal to To Date');

  if SeasonsCds['frompax'] = null then
    raise Exception.Create('Please enter the "from pax"');

  if SeasonsCds['to_pax'] = null then
    raise Exception.Create('Please enter the "To Pax"');

  if SeasonsCds['to_pax'] < SeasonsCds['FromPax'] then
    raise Exception.Create('The number of "to pax" should be greater than "from pax"');

  if SeasonsCds['DayOfTheWeek'] = null then
    raise Exception.Create('Enter day of the week');

  _IsNewWef := False;

  if DoesWefExist = false then
    begin
      _IsNewWef := True;
    end;


 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TCostAccommodationForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
  x_git: string;
begin

  x_duplicate := False;

  if SeasonsCds['Git'] = true then
    x_git := ' AND Git = 1 '
  else
    x_git := ' AND Git = 0 ';

  QueryString := 'SELECT COUNT(*) AS x_count FROM Seasons ' +
    'WHERE Addressbook_id = ' + IntToStr(SeasonsCds['Addressbook_id']) + ' ' +
    'AND FromDate = ''' + FormatDateTime('mm/dd/yyyy',SeasonsCds['FromDate']) + ''' ' +
    'AND FromPax = ' + FormatFloat('##0',SeasonsCds['FromPax']) + ' ' +
    'AND To_Pax = ' + FormatFloat('##0',SeasonsCds['To_Pax']) + ' ' +
    'AND DayOfTheWeek = ' + IntToStr(SeasonsCds['DayOfTheWeek']) + ' ' +
    x_git;

  if SeasonsCds.State = dsEdit then
    QueryString := QueryString + ' AND (Seasons_id <> ' + IntToStr(SeasonsCds['Seasons_id']) + ') ';

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


procedure TCostAccommodationForm.SeasonsCdsAfterPost(DataSet: TDataSet);
begin
  SeasonsCds.ApplyUpdates(0);

  if _IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TCostAccommodationForm.SeasonsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.SeasonsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.SeasonsCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  // Delete Child Tariff reords
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'DELETE FROM HotelTariffsindia ' +
          ' WHERE seasons_id = ' + IntToStr(SeasonsCds['seasons_id']);
  GpSds.ExecSQL;

  // Delete Child Meal reords
  GpSds.Close;
  GpSds.CommandText:= 'DELETE FROM MealCostsindia ' +
          ' WHERE seasons_id = ' + IntToStr(SeasonsCds['seasons_id']);
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TCostAccommodationForm.SeasonsCdsAfterDelete(DataSet: TDataSet);
begin
  SeasonsCds.ApplyUpdates(0);

  SeasonsCds.Close;
  SeasonsCds.Open;

end;

procedure TCostAccommodationForm.SeasonsGridDBTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if SeasonsCds.State = dsBrowse then
    SeasonsCds.Edit;

  if SelOprForm = nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if SeasonsCds['dayoftheweek'] <> null then
    _InitStr := DaysToStr(SeasonsCds['dayoftheweek'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    SeasonsCds['dayoftheweek'] := DaysToBit(_RetStr);

  SelOprForm.Release;
  SelOprForm := nil;

end;

procedure TCostAccommodationForm.SeasonsCdsCalcFields(DataSet: TDataSet);
begin
  if SeasonsCds['dayoftheweek'] <> null then
    SeasonsCds['DaysName'] := DaysToStr(SeasonsCds['dayoftheweek']);
end;

procedure TCostAccommodationForm.SeasonsCdsluxtaxChange(Sender: TField);
begin
  if SeasonsCdsluxtax.Value > 0 then
      Tax_1.Visible := True
   else
   begin
      Tax_1.Visible := False;
      SeasonsCds['luxtaxonpt'] := 0;
   end;
end;

procedure TCostAccommodationForm.SeasonsCdssalestaxChange(Sender: TField);
begin
{
  if SeasonsCdssalestax.Value > 0 then
      Tax_2.Visible := True
  else begin
      Tax_2.Visible := False;
      SeasonsCds['salestaxinclusive'] := 0;
   end;
}
end;

procedure TCostAccommodationForm.SeasonsCdsAfterScroll(DataSet: TDataSet);
begin
  if SeasonsCdsluxtax.Value > 0 then
      Tax_1.Visible := True
  else
      Tax_1.Visible := False;

{
  if SeasonsCdssalestax.Value > 0 then
      Tax_2.Visible := True
  else
      Tax_2.Visible := False;
}      
end;

procedure TCostAccommodationForm.TariffCdsAfterInsert(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  // default Currency
  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT number FROM defaults ' +
          'WHERE Item = ''Currency'' ';
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    begin
      TariffCds['Currencies_id'] := GpSds['number'];
      TariffCds['Currencies_PT_id'] := GpSds['number'];
    end;

  TariffCds['Nett'] := 0;
  TariffCds['Nett_PT'] := 0;
  TariffCds['MealPlans_id'] := 1;
  TariffCds['MealPlans_PT_id'] := 1;
  TariffCds['FreeTransfer'] := 0;
  TariffCds['extrabed']:=0;
  TariffCds['extrabed_pt']:=0;

  GpSds.Free;
end;

procedure TCostAccommodationForm.TariffCdsBeforePost(DataSet: TDataSet);
begin

  if TariffCds.State = dsInsert then
    TariffCds['HotelTariffs_id'] := GetNextId('HotelTariffsIndia','HotelTariffs_id');

  if TariffCds['RoomTypes_id'] = null then
    raise Exception.Create ('Please enter the room type');

end;

procedure TCostAccommodationForm.TariffCdsAfterPost(DataSet: TDataSet);
begin
  TariffCds.ApplyUpdates(0);
end;

procedure TCostAccommodationForm.TariffCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.TariffCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.TariffCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.MealCostsCdsAfterInsert(
  DataSet: TDataSet);
var
  GPSds : TSQLDataSet;
begin
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := 'SELECT number FROM defaults WHERE Item = ''Currency'' ';
  GPSds.Open;

  if (not GPSds.EOF) and (GPSds['number'] <> null) then
    begin
      MealCostsCds['Currencies_id'] := GPSds['number'];
      MealCostsCds['Currencies_PT_id'] := GPSds['number'];
    end;

  GPSds.Close;
  GPSds.Free;
end;

procedure TCostAccommodationForm.MealCostsCdsBeforePost(DataSet: TDataSet);
begin
  if MealCostsCds.State = dsInsert then
    MealCostsCds['MealCosts_id'] := GetNextId('MealCostsIndia','MealCosts_id');

  if (MealCostsCds['Breakfast'] = 0) and (MealCostsCds['Lunch'] = 0) and
     (MealCostsCds['Dinner'] = 0) and (MealCostsCds['Breakfast_PT'] = 0) and
     (MealCostsCds['Lunch_PT'] = 0) and (MealCostsCds['Dinner_PT'] = 0) then
    raise Exception.Create ('Please enter the rates');

  if (MealCostsCds['Breakfast'] = Null) and (MealCostsCds['Lunch'] = Null) and
     (MealCostsCds['Dinner'] = Null) and (MealCostsCds['Breakfast_PT'] = Null) and
     (MealCostsCds['Lunch_PT'] = Null) and (MealCostsCds['Dinner_PT'] = Null) then
    raise Exception.Create ('Please enter the rates');

end;

procedure TCostAccommodationForm.MealCostsCdsAfterPost(DataSet: TDataSet);
begin
  MealCostsCds.ApplyUpdates(0);
end;

procedure TCostAccommodationForm.MealCostsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.MealCostsCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.MealCostsCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostAccommodationForm.DisplayCostBtnClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_AddressBook_id,NumPax,x_NumSingles,x_NumDoubles,x_RoomTypes_id, x_NumExtraBeds,
  x_MealPlans_id,x_currencies_id: Integer;
  x_AC, x_FIT: String;
  x_ExchRate: Double;
  x_FromDate, x_ToDate: TDateTime;
  x_Nights, x_Count: Integer;
begin

{
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
}    

  x_ExchRate:=0.0;

  if SeasonsCds['Addressbook_id'] = Null then
     Exit;

  x_AddressBook_id := SeasonsCds['Addressbook_id'];

  if NoofPaxTxt.Text = '' then
    NumPax := 0
  else
    NumPax:= StrToInt(NoofPaxTxt.Text);

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

  if Length(Trim(ExchangeRateTxt.Text)) <> 0 then
    x_ExchRate:= StrToFloat(Trim(ExchangeRateTxt.Text));

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

  x_ExchRate := StrToFloat(ExchangeRateTxt.Text);
  x_FromDate := TravelDate.Date;
  x_ToDate := x_FromDate + x_Nights;

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
  GpSds.CommandText := 'DELETE FROM CostingTrace ' +
    'WHERE Vouchers_id = -99';
  GpSds.ExecSQL;

  GpSds.Free;


end;

procedure TCostAccommodationForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TCostAccommodationForm.cxDefaultRoomButtonClick(Sender: TObject);
begin

  DefaultRoomTypesCds.Close;
  DefaultRoomTypesCds.Open;

end;

procedure TCostAccommodationForm.TariffCdsAfterDelete(DataSet: TDataSet);
begin
  TariffCds.ApplyUpdates(0);
end;

procedure TCostAccommodationForm.MealCostsCdsAfterDelete(
  DataSet: TDataSet);
begin
  MealCostsCds.ApplyUpdates(0);
end;

procedure TCostAccommodationForm.CopyCosts1Click(Sender: TObject);
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

  if SeasonsCds['FromDate'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := IncYear(SeasonsCds['FromDate'],1);
      ReportParameterForm.cxDateEdit2.Date := IncYear(SeasonsCds['ToDate'],1);
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (SeasonsCds['Seasons_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostSeasons ' +
            IntToStr(SeasonsCds['Seasons_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + '''';

          GpSds.ExecSQL;

          cxButtonUpdateClick(nil);

          //DateFilter;

          //ShowMessage ('The filter has changed to the latest copied date.' + chr(13) +
          //  'Click on "Pick Dates" to go to the earlier costings');

          FilterCosts;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;


end;

procedure TCostAccommodationForm.cxButton4Click(Sender: TObject);
begin

  if (cxCityLcmb.EditValue = null) or (cxCityLcmb.EditValue = 0) then
    exit;

  _DefaultHotelsForm_Level := _CostAccommodationForm_Level;
  _DefaultHotelsForm_Cities_id := cxCityLcmb.EditValue;

  if DefaultHotelsForm = nil then
    Application.CreateForm(TDefaultHotelsForm, DefaultHotelsForm);

  DefaultHotelsForm.FormStyle := fsNormal;
  DefaultHotelsForm.Visible := False;

  DefaultHotelsForm.ShowModal;

  DefaultHotelsForm.Free;
  DefaultHotelsForm := nil;

end;

procedure TCostAccommodationForm.CopyfromGITtoFIT1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if SeasonsCds['Git'] = False then
    raise exception.create('A GIT costing should be hightlighted first');

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if SeasonsCds['FromDate'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := SeasonsCds['FromDate'];
      ReportParameterForm.cxDateEdit2.Date := SeasonsCds['ToDate'];
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (SeasonsCds['Seasons_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostSeasonsGitToFit ' +
            IntToStr(SeasonsCds['Seasons_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + ''',1';

          GpSds.ExecSQL;

          FilterCosts;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;

end;

procedure TCostAccommodationForm.CopyfromFITtoGIT1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if SeasonsCds['Git'] = True then
    raise exception.create('A FIT costing should be hightlighted first');

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if SeasonsCds['FromDate'] <> null then
    begin
      ReportParameterForm.cxDateEdit1.Date := SeasonsCds['FromDate'];
      ReportParameterForm.cxDateEdit2.Date := SeasonsCds['ToDate'];
    end;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (SeasonsCds['Seasons_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostSeasonsGitToFit ' +
            IntToStr(SeasonsCds['Seasons_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + ''',2';

          GpSds.ExecSQL;

          FilterCosts;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;

end;

procedure TCostAccommodationForm.cxWefLCMBEnter(Sender: TObject);
begin
  ChangeWefCombo;
end;

procedure TCostAccommodationForm.cxButtonUpdateClick(Sender: TObject);
begin
  ChangeWefCombo;
  FilterCosts;
end;

function TCostAccommodationForm.DoesWefExist: Boolean;
var
  QueryString, x_filter, GitFilter, HotelFilter: string;
  x_WefExist: boolean;
  GpSds: TSQLDataSet;
begin

  x_WefExist := False;

  x_Filter := ' WHERE (1=1) ';

  GitFilter := '';
  if GTChkBox.Checked then
    GitFilter := ' AND (GIT = 1) '
  else
    GitFilter := ' AND (GIT = 0) ';

  HotelFilter := '';
  try
    if (cxHotelLcmb.EditValue <> null) and (cxHotelLcmb.EditValue <> 0) then
       HotelFilter := ' AND (Addressbook_id = ' + IntToStr(cxHotelLcmb.EditValue) + ') '
    else
       HotelFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  QueryString := 'SELECT x_count = COUNT(*) FROM Seasons ' +
    x_filter + GitFilter + HotelFilter +
    ' AND FromDate = ''' + FormatDateTime('mm/dd/yyyy',SeasonsCds['FromDate']) + ''' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_WefExist := True;

  GpSds.Free;

  Result := x_wefExist;

end;


procedure TCostAccommodationForm.cxHotelLcmbExit(Sender: TObject);
begin
  FilterCosts;
end;

procedure TCostAccommodationForm.cxWefLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    FilterCosts;

end;

procedure TCostAccommodationForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterCosts;
end;

procedure TCostAccommodationForm.HotelPriceList1Click(Sender: TObject);
begin

   if HotelPriceListForm = nil then
    Application.CreateForm(THotelPriceListForm, HotelPriceListForm);

end;

end.

