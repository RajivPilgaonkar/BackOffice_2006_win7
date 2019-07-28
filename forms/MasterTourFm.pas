unit MasterTourFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, FMTBcd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxSplitter, DBClient, Provider,
  SqlExpr, ExtCtrls, StdCtrls, cxDBLookupComboBox, cxButtonEdit,
  cxContainer, cxGroupBox, cxRadioGroup, Buttons, cxImage,
  cxLookAndFeelPainters, cxButtons, jpeg, DBCtrls, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TMasterTourForm = class(TForm)
    GroupBox1: TGroupBox;
    ToursPC: TcxPageControl;
    MasterTabSheet: TcxTabSheet;
    TourTabSheet: TcxTabSheet;
    Panel1: TPanel;
    MasterTourSds: TSQLDataSet;
    MasterTourDataSetProvider: TDataSetProvider;
    MasterTourDS: TDataSource;
    MasterTourCds: TClientDataSet;
    MasterTourCdsmastercode: TStringField;
    MasterTourCdsname: TStringField;
    MasterTourCdsfit: TBooleanField;
    MasterTourCdsnoofdays: TIntegerField;
    MasterTourCdstailormade: TBooleanField;
    MasterTourCdsactive: TBooleanField;
    MasterTourCdsmasters_id: TIntegerField;
    MasterTourCdsaddressbook_id: TIntegerField;
    MasterTourCdscompanies_id: TIntegerField;
    Panel2: TPanel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    CustomMasterCxGridDBTableView1mastercode: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1name: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1fit: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1active: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1addressbook_id: TcxGridDBColumn;
    MasterTourCdsDomestic: TBooleanField;
    MasterTourCdsLpDay: TIntegerField;
    MasterTourCdsLpCities_id: TIntegerField;
    MasterTourCdsLpBanks_id: TIntegerField;
    CustomMasterCxGridDBTableView1Domestic: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1LpDay: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1LpCities_id: TcxGridDBColumn;
    MasterTourCdsBankName: TStringField;
    CustomMasterCxGridDBTableView1BankName: TcxGridDBColumn;
    TourCalSds: TSQLDataSet;
    TourCalDsp: TDataSetProvider;
    TourCalDS: TDataSource;
    TourCalCds: TClientDataSet;
    TourCalCdstourcalendar_id: TIntegerField;
    TourCalCdsdaysoffset: TIntegerField;
    TourCalCdsmasters_id: TIntegerField;
    TourCalCdstourcodes_id: TIntegerField;
    cxRadioGroup: TcxRadioGroup;
    cxActiveCheckBox: TcxCheckBox;
    cxButton1: TcxButton;
    GroupBox2: TGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1tourcodes_id: TcxGridDBColumn;
    cxGrid2DBTableView1daysoffset: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Image1: TImage;
    DBText1: TDBText;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    TourSds: TSQLDataSet;
    TourDsp: TDataSetProvider;
    TourDS: TDataSource;
    TourCds: TClientDataSet;
    TourCdstourcodes_id: TIntegerField;
    TourCdstourcode: TStringField;
    TourCdstour: TStringField;
    TourCdsfit: TBooleanField;
    TourCdsnoofdays: TIntegerField;
    TourCdsagent_addressbook_id: TIntegerField;
    TourCdshotel_addressbook_id: TIntegerField;
    TourCdstailormade: TBooleanField;
    TourCdssingleconstituent: TBooleanField;
    TourCdsactive: TBooleanField;
    TourCdscities_id: TIntegerField;
    TourCdsitinerary_en: TMemoField;
    TourCdsfactfinder_en: TMemoField;
    TourCdstravelstyles_id: TIntegerField;
    cxGridDBTableView1tourcode: TcxGridDBColumn;
    cxGridDBTableView1tour: TcxGridDBColumn;
    cxGridDBTableView1fit: TcxGridDBColumn;
    cxGridDBTableView1noofdays: TcxGridDBColumn;
    cxGridDBTableView1agent_addressbook_id: TcxGridDBColumn;
    cxGridDBTableView1hotel_addressbook_id: TcxGridDBColumn;
    cxGridDBTableView1singleconstituent: TcxGridDBColumn;
    cxGridDBTableView1active: TcxGridDBColumn;
    cxGridDBTableView1cities_id: TcxGridDBColumn;
    TourCdsAgentName: TStringField;
    TourCdsHotelName: TStringField;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    GroupBox3: TGroupBox;
    MasterFitAgentsSds: TSQLDataSet;
    MasterFitAgentsDsp: TDataSetProvider;
    MasterFitAgentsDS: TDataSource;
    MasterFitAgentsCds: TClientDataSet;
    MasterFitAgentsCdsMasterFitAgents_id: TIntegerField;
    MasterFitAgentsCdsMasters_id: TIntegerField;
    MasterFitAgentsCdsFitAgents_id: TIntegerField;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2FitAgents_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterTourCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterTourCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterTourCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterTourCdsAfterPost(DataSet: TDataSet);
    procedure MasterTourCdsBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterTourCdsAfterInsert(DataSet: TDataSet);
    function GetDefaultCompany: integer;
    function GetDefaultAgent: integer;
    function IsRecordDuplicate: Boolean;
    procedure cxRadioGroupPropertiesChange(Sender: TObject);
    procedure FilterMasterTours;
    procedure cxActiveCheckBoxPropertiesChange(Sender: TObject);
    procedure cxRadioGroupPropertiesEditValueChanged(Sender: TObject);
    procedure CustomMasterCxGridDBTableView1BankNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TourCalCdsAfterPost(DataSet: TDataSet);
    procedure TourCalCdsBeforeEdit(DataSet: TDataSet);
    procedure TourCalCdsBeforeDelete(DataSet: TDataSet);
    procedure TourCalCdsBeforeInsert(DataSet: TDataSet);
    procedure TourCalCdsBeforePost(DataSet: TDataSet);
    procedure TourCalCdsAfterInsert(DataSet: TDataSet);
    function IsTourCodeDuplicate: Boolean;
    procedure cxGridDBTableView1agent_addressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView1hotel_addressbook_idPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TourCdsBeforeInsert(DataSet: TDataSet);
    procedure TourCdsBeforeEdit(DataSet: TDataSet);
    procedure TourCdsBeforeDelete(DataSet: TDataSet);
    procedure TourCdsAfterPost(DataSet: TDataSet);
    procedure TourCdsBeforePost(DataSet: TDataSet);
    procedure TourCdsAfterInsert(DataSet: TDataSet);
    function IsTourRecordDuplicate: Boolean;
    function IsRecordValid: Boolean;
    function IsTourRecordValid: Boolean;
    procedure cxButton1Click(Sender: TObject);
    procedure AddSingleConstituent;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxRadioGroupClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure TourCalCdsAfterDelete(DataSet: TDataSet);
    procedure TourCdsAfterDelete(DataSet: TDataSet);
    function TourInTourCalendar: Boolean;
    procedure cxButton5Click(Sender: TObject);
    procedure MasterFitAgentsCdsAfterPost(DataSet: TDataSet);
    procedure MasterFitAgentsCdsBeforePost(DataSet: TDataSet);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure MasterTourCdsAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterTourForm: TMasterTourForm;
  _MasterTourForm_Level: integer;

  MasterTourCds_State :TDataSetState;
  MasterTourCds_Name: string;
  MasterTourKeyField: string;
  MasterTourKeyFieldValue: Integer;
  LocateKeyId: Integer;

  TourCalCds_State :TDataSetState;
  TourCalCds_Name: string;
  TourCalKeyField: string;
  TourCalKeyFieldValue: Integer;
  LocateKeyId_tcal: Integer;

  TourCds_State :TDataSetState;
  TourCds_Name: string;
  TourKeyField: string;
  TourKeyFieldValue: Integer;
  LocateKeyId_t: Integer;

  MasterFitAgentCds_State :TDataSetState;
  MasterFitAgentCds_Name: string;
  MasterFitAgentKeyField: string;
  MasterFitAgentKeyFieldValue: Integer;



