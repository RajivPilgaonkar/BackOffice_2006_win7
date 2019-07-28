unit TrainsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_2DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxButtonEdit, cxGroupBox, cxRadioGroup, DateUtils, Math, cxNavigator,
  cxDBNavigator, cxTimeEdit;

type
  TTrainsForm = class(TCustom_1ML_2DG_Form)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxTrainNoEdit: TcxDBTextEdit;
    cxWefDateEdit: TcxDBDateEdit;
    cxAgentLcmb: TcxDBLookupComboBox;
    cxTrainNameEdit: TcxDBTextEdit;
    cxWetDateEdit: TcxDBDateEdit;
    cxTrainCategoriesLCmb: TcxDBLookupComboBox;
    cxOperatesOnEdit: TcxDBTextEdit;
    cxUpdateDaysBtn: TcxButton;
    MasterCdstrainno: TStringField;
    MasterCdstrainname: TStringField;
    MasterCdstraincategories_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    MasterCdstrains_id: TIntegerField;
    MasterCdsdayofoperation: TSmallintField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsFlag1: TIntegerField;
    MasterCdsRecUpdatedOn: TSQLTimeStampField;
    MasterCdsSchUpdatedOn: TSQLTimeStampField;
    Detail1Cdstrainavailableclass_id: TIntegerField;
    Detail1Cdstrains_id: TIntegerField;
    Detail1Cdsclass_id: TIntegerField;
    Detail1CdsFlag1: TIntegerField;
    Detail2Cdstraindetails_id: TIntegerField;
    Detail2Cdsdeparture: TSQLTimeStampField;
    Detail2Cdsarrival: TSQLTimeStampField;
    Detail2Cdskms: TIntegerField;
    Detail2Cdstrainstations_id: TIntegerField;
    Detail2Cdscities_id: TIntegerField;
    Detail2Cdstrains_id: TIntegerField;
    Detail2Cdsduration: TStringField;
    Detail2Cdsnights: TIntegerField;
    Detail2Cdsdayofoperation: TSmallintField;
    Detail2CdsFlag1: TIntegerField;
    Detail2CdsNights2: TIntegerField;
    cxGrid2DBBandedTableView1TrainAvailableClass_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Class_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Flag1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TrainDetails_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Departure: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Arrival: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Kms: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TrainStations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Duration: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DayOfOperation: TcxGridDBBandedColumn;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    AgentDsp: TDataSetProvider;
    AgentSds: TSQLDataSet;
    TrainCategoriesCds: TClientDataSet;
    TrainCategoriesCdstraincategories_id: TIntegerField;
    TrainCategoriesCdscategory: TStringField;
    TrainCategoriesCdsdefaultorder: TIntegerField;
    TrainCategoriesCdssectorfare: TBooleanField;
    TrainCategoriesSds: TSQLDataSet;
    TrainCategoriesDsp: TDataSetProvider;
    TrainCategoriesDS: TDataSource;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
    ClassDsp: TDataSetProvider;
    ClassSds: TSQLDataSet;
    TrainStationCds: TClientDataSet;
    TrainStationSds: TSQLDataSet;
    TrainStationDsp: TDataSetProvider;
    TrainStationDs: TDataSource;
    MasterCdsDaysName: TStringField;
    Detail2CdsTrainStationLookUp: TStringField;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    CitiesDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
    PopupMenu1: TPopupMenu;
    CopyTrains1: TMenuItem;
    cxRadioGroup: TcxRadioGroup;
    cxSearchEdit: TcxTextEdit;
    cxButton1: TcxButton;
    PopupMenu2: TPopupMenu;
    UpdateallStationswiththesamenametothisCityCode1: TMenuItem;
    N1: TMenuItem;
    RemoveallCitiesforthisStation1: TMenuItem;
    cxDBNavigator1: TcxDBNavigator;
    TrainStationCdsTrainStations_id: TIntegerField;
    TrainStationCdsStation: TStringField;
    TrainStationCdsCity: TStringField;
    TrainStationCdsCities_id: TIntegerField;
    MasterCdsSF: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure cxUpdateDaysBtnClick(Sender: TObject);
    procedure CopyTrains1Click(Sender: TObject);
    procedure UpdateallStationswiththesamenametothisCityCode1Click(
      Sender: TObject);
    procedure RemoveallCitiesforthisStation1Click(Sender: TObject);
    procedure cxGridDBBandedTableView1TrainStations_idPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    function GetCityFromStations_id(x_Stations_id: integer): integer;    
  end;

