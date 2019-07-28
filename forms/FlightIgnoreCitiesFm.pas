unit FlightIgnoreCitiesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxTextEdit, cxLabel, cxContainer, cxGroupBox;

type
  TFlightIgnoreCitiesForm = class(TCustomMasterCxGridForm)
    MasterCdsFlightIgnoreCities_id: TIntegerField;
    CustomMasterCxGridDBTableView1FlightIgnoreCities_id: TcxGridDBColumn;
    MasterCdsCity: TStringField;
    CustomMasterCxGridDBTableView1City: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlightIgnoreCitiesForm: TFlightIgnoreCitiesForm;
  _FlightIgnoreCitiesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TFlightIgnoreCitiesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'FlightIgnoreCities';
  MasterKeyField := 'FlightIgnoreCities_id';
  AdmLevel := _FlightIgnoreCitiesForm_Level;
  inherited;

end;

procedure TFlightIgnoreCitiesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FlightIgnoreCitiesForm := nil;
end;



procedure TFlightIgnoreCitiesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (MasterCds['City'] = null) then
    raise Exception.Create('Please enter the City');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TFlightIgnoreCitiesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM FlightIgnoreCities ' +
    'WHERE City = ''' + MasterCds['City'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (FlightIgnoreCities_id <> ' + IntToStr(MasterCds['FlightIgnoreCities_id']) + ') ';

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


end.
