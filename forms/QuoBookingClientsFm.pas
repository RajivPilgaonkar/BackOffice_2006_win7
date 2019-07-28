unit QuoBookingClientsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, FMTBcd, DBClient, Provider, SqlExpr, StdCtrls,
  cxButtons, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDropDownEdit, cxCheckBox, cxDBLookupComboBox,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit,
  cxLabel, cxContainer, cxGroupBox, cxTimeEdit;

type
  TQuoBookingClientsForm = class(TCustomMasterCxGridForm)
    MasterCdsQuoBookingsClients_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsName2: TStringField;
    MasterCdsDateofBirth: TSQLTimeStampField;
    MasterCdsPassportNo: TStringField;
    MasterCdsDateOfIssue: TSQLTimeStampField;
    MasterCdsPlaceOfIssue: TStringField;
    MasterCdsValidTo: TSQLTimeStampField;
    MasterCdsCountries_id: TIntegerField;
    MasterCdsRoomNo: TIntegerField;
    MasterCdsMale: TBooleanField;
    MasterCdsSingleSupplement: TBooleanField;
    MasterCdsresident_countries_id: TIntegerField;
    MasterCdsLeadPaxOrder: TIntegerField;
    CustomMasterCxGridDBTableView1QuoBookingsClients_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Quotations_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Name: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DateofBirth: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1PassportNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DateOfIssue: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1PlaceOfIssue: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ValidTo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Countries_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Male: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SingleSupplement: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1resident_countries_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1LeadPaxOrder: TcxGridDBColumn;
    MasterCdsEmail: TStringField;
    MasterCdsTravelEmail: TStringField;
    MasterCdsPreferredPhone: TStringField;
    MasterCdsEmergencyContact: TStringField;
    MasterCdsEmergencyEmail: TStringField;
    MasterCdsEmergencyHomePhone: TStringField;
    MasterCdsEmergencyMobilePhone: TStringField;
    CustomMasterCxGridDBTableView1Email: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TravelEmail: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1PreferredPhone: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EmergencyContact: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EmergengyEmail: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EmergencyHomePhone: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EmergencyMobilePhone: TcxGridDBColumn;
    MasterCdsPaxPassportName: TStringField;
    CustomMasterCxGridDBTableView1PaxPassportName: TcxGridDBColumn;
    MasterCdsStartDate: TSQLTimeStampField;
    MasterCdsEndDate: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1StartDate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EndDate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1StartTime: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EndTime: TcxGridDBColumn;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesCdscountries_id: TIntegerField;
    CountriesCdscountry: TStringField;
    CountriesDS: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoBookingClientsForm: TQuoBookingClientsForm;
  _QuoBookingClientsForm_Quotations_id: integer;
  _QuoBookingsClientsForm_Level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoBookingClientsForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoBookingsClients';
  MasterKeyField := 'QuoBookingsClients_id';
  AdmLevel := _QuoBookingsClientsForm_Level;

  MasterCds.Filter := 'Quotations_id = ' + IntToStr(_QuoBookingClientsForm_Quotations_id);
  MasterCds.Filtered := True;

  inherited;

  CountriesCds.Open;
end;

procedure TQuoBookingClientsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoBookingClientsForm := nil;
end;

procedure TQuoBookingClientsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Name'] = null) or (Trim(MasterCds['Name']) = '') then
    raise Exception.Create('Please enter the Name.');

  if (MasterCds['Quotations_id'] = null) then
    raise Exception.Create('Please enter the Quotations id');

  if (MasterCds['QuoBookingsClients_id'] = null) then
    raise Exception.Create('Please enter the Quotations Bookings Clients id');

end;

procedure TQuoBookingClientsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Quotations_id'] := _QuoBookingClientsForm_Quotations_id;
  MasterCds['SingleSupplement'] := 0;  
end;

end.
