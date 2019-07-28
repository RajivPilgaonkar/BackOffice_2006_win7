unit Custom_CostSrv_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, cxLabel, cxDBLabel,
  cxNavigator, cxDBNavigator, cxTextEdit, cxContainer, cxGroupBox,
  cxRadioGroup, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC, ExtCtrls,
  FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Buttons,
  cxMemo, cxCheckBox;

type
  TCustom_CostSrv_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxPageControl4: TcxPageControl;
    cxTabSheetTransport: TcxTabSheet;
    cxButtonUtilities: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    cxDBLabelKeyId_Master: TcxDBLabel;
    cxDBLabelKeyId_Detail2: TcxDBLabel;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Detail1: TcxDBLabel;
    PopupMenu1: TPopupMenu;
    CopyTrains1: TMenuItem;
    Detail1Sds: TSQLDataSet;
    Detail1Dsp: TDataSetProvider;
    Detail1Cds: TClientDataSet;
    Detail1Ds: TDataSource;
    Detail2Sds: TSQLDataSet;
    Detail2Dsp: TDataSetProvider;
    Detail2Cds: TClientDataSet;
    Detail2Ds: TDataSource;
    cxLabel1: TcxLabel;
    cxCityLcmb: TcxLookupComboBox;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDs: TDataSource;
    cxLabel2: TcxLabel;
    cxAgentLcmb: TcxLookupComboBox;
    Label5: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    SpeedButton1: TSpeedButton;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefCdsAddressbook_id: TIntegerField;
    WefDS: TDataSource;
    Panel6: TPanel;
    Panel7: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDs: TDataSource;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    cxLabel3: TcxLabel;
    cxServiceCityLcmb: TcxLookupComboBox;
    ServiceCitiesSds: TSQLDataSet;
    ServiceCitiesDsp: TDataSetProvider;
    ServiceCitiesCds: TClientDataSet;
    IntegerField8: TIntegerField;
    StringField2: TStringField;
    ServiceCitiesDs: TDataSource;
    ServiceCitiesCdsAddressbook_id: TIntegerField;
    WefCdscities_id: TIntegerField;
    Panel8: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel9: TPanel;
    Splitter4: TSplitter;
    cxPageControl5: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    Panel10: TPanel;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel11: TPanel;
    cxPageControl6: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    Splitter1: TSplitter;
    Splitter5: TSplitter;
    Detail3Sds: TSQLDataSet;
    Detail3Dsp: TDataSetProvider;
    Detail3Cds: TClientDataSet;
    Detail3Ds: TDataSource;
    Detail4Sds: TSQLDataSet;
    Detail4Dsp: TDataSetProvider;
    Detail4Cds: TClientDataSet;
    Detail4Ds: TDataSource;
    Detail5Sds: TSQLDataSet;
    Detail5Dsp: TDataSetProvider;
    Detail5Cds: TClientDataSet;
    Detail5Ds: TDataSource;
    MasterCdscostservices_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsservices_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdsremarks: TMemoField;
    MasterCdstourleaderfree: TBooleanField;
    MasterCdsservicecharges: TBCDField;
    MasterCdsagentcharges: TBCDField;
    MasterCdscommissionontransport: TBCDField;
    MasterCdscities_id: TIntegerField;
    MasterCdscostservicesdistinct_id: TIntegerField;
    Detail1CdsCostServicesClose_id: TIntegerField;
    Detail1CdsCostServices_id: TIntegerField;
    Detail1CdsFromDate: TSQLTimeStampField;
    Detail1CdsToDate: TSQLTimeStampField;
    Detail2Cdscostservicesothers_id: TIntegerField;
    Detail2Cdscostservices_id: TIntegerField;
    Detail2Cdsfrompax: TIntegerField;
    Detail2Cdstopax: TIntegerField;
    Detail2Cdscostperperson: TBCDField;
    Detail2Cdscostpergroup: TBCDField;
    Detail2Cdsremarks: TStringField;
    Detail2Cdstourleaderfree: TBooleanField;
    Detail2Cdscurrencies_id: TIntegerField;
    Detail2Cdsresident: TSmallintField;
    Detail2Cdstourleader: TIntegerField;
    Detail3Cdscostservicesguides_id: TIntegerField;
    Detail3Cdscostservices_id: TIntegerField;
    Detail3Cdsfrompax: TIntegerField;
    Detail3Cdstopax: TIntegerField;
    Detail3Cdscost: TBCDField;
    Detail3Cdstourleaderfree: TBooleanField;
    Detail3Cdsremarks: TStringField;
    Detail3Cdscurrencies_id: TIntegerField;
    Detail3Cdsresident: TSmallintField;
    Detail4Cdscostservicesentrancefees_id: TIntegerField;
    Detail4Cdscostservices_id: TIntegerField;
    Detail4Cdsfrompax: TIntegerField;
    Detail4Cdstopax: TIntegerField;
    Detail4Cdscost: TBCDField;
    Detail4Cdstourleaderfree: TBooleanField;
    Detail4Cdsremarks: TStringField;
    Detail4Cdscurrencies_id: TIntegerField;
    Detail4Cdsresident: TSmallintField;
    Detail5Cdscostservicestransport_id: TIntegerField;
    Detail5Cdscostservice_id: TIntegerField;
    Detail5Cdsfrompax: TIntegerField;
    Detail5Cdstopax: TIntegerField;
    Detail5Cdsvehicles_id: TIntegerField;
    Detail5Cdsfit: TBooleanField;
    Detail5Cdscostnonac: TBCDField;
    Detail5Cdscostac: TBCDField;
    Detail5Cdsparkingfee: TBCDField;
    Detail5Cdscurrencies_id: TIntegerField;
    Detail5Cdsmasters_id: TIntegerField;
    Detail5Cdsobsolete: TSmallintField;
    Detail5CdsRoadTaxPerDay: TFMTBCDField;
    Detail5CdsMeetAndAssist: TBCDField;
    Detail5CdsEntryAp: TBCDField;
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
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
    procedure Detail2CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail2CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail3CdsAfterDelete(DataSet: TDataSet);
    procedure Detail3CdsAfterPost(DataSet: TDataSet);
    procedure Detail3CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail3CdsBeforePost(DataSet: TDataSet);
    procedure Detail3CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail3CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail4CdsAfterDelete(DataSet: TDataSet);
    procedure Detail4CdsAfterPost(DataSet: TDataSet);
    procedure Detail4CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail4CdsBeforePost(DataSet: TDataSet);
    procedure Detail4CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail4CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail5CdsAfterDelete(DataSet: TDataSet);
    procedure Detail5CdsAfterPost(DataSet: TDataSet);
    procedure Detail5CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail5CdsBeforePost(DataSet: TDataSet);
    procedure Detail5CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail5CdsBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_CostSrv_Form: TCustom_CostSrv_Form;
  Custom_MasterCds_State: TDataSetState;
  Custom_Detail1Cds_State: TDataSetState;
  Custom_Detail2Cds_State: TDataSetState;
  Custom_Detail3Cds_State: TDataSetState;
  Custom_Detail4Cds_State: TDataSetState;
  Custom_Detail5Cds_State: TDataSetState;
  Custom_MasterCdsName: string;
  Custom_Detail1CdsName: string;
  Custom_Detail2CdsName: string;
  Custom_Detail3CdsName: string;
  Custom_Detail4CdsName: string;
  Custom_Detail5CdsName: string;
  Custom_MasterKeyField: string;
  Custom_Detail1KeyField: string;
  Custom_Detail2KeyField: string;
  Custom_Detail3KeyField: string;
  Custom_Detail4KeyField: string;
  Custom_Detail5KeyField: string;
  Custom_TableArray: Array[0..4] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;

implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TCustom_CostSrv_Form.FormCreate(Sender: TObject);
begin
  MasterCds.Active := True;
  Detail1Cds.Active := True;
  Detail2Cds.Active := True;
  Detail3Cds.Active := True;
  Detail4Cds.Active := True;
  Detail5Cds.Active := True;

  MasterCds.First;

  cxDBLabelKeyId_Master.DataBinding.DataSource := MasterDs;
  cxDBLabelKeyId_Master.DataBinding.DataField := Custom_MasterKeyField;

  cxDBLabelKeyId_Detail1.DataBinding.DataSource := Detail1Ds;
  cxDBLabelKeyId_Detail1.DataBinding.DataField := Custom_Detail1KeyField;

  cxDBLabelKeyId_Detail2.DataBinding.DataSource := Detail2Ds;
  cxDBLabelKeyId_Detail2.DataBinding.DataField := Custom_Detail2KeyField;

//  cxDBLabelKeyId_Detail3.DataBinding.DataSource := Detail3Ds;
//  cxDBLabelKeyId_Detail3.DataBinding.DataField := Custom_Detail3KeyField;

//  cxDBLabelKeyId_Detail4.DataBinding.DataSource := Detail4Ds;
//  cxDBLabelKeyId_Detail4.DataBinding.DataField := Custom_Detail4KeyField;

//  cxDBLabelKeyId_Detail5.DataBinding.DataSource := Detail5Ds;
//  cxDBLabelKeyId_Detail5.DataBinding.DataField := Custom_Detail5KeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;
  cxDBLabelKeyId_Detail1.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Master.Left;
//  cxDBLabelKeyId_Detail1.Top := cxDBLabelKeyId_Master.Top;

end;

