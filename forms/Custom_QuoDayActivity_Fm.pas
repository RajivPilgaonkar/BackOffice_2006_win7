unit Custom_QuoDayActivity_Fm;

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
  TCustom_QuoDayActivity_Form = class(TForm)
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
    t: TIntegerField;
    TicketsCdsQuotations_id: TIntegerField;
    TicketsCdsCities_id: TIntegerField;
    TicketsCdsAgentAddressbook_id: TIntegerField;
    TicketsCdsTickets_id: TIntegerField;
    TicketsCdsNoOfTickets: TIntegerField;
    TicketsCdsTravelDate: TSQLTimeStampField;
    TicketsCdsFrom_Cities_id: TIntegerField;
    TicketsCdsTo_Cities_id: TIntegerField;
    TicketsCdsFrom_TrainStations_id: TIntegerField;
    TicketsCdsTo_TrainStations_id: TIntegerField;
    TicketsCdsClass_id: TIntegerField;
    TicketsCdsETD: TSQLTimeStampField;
    TicketsCdsETA: TSQLTimeStampField;
    TicketsCdsTravelDay: TIntegerField;
    TicketsCdsCost: TFMTBCDField;
    TicketsCdsMasters_id: TStringField;
    TicketsCdsstatus: TIntegerField;
    TicketsCdsTrainNo: TStringField;
    TicketsCdsLineNum: TIntegerField;
    TicketsCdsQuoCities_id: TIntegerField;
    TicketsCdsDaysOfOperation: TIntegerField;
    TicketsCdsOvernight: TBooleanField;
    TicketsCdsNights: TIntegerField;
    TicketsCdsHops: TIntegerField;
    TicketsCdsModePreference: TIntegerField;
    TicketsCdsCarReleaseDate: TSQLTimeStampField;
    TicketsCdsP2P: TIntegerField;
    TicketsCdsSendMail: TBooleanField;
    TicketsCdsRequestedOn: TSQLTimeStampField;
    TicketsCdsConfirmedOn: TSQLTimeStampField;
    TicketsCdsRemarks: TStringField;
    TicketsCdsTicketString: TStringField;
    TicketsCdsRemarksAgent: TStringField;
    TicketsCdsDriveTypes_id: TIntegerField;
    TicketsCdsCarHireGroups_id: TIntegerField;
    TicketsCdsReserveHotelOvernight: TBooleanField;
    TicketsCdsCarReportDate: TSQLTimeStampField;
    TicketsCdsRemarksAgentCancel: TStringField;
    TicketsCdsVehicles_id: TIntegerField;
    TicketsCdsNightHalt: TIntegerField;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsQuotations_id: TIntegerField;
    AccCdsDayIn: TIntegerField;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsDateOut: TSQLTimeStampField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsAC: TBooleanField;
    AccCdsRoomTypes_id: TIntegerField;
    AccCdsCities_id: TIntegerField;
    AccCdsMealPlans_id: TIntegerField;
    AccCdsCost: TFMTBCDField;
    AccCdsMasters_id: TStringField;
    AccCdsstatus: TIntegerField;
    AccCdsNights: TIntegerField;
    AccCdsHotelCities_id: TIntegerField;
    AccCdsAgentCities_id: TIntegerField;
    AccCdsLineNum: TIntegerField;
    AccCdsQuoCities_id: TIntegerField;
    AccCdsSelected: TBooleanField;
    AccCdsSendMail: TBooleanField;
    AccCdsRequestedOn: TSQLTimeStampField;
    AccCdsConfirmedOn: TSQLTimeStampField;
    AccCdsRemarks: TStringField;
    AccCdsAccString: TStringField;
    AccCdsRemarksHotel: TStringField;
    AccCdsCancelledOn: TSQLTimeStampField;
    AccCdsRemarksHotelCancel: TStringField;
    AccCdsReserveHotelOvernight: TBooleanField;
    AccCdsRemarksOther: TStringField;
    SsCdsQuoServices_id: TIntegerField;
    SsCdsQuotations_id: TIntegerField;
    SsCdsCities_id: TIntegerField;
    SsCdsAgentAddressbook_id: TIntegerField;
    SsCdsServices_id: TIntegerField;
    SsCdsStartTime: TSQLTimeStampField;
    SsCdsAC: TBooleanField;
    SsCdsGuide: TBooleanField;
    SsCdsTransport: TBooleanField;
    SsCdsSightSeeing: TBooleanField;
    SsCdsPlace: TStringField;
    SsCdsTransferTypes_id: TIntegerField;
    SsCdsVehicles_id: TIntegerField;
    SsCdsServiceDay: TIntegerField;
    SsCdsServiceDate: TSQLTimeStampField;
    SsCdsNoOfVehicles: TIntegerField;
    SsCdsCost: TFMTBCDField;
    SsCdsMasters_id: TStringField;
    SsCdsFlightNo: TStringField;
    SsCdsstatus: TIntegerField;
    SsCdsLineNum: TIntegerField;
    SsCdsEntranceFees: TBooleanField;
    SsCdsQuoCities_id: TIntegerField;
    SsCdsSelected: TBooleanField;
    SsCdsTimings: TStringField;
    SsCdsDaysOfOperation: TIntegerField;
    SsCdsLock: TBooleanField;
    TransfersCdsQuoServices_id: TIntegerField;
    TransfersCdsQuotations_id: TIntegerField;
    TransfersCdsCities_id: TIntegerField;
    TransfersCdsAgentAddressbook_id: TIntegerField;
    TransfersCdsServices_id: TIntegerField;
    TransfersCdsStartTime: TSQLTimeStampField;
    TransfersCdsAC: TBooleanField;
    TransfersCdsGuide: TBooleanField;
    TransfersCdsTransport: TBooleanField;
    TransfersCdsSightSeeing: TBooleanField;
    TransfersCdsPlace: TStringField;
    TransfersCdsTransferTypes_id: TIntegerField;
    TransfersCdsVehicles_id: TIntegerField;
    TransfersCdsServiceDay: TIntegerField;
    TransfersCdsServiceDate: TSQLTimeStampField;
    TransfersCdsNoOfVehicles: TIntegerField;
    TransfersCdsCost: TFMTBCDField;
    TransfersCdsMasters_id: TStringField;
    TransfersCdsFlightNo: TStringField;
    TransfersCdsstatus: TIntegerField;
    TransfersCdsLineNum: TIntegerField;
    TransfersCdsEntranceFees: TBooleanField;
    TransfersCdsQuoCities_id: TIntegerField;
    TransfersCdsSelected: TBooleanField;
    TransfersCdsTimings: TStringField;
    TransfersCdsDaysOfOperation: TIntegerField;
    TransfersCdsLock: TBooleanField;
    cxButtonClose: TcxButton;
    cxDBLabelKeyId_Tickets: TcxDBLabel;
    cxDBLabelKeyId_Acc: TcxDBLabel;
    cxDBLabelKeyId_Ss: TcxDBLabel;
    cxDBLabelKeyId_Transfers: TcxDBLabel;
    PkgSds: TSQLDataSet;
    PkgDsp: TDataSetProvider;
    PkgCds: TClientDataSet;
    PkgCdsQuoPackages_id: TIntegerField;
    PkgCdsQuotations_id: TIntegerField;
    PkgCdsPackages_id: TIntegerField;
    PkgCdsDateIn: TSQLTimeStampField;
    PkgCdsDateOut: TSQLTimeStampField;
    PkgCdsQuoCities_id: TIntegerField;
    PkgDs: TDataSource;
    cxTabSheetPkg: TcxTabSheet;
    Panel11: TPanel;
    cxDBLabelKeyId_Packages: TcxDBLabel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    TicketsCdsFlightNo: TStringField;
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
    procedure PkgCdsAfterPost(DataSet: TDataSet);
    procedure PkgCdsAfterDelete(DataSet: TDataSet);
    procedure PkgCdsBeforeEdit(DataSet: TDataSet);
    procedure PkgCdsBeforePost(DataSet: TDataSet);
    procedure PkgCdsBeforeInsert(DataSet: TDataSet);
    procedure PkgCdsBeforeDelete(DataSet: TDataSet);
  private
     procedure SetFormDimensions;
    { Private declarations }
  public
    { Public declarations }
    Custom_TicketsCds_State: TDataSetState;
    Custom_AccCds_State: TDataSetState;
    Custom_SsCds_State: TDataSetState;
    Custom_TransfersCds_State: TDataSetState;
    Custom_PkgCds_State: TDataSetState;
    Custom_TicketsCdsName: string;
    Custom_AccCdsName: string;
    Custom_SsCdsName: string;
    Custom_TransfersCdsName: string;
    Custom_PackagesCdsName: string;
    Custom_TicketsKeyField: string;
    Custom_AccKeyField: string;
    Custom_PackagesKeyField: string;
    Custom_SsKeyField: string;
    Custom_TransfersKeyField: string;
    Custom_TableArray: Array[0..3] of TDataSource;
    Custom_AdmLevel: Integer;
    Custom_FormWidth: integer;
    Custom_FormHeight: integer;
    Custom_FormType: integer;
  end;

