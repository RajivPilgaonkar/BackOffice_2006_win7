unit VouTransportFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxDBLookupComboBox, cxLookAndFeelPainters, StdCtrls,
  cxButtons, DBCtrls, cxNavigator, cxDBNavigator, cxCheckBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxMemo, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxTimeEdit, CustomMasterFm,
  Buttons, Menus, dxSkinsCore, dxSkinsDefaultPainters;

type
  TVouTransportForm = class(TCustomMasterForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    AgentLcmb: TcxDBLookupComboBox;
    CityLcmb: TcxLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    OkBtn: TcxButton;
    Label11: TLabel;
    Label12: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    FromPlaceEdit: TcxDBTextEdit;
    ToPlaceEdit: TcxDBTextEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    VehicleTypeLcmb: TcxDBLookupComboBox;
    cxDistanceBtn: TcxButton;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    VehicleCdsvehicles_id: TIntegerField;
    VehicleCdsvehicle: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDs: TDataSource;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    VehicleCdsAddressBook_id: TIntegerField;
    CancelBtn: TcxButton;
    MasterCDSvoucherstransport_id: TIntegerField;
    MasterCDSvouchers_id: TIntegerField;
    MasterCDSfromplace: TStringField;
    MasterCDStoplace: TStringField;
    MasterCDSac: TBooleanField;
    MasterCDSdropoffdays: TIntegerField;
    MasterCDSvehicles_id: TIntegerField;
    MasterCDSfromdate: TSQLTimeStampField;
    MasterCDStodate: TSQLTimeStampField;
    MasterCDSnoofvehicles: TIntegerField;
    MasterCDSkms: TIntegerField;
    MasterCDSfrom_cities_id: TIntegerField;
    MasterCDSto_cities_id: TIntegerField;
    MasterCDSfromtime: TSQLTimeStampField;
    MasterCDStotime: TSQLTimeStampField;
    MasterCDSdropoffkms: TIntegerField;
    CostBtn: TSpeedButton;
    MasterCDSAddressbook_id: TIntegerField;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    Label17: TLabel;
    Label2: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    MasterCDSDriveTypes_id: TIntegerField;
    Label18: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    MasterCDSCarHireGroups_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);    
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxDistanceBtnClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure AgentLcmbPropertiesEditValueChanged(Sender: TObject);

  private
    { Private declarations }
    procedure FilterVehicles;
  public
    { Public declarations }
  end;

var
  VouTransportForm: TVouTransportForm;
  _VouTransportForm_Level: Integer;
  _VouTransportForm_Mode: String;
  _VouTransportForm_CallType: Integer;

implementation

uses BackOfficeDM, GeneralUt, VouBillFm, BookingDetailsFm, CostingTraceFm,
  MainFm, VoucherFm;

{$R *.dfm}

procedure TVouTransportForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.DriveTypesCds.Active := False;
  BackOfficeDataModule.DriveTypesCds.Active := True;

  BackOfficeDataModule.CarHireGroupsCds.Active := False;
  BackOfficeDataModule.CarHireGroupsCds.Active := True;
  

  AgentCds.Active := False;
  AgentCds.Active := True;

  FilterVehicles;

  MasterCdsName := 'VouchersTransport';
  MasterKeyField := 'VouchersTransport_id';

//  AdmLevel := _VouTransportForm_Level;
  if (_VouTransportForm_CallType = 2) then
    AdmLevel := VoucherForm_Level
  else
    AdmLevel := _VouBillForm_Level;

  inherited;

  if (_VouTransportForm_CallType = 2) then
    MasterCds.MasterSource := VoucherForm.MasterDs
  else
    MasterCds.MasterSource := VouBillForm.VoucherDs;

  Self.Height := 330;
  Self.Width := 805;

end;

procedure TVouTransportForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VouTransportForm := nil;
end;

procedure TVouTransportForm.CancelBtnClick(Sender: TObject);
begin
  inherited;
  if (MasterCDS.State = dsEdit) or (MasterCDS.State = dsInsert) then
    begin
      MasterCDS.Cancel;
    end;
  Close;
end;

procedure TVouTransportForm.OkBtnClick(Sender: TObject);
var
  Desc, AC, From_Place, To_Place : string;
  Pax, Num_Veh, veh_id, frm_city_id, to_city_id : Integer;
  Vou_Changed: String;
  GPSds: TSQLDataSet;
