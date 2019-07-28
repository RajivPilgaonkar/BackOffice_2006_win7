unit Custom_1MG_Fm;

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
  TCustom_1MG_Form = class(TForm)
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
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    cxButtonUtilities: TcxButton;
    PopupMenu1: TPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_1MG_Form: TCustom_1MG_Form;
  Custom_Cds_State :TDataSetState;
  Custom_MasterCdsName: string;
  Custom_MasterKeyField: string;
  Custom_LocateKeyId: Integer;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;


implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCustom_1MG_Form.FormCreate(Sender: TObject);
begin

  MasterCds.Active := false;
  MasterCds.Active := True;
  MasterCds.First;

  cxDBLabelKeyId.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId.DataBinding.DataField := Custom_MasterKeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId.Left := cxButtonClose.Left - 100;

  cxGrid1DBBandedTableView1.DataController.GotoFirst;

end;

procedure TCustom_1MG_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCustom_1MG_Form.FormDestroy(Sender: TObject);
begin
  Custom_MasterkeyField := '';
  Custom_1MG_Form := nil;
end;

procedure TCustom_1MG_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
//  MasterCds.Refresh;
end;

procedure TCustom_1MG_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_1MG_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_1MG_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_Cds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

  Custom_LocateKeyId := MasterCds[Custom_MasterKeyField];

end;

procedure TCustom_1MG_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_1MG_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_1MG_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
end;

procedure TCustom_1MG_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_1MG_Form.FormResize(Sender: TObject);
begin

  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId.Left := cxButtonClose.Left - 100;

end;

procedure TCustom_1MG_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


end.
