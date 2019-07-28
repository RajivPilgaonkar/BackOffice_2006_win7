unit Airlines2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, SqlExpr, DB, DBClient, Provider,
  StdCtrls, Grids, DBGrids, DBCtrls, ExtCtrls, Menus, Buttons;

type
  TAirlines2Form = class(TCustomMasterGridForm)
    MasterCDSairlines_id: TIntegerField;
    MasterCDSairline: TStringField;
    MasterCDScode: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Airlines2Form: TAirlines2Form;
  _AirlinesForm_Level: Integer;
implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TAirlines2Form.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Height := 436;
  self.Width := 555;
  MasterTblName := 'Airlines';
  MasterKeyField := 'Airlines_id';
  AdmLevel := _AirlinesForm_Level;

end;

procedure TAirlines2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  Airlines2Form := nil;
end;

procedure TAirlines2Form.Exit1Click(Sender: TObject);
begin
  inherited;
  Close;  
end;

procedure TAirlines2Form.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
 if (MasterCds['Airline'] = null) or (Trim(MasterCds['Airline']) = '') then
    raise Exception.Create('Please enter the Airline.');
end;

end.
