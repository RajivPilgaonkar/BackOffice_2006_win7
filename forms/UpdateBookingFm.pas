unit UpdateBookingFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterFm, FMTBcd, DBClient, DB, Provider, SqlExpr,
  StdCtrls, DBCtrls, ExtCtrls, cxDBEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons, cxMemo, cxGraphics,
  dxSkinsCore, dxSkinsDefaultPainters, Menus;

type
  TUpdateBookingForm = class(TCustomMasterForm)
    Label2: TLabel;
    AgentLCB: TcxDBLookupComboBox;
    Label3: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label8: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label1: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    MasterCDSbookings_id: TIntegerField;
    MasterCDSbooked: TSQLTimeStampField;
    MasterCDSaddressbook_id: TIntegerField;
    MasterCDSreference: TStringField;
    MasterCDSconfirmed: TSQLTimeStampField;
    MasterCDShistory: TMemoField;
    MasterCDScancelled: TSQLTimeStampField;
    MasterCDSnotes: TMemoField;
    MasterCDStravellingwith_bookings_id: TIntegerField;
    MasterCDSbookingsclients_id: TIntegerField;
    MasterCDScountries_id: TIntegerField;
    MasterCDScreated: TSQLTimeStampField;
    MasterCDSsessionid: TStringField;
    MasterCDScurrencies_id: TIntegerField;
    MasterCDSweb_bookings_id: TIntegerField;
    MasterCDSweb_users_id: TIntegerField;
    cxButton1: TcxButton;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    cxButton2: TcxButton;
    function IsReferenceDuplicate: Boolean;    
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
    procedure MasterCDSBeforeEdit(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateBookingForm: TUpdateBookingForm;
  _UpdateBookingForm_Level : Integer;

implementation

uses BookingFm, BackOfficeDM;

{$R *.dfm}

function TUpdateBookingForm.IsReferenceDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Bookings ' +
    'WHERE Reference = ''' + VarToStr(MasterCDS['Reference']) + ''' ';

  if MasterCDS.State = dsEdit then
    QueryString := QueryString + ' AND (Bookings_id <> ' + IntToStr(MasterCDS['Bookings_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;
end;

procedure TUpdateBookingForm.FormCreate(Sender: TObject);
begin
  inherited;
  AdmLevel := _BookingForm_Level;

  UpdateBookingForm.Height := 340;
  UpdateBookingForm.Width := 550;

  BackOfficeDataModule.PrinAgentCds.Active := False;
  BackOfficeDataModule.PrinAgentCds.Active := True;

  BackOfficeDataModule.WebUsersCds.Active := False;
  BackOfficeDataModule.WebUsersCds.Active := True;

  BackOfficeDataModule.CountriesCds.Active := False;
  BackOfficeDataModule.CountriesCds.Active := True;

  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active := True;

  MasterCds.Active := False;
  MasterSds.CommandText := 'SELECT * FROM Bookings WHERE Bookings_id = ' + IntToStr(BookingForm.BookingCds['Bookings_id']);
  MasterCds.Active := True;

end;

procedure TUpdateBookingForm.FormDestroy(Sender: TObject);
begin
  inherited;
  UpdateBookingForm := nil;
end;

procedure TUpdateBookingForm.cxButton1Click(Sender: TObject);
begin
{  if (IsReferenceDuplicate) then
    raise Exception.create('Duplicate reference number encountered');

  if cxDBMemo1.EditValue <> null then
    HistoryStr := cxDBMemo1.EditValue
  else
    HistoryStr := '';

  if cxDBMemo2.EditValue <> null then
    NotesStr := cxDBMemo2.EditValue
  else
    NotesStr := '';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := '';
  GpSds.CommandText := 'Update Bookings SET Addressbook_id = ' + IntToStr(AgentLCB.EditValue) +
                       ' , Web_Users_id = ' + IntToStr(cxDBLookupComboBox2.EditValue) +
                       ' , Countries_id = ' + IntToStr(cxDBLookupComboBox1.EditValue) +
                       ' , Currencies_id = ' + IntToStr(cxDBLookupComboBox4.EditValue) +
                       ' , Reference = ''' + VarToStr(cxDBTextEdit2.Text) + ''' '+
                       ' , History = ''' + HistoryStr + ''' ' +
                       ' , Notes = ''' + NotesStr  +  ''' ' +
                       ' WHERE Bookings_id = ' + IntToStr(MasterCDSbookings_id.Value);
  GpSds.ExecSQL;
}
  if MasterCds.State = dsBrowse then
    MasterCds.Edit;
  MasterCDS.Post;
  MasterCDS.Refresh;
//  GpSds.Free;

end;

procedure TUpdateBookingForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCDS['Reference'] = null then
    raise exception.Create('Please enter the reference');

  if (IsReferenceDuplicate) then
    raise Exception.create('Duplicate reference number encountered');

  if MasterCDS['Addressbook_id'] = null then
    raise exception.Create('Please enter the agent');
end;

procedure TUpdateBookingForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  MasterCDS.ApplyUpdates(0);
end;

procedure TUpdateBookingForm.MasterCDSBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TUpdateBookingForm.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
