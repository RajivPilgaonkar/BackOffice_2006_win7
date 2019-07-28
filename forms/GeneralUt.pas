unit GeneralUt;

interface

uses
  IBtable, dbtables, IBQuery, IBCustomDataSet, Db, MainFm, SysUtils, Dialogs,
  Classes, Windows, Variants, SQLExpr,
  cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, cxCustomPivotGrid,
  cxExportPivotGridLink, ShlObj, ActiveX, DateUtils;

function StartOfYear (x_Date: TDateTime): TDateTime;
procedure PostTables(x_Table_Array: Array of TIBTable);
procedure PostDsTables(x_Table_Array: Array of TDataSource);
procedure RefreshLastId(Tbl: TSQLDataSet; KeyField, QueryString: string );
procedure RefreshLastDsId(Tbl: TIBDataSet; KeyField, QueryString: string );
function GetUserLevel(Users_id, ModuleNo: integer): integer;
function GetSystemDate: TDateTime;
function MaxI2 (x1: Integer; x2: Integer): Integer;
function Padl (x_str: string;pad_char: Char;str_len: Word): string;
function Padr (x_str: string;pad_char: Char;str_len: Word): string;
function CanDelete (TableName: string; id: integer; x_option: integer): boolean;
function GetNextId(Tablename, Keyfield: string): integer;
procedure PostKeyEx32(key: Word; const shift: TShiftState; specialkey: Boolean);
function IsDuplicate(Tablename, FieldName, Value, AndStr: string): Boolean;
function FinancialYearStatus(FinancialYears_id: integer): Integer;
function ReplaceSingleQuotes(Str: String): String;
function CalcCentury (x_date: TDateTime; x_digit: SmallInt): string;
function BuildTourString (TourCodeTblName: String; TourCodeKeyField: String; KeyValue: String) : String;
procedure validateblanks(FieldName : TField; FieldDesc : String);
function DaysToStr(Days:ShortInt ):String;
function DaysToBit(Days:String):shortint;
function GetAdmUserName(Users_id: integer): string;
function GetDefaultOffices_id(x_companies_id: integer): integer;
function GetDefaultPrincipalAgent: integer;
function GetDefaultCountry: integer;
function GetDefaultCurrency: integer;
function GetServerImagePath: string;
function GetLinuxServerImagePath: string;
function GetServerWebQuotationsPath: string;
function GetDefaultDivisions_id(x_companies_id: integer): integer;
function MonIndex (x_month: string): SmallInt;
procedure ExportGrid4ToExcel_BW(const AFileName: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; AUseNativeFormat: Boolean;
  ATableView: TcxGridDBTableView);
procedure ExportGrid4ToExcel_BW_NoBand(const AFileName: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; AUseNativeFormat: Boolean;
  ATableView: TcxGridDBTableView);
procedure ExportGrid4ToExcel_BW_Banded(const AFileName: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; AUseNativeFormat: Boolean;
  ATableView: TcxGridDBBandedTableView);
function GetDefaultTrainTicketAgent: integer;
function GetDefaultAirTicketAgent: integer;
function NextColumn (x_col: string): string;
function GetUrlString(x_text: string): string;
function GetNextUrlString(x_text: string; x_option: integer): string;
function StrCopyLocal(x_text: string; x_index, x_num: integer): string;
function SkipNextCol(x_col: string; x_num: integer): string;
function GetServiceTax(x_date: TDateTime; x_Taxes_id: integer): double;
function GetRateBeforeServiceTax(x_rate:double; x_ServiceTaxPerc:double; x_option: integer): double;
function GetPanNo(x_companies_id: integer): string;
function GetServiceTaxNo(x_companies_id: integer): string;
function GetGstinNo(x_companies_id: integer): string;
function GetCinNo(x_companies_id: integer): string;
function Sgn(X: Extended): Integer;
function RoundUp(X: Extended): Extended;
function RoundOff(X: Extended): Extended;
function Sgn2(X: Extended): Integer;
function GetPaxInVehicle (x_vehicles_id: integer): integer;
function GetExchangeRate (x_Currencies_id: integer; x_Date: TDateTime): double;
function GetDefaultCostingDate(x_Date: TDateTime): TDateTime;
function VarToIntDef(const V: Variant; const ADefault: Integer): Integer;
function GetThroughAddressbook (x_Addressbook_id: integer): integer;
function GetDefaultCurrencyAddr (x_Addressbook_id: integer): integer;
function RoundOffDurationStr (x_duration: string): string;
function GetDefaultClass(x_Tickets_id: integer; x_FlightNo: string; x_Overnight: boolean): integer;
function GetDefaultExceptionClass(x_Tickets_id: integer; x_FlightNo: string): integer;
procedure FreePidl(pidl: PItemIDList);
function IsDate(str: string): Boolean;
function FirstDayOfMonth(x_date: TDateTime): TDateTime;
function LastDayOfMonth(x_date: TDateTime): TDateTime;

implementation

uses BackOfficeDM, StrUtils;

function StartOfYear (x_Date: TDateTime): TDateTime;
var
  x_Year, x_Month, x_Day: Word;
  x_StartDate: TDateTime;
begin

  DecodeDate (x_Date, x_Year, x_Month, x_Day);

  if x_Month > 3 then
    x_StartDate := EncodeDate (x_Year, 4, 1)
  else
    x_StartDate := EncodeDate (x_Year-1, 4, 1);

  Result := x_StartDate;

end;


function BuildTourString (TourCodeTblName: String; TourCodeKeyField: String; KeyValue: String) : String;
var
  tQry: TSQLQuery;
  SQlStr,TourCodeStr: String;
