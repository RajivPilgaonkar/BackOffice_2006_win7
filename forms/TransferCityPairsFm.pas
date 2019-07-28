unit TransferCityPairsFm;

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
  TTransferCityPairsForm = class(TCustom_1MG_Form)
    MasterCdsTransferCityPairs_id: TIntegerField;
    MasterCdsFromCities_id: TIntegerField;
    MasterCdsToCities_id: TIntegerField;
    cxGrid1DBBandedTableView1TransferCityPairs_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    CitiesDS: TDataSource;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDsp: TDataSetProvider;
    CitiesSds: TSQLDataSet;
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
    function IsMasterRecordDuplicate: Boolean;    
  end;

var
  TransferCityPairsForm: TTransferCityPairsForm;
  TransferCityPairsForm_Level: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TTransferCityPairsForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  CitiesCds.Open;
  UsersCds.Open;

end;

procedure TTransferCityPairsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTransferCityPairsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TransferCityPairsForm := nil;
end;

procedure TTransferCityPairsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TransferCityPairs';
  Custom_MasterKeyField := 'TransferCityPairs_id';
  Custom_AdmLevel := TransferCityPairsForm_Level;

  Custom_FormWidth := 460;
  Custom_FormHeight := 550;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TTransferCityPairsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTransferCityPairsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['FromCities_id'] = null) or (Trim(MasterCds['FromCities_id']) = '') then
    raise Exception.Create('Please enter the "From City"');

  if (MasterCds['ToCities_id'] = null) or (Trim(MasterCds['ToCities_id']) = '') then
    raise Exception.Create('Please enter the "To City"');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['TransferCityPairs_id'] = null then
    raise Exception.Create('TransferCityPairs_id id is not assigned');
end;

function TTransferCityPairsForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TransferCityPairs ' +
    'WHERE FromCities_id = ' + IntToStr(MasterCds['FromCities_id']) + ' ' +
    'AND ToCities_id = ' + IntToStr(MasterCds['ToCities_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TransferCityPairs_id <> ' + IntToStr(MasterCds['TransferCityPairs_id']) + ') ';

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

end.
