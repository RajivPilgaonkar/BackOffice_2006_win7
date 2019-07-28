unit Custom_CostPkg_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, Menus,
  cxLookAndFeelPainters, cxDBLabel, cxNavigator, cxDBNavigator, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxLabel, Buttons, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  dxSkinscxPCPainter, cxPC;

type
  TCustom_CostPkg_Form = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    cxLabel1: TcxLabel;
    cxCityLcmb: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxPackageLcmb: TcxLookupComboBox;
    cxWefLCMB: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxAgentLcmb: TcxLookupComboBox;
    Panel2: TPanel;
    cxButtonUtilities: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxButtonClose: TcxButton;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDs: TDataSource;
    PackageSds: TSQLDataSet;
    PackageDsp: TDataSetProvider;
    PackageCds: TClientDataSet;
    PackageDs: TDataSource;
    PackageCdsPackages_id: TIntegerField;
    PackageCdsPackage: TStringField;
    PackageCdsFrom_Cities_id: TIntegerField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDs: TDataSource;
    PackageCdsAddressbook_id: TIntegerField;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    Panel5: TPanel;
    Splitter4: TSplitter;
    Panel8: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel9: TPanel;
    cxPageControl5: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    MasterCdscostpackages_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    MasterCdscommission: TBCDField;
    MasterCdsavailable: TBooleanField;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDS: TDataSource;
    WefCdsPackages_id: TIntegerField;
    WefCdsWef: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
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
  Custom_CostPkg_Form: TCustom_CostPkg_Form;
  Custom_MasterCds_State: TDataSetState;
  Custom_MasterCdsName: string;
  Custom_MasterKeyField: string;
  Custom_TableArray: Array[0..0] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;


implementation

uses GeneralUt;

{$R *.dfm}

procedure TCustom_CostPkg_Form.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;

  MasterCds.First;

  cxDBLabelKeyId_Master.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId_Master.DataBinding.DataField := Custom_MasterKeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;

end;

procedure TCustom_CostPkg_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MasterCds.Active := False;
  Action := caFree;
end;

procedure TCustom_CostPkg_Form.FormDestroy(Sender: TObject);
begin
  Custom_MasterKeyField := '';

  Custom_CostPkg_Form := nil;

end;

procedure TCustom_CostPkg_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_CostPkg_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TCustom_CostPkg_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_CostPkg_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_CostPkg_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_CostPkg_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_CostPkg_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;

procedure TCustom_CostPkg_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_CostPkg_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_CostPkg_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;


end;

end.
