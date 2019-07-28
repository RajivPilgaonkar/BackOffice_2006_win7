unit QuoAccommodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls,
  cxCheckBox, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons, FMTBcd,
  DB, SqlExpr, cxGraphics, DBClient, Provider, cxSpinEdit, cxTimeEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore, dxSkinsDefaultPainters,
  cxMemo;

type
  TQuoAccommodationForm = class(TForm)
    Panel1: TPanel;
    cxTicketsGB: TcxGroupBox;
    cxCancelButton: TcxButton;
    cxOKButton: TcxButton;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsQuotations_id: TIntegerField;
    AccCdsDayIn: TIntegerField;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsAC: TBooleanField;
    AccCdsRoomTypes_id: TIntegerField;
    AccCdsCities_id: TIntegerField;
    AccCdsMealPlans_id: TIntegerField;
    AccCdsCost: TFMTBCDField;
    AccCdsMasters_id: TStringField;
    AccCdsstatus: TIntegerField;
    AccCdsNights: TIntegerField;
    AccCdsHotelCities_id: TIntegerField;
    AccCdsAgentCities_id: TIntegerField;
    AccCdsLineNum: TIntegerField;
    Label32: TLabel;
    HotelLcmb: TcxDBLookupComboBox;
    Label29: TLabel;
    RoomTypeLcmb: TcxDBLookupComboBox;
    Label30: TLabel;
    ACchkbox: TcxDBCheckBox;
    Label31: TLabel;
    MealPlanLcmb: TcxDBLookupComboBox;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeCdsRoomTypes_id: TIntegerField;
    RoomTypeCdsRoomType: TStringField;
    RoomTypeCdsAddressbook_id: TIntegerField;
    RoomTypeCdsAC: TBooleanField;
    RoomTypeDs: TDataSource;
    AccCdsQuoCities_id: TIntegerField;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    CitiesCdsCities_id: TIntegerField;
    AccCdsSelected: TBooleanField;
    Label1: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    AccCdsReserveHotelOvernight: TBooleanField;
    Label2: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    AccCdsRemarksOther: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure AccCdsAfterInsert(DataSet: TDataSet);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure AccCdsAfterDelete(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure cxCancelButtonClick(Sender: TObject);
    procedure cxOKButtonClick(Sender: TObject);
    procedure HandleAccommodation;
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure SetDefaultRoomType;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoAccommodationForm: TQuoAccommodationForm;
  _QuoAccommodationForm_QuoCities_id: integer;
  _QuoAccommodationForm_Quotations_id: integer;
  _QuoAccommodationForm_ToCities_id: integer;
  _QuoAccommodationForm_QuoAccommodation_id: integer;
  _QuoAccommodationForm_DateIn: TDateTime;
  _QuoAccommodationForm_DateOut: TDateTime;
  _QuoAccommodationForm_Nights: integer;  

implementation

uses BackOfficeDM, GeneralUt, QuoCitywiseFm;

{$R *.dfm}

procedure TQuoAccommodationForm.FormCreate(Sender: TObject);
begin
  CitiesSds.Close;
  CitiesSds.CommandText := 'SELECT Cities_id FROM Cities WHERE Cities_id = ' + IntToStr(_QuoAccommodationForm_ToCities_id);
  CitiesSds.Open;
  CitiesCds.Close;
  CitiesCds.Open;

  AccCds.Active := False;
  AccCds.Filter := 'QuoCities_id = ' + IntToStr(_QuoAccommodationForm_QuoCities_id);
  AccCds.Filtered := True;
  AccCds.Active := True;

  HandleAccommodation;

  //ClassCds.Open;
  HotelCds.Open;
  RoomTypeCds.Open;
  BackOfficeDataModule.MealPlanCds.Open;

  if AccCds['HotelAddressbook_id'] <> null then
    HotelCds.Locate('Addressbook_id',AccCds['HotelAddressbook_id'],[]);

  if AccCds['RoomTypes_id'] <> null then
    RoomTypeCds.Locate('RoomTypes_id',AccCds['RoomTypes_id'],[]);

  Height := 170;
  Width := 580;

end;

procedure TQuoAccommodationForm.HandleAccommodation;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Count: integer;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoAccommodation ' +
    'WHERE QuoCities_id = ' + IntToStr(_QuoAccommodationForm_QuoCities_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  if x_count = 0 then
    AccCds.Insert
  else
    AccCds.Locate ('QuoCities_id', _QuoAccommodationForm_QuoCities_id, []);

  GpSds.Free;

end;



procedure TQuoAccommodationForm.AccCdsAfterInsert(DataSet: TDataSet);
begin
  AccCds['Quotations_id'] := _QuoAccommodationForm_Quotations_id;
  AccCds['QuoCities_id'] := _QuoAccommodationForm_QuoCities_id;
  AccCds['Cities_id'] := _QuoAccommodationForm_ToCities_id;
  AccCds['DateIn'] := _QuoAccommodationForm_DateIn;
  AccCds['DateOut'] := _QuoAccommodationForm_DateOut;
  AccCds['AC'] := True;
  if QuoCitywiseForm.MasterCds['MealPlans_id'] <> null then
    AccCds['MealPlans_id'] := QuoCitywiseForm.MasterCds['MealPlans_id'];
end;

procedure TQuoAccommodationForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuoAccommodationForm.AccCdsAfterDelete(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuoAccommodationForm.AccCdsBeforePost(DataSet: TDataSet);
begin

  if AccCds.State = dsInsert then
    begin
      AccCds['QuoAccommodation_id'] := GetNextId('QuoAccommodation','QuoAccommodation_id');
    end;

  AccCds['DateIn'] := QuoCitywiseForm.Detail1Cds['DateIn'];
  AccCds['DateOut'] := QuoCitywiseForm.Detail1Cds['DateOut'];
  AccCds['Nights'] := QuoCitywiseForm.Detail1Cds['Nights'];


  if AccCds['HotelAddressbook_id'] = Null then
    Raise Exception.Create('Enter the Hotel');

  if AccCds['RoomTypes_id'] = Null then
    Raise Exception.Create('Enter the Room Type');

  if AccCds['AC'] = Null then
    Raise Exception.Create('Enter enter is A/C room');

  if AccCds['MealPlans_id'] = Null then
    Raise Exception.Create('Enter enter the MealPlan');

  if AccCds['Quotations_id'] = Null then
    Raise Exception.Create('Enter the Quotations_id');

  if AccCds['QuoAccommodation_id'] = Null then
    Raise Exception.Create('Enter the QuoAccommodation_id');

end;

procedure TQuoAccommodationForm.cxCancelButtonClick(Sender: TObject);
begin
  if AccCds.State in [dsEdit, dsInsert] then
    AccCds.Cancel;
  Close;
end;

procedure TQuoAccommodationForm.cxOKButtonClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if AccCds.State in [dsEdit, dsInsert] then
    AccCds.Post;

  QueryString := 'UPDATE QuoCities SET QuoAccommodation_id = ' + IntToStr(AccCds['QuoAccommodation_id']) + ' ' +
    'WHERE QuoCities_id = ' + IntToStr(_QuoAccommodationForm_QuoCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  Close;

end;

procedure TQuoAccommodationForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if (HotelLcmb.EditValue <> null) and (HotelCds.State <> dsInactive) then
      begin
        HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
        SetDefaultRoomType;
      end;
  except
  end;

end;

procedure TQuoAccommodationForm.SetDefaultRoomType;
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT Default_RoomTypes_id FROM Seasons ' +
    'WHERE ''' + FormatDateTime('mm/dd/yyyy',AccCds['DateIn']) + ''' ' +
    'BETWEEN FromDate AND ToDate ' +
    'AND ' + IntToStr(QuoCitywiseForm.MasterCds['NumPax']) + ' BETWEEN FromPax AND To_Pax ' +
    'AND Addressbook_id = ' + IntToStr(HotelLcmb.EditValue);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if (not GpSds.EOF) and (GpSds['Default_RoomTypes_id'] <> null) and
    ((AccCds.State = dsEdit) or (AccCds.State = dsInsert)) then
    AccCds['RoomTypes_id'] := GpSds['Default_RoomTypes_id'];

  GpSds.Free;

end;


end.
