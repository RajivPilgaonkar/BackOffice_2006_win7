unit CustomMasterTMFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, Mask,
  Menus, FMTBcd, DBClient, DB, Provider, SqlExpr;

type
  TCustomMasterTMForm = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PopupMenu1: TPopupMenu;
    Clear1: TMenuItem;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    MasterTable: TSQLTable;
    MasterToursTable: TSQLTable;
    MasterDSP: TDataSetProvider;
    MasterToursDSP: TDataSetProvider;
    MasterDS: TDataSource;
    MasterToursDS: TDataSource;
    MasterCDS: TClientDataSet;
    MasterToursCDS: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
    procedure MasterToursCDSAfterPost(DataSet: TDataSet);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure MasterToursCDSBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMasterTMForm: TCustomMasterTMForm;
  _MasterCDS_State : TDataSetState;
  MasterTbl_State,TourTbl_State: TDataSetState;

  MasterTblName: string;
  MasterKeyField: string;
  MasterKeyFieldValue: Integer;
  TourCodeTblName: string;
  TourCodeKeyField: string;
  TourCodeKeyFieldValue: Integer;

  LocateKeyId: Integer;
  AdmLevel: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustomMasterTMForm.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TCustomMasterTMForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  MasterCDS.ApplyUpdates(0);
  MasterCDS.Refresh;
end;

procedure TCustomMasterTMForm.MasterToursCDSAfterPost(DataSet: TDataSet);
begin
  MasterToursCDS.ApplyUpdates(0);
  MasterToursCDS.Refresh;
end;

procedure TCustomMasterTMForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  MasterTbl_State := MasterCDS.State;
  if MasterTbl_State = dsInsert then
    MasterCDS[MasterKeyField] := GetNextId(MasterTblName,MasterKeyField);
end;

procedure TCustomMasterTMForm.MasterToursCDSBeforePost(DataSet: TDataSet);
begin

  TourTbl_State := MasterToursCDS.State;
  if TourTbl_State = dsInsert then
    MasterToursCDS[TourCodeKeyField] := GetNextId(TourCodeTblName,TourCodeKeyField);
 
end;

procedure TCustomMasterTMForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MasterCDS.Active := False;
  MasterToursCDS.Active := False;
  Action := caFree;

end;

procedure TCustomMasterTMForm.FormDestroy(Sender: TObject);
begin
    CustomMasterTMForm := nil;
end;

procedure TCustomMasterTMForm.FormCreate(Sender: TObject);
begin
  MasterCDS.Active := True;
  MasterToursCDS.Active := True;
end;

end.