begin

  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := g_SQLConnection;

  SQlStr := 'SELECT TourCode FROM ' + VarToStr(TourCodeTblName)+
    ' LEFT JOIN TourCodes ON ' + VarToStr(TourCodeTblName) +'.TourCodes_id = TourCodes.TourCodes_id' +
    ' WHERE ' + VarToStr(TourCodeKeyField) + ' = ' + VarToStr(KeyValue) +
    ' ORDER BY TourCode';

  TourCodeStr := '';
  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add(SQlStr);
  tQry.Open;

  if tQry.RecordCount >0  then
    begin
      tQry.First;
      while not tQry.Eof do
        begin
          TourCodeStr := TourCodeStr + tQry['TourCode'] +'/';
          tQry.Next;
        end;
    end;
  BuildTourString := Copy((TourCodeStr),1,Length(TourCodeStr)-1);
end;

function CalcCentury (x_date: TDateTime; x_digit: SmallInt): string;
var
  x_year,x_month,x_day : Word;
begin
  DecodeDate(x_date,x_year,x_month,x_day);
  if x_month > 3 then
      x_year := x_year+1;
  CalcCentury := Copy(IntToStr(Integer(x_year)),1,x_digit);
end;

procedure RefreshLastId(Tbl: TSQLDataSet; KeyField, QueryString: string );
var
  GpSQlQry: TSQLDataSet;
begin

  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  GPSQLQry.Close;
  GPSQLQry.CommandText := QueryString;
  GPSQLQry.Open;

  Tbl.DisableControls;
  Tbl.Locate (KeyField, GPSQLQry['MaxId'], []);
  Tbl.EnableControls;

  GPSQLQry.Free;

end;

procedure RefreshLastDsId(Tbl: TIBDataSet; KeyField, QueryString: string );
var
  GpQry: TQuery;
begin

  GPQry := TQuery.Create(nil);
  GPQry.DatabaseName := g_DatabaseName;

  GPQry.SQL.Clear;
  GPQry.SQL.Add(QueryString);
  GPQry.Open;

  Tbl.DisableControls;
  Tbl.Close;
  Tbl.Open;
  Tbl.Locate (KeyField, GPQry['MaxId'], []);
  Tbl.EnableControls;

  GpQry.Free;

end;

function GetNextId(Tablename, Keyfield: string): integer;
var
  GpSQLQry: TSQLDataSet;
  Querystring: string;
  MaxId: integer;
begin

  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  QueryString := 'SELECT MAX(' + Keyfield + ') AS MaxId FROM ' + Tablename;

  GPSQLQry.Close;
  GPSQLQry.CommandText := QueryString;
  GPSQLQry.Open;

  if (not GPSQLQry.EOF) and (GPSQLQry['MaxId'] <> null) then
    MaxId := GPSQLQry['MaxId']
  else
    MaxId := 0;

  GpSQLQry.Free;

  Result := MaxId + 1;

end;

function IsDuplicate(Tablename, FieldName, Value, AndStr: string): Boolean;
var
  GpSQLQry: TSQLDataSet;
  Querystring: string;
  ret_val: boolean;
  x_count: integer;
begin

  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ' + Tablename + ' ' +
    'WHERE ' + Fieldname + ' = ' + Value + ' ' +
    AndStr;

  GPSQLQry.Close;
  GPSQLQry.CommandText := QueryString;
  GPSQLQry.Open;

  if (not GPSQLQry.EOF) and (GPSQLQry['x_count'] <> null) then
    x_count := GPSQLQry['x_count']
  else
    x_count := 0;

  GpSQLQry.Free;

  if (x_count > 0) then
    ret_val := true
  else
    ret_val := false;

  Result := ret_val;

end;



procedure PostTables(x_Table_Array: Array of TIBTable);
var
  len, i: integer;
begin
  len := High(x_Table_Array);

  for i := 0 to len do
    begin
      if x_Table_Array[i].State in [dsInsert, dsEdit] then
        x_Table_Array[i].Post;
    end;

end;

procedure PostDsTables(x_Table_Array: Array of TDataSource);
var
  len, i: integer;
begin
  len := High(x_Table_Array);

  for i := 0 to len do
    begin
      if x_Table_Array[i].State in [dsInsert, dsEdit] then
        x_Table_Array[i].Dataset.Post;
    end;

end;

function FinancialYearStatus(FinancialYears_id: integer): Integer;
var
  GpSQLQry: TSQLDataSet;
  Retval: integer;
  QueryString: string;
begin

  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  QueryString := 'SELECT status FROM FinancialYears ' +
    'WHERE FinancialYears_id = ' + IntToStr(FinancialYears_id);

  GPSQLQry.Close;
  GPSQLQry.CommandText := QueryString;
  GPSQLQry.Open;

  if (not GPSQLQry.EOF) and (GPSQLQry['status']<>null) then
    Retval := GPSQLQry['status']
  else
    Retval := -1;

  Result := Retval;

end;


function GetSystemDate: TDateTime;
var
  GpSQLQry: TSQLDataSet;
  SystemDate: TDateTime;
  QueryString: string;
begin

  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  QueryString := 'SELECT getdate() as SystemDate';

  GPSQLQry.Close;
  GPSQLQry.CommandText := QueryString;
  GPSQLQry.Open;

  SystemDate := StrToDate(FormatDateTime('dd/mm/yyyy',GPSQLQry['SystemDate']));

  GpSQLQry.Free;

  Result := SystemDate;

end;


