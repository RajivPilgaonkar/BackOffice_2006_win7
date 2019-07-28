unit ItinServicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxDBLookupComboBox, cxCheckBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxMemo, cxContainer, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxTimeEdit, Buttons,
  cxGroupBox, cxRadioGroup, cxLookAndFeelPainters, cxButtons, DBCtrls,
  cxNavigator, cxDBNavigator, cxLabel, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TItinServicesForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label6: TcxLabel;
    Label10: TcxLabel;
    Label13: TcxLabel;
    HotelLcmb: TcxDBLookupComboBox;
    ServiceLcmb: TcxDBLookupComboBox;
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
    GroupBox2: TcxGroupBox;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label3: TcxLabel;
    Label8: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel4: TPanel;
    SightSeeingGB: TcxGroupBox;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBCheckBox5: TcxDBCheckBox;
    SightseeingRBG: TcxDBRadioGroup;
    cxDBNavigator1: TcxDBNavigator;
    KeyIdDbText: TDBText;
    cxButton1: TcxButton;
    MasterCdsitineraryservices_id: TIntegerField;
    MasterCdsitineraries_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstransferdate: TSQLTimeStampField;
    MasterCdsservices_id: TIntegerField;
    MasterCdstime: TSQLTimeStampField;
    MasterCdstours: TStringField;
    MasterCdsremarks: TStringField;
    MasterCdsestimatednoofpax: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdstransport: TBooleanField;
    MasterCdsac: TBooleanField;
    MasterCdsvehicles_id: TIntegerField;
    MasterCdsnoofvehicles: TIntegerField;
    MasterCdsguide: TBooleanField;
    MasterCdshotel_addressbook_id: TIntegerField;
    MasterCdsflightno: TStringField;
    MasterCdsplace: TStringField;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsreminder: TSQLTimeStampField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdscancelled: TSQLTimeStampField;
    MasterCdsexpectedamount: TFMTBCDField;
    MasterCdsmasterservices_id: TIntegerField;
    MasterCdssightseeing: TBooleanField;
    MasterCdstransfertypes_id: TIntegerField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdstickets_id: TIntegerField;
    MasterCdsentrancefees: TBooleanField;
    MasterCdsnoofpax_resident: TIntegerField;
    MasterCdsquoted: TBCDField;
    Detail1Cdsitineraryservicestours_id: TIntegerField;
    Detail1Cdsitineraryservices_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeDs: TDataSource;
    VehicleLcmb: TcxDBLookupComboBox;
    ServicesSds: TSQLDataSet;
    ServicesDsp: TDataSetProvider;
    ServicesCds: TClientDataSet;
    ServicesDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDS: TDataSource;
    ServicesCdsservices_id: TIntegerField;
    ServicesCdsdescription: TStringField;
    ServicesCdsaddressbook_id: TIntegerField;
    ServicesCdscities_id: TIntegerField;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    GroupBox5: TcxGroupBox;
    Label17: TcxLabel;
    Label20: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    MasterCdsVoucherNoLookUp: TStringField;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TransferGB: TcxGroupBox;
    Label5: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxButton2: TcxButton;
    TourCodeCdsItineraries_id: TIntegerField;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    Label26: TcxLabel;
    HotelCityLCmb: TcxLookupComboBox;
    MasterCdsgeneratevoucher: TBooleanField;
    cxButton3: TcxButton;
    Label27: TcxLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleCdsPax: TIntegerField;
    VoucherNoSds: TSQLDataSet;
    VoucherNoDsp: TDataSetProvider;
    VoucherNoCds: TClientDataSet;
    VoucherNoCdsvouchers_id: TIntegerField;
    VoucherNoCdsyearref: TIntegerField;
    VoucherNoCdsvoucherno: TIntegerField;
    VoucherNoDs: TDataSource;
    cxDBCheckBox6: TcxDBCheckBox;
    Label28: TcxLabel;
    cxDBCheckBox7: TcxDBCheckBox;
    Label29: TcxLabel;
    cxDisplayActiveCkb: TcxCheckBox;
    ServicesCdsactive: TBooleanField;
    AgentCdsServices_id: TIntegerField;
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure TourString;
    procedure AlterLayout;                
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdssightseeingChange(Sender: TField);
    procedure SightseeingRBGClick(Sender: TObject);
    procedure cxDBTextEdit3Exit(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure ServiceLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure HotelCityLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure AgentLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure RefreshVehicles;
    procedure MasterCdsservices_idChange(Sender: TField);
    procedure MasterCdsaddressbook_idChange(Sender: TField);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxDisplayActiveCkbClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinServicesForm: TItinServicesForm;
  _ItinServicesForm_Level : Integer;
  _ItinServicesForm_Mode: String;

implementation

uses BackOfficeDM, ItineraryFm, GeneralUt, BookingDetailsFm, SearchSortFm;

{$R *.dfm}

function TItinServicesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin
  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryServices ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Services_id = ' + IntToStr(MasterCds['Services_id']) + ' ' +
    'AND Hotel_Addressbook_id = ' + IntToStr(MasterCds['Hotel_Addressbook_id']) + ' ' +
    'AND TransferDate = ' + DateToStr(MasterCds['TransferDate']) + ' ' +
    ' AND itineraries_id = ' + IntToStr(MasterCds['itineraries_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryServices_id <> ' + IntToStr(MasterCds['ItineraryServices_id']) + ') ';

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

function TItinServicesForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryServicesTours ' +
    'WHERE ItineraryServices_id = ' + IntToStr(Detail1Cds['ItineraryServices_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryServicesTours_id <> ' + IntToStr(Detail1Cds['ItineraryServicesTours_id']) + ') ';

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

procedure TItinServicesForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;

  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['ItineraryServices_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;
end;

procedure TItinServicesForm.AlterLayout;
var
  SS_Str, City_Str: string;
begin

  if SightseeingRBG.ItemIndex = 0 then
    SS_Str := ' AND (Transfer = 1) '
  else
    SS_Str := ' AND (Transfer = 0) ';

  if CityLcmb.EditValue = null then
    City_Str := ''
  else
    City_Str := ' AND (Cities_id = :Cities_id) ';

  ServicesSds.Close;
  ServicesSds.CommandText := 'SELECT Services_id, Description, Addressbook_id, ' +
    'Cities_id, Active FROM Services ' +
    'WHERE (1=1) ' +
    City_Str +
    SS_Str +
    'ORDER BY Description';
  if City_Str = '' then
    begin
      ServicesCds.MasterSource := nil;
      ServicesCds.MasterFields := '';
    end
  else
    begin
      ServicesCds.MasterSource := BackOfficeDataModule.ServiceCitiesDS;
      ServicesCds.MasterFields := 'cities_id';
      ServicesCds.IndexFieldNames := 'Cities_id';
    end;

//  ShowMessage(IntToStr(CityLcmb.EditValue));  
  ServicesSds.Close;
  ServicesSds.Open;

  ServicesCds.Close;
  ServicesCds.Open;

  if SightseeingRBG.ItemIndex = 0 then
    begin
      TransferGB.Visible := True;
      SightSeeingGB.Visible := False;
    end
  else if SightseeingRBG.ItemIndex = 1 then
    begin
      TransferGB.Visible := False;
      SightSeeingGB.Visible := True;
    end;

end;

procedure TItinServicesForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.ServiceCitiesCds.Active := False;
  BackOfficeDataModule.ServiceCitiesCds.Active := True;

  BackOfficeDataModule.TransferTypesCDS.Active := False;
  BackOfficeDataModule.TransferTypesCDS.Active := True;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  ServicesCds.Filter := 'Active = True';
  ServicesCds.Filtered := True;

  ServicesCds.Active := False;
  ServicesCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  HotelCds.Active := False;
  HotelCds.Active := True;

  TourCodeCds.Active := False;
  TourCodeCds.Active := True;

  VehicleCds.Active := False;
  VehicleCds.Active := True;

  VoucherNoSds.Active := True;
  VoucherNoCds.Active := True;

  MasterCdsName := 'ItineraryServices';
  MasterKeyField := 'ItineraryServices_id';
  Detail1CdsName := 'ItineraryServicesTours';
  Detail1KeyField := 'ItineraryServicesTours_id';

  //MasterCds.DataSource := ItineraryForm.ItinerariesDs;

//  AdmLevel := _ItinServicesForm_Level;
  AdmLevel := _ItineraryForm_Level;

  MasterSds.DataSource := ItineraryForm.ItinerariesDs;
  MasterCds.MasterSource := ItineraryForm.Itinerariesds;

  inherited;

  if _ItinServicesForm_Mode = 'I' then
    MasterCds.Insert
  else if (_ItinServicesForm_Mode = 'E') and (ItineraryForm.ItinServiceCds['ItineraryServices_id'] <> null) then
    MasterCds.Locate('ItineraryServices_id', ItineraryForm.ItinServiceCds['ItineraryServices_id'],[]);

   // when the form is created, in the on scroll event, these events do not get fired
  CityLcmbPropertiesEditValueChanged(nil);

end;

procedure TItinServicesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ItinServicesForm := nil;
end;

procedure TItinServicesForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TItinServicesForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TItinServicesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdstransferdate, 'DATE');
  validateblanks(MasterCdsaddressbook_id,'AGENT');
  validateblanks(MasterCdshotel_addressbook_id,'HOTEL');
  validateblanks(MasterCdsservices_id,'SERVICE');

  if MasterCdssightseeing.Value = True then
    begin
      if MasterCdstime.IsNull then
        Raise Exception.Create('Please enter the starting time.');
      if MasterCdstransport.IsNull then
        Raise Exception.Create('Please enter the Transport.');
      if MasterCdsentrancefees.IsNull then
        Raise Exception.Create('Please enter the Entrance Fees.');
      if MasterCdsguide.IsNull then
        Raise Exception.Create('Please enter the Guide');
      if MasterCdsac.IsNull then
        Raise Exception.Create('Please enter the A/C Transport');
    end
  else
    begin
      if MasterCdstransfertypes_id.IsNull then
        Raise Exception.Create('Please enter the Transfer Type');
      if MasterCdsflightno.IsNull then
        Raise Exception.Create('Please enter the Airline/Train');
      if MasterCdsplace.IsNull then
        Raise Exception.Create('Please enter the Place');
      if MasterCdstransport.IsNull then
        Raise Exception.Create('Please enter the Transport.');
      if MasterCdsac.IsNull then
        Raise Exception.Create('Please enter the A/C Transport');
    end;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TItinServicesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['ItineraryServices_id'] = null) then
    raise Exception.Create('Please enter the Service Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TItinServicesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM ItineraryServicesTours ' +
    'WHERE ItineraryServices_id = ' + IntToStr(MasterCds['ItineraryServices_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TItinServicesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['GenerateVoucher']:= True;
  MasterCds['SightSeeing'] := True;
  MasterCds['entrancefees'] := True;
  MasterCds['Transport'] := True;
  MasterCds['Guide'] := True;
  MasterCds['AC'] := True;

  CityLcmb.EditValue := 0;
  HotelCityLcmb.EditValue := 0;
end;

procedure TItinServicesForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.ServiceCitiesCds.Locate('Cities_id',CityLcmb.EditValue,[])
    else
      AlterLayout;
  except
  end;
end;

procedure TItinServicesForm.MasterCdssightseeingChange(Sender: TField);
begin
  inherited;
  AlterLayout;
end;

procedure TItinServicesForm.SightseeingRBGClick(Sender: TObject);
begin
  inherited;
  AlterLayout;

  if MasterCds.State = dsInsert then
    begin
      if SightseeingRBG.ItemIndex = 0 then
        begin
          MasterCds['Transport'] := False;
          MasterCds['Guide'] := False;
          MasterCds['EntranceFees'] := False;
          MasterCds['AC'] := False;
        end
      else if SightseeingRBG.ItemIndex = 1 then
        begin
          MasterCds['Transport'] := True;
          MasterCds['Guide'] := False;
          MasterCds['EntranceFees'] := True;
          MasterCds['AC'] := False;
        end;
    end;
end;

procedure TItinServicesForm.cxDBTextEdit3Exit(Sender: TObject);
begin
  inherited;
  if (MasterCDS['NoOfVehicles']=0) or (MasterCDS['NoOfVehicles']=null)then
    MasterCDSvehicles_id.Clear;
end;

procedure TItinServicesForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  CityLcmb.EditValue := 0;
  HotelCityLCmb.EditValue := 0;

  if MasterCds['services_id'] <> null then
    begin

      QueryString := 'SELECT cities_id FROM Services ' +
        'WHERE services_id = ' + IntToStr(MasterCds['services_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['cities_id']<>null) then
        begin
          CityLcmb.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;

    end;

  if MasterCds['Hotel_Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT cities_id FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Hotel_Addressbook_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['cities_id']<>null) then
        begin
          HotelCityLCmb.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;

    end;

{
  if AgentLcmb.EditValue <> null then
    AgentCds.Locate('Addressbook_id',AgentLcmb.EditValue,[]);

  AgentCds.Active := False;
  AgentCds.Active := True;
}  

  RefreshVehicles;

  AlterLayout;

end;

procedure TItinServicesForm.ServiceLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if ServiceLcmb.EditValue <> null then
      ServicesCds.Locate('Services_id',ServiceLcmb.EditValue,[]);

  except
  end;
end;

procedure TItinServicesForm.RefreshVehicles;
var
  QueryString: string;
begin
  try

    if (MasterCds['Services_id'] = null) or (MasterCds['Addressbook_id'] = null) then
       exit;

    QueryString := 'SELECT * FROM dbo.fn_GetAgentVehicles (' +
      IntToStr(MasterCds['Services_id']) + ',' +
      IntToStr(MasterCds['Addressbook_id']) + ', 1)';

    VehicleSds.Close;
    VehicleSds.CommandText := QueryString;

    VehicleCds.Active := False;
    VehicleCds.Active := True;

    VehicleCds.Locate('Vehicles_id', VehicleLcmb.EditValue,[]);

  except
  end;
end;


procedure TItinServicesForm.HotelCityLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if HotelCityLCmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',HotelCityLCmb.EditValue,[]);
  except
  end;
end;

procedure TItinServicesForm.cxButton3Click(Sender: TObject);
begin
  inherited;

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := MasterCds['Itineraries_id'];
  _BookingDetailsForm_ItinerariesLines_id := MasterCds['ItineraryServices_id'];;
  _BookingDetailsForm_ItinerariesOptions_id := 3;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TItinServicesForm.AgentLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if AgentLcmb.EditValue <> null then
      AgentCds.Locate('Addressbook_id',AgentLcmb.EditValue,[]);

  except
  end;

end;

procedure TItinServicesForm.MasterCdsservices_idChange(Sender: TField);
begin
  inherited;
  RefreshVehicles;
end;

procedure TItinServicesForm.MasterCdsaddressbook_idChange(Sender: TField);
begin
  inherited;
  RefreshVehicles;
end;

procedure TItinServicesForm.cxButton2Click(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if MasterCds['SightSeeing'] <> False then
    exit;

  QueryString :=
    'SELECT IT.ItineraryTickets_id, IT.TravelDate, FC.city as FromCity, TC.City as ToCity, '+
    ' IT.flightno as FlightNo, IT.trainno as TrainNo, '+
    ' IT.departure as Departure ,  IT.arrival as Arrival '+
    ' FROM ItineraryTickets IT '+
    ' LEFT JOIN cities FC ON FC.cities_id = IT.from_cities_id '+
    ' LEFT JOIN cities TC ON TC.cities_id = IT.to_cities_id '+
    ' WHERE IT.itineraries_id = '+ IntToStr(MasterCds['Itineraries_id']);

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 7 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'ItineraryTickets_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TravelDate';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'FromCity';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'ToCity';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'FlightNo';
  SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'TrainNo';
  SearchSortForm.SearchGridDBTableView1.Columns[6].DataBinding.FieldName := 'Departure';
  SearchSortForm.SearchGridDBTableView1.Columns[7].DataBinding.FieldName := 'Arrival';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 60;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 100;
  SearchSortForm.SearchGridDBTableView1.Columns[6].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[7].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'TravelDate';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'From City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'To City';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Flight No';
  SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Train No';
  SearchSortForm.SearchGridDBTableView1.Columns[6].Caption := 'Departure';
  SearchSortForm.SearchGridDBTableView1.Columns[7].Caption := 'Arrival';

  //*=== Set the Grid Column Formats ===*//


  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'ItineraryTickets_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin

          if MasterCds.State = dsBrowse then
            MasterCds.Edit;

          if MasterCds['TransferTypes_id'] = 1 then
            begin
              if SearchSortForm.SearchCds['Arrival'] <> null then
                MasterCds['Time'] := SearchSortForm.SearchCds['Arrival'];
              if SearchSortForm.SearchCds['FromCity'] <> null then
                MasterCds['Place'] := SearchSortForm.SearchCds['FromCity'];
              if SearchSortForm.SearchCds['FlightNo'] <> null then
                MasterCds['FlightNo'] := SearchSortForm.SearchCds['FlightNo'];
            end
          else if MasterCds['TransferTypes_id'] = 2 then
            begin
              if SearchSortForm.SearchCds['Departure'] <> null then
                MasterCds['Time'] := SearchSortForm.SearchCds['Departure'];
              if SearchSortForm.SearchCds['ToCity'] <> null then
                MasterCds['Place'] := SearchSortForm.SearchCds['ToCity'];
              if SearchSortForm.SearchCds['FlightNo'] <> null then
                MasterCds['FlightNo'] := SearchSortForm.SearchCds['FlightNo'];
            end;

        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TItinServicesForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TItinServicesForm.cxDisplayActiveCkbClick(Sender: TObject);
begin
  inherited;
  if cxDisplayActiveCkb.Checked then
    begin
      ServicesCds.Filter := 'Active = True';
      ServicesCds.Filtered := True;
    end
  else
    begin
      ServicesCds.Filter := '';
      ServicesCds.Filtered := False;
    end;

  ServicesCds.Close;
  ServicesCds.Open;

end;

end.
