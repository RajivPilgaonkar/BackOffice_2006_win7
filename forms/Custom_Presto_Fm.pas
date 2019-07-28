unit Custom_Presto_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, DBClient,
  Provider, SqlExpr, Menus, cxLookAndFeelPainters, cxContainer, cxLabel,
  cxDBLabel, StdCtrls, cxButtons, cxPC, cxTextEdit, cxDBEdit,
  cxDBLookupComboBox, cxNavigator, cxDBNavigator;

type
  TCustom_Presto_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    DetailSds: TSQLDataSet;
    DetailDsp: TDataSetProvider;
    DetailCds: TClientDataSet;
    DetailDs: TDataSource;
    cxButtonUtilities: TcxButton;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Detail: TcxDBLabel;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel3: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Splitter1: TSplitter;
    Panel4: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    Panel20: TPanel;
    Splitter3: TSplitter;
    Panel21: TPanel;
    DetailItinSds: TSQLDataSet;
    DetailItinDsp: TDataSetProvider;
    DetailItinCds: TClientDataSet;
    DetailItinDs: TDataSource;
    ItinerarySds: TSQLDataSet;
    ItineraryDsp: TDataSetProvider;
    ItineraryCds: TClientDataSet;
    ItineraryDs: TDataSource;
    InclusionsSds: TSQLDataSet;
    InclusionsDsp: TDataSetProvider;
    InclusionsCds: TClientDataSet;
    InclusionsDs: TDataSource;
    SubDetailSds: TSQLDataSet;
    SubDetailDsp: TDataSetProvider;
    SubDetailCds: TClientDataSet;
    SubDetailDs: TDataSource;
    QuoPrintSds: TSQLDataSet;
    QuoPrintDsp: TDataSetProvider;
    QuoPrintCds: TClientDataSet;
    QuoPrintDs: TDataSource;
    QuoLinesSds: TSQLDataSet;
    QuoLinesDsp: TDataSetProvider;
    QuoLinesCds: TClientDataSet;
    QuoLinesDs: TDataSource;
    cxTabSheet14: TcxTabSheet;
    AgentListSds: TSQLDataSet;
    AgentListDsp: TDataSetProvider;
    AgentListCds: TClientDataSet;
    AgentListDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure DetailCdsAfterDelete(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DetailCdsBeforeEdit(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforeInsert(DataSet: TDataSet);
    procedure DetailCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure QuoPrintCdsAfterDelete(DataSet: TDataSet);
    procedure QuoPrintCdsAfterPost(DataSet: TDataSet);
    procedure QuoPrintCdsBeforeEdit(DataSet: TDataSet);
    procedure QuoPrintCdsBeforeInsert(DataSet: TDataSet);
    procedure QuoPrintCdsBeforePost(DataSet: TDataSet);
    procedure QuoPrintCdsBeforeDelete(DataSet: TDataSet);
    procedure DetailItinCdsAfterDelete(DataSet: TDataSet);
    procedure DetailItinCdsAfterPost(DataSet: TDataSet);
    procedure DetailItinCdsBeforeEdit(DataSet: TDataSet);
    procedure DetailItinCdsBeforePost(DataSet: TDataSet);
    procedure DetailItinCdsBeforeInsert(DataSet: TDataSet);
    procedure DetailItinCdsBeforeDelete(DataSet: TDataSet);
    procedure SubDetailCdsAfterDelete(DataSet: TDataSet);
    procedure SubDetailCdsBeforeEdit(DataSet: TDataSet);
    procedure SubDetailCdsBeforePost(DataSet: TDataSet);
    procedure SubDetailCdsBeforeInsert(DataSet: TDataSet);
    procedure SubDetailCdsBeforeDelete(DataSet: TDataSet);
    procedure ItineraryCdsAfterPost(DataSet: TDataSet);
    procedure ItineraryCdsAfterDelete(DataSet: TDataSet);
    procedure InclusionsCdsAfterPost(DataSet: TDataSet);
    procedure InclusionsCdsAfterDelete(DataSet: TDataSet);
    procedure AgentListCdsAfterPost(DataSet: TDataSet);
    procedure ItineraryCdsBeforePost(DataSet: TDataSet);
    procedure InclusionsCdsBeforePost(DataSet: TDataSet);
    procedure SubDetailCdsAfterPost(DataSet: TDataSet);
    procedure ItineraryCdsBeforeDelete(DataSet: TDataSet);
    procedure ItineraryCdsBeforeEdit(DataSet: TDataSet);
    procedure ItineraryCdsBeforeInsert(DataSet: TDataSet);
    procedure InclusionsCdsBeforeDelete(DataSet: TDataSet);
    procedure InclusionsCdsBeforeEdit(DataSet: TDataSet);
    procedure InclusionsCdsBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_Presto_Form: TCustom_Presto_Form;
  Custom_MasterCds_State: TDataSetState;
  Custom_DetailCds_State: TDataSetState;
  Custom_MasterCdsName: string;
  Custom_DetailCdsName: string;
  Custom_MasterKeyField: string;
  Custom_DetailKeyField: string;
  Custom_TableArray: Array[0..0] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;

  Custom_MasterPrintCds_State: TDataSetState;
  Custom_DetailItinCds_State: TDataSetState;
  Custom_SubDetailCds_State: TDataSetState;
  Custom_ItineraryCds_State: TDataSetState;
  Custom_InclusionCds_State: TDataSetState;
  Custom_MasterPrintCdsName: string;
  Custom_DetailItinCdsName: string;
  Custom_SubDetailCdsName: string;
  Custom_ItineraryCdsName: string;
  Custom_InclusionCdsName: string;
  Custom_MasterPrintKeyField: string;
  Custom_DetailItinKeyField: string;
  Custom_SubDetailKeyField: string;
  Custom_ItineraryKeyField: string;
  Custom_InclusionKeyField: string;
  Custom_TablePrintArray: Array[0..3] of TDataSource;

implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TCustom_Presto_Form.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  DetailCds.Active := True;

  MasterCds.First;

  cxDBLabelKeyId_Master.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId_Master.DataBinding.DataField := Custom_MasterKeyField;

  cxDBLabelKeyId_Detail.DataBinding.DataSource := DetailDs;
  cxDBLabelKeyId_Detail.DataBinding.DataField := Custom_DetailKeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail.Left := cxDBLabelKeyId_Master.Left;

  cxGrid1DBBandedTableView1.DataController.GotoFirst;

  QuoLinesCds.Open;

  QuoPrintCds.Active := True;
  ItineraryCds.Active := True;
  InclusionsCds.Active := True;
  DetailItinCds.Active := True;
  SubDetailCds.Active := True;

  QuoPrintCds.First;

end;

procedure TCustom_Presto_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  QuoLinesCds.Close;

  SubDetailCds.Active := False;
  DetailItinCds.Active := False;
  ItineraryCds.Active := False;
  InclusionsCds.Active := False;
  QuoPrintCds.Active := False;

  DetailCds.Active := False;
  MasterCds.Active := False;

  Action := caFree;

end;

procedure TCustom_Presto_Form.FormDestroy(Sender: TObject);
begin
  Custom_MasterKeyField := '';
  Custom_DetailKeyField := '';

  Custom_MasterPrintKeyField := '';
  Custom_DetailItinKeyField := '';
  Custom_SubDetailKeyField := '';
  Custom_ItineraryKeyField := '';
  Custom_InclusionKeyField := '';

  Custom_Presto_Form := nil;
end;


procedure TCustom_Presto_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;

end;

procedure TCustom_Presto_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := DetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Presto_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_Presto_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := DetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Presto_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_Presto_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if DetailCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the detail record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if QuoPrintCds.State in [dsInsert, dsEdit] then
    QuoPrintCds.Cancel;

  if DetailItinCds.State in [dsInsert, dsEdit] then
    DetailItinCds.Cancel;

  if SubDetailCds.State in [dsInsert, dsEdit] then
    SubDetailCds.Cancel;

end;

procedure TCustom_Presto_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := DetailDS;
  PostDsTables(Custom_TableArray);

  DetailCds.First;
  if not DetailCds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

end;

procedure TCustom_Presto_Form.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  DetailCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.DetailCdsAfterPost(DataSet: TDataSet);
begin
  DetailCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.DetailCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Presto_Form.DetailCdsBeforePost(DataSet: TDataSet);
begin
  Custom_DetailCds_State := DetailCds.State;

  if DetailCds.State = dsInsert then
    DetailCds[Custom_DetailKeyField] := GetNextId(Custom_DetailCdsName,Custom_DetailKeyField);

end;

procedure TCustom_Presto_Form.DetailCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  PostDsTables(Custom_TableArray);
end;

procedure TCustom_Presto_Form.DetailCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_Presto_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail.Left := cxDBLabelKeyId_Master.Left;

end;

procedure TCustom_Presto_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_Presto_Form.QuoPrintCdsAfterDelete(DataSet: TDataSet);
begin
  QuoPrintCds.ApplyUpdates(0);
  QuoPrintCds.Refresh;
end;

procedure TCustom_Presto_Form.QuoPrintCdsAfterPost(DataSet: TDataSet);
begin
  QuoPrintCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.QuoPrintCdsBeforeEdit(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := DetailItinDS;
  Custom_TablePrintArray[1] := SubDetailDS;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.QuoPrintCdsBeforeInsert(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := DetailItinDS;
  Custom_TablePrintArray[1] := SubDetailDS;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);
end;

procedure TCustom_Presto_Form.QuoPrintCdsBeforePost(DataSet: TDataSet);
begin
  if QuoPrintCds.State = dsInsert then
    QuoPrintCds[Custom_MasterPrintKeyField] := GetNextId(Custom_MasterPrintCdsName,Custom_MasterPrintKeyField);

end;

procedure TCustom_Presto_Form.QuoPrintCdsBeforeDelete(DataSet: TDataSet);
begin

  Custom_TablePrintArray[0] := DetailItinDS;
  Custom_TablePrintArray[1] := SubDetailDS;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

  DetailItinCds.First;
  if not DetailItinCds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

end;

procedure TCustom_Presto_Form.DetailItinCdsAfterDelete(DataSet: TDataSet);
begin
  DetailItinCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.DetailItinCdsAfterPost(DataSet: TDataSet);
begin
  DetailItinCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.DetailItinCdsBeforeEdit(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := SubDetailDs;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.DetailItinCdsBeforePost(DataSet: TDataSet);
begin
  Custom_DetailItinCds_State := DetailItinCds.State;

  if DetailItinCds.State = dsInsert then
    DetailItinCds[Custom_DetailItinKeyField] := GetNextId(Custom_DetailItinCdsName,Custom_DetailItinKeyField);

end;

procedure TCustom_Presto_Form.DetailItinCdsBeforeInsert(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := SubDetailDs;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.DetailItinCdsBeforeDelete(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := SubDetailDs;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.SubDetailCdsAfterDelete(DataSet: TDataSet);
begin
  SubDetailCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.SubDetailCdsBeforeEdit(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.SubDetailCdsBeforePost(DataSet: TDataSet);
begin
  Custom_SubDetailCds_State := SubDetailCds.State;

  if SubDetailCds.State = dsInsert then
    SubDetailCds[Custom_SubDetailKeyField] := GetNextId(Custom_SubDetailCdsName,Custom_SubDetailKeyField);

end;

procedure TCustom_Presto_Form.SubDetailCdsBeforeInsert(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.SubDetailCdsBeforeDelete(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := ItineraryDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.ItineraryCdsAfterPost(DataSet: TDataSet);
begin
  ItineraryCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.ItineraryCdsAfterDelete(DataSet: TDataSet);
begin
  ItineraryCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.InclusionsCdsAfterPost(DataSet: TDataSet);
begin
  InclusionsCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.InclusionsCdsAfterDelete(DataSet: TDataSet);
begin
  InclusionsCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.AgentListCdsAfterPost(DataSet: TDataSet);
begin
  AgentListCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.ItineraryCdsBeforePost(DataSet: TDataSet);
begin
  Custom_ItineraryCds_State := ItineraryCds.State;

  if ItineraryCds.State = dsInsert then
    ItineraryCds[Custom_ItineraryKeyField] := GetNextId(Custom_ItineraryCdsName,Custom_ItineraryKeyField);

end;

procedure TCustom_Presto_Form.InclusionsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_InclusionCds_State := InclusionsCds.State;

  if InclusionsCds.State = dsInsert then
    InclusionsCds[Custom_InclusionKeyField] := GetNextId(Custom_InclusionCdsName,Custom_InclusionKeyField);

end;

procedure TCustom_Presto_Form.SubDetailCdsAfterPost(DataSet: TDataSet);
begin
  SubDetailCds.ApplyUpdates(0);
end;

procedure TCustom_Presto_Form.ItineraryCdsBeforeDelete(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := SubDetailDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.ItineraryCdsBeforeEdit(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := SubDetailDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.ItineraryCdsBeforeInsert(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := SubDetailDs;
  Custom_TablePrintArray[3] := InclusionsDs;
  PostDsTables(Custom_TablePrintArray);
end;

procedure TCustom_Presto_Form.InclusionsCdsBeforeDelete(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := SubDetailDs;
  Custom_TablePrintArray[3] := ItineraryDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.InclusionsCdsBeforeEdit(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := SubDetailDs;
  Custom_TablePrintArray[3] := ItineraryDs;
  PostDsTables(Custom_TablePrintArray);

end;

procedure TCustom_Presto_Form.InclusionsCdsBeforeInsert(DataSet: TDataSet);
begin
  Custom_TablePrintArray[0] := QuoPrintDs;
  Custom_TablePrintArray[1] := DetailItinDS;
  Custom_TablePrintArray[2] := SubDetailDs;
  Custom_TablePrintArray[3] := ItineraryDs;
  PostDsTables(Custom_TablePrintArray);

end;

end.
