unit BookingDetailsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxLabel, cxCheckBox, cxDBLookupComboBox, cxButtonEdit,
  cxCalendar, cxTimeEdit, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxDBLabel, cxContainer, cxDropDownEdit, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TBookingDetailsForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    BookingDetailsSds: TSQLDataSet;
    BookingDetailsDsp: TDataSetProvider;
    BookingDetailsCds: TClientDataSet;
    BookingDetailsDS: TDataSource;
    BookingDetailsCdsBookingDetails_id: TIntegerField;
    BookingDetailsCdsBookingsClients_id: TIntegerField;
    BookingDetailsCdsBookingsTours_id: TIntegerField;
    BookingDetailsCdsSingleSupplement: TBooleanField;
    BookingDetailsCdsLocalPayment: TBooleanField;
    BookingDetailsCdsLocalPaymentTypes_id: TIntegerField;
    BookingDetailsCdsShareWithBookingsClients_id: TIntegerField;
    BookingDetailsCdsLocalPaymentAmount: TFMTBCDField;
    BookingDetailsCdsRemarks: TStringField;
    cxGrid1DBTableView1SingleSupplement: TcxGridDBColumn;
    cxGrid1DBTableView1LocalPayment: TcxGridDBColumn;
    cxGrid1DBTableView1LocalPaymentTypes_id: TcxGridDBColumn;
    cxGrid1DBTableView1ShareWithBookingsClients_id: TcxGridDBColumn;
    cxGrid1DBTableView1LocalPaymentAmount: TcxGridDBColumn;
    cxGrid1DBTableView1Remarks: TcxGridDBColumn;
    PaxListSds: TSQLDataSet;
    PaxListDsp: TDataSetProvider;
    PaxListCds: TClientDataSet;
    PaxListDS: TDataSource;
    PaxListCdsBookingsClients_id: TIntegerField;
    PaxListCdsMale: TBooleanField;
    PaxListCdsName: TStringField;
    PaxListCdsCancelledOn: TSQLTimeStampField;
    BookingDetailsCdsPaxName: TStringField;
    BookingDetailsCdsMale: TBooleanField;
    cxGrid1DBTableView1PaxName: TcxGridDBColumn;
    cxGrid1DBTableView1Male: TcxGridDBColumn;
    sp_UpdateBookingDetails: TSQLDataSet;
    BookingDetailsCdsTourCode: TStringField;
    BookingDetailsCdsTourDate: TSQLTimeStampField;
    cxButton1: TcxButton;
    PaxListCdsReference: TStringField;
    PaxListCdsBookings_id: TIntegerField;
    BookingDetailsCdsRefLookup: TStringField;
    cxGrid1DBTableView1RefLookup: TcxGridDBColumn;
    BookingDetailsCdsTL_Calc: TBooleanField;
    BookingDetailsCdsTTL_Calc: TBooleanField;
    cxGrid1DBTableView1TL_Calc: TcxGridDBColumn;
    cxGrid1DBTableView1TTL_Calc: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxDBLabel2: TcxDBLabel;
    BookingDetailsCdsMasterCode: TStringField;
    BookingDetailsCdsMasterDepDate: TSQLTimeStampField;
    cxGrid1DBTableView1TourCode: TcxGridDBColumn;
    cxGrid1DBTableView1TourDate: TcxGridDBColumn;
    BookingDetailsCdsCancelledOn: TDateField;
    cxGrid1DBTableView1DBCancelledOn: TcxGridDBColumn;
    BookingDetailsCdsLeadPaxOrder: TIntegerField;
    cxGrid1DBTableView1LeadPaxOrder: TcxGridDBColumn;
    PaxListCdsCountries_id: TIntegerField;
    PaxListCdsCountryLookup: TStringField;
    BookingDetailsCdsCountryLookup: TStringField;
    cxGrid1DBTableView1Country: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BookingDetailsCdsBeforeEdit(DataSet: TDataSet);
    procedure BookingDetailsCdsBeforeDelete(DataSet: TDataSet);
    procedure BookingDetailsCdsAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BookingDetailsCdsCalcFields(DataSet: TDataSet);
    procedure BookingDetailsCdsBeforePost(DataSet: TDataSet);
    function CanShareWith: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookingDetailsForm: TBookingDetailsForm;
  BookingDetailsCds_State :TDataSetState;
  _BookingDetailsForm_Level : Integer;
  _BookingDetailsForm_Mode : Integer;
  _BookingDetailsForm_itineraries_id : Integer;
  _BookingDetailsForm_ItinerariesLines_id : Integer;
  _BookingDetailsForm_ItinerariesOptions_id : Integer;
  _BookingDetailsForm_AdmLevel: Integer;

implementation

uses BackOfficeDM, BookingFm;

{$R *.dfm}

procedure TBookingDetailsForm.FormCreate(Sender: TObject);
var
  QueryString, FilterString, x_MasterCode, TourString: string;
  GpSds: TSQLDataSet;
  x_MasterDepDate: TDateTime;
