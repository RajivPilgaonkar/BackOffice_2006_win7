unit PackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  DBCtrls, DBClient, Provider, SqlExpr, Buttons, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxCalc, cxButtonEdit, Mask, cxTimeEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMemo,
  cxDBEdit, cxLookAndFeelPainters, cxButtons, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel, cxGroupBox,
  cxCheckBox;

type
  TPackagesForm = class(TCustomMasterCxGridForm)
    GroupBox2: TcxGroupBox;
    ActiveChk: TcxCheckBox;
    MasterCdspackages_id: TIntegerField;
    MasterCdspackage: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsprivate: TBooleanField;
    MasterCdsduration: TStringField;
    MasterCdsdaysofoperation: TSmallintField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdsfrom_time: TSQLTimeStampField;
    MasterCdsto_time: TSQLTimeStampField;
    MasterCdsactive: TBooleanField;
    MasterCdsdomesticclients: TSmallintField;
    MasterCdsdescription: TStringField;
    MasterCdsimage: TStringField;
    MasterCdsnights: TIntegerField;
    CustomMasterCxGridDBTableView1package: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1addressbook_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1private: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1duration: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1daysofoperation: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1from_cities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1to_cities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1from_time: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1to_time: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1active: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1domesticclients: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1nights: TcxGridDBColumn;
    MasterCdsDaysName: TStringField;
    CustomMasterCxGridDBTableView1DaysName: TcxGridDBColumn;
    Label1: TLabel;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    cxCityLCMB: TcxLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    PopupMenu1: TPopupMenu;
    PackageDetails1: TMenuItem;
    MasterCdsInclusion: TMemoField;
    MasterCdsPackageDescription: TStringField;
    CustomMasterCxGridDBTableView1PackageDescription: TcxGridDBColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ModifiedOn: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActiveChkClick(Sender: TObject);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure CustomMasterCxGridDBTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    function IsRecordDuplicate: Boolean;
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure PackageDetails1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PackagesForm: TPackagesForm;
  _PackagesForm_level: Integer;

implementation

uses BackOfficeDM, SelOprFm, GeneralUt, PackageItinerariesFm, MainFm,
  PackageDayActivityFm;

{$R *.dfm}

procedure TPackagesForm.FormCreate(Sender: TObject);
begin

  ActiveChk.Checked := true;

  BackOfficeDataModule.CitiesSds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := False;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;

  MasterCdsName := 'Packages';
  MasterKeyField := 'Packages_id';

  AdmLevel := _PackagesForm_level;

  CitiesCds.Active := False;
  CitiesCds.Active := True;

  inherited;

  UsersCds.Open;

  BackOfficeDataModule.AgentSds.Active := True;
  BackOfficeDataModule.AgentCds.Active := True;

  cxCityLCMB.EditValue := CitiesCdscities_id.Value;

  MasterCds.Filter := ' (Active = True) ';
end;

procedure TPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PackagesForm := nil;
end;

procedure TPackagesForm.ActiveChkClick(Sender: TObject);
begin
  inherited;
  if ActiveChk.Checked then
    MasterCds.Filter := ' (Active = True) '
  else
    MasterCds.Filter := ' (Active = False) ';
  MasterCds.Filtered := True;
  MasterCds.Active := False;
  MasterCds.Active := True;
end;

procedure TPackagesForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin

  inherited;

  if (cxCityLCMB.EditValue=Null) then
    raise Exception.Create('Please Select The City');

end;

procedure TPackagesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  MasterCds['private']:= '1';
  MasterCds['domesticclients']:= 4;
  MasterCds['From_Cities_id'] := IntToStr(cxCityLcmb.EditValue);
  if ActiveChk.Checked then
    MasterCds['active']:= '1'
  else
    MasterCds['active']:= '0';
end;

procedure TPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['addressbook_id']=null then
     Raise Exception.Create('Please select the Agent');

  if MasterCds['to_cities_id']=null then
     Raise Exception.Create('Please select To City');

  if MasterCds['daysofoperation']=null then
     Raise Exception.Create('Please select Days of Operation');

  if (MasterCds['Package'] = null) or (Trim(MasterCds['Package']) = '') then
    raise Exception.Create('Please enter the Package.');

  if MasterCds['duration']=null then
     Raise Exception.Create('Please enter the duration');

{
  try
    x_days := Copy(MasterCds['duration'],1,2);
    if StrToInt(x_days) <= 0 then
      raise exception.create ('Duration - First 2 characters should be reserved for days');
  except
    raise exception.create ('Duration - First 2 characters should be reserved for days');
  end;
}

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

end;

procedure TPackagesForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['DaysOfOperation'] <> null then
    MasterCds['DaysName'] := DaysToStr(MasterCds['DaysOfOperation']);
end;

procedure TPackagesForm.CustomMasterCxGridDBTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  if SelOprForm = Nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if MasterCds['DaysOfOperation'] <> null then
    _InitStr := DaysToStr(MasterCds['DaysOfOperation'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    MasterCds['DaysOfOperation'] := DaysToBit(_RetStr);

  SelOprForm.Release;
  SelOprForm := nil;

end;

function TPackagesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Packages ' +
    'WHERE Package = ''' + ReplaceSingleQuotes(MasterCds['package']) + ''' ' +
    'AND From_Cities_id = ' + IntToStr(MasterCds['from_cities_id']) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCds['addressbook_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Packages_id <> ' + IntToStr(MasterCds['Packages_id']) + ') ';

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



procedure TPackagesForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CxCityLCMB.EditValue <> null then
      CitiesCds.Locate('Cities_id',CxCityLCMB.EditValue,[]);
  except
  end;

end;

procedure TPackagesForm.PackageDetails1Click(Sender: TObject);
begin
  inherited;
  PackageDayActivityForm_Level := GetUserLevel(g_users_id, _PackagesForm_level);

  If PackageDayActivityForm_Level < 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MasterCds['Packages_id'] = null then
    raise exception.create('Please select the package first');

  if MasterCds['From_Cities_id'] = null then
    raise exception.create('Please enter the city');

  PackageDayActivityForm_Packages_id := MasterCds['Packages_id'];
  PackageDayActivityForm_FormType := 5;
  PackageDayActivityForm_Cities_id := MasterCds['From_Cities_id'];

  if PackageDayActivityForm = nil then
    Application.CreateForm(TPackageDayActivityForm, PackageDayActivityForm);

  PackageDayActivityForm.FormStyle := fsNormal;
  PackageDayActivityForm.Visible := false;
  PackageDayActivityForm.ShowModal;

  PackageDayActivityForm.Free;
  PackageDayActivityForm := nil;

end;

procedure TPackagesForm.FormActivate(Sender: TObject);
begin
  inherited;
  MasterCdsName := 'Packages';
  MasterKeyField := 'Packages_id';

  AdmLevel := _PackagesForm_level;

end;

end.