var
  TrainsForm: TTrainsForm;
  TrainsForm_Level: Integer;

implementation

uses BackOfficeDM, SearchSortFm, GeneralUt, SelOprFm, TrainCopyFm;

{$R *.dfm}

procedure TTrainsForm.FormCreate(Sender: TObject);
begin
  Caption := 'Trains';
  Panel1.Visible := False;
  ActivateInCustom;

  inherited;

  AgentCds.Open;
  TrainCategoriesCds.Open;
  ClassCds.Open;
  TrainStationCds.Open;
  CitiesCds.Open;
end;

procedure TTrainsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTrainsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TrainsForm := nil;
end;

procedure TTrainsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Trains';
  Custom_MasterKeyField := 'Trains_id';

  Custom_Detail1CdsName := 'TrainAvailableClass';
  Custom_Detail1KeyField := 'TrainAvailableClass_id';

  Custom_Detail2CdsName := 'TrainDetails';
  Custom_Detail2KeyField := 'TrainDetails_id';

  Custom_AdmLevel := TrainsForm_Level;

  Custom_FormWidth := 915;
  Custom_FormHeight := 640 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TTrainsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxTrainNoEdit.SetFocus;
end;

procedure TTrainsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['TrainNo']= null) or (trim(MasterCds['TrainNo']) = '') then
    raise Exception.Create('Please enter the Train No');

  if (MasterCds['TrainCategories_id']= null) or (trim(MasterCds['TrainCategories_id']) = '') then
    raise Exception.Create('Please select a Train Category');

  if (MasterCds['Wef']= null) then
    raise Exception.Create('Please enter the Wef');

  if (MasterCds['SF']= null) then
    MasterCds['SF'] := false;

  if (MasterCds['DayOfOperation']= null) or (trim(MasterCds['DayOfOperation']) = '') then
    raise Exception.Create('Please enter the Days Of Operation');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['Trains_id'] = null then
    raise Exception.Create('Trains_id is not assigned');
end;

procedure TTrainsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  if (Detail1Cds['Class_id'] = null)  then
    raise Exception.Create('Please select the Train Class');

  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail1Cds['TrainAvailableClass_id'] = null then
    raise Exception.Create('TrainAvailableClass_id not assigned');
end;

procedure TTrainsForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  if Detail2Cds['TrainStations_id']= null then
     raise exception.Create('Please select the train station');

  if Detail2Cds['Kms'] = null then
    raise Exception.Create('Please enter the Kms');

  if (Detail2Cds['Departure'] = null) and (Detail2Cds['Arrival'] = null )  then
       raise exception.Create('Please enter the timings');

  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['TrainDetails_id'] = null then
    raise Exception.Create('TrainDetails_id not assigned');
end;

function TTrainsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Trains ' +
    'WHERE TrainNo = ' + QuotedStr(Trim(MasterCds['TrainNo'])) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Trains_id <> ' + IntToStr(MasterCds['Trains_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

function TTrainsForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TrainAvailableClass ' +
    'WHERE Class_id = ' + IntToStr(Detail1Cds['Class_id']) + ' ' +
    'AND Trains_id = ' + IntToStr(MasterCds['Trains_id']) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainAvailableClass_id <> ' + IntToStr(Detail1Cds['TrainAvailableClass_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

