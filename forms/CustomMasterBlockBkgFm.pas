unit CustomMasterBlockBkgFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, Buttons, Mask, Grids, DBGrids,
  DBCtrls, FMTBcd, SqlExpr, Provider, DB, DBClient, ComCtrls;

type
  TCustomMasterBlockBkgForm = class(TForm)
    MainMenu1: TMainMenu;
    Utilities1: TMenuItem;
    Reports1: TMenuItem;
    Regenarate1: TMenuItem;
    BlockBookings1: TMenuItem;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    CloseBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CitiesLookUpCmb: TDBLookupComboBox;
    AgentsLookUpCmb: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GridDS: TDataSource;
    GridCDS: TClientDataSet;
    GridDSP: TDataSetProvider;
    GridSQLTable: TSQLTable;
    CityLookUpQry: TSQLQuery;
    CityLookupDSP: TDataSetProvider;
    CityLookupCDS: TClientDataSet;
    CityLookupDS: TDataSource;
    AgentLookUpQry: TSQLQuery;
    AgentLookUpDSP: TDataSetProvider;
    AgentLookUpCDS: TClientDataSet;
    AgentLookUpDS: TDataSource;
    NoConfEF: TDBEdit;
    ConfirmEF1: TDBEdit;
    FromDateEF: TDateTimePicker;
    ToDateEF: TDateTimePicker;
    ReserveEF1: TDBEdit;
    CancEF1: TDBEdit;
    ConfirmEF: TMaskEdit;
    ReserveEF: TMaskEdit;
    CancEF: TMaskEdit;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure GridCDSBeforePost(DataSet: TDataSet);
    procedure GridCDSAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridCDSBeforeEdit(DataSet: TDataSet);
    procedure GridCDSBeforeInsert(DataSet: TDataSet);
    procedure GridCDSAfterInsert(DataSet: TDataSet);
    procedure GridCDSBeforeDelete(DataSet: TDataSet);
    procedure GridCDSAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMasterBlockBkgForm: TCustomMasterBlockBkgForm;
  AdmLevel : Integer;
  MasterKeyField: String;
  MasterTblName: String;
  MasterKeyFieldValue: Integer;
  LocateKeyId: Integer;
  Tbl_State : TDataSetState;
//  SqlStr : String;
implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TCustomMasterBlockBkgForm.CloseBtnClick(Sender: TObject);
begin
  close;
end;

procedure TCustomMasterBlockBkgForm.FormCreate(Sender: TObject);
begin
     GridCDS.Active := True;
     CityLookupCDS.Active := True;
     AgentLookUpCDS.Active := True;
end;

procedure TCustomMasterBlockBkgForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    GridCDS.Active := False;
    CityLookupCDS.Active := False;
    AgentLookUpCDS.Active := False;
    Action := caFree;
end;

procedure TCustomMasterBlockBkgForm.FormDestroy(Sender: TObject);
begin
   CustomMasterBlockBkgForm := nil;
end;

procedure TCustomMasterBlockBkgForm.GridCDSBeforePost(DataSet: TDataSet);
begin
   Tbl_State := GridCDS.State;

  if GridCDS['Confirmedon'] <> null and GridCDS['reservedon'] <> null then
  begin
    if StrToDate(GridCDS['Confirmedon']) < StrToDate(GridCDS['reservedon']) then
       Raise Exception.Create('Confirm date should be greator than or equal to Reserved date ');
  end;
  if GridCDS.State = dsInsert then
    gridCds[MasterKeyField] := GetNextId(MasterTblName,MasterKeyField);
  LocateKeyId := gridCds[MasterKeyField];
end;

procedure TCustomMasterBlockBkgForm.GridCDSAfterPost(DataSet: TDataSet);
begin
  GridCDS.ApplyUpdates(0);
  GridCDS.Refresh;
  CityLookupCDS.Refresh;
  AgentLookUpCDS.Refresh ;
end;

procedure TCustomMasterBlockBkgForm.FormKeyPress(Sender: TObject;
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

procedure TCustomMasterBlockBkgForm.GridCDSBeforeEdit(DataSet: TDataSet);
begin
    if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterBlockBkgForm.GridCDSBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterBlockBkgForm.GridCDSAfterInsert(DataSet: TDataSet);
begin
  if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
    begin
      with TDBGrid(ActiveControl) do
          SelectedIndex := 0;
    end;
end;

procedure TCustomMasterBlockBkgForm.GridCDSBeforeDelete(DataSet: TDataSet);
begin
   if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustomMasterBlockBkgForm.GridCDSAfterDelete(DataSet: TDataSet);
begin
  GridCDS.ApplyUpdates(0);
  GridCDS.Refresh;
end;

end.
