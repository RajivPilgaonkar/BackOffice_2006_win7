unit Custom_PackagesDayActivity_Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC, ExtCtrls,
  FMTBcd, DBClient, Provider, SqlExpr, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxContainer, cxLabel, cxDBLabel;

type
  TCustom_PackagesDayActivity_Form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheetTickets: TcxTabSheet;
    cxTabSheetAcc: TcxTabSheet;
    cxTabSheetSs: TcxTabSheet;
    cxTabSheetTrsf: TcxTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsDs: TDataSource;
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    SsSds: TSQLDataSet;
    SsDsp: TDataSetProvider;
    SsCds: TClientDataSet;
    SsDs: TDataSource;
    TransfersSds: TSQLDataSet;
    TransfersDsp: TDataSetProvider;
    TransfersCds: TClientDataSet;
    TransfersDs: TDataSource;
    TicketsCdsTickets_id: TIntegerField;
    TicketsCdsFrom_Cities_id: TIntegerField;
    TicketsCdsTo_Cities_id: TIntegerField;
    TicketsCdsFlightNo: TStringField;
    TicketsCdsClass_id: TIntegerField;
    AccCdsDayIn: TIntegerField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsAC: TBooleanField;
    AccCdsRoomTypes_id: TIntegerField;
    AccCdsCities_id: TIntegerField;
    AccCdsMealPlans_id: TIntegerField;
    AccCdsNights: TIntegerField;
    SsCdsCities_id: TIntegerField;
    SsCdsAgentAddressbook_id: TIntegerField;
    SsCdsServices_id: TIntegerField;
    SsCdsStartTime: TSQLTimeStampField;
    SsCdsAC: TBooleanField;
    SsCdsSightSeeing: TBooleanField;
    SsCdsTransferTypes_id: TIntegerField;
    SsCdsVehicles_id: TIntegerField;
    TransfersCdsCities_id: TIntegerField;
    TransfersCdsAgentAddressbook_id: TIntegerField;
    TransfersCdsServices_id: TIntegerField;
    TransfersCdsStartTime: TSQLTimeStampField;
    TransfersCdsAC: TBooleanField;
    TransfersCdsSightSeeing: TBooleanField;
    TransfersCdsTransferTypes_id: TIntegerField;
    TransfersCdsVehicles_id: TIntegerField;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Tickets: TcxDBLabel;
    cxDBLabelKeyId_Acc: TcxDBLabel;
    cxDBLabelKeyId_Ss: TcxDBLabel;
    cxDBLabelKeyId_Transfers: TcxDBLabel;
    TicketsCdsPackagesTickets_id: TIntegerField;
    TicketsCdsPackages_id: TIntegerField;
    TicketsCdsDayNo: TIntegerField;
    AccCdsPackagesAccommodation_id: TIntegerField;
    AccCdsPackages_id: TIntegerField;
    SsCdsPackagesServices_id: TIntegerField;
    SsCdsPackages_id: TIntegerField;
    SsCdsDayNo: TIntegerField;
    TransfersCdsPackagesServices_id: TIntegerField;
    TransfersCdsPackages_id: TIntegerField;
    TransfersCdsDayNo: TIntegerField;
    SsCdsServiceCities_id: TIntegerField;
    SsCdsGuide: TBooleanField;
    SsCdsEntranceFees: TBooleanField;
    SsCdsTransport: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TicketsCdsAfterPost(DataSet: TDataSet);
    procedure TicketsCdsAfterDelete(DataSet: TDataSet);
    procedure TicketsCdsBeforeEdit(DataSet: TDataSet);
    procedure TicketsCdsBeforePost(DataSet: TDataSet);
    procedure TicketsCdsBeforeInsert(DataSet: TDataSet);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TicketsCdsBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure AccCdsAfterDelete(DataSet: TDataSet);
    procedure AccCdsBeforeEdit(DataSet: TDataSet);
    procedure AccCdsBeforePost(DataSet: TDataSet);
    procedure AccCdsBeforeInsert(DataSet: TDataSet);
    procedure AccCdsBeforeDelete(DataSet: TDataSet);
    procedure SsCdsAfterPost(DataSet: TDataSet);
    procedure SsCdsAfterDelete(DataSet: TDataSet);
    procedure SsCdsBeforeEdit(DataSet: TDataSet);
    procedure SsCdsBeforePost(DataSet: TDataSet);
    procedure SsCdsBeforeInsert(DataSet: TDataSet);
    procedure SsCdsBeforeDelete(DataSet: TDataSet);
    procedure TransfersCdsAfterPost(DataSet: TDataSet);
    procedure TransfersCdsAfterDelete(DataSet: TDataSet);
    procedure TransfersCdsBeforeEdit(DataSet: TDataSet);
    procedure TransfersCdsBeforePost(DataSet: TDataSet);
    procedure TransfersCdsBeforeInsert(DataSet: TDataSet);
    procedure TransfersCdsBeforeDelete(DataSet: TDataSet);
  private
     procedure SetFormDimensions;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Custom_PackagesDayActivity_Form: TCustom_PackagesDayActivity_Form;
  Custom_TicketsCds_State: TDataSetState;
  Custom_AccCds_State: TDataSetState;
  Custom_SsCds_State: TDataSetState;
  Custom_TransfersCds_State: TDataSetState;
  Custom_TicketsCdsName: string;
  Custom_AccCdsName: string;
  Custom_SsCdsName: string;
  Custom_TransfersCdsName: string;
  Custom_TicketsKeyField: string;
  Custom_AccKeyField: string;
  Custom_SsKeyField: string;
  Custom_TransfersKeyField: string;
  Custom_TableArray: Array[0..2] of TDataSource;
  Custom_AdmLevel: Integer;
  Custom_FormWidth: integer;
  Custom_FormHeight: integer;
  Custom_FormType: integer;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TCustom_PackagesDayActivity_Form.FormCreate(Sender: TObject);
