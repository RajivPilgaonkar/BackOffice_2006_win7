unit Custom1M2DFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls, DBGrids;

type
  TCustom1M2DForm = class(TForm)
    MasterSds: TSQLDataSet;
    Detail1Sds: TSQLDataSet;
    MasterDataSetProvider: TDataSetProvider;
    Detail1DataSetProvider: TDataSetProvider;
    MasterDS: TDataSource;
    Detail1DS: TDataSource;
    MasterCds: TClientDataSet;
    Detail1Cds: TClientDataSet;
    Detail2Sds: TSQLDataSet;
    Detail2DataSetProvider: TDataSetProvider;
    Detail2DS: TDataSource;
    Detail2Cds: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail1CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail2CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail2CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail2CdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Custom1M2DForm: TCustom1M2DForm;
  MasterCds_State :TDataSetState;
  MasterCdsName: string;
  MasterKeyField: string;
  MasterKeyFieldValue: Integer;
  LocateKeyId: Integer;
  AdmLevel: Integer;

  Detail1Cds_State :TDataSetState;
  Detail1CdsName: string;
  Detail1KeyField: string;
  Detail1MasterKeyField: string;
  LocateKeyId_d1: Integer;
  Detail1KeyFieldValue: Integer;

  Detail2Cds_State :TDataSetState;
  Detail2CdsName: string;
  Detail2KeyField: string;
  Detail2MasterKeyField: string;
  LocateKeyId_d2: Integer;
  Detail2KeyFieldValue: Integer;

  TableArray: Array[0..1] of TDataSource;


implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustom1M2DForm.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  Detail1Cds.Active := True;
  Detail2Cds.Active := True;
end;

procedure TCustom1M2DForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TCustom1M2DForm.FormDestroy(Sender: TObject);
begin
  Custom1M2DForm := nil ;
end;

procedure TCustom1M2DForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCustom1M2DForm.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := Detail1DS;
  TableArray[1] := Detail2DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M2DForm.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom1M2DForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := Detail1DS;
  TableArray[1] := Detail2DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M2DForm.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := MasterDS;
  TableArray[1] := Detail2DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M2DForm.Detail1CdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := MasterDS;
  TableArray[1] := Detail2DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M2DForm.Detail1CdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom1M2DForm.Detail2CdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := MasterDS;
  TableArray[1] := Detail1DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M2DForm.Detail2CdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  TableArray[0] := MasterDS;
  TableArray[1] := Detail1DS;
  PostDsTables(TableArray);

end;

procedure TCustom1M2DForm.Detail2CdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom1M2DForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  //MasterCds.Refresh;
end;

procedure TCustom1M2DForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
  //Detail1Cds.Refresh;
end;

procedure TCustom1M2DForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[MasterKeyField] := GetNextId(MasterCdsName,MasterKeyField);

  LocateKeyId := MasterCds[MasterKeyField];

end;

procedure TCustom1M2DForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    Detail1Cds[Detail1KeyField] := GetNextId(Detail1CdsName,Detail1KeyField);

  LocateKeyId_d1 := Detail1Cds[Detail1KeyField];

end;

procedure TCustom1M2DForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  Detail2Cds_State := Detail2Cds.State;

  if Detail2Cds.State = dsInsert then
    Detail2Cds[Detail2KeyField] := GetNextId(Detail2CdsName,Detail2KeyField);

  LocateKeyId_d2 := Detail2Cds[Detail2KeyField];

end;

procedure TCustom1M2DForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the organisation record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if Detail1Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the address detail record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if Detail2Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the category record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;
end;

procedure TCustom1M2DForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  //MasterCds.Active :=  False;
  //MasterCds.Active := True;
end;

procedure TCustom1M2DForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
  //Detail1Cds.Active :=  False;
  //Detail1Cds.Active := True;
end;

procedure TCustom1M2DForm.Detail2CdsAfterDelete(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
  //Detail2Cds.Active :=  False;
  //Detail2Cds.Active := True;

end;

procedure TCustom1M2DForm.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
  //Detail2Cds.Refresh;
end;

end.
