unit BlockBkgPackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDropDownEdit,
  cxCalendar, cxContainer, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTimeEdit, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel,
  cxGroupBox;

type
  TBlockBkgPackagesForm = class(TCustomMasterCxGridForm)
    MasterCdsblockbookingpackages_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsfrom_date: TSQLTimeStampField;
    MasterCdsfrom_time: TSQLTimeStampField;
    MasterCdsfrom_place: TStringField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsto_time: TSQLTimeStampField;
    MasterCdsto_place: TStringField;
    MasterCdstourref: TStringField;
    MasterCdsreservedby: TStringField;
    MasterCdsreservedon: TSQLTimeStampField;
    MasterCdsconfirmedon: TSQLTimeStampField;
    MasterCdscancelledon: TSQLTimeStampField;
    MasterCdsnoconfirmed: TIntegerField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    CustomMasterCxGridDBTableView1from_time: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1from_place: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1packages_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1to_time: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1to_place: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tourref: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1reservedon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1confirmedon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1cancelledon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1noconfirmed: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1noofpax: TcxGridDBColumn;
    GroupBox2: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    CityLCMB: TcxLookupComboBox;
    FromDateEdit: TcxDateEdit;
    ToDateEdit: TcxDateEdit;
    HotelLCMB: TcxLookupComboBox;
    GroupBox3: TcxGroupBox;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    NumConfirmed: TcxTextEdit;
    ConfirmedDate: TcxDateEdit;
    ReservedDate: TcxDateEdit;
    CancelledDate: TcxDateEdit;
    CustomMasterCxGridDBTableView1From_Date: TcxGridDBColumn;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    procedure FilterBlockBkg;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CityLCMBExit(Sender: TObject);
    procedure CityLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure HotelLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure HotelLCMBExit(Sender: TObject);
    procedure FromDateEditExit(Sender: TObject);
    procedure FromDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure ToDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure ToDateEditExit(Sender: TObject);
    procedure CityLCMBPropertiesCloseUp(Sender: TObject);
    procedure CityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BlockBkgPackagesForm: TBlockBkgPackagesForm;
  _BlockBkgPackagesForm_Level: Integer;
implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TBlockBkgPackagesForm.FilterBlockBkg;
begin
  try
    MasterCds.Active := False;
    MasterCds.Filter := 'Addressbook_id = ' + IntToStr(HotelLCMB.EditValue) +
      ' AND from_date >= ''' + FromDateEdit.Text + '''' +
      ' AND from_date <= ''' + ToDateEdit.Text + '''';
    MasterCds.Filtered := True;
    MasterCds.Active := True;
  except
    Abort;
  end;
end;

procedure TBlockBkgPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  BlockBkgPackagesForm := nil;
end;

procedure TBlockBkgPackagesForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.CitiesSds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := False;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.PackagesCDS.Active := False;
  BackOfficeDataModule.PackagesCDS.Active := True;

  MasterCdsName := 'BlockbookingPackages';
  MasterKeyField := 'BlockbookingPackages_id';

  AdmLevel := _BlockBkgPackagesForm_Level;

  inherited;

  HotelCds.Active := False;
  HotelCds.Active := True;
  FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.CityLCMBExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.CityLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.HotelLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.HotelLCMBExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.FromDateEditExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.FromDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.ToDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.ToDateEditExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgPackagesForm.CityLCMBPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  HotelLCMB.EditValue := HotelCdsAddressbook_id.Value;
end;

procedure TBlockBkgPackagesForm.CityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if CityLCMB.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLCMB.EditValue,[]);
      HotelCds.Refresh;
      HotelCds.Locate('Cities_id',CityLCMB.EditValue,[]);
  except
  end;

end;

procedure TBlockBkgPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if HotelLCMB.EditValue >0 then
    MasterCds['AddressBook_id'] := HotelLCMB.EditValue;
end;

procedure TBlockBkgPackagesForm.SpeedButton1Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
begin
  inherited;
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := 'UPDATE  BlockBookingPackages SET NoConfirmed = ' + Trim(NumConfirmed.Text) + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
    ' AND From_Date >= ''' +
      FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND From_Date <= ''' +
      FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;

  GPSds.ExecSQL;

  MasterCds.Refresh;

end;

procedure TBlockBkgPackagesForm.SpeedButton2Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
begin
  inherited;
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (ConfirmedDate.Text) = '' then
    begin
      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'UPDATE BlockBookingPackages SET ConfirmedOn = NULL ' +
        ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
        ' AND From_Date >= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
        ' AND From_Date <= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
      GPSds.ExecSQL;
    end
  else
    begin
      GPSds.Close;
      GPSds.CommandText := '';

      if MasterCds['ReservedOn'] <> null then
       begin
         if FormatDateTime('dd/mm/yyyy',StrToDate(ConfirmedDate.Text)) < MasterCds['ReservedOn'] then
           Raise Exception.Create('Reservation should be prior to the confirmation');
       end ;

      GPSds.CommandText := ' UPDATE  BlockBookingPackages ' +
         ' SET ConfirmedOn =  ''' + FormatDateTime('mm/dd/yyyy',StrToDate(ConfirmedDate.Text)) + ''' ' +
         ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
         ' AND From_Date >= ''' + FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
         ' AND From_Date <= ''' + FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;

      GPSds.ExecSQL;
    end;

  MasterCds.Refresh;

end;

procedure TBlockBkgPackagesForm.SpeedButton3Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
begin
  inherited;
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (ReservedDate.Text) = '' then
    begin
      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'UPDATE BlockBookingPackages SET ReservedOn = NULL ' +
        ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
        ' AND from_date >= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
        ' AND from_date <= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
      GPSds.ExecSQL;
    end
  else
    begin
      GPSds.Close;
      GPSds.CommandText := '';

      if MasterCds['confirmedon'] <> null then
       begin
         if FormatDateTime('dd/mm/yyyy',StrToDate(ReservedDate.Text)) > MasterCds['confirmedon'] then
            Raise Exception.Create('Reservation should be prior to confirmation');
       end;

      GPSds.CommandText := 'UPDATE  BlockBookingPackages SET ReservedOn = ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ReservedDate.Text)) + ''' ' +
        ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
        ' AND from_date >= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
        ' AND from_date <= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
      GPSds.ExecSQL;
    end;

  MasterCds.Refresh;
end;

procedure TBlockBkgPackagesForm.SpeedButton4Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
begin
  inherited;
  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (CancelledDate.Text) = '' then
    begin
      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'UPDATE BlockBookingPackages SET CancelledOn = NULL ' +
        ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
        ' AND from_date >= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
        ' AND from_date <= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
      GPSds.ExecSQL;
    end
  else
    begin
      if (FormatDateTime('dd/mm/yyyy',StrToDate(CancelledDate.Text)) < MasterCds['ReservedOn']) and (FormatDateTime('dd/mm/yyyy',StrToDate(CancelledDate.Text)) < MasterCds['ConfirmedOn']) then
        Raise Exception.Create('Cancellation of a ticket can be achieved only after reservation or confirmation');

      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'UPDATE BlockBookingPackages SET CancelledOn = ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(CancelledDate.Text)) + ''' ' +
        ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
        ' AND from_date >= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
        ' AND from_date <= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
      GPSds.ExecSQL;
    end;

  MasterCds.Refresh;
end;

procedure TBlockBkgPackagesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  FilterBlockBkg;
end;

end.
