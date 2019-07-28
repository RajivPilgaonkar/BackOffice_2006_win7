unit MasterPackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  DBCtrls, cxNavigator, cxDBNavigator, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit, cxSpinEdit, cxTimeEdit,
  cxMemo, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxTextEdit, DBClient,
  Provider, SqlExpr, ExtCtrls, cxLookAndFeelPainters, cxButtons, cxLabel,
  cxDBLabel, Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGroupBox;

type
  TMasterPackagesForm = class(TCustom1M1DForm)
    GroupBox2: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    KeyIdDbText: TDBText;
    MasterCdsmasterpackages_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsfrom_day: TIntegerField;
    MasterCdsfrom_time: TSQLTimeStampField;
    MasterCdsfrom_addressbook_id: TIntegerField;
    MasterCdsto_time: TSQLTimeStampField;
    MasterCdsto_place: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsremarks: TStringField;
    MasterCdstours: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsfrom_place: TStringField;
    Detail1Cdsmasterpackagestours_id: TIntegerField;
    Detail1Cdsmasterpackages_id: TIntegerField;
    Detail1Cdstourcodes_id: TIntegerField;
    PackagesLCmb: TcxDBLookupComboBox;
    Label17: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    PackagesDs: TDataSource;
    CityLCmb: TcxLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourcode: TStringField;
    TourCodeCdsMasters_id: TIntegerField;
    TourCodeDs: TDataSource;
    cxDBNavigator1: TcxDBNavigator;
    cxButton1: TcxButton;
    UpdateBtn: TcxButton;
    PackagesCdspackage: TStringField;
    PackagesCdspackages_id: TIntegerField;
    PackagesCdsaddressbook_id: TIntegerField;
    PackagesCdsfrom_cities_id: TIntegerField;
    PackagesCdsorganisation: TStringField;
    cxDBLabel1: TcxDBLabel;
    MasterCdsPackageAgentLookup: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDS: TDataSource;
    HotelLcmb: TcxDBLookupComboBox;
    cxDurationLabel: TcxLabel;
    cxDaysOfOperationLabel: TcxLabel;
    cxFromCityLabel: TcxLabel;
    cxToCityLabel: TcxLabel;
    cxToDayLabel: TcxLabel;
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    procedure TourString;
    procedure GetPackageInfo;
    procedure Fill_ToDay;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure PackagesLCmbClick(Sender: TObject);
    procedure UpdateBtnClick(Sender: TObject);
    procedure CityLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure PackagesLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdspackages_idChange(Sender: TField);
    procedure MasterCdsfrom_dayChange(Sender: TField);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure CustomMasterCxGridDBTableView1DblClick(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterPackagesForm: TMasterPackagesForm;
  _MasterPackagesForm_Mode: String;
  _MasterPackagesForm_Level: Integer;

implementation

uses BackOfficeDM, MasterFm, GeneralUt;

{$R *.dfm}

function TMasterPackagesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterPackages ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND Packages_id = ' + IntToStr(MasterCds['Packages_id']) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND From_Time = ''' + FormatDateTime('hh:mm',MasterCds['from_time']) + ''' ' +
    'AND From_Place = ''' + VarToStr(MasterCds['From_place']) + ''' ' +
    'AND To_Place = ''' + VarToStr(MasterCds['To_place']) + ''' ' +
    'AND from_Addressbook_id = ' + IntToStr(MasterCds['from_Addressbook_id']) + ' ' ;

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterPackages_id <> ' + IntToStr(MasterCds['MasterPackages_id']) + ') ';

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

function TMasterPackagesForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterPackagesTours ' +
    'WHERE MasterPackages_id = ' + IntToStr(Detail1Cds['MasterPackages_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(Detail1Cds['TourCodes_id'])  + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterPackagesTours_id <> ' + IntToStr(Detail1Cds['MasterPackagesTours_id']) + ') ';

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

procedure TMasterPackagesForm.TourString;
var
  x_BookMark: TBookMarkStr;
begin
  inherited;
  x_BookMark := Detail1Cds.Bookmark;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := BuildTourString(Detail1CdsName,MasterKeyField, MasterCDS['MasterPackages_id']);

  MasterCds.Post;
  Detail1Cds.Bookmark := x_BookMark;
end;

procedure TMasterPackagesForm.GetPackageInfo;
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
  GPSds.CommandText := ' SELECT p.duration, p.daysofoperation, p.from_cities_id,  p.to_cities_id,  '+
                ' p.from_time,  p.to_time, c1.city as FromCity, c2.City as ToCity '+
                ' FROM packages p LEFT JOIN Cities c1 ON p.from_cities_id = c1.cities_id '+
                'LEFT JOIN Cities c2 ON p.to_cities_id = c2.cities_id ' +
                ' WHERE p.packages_id = '+ vartostr(PackagesLCmb.EditValue);
  GPSds.Open;

  if (not GPSds.Eof) then
    begin

      if MasterCds.State = dsInsert then
        begin

          if GPSds['from_time'] <> null then
            MasterCds['from_time'] := GPSds['from_time'];

          if GPSds['to_time'] <> null then
            MasterCds['to_time'] := GPSds['to_time'];

        end;

      if GPSds['FromCity'] <> null then
        cxFromCityLabel.Caption := GPSds['FromCity'];

      if GPSds['ToCity'] <> null then
        cxToCityLabel.Caption := GPSds['ToCity'];

      if GPSds['duration'] <> null then
        cxDurationLabel.Caption := GPSds['duration'];

      if GpSds['DaysOfOperation'] <> null then
         cxDaysOfOperationLabel.Caption := DaysToStr(GPSds['DaysOfOperation']);

    end;

  GPSds.Free;

end;

procedure TMasterPackagesForm.Fill_ToDay;
var
  GPSds : TSQLDataSet;
begin

  if (MasterCds['From_Day'] = null) or (MasterCds['Packages_id'] = null) then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GPSds.CommandType := ctQuery;
  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := ' SELECT (Coalesce('+IntToStr(MasterCdsfrom_day.Value)+ ',0) + CAST(SUBSTRING(Duration,1,2)AS INTEGER)) AS today ' +
               ' FROM Packages  WHERE  packages_id = '+ IntToStr(MasterCdspackages_id.Value) ;
  GPSds.Open;

  if (not GpSds.EOF) or (GPSds['today'] <> null) then
    cxToDayLabel.Caption := IntToStr(GPSds['today']);

  GPSds.Close;
  GPSds.Free;
end;

procedure TMasterPackagesForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;

  PackagesCds.Active := False;
  PackagesCds.Active := True;

  HotelCds.Active := False;
  HotelCds.Active := True;

  BackOfficeDataModule.TourCodeCds.Active := False;
  BackOfficeDataModule.TourCodeCds.Active := True;

  MasterCdsName := 'MasterPackages';
  MasterKeyField := 'MasterPackages_id';
  Detail1CdsName := 'MasterPackagesTours';
  Detail1KeyField := 'MasterPackagesTours_id';

  AdmLevel := _MasterForm_Level;

  MasterSds.DataSource := MasterForm.MasterDs;  
  MasterCds.MasterSource := MasterForm.MasterDs;

  inherited;

  if _MasterPackagesForm_Mode = 'I' then
    MasterCds.Insert
  else if (_MasterPackagesForm_Mode = 'E') and (MasterForm.PackagesCds['MasterPackages_id'] <> null) then
    MasterCds.Locate('MasterPackages_id', MasterForm.PackagesCds['MasterPackages_id'],[]);

end;

procedure TMasterPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterPackagesForm := nil;
end;

procedure TMasterPackagesForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMasterPackagesForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  TourString;
end;

procedure TMasterPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCdspackages_id,'"PACKAGE"');
  validateblanks(MasterCdsaddressbook_id,'"PACKAGE AGENT"');
  validateblanks(MasterCdsfrom_addressbook_id,'"HOTEL"');
  validateblanks(MasterCdsfrom_day,'"FROM DAY"');
  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterPackagesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Detail1Cds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (Detail1Cds['MasterPackages_id'] = null) then
    raise Exception.Create('Please enter the Packages Details first');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');
end;

procedure TMasterPackagesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterPackagesTours ' +
    'WHERE MasterPackages_id = ' + IntToStr(MasterCds['MasterPackages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TMasterPackagesForm.MasterCdsAfterScroll(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MasterCds['packages_id'] <> null then
    begin

      QueryString := 'SELECT from_cities_id FROM packages ' +
        'WHERE packages_id = ' + IntToStr(MasterCds['packages_id'])  + ' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['from_cities_id']<>null) then
        begin
          CityLCMB.EditValue := GpSds['from_Cities_id'];
        end;

      GpSds.Free;

    end;

  if MasterCds.State <> dsInsert  then
  begin
    GetPackageInfo;
    Fill_ToDay;
  end;
end;

procedure TMasterPackagesForm.PackagesLCmbClick(Sender: TObject);
begin
  inherited;
  GetPackageInfo;
end;

procedure TMasterPackagesForm.UpdateBtnClick(Sender: TObject);
begin
  inherited;
  TourString;
end;

procedure TMasterPackagesForm.CityLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if CityLCmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLCmb.EditValue,[]);
  except
  end;
end;

procedure TMasterPackagesForm.PackagesLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if (PackagesLCmb.EditValue <> null) and (MasterCds.State in [dsinsert,dsEdit]) then
      begin
        PackagesCds.Locate('Packages_id',packagesLcmb.EditValue,[]);
        MasterCds['Addressbook_id'] := PackagesCds['Addressbook_id'];
      end;
  except
  end;

end;

procedure TMasterPackagesForm.MasterCdspackages_idChange(Sender: TField);
begin
  inherited;
  Fill_ToDay;
end;

procedure TMasterPackagesForm.MasterCdsfrom_dayChange(Sender: TField);
begin
  inherited;
  Fill_ToDay;
end;

procedure TMasterPackagesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CityLCMB.EditValue := 0;
  cxDurationLabel.Caption := '';
  cxDaysOfoperationLabel.Caption := '';
  cxFromCityLabel.Caption := '';
  cxToCityLabel.Caption := '';
  cxToDayLabel.Caption := '';
end;

procedure TMasterPackagesForm.CustomMasterCxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Detail1Cds.EOF then
    Detail1Cds.Insert;

end;

procedure TMasterPackagesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds.First;
  if Detail1Cds.Eof then
    begin
      ShowMessage ('Please enter the Tours');
      Detail1Cds.Insert;
      CustomMasterCxGrid.SetFocus;
    end;


end;

end.
