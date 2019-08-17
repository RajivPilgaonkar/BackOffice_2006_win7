unit VouPackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxDBLookupComboBox, cxCheckBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxMemo, cxContainer, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxTimeEdit,
  cxLookAndFeelPainters, cxButtons, DBCtrls, cxNavigator, cxDBNavigator,
  cxLabel, cxDBLabel, CustomMasterFm, Menus, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TVouPackagesForm = class(TCustomMasterForm)
    Panel3: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PackagesLcmb: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    Label11: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label12: TLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    AutomobileSds: TSQLDataSet;
    AutomobileDsp: TDataSetProvider;
    AutomobileCds: TClientDataSet;
    AutomobileDs: TDataSource;
    PkgAgentLbl: TLabel;
    CancelBtn: TcxButton;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    PackagesCdspackage: TStringField;
    PackagesCdspackages_id: TIntegerField;
    PackagesCdsAddressbook_id: TIntegerField;
    AutomobileCdsVehicle: TStringField;
    AutomobileCdsVehicles_id: TIntegerField;
    AutomobileCdsAddressBook_id: TIntegerField;
    Label19: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label17: TLabel;
    AutomobileLcmb: TcxDBLookupComboBox;
    Label20: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    OkBtn: TcxButton;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    MasterCDSvoucherspackages_id: TIntegerField;
    MasterCDSvouchers_id: TIntegerField;
    MasterCDSpackages_id: TIntegerField;
    MasterCDSfrom_date: TSQLTimeStampField;
    MasterCDSfrom_time: TSQLTimeStampField;
    MasterCDShotel_addressbook_id: TIntegerField;
    MasterCDSto_time: TSQLTimeStampField;
    MasterCDSto_place: TStringField;
    MasterCDSfrom_place: TStringField;
    MasterCDStransport: TBooleanField;
    MasterCDSac: TBooleanField;
    MasterCDSnoofpax: TIntegerField;
    MasterCDSsinglesupplement: TIntegerField;
    MasterCDSvehicles_id: TIntegerField;
    MasterCDSnoofvehicles: TIntegerField;
    MasterCDSsinglesupplement_resident: TIntegerField;
    MasterCDSnoofpax_resident: TIntegerField;
    MasterCDSAddressbook_id: TIntegerField;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    procedure GetPackageInfo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure PackagesLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure PackagesCdsAfterScroll(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouPackagesForm: TVouPackagesForm;
  _VouPackagesForm_Level: Integer;
  _VouPackagesForm_Mode: String;
  _PkgAddressBook_id: Integer;

implementation

uses BackOfficeDM, GeneralUt, VouBillFm, BookingDetailsFm, CostingTraceFm,
  MainFm;

{$R *.dfm}

procedure TVouPackagesForm.GetPackageInfo;
var
  GPSds : TSQLDataSet;
begin

  if PackagesLcmb.EditValue = null then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GPSds.CommandType := ctQuery;
  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := ' SELECT DISTINCT p.AddressBook_id, Organisation FROM Packages p, AddressBook a '+
    ' WHERE p.AddressBook_id = a.AddressBook_id '+
    ' AND p.Packages_id = '+ IntToStr(PackagesLcmb.EditValue);
  GPSds.Open;

  if (not GPSds.Eof) then
    begin
      if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
        if GPSds['AddressBook_id'] <> null then
          PkgAgentLbl.Caption := VarToStr( GPSds['Organisation']);
          _PkgAddressBook_id := StrToInt(GPSds['AddressBook_id']);
    end;
  GPSds.Free;
end;

procedure TVouPackagesForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.PackagesCDS.Active := False;
  BackOfficeDataModule.PackagesCDS.Active := True;

  AutomobileCds.Active := False;
  AutomobileCds.Active := True;

  MasterTblName := 'VouchersPackages';
  MasterKeyField := 'VouchersPackages_id';

//  AdmLevel := _VouPackagesForm_Level;
  AdmLevel := _VouBillForm_Level;
  inherited;

//  MasterCds.MasterSource := VouBillForm.VoucherDs;

  Self.Height :=345;
  Self.Width := 505;

end;

procedure TVouPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VouPackagesForm := nil;
end;

procedure TVouPackagesForm.CancelBtnClick(Sender: TObject);
begin
  inherited;
  if (MasterCDS.State = dsEdit) or (MasterCDS.State = dsInsert) then
    begin
      MasterCDS.Cancel;
    end;
  Close;
end;    

procedure TVouPackagesForm.OkBtnClick(Sender: TObject);
var
   x_Ac, X_transport : String;
   x_NoofPax, x_SingleSupps,
   x_numvehicles, x_vehicles_id: Integer;
   Desc: String;

   GPSds : TSQLDataSet;
   Vou_Changed: String;
begin
  inherited;

  Vou_Changed:='0';
  //x_numvehicles:=0;
  x_vehicles_id:=0;
   
  if (VouBillForm.VoucherCds['Checked'] = True) then
  begin
     ShowMessage('Voucher Already Checked');
     Exit;
  end;

   if MasterCDS['packages_id']=null then
   Begin
      Raise Exception.Create('Please enter the package');
      exit;
   end;
   if MasterCDS['from_date']=null then
   Begin
      Raise Exception.Create('Please enter the package date');
      exit;
   end;

   if MasterCDS['ac']=True then
      x_Ac:='1'
   else
      x_Ac:='0';

   if MasterCDS['transport']=True then
   begin
      if MasterCDS['vehicles_id']= null then
      begin
         Raise Exception.Create('Please enter the vehicle');
         Exit;
      end;

      X_transport:='1'
   end
   else
      X_transport:='0';

   if MasterCDS['noofpax']= null then
      x_NoofPax:=0
   else
      x_NoofPax:= MasterCDS['noofpax'];

   if MasterCDS['singlesupplement']=null then
      x_SingleSupps:=0
   else
      x_SingleSupps:= MasterCDS['singlesupplement'];

   if MasterCDS['noofvehicles']=null then
      x_numvehicles:=0
   else
      x_numvehicles:=MasterCDS['noofvehicles'];

   if  MasterCDS.State <> dsBrowse then
   begin
       MasterCDS.Post;
       Vou_Changed:='1';
   end;

   GPSds := TSQLDataSet.Create(nil);
   GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
   GPSds.Close;
   GPSds.CommandText := '';
   GPSds.CommandText := 'SELECT dbo.fn_PackageDesc ('+ IntToStr(MasterCDS['packages_id']) + ',' + IntToStr(x_NoofPax) + ',' + IntToStr(x_SingleSupps) +
                 ', ''' + FormatDateTime('dd/mm/yyyy', MasterCDS['from_date']) + ''' ,' + X_transport + ', '+ IntToStr(x_numvehicles)  + ', ' +
                 IntToStr(x_vehicles_id) + ' ,' + x_Ac + ') as [desc]' ;
   GPSds.Open;

   if (not GPSds.eof) and (GPSds['desc']<>null) then
       Desc:= GPSds['desc'];

      if Length(Trim(desc)) <> 0 then
       begin
          GPSds.Close;
          GPSds.CommandText := '';
          GPSds.CommandText := 'UPDATE Vouchers SET Description = ''' + desc + ''' ' +
            ' ,modified = '+ Vou_Changed +', voucherdate = ''' + FormatDateTime('dd/mm/yyyy', MasterCDS['from_date']) + ''' ' +
            ' where vouchers_id = ' + IntToStr(MasterCDSVouchers_id.Value);
          GPSds.ExecSQL;
       end;
      GPSds.Close;
      GPSds.Free;

  VouBillForm.VoucherCds.Refresh;
  OkBtn.ModalResult := mrOK;
  Close;
end;

procedure TVouPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdsfrom_place,'"FROM PLACE"');
  validateblanks(MasterCdsfrom_time,'"FROM TIME"');
  validateblanks(MasterCdsto_place,'"TO PLACE"');
  validateblanks(MasterCdsto_time,'"TO TIME"');
  validateblanks(MasterCdspackages_id,'"PACKAGE"');
  validateblanks(MasterCdssinglesupplement,'"SINGLE SUPLEMENT"');

end;

procedure TVouPackagesForm.PackagesLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  GetPackageInfo;
  try
    if (PackagesLcmb.EditValue <> null) and (MasterCds.State in [dsinsert,dsEdit]) then
      begin
        PackagesCds.Locate('Packages_id',PackagesLcmb.EditValue,[]);
        PackagesCds.Locate('AddressBook_id',_PkgAddressBook_id,[]);
        MasterCds['Addressbook_id'] := _PkgAddressBook_id;
//        MasterCds['Addressbook_id'] := PackagesCds['Addressbook_id'];
//    AutomobileCds.Refresh;
//    AutomobileCds.Locate('Addressbook_id',_PkgAddressBook_id,[]);
//    AutomobileLcmb.Text := AutomobileCdsVehicle.Value;
      end;
  except
  end;

end;

procedure TVouPackagesForm.PackagesCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  GetPackageInfo;
end;


procedure TVouPackagesForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;

{  if MasterCds['packages_id'] <> null then
    begin

      QueryString := 'SELECT addressbook_id FROM packages ' +
        'WHERE packages_id = ' + IntToStr(MasterCds['packages_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['Addressbook_id']<>null) then
        begin
          PackageAgent.Caption := GpSds['Addressbook_id'];
        end;

      GpSds.Free;

    end;

  if MasterCds.State <> dsInsert  then
  begin
    GetPackageInfo;
    Fill_ToDay;
  end;  }
end;

procedure TVouPackagesForm.cxButton3Click(Sender: TObject);
var
   GPSds :TSQLDataSet;
   x_itineraries_id, x_itinerariesLines_id: integer;
   QueryString: string;
begin
  inherited;

  QueryString := 'SELECT itineraries_id, ItineraryPackages_id FROM ItineraryPackages ' +
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
      x_itinerariesLines_id := GpSds['ItineraryPackages_id'];
    end;

  GpSds.Free;

  if (x_itineraries_id = 0) or (x_itinerariesLines_id = 0) then
    raise exception.create ('Information not available');

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := x_Itineraries_id;
  _BookingDetailsForm_ItinerariesLines_id := x_ItinerariesLines_id;
  _BookingDetailsForm_ItinerariesOptions_id := 5;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TVouPackagesForm.cxButton1Click(Sender: TObject);
begin
  inherited;

  _CostingTraceForm_Level := GetUserLevel(g_users_id, 9080);

  If _CostingTraceForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;
    
  _CostingTraceForm_Vouchers_id := MasterCds['Vouchers_id'];
  _CostingTraceForm_VoucherTypes_id := VouBillForm.VoucherCds['VoucherTypes_id'];  

  if CostingTraceForm = nil then
    Application.CreateForm(TCostingTraceForm, CostingTraceForm);

  CostingTraceForm.ShowModal;

  CostingTraceForm.Free;
  CostingTraceForm := nil;


end;

procedure TVouPackagesForm.cxButton4Click(Sender: TObject);
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

