unit CitiesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxImage,
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox, cxCheckBox;

type
  TCitiesForm = class(TCustom_1MG_1DG_Form)
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    Panel5: TPanel;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    MasterCdscitycode: TStringField;
    MasterCdscity: TStringField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsoneliner: TStringField;
    MasterCdsgeneralinfo: TMemoField;
    MasterCdsgettingthere: TMemoField;
    MasterCdswhattosee: TMemoField;
    MasterCdsexcursions: TMemoField;
    MasterCdscourier: TBooleanField;
    MasterCdswriteup: TMemoField;
    MasterCdsnighthalt: TBooleanField;
    MasterCdspic1: TStringField;
    MasterCdspic2: TStringField;
    MasterCdscities_id: TIntegerField;
    MasterCdsstates_id: TIntegerField;
    MasterCdsairport: TBooleanField;
    MasterCdsrailway: TBooleanField;
    MasterCdsDefaultDays: TIntegerField;
    MasterCdsWebWriteUp: TMemoField;
    MasterCdsurl: TStringField;
    DetailCdscityalias_id: TIntegerField;
    DetailCdscities_id: TIntegerField;
    DetailCdsalias: TStringField;
    StatesSds: TSQLDataSet;
    StatesDsp: TDataSetProvider;
    StatesCds: TClientDataSet;
    StatesDs: TDataSource;
    StatesCdsStates_id: TIntegerField;
    StatesCdsState: TStringField;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesDs: TDataSource;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    cxGrid1DBBandedTableView1citycode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1city: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1courier: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nighthalt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pic1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pic2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1states_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1airport: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1railway: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DefaultDays: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cityalias_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cities_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1alias: TcxGridDBBandedColumn;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBMemo5: TcxDBMemo;
    PopupMenu1: TPopupMenu;
    NearCities1: TMenuItem;
    N1: TMenuItem;
    AirlineCityMapping1: TMenuItem;
    N2: TMenuItem;
    Itineraries1: TMenuItem;
    cxDisplayPicturesCkb: TcxCheckBox;
    Label5: TLabel;
    cxSearchEdit: TcxTextEdit;
    MasterCdsDisplay: TBooleanField;
    cxGrid1DBBandedTableView1Display: TcxGridDBBandedColumn;
    MasterCdsWebCityCode: TStringField;
    cxGrid1DBBandedTableView1WebCityCode: TcxGridDBBandedColumn;
    MasterCdsMeta_Descr: TMemoField;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Keywords: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure NearCities1Click(Sender: TObject);
    procedure AirlineCityMapping1Click(Sender: TObject);
    procedure Itineraries1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure cxDisplayPicturesCkbPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    function IsAirportCodeDuplicate: Boolean;
    function IsWebCityCodeDuplicate: Boolean;
    procedure ShowPictures;
  public
    { Public declarations }
  end;

var
  CitiesForm: TCitiesForm;
  CitiesForm_Level: integer;
  CitiesForm_PicPanelWidth: integer;
  CitiesForm_ImagePath: string;
  CitiesForm_DisplayImage: boolean;

implementation

uses BackOfficeDM, NearCitiesFm, AirlineCItyMappingFm, CityFixedItinFm,
  GeneralUt, SearchSortFm, MainFm;

{$R *.dfm}

procedure TCitiesForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := false;
  CitiesForm_PicPanelWidth := 255;

  ActivateInCustom;

  inherited;
  StatesCds.Open;
  CountriesCds.Open;
  UsersCds.Open;

  cxPageControl3.ActivePageIndex := 0;

  CitiesForm_ImagePath := GetServerImagePath;

  CitiesForm_DisplayImage := false;
  if DirectoryExists(CitiesForm_ImagePath) then
    CitiesForm_DisplayImage := true;

end;

procedure TCitiesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCitiesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CitiesForm := nil;
end;

procedure TCitiesForm.ActivateInCustom;
begin

  Custom_MasterCdsName := 'Cities';
  Custom_MasterKeyField := 'Cities_id';

  Custom_DetailCdsName := 'CityAlias';
  Custom_DetailKeyField := 'CityAlias_id';

  Custom_AdmLevel := CitiesForm_Level;

  Custom_FormWidth := 870;
  Custom_FormHeight := 715;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TCitiesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCitiesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Countries_id'] = null)  then
    raise Exception.Create('Please select a country');

  if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
    MasterCds['url'] := GetUrlString(MasterCds['City']);

  MasterCds['url'] := trim(MasterCds['url']);

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  if (MasterCds['Countries_id'] = 200) and (MasterCds['CityCode'] <> null) and (trim(MasterCds['CityCode']) > '') and (IsAirportCodeDuplicate) then
    raise Exception.Create('Duplicate airport code found');

  if (MasterCds['Countries_id'] = 200) and (MasterCds['WebCityCode'] <> null) and (trim(MasterCds['WebCityCode']) > '') and (IsWebCityCodeDuplicate) then
    raise Exception.Create('Duplicate web code found');

  if (MasterCds['Countries_id'] = 200) and (MasterCds['CityCode'] <> null) and (trim(MasterCds['CityCode']) > '') and (MasterCds['CityCode'] <> MasterCds['WebCityCode']) then
    raise Exception.Create('If the airport code is entered, the web city code must be the identical');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
  
  inherited;

  if (MasterCds['Cities_id'] = null) then
    raise Exception.Create('Cities_id is not assigned');