implementation

uses BackOfficeDM, SearchSortFm, GeneralUt, MasterDepDatesFm;

var
  AdmLevel: Integer;

  TableArrayMaster: Array[0..0] of TDataSource;


{$R *.dfm}


procedure TMasterTourForm.FormCreate(Sender: TObject);
begin

  Self.Top := 2;
  Self.Left := 20;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.PrinAgentSds.Active := True;
  BackOfficeDataModule.PrinAgentCds.Active := True;

  BackOfficeDataModule.BankSds.Active := True;
  BackOfficeDataModule.BankCds.Active := True;

  BackOfficeDataModule.TourSds.Active := True;
  BackOfficeDataModule.TourCds.Active := True;

  BackOfficeDataModule.AgentSds.Active := True;
  BackOfficeDataModule.AgentCds.Active := True;

  BackOfficeDataModule.HotelSds.Active := True;
  BackOfficeDataModule.HotelCds.Active := True;

  BackOfficeDataModule.FitAgentsSds.Active := True;
  BackOfficeDataModule.FitAgentsCds.Active := True;


  FilterMasterTours;
  //MasterTourCds.Active := True;

  TourCalSds.Active := True;
  TourCalCds.Active := True;

  MasterFitAgentsSds.Active := True;
  MasterFitAgentsCds.Active := True;

  TourSds.Active := True;
  TourCds.Active := True;

  MasterTourCds_Name := 'Masters';
  MasterTourKeyField := 'Masters_id';

  TourCalCds_Name := 'TourCalendar';
  TourCalKeyField := 'TourCalendar_id';

  MasterFitAgentCds_Name := 'MasterFitAgents';
  MasterFitAgentKeyField := 'masterFitAgents_id';


  TourCds_Name := 'TourCodes';
  TourKeyField := 'TourCodes_id';

  AdmLevel := _MasterTourForm_Level;

