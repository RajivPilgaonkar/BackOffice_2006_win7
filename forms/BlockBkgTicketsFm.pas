unit BlockBkgTicketsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel,
  cxGroupBox;

type
  TBlockBkgTicketsForm = class(TCustomMasterCxGridForm)
    MasterCdsblockbookingtickets_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstraveldate: TSQLTimeStampField;
    MasterCdsnooftickets: TIntegerField;
    MasterCdstourref: TStringField;
    MasterCdsreservedby: TStringField;
    MasterCdsreservedon: TSQLTimeStampField;
    MasterCdsconfirmedon: TSQLTimeStampField;
    MasterCdscancelledon: TSQLTimeStampField;
    MasterCdsnoconfirmed: TIntegerField;
    MasterCdsflightno: TStringField;
    MasterCdsclassid: TIntegerField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdstickets_id: TIntegerField;
    CustomMasterCxGridDBTableView1traveldate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1nooftickets: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tourref: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1reservedon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1confirmedon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1cancelledon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1noconfirmed: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1flightno: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1classid: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1from_cities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1to_cities_id: TcxGridDBColumn;
    GroupBox3: TcxGroupBox;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    NumConfirmed: TcxTextEdit;
    ConfirmedDate: TcxDateEdit;
    ReservedDate: TcxDateEdit;
    CancelledDate: TcxDateEdit;
    Label1: TcxLabel;
    CityLCMB: TcxLookupComboBox;
    Label2: TcxLabel;
    AgentLcb: TcxLookupComboBox;
    AgentSDS: TSQLDataSet;
    AgentDSP: TDataSetProvider;
    AgentCDS: TClientDataSet;
    AgentDS: TDataSource;
    Label3: TcxLabel;
    FromDateEdit: TcxDateEdit;
    Label4: TcxLabel;
    ToDateEdit: TcxDateEdit;
    AgentCDSAddressbook_id: TIntegerField;
    AgentCDSOrganisation: TStringField;
    AgentCDSCity: TStringField;
    AgentCDSCities_id: TIntegerField;
    AgentCDSContact: TStringField;
    ClassSDS: TSQLDataSet;
    ClassDSP: TDataSetProvider;
    ClassCDS: TClientDataSet;
    ClassDS: TDataSource;
    ClassCDSClass_id: TIntegerField;
    ClassCDSClass: TStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure FilterBlockBkg;
    procedure AgentLcbExit(Sender: TObject);
    procedure AgentLcbKeyPress(Sender: TObject; var Key: Char);
    procedure ToDateEditExit(Sender: TObject);
    procedure ToDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure CityLCMBExit(Sender: TObject);
    procedure CityLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure FromDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure FromDateEditExit(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure CityLCMBPropertiesCloseUp(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BlockBkgTicketsForm: TBlockBkgTicketsForm;
  _BlockBkgTicketsForm_level: Integer;
implementation

uses BackOfficeDM, ReportParameterFm, RptBlkBkgTicketsFm;

{$R *.dfm}

procedure TBlockBkgTicketsForm.FilterBlockBkg;
begin
  try
    MasterCds.Active := False;
    MasterCds.Filter := 'Addressbook_id = ' + IntToStr(AgentLCB.EditValue) +
    ' and TravelDate >= ''' + DateToStr (FromDateEdit.Date ) +
    ''' AND TravelDate <= ''' + DateToStr (ToDateEdit.Date )+ '''';
    MasterCds.Filtered := True;
    MasterCds.Active := True;
  except
    Abort;
  end;
end;


procedure TBlockBkgTicketsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  BlockBkgTicketsForm := nil;
end;

procedure TBlockBkgTicketsForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.CitiesSds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := False;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;

  MasterCdsName := 'BlockbookingTickets';
  MasterKeyField := 'BlockbookingTickets_id';

  AdmLevel := _BlockBkgTicketsForm_level;
  inherited;

  AgentCDS.Active := False;
  AgentCDS.Active := True;

  ClassCDS.Active := False;
  ClassCDS.Active := True;

  FromDateEdit.Text := DateToStr(Date());
  ToDateEdit.Text := DateToStr(Date()+730);

  FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.CityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if CityLCMB.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLCMB.EditValue,[]);
      AgentCDS.Refresh;
      AgentCDS.Locate('Cities_id',CityLCMB.EditValue,[]);
  except
  end;
end;

procedure TBlockBkgTicketsForm.AgentLcbExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.AgentLcbKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.ToDateEditExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.ToDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.SpeedButton2Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_ConfirmedOn: string;
begin
  inherited;

  if MessageDlg ('This will update the date of confirmation ' +
    'for the selected Agent within the selected date range. Are you sure?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (ConfirmedDate.Text) = '' then
    x_ConfirmedOn := ' NULL '
  else
    x_ConfirmedOn := ' ''' + FormatDateTime('mm/dd/yyyy',StrToDate(ConfirmedDate.Text)) + ''' ';

  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := 'UPDATE BlockBookingTickets SET ConfirmedOn = ' + x_ConfirmedOn + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(AgentLCB.EditValue) +
    ' AND TravelDate >= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND TravelDate <= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TBlockBkgTicketsForm.SpeedButton1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
begin
  inherited;

    if MessageDlg ('This will update the number of tickets confirmed ' +
      'for the selected Agent within the selected date range. Are you sure?',
      mtWarning, [mbYes, mbNo], 0) <> mrYes then
      exit;

    try
      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GPSds.Close;
      GPSds.CommandText := '';
      GPSds.CommandText := 'UPDATE  BlockBookingTickets SET noconfirmed = ' + Trim(NumConfirmed.Text) + ' ' +
        ' WHERE AddressBook_id = ' + IntToStr(AgentLcb.EditValue) +
        ' AND TravelDate >= ''' +
          FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
        ' AND TravelDate <= ''' +
          FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
      GPSds.ExecSQL;

      GpSds.Free;
    except
    end;

    MasterCds.Close;
    MasterCds.Open;
end;

procedure TBlockBkgTicketsForm.SpeedButton3Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_ReservedOn: string;
begin
  inherited;

  if MessageDlg ('This will update the date of reservation ' +
    'for the selected Agent within the selected date range. Are you sure?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (ReservedDate.Text) = '' then
    x_ReservedOn := ' NULL '
  else
    x_ReservedOn := ' ''' + FormatDateTime('mm/dd/yyyy',StrToDate(ReservedDate.Text)) + ''' ';

  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := 'UPDATE  BlockBookingTickets SET ReservedOn = ' + x_ReservedOn + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(AgentLcb.EditValue) +
    ' AND TravelDate >= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND TravelDate <= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TBlockBkgTicketsForm.SpeedButton4Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_CancelledOn: string;
begin
  inherited;

  if MessageDlg ('This will update the date of cancellation ' +
    'for the selected Agent within the selected date range. Are you sure?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if (CancelledDate.Text) = '' then
    x_CancelledOn := ' NULL '
  else
    x_CancelledOn := ' ''' + FormatDateTime('mm/dd/yyyy',StrToDate(CancelledDate.Text)) + ''' ';

  GPSds.Close;
  GPSds.CommandText := '';
  GPSds.CommandText := 'UPDATE BlockBookingTickets SET CancelledOn = ' + x_CancelledOn + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(AgentLcb.EditValue) +
    ' AND TravelDate >= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND TravelDate <= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TBlockBkgTicketsForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBlockBkgTicketsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if AgentLcb.EditValue >0 then
    MasterCds['AddressBook_id'] := AgentLcb.EditValue;
end;

procedure TBlockBkgTicketsForm.CityLCMBExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.CityLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.FromDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.FromDateEditExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgTicketsForm.CityLCMBPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  AgentLCB.EditValue := AgentCDSAddressbook_id.Value;
end;

procedure TBlockBkgTicketsForm.cxButton1Click(Sender: TObject);
var
  GPSds: TSQLDataSet;
  x_FromDate, x_ToDate: TDateTime;
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  try
    x_FromDate := StrToDate(FromDateEdit.Text);
    x_ToDate := StrToDate(ToDateEdit.Text);
  except
    Abort;
    exit;
  end;

  if MessageDlg ('This will regenerate the block bookings for all agents ' +
    'between ' + FromDateEdit.Text + ' and ' + ToDateEdit.Text + '.' +
    'Are you sure?',mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GPSds.Close;
  GPSds.CommandText := 'EXEC p_BlockBookingTickets ''' +
    FormatDateTime ('mm/dd/yyyy',x_FromDate) + ''', ''' +
    FormatDateTime ('mm/dd/yyyy',x_ToDate) + ''' ';
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

  ShowMessage ('Regeneration Completed');

end;

procedure TBlockBkgTicketsForm.cxButton2Click(Sender: TObject);
begin
  inherited;
  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := FromDateEdit.Date;
  ReportParameterForm.cxDateEdit2.Date := ToDateEdit.Date;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin
      if RptBlkBkgTicketsForm = nil then
        Application.CreateForm(TRptBlkBkgTicketsForm, RptBlkBkgTicketsForm);

      RptBlkBkgTicketsForm.TicketsCds.Close;
      RptBlkBkgTicketsForm.TicketsSds.Close;

      RptBlkBkgTicketsForm.TicketsSds.Params[0].Value := ReportParameterForm.cxDateEdit1.Date;
      RptBlkBkgTicketsForm.TicketsSds.Params[1].Value := ReportParameterForm.cxDateEdit2.Date;

      RptBlkBkgTicketsForm.TicketsSds.Open;
      RptBlkBkgTicketsForm.TicketsCds.Open;

      RptBlkBkgTicketsForm.TitleLabel.Caption :=
        RptBlkBkgTicketsForm.TitleLabel.Caption +
        '  -- ' + VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;

      RptBlkBkgTicketsForm.QuickRep1.PreviewModal;

      RptBlkBkgTicketsForm.Release;
      RptBlkBkgTicketsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

end.
