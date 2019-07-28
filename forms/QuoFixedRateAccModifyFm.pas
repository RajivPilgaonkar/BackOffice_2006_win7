unit QuoFixedRateAccModifyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  FMTBcd, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, cxTextEdit,
  cxLabel, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxGroupBox, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TQuoFixedRateAccModifyForm = class(TCustomMasterCxGridForm)
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxHotelLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    MasterCdsQuoFixedratesAccommodation_id: TIntegerField;
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
    CustomMasterCxGridDBTableView1QuoFixedratesAccommodation_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AddressBook_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromDate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToDate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AC: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1RoomTypes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1MealPlans_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1CostSingle: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1CostDouble: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1CostTriple: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    HoteDS: TDataSource;
    HotelCdsCities_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxHotelLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function IsRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  QuoFixedRateAccModifyForm: TQuoFixedRateAccModifyForm;
  _QuoFixedRateAccModifyForm_Level: integer;
  _QuoFixedRateAccModifyForm_Cities_id: integer;
  _QuoFixedRateAccModifyForm_Addressbook_id: integer;
  _QuoFixedRateAccModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateAccModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesAccommodation';
  MasterKeyField := 'QuoFixedRatesAccommodation_id';
  AdmLevel := _QuoFixedRateAccModifyForm_Level;

  BackOfficeDataModule.CitiesCds.Open;
  HotelSds.Open;
  HotelCds.Open;
  BackOfficeDataModule.RoomTypeCds.Open;
  BackOfficeDataModule.MealPlanCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;    

  cxCityLCMB.EditValue := _QuoFixedRateAccModifyForm_Cities_id;
  cxHotelLCMB.EditValue := _QuoFixedRateAccModifyForm_Addressbook_id;
  cxDateEdit.Date := _QuoFixedRateAccModifyForm_wef;

  FilterData;

  inherited;

end;

procedure TQuoFixedRateAccModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateAccModifyForm := nil;
end;

procedure TQuoFixedRateAccModifyForm.MasterCdsBeforePost(
  DataSet: TDataSet);
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

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

end;

function TQuoFixedRateAccModifyForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoFixedRatesAccommodation ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND FromDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['FromDate'])) + ' ' +
    'AND RoomTypes_id = ' + IntToStr(MasterCds['RoomTypes_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (QuoFixedRatesAccommodation_id <> ' + IntToStr(MasterCds['QuoFixedRatesAccommodation_id']) + ') ';

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


procedure TQuoFixedRateAccModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TQuoFixedRateAccModifyForm.FilterData;
begin

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := -1;
  if cxHotelLCMB.EditValue <> null then
    MasterSds.Params[0].Value := cxHotelLCMB.EditValue;

  MasterSds.Params[1].Value := Date();
  if cxDateEdit.Date <> null then
    MasterSds.Params[1].Value := cxDateEdit.Date;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoFixedRateAccModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesAccommodation';
  MasterKeyField := 'QuoFixedRatesAccommodation_id';
  AdmLevel := _QuoFixedRateAccModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateAccModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['Addressbook_id'] := cxHotelLCMB.EditValue;
  MasterCds['AC'] := true;
end;

procedure TQuoFixedRateAccModifyForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  HotelCds.Close;
  HotelSds.Close;

  if cxCityLCMB.EditValue <> null then
    HotelSds.Params[0].Value := cxCityLCMB.EditValue
  else
    HotelSds.Params[0].Value := -1;

  HotelSds.Open;
  HotelCds.Open;

  if HotelCds['Addressbook_id'] <> null then
    cxHotelLCMB.EditValue := HotelCds['Addressbook_id'];

end;

procedure TQuoFixedRateAccModifyForm.cxHotelLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