begin

  cxTabSheetTickets.TabVisible := false;
  cxTabSheetAcc.TabVisible := false;
  cxTabSheetSs.TabVisible := false;
  cxTabSheetTrsf.TabVisible := false;

  if (Custom_FormType = 1) or (Custom_FormType = 5) then
    begin
      cxTabSheetTickets.TabVisible := true;
      TicketsCds.Active := true;
      TicketsCds.First;
      cxPageControl1.ActivePageIndex := 0;
    end;

  if (Custom_FormType = 2) or (Custom_FormType = 5) then
    begin
      cxTabSheetAcc.TabVisible := true;
      AccCds.Active := true;
      AccCds.First;
      if (Custom_FormType = 2) then
        cxPageControl1.ActivePageIndex := 1;
    end;

  if (Custom_FormType = 3) or (Custom_FormType = 5) then
    begin
      cxTabSheetSs.TabVisible := true;
      SsCds.Active := true;
      SsCds.First;
      if (Custom_FormType = 3) then
        cxPageControl1.ActivePageIndex := 2;
    end;

  if (Custom_FormType = 4) or (Custom_FormType = 5) then
    begin
      cxTabSheetTrsf.TabVisible := true;
      TransfersCds.Active := True;
      TransfersCds.First;
      if (Custom_FormType = 4) then
        cxPageControl1.ActivePageIndex := 3;
    end;

  cxDBLabelKeyId_Tickets.DataBinding.DataSource := TicketsDs;
  cxDBLabelKeyId_Tickets.DataBinding.DataField := Custom_TicketsKeyField;

  cxDBLabelKeyId_Acc.DataBinding.DataSource := AccDs;
  cxDBLabelKeyId_Acc.DataBinding.DataField := Custom_AccKeyField;

  cxDBLabelKeyId_Ss.DataBinding.DataSource := SsDs;
  cxDBLabelKeyId_Ss.DataBinding.DataField := Custom_SsKeyField;

  cxDBLabelKeyId_Transfers.DataBinding.DataSource := TransfersDs;
  cxDBLabelKeyId_Transfers.DataBinding.DataField := Custom_TransfersKeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Tickets.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Acc.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Ss.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Transfers.Left := cxButtonClose.Left;