function TTrainsForm.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TrainDetails ' +
    'WHERE TrainStations_id = ' + IntToStr(Detail2Cds['TrainStations_id']) + ' ' +
    'AND Kms = ' +  IntToStr(Detail2Cds['Kms']) + ' ' +
    'AND Trains_id = ' + IntToStr(MasterCds['Trains_id']) + ' ';

  if Detail2Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainDetails_id <> ' + IntToStr(Detail2Cds['TrainDetails_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

procedure TTrainsForm.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds['DayOfOperation']  := MasterCds['DayOfOperation'];
end;

procedure TTrainsForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
   if MasterCds['DayOfOperation'] <> null then
    MasterCds['DaysName'] := DaysToStr(MasterCds['DayOfOperation']);
end;

procedure TTrainsForm.cxSearchEditKeyPress(Sender: TObject; var Key: Char);
var
  i: integer;
  x_str: string;
begin

  if ((key <> #13) or (length(trim(cxSearchEdit.Text)) = 0)) then
    exit;

  if cxRadioGroup.ItemIndex = 0 then
    x_str := 't.TrainNo'
  else if cxRadioGroup.ItemIndex = 1 then
    x_str := 't.TrainName';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;

  SearchSortForm.SearchSds.CommandText :=
   'SELECT t.Trains_id, Wef, Wet, t.TrainNo, t.TrainName, tc.Category ' +
   'FROM Trains t LEFT JOIN TrainCategories tc ON tc.TrainCategories_id = t.TrainCategories_id  ' +
   'WHERE ' + x_str + ' LIKE ''%' + VarToStr(cxSearchEdit.Text) + '%'' ORDER BY Wef DESC ' ;

  SearchSortForm.SearchSds.Open;
  SearchSortForm.SearchCds.Open;

  for i := 0 to 5 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Trains_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Wef';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Wet';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'TrainNo';
  SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'TrainName';
  SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'Category';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 90;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 90;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 150;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Wef';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Wet';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Train No';
  SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Train Name';
  SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Category';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Trains_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          MasterCds.Locate ('Trains_id', SearchSortForm.SearchCds['Trains_id'],[]);
        end;
    end
  else
    ShowMessage('Record not found');

  SearchSortForm.Free;
  SearchSortForm := nil;
    
end;

procedure TTrainsForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  if SelOprForm = Nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if MasterCds['DayOfOperation'] <> null then
    _InitStr := DaysToStr(MasterCds['DayOfOperation'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    MasterCds['DayOfOperation'] := DaysToBit(_RetStr);

  SelOprForm.Release;
  SelOprForm := nil;
end;

procedure TTrainsForm.cxUpdateDaysBtnClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if MasterCds['Trains_id'] = null then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.Close;

  GpSds.CommandText := 'EXEC [p_UpdateTrainDetailNights] ' + IntToStr(MasterCds['Trains_id']);
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TTrainsForm.CopyTrains1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Trains_id: integer;
begin
  inherited;

  if (MasterCds['TrainNo'] = null) or (trim(MasterCds['TrainNo']) = '') then
    raise exception.create ('No train number selected');

  if TrainCopyForm = nil then
    Application.CreateForm(TTrainCopyForm, TrainCopyForm);

  TrainCopyForm.cxTrainNoEdit.Text := MasterCds['TrainNo'];

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  TrainCopyForm.ShowModal;

  if TrainCopyForm.ModalResult = mrOK then
    begin
      if (MasterCds['Trains_id'] <> null) and
         (Trim(TraincopyForm.cxTrainNoEdit.Text) > '') and
         (Trim(TraincopyForm.cxWefDateEdit.Text) > '') then
        begin
          GpSds.CommandText := 'EXEC p_CopyTrains ' +
            IntToStr(MasterCds['Trains_id']) + ',' +
            QuotedStr(Trim(TrainCopyForm.cxTrainNoEdit.Text)) + ',' +
            QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(Trim(TraincopyForm.cxWefDateEdit.Text))));
          GpSds.ExecSQL;
        end;
    end;

  TrainCopyForm.Free;
  TrainCopyForm := nil;

  GpSds.Close;
  GpSds.CommandText := 'SELECT MAX(Trains_id) as MaxTrains_id FROM Trains';
  GpSds.Open;

  x_Trains_id := 0;
  if GpSds['MaxTrains_id'] <> null then
    x_Trains_id := GpSds['MaxTrains_id'];

  GpSds.Free;

  MasterCds.Close;
  MasterCds.Open;

  MasterCds.Locate ('Trains_id', x_Trains_id, []);
end;

procedure TTrainsForm.UpdateallStationswiththesamenametothisCityCode1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  if (Detail2Cds.State = dsInsert) or (Detail2Cds.State = dsEdit) then
    Detail2Cds.Post;

  if Detail2Cds['Cities_id'] = null then
    raise exception.Create('Please fill in the city');

  if Detail2Cds['TrainStations_id'] = null then
    raise exception.Create('Please fill in the Train Station');

  if MessageDlg ('Are you sure you want to update all the Train Stations ' +
     Detail2Cds['TrainStationLookup'] + '?', mtInformation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText :=
    'UPDATE TrainDetails SET Cities_id = ' + IntToStr(Detail2Cds['Cities_id']) + ' ' +
    'WHERE TrainStations_id = ' + IntToStr(Detail2Cds['TrainStations_id']);
  GpSds.ExecSQL;

  GpSds.Close;
  GpSds.CommandText :=
    'UPDATE TrainStations SET Cities_id = ' + IntToStr(Detail2Cds['Cities_id']) + ' ' +
    'WHERE TrainStations_id = ' + IntToStr(Detail2Cds['TrainStations_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage('done');
end;

procedure TTrainsForm.RemoveallCitiesforthisStation1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  if (Detail2Cds.State = dsInsert) or (Detail2Cds.State = dsEdit) then
    Detail2Cds.Post;

  if Detail2Cds['TrainStations_id'] = null then
    raise exception.Create('Please fill in the Train Station');

  if MessageDlg ('Are you sure you want to update all the Train Stations ' +
     Detail2Cds['TrainStations'] + '?', mtInformation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText :=
    'UPDATE TrainDetails SET Cities_id = null ' +
    'WHERE TrainStations_id = ' + IntToStr(Detail2Cds['TrainStations_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  Detail2Cds.Close;
  Detail2Cds.Open;

  ShowMessage('Done');
end;

procedure TTrainsForm.cxGridDBBandedTableView1TrainStations_idPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Edit: TcxCustomEdit;
  x_NewValue: Variant;
  x_cities_id, x_stations_id: integer;
  x_stations_id_str: string;
begin
  inherited;

  x_Edit := Sender as TcxCustomEdit;
  x_NewValue := x_Edit.EditingValue;

  x_stations_id_str := trim(VarToStr(x_NewValue));

  if x_stations_id_str > '' then
    begin
      x_stations_id := StrToInt(x_stations_id_str);
      x_cities_id := GetCityFromStations_id(x_stations_id);
      if x_cities_id > 0 then
        begin
          Detail2Cds['TrainStations_id'] := x_stations_id;
          Detail2Cds['Cities_id'] := x_cities_id;
        end;
    end;

end;

function TTrainsForm.GetCityFromStations_id(x_Stations_id: integer): integer;
var
  x_QueryString: string;
  x_cities_id: integer;
  GpSds: TSQLDataSet;
begin

  x_cities_id := 0;

  x_QueryString := 'SELECT t.Cities_id FROM TrainStations t ' +
    'WHERE t.TrainStations_id = ' + IntToStr(x_Stations_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['Cities_id'] <> null) then
    x_cities_id := GpSds['Cities_id'];

  GpSds.Free;

  Result := x_cities_id;

end;


end.
