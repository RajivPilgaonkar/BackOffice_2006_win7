unit NearCitiesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, DBClient, Provider, SqlExpr, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer,
  cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxDBLookupComboBox;

type
  TNearCitiesForm = class(TCustom_1MG_Form)
    MasterCdsNearCities_id: TIntegerField;
    MasterCdsMainCities_id: TIntegerField;
    MasterCdsCities_id: TIntegerField;
    MasterCdsOrderNo: TIntegerField;
    cxGrid1DBBandedTableView1NearCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MainCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    CitiesDS: TDataSource;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function GetNextOrderNo: integer;
  end;

var
  NearCitiesForm: TNearCitiesForm;
  NearCitiesForm_Level: Integer;
  NearCitiesForm_MainCities_id: Integer;
implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TNearCitiesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterCds.Close;
  MasterSds.Close;
  MasterSds.Params[0].Value := NearCitiesForm_MainCities_id;

  inherited;

  CitiesCds.Open;
end;

procedure TNearCitiesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TNearCitiesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NearCitiesForm := nil;
end;

procedure TNearCitiesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'NearCities';
  Custom_MasterKeyField := 'NearCities_id';
  Custom_AdmLevel := NearCitiesForm_Level;

  Custom_FormWidth := 490;
  Custom_FormHeight := 550;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TNearCitiesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TNearCitiesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['MainCities_id'] = null) or (Trim(MasterCds['MainCities_id']) = '') then
    raise Exception.Create('Please select the Main City');

  if (MasterCds['Cities_id'] = null) or (Trim(MasterCds['Cities_id']) = '') then
    raise Exception.Create('Please select the City');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['NearCities_id'] = null then
    raise Exception.Create('NearCities_id id is not assigned');

end;

function TNearCitiesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM NearCities ' +
    'WHERE MainCities_id = ' + IntToStr(MasterCds['MainCities_id']) + ' ' +
    'AND Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (NearCities_id <> ' + IntToStr(MasterCds['NearCities_id']) + ') ';

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

procedure TNearCitiesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['MainCities_id'] := NearCitiesForm_MainCities_id;
  MasterCds['OrderNo'] := GetNextOrderNo;
end;

function TNearCitiesForm.GetNextOrderNo: integer;
var
  x_QueryString: string;
  x_OrderNo: integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(COALESCE(OrderNo,0)) AS OrderNo FROM NearCities ' +
    'WHERE MainCities_id = ' + IntToStr(MasterCds['MainCities_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_OrderNo := 1;
  if (not GpSds.EOF) and (GpSds['OrderNo'] <> null) then
    x_OrderNo := GpSds['OrderNo'] + 1;

  GpSds.Free;

  Result := x_OrderNo;   
end;

end.
