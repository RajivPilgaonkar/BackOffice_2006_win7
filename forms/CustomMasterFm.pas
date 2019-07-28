unit CustomMasterFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, FMTBcd, DBClient, DB, Provider,
  SqlExpr, Grids, DBGrids;

type
  TCustomMasterForm = class(TForm)
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterDS: TDataSource;
    MasterCDS: TClientDataSet;
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure MasterCDSBeforeEdit(DataSet: TDataSet);
    procedure MasterCDSBeforeInsert(DataSet: TDataSet);
    procedure MasterCDSBeforeDelete(DataSet: TDataSet);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
    procedure MasterCDSAfterDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMasterForm: TCustomMasterForm;
    Tbl_State :TDataSetState;
    MasterTblName: string;
    MasterKeyField: string;
    MasterKeyFieldValue: Integer;
    LocateKeyId: Integer;
    AdmLevel: Integer;

implementation

uses BackOfficeDM, GeneralUt;


{$R *.dfm}

procedure TCustomMasterForm.FormCreate(Sender: TObject);
begin
  MasterCDS.Active := True;
  KeyIdDBText.DataField := MasterKeyField;
end;

procedure TCustomMasterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MasterCDS.Active := False;
  Action := caFree;
end;

procedure TCustomMasterForm.FormDestroy(Sender: TObject);
begin
  CustomMasterForm := nil;
end;

procedure TCustomMasterForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ActiveControl = nil then Exit;

  if Key = #13  then                        { if it''s an enter key }
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

procedure TCustomMasterForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  Tbl_State := MasterCDS.State;

  if (MasterCds.State = dsInsert) and (MasterKeyField > '') then
    begin
      MasterCds[MasterKeyField] := GetNextId(MasterTblName,MasterKeyField);
      LocateKeyId := MasterCds[MasterKeyField];
    end;
end;


procedure TCustomMasterForm.MasterCDSBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterForm.MasterCDSBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustomMasterForm.MasterCDSBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustomMasterForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
    begin
      with TDBGrid(ActiveControl) do
          SelectedIndex := 0;
    end;

end;

procedure TCustomMasterForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  //MasterCDS.Refresh;
end;

procedure TCustomMasterForm.MasterCDSAfterDelete(DataSet: TDataSet);
begin
  MasterCDS.ApplyUpdates(0);
  MasterCDS.Refresh;
end;

end.