end;

procedure TMasterTourForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMasterTourForm.FormDestroy(Sender: TObject);
begin
   MasterTourForm := nil;
end;

procedure TMasterTourForm.MasterTourCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArrayMaster[0] := TourCalDS;
  PostDsTables(TableArrayMaster);

end;

procedure TMasterTourForm.MasterTourCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if TourCalCds.RecordCount > 0 then
    raise exception.create ('Please delete the calendar first');

  QueryString := 'DELETE FROM MasterDepartureDates WHERE masters_id = ' + IntToStr(MasterTourCds['Masters_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TMasterTourForm.MasterTourCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArrayMaster[0] := TourCalDS;
  PostDsTables(TableArrayMaster);

end;

procedure TMasterTourForm.MasterTourCdsAfterPost(DataSet: TDataSet);
begin
  MasterTourCds.ApplyUpdates(0);
  //MasterTourCds.Refresh;
end;

procedure TMasterTourForm.MasterTourCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterTourCds['MasterCode'] = null) or (Trim(MasterTourCds['MasterCode']) = '') then
    raise exception.create ('Please enter the Master Code');

  if (MasterTourCds['Name'] = null) or (Trim(MasterTourCds['Name']) = '') then
    raise exception.create ('Please enter the name');

  if (MasterTourCds['FIT'] = null) then
    raise exception.create ('Please enter if ''FIT'' ');

  if (MasterTourCds['TailorMade'] = null)  then
    raise exception.create ('Please enter ''Tailor Made'' ');

  if (MasterTourCds['Active'] = null)  then
    raise exception.create ('Please enter ''Active'' ');

  if (MasterTourCds['Addressbook_id'] = null)  then
    raise exception.create ('Please enter Principal Agent');

  if (MasterTourCds['Companies_id'] = null)  then
    begin
      MasterTourCds['Companies_id'] := GetDefaultCompany;
      //raise exception.create ('Please define default company in the ''Defaults'' master');
    end;

  if (MasterTourCds['Domestic'] = null)  then
    raise exception.create ('Please enter ''Domestic''');

//  if (MasterTourCds['LPDay'] = null)  then
//    raise exception.create ('Please enter LP Day');

//  if (MasterTourCds['LPCities_id'] = null)  then
//    raise exception.create ('Please enter LP City');

//  if (MasterTourCds['LPBanks_id'] = null)  then
//    raise exception.create ('Please enter LP Bank');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  if (not IsRecordValid) then
    raise exception.create ('Invalid Record. Check LP_City/LP_Bank combination');

  MasterTourCds_State := MasterTourCds.State;

  if MasterTourCds.State = dsInsert then
    MasterTourCds[MasterTourKeyField] := GetNextId(MasterTourCds_Name,MasterTourKeyField);

  LocateKeyId := MasterTourCds[MasterTourKeyField];
end;

procedure TMasterTourForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MasterTourCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master tour record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TourCalCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tour calendar before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TourCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tour code record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;

end;

function TMasterTourForm.GetDefaultCompany: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_Number: integer;
begin

  QueryString := 'SELECT Number FROM Defaults WHERE item = ''COMPANY''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  x_Number := 0;

  if (not GpSds.EOF) and (GpSds['Number'] <> null) then
    x_Number := GpSds['Number'];

  GpSds.Free;

  Result := x_Number;

end;

function TMasterTourForm.GetDefaultAgent: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_Number: integer;
begin

  QueryString := 'SELECT Number FROM Defaults WHERE item = ''AGENT''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  x_Number := 0;

  if (not GpSds.EOF) and (GpSds['Number'] <> null) then
    x_Number := GpSds['Number'];

  GpSds.Free;

  Result := x_Number;

end;


procedure TMasterTourForm.MasterTourCdsAfterInsert(DataSet: TDataSet);
begin

  // Tailor made
  if cxRadioGroup.ItemIndex = 0 then
    MasterTourCds['TailorMade'] := False
  else
    MasterTourCds['TailorMade'] := True;

  MasterTourCds['Active'] := True;
  MasterTourCds['Domestic'] := True;
  MasterTourCds['FIT'] := False;
  MasterTourCds['LPDay'] := 1;

  //MasterTourCds['Companies_id'] := GetDefaultCompany;
  MasterTourCds['Companies_id'] := 1;
  MasterTourCds['Addressbook_id'] := GetDefaultAgent;

end;

function TMasterTourForm.IsTourRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TourCodes ' +
    'WHERE TourCode = ''' + TourCds['TourCode'] + ''' ';

  if TourCds.State = dsEdit then
    QueryString := QueryString + ' AND (TourCodes_id <> ' + IntToStr(TourCds['TourCodes_id']) + ') ';

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

function TMasterTourForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Masters ' +
    'WHERE MasterCode = ''' + MasterTourCds['MasterCode'] + ''' ';

  if MasterTourCds.State = dsEdit then
    QueryString := QueryString + ' AND (Masters_id <> ' + IntToStr(MasterTourCds['Masters_id']) + ') ';

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

function TMasterTourForm.IsRecordValid: Boolean;
var
  QueryString: string;
  x_valid: boolean;
  GpSds: TSQLDataSet;
begin

  if (MasterTourCds['LpBanks_id'] = null) or (MasterTourCds['LpCities_id']=null) then
    begin
      x_valid := True;
      Result := x_valid;
      exit;
    end;

  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterTourCds['LpBanks_id']) + ' ' +
    'AND Cities_id = ' + IntToStr(MasterTourCds['LpCities_id']) + ' ' ;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_valid := True;

  GpSds.Free;

  Result := x_valid;

end;

function TMasterTourForm.IsTourRecordValid: Boolean;
var
  QueryString: string;
  x_valid: boolean;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(TourCds['Agent_Addressbook_id']) + ' ' +
    'AND Cities_id = ' + IntToStr(TourCds['Cities_id']) + ' ' ;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_valid := True
  else
    x_valid := False;

  if not x_valid then
    begin
      GpSds.Free;
      Result := x_valid;
      exit;
    end;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(TourCds['Hotel_Addressbook_id']) + ' ' +
    'AND Cities_id = ' + IntToStr(TourCds['Cities_id']) + ' ' ;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_valid := True
  else
    x_valid := False;

  GpSds.Free;

  Result := x_valid;

end;



procedure TMasterTourForm.cxRadioGroupPropertiesChange(Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterTourForm.FilterMasterTours;
var
  FilterString: string;
  x_Masters_id, x_TourCodes_id: integer;
begin

  FilterString := ' (1=1) ';

  x_masters_id := 0;
  if MasterTourCds['Masters_id'] <> null then
    x_Masters_id := MasterTourCds['Masters_id'];

  x_TourCodes_id := 0;
  if TourCds['TourCodes_id'] <> null then
    x_TourCodes_id := TourCds['TourCodes_id'];

  if cxRadioGroup.ItemIndex = 0 then
    FilterString := FilterString + ' AND (TailorMade = False) '
  else if cxRadioGroup.ItemIndex = 1 then
    FilterString := FilterString + ' AND (TailorMade = True) ';

  if cxActiveCheckBox.Checked = True then
    FilterString := FilterString + ' AND (Active = True) '
  else
    FilterString := FilterString + ' AND (Active = False) ';


  MasterTourCds.Filter := FilterString;
  MasterTourCds.Filtered := True;

  TourCds.Filter := FilterString;
  TourCds.Filtered := True;


  MasterTourSds.Active := False;
  MasterTourCds.Active := False;
  MasterTourSds.Active := True;
  MasterTourCds.Active := True;

  if x_Masters_id > 0 then
    MasterTourCds.Locate('Masters_id', x_Masters_id, []);

  TourSds.Active := False;
  TourCds.Active := False;
  TourSds.Active := True;
  TourCds.Active := True;

  if x_TourCodes_id > 0 then
    TourCds.Locate('TourCodes_id', x_TourCodes_id, []);


end;

procedure TMasterTourForm.cxActiveCheckBoxPropertiesChange(
  Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterTourForm.cxRadioGroupPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterTourForm.CustomMasterCxGridDBTableView1BankNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if MasterTourCds['LPCities_id'] = null then
    begin
      ShowMessage('Please enter the city first');
      exit;
    end;

  if MasterTourCds.State in [dsBrowse] then
    MasterTourCds.Edit;

  QueryString := 'SELECT Addressbook_id, Organisation, City ' +
    'FROM dbo.fn_Addressbook (2,''B'') ' +
    'WHERE Cities_id = ' + IntToStr(MasterTourCds['LPCities_id']);

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    MasterTourCds['LPBanks_id'] := SearchSortForm.SearchCds['Addressbook_id'];

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TMasterTourForm.TourCalCdsAfterPost(DataSet: TDataSet);
begin
  TourCalCds.ApplyUpdates(0);
  //TourCalCds.Refresh;
end;

procedure TMasterTourForm.TourCalCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArrayMaster[0] := MasterTourDS;
  PostDsTables(TableArrayMaster);

end;

procedure TMasterTourForm.TourCalCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterTourForm.TourCalCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArrayMaster[0] := MasterTourDS;
  PostDsTables(TableArrayMaster);

end;

procedure TMasterTourForm.TourCalCdsBeforePost(DataSet: TDataSet);
begin

  if (TourCalCds['DaysOffset'] = null) then
    raise exception.create ('Please enter the Days Offset');

  if (TourCalCds['Masters_id'] = null)  then
    raise exception.create ('Please enter the master');

  if (TourCalCds['TourCodes_id'] = null) then
    raise exception.create ('Please enter the Tour Code ');

  if (IsTourCodeDuplicate) then
    raise exception.create ('Duplicate Tour Code found');

  TourCalCds_State := TourCalCds.State;

  if TourCalCds.State = dsInsert then
    TourCalCds[TourCalKeyField] := GetNextId(TourCalCds_Name,TourCalKeyField);

  LocateKeyId_tcal := TourCalCds[TourCalKeyField];

end;

procedure TMasterTourForm.TourCalCdsAfterInsert(DataSet: TDataSet);
begin
  TourCalCds['DaysOffset'] := 0;
end;

function TMasterTourForm.IsTourCodeDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TourCalendar ' +
    'WHERE TourCodes_id = ' + IntToStr(TourCalCds['TourCodes_id']) + ' ' +
    'AND Masters_id = ' + IntToStr(TourCalCds['Masters_id']);

  if TourCalCds.State = dsEdit then
    QueryString := QueryString + ' AND (TourCalendar_id <> ' + IntToStr(TourCalCds['TourCalendar_id']) + ') ';

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



procedure TMasterTourForm.cxGridDBTableView1agent_addressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TourCds['Cities_id'] = null then
    begin
      ShowMessage('Please enter the city first');
      exit;
    end;

  if TourCds.State in [dsBrowse] then
    TourCds.Edit;

  QueryString := 'SELECT Addressbook_id, Organisation, City ' +
    'FROM dbo.fn_Addressbook (2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(TourCds['Cities_id']);

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    TourCds['agent_addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];

  SearchSortForm.Free;
  SearchSortForm := nil;


end;

procedure TMasterTourForm.cxGridDBTableView1hotel_addressbook_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;
begin

  if TourCds['Cities_id'] = null then
    begin
      ShowMessage('Please enter the city first');
      exit;
    end;

  if TourCds.State in [dsBrowse] then
    TourCds.Edit;

  QueryString := 'SELECT Addressbook_id, Organisation, City ' +
    'FROM dbo.fn_Addressbook (2,''H'') ' +
    'WHERE Cities_id = ' + IntToStr(TourCds['Cities_id']);

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    TourCds['hotel_addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TMasterTourForm.TourCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterTourForm.TourCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TMasterTourForm.TourCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if TourInTourCalendar then
    raise exception.create ('Used in Tour Calendar. Cannot Delete');

  QueryString := 'DELETE FROM TourDepartureDates WHERE TourCodes_id = ' + IntToStr(TourCds['TourCodes_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

function TMasterTourForm.TourInTourCalendar: Boolean;
var
  QueryString: string;
  x_count: integer;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM TourCalendar ' +
    'WHERE TourCodes_id = ' + IntToStr(TourCds['TourCodes_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  if x_count > 0 then
    Result := True
  else
    Result := False;

end;


procedure TMasterTourForm.TourCdsAfterPost(DataSet: TDataSet);
begin
  TourCds.ApplyUpdates(0);
  //TourCds.Refresh;

  if TourCds_State = dsInsert then
    begin
      AddSingleConstituent;
    end;

end;

procedure TMasterTourForm.AddSingleConstituent;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_TourCodes_id: integer;
begin

  if MessageDlg('Do you want to create a Master from the single constituent?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'SELECT TourCodes_id, TourCode FROM TourCodes WHERE TourCodes_id IN ' +
    '(SELECT MAX(TourCodes_id) FROM TourCodes)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['TourCode']=null) then
    begin
      GpSds.Free;
      exit;
    end
  else
    begin

      x_TourCodes_id := GpSds['TourCodes_id'];

      QueryString := 'EXEC p_AddSingleConstituent ' + IntToStr(x_TourCodes_id);

      // Check if master code exists
      GPSds.Close;
      GPSds.CommandText := QueryString;
      GPSds.ExecSQL;

    end;

  GpSds.Free;

end;

procedure TMasterTourForm.TourCdsBeforePost(DataSet: TDataSet);
begin

  if (TourCds['TourCode'] = null) or (Trim(TourCds['TourCode']) = '') then
    raise exception.create ('Please enter the Tour Code');

  if (TourCds['Tour'] = null) or (Trim(TourCds['Tour']) = '') then
    raise exception.create ('Please enter the name');

  if (TourCds['FIT'] = null) then
    raise exception.create ('Please enter ''FIT'' ');

  if (TourCds['TailorMade'] = null)  then
    raise exception.create ('Please enter ''Tailor Made'' ');

  if (TourCds['Active'] = null)  then
    raise exception.create ('Please enter ''Active'' ');

  if (TourCds['Cities_id'] = null)  then
    raise exception.create ('Please enter City');

  if (TourCds['Agent_Addressbook_id'] = null)  then
    raise exception.create ('Please enter Agent');

  if (TourCds['Hotel_Addressbook_id'] = null)  then
    raise exception.create ('Please enter Hotel');

  if (TourCds['SingleConstituent'] = null)  then
    raise exception.create ('Please enter ''Single Constituent''');

  if (TourCds['NoOfDays'] = null)  then
    raise exception.create ('Please enter number of days');

  if (IsTourRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  if (not IsTourRecordValid) then
    ShowMessage ('Invalid Record. Check City/Agent/Hotel combination');

  TourCds_State := TourCds.State;

  if TourCds.State = dsInsert then
    TourCds[TourKeyField] := GetNextId(TourCds_Name,TourKeyField);

  LocateKeyId_t := TourCds[TourKeyField];

end;

procedure TMasterTourForm.TourCdsAfterInsert(DataSet: TDataSet);
begin

  // Tailor made
  if cxRadioGroup.ItemIndex = 0 then
    TourCds['TailorMade'] := False
  else
    TourCds['TailorMade'] := True;

  TourCds['Active'] := True;
  TourCds['SingleConstituent'] := True;
  TourCds['FIT'] := False;

end;

procedure TMasterTourForm.cxButton1Click(Sender: TObject);
begin

 _MasterDepDatesForm_Level:=4 ;

  if MasterDepDatesForm = nil then
    Application.CreateForm(TMasterDepDatesForm, MasterDepDatesForm);

end;

procedure TMasterTourForm.cxButton2Click(Sender: TObject);
begin

  if MasterTourCds.State <> dsBrowse then
    MasterTourCds.Post;
  if TourCds.State <> dsBrowse then
    TourCds.Post;
  if TourCalCds.State <> dsBrowse then
    TourCalCds.Post;

  MasterTourSds.Active := False;
  TourSds.Active := False;
  TourCalSds.Active := False;

  MasterTourSds.Active := True;
  TourSds.Active := True;
  TourCalSds.Active := True;

  MasterTourCds.Active := False;
  TourCds.Active := False;
  TourCalCds.Active := False;

  MasterTourCds.Active := True;
  TourCds.Active := True;
  TourCalCds.Active := True;

  BackOfficeDataModule.TourCds.Close;
  BackOfficeDataModule.TourCds.Open;

end;

procedure TMasterTourForm.cxButton3Click(Sender: TObject);
begin

  BackOfficeDataModule.TourCds.Active := False;
  BackOfficeDataModule.TourCds.Active := True;

end;

procedure TMasterTourForm.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  if TourCalCds.EOF then
    TourCalCds.Insert;

end;

procedure TMasterTourForm.cxRadioGroupClick(Sender: TObject);
begin
  FilterMasterTours;
end;

procedure TMasterTourForm.cxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TMasterTourForm.TourCalCdsAfterDelete(DataSet: TDataSet);
begin
  TourCalCds.ApplyUpdates(0);
  TourCalCds.Refresh;
end;

procedure TMasterTourForm.TourCdsAfterDelete(DataSet: TDataSet);
begin
  TourCds.ApplyUpdates(0);
end;

procedure TMasterTourForm.cxButton5Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  QueryString := 'UPDATE Masters SET Companies_id = 1 WHERE Companies_id IS NULL ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  cxButton2Click(nil);

end;

procedure TMasterTourForm.MasterFitAgentsCdsAfterPost(DataSet: TDataSet);
begin
  MasterFitAgentsCds.ApplyUpdates(0);
end;

procedure TMasterTourForm.MasterFitAgentsCdsBeforePost(DataSet: TDataSet);
begin
  if MasterFitAgentsCds.State = dsInsert then
    MasterFitAgentsCds[MasterFitAgentKeyField] := GetNextId(masterFitAgentCds_Name,MasterFitAgentKeyField);

end;

procedure TMasterTourForm.cxGridDBTableView2DblClick(Sender: TObject);
begin
  if MasterFitAgentsCds.EOF then
    begin
      MasterFitAgentsCds.Insert;
      MasterFitAgentsCds['FitAgents_id'] := BackOfficeDataModule.FitAgentsCds['FitAgents_id'];
      MasterFitAgentsCds.Post;
    end;

end;

procedure TMasterTourForm.MasterTourCdsAfterDelete(DataSet: TDataSet);
begin
  MasterTourCds.ApplyUpdates(0);
end;

end.
