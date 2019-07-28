unit CustomMasterLookupFm;
                                                                       

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, FMTBcd, SqlExpr,
  DB, Provider, DBClient, Buttons;

type
  TCustomMasterLookupForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DSLookup: TDataSource;
    CDSLookup: TClientDataSet;
    SQLQueryLookup: TSQLQuery;
    DSPLookup: TDataSetProvider;
    GridDS: TDataSource;
    GridCDS: TClientDataSet;
    GridDSP: TDataSetProvider;
    GridSQLTable: TSQLTable;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure GridCDSAfterPost(DataSet: TDataSet);
    procedure GridCDSBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GridCDSBeforeEdit(DataSet: TDataSet);
    procedure GridCDSBeforeInsert(DataSet: TDataSet);
    procedure GridCDSBeforeDelete(DataSet: TDataSet);
    procedure GridCDSAfterInsert(DataSet: TDataSet);
    procedure GridCDSAfterDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMasterLookupForm: TCustomMasterLookupForm;
    Tbl_State :TDataSetState;
    MasterTblName: string;
    MasterKeyField: string;
    MasterKeyFieldValue: Integer;
    LocateKeyId: Integer;
    AdmLevel: Integer;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TCustomMasterLookupForm.FormCreate(Sender: TObject);
begin
  GridCDS.Active := True;
  //KeyIDDBText.DataField := MasterKeyField;
end;

procedure TCustomMasterLookupForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  GridCDS.Active := False;
  Action := caFree;
end;

procedure TCustomMasterLookupForm.FormDestroy(Sender: TObject);
begin
  CustomMasterLookupForm := nil;
end;

procedure TCustomMasterLookupForm.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TCustomMasterLookupForm.GridCDSBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterLookupForm.GridCDSBeforeInsert(DataSet: TDataSet);
begin

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterLookupForm.GridCDSAfterInsert(DataSet: TDataSet);
begin
 if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
    begin
      with TDBGrid(ActiveControl) do
          SelectedIndex := 0;
    end;
end;

procedure TCustomMasterLookupForm.GridCDSBeforeDelete(DataSet: TDataSet);
begin
 if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterLookupForm.GridCDSAfterDelete(DataSet: TDataSet);
begin
  GridCDS.ApplyUpdates(0);
  GridCDS.Refresh;
end;

procedure TCustomMasterLookupForm.GridCDSBeforePost(DataSet: TDataSet);
begin
  Tbl_State := GridCDS.State;

  if GridCDS.State = dsInsert then
    gridCds[MasterKeyField] := GetNextId(MasterTblName,MasterKeyField);
  LocateKeyId := gridCds[MasterKeyField];
end;

procedure TCustomMasterLookupForm.GridCDSAfterPost(DataSet: TDataSet);
begin
  GridCDS.ApplyUpdates(0);
  GridCDS.Refresh;
  CDSLookup.Refresh;
end;

procedure TCustomMasterLookupForm.FormKeyPress(Sender: TObject;
  var Key: Char);
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

end.
