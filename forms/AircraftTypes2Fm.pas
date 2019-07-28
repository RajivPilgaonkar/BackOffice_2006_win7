unit AircraftTypes2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, DBClient, DB, Provider, SqlExpr,
  Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, Menus, Buttons;

type
  TAircraftTypes2Form = class(TCustomMasterGridForm)
    MasterSQLTableaircrafttypes_id: TIntegerField;
    MasterSQLTableaircraft: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AircraftTypes2Form: TAircraftTypes2Form;
  _AircraftTypesForm_Level : integer;
implementation

{$R *.dfm}

procedure TAircraftTypes2Form.FormCreate(Sender: TObject);
begin
  MasterTblName := 'AircraftTypes';
  MasterKeyField := 'AircraftTypes_id';
  AdmLevel := _AircraftTypesForm_Level;
  inherited;
  AircraftTypes2Form.Width := 559;
  AircraftTypes2Form.Height := 440;
end;

procedure TAircraftTypes2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  AircraftTypes2Form := nil;
end;

procedure TAircraftTypes2Form.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (MasterCds['Aircraft'] = null) or (Trim(MasterCds['Aircraft']) = '') then
    raise Exception.Create('Please enter the Aircraft');
end;

end.
