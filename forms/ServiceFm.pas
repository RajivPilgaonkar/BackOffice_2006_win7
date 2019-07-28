unit ServiceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxImage,
  cxTextEdit, cxMemo, cxDBEdit, cxDBLookupComboBox, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxGroupBox, cxRadioGroup,
  cxTimeEdit, cxButtonEdit;

type
  TServiceForm = class(TCustom_1MG_1DG_Form)
    Splitter3: TSplitter;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    CitySds: TSQLDataSet;
    CityDsp: TDataSetProvider;
    CityCds: TClientDataSet;
    CityDs: TDataSource;
    TransferTypeSds: TSQLDataSet;
    TransferTypeDsp: TDataSetProvider;
    TransferTypeCds: TClientDataSet;
    TransferTypeDs: TDataSource;
    PopupMenu1: TPopupMenu;
    MasterCdsservices_id: TIntegerField;
    MasterCdsservice: TStringField;
    MasterCdsdescription: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsprivate: TBooleanField;
    MasterCdsduration: TStringField;
    MasterCdsdefaultorder: TIntegerField;
    MasterCdsstarttime: TSQLTimeStampField;
    MasterCdsactive: TBooleanField;
    MasterCdscities_id: TIntegerField;
    MasterCdstickets_id: TIntegerField;
    MasterCdstransfer: TBooleanField;
    MasterCdstransfertypes_id: TIntegerField;
    MasterCdswriteup: TMemoField;
    MasterCdsimage: TStringField;
    MasterCdsdaysofoperation: TSmallintField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdsowntransport: TBooleanField;
    MasterCdsRecommended: TBooleanField;
    MasterCdsArrivalDescription: TStringField;
    DetailCdsservicetimings_id: TIntegerField;
    DetailCdsservices_id: TIntegerField;
    DetailCdsstarttime: TSQLTimeStampField;
    cxGrid1DBBandedTableView1services_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1description: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1private: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1duration: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1defaultorder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1active: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1transfertypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1to_cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1owntransport: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Recommended: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ArrivalDescription: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1servicetimings_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1services_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1starttime: TcxGridDBBandedColumn;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    cxDBMemo5: TcxDBMemo;
    CityCdsCities_id: TIntegerField;
    CityCdsCity: TStringField;
    TransferTypeCdsTransferTypes_id: TIntegerField;
    TransferTypeCdsTransfer: TStringField;
    TransferTypeCdsTransferCode: TStringField;
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
    TicketDs: TDataSource;
    TicketCdsTickets_id: TIntegerField;
    TicketCdsDetails: TStringField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDs: TDataSource;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    Label2: TLabel;
    cxCityLcmb: TcxLookupComboBox;
    cxRadioGroup: TcxRadioGroup;
    cxActiveCkb: TcxCheckBox;
    PopupMenu2: TPopupMenu;
    Selecthotelfromtransfer1: TMenuItem;
    MasterCdsDaysName: TStringField;
    cxGrid1DBBandedTableView1DaysName: TcxGridDBBandedColumn;
    MasterCdsCheckInDuration: TStringField;
    cxGrid1DBBandedTableView1CheckInDuration: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    MasterCdsAdvBooking: TBooleanField;
    cxGrid1DBBandedTableView1AdvBooking: TcxGridDBBandedColumn;
    MasterCdsNotHotelAddressbook_id: TIntegerField;
    MasterCdsMessagePopup: TStringField;
    cxGrid1DBBandedTableView1NotHotelAddressbook_id: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    MasterCdsGuide: TBooleanField;
    cxGrid1DBBandedTableView1Guide: TcxGridDBBandedColumn;
    MasterCdsTransportReqd: TBooleanField;
    cxGrid1DBBandedTableView1TransportReqd: TcxGridDBBandedColumn;
    MasterCdsRepString: TStringField;
    cxTabSheet5: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxRadioGroupPropertiesEditValueChanged(Sender: TObject);
    procedure cxActiveCkbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure Selecthotelfromtransfer1Click(Sender: TObject);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    procedure FilterData;
    procedure ChangeLayout;
    function GetNextOrderNo: integer;
  public
    { Public declarations }
  end;

var
  ServiceForm: TServiceForm;
  ServiceForm_Level: integer;

implementation

uses BackOfficeDM, GeneralUt, TransferHotelsFm, SelOprFm, MainFm;

{$R *.dfm}