var
  Custom_QuoDayActivity_Form: TCustom_QuoDayActivity_Form;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TCustom_QuoDayActivity_Form.FormCreate(Sender: TObject);
begin

  cxTabSheetTickets.TabVisible := false;
  cxTabSheetAcc.TabVisible := false;
  cxTabSheetSs.TabVisible := false;
  cxTabSheetTrsf.TabVisible := false;
  cxTabSheetPkg.TabVisible := false;

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

  if (Custom_FormType = 6) or (Custom_FormType = 5) then
    begin
      cxTabSheetPkg.TabVisible := true;
      PkgCds.Active := True;
      PkgCds.First;
      if (Custom_FormType = 6) then
        cxPageControl1.ActivePageIndex := 4;
    end;

  cxDBLabelKeyId_Tickets.DataBinding.DataSource := TicketsDs;
  cxDBLabelKeyId_Tickets.DataBinding.DataField := Custom_TicketsKeyField;

  cxDBLabelKeyId_Acc.DataBinding.DataSource := AccDs;
  cxDBLabelKeyId_Acc.DataBinding.DataField := Custom_AccKeyField;

  cxDBLabelKeyId_Ss.DataBinding.DataSource := SsDs;
  cxDBLabelKeyId_Ss.DataBinding.DataField := Custom_SsKeyField;

  cxDBLabelKeyId_Transfers.DataBinding.DataSource := TransfersDs;
  cxDBLabelKeyId_Transfers.DataBinding.DataField := Custom_TransfersKeyField;

  cxDBLabelKeyId_Packages.DataBinding.DataSource := PkgDs;
  cxDBLabelKeyId_Packages.DataBinding.DataField := Custom_PackagesKeyField;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Tickets.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Acc.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Ss.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Transfers.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Packages.Left := cxButtonClose.Left;

