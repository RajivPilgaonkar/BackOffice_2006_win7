unit VouServicesFm;

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
  cxNavigator, cxDBNavigator, CustomMasterFm, Menus, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TVouServicesForm = class(TCustomMasterForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    HotelLcmb: TcxDBLookupComboBox;
    ServiceLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    CityLcmb: TcxLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    SightseeingRBG: TcxDBRadioGroup;
    OkBtn: TcxButton;
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
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    Label26: TLabel;
    HotelCityLCmb: TcxLookupComboBox;
    Panel4: TPanel;
    TransferGB: TcxGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit10: TcxDBTextEdit;
    TravelSchBtn: TcxButton;
    SightSeeingGB: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBCheckBox5: TcxDBCheckBox;
    GroupBox2: TcxGroupBox;
    Label19: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    NoofVehiclesEdit: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    VehicleLCMB: TcxDBLookupComboBox;
    MasterCDSvouchersservices_id: TIntegerField;
    MasterCDSvouchers_id: TIntegerField;
    MasterCDSguide: TBooleanField;
    MasterCDSservices_id: TIntegerField;
    MasterCDStransport: TBooleanField;
    MasterCDSac: TBooleanField;
    MasterCDSvehicles_id: TIntegerField;
    MasterCDSnoofvehicles: TIntegerField;
    MasterCDSplace: TStringField;
    MasterCDSflightno: TStringField;
    MasterCDStiming: TSQLTimeStampField;
    MasterCDSsightseeing: TBooleanField;
    MasterCDStransfertypes_id: TIntegerField;
    MasterCDStickets_id: TIntegerField;
    MasterCDSentrancefees: TBooleanField;
    MasterCDSnoofpax_resident: TIntegerField;
    CancelBtn: TcxButton;
    MasterCDSHotel_Addressbook_id: TIntegerField;
    MasterCDSTransferDate: TSQLTimeStampField;
    Label13: TLabel;
    ModeLcmb: TcxDBLookupComboBox;
    MasterCDSAddressbook_id: TIntegerField;
    cxButton3: TcxButton;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    VehicleCdsPax: TIntegerField;
    Label14: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    ServicesCdsActive: TBooleanField;
    procedure AlterLayout;                
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);    
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCDSAfterEdit(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCdssightseeingChange(Sender: TField);
    procedure SightseeingRBGClick(Sender: TObject);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure ServiceLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure HotelCityLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure NoofVehiclesEditExit(Sender: TObject);
    procedure TravelSchBtnClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure MasterCDSservices_idChange(Sender: TField);
    procedure MasterCDSAddressbook_idChange(Sender: TField);
    procedure RefreshVehicles;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouServicesForm: TVouServicesForm;
  _VouServicesForm_Level : Integer;
  _VouServicesForm_Mode: String;
  _VouServicesForm_CallType: Integer;

implementation

uses BackOfficeDM, GeneralUt, VouBillFm, TravelScheduleFm,
  BookingDetailsFm, SearchSortFm, CostingTraceFm, MainFm, VoucherFm;

{$R *.dfm}

procedure TVouServicesForm.AlterLayout;
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

procedure TVouServicesForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.ServiceCitiesCds.Active := False;
  BackOfficeDataModule.ServiceCitiesCds.Active := True;

  BackOfficeDataModule.TransferTypesCDS.Active := False;
  BackOfficeDataModule.TransferTypesCDS.Active := True;

  BackOfficeDataModule.TicketsCDS.Active := False;
  BackOfficeDataModule.TicketsCDS.Active := True;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  ServicesCds.Active := False;
  ServicesCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  HotelCds.Active := False;
  HotelCds.Active := True;

  VehicleCds.Active := False;
  VehicleCds.Active := True;

  MasterTblName := 'VouchersServices';
  MasterKeyField := 'VouchersServices_id';

//  AdmLevel := _VouServicesForm_Level;
  if _VouServicesForm_CallType = 2 then
    AdmLevel := VoucherForm_Level
  else
    AdmLevel := _VouBillForm_Level;

  inherited;

  if _VouServicesForm_CallType = 2 then
    MasterCds.MasterSource := VoucherForm.MasterDs
  else
    MasterCds.MasterSource := VouBillForm.VoucherDs;
//  CityLcmbPropertiesEditValueChanged(nil);

  Self.Height :=  345;
  Self.Width := 750;

end;

procedure TVouServicesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VouServicesForm := nil;
end;

procedure TVouServicesForm.CancelBtnClick(Sender: TObject);
begin
  inherited;
  if (MasterCDS.State = dsEdit) or (MasterCDS.State = dsInsert) then
    begin
      MasterCDS.Cancel;
    end;
  Close;
end;

procedure TVouServicesForm.OkBtnClick(Sender: TObject);
var
  desc, FlightNo, Place, SS, AC, Guide, EntranceFees, x_MasterTourDate, x_MasterTourCode : string;
  Pax, Num_veh, Addressbook_id, Masters_id,
  Services_id, Vehicles_id, TransferTypes_id : integer;
  Vou_Changed: String;
  GPSds : TSQLDataSet;
  x_date: TDateTime;

begin
  inherited;

  Pax:=0;
  Num_veh:=0;
  Addressbook_id:=0;
  Masters_id:=0;
  Services_id:=0;
  Vehicles_id:=0;
  TransferTypes_id:=0;
  SS:='0';
  AC:='0';
  Guide:='0';
  EntranceFees:='0';
  desc:='';
  FlightNo:='';
  Place:='';
  Vou_changed:='0';

  if (_VouServicesForm_CallType = 2) then
   begin
     if VoucherForm.MasterCds['Checked']=True then
       begin
         ShowMessage('Voucher Already Checked');
         Exit;
       end;
   end
  else if (_VouServicesForm_CallType = 1) then
   begin
     if VouBillForm.VoucherCds['Checked']=True then
       begin
         ShowMessage('Voucher Already Checked');
         Exit;
       end;
   end;

{
  if (_VouServicesForm_CallType = 2 and VoucherForm.MasterCds['Checked']=True) or
     (_VouServicesForm_CallType <> 2 and VouBillForm.VoucherCds['Checked']=True) then
  begin
     ShowMessage('Voucher Already Checked');
     Exit;
  end;
}

      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      if MasterCDS.State <> dsBrowse then
      begin
         MasterCDS.Post;
         Vou_changed:='1';
      end;
      MasterCDS.Refresh;

      Pax := 0;

      if (_VouServicesForm_CallType=1) and (VouBillForm.VoucherCds['Pax']=null) then
         Pax:=0
      else if (_VouServicesForm_CallType=2) and (VoucherForm.MasterCds['Pax']=null) then
         Pax:=0
      else if _VouServicesForm_CallType = 2 then
         Pax:=VoucherForm.MasterCdspax.Value
      else
         Pax:=VouBillForm.VoucherCdspax.Value;

      if MasterCDS['Vehicles_id']<>null then
         Vehicles_id:=MasterCDSvehicles_id.Value;

      if (MasterCDS['FlightNo']=null) or (Length(Trim(MasterCDS['FlightNo']))=0) then
         FlightNo:=''
      else
         FlightNo:=MasterCDS['FlightNo'];

      if (MasterCDS['Place']=null) or (Length(Trim(MasterCDS['Place']))=0) then
        Place:=''
      else
        Place:=MasterCDS['Place'];

      if MasterCDS['TransferTypes_id']<>null then
         TransferTypes_id:=MasterCDSTransferTypes_id.Value
      else
         TransferTypes_id:=0;

      if MasterCDS['Timing']=null then
         Raise Exception.Create('Please enter the timings');

      if MasterCDS['Sightseeing']=null then
         raise Exception.Create ('Please specify if transfer or sight-seeing')
      else
      begin
         if MasterCDSsightseeing.Value=True then
            SS:='1'
         else
            SS:='0';
      end;

      if MasterCDS['Guide']=null then
         raise Exception.Create ('Please specify if Guide required')
      else
      begin
         if MasterCDSGuide.Value=True then
            Guide:='1'
         else
            Guide:='0';
      end;

      if MasterCDS['EntranceFees']=null then
         raise Exception.Create ('Please specify if Entrance Fees required')
      else
      begin
         if MasterCDSEntranceFees.Value=True then
            EntranceFees:='1'
         else
            EntranceFees:='0';
      end;

      if MasterCDS['AC']=null then
        exception.Create('Please enter AC / Non. AC')
      else
      begin
          if MasterCDSac.Value=True then
             AC:='1'
          else
             AC:='0';
      end;

      if MasterCDS['NoOfVehicles']<>null then
         Num_veh:=MasterCDSNoOfVehicles.Value;

      Addressbook_id := 0;
      if _VouServicesForm_CallType = 2 then
        if VoucherForm.MasterCds['AddressBook_id']<>null then
           Addressbook_id:=VoucherForm.MasterCds['AddressBook_id']
      else
        if VouBillForm.VoucherCds['AddressBook_id']<>null then
           Addressbook_id:=VouBillForm.VoucherCds['AddressBook_id'];

      if MasterCDS['Services_id']=null then
         Raise Exception.Create('Please select the Service')
      else
         Services_id:=MasterCDSServices_id.Value;

      x_MasterTourCode := '';

      if (_VouServicesForm_CallType = 2) then
        if (VoucherForm.MasterCds['MasterTourCode'] <> null) then
          x_MasterTourCode := VoucherForm.MasterCds['MasterTourCode']
      else
        if (VouBillForm.VoucherCds['MasterTourCode'] <> null) then
          x_MasterTourCode := VouBillForm.VoucherCds['MasterTourCode'];

      x_MasterTourDate := 'null';

      if (_VouServicesForm_CallType = 2) then
        if (VoucherForm.MasterCds['MasterTourDate'] <> null) then
          x_MasterTourDate := FormatDateTime('mm/dd/yyyy', VoucherForm.MasterCds['mastertourdate'])
      else
        if (VouBillForm.VoucherCds['MasterTourCode'] <> null) then
          x_MasterTourDate := FormatDateTime('mm/dd/yyyy', VouBillForm.VoucherCds['mastertourdate']);

      if trim(x_MasterTourCode) > '' then
       begin
         GPSds.Close;
         GPSds.CommandText := '';
         GPSds.CommandText := 'SELECT Masters_id FROM Masters WHERE LTrim(RTrim(Mastercode))='+
         ' ''' + trim(x_MasterTourCode) + ''' ';
         GPSds.Open;

         if not GPSds.Eof then
            Masters_id:=GPSds['masters_id'];
       end;

      if (_VouServicesForm_CallType = 2) then
        x_date := VoucherForm.MasterCds['VoucherDate']
      else
        x_date := VouBillForm.VoucherCds['VoucherDate'];

      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'SELECT dbo.fn_trsfvoudesc('+ IntToStr(Pax) + ', '+ IntToStr(Num_veh) + ', ' +
      IntToStr(Addressbook_id) + ', ' + IntToStr(Masters_id) + ', ' +
      x_MasterTourDate + ', ' +
      IntToStr(Services_id) + ', ' + IntToStr(Vehicles_id) + ', ' +
      ' ''' + AC + ''' ' + ', ' + ' ''' + Guide + ''' ' + ', ' +
      ' ''' + FormatDateTime('mm/dd/yyyy', x_date) + ''' ' + ', ' +
      ' ''' + TimeToStr(MasterCDS['timing']) + ''' ' + ', '+ ' ''' + TimeToStr(MasterCDS['timing']) + ''' ' + ', ' + ' ''' + FlightNo + ''' ' + ', ' +
      ' ''' + Place + ''' ' + ', ' + IntToStr(TransferTypes_id) + ', ''' + SS + ''',' + EntranceFees + ') as [desc]' ;
      GPSds.Open;

      if (not GPSds.Eof) and (GPSds['desc']<>null) then
         desc:=GPSds['desc'];

      if Length(Trim(desc)) <> 0 then
       begin

          if _VouServicesForm_CallType = 2 then
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

procedure TVouServicesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdstransferdate, 'DATE');
  validateblanks(MasterCdsaddressbook_id,'AGENT');
  validateblanks(MasterCdshotel_addressbook_id,'HOTEL');
  validateblanks(MasterCdsservices_id,'SERVICE');

  if MasterCdssightseeing.Value = True then
    begin
      if MasterCDStiming.IsNull then
        Raise Exception.Create('Please enter the timings.');
      if MasterCDStransport.IsNull then
        Raise Exception.Create('Please enter the Transport.');
      if MasterCDSentrancefees.IsNull then
        Raise Exception.Create('Please enter the Entrance Fees.');
      if MasterCDSguide.IsNull then
        Raise Exception.Create('Please enter the Guide');
      if MasterCDSac.IsNull then
        Raise Exception.Create('Please enter the A/C Transport');
    end
  else
    begin
      if MasterCDStransfertypes_id.IsNull then
        Raise Exception.Create('Please enter the Transfer Type');
      if MasterCDSflightno.IsNull then
        Raise Exception.Create('Please enter the Airline/Train');
      if MasterCDSplace.IsNull then
        Raise Exception.Create('Please enter the Place');
    end;

{  if (VouVarTbl['AC']=Null) then
    VouVarTbl['AC']:=False;


  if (VouVarTbl['Transport']=Null) then
    VouVarTbl['Transport']:=False;

  if (VouVarTbl['Guide']=Null) then
    VouVarTbl['Guide']:=False;}
end;

procedure TVouServicesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['SightSeeing'] := True;
  MasterCds['entrancefees'] := True;
  MasterCds['Transport'] := True;
  MasterCds['AC'] := True;
end;

procedure TVouServicesForm.MasterCDSAfterEdit(DataSet: TDataSet);
begin
  inherited;
  if MasterCDS['noofpax_resident']=null then
     MasterCDS['noofpax_resident']:=0;
end;

procedure TVouServicesForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

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

  RefreshVehicles;  

  AlterLayout;
end;

procedure TVouServicesForm.MasterCdssightseeingChange(Sender: TField);
begin
  inherited;
  AlterLayout;
end;

procedure TVouServicesForm.SightseeingRBGClick(Sender: TObject);
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

procedure TVouServicesForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   try
    if CityLcmb.EditValue <> null then
      begin
        BackOfficeDataModule.ServiceCitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);

        AgentCds.Close;
        AgentSds.Close;

        AgentSds.Params[0].Value := CityLcmb.EditValue;

        AgentSds.Open;
        AgentCds.Open;
      end
    else
      AlterLayout;
  except
  end;
end;

procedure TVouServicesForm.ServiceLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if ServiceLcmb.EditValue <> null then
      ServicesCds.Locate('Services_id',ServiceLcmb.EditValue,[]);
{
    VehicleCds.Refresh;
    VehicleCds.Locate('Services_id', ServiceLcmb.EditValue,[]);
}

  except
  end;
end;

procedure TVouServicesForm.HotelCityLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if HotelCityLCmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',HotelCityLCmb.EditValue,[]);
  except
  end;
end;

procedure TVouServicesForm.NoofVehiclesEditExit(Sender: TObject);
begin
  inherited;
  if (MasterCDS['NoOfVehicles']=0) or (MasterCDS['NoOfVehicles']=null)then
    MasterCDSvehicles_id.Clear;
end;

procedure TVouServicesForm.TravelSchBtnClick(Sender: TObject);
var
  QueryString,x_MasterTourCode,x_MasterTourDate : string;
  i: integer;
begin
  inherited;

  if MasterCds['SightSeeing'] <> False then
    exit;

  x_MasterTourCode := '';

  if (_VouServicesForm_CallType = 2) then
    if (VoucherForm.MasterCds['MasterTourCode'] <> null) then
      x_MasterTourCode := VoucherForm.MasterCds['MasterTourCode']
  else
    if (VouBillForm.VoucherCds['MasterTourCode'] <> null) then
      x_MasterTourCode := VouBillForm.VoucherCds['MasterTourCode'];

  x_MasterTourDate := 'null';

  if (_VouServicesForm_CallType = 2) then
    if (VoucherForm.MasterCds['MasterTourDate'] <> null) then
      x_MasterTourDate := FormatDateTime('mm/dd/yyyy', VoucherForm.MasterCds['mastertourdate'])
  else
    if (VouBillForm.VoucherCds['MasterTourCode'] <> null) then
      x_MasterTourDate := FormatDateTime('mm/dd/yyyy', VouBillForm.VoucherCds['mastertourdate']);

  QueryString :=
    'SELECT IT.ItineraryTickets_id, IT.TravelDate, FC.city as FromCity, TC.City as ToCity, '+
    ' IT.flightno as FlightNo, IT.trainno as TrainNo, '+
    ' IT.departure as Departure ,  IT.arrival as Arrival '+
    ' FROM ItineraryTickets IT '+
    ' LEFT JOIN cities FC ON FC.cities_id = IT.from_cities_id '+
    ' LEFT JOIN cities TC ON TC.cities_id = IT.to_cities_id '+
    ' WHERE IT.Vouchers_id IN ' +
    '(SELECT Vouchers_id FROM Vouchers WHERE MasterTourCode = ''' +
    x_MasterTourCode + ''' AND MasterTourDate = ''' +
    x_MasterTourDate + ''')';

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
              MasterCds['Timing'] := SearchSortForm.SearchCds['Arrival'];
              MasterCds['Place'] := SearchSortForm.SearchCds['FromCity'];
            end
          else if MasterCds['TransferTypes_id'] = 2 then
            begin
              MasterCds['Timing'] := SearchSortForm.SearchCds['Departure'];
              MasterCds['Place'] := SearchSortForm.SearchCds['ToCity'];
            end;

        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;



{
var
   ModeStr,SQLStr: String;
begin
  inherited;
}
// *****  Not yet done  - SHWETA  *****  //
 { ModeStr:='0';
  if MasterCDSsightseeing.Value = False then begin

      if MasterCDS.State = dsBrowse then
         MasterCDS.Edit;
      if TravelScheduleForm = Nil then
         Application.CreateForm(TTravelScheduleForm, TravelScheduleForm);
      TravelScheduleForm.SearchQry.Close;
      TravelScheduleForm.SearchQry.SQL.Clear;

      if (TrvlModeLCB.KeyValue<>Null) and (TrvlModeLCB.KeyValue<>0) then
         ModeStr:=VarToStr(TrvlModeLCB.KeyValue)
      else
         ModeStr:='0';

      if DispAllCKB.Checked=True then
         SQLStr:='SELECT IT.TravelDate as "TravelDate", FC.City As "FromCity", '+
          ' TC.City As "ToCity", IT.FlightNO as "FlightNo", '+
          ' CAST(IT.Arrival as VARCHAR(5)) as "Arrival", '+
          ' CAST(IT.Departure as VARCHAR(5)) as "Departure" '+
          ' FROM ItineraryTickets IT '+
          ' LEFT JOIN Cities FC ON IT.From_Cities_id=FC.Cities_id '+
          ' LEFT JOIN Cities TC ON IT.To_Cities_id=TC.Cities_id '+
          ' INNER JOIN Itineraries I '+
          ' LEFT JOIN Masters M ON M.Masters_id=I.Masters_id '+
          ' ON I.Itineraries_id=IT.Itineraries_id '+
          ' WHERE LTRIM(RTRIM(M.MasterCode))=''' +VarToStr(VouBillForm.VouTbl['MasterTourCode'])+  ''' '+
          ' AND I.DepartureDate= ''' + FormatDateTime('dd/mm/yyyy', VouBillForm.VouTbl['MasterTourDate']) + ''' '
      else
         SQlStr:='SELECT IT.TravelDate as "TravelDate", FC.City As "FromCity", '+
          ' TC.City As "ToCity", IT.FlightNO as "FlightNo", '+
          ' CAST(IT.Arrival as VARCHAR(5)) as "Arrival", '+
          ' CAST(IT.Departure as VARCHAR(5)) as "Departure" '+
          ' FROM ItineraryTickets IT '+
          ' LEFT JOIN Cities FC ON IT.From_Cities_id=FC.Cities_id '+
          ' LEFT JOIN Cities TC ON IT.To_Cities_id=TC.Cities_id '+
          ' INNER JOIN Itineraries I '+
          ' LEFT JOIN Masters M ON M.Masters_id=I.Masters_id '+
          ' ON I.Itineraries_id=IT.Itineraries_id '+
          ' WHERE LTRIM(RTRIM(M.MasterCode))=''' +VarToStr(VouBillForm.VouTbl['MasterTourCode'])+  ''' '+
          ' AND I.DepartureDate= ''' + FormatDateTime('dd/mm/yyyy', VouBillForm.VouTbl['MasterTourDate']) + ''' '+
          ' AND IT.Tickets_id='+ ModeStr;
      TrvlSchForm.TrvlSchQry.SQL.Add(SqlStr);

      if Length(Trim(TrvlSchForm.TrvlSchQry.Text))<>0 then
         TrvlSchForm.TrvlSchQry.Open;

      TrvlSchForm.SectorTrainGrid.Columns[1].Width := 75;
      TrvlSchForm.SectorTrainGrid.Columns[2].Width := 75;
      TrvlSchForm.SectorTrainGrid.Columns[3].Width := 100;
      TrvlSchForm.SectorTrainGrid.Columns[4].Width := 100;
      TrvlSchForm.SectorTrainGrid.Columns[5].Width := 50;
      TrvlSchForm.ShowModal;

      if TrvlSchForm.ModalResult = mrOK then begin
         VouVarTbl['FlightNo']:=TrvlSchForm.TrvlSchQry['FlightNo'];

        if TrsfTypeLCB.Text='ARR' then begin
            VouVarTbl['Timing']:=TrvlSchForm.TrvlSchQry['Arrival'];
            VouVarTbl['Place'] :=TrvlSchForm.TrvlSchQry['ToCity'];
          end;
        if TrsfTypeLCB.Text='DEP' then begin
            VouVarTbl['Timings']:=TrvlSchForm.TrvlSchQry['Departure'];
            VouVarTbl['Place']:=TrvlSchForm.TrvlSchQry['FromCity'];
          end;
      end;
    TrvlSchForm.TrvlSchQry.Close;
    TrvlSchForm:=Nil;
  end;                  }
end;

procedure TVouServicesForm.cxButton3Click(Sender: TObject);
var
   GPSds :TSQLDataSet;
   x_itineraries_id, x_itinerariesLines_id: integer;
   QueryString: string;
begin
  inherited;

  QueryString := 'SELECT itineraries_id, ItineraryServices_id FROM ItineraryServices ' +
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
      x_itinerariesLines_id := GpSds['ItineraryServices_id'];
    end;

  GpSds.Free;

  if (x_itineraries_id = 0) or (x_itinerariesLines_id = 0) then
    raise exception.create ('Information not available');

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := x_Itineraries_id;
  _BookingDetailsForm_ItinerariesLines_id := x_ItinerariesLines_id;
  _BookingDetailsForm_ItinerariesOptions_id := 3;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TVouServicesForm.RefreshVehicles;
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


procedure TVouServicesForm.MasterCDSservices_idChange(Sender: TField);
begin
  inherited;
  RefreshVehicles;
end;

procedure TVouServicesForm.MasterCDSAddressbook_idChange(Sender: TField);
begin
  inherited;
  RefreshVehicles;
end;

procedure TVouServicesForm.cxButton1Click(Sender: TObject);
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
  if MasterCds['TransferDate'] >= '01/07/2017' then
    _CostingTraceForm_Gst := 1;

  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];

  if _VouServicesForm_CallType = 2 then
    _CostingTraceForm_VoucherTypes_id := VoucherForm.MasterCds['VoucherTypes_id']
  else
    _CostingTraceForm_VoucherTypes_id := VouBillForm.VoucherCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;

end;

procedure TVouServicesForm.cxButton4Click(Sender: TObject);
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
  if _VouServicesForm_CallType = 2 then
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