begin

  x_MasterDepDate := StrToDate('01/01/2000');

  // Called from Booking Form
  if _BookingDetailsForm_Mode = 1 then
    begin

      QueryString := 'EXEC p_UpdateBookingDetails  ''' + BookingForm.BookingToursCds['TourCode'] + ''', ''' +
            FormatDateTime('mm/dd/yyyy',BookingForm.BookingToursCds['TourDate']) + '''';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      GpSds.Free;

    end;


  // Called from Booking Form
  if _BookingDetailsForm_Mode = 1 then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := 'SELECT MasterCode, MasterDepartureDate ' +
        'FROM dbo.fn_GetmasterDepartureDate (''' + BookingForm.BookingToursCds['TourCode'] + ''', ''' +
        FormatDateTime('mm/dd/yyyy',BookingForm.BookingToursCds['TourDate']) + ''') ';
      GpSds.Open;

      if GpSds['MasterCode'] = null then
        begin
          GpSds.Free;
          raise exception.create ('No corresponding Master Code / Master Departure from this Tour Code / Departure Date');
        end;

      x_MasterCode := GpSds['MasterCode'];
      x_MasterDepDate := GpSds['MasterDepartureDate'];

      GpSds.Free;

    end

  // Called from Itineraries Form
  else if _BookingDetailsForm_Mode = 2 then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := 'SELECT m.MasterCode, i.DepartureDate ' +
        'FROM itineraries i, Masters m ' +
        'WHERE i.itineraries_id = ' + IntToStr(_BookingDetailsForm_Itineraries_id) + ' ' +
        'AND i.Masters_id = m.Masters_id ';
      GpSds.Open;

      x_MasterCode := GpSds['MasterCode'];
      x_MasterDepDate := GpSds['DepartureDate'];

      GpSds.Free;

    end

  // Called from Voucher Manager Form
  else if _BookingDetailsForm_Mode = 3 then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := 'SELECT m.MasterCode, i.DepartureDate ' +
        'FROM itineraries i, Masters m ' +
        'WHERE i.itineraries_id = ' + IntToStr(_BookingDetailsForm_Itineraries_id) + ' ' +
        'AND i.Masters_id = m.Masters_id ';
      GpSds.Open;

      x_MasterCode := GpSds['MasterCode'];
      x_MasterDepDate := GpSds['DepartureDate'];

      GpSds.Free;

    end;

  PaxListSds.Active := False;
  PaxListSds.CommandText := 'select * from dbo.fn_GetMasterPaxListOnTour (''' +
    x_MasterCode + ''', ''' +
    FormatDateTime('mm/dd/yyyy',x_MasterDepDate) + ''',2) ' +
    'ORDER BY [name]';
  PaxListSds.Active := True;
  PaxListCds.Active := False;
  PaxListCds.Active := True;

  FilterString := '(MasterCode = ''' + x_MasterCode + ''') AND ' +
    '(MasterDepDate = ''' + FormatDateTime('dd/mm/yyyy',x_MasterDepDate) + ''')';

  if _BookingDetailsForm_Mode = 2 then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := 'SELECT TourCode ' +
        'FROM dbo.fn_GetItinerariesTourCodes  (' + IntToStr(_BookingDetailsForm_ItinerariesLines_id) + ', ' +
        IntToStr(_BookingDetailsForm_ItinerariesOptions_id) + ')';
      GpSds.Open;

      TourString := '';

      while not GpSds.EOF do
        begin
          if TourString > '' then
            TourString := TourString + ',';
          TourString := TourString + '''' + GpSds['TourCode'] + '''';
          GpSds.Next;
        end;

      TourString := ' AND TourCode IN (' + TourString + ') ';

      FilterString := FilterString + TourString;

      GpSds.Free;

    end;

  BookingDetailsCds.Active := False;
  BookingDetailsCds.Filter := FilterString;
  BookingDetailsCds.Filtered := True;
  BookingDetailsCds.Active := True;

  if _BookingDetailsForm_Mode = 1 then
    BookingDetailsCds.Locate('BookingsClients_id',BookingForm.BookingClientsCds['BookingsClients_id'],[]);

  BackOfficeDataModule.LocalPaymentTypeCds.Active := True;

  _BookingDetailsForm_AdmLevel := _BookingDetailsForm_Level;

end;

procedure TBookingDetailsForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TBookingDetailsForm.BookingDetailsCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (_BookingDetailsForm_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TBookingDetailsForm.BookingDetailsCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (_BookingDetailsForm_AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TBookingDetailsForm.BookingDetailsCdsAfterPost(
  DataSet: TDataSet);
begin
  BookingDetailsCds.ApplyUpdates(0);
  BookingDetailsCds.Refresh;
end;

procedure TBookingDetailsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if BookingDetailsCds.State in [dsInsert, dsEdit] then
    begin
      MessageDlg ('Please save/cancel the record before closing', mtInformation, [mbOK], 0);
      CanClose := False;
    end

end;

procedure TBookingDetailsForm.BookingDetailsCdsCalcFields(
  DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT TourLeader, TourLeaderTrainee ' +
    'FROM BookingsTours bt, Bookings b, BookingsClients bc ' +
    'WHERE bc.Bookings_id = b.bookings_id ' +
    'AND bt.Bookings_id = b.Bookings_id ' +
    'AND bc.BookingsClients_id = ' + IntToStr(BookingDetailsCds['BookingsClients_id']) + ' ' +
    'AND bt.TourCode = ''' + BookingDetailsCds['TourCode'] + ''' ' +
    'AND bt.TourDate = ''' + FormatDateTime('mm/dd/yyyy',BookingDetailsCds['TourDate']) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GPSds.EOF) then
    begin

      if GpSds['TourLeader'] <> null then
        BookingDetailsCds['TL_Calc'] :=  GpSds['TourLeader']
      else
        BookingDetailsCds['TL_calc'] := False;

      if GpSds['TourLeaderTrainee'] <> null then
        BookingDetailsCds['TTL_Calc'] :=  GpSds['TourLeaderTrainee']
      else
        BookingDetailsCds['TTL_calc'] := False;

    end
  else
    begin
      BookingDetailsCds['TL_Calc'] := False;
      BookingDetailsCds['TTL_Calc'] := False;
    end;

  GpSds.Free;


