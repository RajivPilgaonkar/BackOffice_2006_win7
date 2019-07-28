unit AddressChargesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxContainer, cxLabel, cxDBLabel,
  cxButtons, ExtCtrls;

type
  TAddressChargesForm = class(TCustom_1MG_Form)
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsCdstickets_id: TIntegerField;
    TicketsCdsdetails: TStringField;
    TicketsDs: TDataSource;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    Label1: TLabel;
    cxAgentLCMB: TcxLookupComboBox;
    cxWefLCMB: TcxLookupComboBox;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    cxTicketsLCMB: TcxLookupComboBox;
    MasterCdsTicketCharges_id: TIntegerField;
    MasterCdsAddressBook_id: TIntegerField;
    MasterCdsCommission_Dom: TBCDField;
    MasterCdsCancellationFee: TBCDField;
    MasterCdsBookingFee: TBCDField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsWet: TSQLTimeStampField;
    MasterCdsCommission_Int: TBCDField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsServiceTax_Dom: TBCDField;
    MasterCdsServiceTax_int: TBCDField;
    MasterCdsAirportTax: TFMTBCDField;
    MasterCdsTds: TFMTBCDField;
    MasterCdsBookingFee_Percentage: TBCDField;
    cxGrid1DBBandedTableView1TicketCharges_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Commission_Dom: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CancellationFee: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BookingFee: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Commission_Int: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ServiceTax_Dom: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ServiceTax_int: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AirportTax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Tds: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BookingFee_Percentage: TcxGridDBBandedColumn;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxAgentLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxTicketsLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWef;
    procedure FilterWef;
  end;

var
  AddressChargesForm: TAddressChargesForm;
  AddressChargesForm_Level: Integer;
  AddressChargesForm_NullDate: TDateTime;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAddressChargesForm.FormCreate(Sender: TObject);
begin
  AddressChargesForm_NullDate := StrToDate('01/01/1970');

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;
  MasterSds.Params[2].Value := AddressChargesForm_NullDate;
  inherited;

  AgentCds.Open;
  TicketsCds.Open;
  WefCds.Open;
  UsersCds.Open;

end;

procedure TAddressChargesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAddressChargesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AddressChargesForm := nil;
end;

procedure TAddressChargesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TicketCharges';
  Custom_MasterKeyField := 'TicketCharges_id';
  Custom_AdmLevel := AddressChargesForm_Level;

  Custom_FormWidth := 730;
  Custom_FormHeight := 575;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAddressChargesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAddressChargesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please select the agent');

  if MasterCds['Tickets_id'] = null then
    raise exception.create ('Please select a Mode');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['TicketCharges_id'] = null then
    raise Exception.Create('TicketCharges_id is not assigned');

end;

function TAddressChargesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TicketCharges ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Tickets_id = ' + IntToStr(MasterCds['Tickets_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TicketCharges_id <> ' + IntToStr(MasterCds['TicketCharges_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

procedure TAddressChargesForm.FilterData;
var
  x_Tickets_id, x_Addressbook_id: integer;
  x_wef: TDateTime;
begin

  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  x_Tickets_id := -1;

  if cxTicketsLCMB.EditValue <> null then
    x_Tickets_id := cxTicketsLCMB.EditValue;

  x_wef := AddressChargesForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Addressbook_id;
  MasterSds.Params[1].Value := x_Tickets_id;
  MasterSds.Params[2].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TAddressChargesForm.cxAgentLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;
  FilterData;
end;

procedure TAddressChargesForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TAddressChargesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    exit;

  if cxTicketsLCMB.EditValue = null then
    exit;

  if cxWefLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
  MasterCds['Tickets_id']  := cxTicketsLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['BookingFee_Percentage'] := 0;
  MasterCds['commission_dom'] := 0;
  MasterCds['commission_int'] := 0;
  MasterCds['bookingfee'] := 0;
  MasterCds['cancellationfee'] := 0;
end;

procedure TAddressChargesForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if cxAgentLCMB.EditValue = null then
    Abort;

  if cxTicketsLCMB.EditValue = null then
    Abort;

  if cxWefLCMB.EditValue = null then
    Abort;

  inherited;

end;

procedure TAddressChargesForm.PostWef;
var
  x_wef: TDateTime;
begin
  inherited;

  if MasterCds['wef'] <> cxWefLCMB.EditValue then
    begin
      x_wef := MasterCds['wef'];
      if not WefCds.Locate ('wef', x_wef, []) then
        begin
          FilterWef;
          if WefCds.Locate ('wef', x_wef, []) then
            cxWefLCMB.EditValue := x_wef;
        end;
    end;

end;


procedure TAddressChargesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWef;
end;

procedure TAddressChargesForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FilterWef;
end;

procedure TAddressChargesForm.cxTicketsLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterWef;

  if cxTicketsLCMB.EditValue = 1 then
    begin
      cxGrid1DBBandedTableView1Commission_Dom.Visible := True;
      cxGrid1DBBandedTableView1Commission_Int.Visible := True;
      cxGrid1DBBandedTableView1Commission_Dom.VisibleForCustomization := True;
      cxGrid1DBBandedTableView1Commission_Int.VisibleForCustomization := True;
    end
  else
    begin
      cxGrid1DBBandedTableView1Commission_Dom.Visible := False;
      cxGrid1DBBandedTableView1Commission_Int.Visible := False;
      cxGrid1DBBandedTableView1Commission_Dom.VisibleForCustomization := False;
      cxGrid1DBBandedTableView1Commission_Int.VisibleForCustomization := False;
    end;

  FilterData;    
end;

procedure TAddressChargesForm.FilterWef;
var
  x_Tickets_id, x_Addressbook_id: integer;
  x_wef: TDateTime;
begin
  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Addressbook_id, []);

  x_Tickets_id := -1;

  if cxTicketsLCMB.EditValue <> null then
    x_Tickets_id := cxTicketsLCMB.EditValue;

  TicketsCds.Locate('Tickets_id', x_Tickets_id, []);

  x_wef := AddressChargesForm_NullDate;

  if cxWefLCMB.EditValue <> null then
    x_wef := cxWefLCMB.EditValue;

  WefCds.Close;
  WefSds.Close;

  WefSds.Params[0].Value := x_Addressbook_id;
  WefSds.Params[1].Value := x_Tickets_id;

  WefSds.Open;
  WefCds.Open;

  if WefCds.Locate ('wef', x_wef, []) then
    cxWefLCMB.EditValue := x_wef
  else if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef']
  else
    cxWefLCMB.Clear;

end;


end.
