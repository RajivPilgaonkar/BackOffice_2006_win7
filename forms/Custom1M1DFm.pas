unit Custom1M1DFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls, DBGrids;

type
  TCustom1M1DForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MasterSds: TSQLDataSet;
    MasterDataSetProvider: TDataSetProvider;
    MasterDS: TDataSource;
    MasterCds: TClientDataSet;
    Detail1Sds: TSQLDataSet;
    Detail1DataSetProvider: TDataSetProvider;
    Detail1DS: TDataSource;
    Detail1Cds: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail1CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Custom1M1DForm: TCustom1M1DForm;
  MasterCds_State :TDataSetState;
  MasterCdsName: string;
  MasterKeyField: string;
  MasterKeyFieldValue: Integer;

  Detail1Cds_State :TDataSetState;
  Detail1CdsName: string;
  Detail1KeyField: string;
  Detail1MasterKeyField: string;
  Detail1KeyFieldValue: Integer;

  AdmLevel: Integer;

implementation

uses GeneralUt;

var
  LocateKeyId: Integer;
  LocateKeyId_d1: Integer;
  TableArray: Array[0..0] of TDataSource;

{$R *.dfm}

procedure TCustom1M1DForm.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  Detail1Cds.Active := True;
end;

procedure TCustom1M1DForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TCustom1M1DForm.FormDestroy(Sender: TObject);
begin
  Custom1M1DForm := nil ;
end;

procedure TCustom1M1DForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCustom1M1DForm.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := Detail1DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M1DForm.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom1M1DForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := Detail1DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M1DForm.Detail1CdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := MasterDS;
  PostDsTables(TableArray);

end;

procedure TCustom1M1DForm.Detail1CdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom1M1DForm.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := MasterDS;
  PostDsTables(TableArray);

end;

procedure TCustom1M1DForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  //MasterCds.Refresh;
end;

procedure TCustom1M1DForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
  //Detail1Cds.Refresh;
end;

procedure TCustom1M1DForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  MasterCds_State := MasterCds.State;

  if (MasterCds.State = dsInsert) and (MasterKeyField > '') then
    begin
      MasterCds[MasterKeyField] := GetNextId(MasterCdsName,MasterKeyField);
      LocateKeyId := MasterCds[MasterKeyField];
    end;

end;

procedure TCustom1M1DForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    Detail1Cds[Detail1KeyField] := GetNextId(Detail1CdsName,Detail1KeyField);

  LocateKeyId_d1 := Detail1Cds[Detail1KeyField];

end;

procedure TCustom1M1DForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if Detail1Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the detail record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;

end;

procedure TCustom1M1DForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  //MasterCds.Active := False;
  //MasterCds.Active := True;
end;

procedure TCustom1M1DForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

end.