end;

procedure TCitiesForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if (DetailCds['Cities_id'] = null) then
    raise Exception.Create('Please select a city');

  if (DetailCds['Alias'] = null) or (Trim(DetailCds['Alias']) = '')  then
    raise Exception.Create('Please enter an alias');

  if IsDetailRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if (DetailCds['CityAlias_id'] = null) then
    raise Exception.Create('CityAlias_id is not assigned');

end;

function TCitiesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Cities ' +
    'WHERE City = ' + QuotedStr(MasterCds['City']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Cities_id <> ' + IntToStr(MasterCds['Cities_id']) + ') ';

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

function TCitiesForm.IsAirportCodeDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Cities ' +
    'WHERE CityCode = ' + QuotedStr(MasterCds['CityCode']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Cities_id <> ' + IntToStr(MasterCds['Cities_id']) + ') ';

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

function TCitiesForm.IsWebCityCodeDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Cities ' +
    'WHERE WebCityCode = ' + QuotedStr(MasterCds['WebCityCode']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Cities_id <> ' + IntToStr(MasterCds['Cities_id']) + ') ';

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


function TCitiesForm.IsDetailRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CityAlias ' +
    'WHERE Cities_id = ' + IntToStr(DetailCds['Cities_id']) + ' ' +
    'AND Alias = ' + QuotedStr(DetailCds['Alias']) + ' ';

  if DetailCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CityAlias_id <> ' + IntToStr(DetailCds['CityAlias_id']) + ') ';

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



procedure TCitiesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Courier'] := true;
  MasterCds['NightHalt'] := true;
  MasterCds['Airport'] := true;
  MasterCds['Railway'] := true;
  MasterCds['Display'] := true;  
end;

procedure TCitiesForm.NearCities1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['Cities_id'] = null then
    raise exception.create ('Please select a city first');

  NearCitiesForm_MainCities_id := MasterCds['Cities_id'];
  NearCitiesForm_Level := CitiesForm_Level;

  if NearCitiesForm = nil then
    Application.CreateForm(TNearCitiesForm, NearCitiesForm);

end;

procedure TCitiesForm.AirlineCityMapping1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['Cities_id'] = null then
    raise exception.create ('Please select a city first');

  AirlineCityMappingForm_Cities_id := MasterCds['Cities_id'];
  AirlineCityMappingForm_Level := CitiesForm_Level;

  if MasterCds['City'] <> null then
    AirlineCityMappingForm_City := MasterCds['City'];

  if AirlineCityMappingForm = nil then
    Application.CreateForm(TAirlineCityMappingForm, AirlineCityMappingForm);

end;

procedure TCitiesForm.Itineraries1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['Cities_id'] = null then
    raise exception.create ('Please select a city first');

  CityFixedItinForm_Cities_id := MasterCds['Cities_id'];
  CityFixedItinForm_Level := CitiesForm_Level;

  if MasterCds['City'] <> null then
    CityFixedItinForm_City := MasterCds['City'];

  if CityFixedItinForm = nil then
    Application.CreateForm(TCityFixedItinForm, CityFixedItinForm);

end;

procedure TCitiesForm.FormResize(Sender: TObject);
begin
  inherited;
  cxGrid1.Width := Width - CitiesForm_PicPanelWidth;
end;

procedure TCitiesForm.ShowPictures;
var
  x_file_path: string;
begin

  if not CitiesForm_DisplayImage then
    exit;

  if MasterCds['Cities_id'] <> null then
    begin

      x_file_path := CitiesForm_ImagePath + 'city_' + IntToStr(MasterCds['Cities_id']) + '_01.jpg';

      if FileExists(x_file_path) then
        cxImage1.Picture.LoadFromFile(x_file_path)
      else
        cxImage1.Picture := nil;

      x_file_path := CitiesForm_ImagePath + 'city_' + IntToStr(MasterCds['Cities_id']) + '_02.jpg';

      if FileExists(x_file_path) then
        cxImage2.Picture.LoadFromFile(x_file_path)
      else
        cxImage2.Picture := nil;

    end;

end;

procedure TCitiesForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if CitiesForm_DisplayImage then
    ShowPictures;

end;

procedure TCitiesForm.cxDisplayPicturesCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if (cxDisplayPicturesCkb.Checked) and (DirectoryExists(CitiesForm_ImagePath)) then
    CitiesForm_DisplayImage := true
  else
    CitiesForm_DisplayImage := false;
end;

procedure TCitiesForm.cxSearchEditKeyPress(Sender: TObject; var Key: Char);
var
  i: integer;
  x_Checked: boolean;
begin

  if ((key <> #13) or (length(trim(cxSearchEdit.Text)) = 0)) then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;

  SearchSortForm.SearchSds.CommandText :=
   'SELECT Cities_id, City ' +
   'FROM Cities ' + 
   'WHERE City LIKE ''%' + VarToStr(cxSearchEdit.Text) + '%'' ORDER BY City ' ;

  SearchSortForm.SearchSds.Open;
  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Cities_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Cities_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          x_Checked := cxDisplayPicturesCkb.Checked;
          cxDisplayPicturesCkb.Checked := false;
          MasterCds.Locate ('Cities_id', SearchSortForm.SearchCds['Cities_id'],[]);
          cxDisplayPicturesCkb.Checked := x_Checked;
        end;
    end
  else
    ShowMessage('Record not found');

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