function GetUserLevel(Users_id, ModuleNo: integer): integer;
var
  GpSds : TSQLDataSet;
 begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Active := False;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT  dbo.fn_GetUserLevel ('+ IntToStr(g_users_id) +','+ IntToStr(ModuleNo)+ ') AS O_Level';
  GpSds.Active := True;

  Result := GpSds['O_Level'];
end;

function GetDefaultCostingDate(x_Date: TDateTime): TDateTime;
var
  GpSds : TSQLDataSet;
 begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Active := False;
  GpSds.CommandText := 'SELECT  dbo.f_GetDefaultCostingDate (' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_Date)) + ') AS CostingDate';
  GpSds.Active := True;

  Result := GpSds['CostingDate'];
end;


function GetAdmUserName(Users_id: integer): string;
var
  GpSds: TSQLDataSet;
  RetVal, QueryString: string;
begin

  QueryString := 'SELECT uid FROM AdmUsers ' +
    'WHERE AdmUsers_id = ' + IntToStr(Users_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  Retval := GpSds['uid'];

  GpSds.Free;

  Result := Retval;

end;


function MaxI2 (x1: Integer; x2: Integer): Integer;
begin
  if x1 > x2 then
    MaxI2 := x1
  else
    MaxI2 := x2;
end;

function Padl (x_str: string;pad_char: Char;str_len: Word): string;
var
  x_len,x_len_trim,x_len_pad: Integer;
  i: SmallInt;
  pad_str: string;
begin
  x_len := MaxI2(str_len,Length (x_str));
  x_len_trim := Length (TrimLeft(x_str));
  x_len_pad := x_len - x_len_trim;

  Padl := x_str;
  if x_len_pad > 0 then
    begin
      pad_str := '';
      for i := 1 to x_len_pad do
        pad_str := pad_str + pad_char;
      pad_str := pad_str + TrimLeft(x_str);
      Padl := pad_str;
    end;
end;

function Padr (x_str: string;pad_char: Char;str_len: Word): string;
var
  x_len,x_len_trim,x_len_pad: Integer;
  i: SmallInt;
  pad_str: string;
begin
  x_len := MaxI2(str_len,Length (x_str));
  x_len_trim := Length (TrimRight(x_str));
  x_len_pad := x_len - x_len_trim;

  Padr := x_str;
  if x_len_pad > 0 then
    begin
      pad_str := TrimRight(x_str);
      for i := 1 to x_len_pad do
        pad_str := pad_str + pad_char;
      Padr := pad_str;
    end;
end;


function CanDelete (TableName: string; id: integer; x_option: integer): boolean;
var
  GpSQLQry, Gp1SQLQry: TSQLDataSet;
  QueryString: string;
  RetVal: boolean;
  AdmMasters_id: integer;
begin

  RetVal := False;

  GPSQLQry := TSQLDataSet.Create(nil);
  GPSQLQry.SQLConnection := g_SQLConnection;
  GPSQLQry.CommandType := ctQuery;

  GP1SQLQry := TSQLDataSet.Create(nil);
  GP1SQLQry.SQLConnection := g_SQLConnection;
  GP1SQLQry.CommandType := ctQuery;

  QueryString := 'SELECT AdmMasters_id FROM AdmMasters ' +
    'WHERE AdmTable = ''' + TableName + '''';

  GPSQLQry.Close;
  GPSQLQry.CommandText := QueryString;
  GPSQLQry.Open;

  AdmMasters_id := 0;

  if (not GPSQLQry.EOF) and (GPSQLQry['AdmMasters_id']<>null) then
    AdmMasters_id := GPSQLQry['AdmMasters_id'];

  if AdmMasters_id > 0 then
    begin

      QueryString := 'SELECT TrsTable, TrsField FROM AdmTrs ' +
        'WHERE AdmMasters_id = ' + IntToStr(AdmMasters_id);

      GPSQLQry.Close;
      GPSQLQry.CommandText := QueryString;
      GPSQLQry.Open;

      RetVal := True;

      while (not GPSQLQry.EOF) and (Retval = True) do
        begin

          QueryString := 'SELECT COUNT(*) AS x_count ' +
            'FROM ' + GPSQLQry['TrsTable'] + ' ' +
            'WHERE ' + GPSQLQry['TrsField'] + ' = ' + IntToStr(id);

          GP1SQLQry.Close;
          GP1SQLQry.CommandText := QueryString;
          GP1SQLQry.Open;

          if (not GP1SQLQry.EOF) and (GP1SQLQry['x_count']>0) then
            begin
              MessageDlg ('Cannot Delete.' + chr(13) +
                'Reference exists in ' + GpSQLQry['TrsTable'], mtError, [mbOK], 0);
              Retval := False;
            end;

          GPSQLQry.Next;
        end;

    end;

  GpSQLQry.Free;
  Gp1SQLQry.Free;

  Result := RetVal;

end;

function ReplaceSingleQuotes(Str: String): String;
var
  i: Integer;
  S: String;
begin
  for i := 1 to Length(Str) do
    if Copy(Str,i,1) = '''' then
      S := S + Copy(Str,i,1) + ''''
    else
      S := S + Copy(Str,i,1);
  Result := S;
end;


procedure PostKeyEx32(key: Word; const shift: TShiftState; specialkey: Boolean);
{************************************************************
* Procedure PostKeyEx32
*
* Parameters:
*  key    : virtual keycode of the key to send. For printable
*           keys this is simply the ANSI code (Ord(character)).
*  shift  : state of the modifier keys. This is a set, so you
*           can set several of these keys (shift, control, alt,
*           mouse buttons) in tandem. The TShiftState type is
*           declared in the Classes Unit.
*  specialkey: normally this should be False. Set it to True to
*           specify a key on the numeric keypad, for example.
* Description:
*  Uses keybd_event to manufacture a series of key events matching
*  the passed parameters. The events go to the control with focus.
*  Note that for characters key is always the upper-case version of
*  the character. Sending without any modifier keys will result in
*  a lower-case character, sending it with [ssShift] will result
*  in an upper-case character!
// Code by P. Below
************************************************************}
type
  TShiftKeyInfo = record
    shift: Byte;
    vkey: Byte;
  end;
  byteset = set of 0..7;
const
  shiftkeys: array [1..3] of TShiftKeyInfo =
    ((shift: Ord(ssCtrl); vkey: VK_CONTROL),
    (shift: Ord(ssShift); vkey: VK_SHIFT),
    (shift: Ord(ssAlt); vkey: VK_MENU));
var
  flag: DWORD;
  bShift: ByteSet absolute shift;
  i: Integer;
begin
  for i := 1 to 3 do
  begin
    if shiftkeys[i].shift in bShift then
      keybd_event(shiftkeys[i].vkey, MapVirtualKey(shiftkeys[i].vkey, 0), 0, 0);
  end; { For }
  if specialkey then
    flag := KEYEVENTF_EXTENDEDKEY
  else
    flag := 0;

  keybd_event(key, MapvirtualKey(key, 0), flag, 0);
  flag := flag or KEYEVENTF_KEYUP;
  keybd_event(key, MapvirtualKey(key, 0), flag, 0);

  for i := 3 downto 1 do
  begin
    if shiftkeys[i].shift in bShift then
      keybd_event(shiftkeys[i].vkey, MapVirtualKey(shiftkeys[i].vkey, 0),
        KEYEVENTF_KEYUP, 0);
  end; { For }
end; { PostKeyEx32 }

procedure validateblanks(FieldName : TField; FieldDesc : String);
begin
  if Fieldname.DataType = ftString then
  begin
    if (FieldName.IsNull) or (Length(Trim(FieldName.Value))=0)then
    begin
      raise Exception.Create('Please Enter the '+ FieldDesc);
      FieldName.FocusControl;
    end;
  end
  else
  begin
    if (FieldName.IsNull) then
    begin
      raise Exception.Create('Please Enter the '+ FieldDesc);
      FieldName.FocusControl;
    end;
  end;
end;

function DaysToStr(Days:ShortInt ):String;
var str : string;
  const _DAY_SUNDAY = 1;
  const _DAY_MONDAY = 2;
  const _DAY_TUESDAY = 4;
  const _DAY_WEDNESDAY = 8;
  const _DAY_THURSDAY = 16;
  const _DAY_FRIDAY = 32;
  const _DAY_SATURDAY = 64;
  const _DAY_DAILY: Shortint = 127;
begin

  str := '';
  if Days and _DAY_MONDAY >0 then
      str := 'Mo';
  if Days and _DAY_TUESDAY >0 then
    if str = '' then
      str := str+'Tu'
    else
      str := str+'/Tu';
  if Days and _DAY_WEDNESDAY >0 then
    if str = '' then
      str := str+'We'
    else
      str := str+'/We';
  if Days and _DAY_THURSDAY >0 then
    if str = '' then
      str := str+'Th'
    else
      str := str+'/Th';
  if Days and _DAY_FRIDAY >0 then
    if str = '' then
      str := str+'Fr'
    else
      str := str+'/Fr';
  if Days and _DAY_SATURDAY >0 then
    if str = '' then
      str := str+'Sa'
    else
      str := str+'/Sa';
  if Days and _DAY_SUNDAY >0 then
    if str = '' then
      str := str+'Su'
    else
      str := str+'/Su';

  if str='Mo/Tu/We/Th/Fr/Sa/Su' then
     str := 'Daily';

  DaystoStr := str;
end;


function DaysToBit(Days:String):shortint;
var bitdays: shortInt;
begin

  BitDays := 0;
  if Pos('SU',UpperCase(Days)) > 0 then
    BitDays := BitDays or 1;
  if Pos('MO',UpperCase(Days)) > 0 then
    BitDays := BitDays or 2;
  if Pos('TU',UpperCase(Days)) > 0 then
    BitDays := BitDays or 4;
  if Pos('WE',UpperCase(Days)) > 0 then
    BitDays := BitDays or 8;
  if Pos('TH',UpperCase(Days)) > 0 then
    BitDays := BitDays or 16;
  if Pos('FR',UpperCase(Days)) > 0 then
    BitDays := BitDays or 32;
  if Pos('SA',UpperCase(Days)) > 0 then
    BitDays := BitDays or 64;
  if Pos('DAILY',UpperCase(Days)) > 0 then
    BitDays := BitDays or 127;

  DaysToBit := BitDays;
end;

function GetDefaultOffices_id(x_companies_id: integer): integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  Retval: integer;
begin

  QueryString := 'SELECT Offices_id FROM Offices ' +
    'WHERE Companies_id = ' + IntToStr(x_companies_id) + ' ' +
    'AND DefaultOffice = 1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  Retval := GpSds['Offices_id'];

  GpSds.Free;

  Result := Retval;

end;

function GetDefaultDivisions_id(x_companies_id: integer): integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  Retval: integer;
begin

  QueryString := 'SELECT divisions_id FROM Divisions ' +
    'WHERE Companies_id = ' + IntToStr(x_companies_id) + ' ' +
    'AND DefaultDivision = 1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  Retval := GpSds['Divisions_id'];

  GpSds.Free;

  Result := Retval;

end;

function GetDefaultPrincipalAgent: integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_agents_id: integer;
begin

  QueryString := 'SELECT number FROM Defaults ' +
    'WHERE item = ''Principal Agent'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_agents_id := 725;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    x_agents_id := GpSds['number'];

  GpSds.Free;

  Result := x_agents_id;

end;

function GetPaxInVehicle (x_vehicles_id: integer): integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_NumPax: integer;
begin

  QueryString := 'SELECT Pax FROM Vehicles ' +
    'WHERE Vehicles_id = ' + IntToStr(x_vehicles_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NumPax := 1;
  if (not GpSds.EOF) and (GpSds['Pax'] <> null) then
    x_NumPax := GpSds['Pax'];

  GpSds.Free;

  Result := x_NumPax;

end;


function GetDefaultCountry: integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_countries_id: integer;
begin

  QueryString := 'SELECT number FROM Defaults ' +
    'WHERE item = ''Country'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_countries_id := 200;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    x_countries_id := GpSds['number'];

  GpSds.Free;

  Result := x_countries_id;

end;

function GetDefaultCurrency: integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_currencies_id: integer;
begin

  QueryString := 'SELECT number FROM Defaults ' +
    'WHERE item = ''Currency'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_currencies_id := 13;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    x_currencies_id := GpSds['number'];

  GpSds.Free;

  Result := x_currencies_id;

end;


function GetDefaultTrainTicketAgent: integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_agents_id: integer;
begin

  QueryString := 'SELECT number FROM Defaults ' +
    'WHERE item = ''Default Ticket Agent - Train'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_agents_id := 1564;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    x_agents_id := GpSds['number'];

  GpSds.Free;

  Result := x_agents_id;

end;

function GetDefaultAirTicketAgent: integer;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_agents_id: integer;
begin

  QueryString := 'SELECT number FROM Defaults ' +
    'WHERE item = ''Default Ticket Agent - Air'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_agents_id := 2548;
  if (not GpSds.EOF) and (GpSds['number']<>null) then
    x_agents_id := GpSds['number'];

  GpSds.Free;

  Result := x_agents_id;

end;


function GetLinuxServerImagePath: string;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_image_path: string;
begin

  QueryString := 'SELECT text FROM Defaults ' +
    'WHERE item = ''Linux Server Image Path'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_image_path := '\\Server2003\BackOffice Images\';
  if (not GpSds.EOF) and (GpSds['text']<>null) then
    x_image_path := GpSds['text'];

  GpSds.Free;

  Result := x_image_path;

end;


function GetServerWebQuotationsPath: string;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_dir: string;
begin

  QueryString := 'SELECT text FROM Defaults ' +
    'WHERE item = ''Web Quotations Directory'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_dir := '\\Server2003\WebQuotations';
  if (not GpSds.EOF) and (GpSds['text']<>null) then
    x_dir := GpSds['text'];

  GpSds.Free;

  Result := x_dir;

end;


function GetServerImagePath: string;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_image_path: string;
begin

  QueryString := 'SELECT text FROM Defaults ' +
    'WHERE item = ''Server Image Path'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_image_path := '\\Server2003\BackOffice Images\';
  if (not GpSds.EOF) and (GpSds['text']<>null) then
    x_image_path := GpSds['text'];

  GpSds.Free;

  Result := x_image_path;

end;


function MonIndex (x_month: string): SmallInt;
begin
  if x_month = 'JAN' then
    MonIndex := 1
  else if x_month = 'FEB' then
    MonIndex := 2
  else if x_month = 'MAR' then
    MonIndex := 3
  else if x_month = 'APR' then
    MonIndex := 4
  else if x_month = 'MAY' then
    MonIndex := 5
  else if x_month = 'JUN' then
    MonIndex := 6
  else if x_month = 'JUL' then
    MonIndex := 7
  else if x_month = 'AUG' then
    MonIndex := 8
  else if x_month = 'SEP' then
    MonIndex := 9
  else if x_month = 'OCT' then
    MonIndex := 10
  else if x_month = 'NOV' then
    MonIndex := 11
  else if x_month = 'DEC' then
    MonIndex := 12
  else
    MonIndex := 0;

end;

procedure ExportGrid4ToExcel_BW(const AFileName: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; AUseNativeFormat: Boolean;
  ATableView: TcxGridDBTableView);
var
  x_EvenColor, x_OddColor: TColor;
begin

  x_EvenColor := ATableView.Styles.ContentEven.Color;
  x_OddColor := ATableView.Styles.ContentEven.Color;
  ATableView.Styles.ContentEven.Color := clWhite;
  ATableView.Styles.ContentOdd.Color := clWhite;
  ExportGridToExcel(AFileName, AGrid, AExpand, ASaveAll, AUseNativeFormat);
  ATableView.Styles.ContentEven.Color := x_EvenColor;
  ATableView.Styles.ContentOdd.Color := x_OddColor;

end;

procedure ExportGrid4ToExcel_BW_NoBand(const AFileName: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; AUseNativeFormat: Boolean;
  ATableView: TcxGridDBTableView);
var
  x_EvenColor, x_OddColor: TColor;
begin

  x_EvenColor := ATableView.Styles.ContentEven.Color;
  x_OddColor := ATableView.Styles.ContentEven.Color;
  ATableView.Styles.ContentEven.Color := clWhite;
  ATableView.Styles.ContentOdd.Color := clWhite;
  ExportGridToExcel(AFileName, AGrid, AExpand, ASaveAll, AUseNativeFormat);
  ATableView.Styles.ContentEven.Color := x_EvenColor;
  ATableView.Styles.ContentOdd.Color := x_OddColor;

end;

procedure ExportGrid4ToExcel_BW_Banded(const AFileName: string; AGrid: TcxGrid;
  AExpand: Boolean; ASaveAll: Boolean; AUseNativeFormat: Boolean;
  ATableView: TcxGridDBBandedTableView);
var
  x_EvenColor, x_OddColor: TColor;
begin

  x_EvenColor := ATableView.Styles.ContentEven.Color;
  x_OddColor := ATableView.Styles.ContentOdd.Color;
  ATableView.Styles.ContentEven.Color := clWhite;
  ATableView.Styles.ContentOdd.Color := clWhite;
  ExportGridToExcel(AFileName, AGrid, AExpand, ASaveAll, AUseNativeFormat);
  ATableView.Styles.ContentEven.Color := x_EvenColor;
  ATableView.Styles.ContentOdd.Color := x_OddColor;

end;

function NextColumn (x_col: string): string;
var
  x_NextCol: string;
  x_LastChar: Char;
begin

  if x_col = '' then
    begin
      Result := 'A';
      exit;
    end;

  x_LastChar := x_col[length(x_col)];

  if x_LastChar = 'Z' then
    x_NextCol := NextColumn(Copy(x_col, 1, length(x_col)-1)) + 'A'
  else
    begin
      x_NextCol := Chr(Ord(x_LastChar) + 1);
      if length(x_col) > 1 then
        x_NextCol := Copy(x_col, 1, length(x_col)-1) + x_NextCol;
    end;

  Result := x_NextCol;

end;

function GetUrlString(x_text: string): string;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_url: string;
begin

  QueryString := 'SELECT dbo.fn_ConvertToUrl(''' + x_text + ''') AS Url';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_url := '';
  if (not GpSds.EOF) and (GpSds['url'] <> null) then
    x_url := GpSds['url'];

  GpSds.Free;

  Result := x_url;

end;


function GetNextUrlString(x_text: string; x_option: integer): string;
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_url: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextUrlNo(''' + x_text + ''', ' + IntToStr(x_option) + ') AS NextUrl';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_url := '';
  if (not GpSds.EOF) and (GpSds['NextUrl'] <> null) then
    x_url := GpSds['NextUrl'];

  GpSds.Free;

  Result := x_url;

end;

function StrCopyLocal(x_text: string; x_index, x_num: integer): string;
var
  x_str: string;
begin

  x_str := Copy(x_text, x_index, x_num);

  Result := x_str;

end;

function SkipNextCol(x_col: string; x_num: integer): string;
var
  i: integer;
  x_NextCol: string;
begin

  i := 0;
  x_NextCol := x_col;

  while i < x_num do
    begin
      x_NextCol := NextColumn(x_NextCol);
      i := i + 1;
    end;

  Result := x_NextCol;
end;

function GetServiceTax(x_date: TDateTime; x_taxes_id: integer): double;
var
  GpSds: TSQLDataSet;
  x_tax: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT dbo.fn_GetServiceTaxPerc (''' + FormatDateTime('mm/dd/yyyy',x_date) + ''',' + IntToStr(x_taxes_id) + ') AS ServiceTax' ;
  GpSds.Open;

  x_tax := GpSds['ServiceTax'];

  GpSds.Free;

  Result := x_tax;

end;

function GetRateBeforeServiceTax(x_rate:double; x_ServiceTaxPerc:double; x_option: integer): double;
var
  GpSds: TSQLDataSet;
  x_RateBeforeServTax: double;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Rate, ServTaxAmt FROM fn_GetRateBeforeServiceTax (' + FloatToStr(x_rate) + ',' + FloatToStr(x_ServiceTaxPerc) + ') ' ;
  GpSds.Open;

  x_RateBeforeServTax := 0.0;
  if x_option = 1 then
    x_RateBeforeServTax := GpSds['Rate']
  else if x_option = 2 then
    x_RateBeforeServTax := GpSds['ServTaxAmt'];

  GpSds.Free;

  Result := x_RateBeforeServTax;

end;


function GetPanNo(x_companies_id: integer): string;
var
  GpSds: TSQLDataSet;
  x_pan: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT pan FROM Companies WHERE Companies_id = ' + IntToStr(x_companies_id);
  GpSds.Open;

  x_pan := '';
  if (not GpSds.EOF) and (GpSds['Pan'] <> null) then
    x_pan := GpSds['Pan'];

  GpSds.Free;

  Result := x_pan;

end;

function GetServiceTaxNo(x_companies_id: integer): string;
var
  GpSds: TSQLDataSet;
  x_ServTaxNo: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT ServiceTaxNo FROM Companies WHERE Companies_id = ' + IntToStr(x_companies_id);
  GpSds.Open;

  x_ServTaxNo := '';
  if (not GpSds.EOF) and (GpSds['ServiceTaxNo'] <> null) then
    x_ServTaxNo := GpSds['ServiceTaxNo'];

  GpSds.Free;

  Result := x_ServTaxNo;

end;

function GetGstinNo(x_companies_id: integer): string;
var
  GpSds: TSQLDataSet;
  x_Gstin: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT Gstin FROM Companies WHERE Companies_id = ' + IntToStr(x_companies_id);
  GpSds.Open;

  x_Gstin := '';
  if (not GpSds.EOF) and (GpSds['Gstin'] <> null) then
    x_Gstin := GpSds['Gstin'];

  GpSds.Free;

  Result := x_Gstin;

end;

function GetCinNo(x_companies_id: integer): string;
var
  GpSds: TSQLDataSet;
  x_CinNo: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT CinNo FROM Companies WHERE Companies_id = ' + IntToStr(x_companies_id);
  GpSds.Open;

  x_CinNo := '';
  if (not GpSds.EOF) and (GpSds['CinNo'] <> null) then
    x_CinNo := GpSds['CinNo'];

  GpSds.Free;

  Result := x_CinNo;

end;

function Sgn(X: Extended): Integer;
// Returns -1, 0 or 1 according to the
// sign of the argument
begin
  if X < 0 then
    Result := -1
  else if X = 0 then
    Result := 0
  else
    Result := 1;
end;


function RoundUp(X: Extended): Extended;
// Returns the first integer greater than or
// equal to a given number in absolute value
// (sign is preserved).
//   RoundUp(3.3) = 4    RoundUp(-3.3) = -4
begin
  Result := Int(X) + Sgn(Frac(X));
end;

function RoundOff(X: Extended): Extended;
// Returns the first integer greater than or
// equal to a given number in absolute value
// (sign is preserved).
//   RoundUp(3.3) = 4    RoundUp(-3.3) = -4
begin
  Result := Int(X) + Sgn2(Frac(X));
end;

function Sgn2(X: Extended): Integer;
// Returns -1, 0 or 1 according to the
// sign of the argument
begin
  if (X < 0) and (abs(X) < 0.5) then
    Result := 0
  else if (X < 0) and (abs(X) >= 0.5) then
    Result := -1
  else if X = 0 then
    Result := 0
  else if (X > 0) and (abs(X) < 0.5) then
    Result := 0
  else if (X > 0) and (abs(X) >= 0.5) then
    Result := 1
  else
    Result := 1;
end;

function GetExchangeRate (x_Currencies_id: integer; x_Date: TDateTime): double;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ExchRate: double;
begin

  QueryString := 'SELECT dbo.fn_GetExchangeRate (' +
    IntToStr(x_Currencies_id) + ',''' +
    FormatDateTime('mm/dd/yyyy',x_Date) + ''') AS ExchRate';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ExchRate := GpSds['ExchRate'];

  GpSds.Free;

  Result := x_ExchRate;

end;


function VarToIntDef(const V: Variant; const ADefault: Integer): Integer;
begin
  if not VarIsNull(V) then
    Result := StrToIntDef(V, ADefault)
  else
    Result := ADefault;
end;

function GetThroughAddressbook (x_Addressbook_id: integer): integer;
var
  x_ThroughAddressbook_id: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT Through_Addressbook_id FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) ;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['Through_Addressbook_id'] <> null then
    x_ThroughAddressbook_id := GpSds['Through_Addressbook_id']
  else
    x_ThroughAddressbook_id := 0;

  GpSds.Free;

  Result := x_ThroughAddressbook_id;

end;

function GetDefaultCurrencyAddr (x_Addressbook_id: integer): integer;
var
  x_DefaultCurrencies_id, x_option: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  x_option := 1;

  if x_Addressbook_id > 0 then
    x_option := 2;

  QueryString := 'SELECT dbo.fn_GetDefaultCurrency(' + IntToStr(x_option) + ',' +
    IntToStr(x_Addressbook_id) + ') as DefaultCurrencies_id';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_DefaultCurrencies_id := GpSds['DefaultCurrencies_id'];

  GpSds.Free;

  Result := x_DefaultCurrencies_id;

end;

function RoundOffDurationStr (x_duration: string): string;
var
  x_RoundDuration: string;
begin
  if Copy(x_duration,4,2) > '30' then
    x_RoundDuration := padl(IntToStr(StrToInt(Copy(x_duration,1,2))+1),'0',2) + ':00'
  else if Copy(x_duration,4,2) > '00' then
    x_RoundDuration := Copy(x_duration,1,2) + ':30'
  else
    x_RoundDuration := x_duration;

  Result := x_RoundDuration;
end;

function GetDefaultClass(x_Tickets_id: integer; x_FlightNo: string; x_Overnight: boolean): integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Class_id: integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_Class_id := GetDefaultExceptionClass(x_Tickets_id, x_FlightNo);

  if x_Tickets_id = 1 then
    begin
      QueryString := 'SELECT Class_id FROM Class ' +
        'WHERE Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
        'ORDER BY OrderNo';
    end

  else if (x_Tickets_id = 2) and (x_Class_id <= 0) and (x_Overnight = false) then
    begin


      GpSds.Close;
      QueryString := 'SELECT twf.Class_id ' +
                     'FROM Trains t ' +
                     'INNER JOIN TrainWiseFares twf ON t.TrainNo = twf.TrainNo ' +
                     'WHERE t.TrainNo = ' + QuotedStr(x_FlightNo) + ' ' +
                     'AND twf.Class_id = 5 ' +
                     'AND ((' + QuotedStr(FormatDateTime('mm/dd/yyyy',Date)) + ' BETWEEN twf.wef AND twf.wet) OR (twf.wet IS NULL)) ' +
                     'ORDER BY twf.Wef DESC ';
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if GpSds.Eof then
        begin

          GpSds.Close;
          QueryString := 'SELECT twf.Class_id ' +
                         'FROM Trains t ' +
                         'INNER JOIN TrainWiseFares twf ON t.TrainNo = twf.TrainNo ' +
                         'WHERE t.TrainNo = ' + QuotedStr(x_FlightNo) + ' '  +
                         'AND twf.Class_id = 6 ' +
                         'AND ((' + QuotedStr(FormatDateTime('mm/dd/yyyy',Date)) + ' BETWEEN twf.wef AND twf.wet) OR (twf.wet IS NULL)) ' +
                         'ORDER BY twf.Wef DESC ';
          GpSds.CommandText := QueryString;
          GpSds.Open;

        end;


{
      GpSds.Close;
      QueryString := 'SELECT c.Class_id FROM Trains t, TrainAvailableClass tac, Class c ' +
        'WHERE t.Trains_id = tac.Trains_id ' +
        'AND tac.Class_id = c.Class_id ' +
        'AND c.Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
        'AND t.TrainNo = ''' + x_FlightNo + ''' ' +
        'AND c.Class_id = 5';
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if GpSds.Eof then
        begin

          QueryString := 'SELECT c.Class_id FROM Trains t, TrainAvailableClass tac, Class c ' +
            'WHERE t.Trains_id = tac.Trains_id ' +
            'AND tac.Class_id = c.Class_id ' +
            'AND c.Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
            'AND t.TrainNo = ''' + x_FlightNo + ''' ';

        end;

}

    end

  else if (x_Tickets_id = 2) and (x_Class_id <= 0) and (x_Overnight = true) then
    begin

      GpSds.Close;
      QueryString := 'SELECT twf.Class_id ' +
                     'FROM Trains t ' +
                     'INNER JOIN TrainWiseFares twf ON t.TrainNo = twf.TrainNo ' +
                     'WHERE t.TrainNo = ' + QuotedStr(x_FlightNo) + ' ' +
                     'AND twf.Class_id = 6 ' +
                     'AND ((' + QuotedStr(FormatDateTime('mm/dd/yyyy',Date)) + ' BETWEEN twf.wef AND twf.wet) OR (twf.wet IS NULL)) ' +
                     'ORDER BY twf.Wef DESC ';
      GpSds.CommandText := QueryString;
      GpSds.Open;

{
      GpSds.Close;
      QueryString := 'SELECT c.Class_id FROM Trains t, TrainAvailableClass tac, Class c ' +
        'WHERE t.Trains_id = tac.Trains_id ' +
        'AND tac.Class_id = c.Class_id ' +
        'AND c.Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
        'AND t.TrainNo = ''' + x_FlightNo + ''' ' +
        'AND c.Class_id = 6';
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if GpSds.Eof then
        begin

          QueryString := 'SELECT c.Class_id FROM Trains t, TrainAvailableClass tac, Class c ' +
            'WHERE t.Trains_id = tac.Trains_id ' +
            'AND tac.Class_id = c.Class_id ' +
            'AND c.Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
            'AND t.TrainNo = ''' + x_FlightNo + ''' ';
        end;
}

    end

  else if (x_Tickets_id = 2) and (x_Class_id <= 0) then
    begin

      GpSds.Close;
      QueryString := 'SELECT twf.Class_id ' +
                     'FROM Trains t ' +
                     'INNER JOIN TrainWiseFares twf ON t.TrainNo = twf.TrainNo ' +
                     'WHERE t.TrainNo = ' + QuotedStr(x_FlightNo) + ' '  +
                     'AND twf.Class_id = 5 ' +
                     'AND ((' + QuotedStr(FormatDateTime('mm/dd/yyyy',Date)) + ' BETWEEN twf.wef AND twf.wet) OR (twf.wet IS NULL)) ' +
                     'ORDER BY twf.Wef DESC ';
      GpSds.CommandText := QueryString;
      GpSds.Open;

{
      GpSds.Close;
      QueryString := 'SELECT c.Class_id FROM Trains t, TrainAvailableClass tac, Class c ' +
        'WHERE t.Trains_id = tac.Trains_id ' +
        'AND tac.Class_id = c.Class_id ' +
        'AND c.Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
        'AND t.TrainNo = ''' + x_FlightNo + ''' ';
      GpSds.CommandText := QueryString;
      GpSds.Open;
}

    end;

  if (x_Class_id <= 0) then
    begin

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_Class_id := 6;

      if (not GpSds.EOF) and (GpSds['Class_id'] <> null) then
        x_Class_id := GpSds['Class_id'];
    end;

  GpSds.Free;

  Result := x_Class_id;

end;

function GetDefaultExceptionClass(x_Tickets_id: integer; x_FlightNo: string): integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Class_id: integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT Class_id FROM TicketClassExceptions ' +
    'WHERE Tickets_id = ' + IntToStr(x_Tickets_id) + ' ' +
    'AND TrainNo = ' + QuotedStr(x_FlightNo) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Class_id := -1;
  if (not GpSds.EOF) and (GpSds['Class_id'] <> null) then
    x_Class_id := GpSds['Class_id'];

  GpSds.Free;

  Result := x_Class_id;

end;

procedure FreePidl(pidl: PItemIDList);
begin
  CoTaskMemFree(pidl);
end;


function IsDate(str: string): Boolean;
var
  dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;


function FirstDayOfMonth(x_date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
begin
  DecodeDate(x_date, Year, Month, Day);
  Result := EncodeDate(Year, Month, 1);
end;

function LastDayOfMonth(x_date: TDateTime): TDateTime;
var
  Year, Month, Day: Word;
  x_First, x_Last: TDatetime;
begin
  DecodeDate(x_date, Year, Month, Day);
  x_First := EncodeDate(Year, Month, 1);
  x_Last := incDay(incMonth(x_First,1),-1);
  Result := x_Last;
end;

end.
