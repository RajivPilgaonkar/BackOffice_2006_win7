unit ClassFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, SqlExpr, DB, DBClient, Provider,
  StdCtrls, Grids, DBGrids, DBCtrls, Menus, Buttons;

type
  TClassForm = class(TCustomMasterGridForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure Exit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClassForm: TClassForm;
  _ClassForm_Level: integer;
  _ClassForm_Tickets_id: integer;
implementation

{$R *.dfm}

procedure TClassForm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Height := 436;
  self.Width := 555;

  MasterTblName := 'Class';
  MasterKeyField := 'Class_id';
  AdmLevel := _ClassForm_Level;

  MasterCds.Filter:='Tickets_id = ' + IntToStr(_ClassForm_Tickets_id);
  MasterCds.Filtered:=True ;
  MasterCds.Active:=True ;
  MasterCds.First ;
end;

procedure TClassForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ClassForm := nil;

end;

procedure TClassForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (MasterCds['Class'] = null) or (Trim(MasterCds['Class']) = '') then
    raise Exception.Create('Please enter the Class');

end;

procedure TClassForm.Exit1Click(Sender: TObject);
begin
  inherited;
close ;
end;

procedure TClassForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Action:=caFree;
 MasterCds.Active:=False ;
end;

procedure TClassForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCDS['Tickets_id']:= _ClassForm_Tickets_id ;
  if _ClassForm_Tickets_id = 1 then
    MasterCDS['Code'] := 'F'
  else if _ClassForm_Tickets_id = 2 then
    MasterCDS['Code'] := 'T'
  else if _ClassForm_Tickets_id = 3 then
    MasterCDS['Code'] := 'B'
  //else if _ClassForm_Tickets_id = 4 then
  //  MasterCDS['Code'] := 'R';
end;

procedure TClassForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  close ;
end;

end.
