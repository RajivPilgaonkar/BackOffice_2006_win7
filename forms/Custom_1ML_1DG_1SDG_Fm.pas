unit Custom_1ML_1DG_1SDG_Fm;

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
  cxDBLookupComboBox;

type
  TCustom_1ML_1DG_1SDG_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
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
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Splitter2: TSplitter;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxDBLabelKeyId_SubDetail: TcxDBLabel;
    SubDetailSds: TSQLDataSet;
    SubDetailDsp: TDataSetProvider;
    SubDetailCds: TClientDataSet;
    SubDetailDs: TDataSource;
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
    procedure SubDetailCdsAfterDelete(DataSet: TDataSet);
    procedure SubDetailCdsAfterPost(DataSet: TDataSet);
    procedure SubDetailCdsBeforeEdit(DataSet: TDataSet);
    procedure SubDetailCdsBeforePost(DataSet: TDataSet);
    procedure SubDetailCdsBeforeInsert(DataSet: TDataSet);
    procedure SubDetailCdsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_1ML_1DG_1SDG_Form: TCustom_1ML_1DG_1SDG_Form;
  Custom_MasterCds_State: TDataSetState;
  Custom_DetailCds_State: TDataSetState;
  Custom_SubDetailCds_State: TDataSetState;
  Custom_MasterCdsName: string;
  Custom_DetailCdsName: string;
  Custom_SubDetailCdsName: string;
  Custom_MasterKeyField: string;
  Custom_DetailKeyField: string;
  Custom_SubDetailKeyField: string;
  Custom_TableArray: Array[0..1] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;


implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TCustom_1ML_1DG_1SDG_Form.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  DetailCds.Active := True;
  SubDetailCds.Active := True;

  MasterCds.First;

  cxDBLabelKeyId_Master.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId_Master.DataBinding.DataField := Custom_MasterKeyField;

  cxDBLabelKeyId_Detail.DataBinding.DataSource := DetailDs;
  cxDBLabelKeyId_Detail.DataBinding.DataField := Custom_DetailKeyField;

  cxDBLabelKeyId_SubDetail.DataBinding.DataSource := SubDetailDs;
  cxDBLabelKeyId_SubDetail.DataBinding.DataField := Custom_SubDetailKeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail.Left := cxDBLabelKeyId_Master.Left;
  cxDBLabelKeyId_SubDetail.Left := cxDBLabelKeyId_Detail.Left - 100;

  cxGrid1DBBandedTableView1.DataController.GotoFirst;

end;

procedure TCustom_1ML_1DG_1SDG_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SubDetailCds.Active := False;
  DetailCds.Active := False;
  MasterCds.Active := False;
  Action := caFree;
end;

procedure TCustom_1ML_1DG_1SDG_Form.FormDestroy(Sender: TObject);
begin
  Custom_MasterKeyField := '';
  Custom_DetailKeyField := '';
  Custom_SubDetailKeyField := '';
  Custom_1ML_1DG_1SDG_Form := nil;
end;


procedure TCustom_1ML_1DG_1SDG_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;

end;

procedure TCustom_1ML_1DG_1SDG_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_1ML_1DG_1SDG_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := DetailDS;
  Custom_TableArray[1] := SubDetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_1ML_1DG_1SDG_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := DetailDS;
  Custom_TableArray[1] := SubDetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_1ML_1DG_1SDG_Form.FormCloseQuery(Sender: TObject;
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

  if SubDetailCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the sub-detail record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;

procedure TCustom_1ML_1DG_1SDG_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := DetailDS;
  Custom_TableArray[1] := SubDetailDS;
  PostDsTables(Custom_TableArray);

  DetailCds.First;
  if not DetailCds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

end;

procedure TCustom_1ML_1DG_1SDG_Form.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  DetailCds.ApplyUpdates(0);
end;

procedure TCustom_1ML_1DG_1SDG_Form.DetailCdsAfterPost(DataSet: TDataSet);
begin
  DetailCds.ApplyUpdates(0);
end;

procedure TCustom_1ML_1DG_1SDG_Form.DetailCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := SubDetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.DetailCdsBeforePost(DataSet: TDataSet);
begin
  Custom_DetailCds_State := DetailCds.State;

  if DetailCds.State = dsInsert then
    DetailCds[Custom_DetailKeyField] := GetNextId(Custom_DetailCdsName,Custom_DetailKeyField);

end;

procedure TCustom_1ML_1DG_1SDG_Form.DetailCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := SubDetailDS;
  PostDsTables(Custom_TableArray);
end;

procedure TCustom_1ML_1DG_1SDG_Form.DetailCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := SubDetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail.Left := cxDBLabelKeyId_Master.Left;
  cxDBLabelKeyId_SubDetail.Left := cxDBLabelKeyId_Detail.Left - 100;

end;

procedure TCustom_1ML_1DG_1SDG_Form.SubDetailCdsAfterDelete(
  DataSet: TDataSet);
begin
  SubDetailCds.ApplyUpdates(0);
end;

procedure TCustom_1ML_1DG_1SDG_Form.SubDetailCdsAfterPost(
  DataSet: TDataSet);
begin
  SubDetailCds.ApplyUpdates(0);
end;

procedure TCustom_1ML_1DG_1SDG_Form.SubDetailCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := DetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.SubDetailCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_SubDetailCds_State := SubDetailCds.State;

  if SubDetailCds.State = dsInsert then
    SubDetailCds[Custom_SubDetailKeyField] := GetNextId(Custom_SubDetailCdsName,Custom_SubDetailKeyField);

end;

procedure TCustom_1ML_1DG_1SDG_Form.SubDetailCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := DetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.SubDetailCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := DetailDS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_1DG_1SDG_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


end.
