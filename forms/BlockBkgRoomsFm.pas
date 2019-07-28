unit BlockBkgRoomsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, Menus,
  ComCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBClient, Provider,
  SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel,
  cxGroupBox;

type
  TBlockBkgRoomsForm = class(TCustomMasterCxGridForm)
    GroupBox2: TcxGroupBox;
    CityLCMB: TcxLookupComboBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    MasterCdsblockbookingrooms_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsdatein: TSQLTimeStampField;
    MasterCdsdateout: TSQLTimeStampField;
    MasterCdsnoofnights: TIntegerField;
    MasterCdsnoofrooms: TIntegerField;
    MasterCdstourref: TStringField;
    MasterCdsreservedby: TStringField;
    MasterCdsreservedon: TSQLTimeStampField;
    MasterCdsconfirmedon: TSQLTimeStampField;
    MasterCdscancelledon: TSQLTimeStampField;
    MasterCdsnoconfirmed: TIntegerField;
    MasterCdsroomtypes_id: TIntegerField;
    MasterCdsac: TBooleanField;
    MasterCdsmasters_id: TIntegerField;
    CustomMasterCxGridDBTableView1datein: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1dateout: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1noofnights: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1noofrooms: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tourref: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1reservedon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1confirmedon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1cancelledon: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1noconfirmed: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1roomtypes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ac: TcxGridDBColumn;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    HotelCdsContact: TStringField;
    FromDateEdit: TcxDateEdit;
    ToDateEdit: TcxDateEdit;
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
    HotelLCMB: TcxLookupComboBox;
    cxButton1: TcxButton;
    RoomTypeSds: TSQLDataSet;
    RoomTypeDsp: TDataSetProvider;
    RoomTypeCds: TClientDataSet;
    RoomTypeDs: TDataSource;
    RoomTypeCdsRoomTypes_id: TIntegerField;
    RoomTypeCdsRoomType: TStringField;
    RoomTypeCdsAddressbook_id: TIntegerField;
    RoomTypeCdsAC: TBooleanField;
    cxButton2: TcxButton;
    procedure FilterBlockBkg;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure CityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure CityLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure HotelLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure FromDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure ToDateEditKeyPress(Sender: TObject; var Key: Char);
    procedure CityLCMBExit(Sender: TObject);
    procedure HotelLCMBExit(Sender: TObject);
    procedure FromDateEditExit(Sender: TObject);
    procedure ToDateEditExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CityLCMBPropertiesCloseUp(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure HotelLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BlockBkgRoomsForm: TBlockBkgRoomsForm;
  _BlockBkgRoomsForm_level : Integer;

implementation

uses BackOfficeDM, ReportParameterFm, RptBlkBkgRoomsFm;

{$R *.dfm}

procedure TBlockBkgRoomsForm.FilterBlockBkg;
begin
  MasterCds.Active := False;
  MasterCds.Filter := 'Addressbook_id = ' + IntToStr(HotelLCMB.EditValue) +
  ' and DateIn >= ''' + DateToStr (FromDateEdit.Date ) +
  ''' AND DateOut <= ''' + DateToStr (ToDateEdit.Date )+ '''';
  MasterCds.Filtered := True;
  MasterCds.Active := True;
end;


procedure TBlockBkgRoomsForm.FormCreate(Sender: TObject);
begin
  BackOfficeDataModule.CitiesSds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := False;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;

  RoomTypeCds.Active := True;

  MasterCdsName := 'BlockbookingRooms';
  MasterKeyField := 'BlockbookingRooms_id';

  AdmLevel := _BlockBkgRoomsForm_level;

  inherited;
  HotelCds.Active := False;
  HotelCds.Active := True;

  FromDateEdit.Text := DateToStr(Date());
  ToDateEdit.Text := DateToStr(Date()+730);

  FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  BlockBkgRoomsForm := nil;
end;

procedure TBlockBkgRoomsForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TBlockBkgRoomsForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  TempSds : TSQLDataSet;
begin
  inherited;
  if MasterCds['Addressbook_id'] = null then
    raise Exception.Create('Please enter the hotel');

  if MasterCds['DateIn'] = null then
    raise Exception.Create('Please enter the date in');

  if MasterCds['DateOut'] = null then
    raise Exception.Create('Please enter the date out');

  if MasterCds['DateOut'] < MasterCds['DateIn'] then
    Raise Exception.Create('Entry date cannot be greater than the exit date');

  if MasterCds['RoomTypes_id'] = null then
    raise Exception.Create('Please enter the room type');

  if MasterCds['NoOfRooms'] = null then
    raise Exception.Create('Please enter the no of rooms');
  TempSds := TSQLDataSet.Create(nil);
  TempSds.SQLConnection := BackOfficeDataModule.SQLConnection ;
  TempSds.Close;
  TempSds.CommandText := '';

  TempSds.CommandText :='SELECT DISTINCT DATEDIFF( DAY,''' + FormatDateTime('mm/dd/yyyy', MasterCds['DateIn']) + ''' ' +
    ' ,''' + FormatDateTime('mm/dd/yyyy', MasterCds['DateOut']) + ''') AS noofnights From BlockBookingRooms ';

  TempSds.Open;
  MasterCds['NoofNights'] := StrToInt( TempSds['NoofNights']);
  TempSds.Free;
end;

procedure TBlockBkgRoomsForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (CityLCMB.EditValue = Null) or (CityLCMB.EditValue = 0)   then
      Raise Exception.Create('Please Select The City');
  if (HotelLCMB.EditValue = Null) or (HotelLCMB.EditValue = 0)   then
      Raise Exception.Create('Please Select The Hotel');
end;

procedure TBlockBkgRoomsForm.CityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if CityLCMB.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLCMB.EditValue,[]);
      HotelCds.Refresh;
      HotelCds.Locate('Cities_id',CityLCMB.EditValue,[]);

      RoomTypeSds.Active := False;
      RoomTypeCds.Active := False;
      RoomTypeSds.Params[0].AsInteger := HotelCds['Addressbook_id'];
      RoomTypeSds.Active := True;
      RoomTypeCds.Active := True;

  except
  end;
end;

procedure TBlockBkgRoomsForm.CityLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.HotelLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.FromDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.ToDateEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.CityLCMBExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.HotelLCMBExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.FromDateEditExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.ToDateEditExit(Sender: TObject);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.SpeedButton1Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
begin
  inherited;

  if MessageDlg ('This will update the number of rooms confirmed ' +
    'for the selected Hotel within the selected date range. Are you sure?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  try
    GPSds := TSQLDataSet.Create(nil);
    GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;
    GPSds.Close;
    GPSds.CommandText := '';
    GPSds.CommandText := 'UPDATE  BlockBookingRooms SET NoConfirmed = ' + Trim(NumConfirmed.Text) + ' ' +
      ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
      ' AND DateIn >= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
      ' AND DateOut <= ''' +
        FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;

    GPSds.ExecSQL;

    GpSds.Free;
  except
  end;

  MasterCds.Close;
  MasterCds.Open;
end;

procedure TBlockBkgRoomsForm.SpeedButton2Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
  x_ConfirmedOn: string;
begin
  inherited;

  if MessageDlg ('This will update the date of confirmation ' +
    'for the selected Hotel within the selected date range. Are you sure?',
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
  GPSds.CommandText := 'UPDATE BlockBookingRooms SET ConfirmedOn = ' + x_ConfirmedOn + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
    ' AND DateIn >= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND DateOut <= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TBlockBkgRoomsForm.SpeedButton3Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
  x_ReservedOn: string;  
begin
  inherited;


  if MessageDlg ('This will update the date of reservation ' +
    'for the selected Hotel within the selected date range. Are you sure?',
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
  GPSds.CommandText := 'UPDATE  BlockBookingRooms SET ReservedOn = ' + x_ReservedOn + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
    ' AND DateIn >= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND DateOut <= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
  GPSds.ExecSQL;
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TBlockBkgRoomsForm.SpeedButton4Click(Sender: TObject);
var
  GPSds : TSQLDataSet;
  x_CancelledOn: string;
begin
  inherited;

  if MessageDlg ('This will update the date of cancellation ' +
    'for the selected Hotel within the selected date range. Are you sure?',
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
  GPSds.CommandText := 'UPDATE BlockBookingRooms SET CancelledOn = ' + x_CancelledOn + ' ' +
    ' WHERE AddressBook_id = ' + IntToStr(HotelLCMB.EditValue) +
    ' AND DateIn >= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(FromDateEdit.Text)) + ''' ' +
    ' AND DateOut <= ''' +
    FormatDateTime('mm/dd/yyyy',StrToDate(ToDateEdit.Text)) + ''' ' ;
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

end;

procedure TBlockBkgRoomsForm.CityLCMBPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  HotelLCMB.EditValue := HotelCdsAddressbook_id.Value;
end;

procedure TBlockBkgRoomsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if HotelLCMB.EditValue >0 then
    MasterCds['AddressBook_id'] := HotelLCMB.EditValue;
end;

procedure TBlockBkgRoomsForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  FilterBlockBkg;
end;

procedure TBlockBkgRoomsForm.cxButton1Click(Sender: TObject);
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

  if MessageDlg ('This will regenerate the block bookings for all hotels ' +
    'between ' + FromDateEdit.Text + ' and ' + ToDateEdit.Text + '.' +
    'Are you sure?',mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GPSds.Close;
  GPSds.CommandText := 'EXEC p_BlockBookingAccommodation ''' +
    FormatDateTime ('mm/dd/yyyy',x_FromDate) + ''', ''' +
    FormatDateTime ('mm/dd/yyyy',x_ToDate) + ''' ';
  GPSds.ExecSQL;

  GPSds.Free;

  MasterCds.Close;
  MasterCds.Open;

  ShowMessage ('Regeneration Completed');


end;

procedure TBlockBkgRoomsForm.HotelLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if (HotelLCMB.EditValue <> null)  then
    HotelCds.Locate('Addressbook_id',HotelLCMB.EditValue,[]);

end;

procedure TBlockBkgRoomsForm.cxButton2Click(Sender: TObject);
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
      if RptBlkBkgRoomsForm = nil then
        Application.CreateForm(TRptBlkBkgRoomsForm, RptBlkBkgRoomsForm);

      RptBlkBkgRoomsForm.RoomsCds.Close;
      RptBlkBkgRoomsForm.RoomsSds.Close;

      RptBlkBkgRoomsForm.RoomsSds.Params[0].Value := ReportParameterForm.cxDateEdit1.Date;
      RptBlkBkgRoomsForm.RoomsSds.Params[1].Value := ReportParameterForm.cxDateEdit2.Date;

      RptBlkBkgRoomsForm.RoomsSds.Open;
      RptBlkBkgRoomsForm.RoomsCds.Open;

      RptBlkBkgRoomsForm.TitleLabel.Caption :=
        RptBlkBkgRoomsForm.TitleLabel.Caption +
        '  -- ' + VarToStr(_ret1[1]) + ' To ' +  VarToStr(_ret2[1]) ;

      RptBlkBkgRoomsForm.QuickRep1.PreviewModal;

      RptBlkBkgRoomsForm.Release;
      RptBlkBkgRoomsForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

end.
