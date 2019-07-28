unit ItinTicketsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxCalendar,
  cxDBEdit, cxLookAndFeelPainters, DBCtrls, cxNavigator, cxDBNavigator,
  cxButtons, cxSpinEdit, cxTimeEdit, cxMemo, cxCheckBox, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxButtonEdit, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox, DateUtils;

type
  TItinTicketsForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    FromCityLcmb: TcxDBLookupComboBox;
    ToCityLcmb: TcxDBLookupComboBox;
    ModeLcmb: TcxDBLookupComboBox;
    ClassLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    TravelSchEdit: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    cxButton1: TcxButton;
    KeyIdDbText: TDBText;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    CityLcmb: TcxLookupComboBox;
    GroupBox1: TcxGroupBox;
    Label14: TcxLabel;
    Label15: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    MasterCdsitinerarytickets_id: TIntegerField;
    MasterCdsitineraries_id: TIntegerField;
    MasterCdstraveldate: TSQLTimeStampField;
    MasterCdsflightno: TStringField;
    MasterCdstours: TStringField;
    MasterCdsadvicenoofpax: TSQLTimeStampField;
    MasterCdsadvicenamesofpax: TSQLTimeStampField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsestimatednoofpax: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdsclassid: TIntegerField;
    MasterCdsgenvoucher: TBooleanField;
    MasterCdsremarks: TStringField;
    MasterCdsnobooked: TIntegerField;
    MasterCdsnocancelled: TIntegerField;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsreminder: TSQLTimeStampField;
    MasterCdscanceled: TSQLTimeStampField;
    MasterCdsexpectedamount: TBCDField;
    MasterCdstrainno: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdstickets_id: TIntegerField;
    MasterCdsdeparture: TSQLTimeStampField;
    MasterCdsarrival: TSQLTimeStampField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdsmastertickets_id: TIntegerField;
    MasterCdsnoofpax_resident: TIntegerField;
    MasterCdsfrom_trainstations_id: TIntegerField;
    MasterCdsto_trainstations_id: TIntegerField;
    MasterCdsquoted: TBCDField;
    MasterCdsduration: TStringField;
    MasterCdsnocancelled_resident: TIntegerField;
    Detail1Cdsitineraryticketstours_id: TIntegerField;
    Detail1Cdsitinerarytickets_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1tourcodes_id: TcxGridDBColumn;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeDs: TDataSource;
    cxDBCheckBox1: TcxDBCheckBox;
    GroupBox2: TcxGroupBox;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    VoucherNoSds: TSQLDataSet;
    VoucherNoDsp: TDataSetProvider;
    VoucherNoCds: TClientDataSet;
    VoucherNoCdsvouchers_id: TIntegerField;
    VoucherNoCdsyearref: TIntegerField;
    VoucherNoCdsvoucherno: TIntegerField;
    VoucherNoDs: TDataSource;
    MasterCdsVoucherNoLookUp: TStringField;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsItineraries_id: TIntegerField;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxDBDateEdit7: TcxDBDateEdit;
    cxButton3: TcxButton;
    MasterCdsLeadpax: TStringField;
    MasterCdsFromStations_id: TIntegerField;
    MasterCdsToStations_id: TIntegerField;
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
    procedure ModeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinTicketsForm: TItinTicketsForm;
  _ItinTicketsForm_Level: Integer;
  _ItinTicketsForm_Mode: String;

implementation

uses ItineraryFm, BackOfficeDM, GeneralUt, Math,
  BookingDetailsFm, TicketsFm;

{$R *.dfm}

procedure TItinTicketsForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.TicketsCDS.Active := False;
  BackOfficeDataModule.TicketsCDS.Active := True;

  BackOfficeDataModule.AgentCityCds.Active := False;
  BackOfficeDataModule.AgentCityCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  ClassCds.Active := False;
  ClassCds.Active := True;

  VoucherNoCds.Active := False;
  VoucherNoCds.Active := True;

  TourCodeCds.Active := False;
  TourCodeCds.Active := True;

  MasterCdsName := 'ItineraryTickets';
  MasterKeyField := 'ItineraryTickets_id';
  Detail1CdsName := 'ItineraryTicketsTours';
  Detail1KeyField := 'ItineraryTicketsTours_id';

//  AdmLevel := _ItinTicketsForm_Level;
  AdmLevel := _ItineraryForm_Level;

  MasterSds.DataSource := ItineraryForm.ItinerariesDs;
  MasterCds.MasterSource := ItineraryForm.ItinerariesDS;

  inherited;

  if _ItinTicketsForm_Mode = 'I' then
    MasterCds.Insert
  else if (_ItinTicketsForm_Mode = 'E') and (ItineraryForm.ItinTicketsCds['ItineraryTickets_id'] <> null) then
    MasterCds.Locate('ItineraryTickets_id', ItineraryForm.ItinTicketsCds['ItineraryTickets_id'],[]);

end;

procedure TItinTicketsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ItinTicketsForm := nil;
end;

procedure TItinTicketsForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TItinTicketsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdstraveldate,'"Travel Date"');
  validateblanks(MasterCdsfrom_cities_id,'FROM CITY');
  validateblanks(MasterCdsto_cities_id,'TO CITY');
  validateblanks(MasterCdstickets_id,'MODE');
 // validateblanks(ItinTicketsTblFlightNo,'TRAVEL SCHEDULE');
  if MasterCdstickets_id.Value <> 3 then begin
     validateblanks(MasterCDSarrival,'ARRIVAL TIME');
     validateblanks(MasterCDSdeparture,'DEPARTURE TIME');
  end;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  If MasterCds.State = dsInsert then
    MasterCds['itineraries_id'] := ItineraryForm.ItinerariesCds['Itineraries_id'];