procedure TServiceForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := false;

  ActivateInCustom;

  MasterSds.Active := false;

  MasterSds.Params[0].Value := true;
  MasterSds.Params[1].Value := false;
  MasterSds.Params[2].Value := -1;

  inherited;
  CityCds.Open;
  TransferTypeCds.Open;
  TicketCds.Open;
  AgentCds.Open;
  UsersCds.Open;

  cxPageControl3.ActivePageIndex := 0;
  ChangeLayout;

end;

procedure TServiceForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TServiceForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ServiceForm := nil;
end;

procedure TServiceForm.ActivateInCustom;
begin

  Custom_MasterCdsName := 'Services';
  Custom_MasterKeyField := 'Services_id';

  Custom_DetailCdsName := 'ServiceTimings';
  Custom_DetailKeyField := 'ServiceTimings_id';

  Custom_AdmLevel := ServiceForm_Level;

  Custom_FormWidth := 950;
  Custom_FormHeight := 715;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TServiceForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TServiceForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Service'] = null) or (trim(MasterCds['Service']) = '') then
    raise Exception.Create('Please enter the service');

  if (MasterCds['Description'] = null) or (trim(MasterCds['Description']) = '') then
    raise Exception.Create('Please enter the Description');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Default Agent');

  if (MasterCds['Transfer'] = null) then
    raise Exception.Create('Please enter if Sightseeing / Transfer');

  if (MasterCds['Transfer'] = true) and (MasterCds['TransferTypes_id'] = null) then
    raise Exception.Create('Please enter the Transfer Type');

  if (MasterCds['Transfer'] = true) and (MasterCds['Tickets_id'] = null) then
    raise Exception.Create('Please enter the Tickets');

  if (MasterCds['Transfer'] = false) and (MasterCds['DaysOfOperation'] = null) then
    raise Exception.Create('Please enter the Days');

  if (MasterCds['Duration'] = null) then
    raise Exception.Create('Please enter the Duration');

  if (MasterCds['Transfer'] = true) and (MasterCds['CheckInDuration'] = null) then
    MasterCds['CheckInDuration'] := '00:00';

  if (Copy(MasterCds['Duration'],2,1) = ':') then
    MasterCds['Duration'] := '0' + MasterCds['Duration'];

  MasterCds['Duration'] := System.Copy(MasterCds['Duration'],1,5);

  if (Copy(MasterCds['Duration'],3,1) <> ':') then
    raise Exception.Create('Invalid Duration');

  MasterCds['Duration'] := System.Copy(MasterCds['Duration'],1,5);


  if (MasterCds['CheckInDuration'] <> null) and (Copy(MasterCds['CheckInDuration'],2,1) = ':') then
    MasterCds['CheckInDuration'] := '0' + MasterCds['CheckInDuration'];

  if (MasterCds['CheckInDuration'] <> null) then
    MasterCds['CheckInDuration'] := System.Copy(MasterCds['CheckInDuration'],1,5);

  if (MasterCds['CheckInDuration'] <> null) and (Copy(MasterCds['CheckInDuration'],3,1) <> ':') then
    raise Exception.Create('Invalid Check In Time');

  if (MasterCds['CheckInDuration'] <> null) then
    MasterCds['CheckInDuration'] := System.Copy(MasterCds['CheckInDuration'],1,5);

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if (MasterCds['Services_id'] = null) then
    raise Exception.Create('Services_id is not assigned');

end;

procedure TServiceForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if (DetailCds['Services_id'] = null) then
    raise Exception.Create('Please select a service');

  if (DetailCds['StartTime'] = null) then
    raise Exception.Create('Please enter a Service Timing');

  if IsDetailRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if (DetailCds['ServiceTimings_id'] = null) then
    raise Exception.Create('ServiceTimings_id is not assigned');

end;

function TServiceForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Services ' +
    'WHERE Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ' ' +
    'AND Description = ' + QuotedStr(MasterCds['Description']);

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Services_id <> ' + IntToStr(MasterCds['Services_id']) + ') ';

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

function TServiceForm.IsDetailRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ServiceTimings ' +
    'WHERE Services_id = ' + IntToStr(DetailCds['Services_id']) + ' ' +
    'AND CONVERT(VARCHAR(5),StartTime,108) = ' + QuotedStr(FormatDateTime('HH:mm',DetailCds['StartTime'])) + ' ';

  if DetailCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ServiceTimings_id <> ' + IntToStr(DetailCds['ServiceTimings_id']) + ') ';

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

