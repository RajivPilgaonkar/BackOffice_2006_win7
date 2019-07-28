unit ElemAccFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, Buttons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TElemAccForm = class(TCustom_1MG_Form)
    MasterCdsElemAccommodation_id: TIntegerField;
    MasterCdsAddressBook_id: TIntegerField;
    MasterCdsFromDate: TSQLTimeStampField;
    MasterCdsToDate: TSQLTimeStampField;
    MasterCdsAC: TBooleanField;
    MasterCdsRoomTypes_id: TIntegerField;
    MasterCdsMealPlans_id: TIntegerField;
    MasterCdsCostSingle: TFMTBCDField;
    MasterCdsCostDouble: TFMTBCDField;
    MasterCdsCostTriple: TFMTBCDField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsSpecialPeriod: TBooleanField;
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxHotelLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDs: TDataSource;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelDs: TDataSource;
    cxGrid1DBBandedTableView1ElemAccommodation_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AddressBook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AC: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RoomTypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MealPlans_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CostSingle: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CostDouble: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CostTriple: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SpecialPeriod: TcxGridDBBandedColumn;
    MealPlanSds: TSQLDataSet;
    MealPlanDsp: TDataSetProvider;
    MealPlanCds: TClientDataSet;
    MealPlanCdsmealplans_id: TIntegerField;
    MealPlanCdsmealplan: TStringField;
    MealPlanCdsplan: TStringField;
    MealPlanDs: TDataSource;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsroomtypes_id: TIntegerField;
    RoomTypeCdsroomtype: TStringField;
    RoomTypeCdsac: TBooleanField;
    RoomTypeDs: TDataSource;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrency: TStringField;
    CurrenciesDs: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    WefCdsFromDate: TSQLTimeStampField;
    RoomTypeCdsAddressbook_id: TIntegerField;
    MasterCdsQuoted: TBooleanField;
    cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxHotelLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure FilterWef;
  public
    { Public declarations }
  end;

var
  ElemAccForm: TElemAccForm;
  ElemAccForm_Level: Integer;
  ElemAccForm_NullDate: TDateTime;
  ElemAccForm_Cities_id: integer;
  ElemAccForm_Hotels_id: integer;
  ElemAccForm_Wef: TDateTime;

implementation

uses BackOfficeDM, ElementsFm;

{$R *.dfm}

procedure TElemAccForm.FormCreate(Sender: TObject);
begin

  ElemAccForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := ElemAccForm_NullDate;
  inherited;

  CitiesCds.Open;
  HotelCds.Open;
  WefCds.Open;

  MealPlanCds.Open;
  RoomTypeCds.Open;
  CurrenciesCds.Open;

  if ElemAccForm_Cities_id <> null then
    cxCityLCMB.EditValue := ElemAccForm_Cities_id;

  if ElemAccForm_Hotels_id <> null then
    cxHotelLCMB.EditValue := ElemAccForm_Hotels_id;

  if ElemAccForm_Wef <> null then
    cxWefLCMB.EditValue := ElemAccForm_Wef;

end;

procedure TElemAccForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ElementsForm.FilterData;
  Action := caFree;
end;

procedure TElemAccForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ElemAccForm := nil;
end;

procedure TElemAccForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ElemAccommodation';
  Custom_MasterKeyField := 'ElemAccommodation_id';
  Custom_AdmLevel := ElemAccForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TElemAccForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TElemAccForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
 if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Hotel');

 if (MasterCds['FromDate'] = null) then
    raise Exception.Create('Please enter the From Date');

 if (MasterCds['AC'] = null) then
    raise Exception.Create('Please enter AC');

 if (MasterCds['RoomTypes_id'] = null) then
    raise Exception.Create('Please enter the Room Type');

 if (MasterCds['MealPlans_id'] = null) then
    raise Exception.Create('Please enter the Meal Plan');

 if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

 if (MasterCds['CostSingle'] = 0.0) then
    MasterCds['CostSingle'] := null;

 if (MasterCds['CostDouble'] = 0.0) then
    MasterCds['CostDouble'] := null;

 if (MasterCds['CostTriple'] = 0.0) then
    MasterCds['CostTriple'] := null;

 if (MasterCds['CostSingle'] = null) and (MasterCds['CostDouble'] = null) and (MasterCds['CostTriple'] = null) then
   raise Exception.Create('Please enter the rates');

 if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if MasterCds['ElemAccommodation_id'] = null then
    raise Exception.Create('ElemAccommodation_id is not assigned');

end;

function TElemAccForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ElemAccommodation ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND FromDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['FromDate']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ElemAccommodation_id <> ' + IntToStr(MasterCds['ElemAccommodation_id']) + ') ';

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

procedure TElemAccForm.FilterData;
var
  x_Hotel_id: integer;
  x_wef: TDateTime;
begin

  x_Hotel_id := -1;

  if cxHotelLCMB.EditValue <> null then
    x_Hotel_id := cxHotelLCMB.EditValue;

  x_wef := ElemAccForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Hotel_id;
  MasterSds.Params[1].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TElemAccForm.FilterWef;
var
  x_Hotels_id: integer;
  x_wef: TDateTime;
begin
  x_Hotels_id := -1;

  if cxHotelLCMB.EditValue <> null then
    x_Hotels_id := cxHotelLCMB.EditValue;

  HotelCds.Locate('Addressbook_id', x_Hotels_id, []);

  x_wef := ElemAccForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  WefCds.Close;
  WefSds.Close;

  WefSds.Params[0].Value := x_Hotels_id;

  WefSds.Open;
  WefCds.Open;

  if WefCds.Locate ('FromDate', x_wef, []) then
    cxWefLCMB.EditValue := x_wef
  else if WefCds['FromDate'] <> null then
    cxWefLCMB.EditValue := WefCds['FromDate']
  else
    cxWefLCMB.Clear;

end;


procedure TElemAccForm.cxHotelLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

procedure TElemAccForm.cxCityLCMBPropertiesEditValueChanged(
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

procedure TElemAccForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxHotelLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxHotelLCMB.EditValue;

  if cxWefLCMB.EditValue <> null then
    MasterCds['FromDate'] := cxWefLCMB.EditValue;
  MasterCds['AC'] := true;
  MasterCds['SpecialPeriod'] := false;  

end;

procedure TElemAccForm.SpeedButton1Click(Sender: TObject);
var
  x_Wef: TDateTime;
begin
  inherited;

  x_Wef := ElemAccForm_NullDate;

  if MasterCds['FromDate'] <> null then
    x_Wef := MasterCds['FromDate'];

  WefCds.Close;
  WefCds.Open;

  if WefCds.Locate ('FromDate', x_Wef, []) then
    cxWefLCMB.EditValue := x_Wef
  else if WefCds['FromDate'] <> null then
    cxWefLCMB.EditValue := WefCds['FromDate']
  else
    cxWefLCMB.Clear;
end;

procedure TElemAccForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TElemAccForm.MasterCdsAfterPost(DataSet: TDataSet);
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  inherited;

  x_QueryString := 'EXEC p_ElemAccFillCost ' +
    IntToStr(MasterCds['ElemAccommodation_id']) + ', 1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

end.
