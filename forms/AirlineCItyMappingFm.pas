unit AirlineCityMappingFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls;

type
  TAirlineCityMappingForm = class(TCustom_1MG_Form)
    MasterCdsAirlineCityMappings_id: TIntegerField;
    MasterCdsAirlineCity: TStringField;
    MasterCdsCities_id: TIntegerField;
    cxGrid1DBBandedTableView1AirlineCityMappings_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AirlineCity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    CityNameLabel: TLabel;
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
  end;

var
  AirlineCityMappingForm: TAirlineCityMappingForm;
  AirlineCityMappingForm_Level: Integer;
  AirlineCityMappingForm_Cities_id: Integer;
  AirlineCityMappingForm_City: String;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TAirlineCityMappingForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterCds.Close;
  MasterSds.Close;
  MasterSds.Params[0].Value := AirlineCityMappingForm_Cities_id;

  inherited;

  CityNameLabel.Caption := AirlineCityMappingForm_City;
end;

procedure TAirlineCityMappingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAirlineCityMappingForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AirlineCityMappingForm := nil;
end;

procedure TAirlineCityMappingForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'AirlineCityMapping';
  Custom_MasterKeyField := 'AirlineCityMappings_id';
  Custom_AdmLevel := AirlineCityMappingForm_Level;

  Custom_FormWidth := 515;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAirlineCityMappingForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAirlineCityMappingForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Cities_id'] = null) or (Trim(MasterCds['Cities_id']) = '') then
    raise Exception.Create('Please select the city first');

  if (MasterCds['AirlineCity'] = null) or (Trim(MasterCds['AirlineCity']) = '') then
    raise Exception.Create('Please enter the AirlineCity');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['AirlineCityMappings_id'] = null then
    raise Exception.Create('AirlineCityMappings_id id is not assigned');

end;

function TAirlineCityMappingForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM AirlineCityMapping ' +
    ' WHERE Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ' ' +
    ' AND AirlineCity = ' + QuotedStr(Trim(MasterCds['AirlineCity']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AirlineCityMappings_id <> ' + IntToStr(MasterCds['AirlineCityMappings_id']) + ') ';

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

procedure TAirlineCityMappingForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Cities_id'] := AirlineCityMappingForm_Cities_id;
end;

end.
