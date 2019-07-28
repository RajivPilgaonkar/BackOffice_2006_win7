unit TrialFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterFm, FMTBcd, DBClient, DB, Provider, SqlExpr,
  StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TTrialForm = class(TCustomMasterForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    SQLDataSetcities_id: TIntegerField;
    SQLDataSetcitycode: TStringField;
    SQLDataSetcountries_id: TIntegerField;
    SQLDataSetoneliner: TStringField;
    SQLDataSetcity: TStringField;
    MasterCDScities_id: TIntegerField;
    MasterCDScitycode: TStringField;
    MasterCDScountries_id: TIntegerField;
    MasterCDSoneliner: TStringField;
    MasterCDScity: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrialForm: TTrialForm;
  _TrialForm_Level: integer;  

implementation

uses MainFm;

{$R *.dfm}

procedure TTrialForm.FormCreate(Sender: TObject);
begin
  inherited;

  MasterTblName := 'Cities';
  MasterKeyField := 'Cities_id';
  AdmLevel := _TrialForm_Level;

end;

procedure TTrialForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TrialForm := nil;
end;

procedure TTrialForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['CityCode'] = null) or (Trim(MasterCds['CityCode']) = '') then
    raise Exception.Create('Please enter the city Code');

end;

procedure TTrialForm.Button1Click(Sender: TObject);
begin
  inherited;
  MasterCds.ApplyUpdates(0);
end;

end.
