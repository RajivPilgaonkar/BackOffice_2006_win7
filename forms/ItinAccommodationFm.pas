unit ItinAccommodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxDBLookupComboBox, cxSpinEdit, cxTimeEdit, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxMemo, cxButtons, cxContainer,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, DBClient, Provider,
  SqlExpr, ExtCtrls, cxCheckBox, DBCtrls, cxNavigator, cxDBNavigator,
  cxLabel, Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGroupBox;

type
  TItinAccommodationForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label13: TcxLabel;
    HotelLcmb: TcxDBLookupComboBox;
    RoomTypeLcmb: TcxDBLookupComboBox;
    MealPlanLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    CityLcmb: TcxLookupComboBox;
    GroupBox1: TcxGroupBox;
    Label16: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tourcodes_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxDBDateEdit1: TcxDBDateEdit;
    MasterCdsitineraryaccommodation_id: TIntegerField;
    MasterCdsitineraries_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsdatein: TSQLTimeStampField;
    MasterCdsdateout: TSQLTimeStampField;
    MasterCdstours: TStringField;
    MasterCdsremarks: TStringField;
    MasterCdsestimatednoofsingles: TIntegerField;
    MasterCdsestimatednoofdoubles: TIntegerField;
    MasterCdsnoofsingles: TIntegerField;
    MasterCdsnoofdoubles: TIntegerField;
    MasterCdsac: TBooleanField;
    MasterCdsextrabeds: TIntegerField;
    MasterCdsnooftriples: TIntegerField;
    MasterCdsroomtypes_id: TIntegerField;
    MasterCdsmealplans_id: TIntegerField;
    MasterCdsgeneratevoucher: TBooleanField;
    MasterCdsestimatednoofpax: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdsagent_addressbook_id: TIntegerField;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsreminder: TSQLTimeStampField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdscancelled: TSQLTimeStampField;
    MasterCdsexpectedcost: TBCDField;
    MasterCdsmasteraccommodation_id: TIntegerField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdsquoted: TBCDField;
    MasterCdseta: TSQLTimeStampField;
    Detail1Cdsitineraryaccommodationtours_id: TIntegerField;
    Detail1Cdsitineraryaccommodation_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    GroupBox2: TcxGroupBox;
    Label14: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label15: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    Label18: TcxLabel;
    Label17: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label3: TcxLabel;
    Label8: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    cxDBNavigator1: TcxDBNavigator;
    KeyIdDbText: TDBText;
    cxButton1: TcxButton;
    AgentSds: TSQLDataSet;
    AgentCds: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField6: TIntegerField;
    StringField9: TStringField;
    AgentDs: TDataSource;
    AgentDsp: TDataSetProvider;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeDs: TDataSource;
    GroupBox3: TcxGroupBox;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeDs: TDataSource;
    MealPlanSds: TSQLDataSet;
    MealPlanDsp: TDataSetProvider;
    MealPlanCds: TClientDataSet;
    MealPlanDs: TDataSource;
    MealPlanCdsAddressbook_id: TIntegerField;
    MealPlanCdsMealPlans_id: TIntegerField;
    MealPlanCdsPlan: TStringField;
    MealPlanCdsMealPlan: TStringField;
    RoomTypeCdsRoomTypes_id: TIntegerField;
    RoomTypeCdsRoomType: TStringField;
    RoomTypeCdsAddressbook_id: TIntegerField;
    RoomTypeCdsAC: TBooleanField;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsItineraries_id: TIntegerField;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    Label11: TcxLabel;
    AgentCityLcmb: TcxLookupComboBox;
    cxButton3: TcxButton;
    MasterCdsVoucherNoLookup: TIntegerField;
    VoucherNoSds: TSQLDataSet;
    VoucherNoDsp: TDataSetProvider;
    VoucherNoCds: TClientDataSet;
    VoucherNoCdsvouchers_id: TIntegerField;
    VoucherNoCdsyearref: TIntegerField;
    VoucherNoCdsvoucherno: TIntegerField;
    VoucherNoDs: TDataSource;
    Label12: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    MasterCdsnooftwins: TIntegerField;
    Label25: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    MasterCdsestimatednooftriples: TIntegerField;
    MasterCdsestimatednooftwins: TIntegerField;
    cxLabel1: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure TourString;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure RoomTypeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure AgentCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinAccommodationForm: TItinAccommodationForm;
  _ItinAccommodationForm_Level: Integer;
  _ItinAccommodationForm_Mode: String;

implementation

uses BackOfficeDM, ItineraryFm, GeneralUt, BookingDetailsFm;

{$R *.dfm}

function TItinAccommodationForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryAccommodation ' +
    ' WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) +
    ' AND DateIn = ' + DateToStr(MasterCds['Datein']) +
    ' AND DateOut = ' + DateToStr(MasterCds['Dateout']) +
    ' AND Roomtypes_id = ' + IntToStr(MasterCds['RoomTypes_id']) + ' ' +
    ' AND itineraries_id = ' + IntToStr(MasterCds['itineraries_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryAccommodation_id <> ' + IntToStr(MasterCds['ItineraryAccommodation_id']) + ') ';

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

function TItinAccommodationForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryAccommodationTours ' +
    'WHERE ItineraryAccommodation_id = ' + IntToStr(Detail1Cds['ItineraryAccommodation_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryAccommodationTours_id <> ' + IntToStr(Detail1Cds['ItineraryAccommodationTours_id']) + ') ';

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

procedure TItinAccommodationForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;

  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['ItineraryAccommodation_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;
end;

procedure TItinAccommodationForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  HotelCds.Active := False;
  HotelCds.Active := True;

  BackOfficeDataModule.AgentCityCds.Active := False;
  BackOfficeDataModule.AgentCityCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  RoomTypeCds.Active := False;
  RoomTypeCds.Active := True;

  MealPlanCds.Active := False;
  MealPlanCds.Active := True;

  BackOfficeDataModule.TourCodeCds.Active := False;
  BackOfficeDataModule.TourCodeCds.Active := True;

  VoucherNoCds.Active := False;
  VoucherNoCds.Active := True;

  MasterCdsName := 'ItineraryAccommodation';
  MasterKeyField := 'ItineraryAccommodation_id';
  Detail1CdsName := 'ItineraryAccommodationTours';
  Detail1KeyField := 'ItineraryAccommodationTours_id';

//  AdmLevel := _ItinAccommodationForm_Level;
  AdmLevel := _ItineraryForm_Level;

  MasterSds.DataSource := ItineraryForm.ItinerariesDs;
  MasterCds.MasterSource := ItineraryForm.ItinerariesDs;

  inherited;

  if _ItinAccommodationForm_Mode = 'I' then
    MasterCds.Insert
  else if (_ItinAccommodationForm_Mode = 'E') and (ItineraryForm.ItinAccommodationCds['ItineraryAccommodation_id'] <> null) then
    MasterCds.Locate('ItineraryAccommodation_id', ItineraryForm.ItinAccommodationCds['ItineraryAccommodation_id'],[]);

end;

procedure TItinAccommodationForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ItinAccommodationForm := nil;
end;

procedure TItinAccommodationForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TItinAccommodationForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TItinAccommodationForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdsaddressbook_id,'HOTEL');
  validateblanks(MasterCdsdatein,'DAY IN');
  validateblanks(MasterCdsdateout,'DAY OUT');
  validateblanks(MasterCdsroomtypes_id,'ROOM TYPE');
  validateblanks(MasterCdsmealplans_id,'MEAL PLAN');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

procedure TItinAccommodationForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM ItineraryAccommodationTours ' +
    'WHERE ItineraryAccommodation_id = ' + IntToStr(MasterCds['ItineraryAccommodation_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TItinAccommodationForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
  except
  end;

end;

procedure TItinAccommodationForm.AgentCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if AgentCityLcmb.EditValue <> null then
      BackOfficeDataModule.AgentCityCds.Locate('Cities_id',AgentCityLcmb.EditValue,[]);
  except
  end;
end;

procedure TItinAccommodationForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;


  CityLCMB.EditValue := 0;
  AgentCityLCMB.EditValue := 0;

  if MasterCds['Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT cities_id FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['cities_id']<>null) then
        begin
          CityLCMB.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;
    end;

    if MasterCds['Agent_Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT cities_id FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Agent_Addressbook_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['cities_id']<>null) then
        begin
          AgentCityLCMB.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;
    end;


  try
    if (HotelLcmb.EditValue <> null) and (HotelCds.State = dsBrowse) then
      HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
  except
  end;


end;

procedure TItinAccommodationForm.RoomTypeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (RoomTypeCds['AC'] <> null) and (masterCds.State in [dsEdit, dsInsert]) then
    MasterCds['AC'] := RoomTypeCds['AC'];
end;


procedure TItinAccommodationForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['ItineraryAccommodation_id'] = null) then
    raise Exception.Create('Please enter the Accommodation Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;


procedure TItinAccommodationForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['GenerateVoucher'] := True;

  CityLcmb.EditValue := 0;
  AgentCityLcmb.EditValue := 0;  
end;

procedure TItinAccommodationForm.cxButton3Click(Sender: TObject);
begin
  inherited;

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := MasterCds['Itineraries_id'];
  _BookingDetailsForm_ItinerariesLines_id := MasterCds['ItineraryAccommodation_id'];;
  _BookingDetailsForm_ItinerariesOptions_id := 2;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;


end;

procedure TItinAccommodationForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if HotelLcmb.EditValue <> null then
      HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
  except
  end;

end;

procedure TItinAccommodationForm.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

end.
