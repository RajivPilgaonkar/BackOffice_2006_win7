unit VouTicketsFm;

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
  cxGridTableView, cxGridDBTableView, cxGrid, Buttons, CustomMasterFm,
  cxButtonEdit, Menus, dxSkinsCore, dxSkinsDefaultPainters, DateUtils;

type
  TVouTicketsForm = class(TCustomMasterForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TrainNoLbl: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    FromCityLcmb: TcxDBLookupComboBox;
    ToCityLcmb: TcxDBLookupComboBox;
    ModeLcmb: TcxDBLookupComboBox;
    ClassLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    TravelSchEdit: TcxDBTextEdit;
    cxButton2: TcxButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CityLcmb: TcxLookupComboBox;
    TravelDateEdit: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
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
    MasterCdsvoucherstickets_id: TIntegerField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdsflightno: TStringField;
    MasterCdsnobooked: TIntegerField;
    MasterCdsnocancelled: TIntegerField;
    MasterCdsclassid: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdsdeparture: TSQLTimeStampField;
    MasterCdsarrival: TSQLTimeStampField;
    MasterCdstickets_id: TIntegerField;
    MasterCdstrainno: TStringField;
    MasterCdsnoofpax_resident: TIntegerField;
    MasterCdsfrom_trainstations_id: TIntegerField;
    MasterCdsto_trainstations_id: TIntegerField;
    MasterCdsnocancelled_resident: TIntegerField;
    MasterCdsTravelDate: TSQLTimeStampField;
    MasterCdsAddressbook_id: TIntegerField;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    cxButton3: TcxButton;
    MasterCDSFromStations_id: TIntegerField;
    MasterCDSToStations_id: TIntegerField;
    cxButton1: TcxButton;
    MasterCDSConstant_USD: TFMTBCDField;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    MasterCDSToStationLookup: TStringField;
    Label11: TLabel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label12: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    MasterCDSFromStationLookup: TStringField;
    cxButton4: TcxButton;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure ModeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouTicketsForm: TVouTicketsForm;
  _VouTicketsForm_Level: Integer;
  _VouTicketsForm_Mode: String;
  _VouTicketsForm_CallType: Integer;

implementation

uses BackOfficeDM, GeneralUt, VouBillFm, BookingDetailsFm,
  CostingTraceFm, SearchSortFm, MainFm, VoucherFm, TicketsFm;

{$R *.dfm}

procedure TVouTicketsForm.FormCreate(Sender: TObject);
begin

  if _VouTicketsForm_CallType <> 2 then
    _VouTicketsForm_CallType := 1;

  BackOfficeDataModule.AgentCityCds.Active := False;
  BackOfficeDataModule.AgentCityCds.Active := True;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.TicketsCDS.Active := False;
  BackOfficeDataModule.TicketsCDS.Active := True;

  BackOfficeDataModule.TrainStationCds.Active := False;
  BackOfficeDataModule.TrainStationCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  ClassCds.Active := False;
  ClassCds.Active := True;

  MasterTblName := 'VouchersTickets';
  MasterKeyField := 'VouchersTickets_id';

//  AdmLevel := _VouTicketsForm_Level;
  if _VouTicketsForm_CallType = 2 then
    AdmLevel := VoucherForm_Level
  else
    AdmLevel := _VouBillForm_Level;
  inherited;

  if _VouTicketsForm_CallType = 2 then
    MasterCds.MasterSource := VoucherForm.MasterDs
  else
    MasterCDS.MasterSource := VouBillForm.VoucherDs;

  // This sets the flight class combo pointer correctly
  ModeLcmbPropertiesEditValueChanged(nil);


  Self.Height := 360;
  Self.Width := 570;

end;

procedure TVouTicketsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VouTicketsForm := nil;
end;

procedure TVouTicketsForm.CancelBtnClick(Sender: TObject);
begin
  inherited;
  if (MasterCds.State = dsEdit) or (MasterCds.State = dsInsert) then
    begin
      MasterCds.Cancel;
    end;
  Close;
end;

procedure TVouTicketsForm.OkBtnClick(Sender: TObject);
var
   desc : String;
   Pax, Ticket, From_city, To_city, From_Station, To_Station, Class_id, NoBooked, NoCanceld : Integer;
   Vou_Changed : String;
   GpSds: TSQLDataSet;
   x_date: TDateTime;
begin
  Pax:=0;
  Ticket:=0;
  From_city:=0;
  To_city:=0;
  Class_id:=0;
  NoBooked:=0;
  NoCanceld:=0;

  Vou_Changed:= '0';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  if (_VouTicketsForm_CallType = 2) then
    begin
      if (VoucherForm.MasterCds['Checked'] = True) then
      begin
        ShowMessage('Voucher Already Checked');
        Exit;
      end;
    end
  else
    begin
      if (VouBillForm.VoucherCds['Checked'] = True) then
      begin
        ShowMessage('Voucher Already Checked');
        Exit;
      end;
    end;


      if MasterCds.State <> dsBrowse then
      begin
         MasterCds.Post;
         Vou_Changed := '1';
      end;

      if (_VouTicketsForm_CallType=1) and (VouBillForm.VoucherCds['Pax']=null) then
         Pax:=0
      else if (_VouTicketsForm_CallType=2) and (VoucherForm.MasterCds['Pax']=null) then
         Pax:=0
      else if _VouTicketsForm_CallType = 2 then
         Pax:=VoucherForm.MasterCdspax.Value
      else
         Pax:=VouBillForm.VoucherCdspax.Value;

      if MasterCds['Tickets_id']=null then
         Ticket:=0
      else
         Ticket:=MasterCdstickets_id.Value;

      if MasterCds['From_Cities_id']=null then
         From_city:=0
      else
         From_city:=MasterCdsfrom_cities_id.Value;

      if MasterCds['To_Cities_id']=null then
         To_city:=0
      else
         To_city:=MasterCdsto_cities_id.Value;

      if MasterCds['fromStations_id']=null then
         From_Station:=0
      else
         From_Station:=MasterCdsfrom_trainstations_id.Value;

      if MasterCds['toStations_id']=null then
         To_Station:=0
      else
         To_Station:=MasterCdsto_trainstations_id.Value;

      if MasterCds['ClassID']=null then
         Class_id:=0
      else
         Class_id:=MasterCdsclassid.Value;

      if MasterCds['NoBooked']=null then
         NoBooked:=0
      else
         NoBooked:=MasterCdsnobooked.Value;

      if MasterCds['NoCancelled']=null then
         NoCanceld:=0
      else
         NoCanceld:=MasterCdsnocancelled.Value;

      if (_VouTicketsForm_CallType = 2) then
        x_date := VoucherForm.MasterCds['voucherdate']
      else
        x_date := VouBillForm.VoucherCds['voucherdate'];

      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'SELECT dbo.fn_TravelVouDesc(' + IntToStr(Pax) + ' ,' +
      IntToStr(Ticket) + ' ,' + ' ''' + MasterCdsflightno.Value + ''' ' + ' ,' +
      IntToStr(From_city) + ' ,' + IntToStr(To_city) + ' ,' +
      IntToStr(From_Station) + ' ,' + IntToStr(To_Station) + ' ,' +
      IntToStr(Class_id)  + ' ,' +
      ' ''' + TimeToStr(MasterCds['arrival']) + ''' ,' +
      ' ''' + TimeToStr(MasterCds['departure']) + ''' ,' +
      ' ''' + FormatDateTime('mm/dd/yyyy', x_date) + ''' ' + ' ,' +
      IntToStr(NoBooked) + ' ,' + IntToStr(NoCanceld) + ') as [desc]' ;
      GpSds.Open;


      if (not GpSds.Eof) and (GpSds['desc']<>null) then
         desc:=GpSds['desc'];

      if Length(Trim(desc)) <> 0 then
       begin

          if (_VouTicketsForm_CallType = 2) then
            begin

              if VoucherForm.MasterCds.State = dsBrowse then
                VoucherForm.MasterCds.Edit;

              VoucherForm.MasterCds['Description'] := desc;
              VoucherForm.MasterCds['Modified'] := True;

              VoucherForm.MasterCds.Post;

            end
          else
            begin

              if VouBillForm.VoucherCds.State = dsBrowse then
                VouBillForm.VoucherCds.Edit;

              VouBillForm.VoucherCds['Description'] := desc;
              VouBillForm.VoucherCds['Modified'] := True;

              VouBillForm.VoucherCds.Post;

            end;

       end;

      OkBtn.ModalResult := mrOK;
      Close;

end;

procedure TVouTicketsForm.MasterCdsBeforePost(DataSet: TDataSet);
var
   GPSds: TSQLDataSet;
   num_pax: integer;
   nobooked, nocanceld: integer;
begin
  inherited;
  validateblanks(MasterCdstraveldate,'"Travel Date"');
  validateblanks(MasterCdsfrom_cities_id,'FROM CITY');
  validateblanks(MasterCdsto_cities_id,'TO CITY');
  validateblanks(MasterCdstickets_id,'MODE');
  validateblanks(MasterCdsclassid, 'CLASS');
  validateblanks(MasterCDSarrival,'ARRIVAL TIME');
  validateblanks(MasterCDSdeparture,'DEPARTURE TIME');
  validateblanks(MasterCdsAddressbook_id, 'AGENT');

  nobooked:=0;
  nocanceld:=0;
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if MasterCds['NoBooked']<>null then
    nobooked:=MasterCdsnobooked.Value;

  if MasterCds['NoCancelled']<>null then
    nocanceld:=MasterCdsnocancelled.Value;

  num_pax := (nobooked-nocanceld);

  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText :='UPDATE Vouchers SET Pax= '+IntToStr(num_pax)+
         ' WHERE Vouchers_id='+IntToStr(MasterCds['Vouchers_id']);
  GPSds.ExecSQL;
  GPSds.Free;
end;

procedure TVouTicketsForm.CityLcmbPropertiesEditValueChanged(
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

procedure TVouTicketsForm.ModeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if ModeLcmb.EditValue <> null then
      BackOfficeDataModule.TicketsCds.Locate('Tickets_id',ModeLcmb.EditValue,[]);
  except
  end;
end;

procedure TVouTicketsForm.MasterCdsAfterScroll(DataSet: TDataSet);
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

procedure TVouTicketsForm.cxButton3Click(Sender: TObject);
var
   GPSds :TSQLDataSet;
   x_itineraries_id, x_itinerariesLines_id: integer;
   QueryString: string;
begin
  inherited;

  QueryString := 'SELECT itineraries_id, ItineraryTickets_id FROM ItineraryTickets ' +
    'WHERE Vouchers_id = ' + IntToStr(MasterCds['Vouchers_id'])  + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_itineraries_id := 0;
  x_itinerariesLines_id := 0;

  if (not GpSds.Eof) then
    begin
      x_itineraries_id := GpSds['Itineraries_id'];
      x_itinerariesLines_id := GpSds['ItineraryTickets_id'];
    end;

  GpSds.Free;

  if (x_itineraries_id = 0) or (x_itinerariesLines_id = 0) then
    raise exception.create ('Information not available');

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := x_Itineraries_id;
  _BookingDetailsForm_ItinerariesLines_id := x_ItinerariesLines_id;
  _BookingDetailsForm_ItinerariesOptions_id := 1;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;


end;

procedure TVouTicketsForm.cxButton2Click(Sender: TObject);
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

procedure TVouTicketsForm.cxButton1Click(Sender: TObject);
begin
  inherited;

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _CostingTraceForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterCds.State = dsEdit then
    MasterCds.Post;

  _CostingTraceForm_Gst := 0;   
  if MasterCds['TravelDate'] >= '01/07/2017' then
    _CostingTraceForm_Gst := 1;

  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];
  if (_VouTicketsForm_CallType = 2) then
    _CostingTraceForm_VoucherTypes_id := VoucherForm.MasterCds['VoucherTypes_id']
  else
    _CostingTraceForm_VoucherTypes_id := VouBillForm.VoucherCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;

end;

procedure TVouTicketsForm.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
  QueryString: string;
begin
  inherited;

  if (MasterCds['from_cities_id']=null) or (MasterCds['From_Cities_id']=0) then
      Exit;

  if MasterCds.State in [dsBrowse] then
    MasterCds.Edit;

  QueryString := 'SELECT TrainStations_id, StationName ' +
    'FROM TrainStations ' +
    'WHERE Cities_id =  ' + IntToStr(MasterCds['From_Cities_id']) + ' ' +
    'ORDER BY StationName';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'StationName';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Station';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainStations_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    MasterCds['FromStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TVouTicketsForm.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
  QueryString: string;
begin
  inherited;


  if (MasterCds['to_cities_id']=null) or (MasterCds['To_Cities_id']=0) then
      Exit;

  if MasterCds.State in [dsBrowse] then
    MasterCds.Edit;

  QueryString := 'SELECT TrainStations_id, StationName ' +
    'FROM TrainStations ' +
    'WHERE Cities_id =  ' + IntToStr(MasterCds['To_Cities_id']) + ' ' +
    'ORDER BY StationName';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'TrainStations_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'StationName';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Station';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'TrainStations_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    MasterCds['ToStations_id'] := SearchSortForm.SearchCds['TrainStations_id'];

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TVouTicketsForm.cxButton4Click(Sender: TObject);
var
  i : Integer;
begin
  inherited;

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _CostingTraceForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterCds.State = dsEdit then
    MasterCds.Post;

  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];
  if (_VouTicketsForm_CallType = 2) then
    _CostingTraceForm_VoucherTypes_id := VoucherForm.MasterCds['VoucherTypes_id']
  else
    _CostingTraceForm_VoucherTypes_id := VouBillForm.VoucherCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.cxButton1.Visible := False;

  CostingTraceForm.DBGrid1.DataSource := nil;
  CostingTraceForm.DBGrid1.DataSource := CostingTraceForm.CostDs;

  CostingTraceForm.CostSds.Active := True;
  CostingTraceForm.CostCds.Active := True;

  for i := 0 to 4 do
    CostingTraceForm.DBGrid1.Columns[i].Visible := False;

  for i := 0 to 2 do
    CostingTraceForm.DBGrid1.Columns.Add;

//*=== Set the Grid Fields ===*//
  CostingTraceForm.DBGrid1.Columns[5].FieldName := 'CostOf';
  CostingTraceForm.DBGrid1.Columns[6].FieldName := 'Description';
  CostingTraceForm.DBGrid1.Columns[7].FieldName := 'Cost';

//*=== Set the Grid Columns' width ===*//
  CostingTraceForm.DBGrid1.Columns[5].Visible := False;
  CostingTraceForm.DBGrid1.Columns[6].Width := 250;
  CostingTraceForm.DBGrid1.Columns[7].Width := 200;

//*=== Set the Grid Column Headers ===*//
  CostingTraceForm.DBGrid1.Columns[5].Title.Caption := 'Cost Of';
  CostingTraceForm.DBGrid1.Columns[6].Title.Caption := 'Description';
  CostingTraceForm.DBGrid1.Columns[7].Title.Caption := 'Cost ';

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;
end;

end.
