unit CustomMasterPageControlFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Grids, DBGrids, DBClient, DB,
  SqlExpr, Provider, dblookup, ExtCtrls, ComCtrls, DBCtrls;

type
  TCustomMasterPageControlForm = class(TForm)
    Panel1: TPanel;
    GridDS1: TDataSource;
    GridDSP1: TDataSetProvider;
    GridTbl1: TSQLTable;
    GridCDS1: TClientDataSet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GridDS2: TDataSource;
    GridDSP2: TDataSetProvider;
    GridTbl2: TSQLTable;
    GridCDS2: TClientDataSet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    SearchLbl: TLabel;
    SearchEdit: TEdit;
    Label2: TLabel;
    LookUpCmb: TDBLookupComboBox;
    DSLookup: TDataSource;
    CDSLookup: TClientDataSet;
    DSPLookup: TDataSetProvider;
    LookUpQry: TSQLQuery;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridCDS1BeforePost(DataSet: TDataSet);
    procedure GridCDS2BeforePost(DataSet: TDataSet);
    procedure GridCDS2AfterPost(DataSet: TDataSet);
    procedure GridCDS1AfterPost(DataSet: TDataSet);
    procedure GridCDS1AfterDelete(DataSet: TDataSet);
    procedure GridCDS2AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomMasterPageControlForm: TCustomMasterPageControlForm;
  AdmLevel: Integer;
  Detail1Tbl_State :TDataSetState;
  Detail2Tbl_State :TDataSetState;
  Detail1TblName: string;
  Detail2TblName: String;
  Detail1KeyField: string;
  Detail2KeyField: string;
  Detail1KeyFieldValue: Integer;
  Detail2KeyFieldValue :Integer;

  LocateKeyId: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustomMasterPageControlForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCustomMasterPageControlForm.GridCDS1BeforePost(
  DataSet: TDataSet);
begin
  Detail1Tbl_State := GridCDS1.State;

  if GridCDS1.State = dsInsert then
    GridCDS1[Detail1KeyField] := GetNextId(Detail1TblName,Detail1KeyField);

//  LocateKeyId := GridCDS1[Detail1KeyField];

end;

procedure TCustomMasterPageControlForm.GridCDS2BeforePost(
  DataSet: TDataSet);
begin
  Detail2Tbl_State := GridCDS2.State;

  if GridCDS2.State = dsInsert then
    GridCDS2[Detail2KeyField] := GetNextId(Detail2TblName,Detail2KeyField);

//  LocateKeyId := GridCDS2[Detail2KeyField];

end;

procedure TCustomMasterPageControlForm.GridCDS2AfterPost(
  DataSet: TDataSet);
begin
  GridCDS2.ApplyUpdates(0);
  GridCDS2.Refresh;
end;

procedure TCustomMasterPageControlForm.GridCDS1AfterPost(
  DataSet: TDataSet);
begin
  GridCDS1.ApplyUpdates(0);
  GridCDS1.Refresh;
end;

procedure TCustomMasterPageControlForm.GridCDS1AfterDelete(
  DataSet: TDataSet);
begin
  GridCDS1.ApplyUpdates(0);
  GridCDS1.Refresh;
end;

procedure TCustomMasterPageControlForm.GridCDS2AfterDelete(
  DataSet: TDataSet);
begin
  GridCDS2.ApplyUpdates(0);
  GridCDS2.Refresh;
end;

end.
