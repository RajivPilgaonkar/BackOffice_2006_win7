unit CopyFlightsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, FMTBcd, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Provider, SqlExpr;

type
  TCopyFlightsForm = class(TForm)
    DBGrid1: TDBGrid;
    FlightsQry: TSQLQuery;
    FlightsDSP: TDataSetProvider;
    FlightsCDS: TClientDataSet;
    FlightsDS: TDataSource;
    Panel3: TPanel;
    CancelBB: TBitBtn;
    OkBB: TBitBtn;
    FlightsCDSflights_id: TIntegerField;
    FlightsCDSdays: TSmallintField;
    FlightsCDSflightno: TStringField;
    FlightsCDSstops: TSmallintField;
    FlightsCDSdomestic: TBooleanField;
    FlightsCDSwef: TSQLTimeStampField;
    FlightsCDSwet: TSQLTimeStampField;
    FlightsCDSovernight: TBooleanField;
    FlightsCDSfrom_cities_id: TIntegerField;
    FlightsCDSto_cities_id: TIntegerField;
    FlightsCDSaircrafttypes_id: TIntegerField;
    FlightsCDSdeparture: TSQLTimeStampField;
    FlightsCDSarrival: TSQLTimeStampField;
    FlightsCDSduration: TStringField;
    FlightsCDSjcl: TFMTBCDField;
    FlightsCDSycl: TFMTBCDField;
    FlightsCDSjcl_usd: TFMTBCDField;
    FlightsCDSycl_usd: TFMTBCDField;
    FromCityQry: TSQLQuery;
    FromCityDSP: TDataSetProvider;
    FromCityCDS: TClientDataSet;
    FromCityCDSCities_id: TIntegerField;
    FromCityCDSCity: TStringField;
    ToCityQry: TSQLQuery;
    ToCityDSP: TDataSetProvider;
    ToCityCDS: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    AirCraftTypeQry: TSQLQuery;
    AirCraftTypeDSP: TDataSetProvider;
    AirCraftTypeCDS: TClientDataSet;
    AirCraftTypeCDSAircraftTypes_id: TIntegerField;
    AirCraftTypeCDSAircraft: TStringField;
    FlightsCDSFromCityLookUp: TStringField;
    FlightsCDSToCityLookUp: TStringField;
    FlightsCDSAirCraftTypeLookUp: TStringField;
    FlightsCDSDaysOfOperation: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyFlightsForm: TCopyFlightsForm;

implementation

uses SelOprFm;

{$R *.dfm}

function DaysToStr(Days:ShortInt ):String;
var
  str: string;
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

function DaysToByte(Days:String):shortint;
var
  ByteDays: integer;
begin

  ByteDays := 0;
  if Pos('SU',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 1;
  if Pos('MO',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 2;
  if Pos('TU',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 4;
  if Pos('WE',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 8;
  if Pos('TH',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 16;
  if Pos('FR',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 32;
  if Pos('SA',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 64;
  if Pos('DAILY',UpperCase(Days)) > 0 then
    ByteDays := ByteDays or 127;

  DaysToByte := Bytedays;
end;




end.
