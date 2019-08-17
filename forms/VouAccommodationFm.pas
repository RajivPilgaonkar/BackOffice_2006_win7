unit VouAccommodationFm;

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
  CustomMasterFm, Buttons, Menus, dxSkinsCore, dxSkinsDefaultPainters;

type
  TVouAccommodationForm = class(TCustomMasterForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    HotelLcmb: TcxDBLookupComboBox;
    RoomTypeLcmb: TcxDBLookupComboBox;
    MealPlanLcmb: TcxDBLookupComboBox;
    AgentLcmb: TcxDBLookupComboBox;
    CityLcmb: TcxLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    OkBtn: TcxButton;
    AgentSds: TSQLDataSet;
    AgentCds: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField6: TIntegerField;
    StringField9: TStringField;
    AgentDs: TDataSource;
    AgentDsp: TDataSetProvider;
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
    Label20: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    CancelBtn: TcxButton;
    MasterCDSvouchersaccommodation_id: TIntegerField;
    MasterCDSvouchers_id: TIntegerField;
    MasterCDSdatein: TSQLTimeStampField;
    MasterCDSdateout: TSQLTimeStampField;
    MasterCDSroomtypes_id: TIntegerField;
    MasterCDSmealplans_id: TIntegerField;
    MasterCDSac: TBooleanField;
    MasterCDSnoofsingles: TIntegerField;
    MasterCDSnoofdoubles: TIntegerField;
    MasterCDSAddressbook_id: TIntegerField;
    MasterCDSAgent_Addressbook_id: TIntegerField;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    MasterCDSNoOfTriples: TIntegerField;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    MasterCDSNoOfTwins: TIntegerField;
    Label11: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCDSBeforeInsert(DataSet: TDataSet);
    procedure MasterCDSBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure RoomTypeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure HotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure MasterCDSAddressbook_idChange(Sender: TField);
    procedure SetAgent;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouAccommodationForm: TVouAccommodationForm;
  _VouAccommodationForm_Level: Integer;
  _VouAccommodationForm_Mode: String;
  _VouAccommodationForm_CallType: Integer;
  Modified: Integer;
implementation

uses BackOfficeDM, GeneralUt, VouBillFm, BookingDetailsFm, CostingTraceFm,
  MainFm, VoucherFm;

{$R *.dfm}

procedure TVouAccommodationForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  HotelCds.Active := False;
  HotelCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  RoomTypeCds.Active := False;
  RoomTypeCds.Active := True;

  MealPlanCds.Active := False;
  MealPlanCds.Active := True;

  MasterTblName := 'VouchersAccommodation';
  MasterKeyField := 'VouchersAccommodation_id';

  if (_VouAccommodationForm_CallType = 2) then
    MasterSds.Params[0].Value := VoucherForm.MasterCds['Vouchers_id']
  else
    MasterSds.Params[0].Value := VouBillForm.VoucherCds['Vouchers_id'];

//  AdmLevel := _VouAccommodationForm_Level;
  if (_VouAccommodationForm_CallType = 2) then
    AdmLevel := VoucherForm_Level
  else
    AdmLevel := _VouBillForm_Level;

  inherited;

  if (_VouAccommodationForm_CallType = 2) then
    MasterCds.MasterSource := VoucherForm.MasterDs
  else
    MasterCDS.MasterSource := VouBillForm.VoucherDs;

  CityLcmbPropertiesEditValueChanged(nil);
  HotelLcmbPropertiesEditValueChanged(nil);

  Self.Height := 270;
  Self.Width := 545;

end;

procedure TVouAccommodationForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VouAccommodationForm := nil;
end;

procedure TVouAccommodationForm.CancelBtnClick(Sender: TObject);
begin
  inherited;
  if (MasterCDS.State = dsEdit) or (MasterCDS.State = dsInsert) then
    begin
      MasterCDS.Cancel;
    end;
  Close;
end;

procedure TVouAccommodationForm.OkBtnClick(Sender: TObject);
var
  desc: string;
  AC: String;
  Pax, NoSingles, NoDoubles, NoTriples, NoTwins, rm_type, mp_type: Integer;
  Vou_Changed: String;
  GPSds : TSQLDataSet;
begin
  inherited;
  desc:='';
  //cost:=0.00;
  AC:='0';
  //Pax:=0;
  //NoSingles:=0;
  //NoDoubles:=0;
  //NoTwins:=0;
  //NoTriples:=0;
  //rm_type:=0;
 // mp_type:=0;
  Vou_Changed:='0';

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (_VouAccommodationForm_CallType = 2) then
   begin
     if VoucherForm.MasterCds['Checked']=True then
       begin
         ShowMessage('Voucher Already Checked');
         Exit;
       end;
   end
  else if (_VouAccommodationForm_CallType = 1) then
   begin
     if VouBillForm.VoucherCds['Checked']=True then
       begin
         ShowMessage('Voucher Already Checked');
         Exit;
       end;
   end;

{
  if (_VouAccommodationForm_CallType = 2 and VoucherForm.MasterCds['Checked']=True) or
     (_VouAccommodationForm_CallType <> 2 and VouBillForm.VoucherCds['Checked']=True) then
  begin
    ShowMessage('Voucher Already Checked');
    Exit;
  end;
}


      if MasterCDS.State <> dsBrowse then
      begin
         MasterCDS.Post;
         Vou_Changed:='1';
      end;
       MasterCDS.Refresh;

      if (_VouAccommodationForm_CallType=1) and (VouBillForm.VoucherCds['Pax']=null) then
         Pax:=0
      else if (_VouAccommodationForm_CallType=2) and (VoucherForm.MasterCds['Pax']=null) then
         Pax:=0
      else if _VouAccommodationForm_CallType = 2 then
         Pax:=VoucherForm.MasterCdspax.Value
      else
         Pax:=VouBillForm.VoucherCdspax.Value;

      if MasterCDS['NoOfSingles']=null then
         NoSingles:=0
      else
         NoSingles:=MasterCDSnoofsingles.Value;

      if MasterCDS['NoOfDoubles']=null then
         NoDoubles:=0
      else
         NoDoubles:=MasterCDSnoofdoubles.Value;

      if MasterCDS['NoOfTwins']=null then
         NoTwins:=0
      else
         NoTwins:=MasterCDSnoofTwins.Value;

      if MasterCDS['NoOfTriples']=null then
         NoTriples:=0
      else
         NoTriples:=MasterCDSnoofTriples.Value;

      if MasterCDS['RoomTypes_id']=null then
         rm_type:=0
      else
         rm_type:=MasterCDSroomtypes_id.Value;

      if MasterCDS['MealPlans_id']=null then
         mp_type:=0
      else
         mp_type:=MasterCDSmealplans_id.Value;

      if MasterCDS['Ac']=null then
         AC:='0'
      else
      begin
         if MasterCDSac.Value=True then
            AC:='1'
         else
            Ac:='0';
      end;

      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'SELECT  dbo.fn_AccVouDesc('+ IntToStr(Pax) + ', '+
      IntToStr(NoSingles) + ', ' + IntToStr(NoDoubles) + ', '+ IntToStr(NoTriples) + ', '+ IntToStr(NoTwins) + ', '+
      IntToStr(rm_type) + ', '+ '''' + AC +  '' + ''', ' + IntToStr(mp_type) + ', '+
      ' ''' + FormatDateTime('mm/dd/yyyy', MasterCDS['datein']) + ''', ' +
      ' ''' + FormatDateTime('mm/dd/yyyy', MasterCDS['dateout']) + ''') as [desc] ';
      GPSds.Open;

      if (not GPSds.Eof) and (GPSds['desc']<> null) then
         desc:= VarToStr(GPSds['desc']);

      if Length(Trim(desc)) > 0 then
       begin

          if _VouAccommodationForm_CallType = 2 then
            begin
              if VoucherForm.MasterCds.State = dsBrowse then
                VoucherForm.MasterCds.Edit;

              VoucherForm.MasterCds['Description'] := desc;
              VoucherForm.MasterCds['Modified'] := True;
              VoucherForm.MasterCds['VoucherDate'] := MasterCds['DateIn'];

              VoucherForm.MasterCds.Post;
            end
          else
            begin
              if VouBillForm.VoucherCds.State = dsBrowse then
                VouBillForm.VoucherCds.Edit;

              VouBillForm.VoucherCds['Description'] := desc;
              VouBillForm.VoucherCds['Modified'] := True;
              VouBillForm.VoucherCds['VoucherDate'] := MasterCds['DateIn'];

              VouBillForm.VoucherCds.Post;
            end;

       end;

      OkBtn.ModalResult := mrOK;
      Close;

  GPSds.Close;
  GPSds.Free;
end;

procedure TVouAccommodationForm.MasterCdsBeforePost(DataSet: TDataSet);
var
   GPSds: TSQLDataSet;
   num_pax: integer;
   nosingles, nodoubles, notriples, notwins: integer;
begin
  inherited;
  validateblanks(MasterCdsaddressbook_id,'HOTEL');
  validateblanks(MasterCdsdatein,'DAY IN');
  validateblanks(MasterCdsdateout,'DAY OUT');
  validateblanks(MasterCdsroomtypes_id,'ROOM TYPE');
  validateblanks(MasterCdsmealplans_id,'MEAL PLAN');

  nodoubles:=0;
  nosingles:=0;
  notriples:=0;
  notwins:=0;  
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if MasterCDS['NoOfSingles']<>null then
    nosingles:=MasterCDSnoofsingles.Value;

  if MasterCDS['NoOfDoubles']<>null then
    nodoubles:=MasterCDSnoofdoubles.Value;

  if MasterCDS['NoOfTriples']<>null then
    notriples:=MasterCDSnooftriples.Value;

  if MasterCDS['NoOfTwins']<>null then
    notwins:=MasterCDSnooftwins.Value;


  num_pax := (notriples*3) + (nodoubles*2) + (notwins*2) + nosingles;

  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := 'UPDATE Vouchers '+
      ' SET Pax='+IntToStr(num_pax)+
      ' WHERE Vouchers_id='+IntToStr(MasterCDS['Vouchers_id']);
  GPSds.ExecSQL;
  GPSds.Free;
  
end;

procedure TVouAccommodationForm.MasterCDSBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Modified:=1;
end;

procedure TVouAccommodationForm.MasterCDSBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  Modified:=1;
end;

procedure TVouAccommodationForm.MasterCdsAfterScroll(DataSet: TDataSet);
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
          //CityLCMB.EditValue := GpSds['Cities_id'];
        end;

      GpSds.Free;
    end;

  try
    if (HotelLcmb.EditValue <> null) and (HotelCds.State = dsBrowse) then
      HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
  except
  end;

end;

procedure TVouAccommodationForm.SetAgent;
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MasterCds['Addressbook_id'] <> null then
    begin

      QueryString := 'SELECT Through_Addressbook_id FROM Addressbook ' +
        'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['through_addressbook_id']<>null) then
        begin
          AgentLCMB.EditValue := GpSds['through_addressbook_id'];
        end;

      GpSds.Free;
    end;

end;


procedure TVouAccommodationForm.CityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
      //HotelCds.Refresh;
      //AgentCds.Refresh;
      //HotelCds.Locate('Cities_id',CityLcmb.EditValue,[]);
      //AgentCds.Locate('Cities_id',CityLcmb.EditValue,[]);
  except
  end;
end;

procedure TVouAccommodationForm.RoomTypeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (RoomTypeCds['AC'] <> null) and (masterCds.State in [dsEdit, dsInsert]) then
    MasterCds['AC'] := RoomTypeCds['AC'];
end;

procedure TVouAccommodationForm.HotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if HotelLcmb.EditValue <> null then
      HotelCds.Locate('Addressbook_id',HotelLcmb.EditValue,[]);
  except
  end;

end;

procedure TVouAccommodationForm.cxButton3Click(Sender: TObject);
var
   GPSds :TSQLDataSet;
   x_itineraries_id, x_itinerariesLines_id: integer;
   QueryString: string;
begin
  inherited;

  QueryString := 'SELECT itineraries_id, ItineraryAccommodation_id FROM ItineraryAccommodation ' +
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
      x_itinerariesLines_id := GpSds['ItineraryAccommodation_id'];
    end;

  GpSds.Free;

  if (x_itineraries_id = 0) or (x_itinerariesLines_id = 0) then
    raise exception.create ('Information not available');

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := x_Itineraries_id;
  _BookingDetailsForm_ItinerariesLines_id := x_ItinerariesLines_id;
  _BookingDetailsForm_ItinerariesOptions_id := 2;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TVouAccommodationForm.MasterCDSAddressbook_idChange(
  Sender: TField);
begin
  inherited;
  SetAgent;
end;

procedure TVouAccommodationForm.cxButton1Click(Sender: TObject);
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
  if MasterCds['DateIn'] >= StrToDate('01/07/2017') then
    _CostingTraceForm_Gst := 1;

  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];
  if _VouAccommodationForm_CallType = 2 then
    _CostingTraceForm_VoucherTypes_id := VoucherForm.MasterCds['VoucherTypes_id']
  else
    _CostingTraceForm_VoucherTypes_id := VouBillForm.VoucherCds['VoucherTypes_id'];

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;

end;

procedure TVouAccommodationForm.cxButton4Click(Sender: TObject);
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

  if _VouAccommodationForm_CallType = 2 then
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