procedure TServiceForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Active'] := true;
  if not cxActiveCkb.Checked then
    MasterCds['Active'] := false;

  MasterCds['Transfer'] := false;
  if cxRadioGroup.ItemIndex = 1 then
    MasterCds['Transfer'] := true;

  MasterCds['Cities_id'] := cxCityLcmb.EditValue;

  MasterCds['Private'] := false;
  MasterCds['OwnTransport'] := true;
  MasterCds['Recommended'] := true;
  MasterCds['DefaultOrder'] := GetNextOrderNo;
  MasterCds['AdvBooking'] := false;

  MasterCds['Guide'] := false;
  MasterCds['TransportReqd'] := true;

end;

procedure TServiceForm.FilterData;
var
  x_Cities_id: integer;
  x_Transfer, x_Active: boolean;
begin
  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  x_Transfer := false;

  if cxRadioGroup.ItemIndex = 1 then
    x_Transfer := true;

  x_Active := true;

  if not cxActiveCkb.Checked then
    x_Active := false;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Active;
  MasterSds.Params[1].Value := x_Transfer;
  MasterSds.Params[2].Value := x_Cities_id;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;


procedure TServiceForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TServiceForm.cxRadioGroupPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
  ChangeLayout;
end;

procedure TServiceForm.cxActiveCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TServiceForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if cxCityLcmb.EditValue = null then
    raise exception.create ('Please select the city');

end;

procedure TServiceForm.ChangeLayout;
begin
  if cxRadioGroup.ItemIndex = 0 then
    begin
      cxGrid1DBBandedTableView1.GetColumnByFieldName('ArrivalDescription').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('Tickets_id').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('TransferTypes_id').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('To_Cities_id').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('CheckInDuration').Visible := false;

      cxGrid1DBBandedTableView1.GetColumnByFieldName('OwnTransport').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DaysName').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('AdvBooking').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('NotHotelAddressbook_id').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('Guide').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('TransportReqd').Visible := true;

    end
  else
    begin
      cxGrid1DBBandedTableView1.GetColumnByFieldName('ArrivalDescription').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('Tickets_id').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('TransferTypes_id').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('To_Cities_id').Visible := true;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('CheckInDuration').Visible := true;

      cxGrid1DBBandedTableView1.GetColumnByFieldName('OwnTransport').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('DaysName').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('AdvBooking').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('NotHotelAddressbook_id').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('Guide').Visible := false;
      cxGrid1DBBandedTableView1.GetColumnByFieldName('TransportReqd').Visible := false;

    end;
end;


procedure TServiceForm.Selecthotelfromtransfer1Click(Sender: TObject);
begin
  inherited;

  if MasterCds['Transfer'] = false then
    raise exception.create('Only valid for transfers');;

  if MasterCds['Services_id'] = null then
    raise exception.create('Please select a transfer first');;

  _TransferHotelsForm_Level := ServiceForm_Level;
  _TransferHotelsForm_Services_id := MasterCds['Services_id'];

  If _TransferHotelsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if TransferHotelsForm = nil then
    Application.CreateForm(TTransferHotelsForm,TransferHotelsForm);

  TransferHotelsForm.FormStyle := fsNormal;
  TransferHotelsForm.Visible := false;
  TransferHotelsForm.ShowModal;

  TransferHotelsForm.Free;
  TransferHotelsForm := nil;

end;

function TServiceForm.GetNextOrderNo: integer;
var
  x_QueryString: String;
  x_OrderNo, x_Transfer: Integer;
  GpSds: TSQLDataSet;
begin

  x_Transfer := 0;
  if (cxRadioGroup.ItemIndex = 1) then
    x_Transfer := 1;

  x_QueryString := 'SELECT MAX(DefaultOrder) as MaxNo FROM Services ' +
       'WHERE Cities_id =  ' + IntToStr(cxCityLCMB.EditValue) + ' ' +
       'AND Transfer = ' + IntToStr(x_Transfer);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_OrderNo := 0;
  if (not GpSds.EOF) and (GpSds['MaxNo'] <> null) then
    x_OrderNo := GpSds['MaxNo'];

  x_OrderNo := x_OrderNo + 1;

  GpSds.Free;

  Result := x_OrderNo;
end;


procedure TServiceForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['DaysOfOperation'] <> null then
    MasterCds['DaysName'] := DaysToStr(MasterCds['DaysOfOperation']);
end;

procedure TServiceForm.cxGrid1DBBandedTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  if SelOprForm = Nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if MasterCds['DaysOfOperation'] <> null then
    _InitStr := DaysToStr(MasterCds['DaysOfOperation'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    MasterCds['DaysOfOperation'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;

end;

end.
