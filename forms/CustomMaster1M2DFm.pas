unit CustomMaster1M2DFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, FMTBcd, SqlExpr,
  Provider, DB, DBClient, Menus;

type
  TCustomMaster1M2DForm = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLTable1: TSQLTable;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    SQLTable2: TSQLTable;
    DataSource3: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLTable3: TSQLTable;
    KeyIdDBText: TDBText;
    PanelTop: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    PanelBottom: TPanel;
    DBGrid3: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ClientDataSet1BeforeEdit(DataSet: TDataSet);
    procedure ClientDataSet1BeforeInsert(DataSet: TDataSet);
    procedure ClientDataSet1BeforeDelete(DataSet: TDataSet);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet2AfterPost(DataSet: TDataSet);
    procedure ClientDataSet3AfterPost(DataSet: TDataSet);
    procedure ClientDataSet3AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet2AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMaster1M2DForm: TCustomMaster1M2DForm;
  AdmLevel: integer;
  //master table vars
  MasterTbl_State :TDataSetState;
  MasterTblName: string;
  MasterKeyField: string;
  MasterKeyFieldValue: Integer;
  LocateKeyId: Integer;

  //detail table 1 vars
  Detail1Tbl_State :TDataSetState;
  Detail1TblName: string;
  Detail1KeyField: string;
  Detail1KeyFieldValue: Integer;

  //detail table 2 vars
  Detail2Tbl_State :TDataSetState;
  Detail2TblName: string;
  Detail2KeyField: string;
  Detail2KeyFieldValue: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustomMaster1M2DForm.FormCreate(Sender: TObject);
begin
//  File1.Visible := true;
  ClientDataSet1.Active := True;  //master
  ClientDataSet2.Active := True;  //detail 1
  ClientDataSet3.Active := True;  //detail 2
end;

procedure TCustomMaster1M2DForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ClientDataSet1.Active := False;  //master
  ClientDataSet2.Active := False;  //detail 1
  ClientDataSet3.Active := False;  //detail 2
  Action := caFree;
end;

procedure TCustomMaster1M2DForm.FormDestroy(Sender: TObject);
begin
  CustomMaster1M2DForm := nil;
end;

procedure TCustomMaster1M2DForm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ActiveControl = nil then Exit;

  if Key = #13  then                        { if it's an enter key }
    if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
      begin
        with TDBGrid(ActiveControl) do
          if SelectedIndex < (FieldCount -1) then  { increment the field }
            SelectedIndex := SelectedIndex + 1
          else
            SelectedIndex := 0;
      end
    else if (ActiveControl.Tag = 1) then
      begin
        Key := #0;                               { eat enter key }
        Perform(WM_NEXTDLGCTL, 0, 0);            { move to next control }
      end;
end;
  {BEGIN MASTER GRID EVENTS}
procedure TCustomMaster1M2DForm.ClientDataSet1BeforeEdit(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMaster1M2DForm.ClientDataSet1BeforeInsert(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMaster1M2DForm.ClientDataSet1BeforeDelete(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

{END MASTER GRID EVENTS}

procedure TCustomMaster1M2DForm.ClientDataSet1AfterInsert(
  DataSet: TDataSet);
begin
  if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
    begin
      with TDBGrid(ActiveControl) do
          SelectedIndex := 0;
    end;
end;

procedure TCustomMaster1M2DForm.ClientDataSet1BeforePost(
  DataSet: TDataSet);
begin
  MasterTbl_State := ClientDataSet1.State;
  Detail1Tbl_State := ClientDataSet2.State;
  Detail2Tbl_State := ClientDataSet3.State;

  if ClientDataSet1.State = dsInsert then
    begin
      ClientDataSet1[MasterKeyField] := GetNextId(MasterTblName,MasterKeyField);
      LocateKeyId := ClientDataSet1[MasterKeyField];
    end;
  if ClientDataSet2.State = dsInsert then
    begin
      ClientDataSet2[Detail1KeyField] := GetNextId(Detail1TblName,Detail1KeyField);
      LocateKeyId := ClientDataSet2[Detail1KeyField];
    end;
    
  if ClientDataSet3.State = dsInsert then
    begin
      ClientDataSet3[Detail2KeyField] := GetNextId(Detail2TblName,Detail2KeyField);
      LocateKeyId := ClientDataSet3[Detail2KeyField];
    end;
end;

procedure TCustomMaster1M2DForm.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(0);
  ClientDataSet1.Refresh;
end;

procedure TCustomMaster1M2DForm.ClientDataSet2AfterPost(DataSet: TDataSet);
begin
  ClientDataSet2.ApplyUpdates(0);
  ClientDataSet2.Refresh;
end;

procedure TCustomMaster1M2DForm.ClientDataSet3AfterPost(DataSet: TDataSet);
begin
  ClientDataSet3.ApplyUpdates(0);
  ClientDataSet3.Refresh;
end;

procedure TCustomMaster1M2DForm.ClientDataSet3AfterDelete(
  DataSet: TDataSet);
begin
  ClientDataSet3.ApplyUpdates(0);
  ClientDataSet3.Refresh;
end;

procedure TCustomMaster1M2DForm.ClientDataSet2AfterDelete(
  DataSet: TDataSet);
begin
  ClientDataSet2.ApplyUpdates(0);
  ClientDataSet2.Refresh;
end;

procedure TCustomMaster1M2DForm.ClientDataSet1AfterDelete(
  DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(0);
  ClientDataSet1.Refresh;
end;

end.
