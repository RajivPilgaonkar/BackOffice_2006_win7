unit CityLatitudeFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox;

type
  TCityLatitudeForm = class(TCustom_1MG_Form)
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
    MasterCdsbestairporta_cities_id: TIntegerField;
    MasterCdsbestairportb_cities_id: TIntegerField;
    MasterCdsbestairportc_cities_id: TIntegerField;
    MasterCdsbeststationa_cities_id: TIntegerField;
    MasterCdsbeststationb_cities_id: TIntegerField;
    MasterCdsbeststationc_cities_id: TIntegerField;
    MasterCdsbestcarhirea_cities_id: TIntegerField;
    MasterCdsbestcarhireb_cities_id: TIntegerField;
    MasterCdsbestcarhirec_cities_id: TIntegerField;
    MasterCdsairport: TBooleanField;
    MasterCdsrailway: TBooleanField;
    MasterCdsBudgetHotels_id: TIntegerField;
    MasterCdsLuxuryHotels_id: TIntegerField;
    MasterCdsDefaultDays: TIntegerField;
    MasterCdsWebWriteUp: TMemoField;
    MasterCdsLatitude: TFMTBCDField;
    MasterCdsLongitude: TFMTBCDField;
    MasterCdsFilterField: TStringField;
    MasterCdsurl: TStringField;
    cxGrid1DBBandedTableView1City: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NightHalt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Latitude: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Longitude: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FilterField: TcxGridDBBandedColumn;
    MasterCdsMeta_Descr: TMemoField;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Keywords: TStringField;
    MasterCdsDisplay: TBooleanField;
    MasterCdsWebCityCode: TStringField;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    procedure FilterField;
  end;

var
  CityLatitudeForm: TCityLatitudeForm;
  CityLatitudeForm_Level: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCityLatitudeForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

  FilterField;

end;

procedure TCityLatitudeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCityLatitudeForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CityLatitudeForm := nil;
end;

procedure TCityLatitudeForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Cities';
  Custom_MasterKeyField := 'Cities_id';
  Custom_AdmLevel := CityLatitudeForm_Level;

  Custom_FormWidth := 800;
  Custom_FormHeight := 565;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TCityLatitudeForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCityLatitudeForm.FilterField;
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'UPDATE Cities SET FilterField = ' +
    '(SELECT co.Country FROM Countries co ' +
    'LEFT JOIN States s ON co.Countries_id = s.Countries_id ' +
    'WHERE s.States_id = Cities.States_id)';

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;
end;

procedure TCityLatitudeForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
end;

end.
