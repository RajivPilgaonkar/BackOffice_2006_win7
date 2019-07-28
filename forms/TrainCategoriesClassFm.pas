unit TrainCategoriesClassFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FMTBcd, DBClient, Provider,
  SqlExpr, DBCtrls, cxLookAndFeelPainters, cxButtons, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxContainer, cxGroupBox,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TTrainCategoriesClassForm = class(TForm)
    GroupBox1: TcxGroupBox;
    Panel1: TPanel;
    SearchLbl: TcxLabel;
    SearchEdit: TcxTextEdit;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    CustomMasterCxGrid: TcxGrid;
    MasterSDS: TSQLDataSet;
    DataSetProvider: TDataSetProvider;
    MasterDS: TDataSource;
    MasterCds: TClientDataSet;
    Panel2: TPanel;
    KeyIdDbText: TDBText;
    CloseBtn: TcxButton;
    Label1: TLabel;
    cxTrainCategoryLCMB: TcxLookupComboBox;
    TrainCategoriesSds: TSQLDataSet;
    TrainCategoriesDsp: TDataSetProvider;
    TrainCategoriesCds: TClientDataSet;
    TrainCategoriesDs: TDataSource;
    TrainCategoriesCdstraincategories_id: TIntegerField;
    TrainCategoriesCdscategory: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrainCategoriesClassForm: TTrainCategoriesClassForm;
  Tbl_State :TDataSetState;
  MasterCdsName: string;
  MasterKeyField: string;
  MasterKeyFieldValue: Integer;
  LocateKeyId: Integer;
  AdmLevel: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TTrainCategoriesClassForm.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  KeyIdDBText.DataField := MasterKeyField;

  // close Button on Right Corner
  CloseBtn.Left := Width - CloseBtn.Width - 20;
end;

procedure TTrainCategoriesClassForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MasterCds.Active := False;
  Action := caFree;
end;

procedure TTrainCategoriesClassForm.FormDestroy(Sender: TObject);
begin
  CustomMasterCxGridForm := nil;
end;

procedure TTrainCategoriesClassForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Tbl_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[MasterKeyField] := GetNextId(MasterCdsName,MasterKeyField);

  LocateKeyId := MasterCds[MasterKeyField];

end;

procedure TTrainCategoriesClassForm.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TTrainCategoriesClassForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TTrainCategoriesClassForm.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TTrainCategoriesClassForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  //MasterCDS.Refresh;
end;

procedure TTrainCategoriesClassForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCDS.Refresh;
end;

procedure TTrainCategoriesClassForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TTrainCategoriesClassForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post; 
end;

end.
