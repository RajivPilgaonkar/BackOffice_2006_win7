unit Custom_Tickets_MG_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxPC, cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, FMTBcd, DBClient, Provider, SqlExpr;

type
  TCustom_Tickets_MG_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId: TcxDBLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    FlightsSds: TSQLDataSet;
    FlightsDsp: TDataSetProvider;
    FlightsCds: TClientDataSet;
    FlightsDs: TDataSource;
    cxButtonUtilities: TcxButton;
    PopupMenu1: TPopupMenu;
    TrainsSds: TSQLDataSet;
    TrainsDsp: TDataSetProvider;
    TrainsCds: TClientDataSet;
    TrainsDs: TDataSource;
    BusesSds: TSQLDataSet;
    BusesDsp: TDataSetProvider;
    BusesCds: TClientDataSet;
    BusesDs: TDataSource;
    FerriesSds: TSQLDataSet;
    FerriesDsp: TDataSetProvider;
    FerriesCds: TClientDataSet;
    FerriesDs: TDataSource;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FlightsCdsAfterDelete(DataSet: TDataSet);
    procedure FlightsCdsAfterPost(DataSet: TDataSet);
    procedure FlightsCdsBeforeEdit(DataSet: TDataSet);
    procedure FlightsCdsBeforePost(DataSet: TDataSet);
    procedure FlightsCdsBeforeInsert(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FlightsCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure TrainsCdsAfterDelete(DataSet: TDataSet);
    procedure TrainsCdsAfterPost(DataSet: TDataSet);
    procedure TrainsCdsBeforeEdit(DataSet: TDataSet);
    procedure TrainsCdsBeforePost(DataSet: TDataSet);
    procedure TrainsCdsBeforeInsert(DataSet: TDataSet);
    procedure TrainsCdsBeforeDelete(DataSet: TDataSet);
    procedure BusesCdsAfterDelete(DataSet: TDataSet);
    procedure BusesCdsAfterPost(DataSet: TDataSet);
    procedure BusesCdsBeforeDelete(DataSet: TDataSet);
    procedure BusesCdsBeforeEdit(DataSet: TDataSet);
    procedure BusesCdsBeforeInsert(DataSet: TDataSet);
    procedure BusesCdsBeforePost(DataSet: TDataSet);
    procedure FerriesCdsAfterDelete(DataSet: TDataSet);
    procedure FerriesCdsAfterPost(DataSet: TDataSet);
    procedure FerriesCdsBeforeDelete(DataSet: TDataSet);
    procedure FerriesCdsBeforeEdit(DataSet: TDataSet);
    procedure FerriesCdsBeforeInsert(DataSet: TDataSet);
    procedure FerriesCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_Tickets_MG_Form: TCustom_Tickets_MG_Form;

  Custom_LocateKeyId: Integer;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;

  Custom_FlightsCds_State :TDataSetState;
  Custom_TrainsCds_State :TDataSetState;
  Custom_BusesCds_State :TDataSetState;
  Custom_FerriesCds_State :TDataSetState;

  Custom_FlightsCdsName: string;
  Custom_TrainsCdsName: string;
  Custom_BusesCdsName: string;
  Custom_FerriesCdsName: string;

  Custom_FlightsKeyField: string;
  Custom_TrainsKeyField: string;
  Custom_BusesKeyField: string;
  Custom_FerriesKeyField: string;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustom_Tickets_MG_Form.FormCreate(Sender: TObject);
begin

  FlightsCds.Active := false;
  FlightsCds.Active := True;
  FlightsCds.First;

  TrainsCds.Active := false;
  TrainsCds.Active := True;
  TrainsCds.First;

  BusesCds.Active := false;
  BusesCds.Active := True;
  BusesCds.First;

  FerriesCds.Active := false;
  FerriesCds.Active := True;
  FerriesCds.First;

  if cxPageControl1.ActivePageIndex = 0 then
    begin
      cxDBLabelKeyId.DataBinding.DataSource := FlightsDs;
      cxDBLabelKeyId.DataBinding.DataField := Custom_FlightsKeyField;
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      cxDBLabelKeyId.DataBinding.DataSource := TrainsDs;
      cxDBLabelKeyId.DataBinding.DataField := Custom_TrainsKeyField;
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      cxDBLabelKeyId.DataBinding.DataSource := BusesDs;
      cxDBLabelKeyId.DataBinding.DataField := Custom_BusesKeyField;
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin
      cxDBLabelKeyId.DataBinding.DataSource := FerriesDs;
      cxDBLabelKeyId.DataBinding.DataField := Custom_FerriesKeyField;
    end;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId.Left := cxButtonClose.Left - 100;

  cxGrid1DBBandedTableView1.DataController.GotoFirst;

end;

procedure TCustom_Tickets_MG_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCustom_Tickets_MG_Form.FormDestroy(Sender: TObject);
begin
  Custom_FlightsKeyField := '';
  Custom_TrainsKeyField := '';
  Custom_BusesKeyField := '';
  Custom_FerriesKeyField := '';
  Custom_Tickets_MG_Form := nil;
end;

procedure TCustom_Tickets_MG_Form.FlightsCdsAfterDelete(DataSet: TDataSet);
begin
  FlightsCds.ApplyUpdates(0);
//  MasterCds.Refresh;
end;

procedure TCustom_Tickets_MG_Form.FlightsCdsAfterPost(DataSet: TDataSet);
begin
  FlightsCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.FlightsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.FlightsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_FlightsCds_State := FlightsCds.State;

  if FlightsCds.State = dsInsert then
    FlightsCds[Custom_FlightsKeyField] := GetNextId(Custom_FlightsCdsName,Custom_FlightsKeyField);

  Custom_LocateKeyId := FlightsCds[Custom_FlightsKeyField];

end;

procedure TCustom_Tickets_MG_Form.FlightsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_Tickets_MG_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FlightsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the flight record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if TrainsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the train record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if BusesCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the bus record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else if FerriesCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the ferry record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;
end;

procedure TCustom_Tickets_MG_Form.FlightsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.FormResize(Sender: TObject);
begin

  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId.Left := cxButtonClose.Left - 100;

end;

procedure TCustom_Tickets_MG_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_Tickets_MG_Form.TrainsCdsAfterDelete(DataSet: TDataSet);
begin
  TrainsCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.TrainsCdsAfterPost(DataSet: TDataSet);
begin
  TrainsCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.TrainsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.TrainsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_TrainsCds_State := TrainsCds.State;

  if TrainsCds.State = dsInsert then
    TrainsCds[Custom_TrainsKeyField] := GetNextId(Custom_TrainsCdsName,Custom_TrainsKeyField);

  Custom_LocateKeyId := TrainsCds[Custom_TrainsKeyField];

end;

procedure TCustom_Tickets_MG_Form.TrainsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.TrainsCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.BusesCdsAfterDelete(DataSet: TDataSet);
begin
  BusesCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.BusesCdsAfterPost(DataSet: TDataSet);
begin
  BusesCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.BusesCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.BusesCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.BusesCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_Tickets_MG_Form.BusesCdsBeforePost(DataSet: TDataSet);
begin
  Custom_BusesCds_State := BusesCds.State;

  if BusesCds.State = dsInsert then
    BusesCds[Custom_BusesKeyField] := GetNextId(Custom_BusesCdsName,Custom_BusesKeyField);

  Custom_LocateKeyId := BusesCds[Custom_BusesKeyField];

end;

procedure TCustom_Tickets_MG_Form.FerriesCdsAfterDelete(DataSet: TDataSet);
begin
  FerriesCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.FerriesCdsAfterPost(DataSet: TDataSet);
begin
  FerriesCds.ApplyUpdates(0);
end;

procedure TCustom_Tickets_MG_Form.FerriesCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom_Tickets_MG_Form.FerriesCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom_Tickets_MG_Form.FerriesCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom_Tickets_MG_Form.FerriesCdsBeforePost(DataSet: TDataSet);
begin
  Custom_FerriesCds_State := FerriesCds.State;

  if FerriesCds.State = dsInsert then
    FerriesCds[Custom_FerriesKeyField] := GetNextId(Custom_FerriesCdsName,Custom_FerriesKeyField);

  Custom_LocateKeyId := FerriesCds[Custom_FerriesKeyField];
end;

end.
