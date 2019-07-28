unit CustomMasterDetailFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, FMTBcd, Provider, DBClient, DB,
  SqlExpr;

type
  TCustomMasterDetailForm = class(TForm)
    PanelMaster: TPanel;
    PanelChild1: TPanel;
    DBGridMaster: TDBGrid;
    DBGridChild1: TDBGrid;
    SQLTableMaster: TSQLTable;
    DSMaster: TDataSource;
    CDSMaster: TClientDataSet;
    DSPMaster: TDataSetProvider;
    DSChild1: TDataSource;
    CDSChild1: TClientDataSet;
    DSPChild1: TDataSetProvider;
    SQLTableChild1: TSQLTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSMasterBeforeEdit(DataSet: TDataSet);
    procedure CDSMasterBeforeInsert(DataSet: TDataSet);
    procedure CDSMasterBeforeDelete(DataSet: TDataSet);
    procedure CDSMasterBeforePost(DataSet: TDataSet);
    procedure CDSMasterAfterInsert(DataSet: TDataSet);
    procedure CDSMasterAfterDelete(DataSet: TDataSet);
    procedure CDSMasterAfterPost(DataSet: TDataSet);
    procedure CDSChild1BeforeEdit(DataSet: TDataSet);
    procedure CDSChild1BeforeInsert(DataSet: TDataSet);
    procedure CDSChild1AfterInsert(DataSet: TDataSet);
    procedure CDSChild1BeforeDelete(DataSet: TDataSet);
    procedure CDSChild1AfterDelete(DataSet: TDataSet);
    procedure CDSChild1BeforePost(DataSet: TDataSet);
    procedure CDSChild1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMasterDetailForm: TCustomMasterDetailForm;
  //Master Grid Vars
  MasterTbl_State :TDataSetState;
  MasterTblName: string;
  MasterKeyField: string;
  MasterKeyFieldValue: Integer;
  LocateKeyId: Integer;
  AdmLevel: Integer;

  //Detail Grid Vars
  DetailTbl_State :TDataSetState;
  DetailTblName: string;
  DetailKeyField: string;
  DetailMasterKeyField: string;
  DetailKeyFieldValue: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustomMasterDetailForm.FormCreate(Sender: TObject);
begin
  //File1.Visible := true;
  CDSMaster.Active := True;
  CDSChild1.Active := True;
end;

procedure TCustomMasterDetailForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree ;
end;

procedure TCustomMasterDetailForm.FormDestroy(Sender: TObject);
begin
  CustomMasterDetailForm:=nil ;
end;

procedure TCustomMasterDetailForm.FormKeyPress(Sender: TObject;
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
{Master Grid Events - START}
procedure TCustomMasterDetailForm.CDSMasterBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterDetailForm.CDSMasterBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterDetailForm.CDSMasterAfterInsert(DataSet: TDataSet);
begin
  if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
    begin
      with TDBGrid(ActiveControl) do
          SelectedIndex := 0;
    end;
end;

procedure TCustomMasterDetailForm.CDSMasterBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterDetailForm.CDSMasterAfterDelete(DataSet: TDataSet);
begin
  CDSMaster.ApplyUpdates(0);
  CDSMaster.Refresh;
end;

procedure TCustomMasterDetailForm.CDSMasterBeforePost(DataSet: TDataSet);
begin
  MasterTbl_State := CDSMaster.State;

  if CDSMaster.State = dsInsert then
    CDSMaster[MasterKeyField] := GetNextId(MasterTblName,MasterKeyField);

  LocateKeyId := CDSMaster[MasterKeyField];
end;

procedure TCustomMasterDetailForm.CDSMasterAfterPost(DataSet: TDataSet);
begin
  CDSMaster.ApplyUpdates(0);
  CDSMaster.Refresh;
end;
{Master Grid Events - END}
{Detail Grid Events - START}
procedure TCustomMasterDetailForm.CDSChild1BeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterDetailForm.CDSChild1BeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterDetailForm.CDSChild1AfterInsert(DataSet: TDataSet);
begin
  if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
    begin
      with TDBGrid(ActiveControl) do
          SelectedIndex := 0;
    end;
end;

procedure TCustomMasterDetailForm.CDSChild1BeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterDetailForm.CDSChild1AfterDelete(DataSet: TDataSet);
begin
  CDSChild1.ApplyUpdates(0);
end;

procedure TCustomMasterDetailForm.CDSChild1BeforePost(DataSet: TDataSet);
begin
  DetailTbl_State := CDSChild1.State;

  if CDSChild1.State = dsInsert then
    CDSChild1[DetailKeyField] := GetNextId(DetailTblName,DetailKeyField);

  //  LocateKeyId := CDSMaster[MasterKeyField];

end;

procedure TCustomMasterDetailForm.CDSChild1AfterPost(DataSet: TDataSet);
begin
  CDSChild1.ApplyUpdates(0);
end;
{Detail Grid Events - END}
end.
