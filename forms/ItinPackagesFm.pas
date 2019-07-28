unit ItinPackagesFm;

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
  cxLabel, Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGroupBox;

type
  TItinPackagesForm = class(TCustom1M1DForm)
    MasterCdsitinerarypackages_id: TIntegerField;
    MasterCdsitineraries_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsfrom_date: TSQLTimeStampField;
    MasterCdsfrom_time: TSQLTimeStampField;
    MasterCdshotel_addressbook_id: TIntegerField;
    MasterCdsto_time: TSQLTimeStampField;
    MasterCdsto_place: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsremarks: TStringField;
    MasterCdstours: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsfrom_place: TStringField;
    MasterCdsestimatednoofpax: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdssinglesupplement: TIntegerField;
    MasterCdsgeneratevoucher: TBooleanField;
    MasterCdstransport: TBooleanField;
    MasterCdsac: TBooleanField;
    MasterCdsvehicles_id: TIntegerField;
    MasterCdsnoofvehicles: TIntegerField;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsreminder: TSQLTimeStampField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdscancelled: TSQLTimeStampField;
    MasterCdsexpectedamount: TFMTBCDField;
    MasterCdsmasterpackages_id: TIntegerField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdssinglesupplement_resident: TIntegerField;
    MasterCdsnoofpax_resident: TIntegerField;
    MasterCdsquoted: TBCDField;
    Detail1Cdsitinerarypackagestours_id: TIntegerField;
    Detail1Cdsitinerarypackages_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    Panel3: TPanel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label13: TcxLabel;
    PackagesLcmb: TcxDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    GroupBox1: TcxGroupBox;
    Label16: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tourcodes_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxDBCheckBox1: TcxDBCheckBox;
    GroupBox2: TcxGroupBox;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label18: TcxLabel;
    Label17: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    GroupBox3: TcxGroupBox;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label11: TcxLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label12: TcxLabel;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Label1: TcxLabel;
    Label4: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    AutomobileLcmb: TcxDBLookupComboBox;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeDs: TDataSource;
    MasterCdsVoucherNoLookUp: TStringField;
    AutomobileSds: TSQLDataSet;
    AutomobileDsp: TDataSetProvider;
    AutomobileCds: TClientDataSet;
    AutomobileDs: TDataSource;
    PkgAgentLbl: TcxLabel;
    cxDBNavigator1: TcxDBNavigator;
    KeyIdDbText: TDBText;
    cxButton1: TcxButton;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    PackagesCdspackage: TStringField;
    PackagesCdspackages_id: TIntegerField;
    PackagesCdsAddressbook_id: TIntegerField;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    AutomobileCdsVehicle: TStringField;
    AutomobileCdsVehicles_id: TIntegerField;
    AutomobileCdsAddressBook_id: TIntegerField;
    TourCodeCdsItineraries_id: TIntegerField;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxButton3: TcxButton;
    VoucherNoSds: TSQLDataSet;
    VoucherNoDsp: TDataSetProvider;
    VoucherNoCds: TClientDataSet;
    VoucherNoCdsvouchers_id: TIntegerField;
    VoucherNoCdsyearref: TIntegerField;
    VoucherNoCdsvoucherno: TIntegerField;
    VoucherNoDs: TDataSource;
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure TourString;
    procedure GetPackageInfo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure PackagesLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure PackagesCdsAfterScroll(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinPackagesForm: TItinPackagesForm;
  _ItinPackagesForm_Level: Integer;
  _ItinPackagesForm_Mode: String;
  _PkgAddressBook_id: Integer;

implementation

uses BackOfficeDM, ItineraryFm, GeneralUt, BookingDetailsFm;

{$R *.dfm}

function TItinPackagesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
  x_Ac: string;
begin

  x_duplicate := False;

  if MasterCds['AC'] = True then
    x_Ac := ' 1 '
  else
    x_Ac := ' 0 ';

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryPackages ' +
    ' WHERE Packages_id = ' + IntToStr(MasterCds['Packages_id']) +
    ' AND From_Place = ''' + VarToStr(MasterCds['From_Place']) + ''' ' +
    ' AND To_Place = ''' + VarToStr(MasterCds['To_Place']) + ''' ' +
    ' AND AC = ' + x_Ac +
    ' AND SingleSupplement = ' + VarToStr(MasterCds['SingleSupplement']) + ' ' +
    ' AND itineraries_id = ' + IntToStr(MasterCds['itineraries_id']) + ' ';    

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryPackages_id <> ' + IntToStr(MasterCds['ItineraryPackages_id']) + ') ';

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

function TItinPackagesForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryPackagesTours ' +
    'WHERE ItineraryPackages_id = ' + IntToStr(Detail1Cds['ItineraryPackages_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryPackagesTours_id <> ' + IntToStr(Detail1Cds['ItneraryPackagesTours_id']) + ') ';

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

procedure TItinPackagesForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;

  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['ItineraryPackages_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;
end;

procedure TItinPackagesForm.GetPackageInfo;
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
      if GPSds['Organisation'] <> null then
        PkgAgentLbl.Caption := VarToStr( GPSds['Organisation']);
      if GPSds['AddressBook_id'] <> null then
          _PkgAddressBook_id := StrToInt(GPSds['AddressBook_id']);
    end;
  GPSds.Free;
end;

procedure TItinPackagesForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.PackagesCDS.Active := False;
  BackOfficeDataModule.PackagesCDS.Active := True;

  MasterCdsName := 'ItineraryPackages';
  MasterKeyField := 'ItineraryPackages_id';
  Detail1CdsName := 'ItineraryPackagesTours';
  Detail1KeyField := 'ItineraryPackagesTours_id';

//  AdmLevel := _ItinPackagesForm_Level;
  AdmLevel := _ItineraryForm_Level;

  MasterSds.DataSource := ItineraryForm.ItinerariesDs;
  MasterCds.MasterSource := ItineraryForm.ItinerariesDs;

  inherited;

  TourCodeCds.Active := False;
  TourCodeCds.Active := True;
  AutomobileCds.Active := False;
  AutomobileCds.Active := True;

  VoucherNoCds.Active := False;
  VoucherNoCds.Active := True;
  
  if _ItinPackagesForm_Mode = 'I' then
    MasterCds.Insert
  else if (_ItinPackagesForm_Mode = 'E') and (ItineraryForm.ItinPackagesCds['ItineraryPackages_id'] <> null) then
    MasterCds.Locate('ItineraryPackages_id', ItineraryForm.ItinPackagesCds['ItineraryPackages_id'],[]);
end;

procedure TItinPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ItinPackagesForm := nil;
end;

procedure TItinPackagesForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TItinPackagesForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TItinPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdsfrom_place,'"FROM PLACE"');
  validateblanks(MasterCdsfrom_time,'"FROM TIME"');
  validateblanks(MasterCdsto_place,'"TO PLACE"');
  validateblanks(MasterCdsto_time,'"TO TIME"');
  validateblanks(MasterCdspackages_id,'"PACKAGE"');
  validateblanks(MasterCdssinglesupplement,'"SINGLE SUPLEMENT"');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  //If MasterCds.State = dsInsert then
  //  MasterCds['itineraries_id'] := _Itineraries_id;

end;

procedure TItinPackagesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['ItineraryPackages_id'] = null) then
    raise Exception.Create('Please enter the Package Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TItinPackagesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM ItineraryPackagesTours ' +
    'WHERE ItineraryPackages_id = ' + IntToStr(MasterCds['ItineraryPackages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TItinPackagesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['generatevoucher'] := True;
  MasterCds['AC'] := True;
  MasterCds['Transport'] := True;
  PkgAgentLbl.Caption := '';    
end;

procedure TItinPackagesForm.PackagesLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  GetPackageInfo;
//  PackagesCds.Locate('Addressbook_id', PackagesCdsAddressbook_id.Value,[]);
  try
    if (PackagesLcmb.EditValue <> null) and (PackagesCds.State <> dsInactive) then
      PackagesCds.Locate('AddressBook_id',_PkgAddressBook_id,[]);
//    AutomobileCds.Refresh;
    if (AutomobileCds.State <> dsInactive) then
      begin
        AutomobileCds.Locate('Addressbook_id',_PkgAddressBook_id,[]);
        AutomobileLcmb.Text := AutomobileCdsVehicle.Value;
      end;
  except
  end;
  
end;

procedure TItinPackagesForm.PackagesCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  //GetPackageInfo;
end;

procedure TItinPackagesForm.cxButton3Click(Sender: TObject);
begin
  inherited;

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := MasterCds['Itineraries_id'];
  _BookingDetailsForm_ItinerariesLines_id := MasterCds['ItineraryPackages_id'];;
  _BookingDetailsForm_ItinerariesOptions_id := 5;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TItinPackagesForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  GetPackageInfo;

  if MasterCds['Vouchers_id'] <> null then
    MasterCds.Locate('Vouchers_id',MasterCds['Vouchers_id'],[]);

end;

procedure TItinPackagesForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

end.

