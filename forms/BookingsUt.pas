unit BookingsUt;

interface

uses
  Db, SysUtils, dbtables, SQLExpr, Variants;


function IsTourCodeValid(x_TourCode: string; x_TourDate: TDateTime): Boolean;
function IsValidTicketAgentCity(x_Addressbook_id, x_Cities_id: integer): Boolean;
function IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
function GetDefaultPrincipalAgent: integer;
function GetDefaultCountry(x_addressbook_id: integer): integer;
function GetDefaultCurrency(x_addressbook_id: integer): integer;
function GetDefaultTourAgent(x_TourCode: string): integer;
function GetPaxCount(x_bookings_id: integer): integer;
function GetDefaultTourHotel(x_TourCode: string): integer;
function GetDefaultTourCity(x_TourCode: string): integer;
function GetDefaultCurrencyFromCountry(x_countries_id: integer): integer;
function GetNumNights(x_FromDate, x_ToDate: TDatetime): integer;
procedure UpdateBookingDetails(x_Bookings_id: integer);
function GetAddressbookCity(x_Addressbook_id: integer): integer;

implementation

uses BackOfficeDM;

function IsTourCodeValid(x_TourCode: string; x_TourDate: TDateTime): Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TourCodes tc, TourDepartureDates tdd ' +
    'WHERE tc.TourCodes_id = tdd.Tourcodes_id ' +
    'AND tc.TourCode = ' + QuotedStr(x_TourCode) + ' ' +
    'AND tdd.TourDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_TourDate)) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_valid := True;

  GpSds.Free;

  Result := x_valid;
end;

function IsValidTicketAgentCity(x_Addressbook_id, x_Cities_id: integer): Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Addressbook a ' +
    'WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) + ' ' +
    'AND Cities_id = ' + IntToStr(x_Cities_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_valid := True;

  GpSds.Free;

  Result := x_valid;
end;

function IsValidHotelRoom(x_Addressbook_id, x_RoomTypes_id: integer): Boolean;
var
  QueryString: string;
  x_valid: Boolean;
  GpSds: TSQLDataSet;
begin
  x_valid := False;

  QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM dbo.fn_GetHotelRoomTypes(' +  IntToStr(x_Addressbook_id) + ') ' +
    'WHERE RoomTypes_id = ' + IntToStr(x_RoomTypes_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_valid := True;

  GpSds.Free;

  Result := x_valid;
end;

function GetDefaultPrincipalAgent: integer;
var
  GpSds: TSQLDataSet;
  x_QueryString: string;
  x_pa: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_pa := -1;

  x_QueryString := 'SELECT Number FROM Defaults ' +
    ' WHERE Item LIKE ''%Principal Agent%'' ';
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.eof) and (GpSds['Number'] <> null) then
    x_pa := GpSds['Number'];

  GpSds.Free;

  Result := x_pa;

end;

function GetDefaultCountry(x_addressbook_id: integer): integer;
var
  GpSds: TSQLDataSet;
  x_QueryString: string;
  x_countries_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_countries_id := -1;

  x_QueryString := 'SELECT Countries_id FROM Addressbook ' +
    ' WHERE Addressbook_id = ' + IntToStr(x_addressbook_id);
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.eof) and (GpSds['countries_id'] <> null) then
    x_countries_id := GpSds['countries_id'];

  GpSds.Free;

  Result := x_countries_id;

end;

function GetDefaultCurrency(x_addressbook_id: integer): integer;
var
  GpSds: TSQLDataSet;
  x_QueryString: string;
  x_currencies_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_currencies_id := -1;

  x_QueryString := 'SELECT Currencies_id FROM Addressbook ' +
    ' WHERE Addressbook_id = ' + IntToStr(x_addressbook_id);
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.eof) and (GpSds['currencies_id'] <> null) then
    x_currencies_id := GpSds['currencies_id'];

  GpSds.Free;

  Result := x_currencies_id;

end;

function GetDefaultCurrencyFromCountry(x_countries_id: integer): integer;
var
  GpSds: TSQLDataSet;
  x_QueryString: string;
  x_currencies_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_currencies_id := -1;

  x_QueryString := 'SELECT Currencies_id FROM Countries ' +
    ' WHERE Countries_id = ' + IntToStr(x_countries_id);
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.eof) and (GpSds['currencies_id'] <> null) then
    x_currencies_id := GpSds['currencies_id'];

  GpSds.Free;

  Result := x_currencies_id;

end;


function GetDefaultTourAgent(x_TourCode: string): integer;
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x_agents_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_agents_id := -1;

  x_QueryString := 'SELECT Agent_Addressbook_id ' +
        'FROM TourCodes WHERE TourCode = ' + QuotedStr(x_TourCode);
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.eof) and (GpSds['Agent_Addressbook_id'] <> null) then
    x_agents_id := GpSds['Agent_Addressbook_id'];

  GpSds.Free;

  Result := x_agents_id;

end;

function GetPaxCount(x_bookings_id: integer): integer;
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x_count: integer;
begin

  x_QueryString := 'SELECT COUNT(*) AS x_count ' +
        'FROM BookingsClients ' +
        'WHERE Bookings_id = ' + IntToStr(x_bookings_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;

function GetDefaultTourHotel(x_TourCode: string): integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_hotels_id: integer;
begin

  QueryString := 'SELECT Hotel_Addressbook_id ' +
        'FROM TourCodes WHERE TourCode = ' + QuotedStr(x_TourCode);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_hotels_id := -1;
  if (not GpSds.Eof) and (GpSds['Hotel_Addressbook_id'] <> null) then
    x_hotels_id := GpSds['Hotel_Addressbook_id'];

  GpSds.Free;

  Result := x_hotels_id;

end;

function GetDefaultTourCity(x_TourCode: string): integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_cities_id: integer;
begin

  QueryString := 'SELECT Cities_id ' +
        'FROM TourCodes WHERE TourCode = ' + QuotedStr(x_TourCode);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_cities_id := -1;
  if (not GpSds.Eof) and (GpSds['Cities_id'] <> null) then
    x_cities_id := GpSds['Cities_id'];

  GpSds.Free;

  Result := x_cities_id;

end;

function GetNumNights(x_FromDate, x_ToDate: TDatetime): integer;
var
  x_nights: integer;
begin

  x_nights := trunc(x_ToDate) - trunc(x_FromDate);

  Result := x_nights;

end;


procedure UpdateBookingDetails(x_Bookings_id: integer);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  // This proc. is run to update the bookingdetails tbl.
  // This ensures that all pax added to the bookings are displayed in the pax list/rooming list

  x_QueryString := 'EXEC p_UpdateBookingDetails_All ' + IntToStr(x_Bookings_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

function GetAddressbookCity(x_addressbook_id: integer): integer;
var
  GpSds: TSQLDataSet;
  x_QueryString: string;
  x_cities_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_cities_id := -1;

  x_QueryString := 'SELECT cities_id FROM Addressbook ' +
    ' WHERE Addressbook_id = ' + IntToStr(x_addressbook_id);
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.eof) and (GpSds['cities_id'] <> null) then
    x_cities_id := GpSds['cities_id'];

  GpSds.Free;

  Result := x_cities_id;

end;


end.