begin
  inherited;

  //Kms:=0;
  Desc:='';
  Ac:='0';
  From_Place:='';
  To_Place:='';
  //Pax:=0;
  Num_Veh:=0;
  veh_id:=0;
  frm_city_id:=0;
  to_city_id:=0;

  Vou_Changed:='0';

  if (_VouTransportForm_CallType = 2) then
   begin
     if VoucherForm.MasterCds['Checked']=True then
       begin
         ShowMessage('Voucher Already Checked');
         Exit;
       end;
   end
  else if (_VouTransportForm_CallType = 1) then
   begin
     if VouBillForm.VoucherCds['Checked']=True then
       begin
         ShowMessage('Voucher Already Checked');
         Exit;
       end;
   end;


{
  if (_VouTransportForm_CallType = 2 and VoucherForm.MasterCds['Checked']=True) or
     (_VouTransportForm_CallType <> 2 and VouBillForm.VoucherCds['Checked']=True) then
   begin
     ShowMessage('Voucher Already Checked');
     Exit;
   end;
}

  if MasterCDS['from_cities_id']=null then
     Raise Exception.Create('Please Enter the City.');

  if MasterCDS['to_cities_id']=null then
     Raise Exception.Create('Please Enter the City.');

  if MasterCDS['fromtime']=null then
     Raise Exception.Create('Please enter the timings');

  if MasterCDS['totime']=null then
     Raise Exception.Create('Please enter the timings');

  if MasterCDS['NoOfVehicles']=null then
     Raise Exception.Create('Please enter the no of vehicles');

  if MasterCDS['fromdate']=null then
     Raise Exception.Create('Please enter the travel dates');

  if MasterCDS['todate']=null then
     Raise Exception.Create('Please enter the travel dates');

  if MasterCDS['Vehicles_id']=null then
     Raise Exception.Create('Please enter the vehicle type');

  if (_VouTransportForm_CallType = 2 and VoucherForm.MasterCds['Checked']=False) or
     (_VouTransportForm_CallType <> 2 and VouBillForm.VoucherCds['Checked']=False) then
    begin
      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      if MasterCDS.State <> dsBrowse then
      begin
         MasterCDS.Post;
         Vou_Changed:='1';
      end;
      MasterCDS.Refresh;

      //Pax := 0;


      if (_VouTransportForm_CallType=1) and (VouBillForm.VoucherCds['Pax']=null) then
         Pax:=0
      else if (_VouTransportForm_CallType=2) and (VoucherForm.MasterCds['Pax']=null) then
         Pax:=0
      else if _VouTransportForm_CallType = 2 then
         Pax:=VoucherForm.MasterCdspax.Value
      else
         Pax:=VouBillForm.VoucherCdspax.Value;

      if MasterCDS['NoOfVehicles']<>null then
         Num_Veh:=MasterCDSnoofvehicles.Value;

      if MasterCDS['from_cities_id']<>null then
         frm_city_id:=MasterCDSfrom_cities_id.Value;

      if MasterCDS['to_cities_id']<>null then
         to_city_id:=MasterCDSto_cities_id.Value;

      if MasterCDS['FromPlace']<>null then
         From_Place:=MasterCDSFromPlace.Value
      else
         From_Place:='';

      if MasterCDS['ToPlace']<>null then
         To_Place:=MasterCDSToPlace.Value
      else
         To_Place:='';

      if MasterCDS['Ac']<>null then
         if MasterCDSAc.Value=True then
            AC:='1'
         else
            AC:='0';

      if MasterCDS['Vehicles_id']<>null then
         veh_id:=MasterCDSvehicles_id.Value;

      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'SELECT dbo.fn_coachvoudesc('+ IntToStr(Pax) + ', '+ IntToStr(Num_Veh)+ ', ' +
            IntToStr(frm_city_id) + ', ' + IntToStr(to_city_id) + ', ''' + From_Place + ''' ' + ', '+
            ' ''' + To_Place + ''' ' + ', ' + ' ''' + TimeToStr(MasterCDS['fromtime']) + ''' ' + ', ''' +
            TimeToStr(MasterCDS['totime']) + ''' ' + ', ' +
            ' ''' + FormatDateTime('mm/dd/yyyy', MasterCDS['fromdate']) + ''' ' + ', ' +
            ' ''' + FormatDateTime('mm/dd/yyyy', MasterCDS['todate']) + ''' ' + ', ' +
            ' ''' + AC + ''' ' + ', ' + IntToStr(veh_id) + ') as [desc]';
      GPSds.Open;

      if (not GPSds.Eof) and (GPSds['desc']<>null) then
         desc:=GPSds['desc'];

      if Length(Trim(desc)) <> 0 then
       begin
          GPSds.Close;
          GPSds.CommandText := '';
          GPSds.CommandText := 'UPDATE Vouchers SET Description = ''' + desc + ''' ' +
            ' ,modified = '+ Vou_Changed +
            ' where vouchers_id = ' + IntToStr(MasterCDSvouchers_id.Value);
          GPSds.ExecSQL;
       end;

      GPSds.Close;

      if _VouTransportForm_CallType = 2 then
        VoucherForm.MasterCds.Refresh
      else
        VouBillForm.VoucherCds.Refresh;

      OkBtn.ModalResult:= mrOk;
      Close;
    end;
end;

procedure TVouTransportForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCDSfromdate,'"FROM DAY"');
  validateblanks(MasterCDSfromtime,'"FROM TIME"');
  validateblanks(MasterCDSfrom_cities_id,'"FROM CITY"');
  validateblanks(MasterCDStodate,'"TO DAY"');
  validateblanks(MasterCDStotime,'"TO TIME"');
  validateblanks(MasterCDSto_cities_id,'"TO CITY"');

  if MasterCds['DriveTypes_id'] = null then
    MasterCds['DriveTypes_id'] := 1;
  
end;

procedure TVouTransportForm.MasterCdsAfterScroll(DataSet: TDataSet);
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

procedure TVouTransportForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
      AgentCds.Refresh;
      AgentCds.Locate('Cities_id',CityLcmb.EditValue,[]);
  except
  end;
end;

procedure TVouTransportForm.cxDistanceBtnClick(Sender: TObject);
var
   GpSds : TSQLDataSet;
begin
  inherited;
  if (MasterCds['Vouchers_id']=null) or (MasterCds['From_Cities_id']=null) or (MasterCds['To_Cities_id']=null) then
      exit;

  if MasterCDS.State = dsBrowse then
     MasterCDS.Edit;

   GpSds := TSQLDataSet.Create(nil);
   GpSds.SQLConnection :=BackOfficeDataModule.SQLConnection;
   GpSds.CommandType := ctQuery;
   GpSds.CommandText :='select dbo.fn_DistanceInKms('+ IntToStr(MasterCDSfrom_cities_id.Value) +
                       ',' + IntToStr(MasterCDSto_cities_id.Value) + ') as kms ';
   GpSds.Open;

   if (not GpSds.Eof) and (GpSds['kms']<>null) then
      begin
      MasterCdsdropoffkms.Value :=GpSds['kms'];
//      MasterCDS.Refresh;
      end;

   GpSds.Free;

end;

procedure TVouTransportForm.cxButton3Click(Sender: TObject);
var
   GPSds :TSQLDataSet;
   x_itineraries_id, x_itinerariesLines_id: integer;
   QueryString: string;
begin
  inherited;

  QueryString := 'SELECT itineraries_id, ItineraryTransport_id FROM ItineraryTransport ' +
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
      x_itinerariesLines_id := GpSds['ItineraryTransport_id'];
    end;

  GpSds.Free;

  if (x_itineraries_id = 0) or (x_itinerariesLines_id = 0) then
    raise exception.create ('Information not available');

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := x_Itineraries_id;
  _BookingDetailsForm_ItinerariesLines_id := x_ItinerariesLines_id;
  _BookingDetailsForm_ItinerariesOptions_id := 4;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TVouTransportForm.cxButton1Click(Sender: TObject);
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
  if MasterCds['FromDate'] >= '01/07/2017' then
    _CostingTraceForm_Gst := 1;

  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];

  if _VouTransportForm_CallType = 2 then
    _CostingTraceForm_VoucherTypes_id := VoucherForm.MasterCds['VoucherTypes_id']
  else
    _CostingTraceForm_VoucherTypes_id := VouBillForm.VoucherCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;


end;

procedure TVouTransportForm.cxButton4Click(Sender: TObject);
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

  if _VouTransportForm_CallType = 2 then
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

procedure TVouTransportForm.AgentLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterVehicles;
end;

procedure TVouTransportForm.FilterVehicles;
begin
  inherited;

  VehicleCds.Close;
  VehicleSds.Close;

  if AgentLCMB.EditValue <> null then
    begin
      VehicleSds.Params[0].Value := AgentLCMB.EditValue;
      VehicleSds.Params[1].Value := AgentLCMB.EditValue;
    end
  else
    begin
      VehicleSds.Params[0].Value := -1;
      VehicleSds.Params[1].Value := -1;
    end;

  VehicleSds.Open;
  VehicleCds.Open;

end;

end.

