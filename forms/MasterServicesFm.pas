unit MasterServicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  DBCtrls, cxNavigator, cxDBNavigator, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxContainer, cxTextEdit, DBClient, Provider, SqlExpr, ExtCtrls,
  cxGroupBox, cxRadioGroup, cxCheckBox, cxSpinEdit, cxTimeEdit,
  cxLookAndFeelPainters, cxButtons, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TMasterServicesForm = class(TCustom1M1DForm)
    GroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    AgentLcmb: TcxDBLookupComboBox;
    ServiceLcmb: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    KeyIdDbText: TDBText;
    MasterCdsmasterservices_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsday: TIntegerField;
    MasterCdsservices_id: TIntegerField;
    MasterCdsstartingtime: TSQLTimeStampField;
    MasterCdstours: TStringField;
    MasterCdsremarks: TStringField;
    MasterCdstransport: TBooleanField;
    MasterCdsac: TBooleanField;
    MasterCdsguide: TBooleanField;
    MasterCdshotel_addressbook_id: TIntegerField;
    MasterCdsflight: TStringField;
    MasterCdssightseeing: TBooleanField;
    MasterCdsplace: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdstransfertypes_id: TIntegerField;
    MasterCdsentrancefees: TBooleanField;
    Detail1Cdsmasterservicestours_id: TIntegerField;
    Detail1Cdsmasterservices_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    SightseeingRBG: TcxDBRadioGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsMasters_id: TIntegerField;
    TourCodeDs: TDataSource;
    ServiceCityLcmb: TcxLookupComboBox;
    cxDBNavigator1: TcxDBNavigator;
    cxButton1: TcxButton;
    UpdateBtn: TcxButton;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    ServiceDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDS: TDataSource;
    ServiceCdsServices_id: TIntegerField;
    ServiceCdsDescription: TStringField;
    ServiceCdsAddressbook_id: TIntegerField;
    ServiceCdsCities_id: TIntegerField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDS: TDataSource;
    CityLCMB: TcxLookupComboBox;
    HotelLcmb: TcxDBLookupComboBox;
    Panel3: TPanel;
    TransferGB: TcxGroupBox;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    SightSeeingGB: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    cxButton2: TcxButton;
    Label17: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Label18: TLabel;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    Label19: TLabel;
    AgentCdsorderNo: TIntegerField;
    AgentCdsaddressbook_id: TIntegerField;
    AgentCdsservices_id: TIntegerField;
    AgentCdsorganisation: TStringField;
    cxDisplayActiveCkb: TcxCheckBox;
    ServiceCdsActive: TBooleanField;
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure TourString;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure UpdateBtnClick(Sender: TObject);
    procedure MasterCdssightseeingChange(Sender: TField);
    procedure SightseeingRBGClick(Sender: TObject);
    procedure ServiceCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure CityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure AlterLayout;
    procedure cxButton2Click(Sender: TObject);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure ServiceLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxDisplayActiveCkbClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterServicesForm: TMasterServicesForm;
  _MasterServicesForm_Mode : string;
  _MasterServicesForm_Level: Integer;
  _SightRGBValue: Boolean;
  
implementation

uses BackOfficeDM, MasterFm, GeneralUt, TravelScheduleFm, SearchFm,
  SearchSortFm;

{$R *.dfm}

