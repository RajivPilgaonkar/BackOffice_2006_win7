unit StateLatitudeFm;

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
  TStateLatitudeForm = class(TCustom_1MG_Form)
    MasterCdsstatecode: TStringField;
    MasterCdsstate: TStringField;
    MasterCdsstates_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsprintstate: TBooleanField;
    MasterCdswriteup: TMemoField;
    MasterCdsoneliner: TStringField;
    MasterCdsgeneralinfo: TMemoField;
    MasterCdsWebWriteUp: TMemoField;
    MasterCdsCentralCities_id: TIntegerField;
    MasterCdsLatitude: TFMTBCDField;
    MasterCdsLongitude: TFMTBCDField;
    MasterCdsurl: TStringField;
    cxGrid1DBBandedTableView1State: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1States_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Countries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Latitude: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Longitude: TcxGridDBBandedColumn;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    CountriesDs: TDataSource;
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
  end;

var
  StateLatitudeForm: TStateLatitudeForm;
  StateLatitudeForm_Level: Integer;
implementation

uses MainFm;

{$R *.dfm}

procedure TStateLatitudeForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CountriesCds.Open;
  UsersCds.Open;

end;

procedure TStateLatitudeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TStateLatitudeForm.FormDestroy(Sender: TObject);
begin
  inherited;
  StateLatitudeForm := nil;
end;

procedure TStateLatitudeForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'States';
  Custom_MasterKeyField := 'States_id';
  Custom_AdmLevel := StateLatitudeForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TStateLatitudeForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TStateLatitudeForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

end;

end.