procedure TCustom_CostSrv_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Detail5Cds.Active := False;
  Detail4Cds.Active := False;
  Detail3Cds.Active := False;
  Detail2Cds.Active := False;
  Detail1Cds.Active := False;
  MasterCds.Active := False;
  Action := caFree;

end;

procedure TCustom_CostSrv_Form.FormDestroy(Sender: TObject);
begin

  Custom_MasterKeyField := '';
  Custom_Detail1KeyField := '';
  Custom_Detail2KeyField := '';
  Custom_Detail3KeyField := '';
  Custom_Detail4KeyField := '';
  Custom_Detail5KeyField := '';

  Custom_CostSrv_Form := nil;

end;

procedure TCustom_CostSrv_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TCustom_CostSrv_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail2DS;
  Custom_TableArray[4] := Detail2DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_CostSrv_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail2DS;
  Custom_TableArray[4] := Detail2DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_CostSrv_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if MasterCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the master record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail1Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the "Closed On" before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail2Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the "Misc Costs" before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail3Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the "Guide Costs" before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail4Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the "Entrance Costs" before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if Detail5Cds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the "Transport Costs" before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;

procedure TCustom_CostSrv_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := Detail1DS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail2DS;
  Custom_TableArray[4] := Detail2DS;
  PostDsTables(Custom_TableArray);

  Detail1Cds.First;
  if not Detail1Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  Detail2Cds.First;
  if not Detail2Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  Detail3Cds.First;
  if not Detail2Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  Detail4Cds.First;
  if not Detail2Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

  Detail5Cds.First;
  if not Detail2Cds.Eof then
    raise exception.create ('Please delete the corresponding detail records first');

end;

procedure TCustom_CostSrv_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;
  cxDBLabelKeyId_Detail1.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Master.Left;

end;

procedure TCustom_CostSrv_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_CostSrv_Form.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail1CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := Detail3DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    Detail1Cds[Custom_Detail1KeyField] := GetNextId(Custom_Detail1CdsName,Custom_Detail1KeyField);

end;

procedure TCustom_CostSrv_Form.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := Detail3DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail1CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail2DS;
  Custom_TableArray[2] := Detail3DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail2CdsAfterDelete(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail2CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail3DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail2Cds_State := Detail2Cds.State;

  if Detail2Cds.State = dsInsert then
    Detail2Cds[Custom_Detail2KeyField] := GetNextId(Custom_Detail2CdsName,Custom_Detail2KeyField);


end;

procedure TCustom_CostSrv_Form.Detail2CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail3DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail2CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail3DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail3CdsAfterDelete(DataSet: TDataSet);
begin
  Detail3Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail3CdsAfterPost(DataSet: TDataSet);
begin
  Detail3Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail3CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail3CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail3Cds_State := Detail3Cds.State;

  if Detail3Cds.State = dsInsert then
    Detail3Cds[Custom_Detail3KeyField] := GetNextId(Custom_Detail3CdsName,Custom_Detail3KeyField);

end;

procedure TCustom_CostSrv_Form.Detail3CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail3CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail4DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail4CdsAfterDelete(DataSet: TDataSet);
begin
  Detail4Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail4CdsAfterPost(DataSet: TDataSet);
begin
  Detail4Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail4CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail3DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail4CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail4Cds_State := Detail4Cds.State;

  if Detail4Cds.State = dsInsert then
    Detail4Cds[Custom_Detail4KeyField] := GetNextId(Custom_Detail4CdsName,Custom_Detail4KeyField);

end;

procedure TCustom_CostSrv_Form.Detail4CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail3DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail4CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail3DS;
  Custom_TableArray[4] := Detail5DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail5CdsAfterDelete(DataSet: TDataSet);
begin
  Detail5Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail5CdsAfterPost(DataSet: TDataSet);
begin
  Detail5Cds.ApplyUpdates(0);
end;

procedure TCustom_CostSrv_Form.Detail5CdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail3DS;
  Custom_TableArray[4] := Detail4DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail5CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail5Cds_State := Detail5Cds.State;

  if Detail5Cds.State = dsInsert then
    Detail5Cds[Custom_Detail5KeyField] := GetNextId(Custom_Detail5CdsName,Custom_Detail5KeyField);

end;

procedure TCustom_CostSrv_Form.Detail5CdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail3DS;
  Custom_TableArray[4] := Detail4DS;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_CostSrv_Form.Detail5CdsBeforeDelete(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := MasterDS;
  Custom_TableArray[1] := Detail1DS;
  Custom_TableArray[2] := Detail2DS;
  Custom_TableArray[3] := Detail3DS;
  Custom_TableArray[4] := Detail4DS;
  PostDsTables(Custom_TableArray);

end;

end.
