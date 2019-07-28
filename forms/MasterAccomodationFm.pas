unit MasterAccomodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxMemo, cxDBEdit,
  StdCtrls, Buttons, DBCtrls, cxNavigator, cxDBNavigator, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxTextEdit, DBClient, Provider, SqlExpr, ExtCtrls,
  cxTimeEdit, cxCheckBox, cxLookAndFeelPainters, cxButtons, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox;

type
  TMasterAccommodationForm = class(TCustom1M1DForm)
    GroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    KeyIdDbText: TDBText;
    cxDBMemo1: TcxDBMemo;
    MasterCdsmasteraccommodation_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsdayin: TIntegerField;
    MasterCdsdayout: TIntegerField;
    MasterCdstours: TStringField;
    MasterCdsremarks: TStringField;
    MasterCdsac: TBooleanField;
    MasterCdsroomtypes_id: TIntegerField;
    MasterCdsmealplans_id: TIntegerField;
    MasterCdsagent_addressbook_id: TIntegerField;
    MasterCdsmasters_id: TIntegerField;
    Detail1Cdsmasteraccommodationtours_id: TIntegerField;
    Detail1Cdsmasteraccommodation_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    RoomTypeLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    MealPlanLcmb: TcxDBLookupComboBox;
    ACchkbox: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    AgentCityLcmb: TcxLookupComboBox;
    CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsMasters_id: TIntegerField;
    TourCodeDs: TDataSource;
    cxDBNavigator1: TcxDBNavigator;
    cxButton1: TcxButton;
    UpdateBtn: TcxButton;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeDs: TDataSource;
    MealPlanSds: TSQLDataSet;
    MealPlanDsp: TDataSetProvider;
    MealPlanCds: TClientDataSet;
    MealPlanDs: TDataSource;
    RoomTypeCdsRoomTypes_id: TIntegerField;
    RoomTypeCdsRoomType: TStringField;
    RoomTypeCdsAC: TBooleanField;
    MealPlanCdsMealPlans_id: TIntegerField;
    MealPlanCdsMealPlan: TStringField;
    MealPlanCdsPlan: TStringField;
    MealPlanCdsAddressbook_id: TIntegerField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDS: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    CityLCMB: TcxLookupComboBox;
    HotelLcmb: TcxDBLookupComboBox;
    RoomTypeCdsAddressbook_id: TIntegerField;

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
    procedure UpdateBtnClick(Sender: TObject);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure AgentCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure RoomTypeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsaddressbook_idChange(Sender: TField);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterAccommodationForm: TMasterAccommodationForm;
  _MasterAccommodationForm_Mode : string;
  _MasterAccommodationForm_Level: Integer;

implementation

uses BackOfficeDM, MasterFm, GeneralUt;

{$R *.dfm}


function TMasterAccommodationForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterAccommodation ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND Dayin = ' + IntToStr(MasterCds['Dayin']) + ' ' +
    'AND Dayout = ' + IntToStr(MasterCds['Dayout']) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Roomtypes_id = ' + IntToStr(MasterCds['Roomtypes_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterAccommodation_id <> ' + IntToStr(MasterCds['MasterAccommodation_id']) + ') ';

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

function TMasterAccommodationForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterAccommodationTours ' +
    'WHERE MasterAccommodation_id = ' + IntToStr(Detail1Cds['MasterAccommodation_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterAccommodationTours_id <> ' + IntToStr(Detail1Cds['MasterAccommodationTours_id']) + ') ';

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

procedure TMasterAccommodationForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;
  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['MasterAccommodation_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;

end;

procedure TMasterAccommodationForm.FormCreate(Sender: TObject);
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

  MasterCdsName := 'MasterAccommodation';
  MasterKeyField := 'MasterAccommodation_id';
  Detail1CdsName := 'MasterAccommodationTours';
  Detail1KeyField := 'MasterAccommodationTours_id';

  AdmLevel := _MasterForm_Level;

  MasterSds.DataSource := MasterForm.MasterDs;  
  MasterCds.MasterSource := MasterForm.MasterDs;

  inherited;

  if _MasterAccommodationForm_Mode = 'I' then
    MasterCds.Insert
  else if (_MasterAccommodationForm_Mode = 'E') and (MasterForm.AccommodationCds['MasterAccommodation_id'] <> null) then
    begin
      MasterCds.Locate('MasterAccommodation_id', MasterForm.AccommodationCds['MasterAccommodation_id'],[]);
      // Somtimes does not display first record hotel ?? -- but starts displaying after a scroll
      CityLcmbPropertiesEditValueChanged(nil);
      //MasterCds.Next; MasterCds.Prior;
    end;

end;

procedure TMasterAccommodationForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterAccommodationForm := nil;
end;

procedure TMasterAccommodationForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMasterAccommodationForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TMasterAccommodationForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdsaddressbook_id,'HOTEL');
  validateblanks(MasterCdsdayin,'DAY IN');
  validateblanks(MasterCdsdayout,'DAY OUT');
  validateblanks(MasterCdsroomtypes_id,'ROOM TYPE');
  validateblanks(MasterCdsmealplans_id,'MEAL PLAN');
  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterAccommodationForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['MasterAccommodation_id'] = null) then
    raise Exception.Create('Please enter the Accommodation Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterAccommodationForm.MasterCdsBeforeDelete(
  DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterAccommodationTours ' +
    'WHERE MasterAccommodation_id = ' + IntToStr(MasterCds['MasterAccommodation_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TMasterAccommodationForm.UpdateBtnClick(Sender: TObject);
begin
  inherited;
  TourString;
end;

procedure TMasterAccommodationForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
  except
  end;

end;

procedure TMasterAccommodationForm.AgentCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if AgentCityLcmb.EditValue <> null then
      BackOfficeDataModule.AgentCityCds.Locate('Cities_id',AgentCityLcmb.EditValue,[]);
  except
  end;
end;

procedure TMasterAccommodationForm.MasterCdsAfterScroll(DataSet: TDataSet);
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

procedure TMasterAccommodationForm.RoomTypeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (RoomTypeCds['AC'] <> null) and (masterCds.State in [dsEdit, dsInsert]) then
    MasterCds['AC'] := RoomTypeCds['AC'];
end;

procedure TMasterAccommodationForm.MasterCdsBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  CityLCMB.EditValue := 0;
end;

procedure TMasterAccommodationForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CityLcmb.EditValue := 0;
  AgentCityLcmb.EditValue := 0;  

end;

procedure TMasterAccommodationForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if HotelLcmb.EditValue <> null then
      HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
  except
  end;

end;

procedure TMasterAccommodationForm.MasterCdsaddressbook_idChange(
  Sender: TField);
begin
  inherited;
  RoomTypeCds.Refresh;
end;

procedure TMasterAccommodationForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TMasterAccommodationForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds.First;
  if Detail1Cds.Eof then
    begin
      ShowMessage ('Please enter the Tours');
      Detail1Cds.Insert;
      CustomMasterCxGrid.SetFocus;
    end;

  
end;

end.
