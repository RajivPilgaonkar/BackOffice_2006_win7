unit BCPOptionFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxGroupBox, ExtCtrls, cxLabel, FMTBcd, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, DB, DBClient, Provider,
  SqlExpr, cxTextEdit, cxDBEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDBLookupComboBox, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TBcpOptionForm = class(TForm)
    Panel1: TPanel;
    cxGroupBox3: TcxGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    LocalSds: TSQLDataSet;
    LocalDsp: TDataSetProvider;
    LocalCds: TClientDataSet;
    LocalDs: TDataSource;
    CloseBtn: TcxButton;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    BCPSds: TSQLDataSet;
    BCPDsp: TDataSetProvider;
    BCPCds: TClientDataSet;
    BCPDs: TDataSource;
    BCPCdsdefaults_id: TIntegerField;
    BCPCdsitem: TStringField;
    BCPCdsnumber: TIntegerField;
    BCPCdstext: TStringField;
    BCPCdsdate: TSQLTimeStampField;
    BCPCdstime: TSQLTimeStampField;
    BCPCdscomments: TStringField;
    BCPCdsnumericvalue: TBCDField;
    BCPCdsboolean: TBooleanField;
    LocalCdsdefaults_id: TIntegerField;
    LocalCdsitem: TStringField;
    LocalCdsnumber: TIntegerField;
    LocalCdstext: TStringField;
    LocalCdsdate: TSQLTimeStampField;
    LocalCdstime: TSQLTimeStampField;
    LocalCdscomments: TStringField;
    LocalCdsnumericvalue: TBCDField;
    LocalCdsboolean: TBooleanField;
    CustomMasterCxGridDBTableView1defaults_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1text: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    RemoteSds: TSQLDataSet;
    RemoteDsp: TDataSetProvider;
    RemoteCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField3: TStringField;
    BCDField1: TBCDField;
    BooleanField1: TBooleanField;
    RemoteDs: TDataSource;
    cxButton1: TcxButton;
    cxGridDBTableView1defaults_id: TcxGridDBColumn;
    cxGridDBTableView1text: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Remote2Sds: TSQLDataSet;
    Remote2Dsp: TDataSetProvider;
    Remote2Cds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    StringField6: TStringField;
    BCDField2: TBCDField;
    BooleanField2: TBooleanField;
    Remote2Ds: TDataSource;
    procedure cxButton1Click(Sender: TObject);
    procedure BCPCdsAfterPost(DataSet: TDataSet);
    procedure LocalCdsAfterPost(DataSet: TDataSet);
    procedure RemoteCdsAfterPost(DataSet: TDataSet);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Remote2CdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BcpOptionForm: TBcpOptionForm;

implementation

{$R *.dfm}

procedure TBcpOptionForm.cxButton1Click(Sender: TObject);
begin
  if BcpCds.State = dsEdit then
    BcpCds.Post;
end;

procedure TBcpOptionForm.BcpCdsAfterPost(DataSet: TDataSet);
begin
  BcpCds.ApplyUpdates(0);
  BcpCds.Refresh;
end;

procedure TBcpOptionForm.LocalCdsAfterPost(DataSet: TDataSet);
begin
  LocalCds.ApplyUpdates(0);
  LocalCds.Refresh;
end;

procedure TBcpOptionForm.RemoteCdsAfterPost(DataSet: TDataSet);
begin
  RemoteCds.ApplyUpdates(0);
  RemoteCds.Refresh;
end;

procedure TBcpOptionForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TBcpOptionForm.FormCreate(Sender: TObject);
begin
  BcpCds.Active := False;
  BcpCds.Active :=  True;
  LocalCds.Active := False;
  LocalCds.Active := True;
  RemoteCds.Active := False;
  RemoteCds.Active := True;
  Remote2Cds.Active := False;
  Remote2Cds.Active := True;
end;

procedure TBcpOptionForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (BcpCds.State in [dsInsert, dsEdit]) or (LocalCds.State in [dsInsert, dsEdit]) or (RemoteCds.State in [dsInsert, dsEdit]) then
    begin
      MessageDlg ('Please save/cancel record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end
  else
    begin
      CanClose := True;
    end;
end;

procedure TBcpOptionForm.Remote2CdsAfterPost(DataSet: TDataSet);
begin
  Remote2Cds.ApplyUpdates(0);
  Remote2Cds.Refresh;

end;

end.
