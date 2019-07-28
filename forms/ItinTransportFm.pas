unit ItinTransportFm;

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
  cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxTimeEdit, cxLabel, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox;

type
  TItinTransportForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label13: TcxLabel;
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
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    GroupBox3: TcxGroupBox;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    cxDBNavigator1: TcxDBNavigator;
    KeyIdDbText: TDBText;
    cxButton1: TcxButton;
    MasterCdsitinerarytransport_id: TIntegerField;
    MasterCdsitineraries_id: TIntegerField;
    MasterCdsfromplace: TStringField;
    MasterCdsfromdate: TSQLTimeStampField;
    MasterCdsfromtime: TSQLTimeStampField;
    MasterCdstoplace: TStringField;
    MasterCdstodate: TSQLTimeStampField;
    MasterCdstotime: TSQLTimeStampField;
    MasterCdsremarks: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstours: TStringField;
    MasterCdsestimatednoofpax: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdsac: TBooleanField;
    MasterCdsgenvoucher: TBooleanField;
    MasterCdsdropoffdays: TIntegerField;
    MasterCdsvehicles_id: TIntegerField;
    MasterCdsnoofvehicles: TIntegerField;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsreminder: TSQLTimeStampField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdscancelled: TSQLTimeStampField;
    MasterCdsexpectedamount: TBCDField;
    MasterCdskms: TIntegerField;
    MasterCdsmastertransport_id: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdsquoted: TBCDField;
    MasterCdsdropoffkms: TIntegerField;
    Detail1Cdsitinerarytransporttours_id: TIntegerField;
    Detail1Cdsitinerarytransport_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    Label28: TcxLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    FromPlaceEdit: TcxDBTextEdit;
    ToPlaceEdit: TcxDBTextEdit;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    VehicleTypeLcmb: TcxDBLookupComboBox;
    cxDistanceBtn: TcxButton;
    Label32: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label33: TcxLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeDs: TDataSource;
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
    MasterCdsVoucherNoLookUp: TStringField;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsItineraries_id: TIntegerField;
    VehicleCdsAddressBook_id: TIntegerField;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxButton3: TcxButton;
    VoucherNoSds: TSQLDataSet;
    VoucherNoDsp: TDataSetProvider;
    VoucherNoCds: TClientDataSet;
    VoucherNoCdsvouchers_id: TIntegerField;
    VoucherNoCdsyearref: TIntegerField;
    VoucherNoCdsvoucherno: TIntegerField;
    VoucherNoDs: TDataSource;
    Label17: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    MasterCdsDriveTypes_id: TIntegerField;
    MasterCdsCarHireGroups_id: TIntegerField;
    Label18: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
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
    procedure cxDistanceBtnClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinTransportForm: TItinTransportForm;
  _ItinTransportForm_Level: Integer;
  _ItinTransportForm_Mode: String;

implementation

uses BackOfficeDM, ItineraryFm, GeneralUt, BookingDetailsFm;

{$R *.dfm}

function TItinTransportForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryTransport ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND From_Cities_id = ' + DateToStr(MasterCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_Cities_id']) + ' '+
    'AND FromDate = ' + DateToStr(MasterCds['FromDate']) + ' ' +
    'AND ToDate = ' + DateToStr(MasterCds['ToDate']) + ' ' +
    ' AND itineraries_id = ' + IntToStr(MasterCds['itineraries_id']) + ' ';    

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryTransport_id <> ' + IntToStr(MasterCds['ItineraryTransport_id']) + ') ';

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

function TItinTransportForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryTransportTours ' +
    'WHERE ItineraryTransport_id = ' + IntToStr(Detail1Cds['ItineraryTransport_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryTransportTours_id <> ' + IntToStr(Detail1Cds['ItineraryTransportTours_id']) + ') ';

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

procedure TItinTransportForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;

  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['ItineraryTransport_id']);

  MasterCds.Post;

  Detail1Cds.Bookmark := x_BookMark;
end;

procedure TItinTransportForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.DriveTypesCds.Active := False;
  BackOfficeDataModule.DriveTypesCds.Active := True;

  BackOfficeDataModule.CarHireGroupsCds.Active := False;
  BackOfficeDataModule.CarHireGroupsCds.Active := True;

  AgentCds.Active := False;
  AgentCds.Active := True;

  VehicleCds.Active := False;
  VehicleCds.Active := True;

  TourCodeCds.Active := False;
  TourCodeCds.Active := True;

  VoucherNoCds.Active := False;
  VoucherNoCds.Active := True;

  MasterCdsName := 'ItineraryTransport';
  MasterKeyField := 'ItineraryTransport_id';
  Detail1CdsName := 'ItineraryTransportTours';
  Detail1KeyField := 'ItineraryTransportTours_id';

//  AdmLevel := _ItinTransportForm_Level;
  AdmLevel := _ItineraryForm_Level;

  MasterSds.DataSource := ItineraryForm.ItinerariesDs;
  MasterCds.MasterSource := ItineraryForm.Itinerariesds;

  inherited;

  if _ItinTransportForm_Mode = 'I' then
    MasterCds.Insert
  else if (_ItinTransportForm_Mode = 'E') and (ItineraryForm.ItinTransportCds['ItineraryTransport_id'] <> null) then
    MasterCds.Locate('ItineraryTransport_id', ItineraryForm.ItinTransportCds['ItineraryTransport_id'],[]);
 
end;

procedure TItinTransportForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ItinTransportForm := nil;
end;

procedure TItinTransportForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TItinTransportForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TItinTransportForm.MasterCdsBeforePost(DataSet: TDataSet);
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
  
  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

//  If MasterCds.State = dsInsert then
//    MasterCds['itineraries_id'] := _Itineraries_id;

end;

procedure TItinTransportForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['ItineraryTransport_id'] = null) then
    raise Exception.Create('Please enter the Transport Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TItinTransportForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM ItineraryTransportTours ' +
    'WHERE ItineraryTransport_id = ' + IntToStr(MasterCds['ItineraryTransport_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TItinTransportForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['genvoucher'] := True;
  MasterCds['AC'] := True;

  CityLcmb.EditValue := 0;
end;

procedure TItinTransportForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  CityLCMB.EditValue := 0;

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

procedure TItinTransportForm.CityLcmbPropertiesEditValueChanged(
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

procedure TItinTransportForm.cxDistanceBtnClick(Sender: TObject);
var
   GpSds : TSQLDataSet;
begin
  inherited;
  if (MasterCds['Itineraries_id']=null) or (MasterCds['From_Cities_id']=null) or (MasterCds['To_Cities_id']=null) then
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

procedure TItinTransportForm.cxButton3Click(Sender: TObject);
begin
  inherited;

  _BookingDetailsForm_Level := 4;
  _BookingDetailsForm_Mode := 2;
  _BookingDetailsForm_itineraries_id := MasterCds['Itineraries_id'];
  _BookingDetailsForm_ItinerariesLines_id := MasterCds['ItineraryTransport_id'];;
  _BookingDetailsForm_ItinerariesOptions_id := 4;

  if BookingDetailsForm = nil then
    Application.CreateForm(TBookingDetailsForm, BookingDetailsForm);

  BookingDetailsForm.ShowModal;

  BookingDetailsForm.Free;
  BookingDetailsForm := nil;

end;

procedure TItinTransportForm.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

end.