function TMasterServicesForm.IsRecordDuplicate: Boolean;
var
  QueryString, x_Tours: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_Tours := '';
  if MasterCds['Tours'] <> null then
    x_Tours := 'AND LTRIM(RTRIM(Tours)) = ''' + trim(MasterCds['Tours']) + ''' ';

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterServices ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND day = ' + vartostr(MasterCds['day']) + ' ' +
    'AND Services_id = ' + IntToStr(MasterCdsServices_id.Value) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCdsAddressbook_id.Value) + ' ' +
    'AND Hotel_addressbook_id = ' + IntToStr(MasterCdsHotel_addressbook_id.Value) + ' ' +
    'AND TransferTypes_id = ' + IntToStr(MasterCdsTransferTypes_id.Value) + ' ' +
    x_Tours;

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterServices_id <> ' + IntToStr(MasterCds['MasterServices_id']) + ') ';

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

function TMasterServicesForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterServicesTours ' +
    'WHERE MasterServices_id = ' + IntToStr(Detail1Cds['MasterServices_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterServicesTours_id <> ' + IntToStr(Detail1Cds['MasterservicesTours_id']) + ') ';

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

procedure TMasterServicesForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;
  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['Masterservices_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;

end;


procedure TMasterServicesForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.ServiceCitiesCds.Active := False;
  BackOfficeDataModule.ServiceCitiesCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  ServiceCds.Filter := 'Active = True';
  ServiceCds.Filtered := True;

  ServiceCds.Active := False;
  ServiceCds.Active := True;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  HotelCds.Active := False;
  HotelCds.Active := True;

  BackOfficeDataModule.TransferTypesCDS.Active := False;
  BackOfficeDataModule.TransferTypesCDS.Active := True;

  BackOfficeDataModule.TourCodeCds.Active := False;
  BackOfficeDataModule.TourCodeCds.Active := True;

  MasterCdsName := 'MasterServices';
  MasterKeyField := 'MasterServices_id';
  Detail1CdsName := 'MasterServicesTours';
  Detail1KeyField := 'MasterServicesTours_id';

  AdmLevel := _MasterForm_Level;

  MasterSds.DataSource := MasterForm.MasterDs;  
  MasterCds.MasterSource := MasterForm.MasterDs;

  inherited;

  if _MasterServicesForm_Mode = 'I' then
    MasterCds.Insert
  else if (_MasterServicesForm_Mode = 'E') and (MasterForm.ServiceCds['MasterServices_id'] <> null) then
    MasterCds.Locate('MasterServices_id', MasterForm.ServiceCds['MasterServices_id'],[]);

  // when the form is created, in the on scroll event, these events do not get fired
  ServiceCityLcmbPropertiesEditValueChanged(nil);
  CityLcmbPropertiesEditValueChanged(nil);

  //cxlookupComboBox.Properties.Grid.DataController.DataModeController.SyncMode := True

end;

procedure TMasterServicesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterServicesForm := nil;
end;

procedure TMasterServicesForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMasterServicesForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TMasterServicesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdsday,'DAY');
  validateblanks(MasterCdsaddressbook_id,'AGENT');
  validateblanks(MasterCdsservices_id,'SERVICES');
  validateblanks(MasterCdshotel_addressbook_id,'"HOTEL"');

  if MasterCDSsightseeing.Value = True then
    begin
      if MasterCDSstartingtime.IsNull then
        Raise Exception.Create('Please enter the starting time.');
      if MasterCDSTransport.IsNull then
        Raise Exception.Create('Please enter the Transport.');
      if MasterCdsEntranceFees.IsNull then
        Raise Exception.Create('Please enter the Entrance Fees.');
      if MasterCdsGuide.IsNull then
        Raise Exception.Create('Please enter the Guide');
      if MasterCdsAC.IsNull then
        Raise Exception.Create('Please enter the A/C Transport');
    end
  else
    begin
      if MasterCdsTransferTypes_id.IsNull then
        Raise Exception.Create('Please enter the Transfer Type');
      if MasterCdsFlight.IsNull then
        Raise Exception.Create('Please enter the Airline/Train');
      if MasterCdsPlace.IsNull then
        Raise Exception.Create('Please enter the Place');
      if MasterCDSTransport.IsNull then
        Raise Exception.Create('Please enter the Transport.');
      if MasterCdsAC.IsNull then
        Raise Exception.Create('Please enter the A/C Transport');
    end;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterServicesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['MasterServices_id'] = null) then
    raise Exception.Create('Please enter the Services Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterServicesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CityLCMB.EditValue := 0;
  ServiceCityLCMB.EditValue := 0;  

  MasterCds['SightSeeing'] := True;
  MasterCds['entrancefees'] := True;
  MasterCds['Transport'] := True;
  MasterCds['Guide'] := True;  
  MasterCds['AC'] := True;
end;

procedure TMasterServicesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterServicesTours ' +
    'WHERE MasterServices_id = ' + IntToStr(MasterCds['MasterServices_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TMasterServicesForm.UpdateBtnClick(Sender: TObject);
begin
  inherited;
  TourString;
end;

procedure TMasterServicesForm.MasterCdssightseeingChange(Sender: TField);
begin
  inherited;

  AlterLayout;

end;

procedure TMasterServicesForm.SightseeingRBGClick(Sender: TObject);
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

procedure TMasterServicesForm.AlterLayout;
var
  SS_Str, City_Str: string;
begin

  if SightseeingRBG.ItemIndex = 0 then
    SS_Str := ' AND (Transfer = 1) '
  else
    SS_Str := ' AND (Transfer = 0) ';

  if ServiceCityLCMB.EditValue = null then
    City_Str := ''
  else
    City_Str := ' AND (Cities_id = :Cities_id) ';

  ServiceSds.Close;
  ServiceSds.CommandText := 'SELECT Services_id, Description, Addressbook_id, ' +
    'Cities_id, Active FROM Services ' +
    'WHERE (1=1) ' +
    City_Str +
    SS_Str +
    'ORDER BY Description';
  if City_Str = '' then
    begin
      ServiceCds.MasterSource := nil;
      ServiceCds.MasterFields := '';
    end
  else
    begin
      ServiceCds.MasterSource := BackOfficeDataModule.ServiceCitiesDS;
      ServiceCds.MasterFields := 'cities_id';
      ServiceCds.IndexFieldNames := 'Cities_id';
    end;

  ServiceSds.Close;
  ServiceSds.Open;

  ServiceCds.Close;
  ServiceCds.Open;

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

  try
    if (ServiceLcmb.EditValue <> null) and (ServiceCds.State = dsBrowse) then
      begin
        ServiceCds.Locate('Services_id',ServiceLcmb.EditValue,[]);
      end;
  except
  end;

    

end;

procedure TMasterServicesForm.ServiceCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if ServiceCityLcmb.EditValue <> null then
      BackOfficeDataModule.ServiceCitiesCds.Locate('Cities_id',ServiceCityLcmb.EditValue,[])
    else
      AlterLayout;
  except
  end;

end;

procedure TMasterServicesForm.CityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
  except
  end;

end;

procedure TMasterServicesForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  ServiceCityLCMB.EditValue := 0;
  CityLCMB.EditValue := 0;

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
          ServiceCityLCMB.EditValue := GpSds['Cities_id'];
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
          CityLCMB.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;

    end;

  AlterLayout;



end;

procedure TMasterServicesForm.cxButton2Click(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if MasterCds['SightSeeing'] <> False then
    exit;

  QueryString :=
    'SELECT MT.MasterTickets_id, MT.day as Day, FC.city as FromCity, TC.City as ToCity, '+
    ' MT.flightno as FlightNo, MT.trainno as TrainNo, '+
    ' MT.departure as Departure ,  MT.arrival as Arrival '+
    ' FROM mastertickets MT '+
    ' LEFT JOIN cities FC ON FC.cities_id = MT.from_cities_id '+
    ' LEFT JOIN cities TC ON TC.cities_id = MT.to_cities_id '+
    ' WHERE MT.masters_id = '+ IntToStr(MasterCds['Masters_id']);

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
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'MasterTickets_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Day';
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
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Day';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'From City';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'To City';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Flight No';
  SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Train No';
  SearchSortForm.SearchGridDBTableView1.Columns[6].Caption := 'Departure';
  SearchSortForm.SearchGridDBTableView1.Columns[7].Caption := 'Arrival';

  //*=== Set the Grid Column Formats ===*//


  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'MasterTickets_id';

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
                MasterCds['StartingTime'] := SearchSortForm.SearchCds['Arrival'];
              if SearchSortForm.SearchCds['FromCity'] <> null then
                MasterCds['Place'] := SearchSortForm.SearchCds['FromCity'];
              if SearchSortForm.SearchCds['FlightNo'] <> null then
                MasterCds['Flight'] := SearchSortForm.SearchCds['FlightNo'];
            end
          else if MasterCds['TransferTypes_id'] = 2 then
            begin
              if SearchSortForm.SearchCds['Departure'] <> null then
                MasterCds['StartingTime'] := SearchSortForm.SearchCds['Departure'];
              if SearchSortForm.SearchCds['ToCity'] <> null then
                MasterCds['Place'] := SearchSortForm.SearchCds['ToCity'];
              if SearchSortForm.SearchCds['FlightNo'] <> null then
                MasterCds['Flight'] := SearchSortForm.SearchCds['FlightNo'];
            end;

        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TMasterServicesForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TMasterServicesForm.MasterCdsAfterPost(DataSet: TDataSet);
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

procedure TMasterServicesForm.ServiceLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if ServiceLcmb.EditValue <> null then
      begin
        ServiceCds.Locate('Services_id',ServiceLcmb.EditValue,[]);
      end;
  except
  end;


end;

procedure TMasterServicesForm.cxDisplayActiveCkbClick(Sender: TObject);
begin
  inherited;
  if cxDisplayActiveCkb.Checked then
    begin
      ServiceCds.Filter := 'Active = True';
      ServiceCds.Filtered := True;
    end
  else
    begin
      ServiceCds.Filter := '';
      ServiceCds.Filtered := False;
    end;

  ServiceCds.Close;
  ServiceCds.Open;

end;

end.