end;

procedure TCustom_QuoDayActivity_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  TicketsCds.Active := False;
//  AccCds.Active := False;
//  SsCds.Active := False;
//  TransfersCds.Active := False;
//  Action := caFree;
end;

procedure TCustom_QuoDayActivity_Form.FormDestroy(Sender: TObject);
begin
  Custom_TicketsKeyField := '';
  Custom_AccKeyField := '';
  Custom_SsKeyField := '';
  Custom_TransfersKeyField := '';
  Custom_PackagesKeyField := '';

  Custom_QuoDayActivity_Form := nil;

end;

procedure TCustom_QuoDayActivity_Form.TicketsCdsAfterPost(
  DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
end;

procedure TCustom_QuoDayActivity_Form.TicketsCdsAfterDelete(
  DataSet: TDataSet);
begin
  TicketsCds.ApplyUpdates(0);
  TicketsCds.Refresh;
end;

procedure TCustom_QuoDayActivity_Form.TicketsCdsBeforeEdit(
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
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.TicketsCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_TicketsCds_State := TicketsCds.State;

  if TicketsCds.State = dsInsert then
    TicketsCds[Custom_TicketsKeyField] := GetNextId(Custom_TicketsCdsName,Custom_TicketsKeyField);

end;

procedure TCustom_QuoDayActivity_Form.TicketsCdsBeforeInsert(
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
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.TicketsCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := AccDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_QuoDayActivity_Form.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TCustom_QuoDayActivity_Form.FormCloseQuery(Sender: TObject;
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

  if PkgCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the packages record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end;

end;


procedure TCustom_QuoDayActivity_Form.FormResize(Sender: TObject);
begin
  SetFormDimensions;

  cxButtonClose.Left := Width - cxButtonClose.Width - 20;
  cxDBLabelKeyId_Tickets.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Acc.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Ss.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Transfers.Left := cxButtonClose.Left;
  cxDBLabelKeyId_Packages.Left := cxButtonClose.Left;

end;

procedure TCustom_QuoDayActivity_Form.SetFormDimensions;
begin
  if Self.Width < Custom_FormWidth then
    Self.Width := Custom_FormWidth;
  if Self.Height < Custom_FormHeight then
    Self.Height := Custom_FormHeight;
end;


procedure TCustom_QuoDayActivity_Form.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TCustom_QuoDayActivity_Form.AccCdsAfterDelete(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
  AccCds.Refresh;
end;

procedure TCustom_QuoDayActivity_Form.AccCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.AccCdsBeforePost(DataSet: TDataSet);
begin
  Custom_AccCds_State := AccCds.State;

  if AccCds.State = dsInsert then
    AccCds[Custom_AccKeyField] := GetNextId(Custom_AccCdsName,Custom_AccKeyField);

end;

procedure TCustom_QuoDayActivity_Form.AccCdsBeforeInsert(
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
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.AccCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := SsDs;
  Custom_TableArray[2] := TransfersDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_QuoDayActivity_Form.SsCdsAfterPost(DataSet: TDataSet);
begin
  SsCds.ApplyUpdates(0);
end;

procedure TCustom_QuoDayActivity_Form.SsCdsAfterDelete(DataSet: TDataSet);
begin
  SsCds.ApplyUpdates(0);
  SsCds.Refresh;
end;

procedure TCustom_QuoDayActivity_Form.SsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := TransfersDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.SsCdsBeforePost(DataSet: TDataSet);
begin
  Custom_SsCds_State := SsCds.State;

  if SsCds.State = dsInsert then
    SsCds[Custom_SsKeyField] := GetNextId(Custom_SsCdsName,Custom_SsKeyField);

end;

procedure TCustom_QuoDayActivity_Form.SsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := TransfersDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.SsCdsBeforeDelete(DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := TransfersDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCustom_QuoDayActivity_Form.TransfersCdsAfterPost(
  DataSet: TDataSet);
begin
  TransfersCds.ApplyUpdates(0);
end;

procedure TCustom_QuoDayActivity_Form.TransfersCdsAfterDelete(
  DataSet: TDataSet);
begin
  TransfersCds.ApplyUpdates(0);
  TransfersCds.Refresh;
end;

procedure TCustom_QuoDayActivity_Form.TransfersCdsBeforeEdit(
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
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.TransfersCdsBeforePost(
  DataSet: TDataSet);
begin
  Custom_TransfersCds_State := TransfersCds.State;

  if TransfersCds.State = dsInsert then
    TransfersCds[Custom_TransfersKeyField] := GetNextId(Custom_TransfersCdsName,Custom_TransfersKeyField);
end;

procedure TCustom_QuoDayActivity_Form.TransfersCdsBeforeInsert(
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
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.TransfersCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := SsDs;
  Custom_TableArray[3] := PkgDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCustom_QuoDayActivity_Form.PkgCdsAfterPost(DataSet: TDataSet);
begin
  PkgCds.ApplyUpdates(0);
end;

procedure TCustom_QuoDayActivity_Form.PkgCdsAfterDelete(DataSet: TDataSet);
begin
  PkgCds.ApplyUpdates(0);
  PkgCds.Refresh;
end;

procedure TCustom_QuoDayActivity_Form.PkgCdsBeforeEdit(DataSet: TDataSet);
begin
  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := SsDs;
  Custom_TableArray[3] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.PkgCdsBeforePost(DataSet: TDataSet);
begin
  Custom_PkgCds_State := PkgCds.State;

  if PkgCds.State = dsInsert then
    PkgCds[Custom_PackagesKeyField] := GetNextId(Custom_PackagesCdsName,Custom_PackagesKeyField);

end;

procedure TCustom_QuoDayActivity_Form.PkgCdsBeforeInsert(
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
  Custom_TableArray[3] := TransfersDs;
  PostDsTables(Custom_TableArray);

end;

procedure TCustom_QuoDayActivity_Form.PkgCdsBeforeDelete(
  DataSet: TDataSet);
begin
  Custom_TableArray[0] := TicketsDs;
  Custom_TableArray[1] := AccDs;
  Custom_TableArray[2] := SsDs;
  Custom_TableArray[3] := TransfersDs;
  PostDsTables(Custom_TableArray);

  if (Custom_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

end.