end;

function TBookingDetailsForm.CanShareWith: Boolean;
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  //****** 1.1 *******
  // Share with single supplement
  //****** 1.1 *******
  if (BookingDetailsCds['SingleSupplement'] = True) and (BookingDetailsCds['ShareWithBookingsClients_id'] <> null) then
    begin
      ShowMessage ('Single Supplement cannot share');
      Result := False;
      exit;
    end;

  if (BookingDetailsCds['ShareWithBookingsClients_id'] = null) then
    begin
      Result := True;
      exit;
    end;

  //****** 1 *******
  // Share with self
  //****** 1 *******
  if BookingDetailsCds['ShareWithBookingsClients_id'] = BookingDetailsCds['BookingsClients_id'] then
    begin
      ShowMessage ('Cannot share with self');
      Result := False;
      exit;
    end;

  //****** 2 *******
  // Share with already in another record
  //****** 2 *******
  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM BookingDetails ' +
    'WHERE BookingDetails_id <> ' + IntToStr(BookingDetailsCds['BookingDetails_id']) + ' ' +
    'AND ShareWithBookingsClients_id = ' + IntToStr(BookingDetailsCds['ShareWithBookingsClients_id']) + ' ' +
    'AND MasterCode = ''' + BookingDetailsCds['MasterCode'] + ''' ' +
    'AND MasterDepDate = ''' + FormatDateTime('mm/dd/yyyy',BookingDetailsCds['MasterDepDate']) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    begin
      ShowMessage ('This pax is already sharing');
      Result := False;
      exit;
    end;

  //****** 3 *******
  // Cannot share with a person who has a "Share With" record
  //****** 3 *******
  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM BookingDetails ' +
    'WHERE BookingsClients_id = ' + IntToStr(BookingDetailsCds['ShareWithBookingsClients_id']) + ' ' +
    'AND BookingsClients_id <> ' + IntToStr(BookingDetailsCds['BookingsClients_id']) + ' ' +
    'AND ShareWithBookingsClients_id IS NOT NULL ' +
    'AND MasterCode = ''' + BookingDetailsCds['MasterCode'] + ''' ' +
    'AND MasterDepDate = ''' + FormatDateTime('mm/dd/yyyy',BookingDetailsCds['MasterDepDate']) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    begin
      ShowMessage ('Selected pax is already sharing');
      Result := False;
      exit;
    end;

  //****** 3.1 *******
  // Current pax has already shared with another
  //****** 3.1 *******
  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM BookingDetails ' +
    'WHERE ShareWithBookingsClients_id = ' + IntToStr(BookingDetailsCds['BookingsClients_id']) + ' ' +
    'AND BookingsClients_id <> ' + IntToStr(BookingDetailsCds['BookingsClients_id']) + ' ' +
    'AND MasterCode = ''' + BookingDetailsCds['MasterCode'] + ''' ' +
    'AND MasterDepDate = ''' + FormatDateTime('mm/dd/yyyy',BookingDetailsCds['MasterDepDate']) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    begin
      ShowMessage ('This pax is already sharing');
      Result := False;
      exit;
    end;


  //****** 4 *******
  // Cannot share with a person who has a "Single Supplement" record
  //****** 4 *******
  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM BookingDetails ' +
    'WHERE BookingsClients_id = ' + IntToStr(BookingDetailsCds['ShareWithBookingsClients_id']) + ' ' +
    'AND SingleSupplement = 1 ' +
    'AND MasterCode = ''' + BookingDetailsCds['MasterCode'] + ''' ' +
    'AND MasterDepDate = ''' + FormatDateTime('mm/dd/yyyy',BookingDetailsCds['MasterDepDate']) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 0 then
    begin
      ShowMessage ('Cannot share with a single supplement');
      Result := False;
      exit;
    end;

  Result := True;

end;

procedure TBookingDetailsForm.BookingDetailsCdsBeforePost(
  DataSet: TDataSet);
begin
  if not CanShareWith then
    Abort;
end;

end.
