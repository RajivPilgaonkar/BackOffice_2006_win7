unit Custom_2MG_2DG_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, StdCtrls, cxCheckBox,
  cxGroupBox, cxRadioGroup, cxPC, ExtCtrls, cxControls, cxContainer,
  cxEdit, cxLabel, cxDBLabel, cxButtons, FMTBcd, DB, DBClient, Provider,
  SqlExpr, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TCustom_2MG_2DG_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButtonUtilities: TcxButton;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Detail: TcxDBLabel;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxDBLabelKeyId_SubDetail: TcxDBLabel;
    Panel5: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxActiveCkb: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxFromDateEdit: TcxDateEdit;
    Label4: TLabel;
    cxToDateEdit: TcxDateEdit;
    MasterTourSds: TSQLDataSet;
    MasterTourDsp: TDataSetProvider;
    MasterTourCds: TClientDataSet;
    MasterTourDs: TDataSource;
    TourSds: TSQLDataSet;
    TourDsp: TDataSetProvider;
    TourCds: TClientDataSet;
    TourDs: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Splitter2: TSplitter;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    TourCalSds: TSQLDataSet;
    TourCalDsp: TDataSetProvider;
    TourCalCds: TClientDataSet;
    TourCalDs: TDataSource;
    FitAgentSds: TSQLDataSet;
    FitAgentDsp: TDataSetProvider;
    FitAgentCds: TClientDataSet;
    FitAgentDs: TDataSource;
    cxTmRB: TcxRadioButton;
    cxFitRB: TcxRadioButton;
    cxGroupRB: TcxRadioButton;
    cxTourNameTextEdit: TcxTextEdit;
    cxTourCodeTextEdit: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TourCalCdsAfterDelete(DataSet: TDataSet);
    procedure TourCalCdsAfterPost(DataSet: TDataSet);
    procedure TourCalCdsBeforeEdit(DataSet: TDataSet);
    procedure TourCalCdsBeforePost(DataSet: TDataSet);
    procedure TourCalCdsBeforeInsert(DataSet: TDataSet);
    procedure TourCalCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure FitAgentCdsAfterDelete(DataSet: TDataSet);
    procedure FitAgentCdsAfterPost(DataSet: TDataSet);
    procedure FitAgentCdsBeforeEdit(DataSet: TDataSet);
    procedure FitAgentCdsBeforePost(DataSet: TDataSet);
    procedure FitAgentCdsBeforeInsert(DataSet: TDataSet);
    procedure FitAgentCdsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;    
  public
    { Public declarations }
  end;

var
  Custom_2MG_2DG_Form: TCustom_2MG_2DG_Form;
  Custom_TableArray: Array[0..0] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TCustom_2MG_2DG_Form.FormCreate(Sender: TObject);
begin

  Custom_FormHeight := 690;
  Custom_FormWidth := 1100;
  cxPageControl1.ActivePageIndex := 0;

  TourCalCds.Active := True;
  FitAgentCds.Active := True;

  MasterTourCds.First;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;

  cxGrid1DBTableView1.DataController.GotoFirst;

end;

procedure TCustom_2MG_2DG_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FitAgentCds.Active := False;
  TourCalCds.Active := False;
  TourCds.Active := False;
  MasterTourCds.Active := False;
  Action := caFree;
end;

procedure TCustom_2MG_2DG_Form.FormDestroy(Sender: TObject);
begin
  Custom_2MG_2DG_Form := nil;
end;

procedure TCustom_2MG_2DG_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_2MG_2DG_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if TourCalCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tour calendar record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if FitAgentCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the FIT agent record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;

procedure TCustom_2MG_2DG_Form.TourCalCdsAfterDelete(DataSet: TDataSet);
begin
  TourCalCds.ApplyUpdates(0);
end;

procedure TCustom_2MG_2DG_Form.TourCalCdsAfterPost(DataSet: TDataSet);
begin
  TourCalCds.ApplyUpdates(0);
end;

procedure TCustom_2MG_2DG_Form.TourCalCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := FitAgentDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_2MG_2DG_Form.TourCalCdsBeforePost(DataSet: TDataSet);
begin
  if TourCalCds.State = dsInsert then
    TourCalCds['TourCalendar_id'] := GetNextId('TourCalendar','TourCalendar_id');

end;

procedure TCustom_2MG_2DG_Form.TourCalCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := FitAgentDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_2MG_2DG_Form.TourCalCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := FitAgentDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_2MG_2DG_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 100;

end;

procedure TCustom_2MG_2DG_Form.FitAgentCdsAfterDelete(DataSet: TDataSet);
begin
  FitAgentCds.ApplyUpdates(0);
end;

procedure TCustom_2MG_2DG_Form.FitAgentCdsAfterPost(DataSet: TDataSet);
begin
  FitAgentCds.ApplyUpdates(0);
end;

procedure TCustom_2MG_2DG_Form.FitAgentCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TourCalDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_2MG_2DG_Form.FitAgentCdsBeforePost(DataSet: TDataSet);
begin
  if FitAgentCds.State = dsInsert then
    FitAgentCds['MasterFitAgents_id'] := GetNextId('MasterFitAgents','MasterFitAgents_id');

end;

procedure TCustom_2MG_2DG_Form.FitAgentCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TourCalDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_2MG_2DG_Form.FitAgentCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TourCalDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_2MG_2DG_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


end.
