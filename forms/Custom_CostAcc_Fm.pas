unit Custom_CostAcc_Fm;

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
  TCustom_CostAcc_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter1: TSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxPageControl4: TcxPageControl;
    cxTabSheetCalc: TcxTabSheet;
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
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    HotelDs: TDataSource;
    cxLabel2: TcxLabel;
    cxHotelLcmb: TcxLookupComboBox;
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
    Detail1Cdshoteltariffs_id: TIntegerField;
    Detail1Cdsseasons_id: TIntegerField;
    Detail1Cdsroomtypes_id: TIntegerField;
    Detail1Cdscurrencies_id: TIntegerField;
    Detail1Cdscurrencies_pt_id: TIntegerField;
    Detail1Cdscost_single: TBCDField;
    Detail1Cdscost_single_pt: TBCDField;
    Detail1Cdscost_single_ac: TBCDField;
    Detail1Cdscost_single_ac_pt: TBCDField;
    Detail1Cdscost_double: TBCDField;
    Detail1Cdscost_double_pt: TBCDField;
    Detail1Cdscost_double_ac: TBCDField;
    Detail1Cdscost_double_ac_pt: TBCDField;
    Detail1Cdsnett: TBooleanField;
    Detail1Cdsnett_pt: TBooleanField;
    Detail1Cdsmealplans_id: TIntegerField;
    Detail1Cdsmealplans_pt_id: TIntegerField;
    Detail1Cdsfreetransfer: TBooleanField;
    Detail1Cdsextrabed: TBCDField;
    Detail1Cdsextrabed_pt: TBCDField;
    Detail2Cdsmealcosts_id: TIntegerField;
    Detail2Cdsseasons_id: TIntegerField;
    Detail2Cdsbreakfast: TBCDField;
    Detail2Cdsbreakfast_pt: TBCDField;
    Detail2Cdslunch: TBCDField;
    Detail2Cdslunch_pt: TBCDField;
    Detail2Cdsdinner: TBCDField;
    Detail2Cdsdinner_pt: TBCDField;
    Detail2Cdscurrencies_id: TIntegerField;
    Detail2Cdscurrencies_pt_id: TIntegerField;
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
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BooleanField1: TBooleanField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    BCDField6: TBCDField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BooleanField6: TBooleanField;
    BCDField7: TBCDField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BooleanField7: TBooleanField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    BooleanField8: TBooleanField;
    IntegerField7: TIntegerField;
    BooleanField9: TBooleanField;
    BooleanField10: TBooleanField;
    BooleanField11: TBooleanField;
    BooleanField12: TBooleanField;
    MemoField1: TMemoField;
    StringField1: TStringField;
    MasterDs: TDataSource;
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
  private
    { Private declarations }
    procedure SetFormDimensions;
  public
    { Public declarations }
  end;

var
  Custom_CostAcc_Form: TCustom_CostAcc_Form;
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

procedure TCustom_CostAcc_Form.FormCreate(Sender: TObject);
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
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;
  cxDBLabelKeyId_Detail1.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Master.Left;
//  cxDBLabelKeyId_Detail1.Top := cxDBLabelKeyId_Master.Top;

end;

procedure TCustom_CostAcc_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Detail2Cds.Active := False;
  Detail1Cds.Active := False;
  MasterCds.Active := False;
  Action := caFree;

end;

procedure TCustom_CostAcc_Form.FormDestroy(Sender: TObject);
begin

  Custom_MasterKeyField := '';
  Custom_Detail1KeyField := '';
  Custom_Detail2KeyField := '';

  Custom_CostAcc_Form := nil;

end;

procedure TCustom_CostAcc_Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
end;

procedure TCustom_CostAcc_Form.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TCustom_CostAcc_Form.MasterCdsBeforeEdit(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  Custom_MasterCds_State := MasterCds.State;

  if MasterCds.State = dsInsert then
    MasterCds[Custom_MasterKeyField] := GetNextId(Custom_MasterCdsName,Custom_MasterKeyField);

end;

procedure TCustom_CostAcc_Form.MasterCdsBeforeInsert(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_CostAcc_Form.FormCloseQuery(Sender: TObject;
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

procedure TCustom_CostAcc_Form.MasterCdsBeforeDelete(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Master.Left := cxButtonClose.Left - 200;
  cxDBLabelKeyId_Detail1.Left := cxButtonClose.Left - 100;
  cxDBLabelKeyId_Detail2.Left := cxDBLabelKeyId_Master.Left;

end;

procedure TCustom_CostAcc_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_CostAcc_Form.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_CostAcc_Form.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCustom_CostAcc_Form.Detail1CdsBeforeEdit(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail1Cds_State := Detail1Cds.State;

  if Detail1Cds.State = dsInsert then
    Detail1Cds[Custom_Detail1KeyField] := GetNextId(Custom_Detail1CdsName,Custom_Detail1KeyField);

end;

procedure TCustom_CostAcc_Form.Detail1CdsBeforeInsert(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.Detail1CdsBeforeDelete(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.Detail2CdsAfterDelete(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_CostAcc_Form.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  Detail2Cds.ApplyUpdates(0);
end;

procedure TCustom_CostAcc_Form.Detail2CdsBeforeEdit(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  Custom_Detail2Cds_State := Detail2Cds.State;

  if Detail2Cds.State = dsInsert then
    Detail2Cds[Custom_Detail2KeyField] := GetNextId(Custom_Detail2CdsName,Custom_Detail2KeyField);


end;

procedure TCustom_CostAcc_Form.Detail2CdsBeforeInsert(DataSet: TDataSet);
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

procedure TCustom_CostAcc_Form.Detail2CdsBeforeDelete(DataSet: TDataSet);
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