end;

procedure TCustom_PackagesDayActivity_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  TicketsCds.Active := False;
//  AccCds.Active := False;
//  SsCds.Active := False;
//  TransfersCds.Active := False;
//  Action := caFree;
end;

procedure TCustom_PackagesDayActivity_Form.FormDestroy(Sender: TObject);
begin
  Custom_TicketsKeyField := '';
  Custom_AccKeyField := '';
  Custom_SsKeyField := '';
  Custom_TransfersKeyField := '';

  Custom_PackagesDayActivity_Form := nil;

end;

procedure TCustom_PackagesDayActivity_Form.TicketsCdsAfterPost(
  DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
end;

procedure TCustom_PackagesDayActivity_Form.TicketsCdsAfterDelete(
  DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
  TicketsCds.Refresh;
end;

procedure TCustom_PackagesDayActivity_Form.TicketsCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := AccDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.TicketsCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_TicketsCds_State := TicketsCds.State;

  if TicketsCds.State = dsInsert then
    TicketsCds[Custom_TicketsKeyField] := GetNextId(Custom_TicketsCdsName,Custom_TicketsKeyField);

end;

procedure TCustom_PackagesDayActivity_Form.TicketsCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := AccDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.TicketsCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := AccDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_PackagesDayActivity_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_PackagesDayActivity_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if TicketsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the tickets record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if AccCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the accommodation record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if SsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the sightseeing record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

  if TransfersCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the transfers record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;


procedure TCustom_PackagesDayActivity_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Tickets.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Acc.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Ss.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Transfers.Left := cxButtonClose.Left;

end;

procedure TCustom_PackagesDayActivity_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_PackagesDayActivity_Form.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TCustom_PackagesDayActivity_Form.AccCdsAfterDelete(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
  AccCds.Refresh;
end;

procedure TCustom_PackagesDayActivity_Form.AccCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.AccCdsBeforePost(DataSet: TDataSet);
begin
  Custom_AccCds_State := AccCds.State;

  if AccCds.State = dsInsert then
    AccCds[Custom_AccKeyField] := GetNextId(Custom_AccCdsName,Custom_AccKeyField);

end;

procedure TCustom_PackagesDayActivity_Form.AccCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.AccCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_PackagesDayActivity_Form.SsCdsAfterPost(DataSet: TDataSet);
begin
  SsCds.ApplyUpdates(0);
end;

procedure TCustom_PackagesDayActivity_Form.SsCdsAfterDelete(DataSet: TDataSet);
begin
  SsCds.ApplyUpdates(0);
  SsCds.Refresh;
end;

procedure TCustom_PackagesDayActivity_Form.SsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.SsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_SsCds_State := SsCds.State;

  if SsCds.State = dsInsert then
    SsCds[Custom_SsKeyField] := GetNextId(Custom_SsCdsName,Custom_SsKeyField);

end;

procedure TCustom_PackagesDayActivity_Form.SsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.SsCdsBeforeDelete(DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := TransfersDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_PackagesDayActivity_Form.TransfersCdsAfterPost(
  DataSet: TDataSet);
begin
  TransfersCds.ApplyUpdates(0);
end;

procedure TCustom_PackagesDayActivity_Form.TransfersCdsAfterDelete(
  DataSet: TDataSet);
begin
  TransfersCds.ApplyUpdates(0);
  TransfersCds.Refresh;
end;

procedure TCustom_PackagesDayActivity_Form.TransfersCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := SsDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.TransfersCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_TransfersCds_State := TransfersCds.State;

  if TransfersCds.State = dsInsert then
    TransfersCds[Custom_TransfersKeyField] := GetNextId(Custom_TransfersCdsName,Custom_TransfersKeyField);
end;

procedure TCustom_PackagesDayActivity_Form.TransfersCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := SsDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_PackagesDayActivity_Form.TransfersCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := SsDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

end.
