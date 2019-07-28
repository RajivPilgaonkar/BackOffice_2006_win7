unit Custom_1ML_2DG_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, DBClient,
  Provider, SqlExpr, Menus, cxLookAndFeelPainters, cxContainer, cxLabel,
  cxDBLabel, StdCtrls, cxButtons, cxPC, cxGridDBTableView;

type
  TCustom_1ML_2DG_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    Detail1Sds: TSQLDataSet;
    Detail1Dsp: TDataSetProvider;
    Detail1Cds: TClientDataSet;
    Detail1Ds: TDataSource;
    cxButtonUtilities: TcxButton;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Detail1: TcxDBLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2Level1: TcxGridLevel;
    Detail2Sds: TSQLDataSet;
    Detail2Dsp: TDataSetProvider;
    Detail2Cds: TClientDataSet;
    Detail2Ds: TDataSource;
    cxDBLabelKeyId_Detail2: TcxDBLabel;
    Splitter2: TSplitter;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
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
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure Detail2CdsAfterDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
    procedure Detail2CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail2CdsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_1ML_2DG_Form: TCustom_1ML_2DG_Form;
  Custom_MasterCds_State: TDataSetState;
  Custom_Detail1Cds_State: TDataSetState;
  Custom_Detail2Cds_State: TDataSetState;
  Custom_MasterCdsName: string;
  Custom_Detail1CdsName: string;
  Custom_Detail2CdsName: string;
  Custom_MasterKeyField: string;
  Custom_Detail1KeyField: string;
  Custom_Detail2KeyField: string;
  Custom_TableArray: Array[0..1] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;


implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TCustom_1ML_2DG_Form.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  Detail1Cds.Active := True;
  Detail2Cds.Active := True;

  MasterCds.First;

  cxDBLabelKeyId_Master.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId_Master.DataBinding.DataField := Custom_MasterKeyField;

  cxDBLabelKeyId_Detail1.DataBinding.DataSource := Detail1Ds;
  cxDBLabelKeyId_Detail1.DataBinding.DataField := Custom_Detail1KeyField;

  cxDBLabelKeyId_Detail2.DataBinding.DataSource := Detail2Ds;
  cxDBLabelKeyId_Detail2.DataBinding.DataField := Custom_Detail2KeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail1.Left := cxDBLabelKeyId_Master.Left;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Detail1.Left - 70;
  cxDBLabelKeyId_Detail2.Top := cxDBLabelKeyId_Detail1.Top;  

end;

procedure TCustom_1ML_2DG_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Detail2Cds.Active := False;
  Detail1Cds.Active := False;
  MasterCds.Active := False;
  Action := caFree;
end;

procedure TCustom_1ML_2DG_Form.FormDestroy(Sender: TObject);
begin
  Custom_MasterKeyField := '';
  Custom_Detail1KeyField := '';
  Custom_Detail2KeyField := '';
  Custom_1ML_2DG_Form := nil;
end;


procedure TCustom_1ML_2DG_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;

end;

procedure TCustom_1ML_2DG_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_1ML_2DG_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;  
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_2DG_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_1ML_2DG_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_2DG_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_1ML_2DG_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail1Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the detailed record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail2Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the detailed record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;

procedure TCustom_1ML_2DG_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  PostDsTables(Custom_TableArray);

  Detail1Cds.First;
  if not Detail1Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  Detail2Cds.First;
  if not Detail2Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

end;

procedure TCustom_1ML_2DG_Form.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_1ML_2DG_Form.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_1ML_2DG_Form.Detail1CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_2DG_Form.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    Detail1Cds[Custom_Detail1KeyField] := GetNextId(Custom_Detail1CdsName,Custom_Detail1KeyField);

end;

procedure TCustom_1ML_2DG_Form.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  PostDsTables(Custom_TableArray);
end;

procedure TCustom_1ML_2DG_Form.Detail1CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;  
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_2DG_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail1.Left := cxDBLabelKeyId_Master.Left;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Detail1.Left-70;

end;

procedure TCustom_1ML_2DG_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_1ML_2DG_Form.Detail2CdsAfterDelete(
  DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_1ML_2DG_Form.Detail2CdsAfterPost(
  DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_1ML_2DG_Form.Detail2CdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_2DG_Form.Detail2CdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_Detail2Cds_State := Detail2Cds.State;

  if Detail2Cds.State = dsInsert then
    Detail2Cds[Custom_Detail2KeyField] := GetNextId(Custom_Detail2CdsName,Custom_Detail2KeyField);

end;

procedure TCustom_1ML_2DG_Form.Detail2CdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_1ML_2DG_Form.Detail2CdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  PostDsTables(Custom_TableArray);

end;

end.
