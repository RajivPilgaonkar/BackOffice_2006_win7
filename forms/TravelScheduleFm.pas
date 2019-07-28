unit TravelScheduleFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SearchFm, FMTBcd, StdCtrls, SqlExpr, Provider, DB, DBClient,
  Buttons, ExtCtrls, Grids, DBGrids;

type
  TTravelScheduleForm = class(TSearchForm)
    Label1: TLabel;
    SearchCDSDay: TIntegerField;
    SearchCDSFromCity: TStringField;
    SearchCDSToCity: TStringField;
    SearchCDSFlightNo: TStringField;
    SearchCDSTrainNo: TStringField;
    SearchCDSDeparture: TSQLTimeStampField;
    SearchCDSArrival: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TravelScheduleForm: TTravelScheduleForm;

implementation

uses MasterServicesFm;

{$R *.dfm}

procedure TTravelScheduleForm.FormCreate(Sender: TObject);
begin
  inherited;
  SrchEF.Visible := False;
end;

end.