end;

procedure TItinTicketsForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM ItineraryTicketsTours ' +
    'WHERE ItineraryTickets_id = ' + IntToStr(MasterCds['ItineraryTickets_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TItinTicketsForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.AgentCityCds.Locate('Cities_id',CityLcmb.EditValue,[]);
      AgentCds.Refresh;
      AgentCds.Locate('Cities_id',CityLcmb.EditValue,[]);
  except
  end;
end;

procedure TItinTicketsForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TItinTicketsForm.ModeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if ModeLcmb.EditValue <> null then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',ModeLcmb.EditValue,[]);
  except
  end;
end;

procedure TItinTicketsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['ItineraryTickets_id'] = null) then
    raise Exception.Create('Please enter the Ticket Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

function TItinTicketsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryTickets ' +
    'WHERE Traveldate = ' + IntToStr(MasterCds['TravelDate']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(MasterCds['From_cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_cities_id']) + ' ' +
    'AND Tickets_id = ' + IntToStr(MasterCds['Tickets_id']) + ' ' +
    'AND Classid = ' + IntToStr(MasterCds['Classid']) + ' ' +
    'AND Itineraries_id = ' + IntToStr(MasterCds['Itineraries_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryTickets_id <> ' + IntToStr(MasterCds['ItineraryTickets_id']) + ') ';

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

function TItinTicketsForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryTicketsTours ' +
    'WHERE ItineraryTickets_id = ' + IntToStr(Detail1Cds['ItineraryTickets_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryTicketsTours_id <> ' + IntToStr(Detail1Cds['ItineraryTicketsTours_id']) + ') ';

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

procedure TItinTicketsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['GenVoucher'] := True;
  //MasterCds['Arrival'] := StrToDate('01/01/1900');
  //MasterCds['Departure'] := StrToDate('01/01/1900');

  CityLcmb.EditValue := 0;
end;

procedure TItinTicketsForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;

  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['ItineraryTickets_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;

end;

procedure TItinTicketsForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

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

end;

procedure TItinTicketsForm.cxButton2Click(Sender: TObject);
begin
  inherited;
  if (MasterCDS['Tickets_id']=null) or (MasterCDS['Tickets_id']=0) then
      Exit;

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if MasterCDS['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if MasterCDS['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if MasterCDS['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if MasterCDS['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := MasterCDS['From_Cities_id'];
  TicketsForm_ToCities_id := MasterCDS['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;


  if TicketsForm.ModalResult = mrOK then
  begin
    if MasterCDS.State = dsBrowse then
      MasterCDS.Edit;
    if MasterCDS['Tickets_id'] = 1 then
    begin

      if TicketsForm.FlightsCds['FlightNo'] <> null then
        MasterCDS['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

      if TicketsForm.FlightsCds['Arrival'] <> null then
        MasterCDS['Arrival'] := TicketsForm.FlightsCds['Arrival'];

      if TicketsForm.FlightsCds['Departure'] <> null then
        MasterCDS['Departure'] := TicketsForm.FlightsCds['Departure'];
    end;

    if MasterCDS['Tickets_id'] = 2 then
    begin

      if TicketsForm.TrainsCds['TrainName'] <> null then
        MasterCDS['FlightNo'] := Trim(TicketsForm.TrainsCds['TrainNo']) + ' ' + Trim(TicketsForm.TrainsCds['TrainName']);

      if TicketsForm.TrainsCds['TrainNo'] <> null then
        MasterCDS['TrainNo'] := TicketsForm.TrainsCds['TrainNo'];

      if TicketsForm.TrainsCds['Arrival'] <> null then
        MasterCDS['Arrival'] := TicketsForm.TrainsCds['Arrival'];

      if TicketsForm.TrainsCds['Departure'] <> null then
        MasterCDS['Departure'] := TicketsForm.TrainsCds['Departure'];

      if TicketsForm.TrainsCds['FromStations_id'] <> null then
        MasterCDS['FromStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

      if TicketsForm.TrainsCds['ToStations_id'] <> null then
        MasterCDS['ToStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

    end;

    if MasterCDS['Tickets_id'] = 3 then
    begin

      if TicketsForm.BusesCds['busno'] <> null then
        MasterCDS['FlightNo']:= TicketsForm.BusesCds['BusNo'];

      if TicketsForm.BusesCds['Arrival'] <> null then
        MasterCDS['Arrival'] := TicketsForm.BusesCds['Arrival'];

      if TicketsForm.BusesCds['Departure'] <> null then
        MasterCDS['Departure'] := TicketsForm.BusesCds['Departure'];

    end;

    if MasterCDS['Tickets_id'] = 4 then
    begin
      MasterCDS['FlightNo']:= NULL;
      MasterCDS['Arrival'] := NULL;
      MasterCDS['Departure'] := NULL;
    end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TItinTicketsForm.cxButton3Click(Sender: TObject);
begin
  inherited;

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := MasterCds['Itineraries_id'];
  _BookingDetailsForm_ItinerariesLines_id := MasterCds['ItineraryTickets_id'];;
  _BookingDetailsForm_ItinerariesOptions_id := 1;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TItinTicketsForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

end.
