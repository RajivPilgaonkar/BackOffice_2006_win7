unit FlightExcelImportUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Variants, Classes;

procedure ImportKingfisher_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportJetAirways_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportSpiceJet_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportSpiceJet2_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportGoAir_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportIndigo_Txt(x_FileName: string);
procedure ImportGoAir_Txt(x_FileName: string);
procedure ImportIndianAirlines_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportIndigoAirlines_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure ImportAirIndia_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure CitySeparateFromCode(x_Place: string; var x_City: string; var x_Code: string);
procedure CitySeparateFromCode_GoAir(x_Place: string; var x_City: string; var x_Code: string);
procedure GetTextFromTag(x_String: string; var x_Text: string);
procedure GetTextFromTag_GoAir(x_String: string; var x_Text: string; x_tag1, x_tag2: string);
procedure ConvertDateKingfisher(x_Wef_Fmt: string; var x_Wef: string);
procedure ConvertDateJetAirways(x_Wef_Fmt: string; var x_Wef: string);
procedure ConvertDateIndianAirlines(x_Wef_Fmt: string; var x_Wef: string);
procedure ConvertDateIndigo(x_WefIndigo: string; var x_Wef: string);
procedure ConvertDateGoAir(x_Wef_Fmt: string; var x_Wef: string);
procedure ConvertFreqKingfisher(x_Freq: string; var x_Days: integer);
procedure ConvertFreqJetAirways(x_Freq: string; var x_Days: integer);
procedure ConvertFreqIndianAirlines(x_Freq: string; var x_Days: integer);
procedure ConvertFreqSpiceJet(x_Freq: string; var x_Days: integer);
procedure ConvertFreqSpiceJet2(x_Freq: string; var x_Days: integer);
procedure ConvertFreqAirIndia(x_Freq: string; var x_Days: integer);
procedure ConvertValiditySpiceJet(x_Freq: string; var x_ValidFrom, x_ValidTo: string);
procedure ConvertFreqIndigo(x_Freq: string; var x_Days: integer);
procedure ConvertFreqGoAir(x_Freq: string; var x_Days: integer);
procedure ConvertTimeIndigo(x_IndigoTimings: string; var x_Timings: string);
procedure ConvertTimeKingfisher(x_KingfisherTimings: string; var x_Timings: string);
procedure IgnoreHtmlLines(var F_txt: Textfile; x_str: string; var x_LastLine: string);
procedure IgnoreHtmlBlock(var F_txt: Textfile;  var x_LastLine: string);
procedure ReadHtmlLines(var F_txt: Textfile; x_str: string; var x_Text: string);
function StripHTML(S: string; var x_arr: array of string): string;
procedure SplitHTML(S: string; var x_arr: array of string);

implementation

uses GeneralUt, BackOfficeDM;

procedure ImportKingfisher_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days, x_count: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Via: string;
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Sheet1';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 1';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 2;
  x_eof := false;
  x_count := 0;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if (trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '') and
             (trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value)) = '') then
            x_count := x_count + 1
          else
            x_count := 0;

          if x_count > 3 then
            x_eof := true;

          if x_row >= 20000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_Type := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));

          if (x_count = 0) and (x_Type > '') then
            begin

              x_FlightNo := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
              x_FromCity := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_ToCity := trim(VarToStr(Range['C'+IntToStr(x_row), 'C'+IntToStr(x_row)].Value));
              x_DeptTime := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Value));
              x_ArrTime := trim(VarToStr(Range['E'+IntToStr(x_row), 'E'+IntToStr(x_row)].Value));
              x_Freq := trim(VarToStr(Range['F'+IntToStr(x_row), 'F'+IntToStr(x_row)].Value));
              x_ValidFrom := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Value));
              x_ValidTo := trim(VarToStr(Range['H'+IntToStr(x_row), 'H'+IntToStr(x_row)].Value));
              x_Stops := '';
              x_Aircraft := '';
              x_Via := '';
              x_FlightAirline := '';
              x_FromCode := '';
              x_ToCode := '';

              if (x_FromCity > '') and (x_ToCity > '') then
                begin
                  ConvertDateKingfisher(x_ValidFrom, x_wef);
                  ConvertDateKingfisher(x_ValidTo, x_wet);
                  ConvertTimeKingfisher(x_DeptTime, x_DeptTime);
                  ConvertTimeKingfisher(x_ArrTime, x_ArrTime);
                  ConvertFreqKingfisher(x_Freq, x_Days);

                  x_QueryString :=
                    'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                    'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, FlightVia, flightrunson, FlightCompanies_id) ' +
                    'VALUES (''' + x_FlightNo + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                    x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',''' + x_wef + ''',''' + x_wet + ''',''' + x_stops + ''',''' +
                    x_Aircraft + ''',''' + x_Via + ''',' + IntToStr(x_Days) + ', 1)';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end;


            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure CitySeparateFromCode(x_Place: string; var x_City: string; var x_Code: string);
var
  x_pos, x_pos2: integer;
begin
  x_City := x_Place;
  x_Code := '';
  x_pos := pos('(', x_Place);
  if x_pos > 0 then
    begin
        x_pos2 := pos(')', x_Place);
        if x_pos2 > x_pos then
          begin
            x_City := trim(Copy(x_Place, 1, x_pos-1));
            x_Code := trim(Copy(x_Place, x_pos+1, x_pos2-x_pos-1));
          end;
    end;

  x_City := trim(x_City);
  x_Code := trim(x_Code);
end;

procedure CitySeparateFromCode_GoAir(x_Place: string; var x_City: string; var x_Code: string);
var
  x_pos, x_pos2, x_pos3: integer;
begin
  x_City := x_Place;
  x_Code := '';
  x_pos := pos('(', x_Place);
  if x_pos > 0 then
    begin
        x_pos2 := pos(')', x_Place);
        if x_pos2 > x_pos then
          begin
            x_City := trim(Copy(x_Place, 1, x_pos-1));
            x_Code := trim(Copy(x_Place, x_pos+1, x_pos2-x_pos-1));
          end;
    end;

  x_pos3 := pos('&', x_City);
  if x_pos3 > 0 then
    x_City := StrCopyLocal(x_City, 1, x_pos3-1);
end;


procedure GetTextFromTag(x_String: string; var x_Text: string);
var
  x_pos, x_pos2: integer;
  x_Text2: string;
begin
  x_Text := '';
  x_pos := pos('">', x_String);
  if x_pos > 0 then
    begin
      x_pos2 := pos('</td>', x_String);
      if x_pos2 > x_pos then
        begin
          x_Text := trim(Copy(x_String, x_pos+2, (x_pos2-1)-(x_pos+2)+1));
        end;
    end
  else if pos('<td>', x_String) > 0 then
    begin
      x_pos := pos('<td>', x_String);
      x_pos2 := pos('</td>', x_String);
      if x_pos2 > x_pos then
        begin
          x_Text := trim(Copy(x_String, x_pos+4, (x_pos2-1)-(x_pos+4)+1));
        end;
    end;

  x_Text2 := x_Text;

  x_pos := pos('">', x_Text2);
  if x_pos > 0 then
    begin
      x_pos2 := pos('</div>', x_Text2);
      if x_pos2 > x_pos then
        begin
          x_Text := trim(Copy(x_Text2, x_pos+2, (x_pos2-1)-(x_pos+2)+1));
        end;
    end

end;

procedure GetTextFromTag_GoAir(x_String: string; var x_Text: string; x_tag1, x_tag2: string);
var
  x_pos, x_pos2, x_len: integer;
begin
  x_Text := '';
  x_pos := pos(x_tag1, x_String);
  x_len := length(x_tag1);
  if x_pos > 0 then
    begin
      x_pos2 := pos(x_tag2, x_String);
      if x_pos2 > x_pos then
        begin
          x_Text := trim(Copy(x_String, x_pos+x_len, (x_pos2-1)-(x_pos+x_len)+1));
        end;
    end;
end;


procedure ConvertDateKingfisher(x_Wef_Fmt: string; var x_Wef: string);
var
  x_Day, x_Year, x_Mon, x_Month: string;
begin
  x_Day := Copy(x_Wef_Fmt, 1, 2);
  if (Copy(x_Wef_Fmt, 8, 1) >= '0') and (Copy(x_Wef_Fmt, 8, 1) <= '9') then
    x_Year := Copy(x_Wef_Fmt, 8, 4)
  else
    x_Year := Copy(x_Wef_Fmt, 9, 4);
  x_Mon := Copy(x_Wef_Fmt, 4, 3);

  if x_Mon = 'Jan' then
    x_Month := '01'
  else if x_Mon = 'Feb' then
    x_Month := '02'
  else if x_Mon = 'Mar' then
    x_Month := '03'
  else if x_Mon = 'Apr' then
    x_Month := '04'
  else if x_Mon = 'May' then
    x_Month := '05'
  else if x_Mon = 'Jun' then
    x_Month := '06'
  else if x_Mon = 'Jul' then
    x_Month := '07'
  else if x_Mon = 'Aug' then
    x_Month := '08'
  else if x_Mon = 'Sep' then
    x_Month := '09'
  else if x_Mon = 'Oct' then
    x_Month := '10'
  else if x_Mon = 'Nov' then
    x_Month := '11'
  else if x_Mon = 'Dec' then
    x_Month := '12';

  x_Wef := x_Month + '/' + x_Day + '/' + x_Year;

end;



procedure ConvertFreqKingfisher(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';

  if Pos('1',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('2',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('3',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('4',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('5',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('6',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('7',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  x_Days := DaysToBit(x_Str);

end;

procedure ImportJetAirways_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Via: string;
  x_QueryString, x_chr: string;
  GpSds: TSQLDataSet;
begin

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Schedules';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 2';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 5;
  x_eof := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '' then
            x_eof := true;

          if x_row >= 30000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_FromPlace := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
          x_ToPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
          x_Via := trim(VarToStr(Range['C'+IntToStr(x_row), 'C'+IntToStr(x_row)].Value));
          x_FlightNo := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Value));
          x_DeptTime := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Text));
          x_ArrTime := trim(VarToStr(Range['H'+IntToStr(x_row), 'H'+IntToStr(x_row)].Text));
          x_Aircraft := '';
          x_Stops := '0';
          x_ValidFrom := trim(VarToStr(Range['I'+IntToStr(x_row), 'I'+IntToStr(x_row)].Text));
          x_ValidTo := trim(VarToStr(Range['J'+IntToStr(x_row), 'J'+IntToStr(x_row)].Text));
          x_Freq := trim(VarToStr(Range['F'+IntToStr(x_row), 'F'+IntToStr(x_row)].Text));
          x_FlightAirline := trim(VarToStr(Range['E'+IntToStr(x_row), 'E'+IntToStr(x_row)].Value));

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              x_FromCity := x_FromPlace;
              x_FromCode := '';
              x_ToCity := x_ToPlace;
              x_ToCode := '';

              ConvertDateJetAirways(x_ValidFrom, x_wef);
              if x_ValidTo > '' then
                begin
                  ConvertDateJetAirways(x_ValidTo, x_wet);
                  x_wet := QuotedStr(x_wet);
                end
              else
                x_wet := 'null';

              x_chr := ':';
              Insert(x_chr, x_DeptTime, 3);
              Insert(x_chr, x_ArrTime, 3);

              ConvertFreqJetAirways(x_Freq, x_Days);

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, FlightVia, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + x_FlightNo + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',''' + x_wef + ''',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',''' + x_Via + ''',' + IntToStr(x_Days) + ', 2)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure ConvertDateJetAirways(x_Wef_Fmt: string; var x_Wef: string);
var
  x_Day, x_Year, x_Mon, x_Month: string;
begin
  x_Day := Copy(x_Wef_Fmt, 1, 2);
  x_Year := Copy(x_Wef_Fmt, 8, 2);
  x_Year := '20' + x_Year;
  x_Mon := Copy(x_Wef_Fmt, 4, 3);

  if x_Mon = 'Jan' then
    x_Month := '01'
  else if x_Mon = 'Feb' then
    x_Month := '02'
  else if x_Mon = 'Mar' then
    x_Month := '03'
  else if x_Mon = 'Apr' then
    x_Month := '04'
  else if x_Mon = 'May' then
    x_Month := '05'
  else if x_Mon = 'Jun' then
    x_Month := '06'
  else if x_Mon = 'Jul' then
    x_Month := '07'
  else if x_Mon = 'Aug' then
    x_Month := '08'
  else if x_Mon = 'Sep' then
    x_Month := '09'
  else if x_Mon = 'Oct' then
    x_Month := '10'
  else if x_Mon = 'Nov' then
    x_Month := '11'
  else if x_Mon = 'Dec' then
    x_Month := '12';

  x_Wef := x_Month + '/' + x_Day + '/' + x_Year;

end;


procedure ConvertFreqJetAirways(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';
  if Pos('1',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('2',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('3',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('4',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('5',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('6',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('7',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  if Pos('DAILY',UpperCase(x_Freq)) > 0 then
    x_Str := x_Str + 'Mo/Tu/We/Th/Fr/Sa/Su';

  x_Days := DaysToBit(x_Str);

end;

procedure ConvertFreqSpiceJet(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';

  if Pos('MON',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('TUE',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('WED',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('THU',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('FRI',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('SAT',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('SUN',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  if Pos('DAILY',UpperCase(x_Freq)) > 0 then
    x_Str := x_Str + 'Mo/Tu/We/Th/Fr/Sa/Su';

  // if the word except was used

  if Pos('EXCEPT',UpperCase(x_Freq)) > 0 then
    begin

      x_Str := 'Mo/Tu/We/Th/Fr/Sa/Su';

      if Pos('MON',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'Mo','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

      if Pos('TUE',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'Tu','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

      if Pos('WED',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'We','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

      if Pos('THU',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'Th','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

      if Pos('FRI',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'Fr','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

      if Pos('SAT',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'Sa','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

      if Pos('SUN',UpperCase(x_Freq)) > 0 then
        begin
          x_Str := StringReplace(x_Str, 'Su','',[rfReplaceAll, rfIgnoreCase]);
          x_Str := StringReplace(x_Str, '//','/',[rfReplaceAll, rfIgnoreCase]);
        end;

    end;

  x_Days := DaysToBit(x_Str);

end;

procedure ConvertFreqSpiceJet2(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  // Monday - 1 Sunday 7 for spice jet

  x_Str := '';

  if Pos('DAILY',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo/Tu/We/Th/Fr/Sa/Su';

  if Pos('1',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('2',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('3',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('4',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('5',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('6',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('7',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  x_Days := DaysToBit(x_Str);

end;


procedure ConvertValiditySpiceJet(x_Freq: string; var x_ValidFrom, x_ValidTo: string);
var
  x_Str, x_day, x_year, x_month, x_mon: string;
  x_pos: integer;
begin

  x_Str := '';

  if Pos('W.E.F',UpperCase(x_Freq)) > 0 then
    begin
      x_pos := Pos('W.E.F',UpperCase(x_Freq));
      x_pos := x_pos + 6;
      x_Str := Copy(x_Freq, x_pos,15);
      x_Str := StringReplace(x_Str, ' ','',[rfReplaceAll, rfIgnoreCase]);
      if (Uppercase(Copy(x_Str,2,1)) >= 'A') and (Uppercase(Copy(x_Str,2,1)) <= 'Z') then
        x_Str := '0' + x_Str;

      x_day := Copy(x_str,1,2);
      x_Year := Copy(x_str,6,4);
      x_Mon := Uppercase(Copy(x_str,3,3));

      if x_Mon = 'JAN' then
        x_Month := '01'
      else if x_Mon = 'FEB' then
        x_Month := '02'
      else if x_Mon = 'MAR' then
        x_Month := '03'
      else if x_Mon = 'APR' then
        x_Month := '04'
      else if x_Mon = 'MAY' then
        x_Month := '05'
      else if x_Mon = 'JUN' then
        x_Month := '06'
      else if x_Mon = 'JUL' then
        x_Month := '07'
      else if x_Mon = 'AUG' then
        x_Month := '08'
      else if x_Mon = 'SEP' then
        x_Month := '09'
      else if x_Mon = 'OCT' then
        x_Month := '10'
      else if x_Mon = 'NOV' then
        x_Month := '11'
      else if x_Mon = 'DEC' then
        x_Month := '12';

      x_ValidFrom := x_month + '/' + x_day + '/' + x_Year;

    end;

  if Pos('TILL',UpperCase(x_Freq)) > 0 then
    begin
      x_pos := Pos('TILL',UpperCase(x_Freq));
      x_pos := x_pos + 5;
      x_Str := Copy(x_Freq, x_pos,15);
      x_Str := StringReplace(x_Str, ' ','',[rfReplaceAll, rfIgnoreCase]);
      if length(x_Str) = 8 then
        x_Str := '0' + x_Str;

      x_day := Copy(x_str,1,2);
      x_Year := Copy(x_str,6,4);

      if x_Mon = 'Jan' then
        x_Month := '01'
      else if x_Mon = 'Feb' then
        x_Month := '02'
      else if x_Mon = 'Mar' then
        x_Month := '03'
      else if x_Mon = 'Apr' then
        x_Month := '04'
      else if x_Mon = 'May' then
        x_Month := '05'
      else if x_Mon = 'Jun' then
        x_Month := '06'
      else if x_Mon = 'Jul' then
        x_Month := '07'
      else if x_Mon = 'Aug' then
        x_Month := '08'
      else if x_Mon = 'Sep' then
        x_Month := '09'
      else if x_Mon = 'Oct' then
        x_Month := '10'
      else if x_Mon = 'Nov' then
        x_Month := '11'
      else if x_Mon = 'Dec' then
        x_Month := '12';

      x_ValidTo := x_month + '/' + x_day + '/' + x_Year;

    end;

end;

procedure ConvertFreqIndigo(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';

  if Pos('M',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('TU',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('W',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('TH',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('F',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('SA',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('SU',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  if Pos('DAILY',UpperCase(x_Freq)) > 0 then
    x_Str := x_Str + 'Mo/Tu/We/Th/Fr/Sa/Su';

  if Pos('EX',UpperCase(x_Freq)) > 0 then
    begin
      x_Str := 'Mo/Tu/We/Th/Fr/Sa/Su';

      if Pos('MO',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Mo', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('TU',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Tu', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('WE',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'We', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('TH',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Th', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('FR',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Fr', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('SA',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Sa', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('SU',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Su', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

    end;


  x_Days := DaysToBit(x_Str);

end;

procedure ConvertFreqGoAir(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';
  if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('MON',UpperCase(x_Freq)) > 0) then
    x_Str := 'Tu/We/Th/Fr/Sa/Su'
  else if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('TUE',UpperCase(x_Freq)) > 0) then
    x_Str := 'Mo/We/Th/Fr/Sa/Su'
  else if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('WED',UpperCase(x_Freq)) > 0) then
    x_Str := 'Mo/Tu/Th/Fr/Sa/Su'
  else if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('THU',UpperCase(x_Freq)) > 0) then
    x_Str := 'Mo/Tu/We/Fr/Sa/Su'
  else if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('FRI',UpperCase(x_Freq)) > 0) then
    x_Str := 'Mo/Tu/We/Th/Sa/Su'
  else if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('SAT',UpperCase(x_Freq)) > 0) then
    x_Str := 'Mo/Tu/We/Th/Fr/Su'
  else if (Pos('ALL DAYS EXCEPT',UpperCase(x_Freq)) > 0) and (Pos('SUN',UpperCase(x_Freq)) > 0) then
    x_Str := 'Mo/Tu/We/Th/Fr/Sa'
  else
    begin
      if Pos('MON',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'Mo';
        end;

      if Pos('TUE',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'Tu';
        end;

      if Pos('WED',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'We';
        end;

      if Pos('THU',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'Th';
        end;

      if Pos('FRI',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'Fr';
        end;

      if Pos('SAT',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'Sa';
        end;

      if Pos('SUN',UpperCase(x_Freq)) > 0 then
        begin
          if x_Str > '' then
            x_Str := x_Str + '/';
          x_Str := x_Str + 'Su';
        end;

      if Pos('DAILY',UpperCase(x_Freq)) > 0 then
        x_Str := x_Str + 'Mo/Tu/We/Th/Fr/Sa/Su';
    end;

  x_Days := DaysToBit(x_Str);

end;

procedure ConvertTimeKingfisher(x_KingfisherTimings: string; var x_Timings: string);
var
  x_Str, x_hour, x_minute: string;
  x_pos, x_pos2: integer;
begin

  x_Timings := '';
  x_pos := pos(':', x_KingfisherTimings);
  if x_pos > 0 then
    begin
        x_hour := Copy(x_KingfisherTimings, 1, x_pos-1);
        x_minute := Copy(x_KingfisherTimings, x_pos+1, x_pos+3);

        if length(trim(x_hour)) = 1 then
          x_hour := '0' + trim(x_hour);

        if length(trim(x_minute)) = 1 then
          x_minute := '0' + trim(x_minute);

        x_Timings := x_hour + ':' + x_minute;

    end;

end;


procedure ConvertTimeIndigo(x_IndigoTimings: string; var x_Timings: string);
var
  x_Str, x_hour, x_minute: string;
  x_pos, x_pos2: integer;
begin

  x_Timings := '';
  x_pos := pos(':', x_IndigoTimings);
  if x_pos > 0 then
    begin
        x_hour := Copy(x_IndigoTimings, 1, x_pos-1);
        x_minute := Copy(x_IndigoTimings, x_pos+1, x_pos+3);

        if (pos('PM', x_IndigoTimings) > 0) and (x_hour <> '12') then
          x_hour := IntToStr(StrToInt(x_hour) + 12);

        if length(trim(x_hour)) = 1 then
          x_hour := '0' + trim(x_hour);

        if length(trim(x_minute)) = 1 then
          x_minute := '0' + trim(x_minute);

        x_Timings := x_hour + ':' + x_minute;

    end;

end;

procedure ConvertDateIndigo(x_WefIndigo: string; var x_Wef: string);
var
  x_day, x_Mon, x_Year, x_Month: string;
  x_pos: integer;
begin

  x_Wef := '';
  x_pos := pos('from', x_WefIndigo);
  if x_pos > 0 then
    begin

        x_day := '';
        if (Copy(x_WefIndigo, 6, 1) >= '0') and (Copy(x_WefIndigo, 6, 1) <= '9') and
           (Copy(x_WefIndigo, 7, 1) >= '0') and (Copy(x_WefIndigo, 7, 1) <= '9') then
          begin
            x_day := Copy(x_WefIndigo, 6, 2);
            x_Year := Copy(x_WefIndigo, 13, 2);
            x_Mon := Copy(x_WefIndigo, 9, 3);
          end
        else
          begin
            x_day := Copy(x_WefIndigo, 6, 1);
            x_Year := Copy(x_WefIndigo, 12, 2);
            x_Mon := Copy(x_WefIndigo, 8, 3);
          end;

        if x_Mon = 'Jan' then
          x_Month := '01'
        else if x_Mon = 'Feb' then
          x_Month := '02'
        else if x_Mon = 'Mar' then
          x_Month := '03'
        else if x_Mon = 'Apr' then
          x_Month := '04'
        else if x_Mon = 'May' then
          x_Month := '05'
        else if x_Mon = 'Jun' then
          x_Month := '06'
        else if x_Mon = 'Jul' then
          x_Month := '07'
        else if x_Mon = 'Aug' then
          x_Month := '08'
        else if x_Mon = 'Sep' then
          x_Month := '09'
        else if x_Mon = 'Oct' then
          x_Month := '10'
        else if x_Mon = 'Nov' then
          x_Month := '11'
        else if x_Mon = 'Dec' then
          x_Month := '12';

        x_Wef := x_Month + '/' + x_Day + '/' + '20' + x_Year;

    end;

end;



procedure ImportSpiceJet_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq, x_ValidFrom2, x_ValidTo2: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline: string;
  x_DeptTime2, x_ArrTime2: string;
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x1, x2: string;
begin

  x1 := 'string';
  x2 := Copy(x1, 1, 4);


  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'SpiceJet Schedules';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 3';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 3;
  x_eof := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '' then
            x_eof := true;

          if x_row >= 20000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_Type := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));

          if x_Type > '' then
            begin
              x_ToPlace := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
              x_FlightNo := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_DeptTime := trim(VarToStr(Range['C'+IntToStr(x_row), 'C'+IntToStr(x_row)].Text));
              x_ArrTime := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Text));
              x_Aircraft := '';
              x_Stops := '0';
              x_ValidFrom := FormatDateTime('mm/dd/yyyy', Date());
              x_ValidTo := 'null';
              x_Freq := trim(VarToStr(Range['E'+IntToStr(x_row), 'E'+IntToStr(x_row)].Value));
              x_FlightAirline := '';

            end
          else
            begin
              x_FromPlace := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
              x_ToPlace := '';
            end;

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              CitySeparateFromCode (x_FromPlace, x_FromCity, x_FromCode);
              CitySeparateFromCode (x_ToPlace, x_ToCity, x_ToCode);

              x_ValidFrom := '';
              x_ValidTo := '';
              ConvertValiditySpiceJet(x_Freq, x_ValidFrom, x_ValidTo);
              if x_ValidFrom > '' then
                x_wef := QuotedStr(x_ValidFrom)
              else
                x_wef := QuotedStr(FormatDateTime('mm/dd/yyyy',Date()));

              if x_ValidTo > '' then
                x_wet := QuotedStr(x_ValidTo)
              else
                x_wet := 'null';

              ConvertFreqSpiceJet(x_Freq, x_Days);

              x_DeptTime := StrCopyLocal(x_DeptTime, 1, 5);
              x_ArrTime := StrCopyLocal(x_ArrTime, 1, 5);

              if length(x_DeptTime) = 4 then
                x_DeptTime := '0' + x_DeptTime;

              if length(x_ArrTime) = 4 then
                x_ArrTime := '0' + x_ArrTime;

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + StrCopyLocal(x_FlightNo,1,12) + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',' + IntToStr(x_Days) + ', 3)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure ImportSpiceJet2_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq, x_ValidFrom2, x_ValidTo2: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline: string;
  x_DeptTime2, x_ArrTime2: string;
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x1, x2: string;
begin

  x1 := 'string';
  x2 := Copy(x1, 1, 4);

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Sheet1';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 3';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 2;
  x_eof := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value)) = '' then
            x_eof := true;

          if x_row >= 20000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_Type := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Value));

          if x_Type > '' then
            begin
              x_ToPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_FlightNo := trim(VarToStr(Range['E'+IntToStr(x_row), 'E'+IntToStr(x_row)].Value));
              x_DeptTime := trim(VarToStr(Range['H'+IntToStr(x_row), 'H'+IntToStr(x_row)].Text));
              x_ArrTime := trim(VarToStr(Range['I'+IntToStr(x_row), 'I'+IntToStr(x_row)].Text));
              x_Aircraft := '';
              x_Stops := '0';
              x_ValidFrom := VarToStr(Range['K'+IntToStr(x_row), 'K'+IntToStr(x_row)].Text);
              x_ValidTo := VarToStr(Range['L'+IntToStr(x_row), 'L'+IntToStr(x_row)].Text);
              x_Freq := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Value));
              x_FlightAirline := '';

            end
          else
            begin
              x_FromPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_ToPlace := '';
            end;

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              x_wef := QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(x_ValidFrom)));
              x_wet := QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(x_ValidTo)));

              x_FromCity := x_FromPlace;
              x_ToCity := x_ToPlace;

              ConvertFreqSpiceJet2(x_Freq, x_Days);

              x_DeptTime := StrCopyLocal(x_DeptTime, 1, 2) + ':' + StrCopyLocal(x_DeptTime, 3, 2);
              x_ArrTime := StrCopyLocal(x_ArrTime, 1, 2) + ':' + StrCopyLocal(x_ArrTime, 3, 2);

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + StrCopyLocal(x_FlightNo,1,12) + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',' + IntToStr(x_Days) + ', 3)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure ImportIndigo_Txt(x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Via, x_wef2, x_wef3: string;
  x_DeptTime2, x_ArrTime2: string;
  x_QueryString, S, x_Text: string;
  GpSds: TSQLDataSet;
  F_txt: Textfile;
  x_header: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 4';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_FromCode := '';
  x_ToCode := '';
  x_FlightAirline := '';
  x_stops := '0';
  x_Aircraft := '';
  x_ValidFrom := FormatDateTime('mm/dd/yyyy', Date());
  x_ValidTo := 'null';

  x_wef := '''' + x_ValidFrom + '''';

  if x_ValidTo <> 'null' then
    x_wet := '''' + x_ValidTo + ''''
  else
    x_wet := x_ValidTo;

  x_header := false;

  AssignFile(F_txt, x_FileName);
  Reset(F_txt);

  while (not EOF(F_txt)) do
    begin

      Readln(F_txt,S);

      if Pos('<tr height="',S) > 0 then
        begin
          if x_header = false then
            begin
              x_header := true;
              Readln(F_txt,S);
            end;
        end;

      if (Pos('<tr height="',S) > 0) and (x_header = true) then
        begin
          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_FlightNo := x_Text;

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_FromPlace := x_Text;
          x_FromPlace := StringReplace(x_FromPlace, '&nbsp;', '', [rfReplaceAll, rfIgnoreCase]);

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_ToPlace := x_Text;
          x_ToPlace := StringReplace(x_ToPlace, '&nbsp;', '', [rfReplaceAll, rfIgnoreCase]);

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_DeptTime := x_Text;
          ConvertTimeIndigo(x_Text,x_DeptTime);

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_ArrTime := x_Text;
          ConvertTimeIndigo(x_Text,x_ArrTime);

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_Freq := x_Text;

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_Via := x_Text;
          if pos('&nbsp',x_Via) > 0 then
            x_Via := '';

          Readln(F_txt,S);
          GetTextFromTag(S, x_Text);
          x_wef3 := x_Text;
          if pos('&nbsp',x_wef3) > 0 then
            x_wef2 := x_wef
          else
            begin
              ConvertDateIndigo(x_wef3, x_wef2);
              x_wef2 := QuotedStr(x_wef2);
            end;

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin

              x_FromCity := trim(x_FromPlace);
              x_ToCity := trim(x_ToPlace);

              ConvertFreqIndigo(x_Freq, x_Days);

              x_DeptTime := StrCopyLocal(x_DeptTime, 1, 5);
              x_ArrTime := StrCopyLocal(x_ArrTime, 1, 5);

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, FlightVia, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + x_FlightNo + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef2 + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',''' + x_Via + ''',' + IntToStr(x_Days) + ', 4)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;


        end;

    end;

  CloseFile(F_txt);


  GpSds.Free;

end;

procedure IgnoreHtmlLines(var F_txt: Textfile; x_str: string; var x_LastLine: string);
var
  x_pos: integer;
  S: string;
begin

  x_pos := Pos(x_str,S);
  while (x_pos = 0) and (not EOF(F_txt)) do
    begin
      Readln(F_txt,S);
      x_pos := Pos(x_str,S);
    end;

  x_LastLine := S;

//  Readln(F_txt,S);

end;

procedure IgnoreHtmlBlock(var F_txt: Textfile; var x_LastLine: string);
var
  x_done: integer;
begin

  IgnoreHtmlLines(F_txt, '</tr', x_LastLine);

  x_done := 0;

  while (x_done = 0) do
    begin
      IgnoreHtmlLines(F_txt, '<tr', x_LastLine);
      if (pos('<tr', x_LastLine) > 0) and (pos('<!--', x_LastLine) > 0) then
        IgnoreHtmlLines(F_txt, '</tr', x_LastLine)
      else
        x_done := 1;
    end;

end;


procedure ReadHtmlLines(var F_txt: Textfile; x_str: string; var x_Text: String);
var
  x_pos: integer;
  S: string;
begin

  x_Text := '';
  x_pos := 0;
  while (x_pos = 0) and (not EOF(F_txt)) do
    begin
      Readln(F_txt,S);
      x_pos := Pos(x_str,S);
      x_Text := x_Text + S;
    end;

//  Readln(F_txt,S);

end;

function StripHTML(S: string; var x_arr: array of string): string;
var
  TagBegin, TagEnd, TagLength, x_index, x_count: integer;
begin
  TagBegin := Pos( '<', S);      // search position of first <

  while (TagBegin > 0) do begin  // while there is a < in S
    TagEnd := Pos('>', S);              // find the matching >
    TagLength := TagEnd - TagBegin + 1;
    Delete(S, TagBegin, TagLength);               // delete the tag
    Insert ('#', S, TagBegin);
    TagBegin:= Pos( '<', S);            // search for next <
  end;

  TagBegin := Pos('#', S);
  if TagBegin = 1 then
    Delete(S, TagBegin, 1);
  TagBegin := Pos('#', S);

  x_index := 1;
  x_count := 0;

  while (TagBegin > 0) do
    begin
      TagBegin := Pos('#', Copy(S, x_index, length(S)));
      if TagBegin > 0 then
        begin
          x_arr[x_count] := Copy(S, x_index, TagBegin-1);
          x_count := x_count + 1;
          x_index := TagBegin+1;
        end
      else
        begin
          x_arr[x_count] := Copy(S, x_index, length(S));
          x_count := x_count + 1;
          x_index := length(S)+1;
        end;
    end;

  Result := S;                   // give the result
end;


procedure SplitHTML(S: string; var x_arr: array of string);
var
  TagBegin, TagEnd, TagLength, x_index, x_count, x_len, x_pos, i: integer;
begin

  x_count := 0;
  x_index := 1;
  x_len := length(S);
  x_index := 1;

  if Copy(S, 1, 1) <> '<' then
    begin
      x_pos := Pos('<', S);
      x_arr[x_count] := Copy(S, 1, x_pos-1);
      Delete(S, 1, x_pos-1);
      x_count := x_count+1;
    end;

  TagBegin := Pos( '<', S);

  while (TagBegin > 0) do
    begin

      TagEnd := Pos('>', S);
      TagLength := TagEnd - TagBegin + 1;
      Delete(S, TagBegin, TagLength);

      if Copy(S, 1, 1) <> '<' then
        begin
          x_pos := Pos('<', S);
          x_arr[x_count] := Copy(S, 1, x_pos-1);
          x_count := x_count+1;
          Delete(S, 1, x_pos-1);
        end;

      TagBegin := Pos( '<', S);

    end;

end;


procedure ImportGoAir_Txt(x_FileName: string);
var
  x_row, x_Days, x_pos: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Ignore: string;
  x_DeptTime2, x_ArrTime2: string;
  x_QueryString, S, x_Text, x_FromCitySeparatorTag, x_LastLine, x_HtmlLine: string;
  GpSds: TSQLDataSet;
  F_txt: Textfile;
  x_header: boolean;
  x_arr: array[0..10] of string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 5';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_FromCode := '';
  x_ToCode := '';
  x_FlightAirline := '';
  x_stops := '0';
  x_Aircraft := '';
  x_ValidFrom := FormatDateTime('mm/dd/yyyy', Date());
  x_ValidTo := 'null';

  x_wef := '''' + x_ValidFrom + '''';

  if x_ValidTo <> 'null' then
    x_wet := '''' + x_ValidTo + ''''
  else
    x_wet := x_ValidTo;

  x_header := false;

  x_FromCitySeparatorTag := '<tr bgcolor="#5986c5" height="15"';

  AssignFile(F_txt, x_FileName);
  Reset(F_txt);

  // Read upto Origin / Destination
  IgnoreHtmlLines(F_txt, 'Origin/Destination', x_LastLine);

  // Read upto end of row
  IgnoreHtmlLines(F_txt, '</tr>', x_LastLine);

  while (not EOF(F_txt)) do
    begin

      x_FromPlace := '';

      // Read upto end of row
      IgnoreHtmlLines(F_txt, '<tr', x_LastLine);
      ReadHtmlLines(F_txt, '</tr', x_Text);
      x_HtmlLine := x_LastLine + x_Text;

      if (pos ('<!--', x_HtmlLine) = 0) and (pos (x_FromCitySeparatorTag, x_HtmlLine) > 0) then
        begin
          GetTextFromTag_GoAir(x_HtmlLine, x_FromPlace, '<strong>', '</strong>');
        end
      else if (pos ('<!--', x_HtmlLine) = 0) and (pos ('</strong>', x_HtmlLine) > 0) then
        begin
          SplitHTML(x_HtmlLine, x_arr);
          x_ToPlace := x_arr[0];
          x_FlightNo := x_arr[1];
          x_DeptTime := x_arr[2];
          x_ArrTime := x_arr[3];
          x_Freq := x_arr[6];

          CitySeparateFromCode_GoAir(x_FromPlace, x_FromCity, x_FromCode);
          CitySeparateFromCode_GoAir(x_ToPlace, x_ToCity, x_ToCode);

          if (x_FromPlace > '') and (x_ToPlace > '') and (x_DeptTime > '') and (x_ArrTime > '') and (x_Freq > '') then
            begin

              ConvertFreqGoAir(x_Freq, x_Days);
              x_DeptTime := StrCopyLocal(x_DeptTime, 1, 5);
              x_ArrTime := StrCopyLocal(x_ArrTime, 1, 5);

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + x_FlightNo + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',' + IntToStr(x_Days) + ', 5)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              try
                GpSds.ExecSQL;
              except
              end;

            end;

        end;

    end;

  CloseFile(F_txt);

  GpSds.Free;

end;

procedure ImportGoAir_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Via: string;
  x_DeptTime2, x_ArrTime2: string;
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x1, x2: string;
begin

  x1 := 'string';
  x2 := Copy(x1, 1, 4);


  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Sheet1';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 5';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 2;
  x_eof := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '' then
            x_eof := true;

          if x_row >= 20000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_Type := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));

          if x_Type > '' then
            begin
              x_ToPlace := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
              x_FlightNo := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_DeptTime := trim(VarToStr(Range['C'+IntToStr(x_row), 'C'+IntToStr(x_row)].Text));
              x_ArrTime := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Text));
              x_Aircraft := '';
              x_Stops := '0';

              if trim(VarToStr(Range['I'+IntToStr(x_row), 'I'+IntToStr(x_row)].Text)) > '' then
                ConvertDateGoAir(Range['I'+IntToStr(x_row), 'I'+IntToStr(x_row)].Text, x_ValidFrom)
              else
                x_ValidFrom := FormatDateTime('mm/dd/yyyy', Date());

              if trim(VarToStr(Range['J'+IntToStr(x_row), 'J'+IntToStr(x_row)].Text)) > '' then
                ConvertDateGoAir(Range['J'+IntToStr(x_row), 'J'+IntToStr(x_row)].Text, x_ValidTo)
              else
                x_ValidTo := 'null';

              x_Via := trim(VarToStr(Range['F'+IntToStr(x_row), 'F'+IntToStr(x_row)].Value));
              x_Freq := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Value));
              x_FlightAirline := '';

            end
          else
            begin
              x_FromPlace := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
              x_ToPlace := '';
            end;

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              CitySeparateFromCode (x_FromPlace, x_FromCity, x_FromCode);
              CitySeparateFromCode (x_ToPlace, x_ToCity, x_ToCode);
              x_wef := '''' + x_ValidFrom + '''';
              if x_ValidTo <> 'null' then
                x_wet := '''' + x_ValidTo + ''''
              else
                x_wet := x_ValidTo;
              ConvertFreqGoAir(x_Freq, x_Days);
              x_DeptTime := StrCopyLocal(x_DeptTime, 1, 5);
              x_ArrTime := StrCopyLocal(x_ArrTime, 1, 5);

              if pos('Non Stop', x_Via) > 0 then
                x_Via := '';

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, FlightVia, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + StrCopyLocal(x_FlightNo,1,12) + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',''' + x_via + ''',' + IntToStr(x_Days) + ', 5)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;


procedure ImportIndianAirlines_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Via: string;
  x_QueryString, x_chr: string;
  GpSds: TSQLDataSet;
begin

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Schedule';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 6';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 8;
  x_eof := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '' then
            x_eof := true;

          if x_row >= 30000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_FromPlace := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
          x_ToPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
          x_FlightNo := trim(VarToStr(Range['C'+IntToStr(x_row), 'C'+IntToStr(x_row)].Value));
          x_Aircraft := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Value));
          x_DeptTime := trim(VarToStr(Range['F'+IntToStr(x_row), 'F'+IntToStr(x_row)].Text));
          x_ArrTime := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Text));
          x_Stops := '0';
          x_ValidFrom := trim(VarToStr(Range['H'+IntToStr(x_row), 'H'+IntToStr(x_row)].Text));
          x_ValidTo := trim(VarToStr(Range['I'+IntToStr(x_row), 'I'+IntToStr(x_row)].Text));
          x_Freq := trim(VarToStr(Range['E'+IntToStr(x_row), 'E'+IntToStr(x_row)].Text));
          x_FlightAirline := '';

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              x_FromCity := x_FromPlace;
              x_FromCode := '';
              x_ToCity := x_ToPlace;
              x_ToCode := '';

              ConvertDateIndianAirlines(x_ValidFrom, x_wef);
              x_wet := 'null';
              if (System.Copy(x_ValidTo,1,1) >= '0') and (System.Copy(x_ValidTo,1,1) <= '9') then
                begin
                  ConvertDateIndianAirlines(x_ValidTo, x_wet);
                  x_wet := QuotedStr(x_wet);
                end;

              x_chr := ':';
              Insert(x_chr, x_DeptTime, 3);
              Insert(x_chr, x_ArrTime, 3);

              ConvertFreqIndianAirlines(x_Freq, x_Days);

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, FlightVia, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + x_FlightNo + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',''' + x_wef + ''',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',''' + x_Via + ''',' + IntToStr(x_Days) + ', 6)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure ImportIndigoAirlines_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days, x_BlankRowCount: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline, x_Via: string;
  x_QueryString, x_chr, x_DepartureTime, x_ArrivalTime: string;
  GpSds: TSQLDataSet;
begin

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Schedule';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 4';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 4;
  x_eof := false;
  x_BlankRowCount := 0;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if (trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '') and
             (trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value)) = '') then
            x_BlankRowCount := x_BlankRowCount + 1
          else
            x_BlankRowCount := 0;

          if x_BlankRowCount > 3 then
            x_eof := true;

          if x_row >= 30000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_FlightNo := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
          x_FromPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
          x_ToPlace := trim(VarToStr(Range['C'+IntToStr(x_row), 'C'+IntToStr(x_row)].Value));
          x_DepartureTime := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Text));
          x_ArrivalTime := trim(VarToStr(Range['E'+IntToStr(x_row), 'E'+IntToStr(x_row)].Text));
          x_Freq := trim(VarToStr(Range['F'+IntToStr(x_row), 'F'+IntToStr(x_row)].Text));
          x_Via := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Value));
          x_ValidFrom := trim(VarToStr(Range['H'+IntToStr(x_row), 'H'+IntToStr(x_row)].Text));

          x_Aircraft := '';
          x_Stops := '0';
          x_FlightAirline := '';

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              x_FromCity := x_FromPlace;
              x_FromCode := '';
              x_ToCity := x_ToPlace;
              x_ToCode := '';

              if x_ValidFrom = '' then
                x_wef := 'null'
              else
                begin
                  ConvertDateIndigo(x_ValidFrom, x_wef);
                  x_wef := QuotedStr(x_wef);
                end;

              x_wet := 'null';

              ConvertFreqIndigo(x_Freq, x_Days);

              ConvertTimeIndigo(x_DepartureTime, x_DeptTime);
              ConvertTimeIndigo(x_ArrivalTime, x_ArrTime);

              x_DeptTime := System.Copy(x_DeptTime,1,5);
              x_ArrTime := System.Copy(x_ArrTime,1,5);

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, FlightVia, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + x_FlightNo + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',''' + x_Via + ''',' + IntToStr(x_Days) + ', 4)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;


procedure ConvertDateIndianAirlines(x_Wef_Fmt: string; var x_Wef: string);
var
  x_Day, x_Year, x_Mon, x_Month: string;
begin
  x_Day := Copy(x_Wef_Fmt, 1, 2);
  x_Year := Copy(x_Wef_Fmt, 8, 4);
  x_Mon := Copy(x_Wef_Fmt, 4, 3);

  if x_Mon = 'Jan' then
    x_Month := '01'
  else if x_Mon = 'Feb' then
    x_Month := '02'
  else if x_Mon = 'Mar' then
    x_Month := '03'
  else if x_Mon = 'Apr' then
    x_Month := '04'
  else if x_Mon = 'May' then
    x_Month := '05'
  else if x_Mon = 'Jun' then
    x_Month := '06'
  else if x_Mon = 'Jul' then
    x_Month := '07'
  else if x_Mon = 'Aug' then
    x_Month := '08'
  else if x_Mon = 'Sep' then
    x_Month := '09'
  else if x_Mon = 'Oct' then
    x_Month := '10'
  else if x_Mon = 'Nov' then
    x_Month := '11'
  else if x_Mon = 'Dec' then
    x_Month := '12';

  x_Wef := x_Month + '/' + x_Day + '/' + x_Year;

end;

procedure ConvertDateGoAir(x_Wef_Fmt: string; var x_Wef: string);
var
  x_Day, x_Year, x_Mon, x_Month: string;
  x_List: TStrings;
begin

  x_List := TStringList.Create;
  try
    ExtractStrings(['-'], [], PChar(x_Wef_Fmt), x_List);
    x_Day := x_List[0];
    x_Mon := x_List[1];
    x_Year := x_List[2];

    if x_Mon = 'Jan' then
      x_Month := '01'
    else if x_Mon = 'Feb' then
      x_Month := '02'
    else if x_Mon = 'Mar' then
      x_Month := '03'
    else if x_Mon = 'Apr' then
      x_Month := '04'
    else if x_Mon = 'May' then
      x_Month := '05'
    else if x_Mon = 'Jun' then
      x_Month := '06'
    else if x_Mon = 'Jul' then
      x_Month := '07'
    else if x_Mon = 'Aug' then
      x_Month := '08'
    else if x_Mon = 'Sep' then
      x_Month := '09'
    else if x_Mon = 'Oct' then
      x_Month := '10'
    else if x_Mon = 'Nov' then
      x_Month := '11'
    else if x_Mon = 'Dec' then
      x_Month := '12';
    x_Wef := x_Month + '/' + x_Day + '/' + x_Year;
  finally
    x_List.Free;
  end;

end;

procedure ConvertFreqIndianAirlines(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';
  if Pos('1',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('2',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('3',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('4',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('5',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('6',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('7',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  if Pos('DAILY',UpperCase(x_Freq)) > 0 then
    x_Str := x_Str + 'Mo/Tu/We/Th/Fr/Sa/Su';

  x_Days := DaysToBit(x_Str);

end;


procedure ImportAirIndia_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days: integer;
  x_eof: boolean;
  x_ToPlace, x_FromPlace, x_Type, x_FlightNo, x_DeptTime, x_ArrTime, x_Aircraft, x_Stops, x_ValidFrom, x_ValidTo, x_Freq, x_ValidFrom2, x_ValidTo2: string;
  x_FromCity, x_FromCode, x_ToCity, x_ToCode, x_wef, x_wet, x_FlightAirline: string;
  x_DeptTime2, x_ArrTime2: string;
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x1, x2: string;
begin

  x1 := 'string';
  x2 := Copy(x1, 1, 4);


  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Sheet1';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString :=
    'DELETE FROM zz_flights WHERE FlightCompanies_id = 6';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;


  x_row := 2;
  x_eof := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          if trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value)) = '' then
            x_eof := true;

          if x_row >= 20000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          x_Type := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));

          if x_Type = '' then
            begin
              x_ToPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_FlightNo := trim(VarToStr(Range['D'+IntToStr(x_row), 'D'+IntToStr(x_row)].Value));
              x_DeptTime := trim(VarToStr(Range['G'+IntToStr(x_row), 'G'+IntToStr(x_row)].Text));
              x_ArrTime := trim(VarToStr(Range['H'+IntToStr(x_row), 'H'+IntToStr(x_row)].Text));
              x_Aircraft := '';
              x_Stops := '0';
              x_ValidFrom := FormatDateTime('mm/dd/yyyy', Date());
              x_ValidTo := 'null';
              x_Freq := trim(VarToStr(Range['F'+IntToStr(x_row), 'F'+IntToStr(x_row)].Value));
              x_FlightAirline := '';

            end
          else
            begin
              x_FromPlace := trim(VarToStr(Range['B'+IntToStr(x_row), 'B'+IntToStr(x_row)].Value));
              x_ToPlace := '';
            end;

          if (x_FromPlace > '') and (x_ToPlace > '') then
            begin
              CitySeparateFromCode (x_FromPlace, x_FromCity, x_FromCode);
              CitySeparateFromCode (x_ToPlace, x_ToCity, x_ToCode);

              x_ValidFrom := '';
              x_ValidTo := '';

              if x_ValidFrom > '' then
                x_wef := QuotedStr(x_ValidFrom)
              else
                x_wef := QuotedStr(FormatDateTime('mm/dd/yyyy',Date()));

              if x_ValidTo > '' then
                x_wet := QuotedStr(x_ValidTo)
              else
                x_wet := 'null';

              ConvertFreqAirIndia(x_Freq, x_Days);

              Insert(':', x_DeptTime, 3);
              Insert(':', x_ArrTime, 3);

              if length(x_DeptTime) = 4 then
                x_DeptTime := '0' + x_DeptTime;

              if length(x_ArrTime) = 4 then
                x_ArrTime := '0' + x_ArrTime;

              x_QueryString :=
                'INSERT INTO zz_flights (flightcode, flightsource, flightsourcecode, flightstarttime, flightdestination, ' +
                'flightdestinationcode, flightendtime, flightairline, wef, wet, flightstops, flightcraft, flightrunson, FlightCompanies_id) ' +
                'VALUES (''' + StrCopyLocal(x_FlightNo,1,12) + ''',''' + x_FromCity + ''',''' + x_FromCode + ''',''' + x_DeptTime + ''',''' + x_ToCity + ''',''' +
                x_ToCode + ''',''' + x_ArrTime + ''',''' + x_FlightAirline + ''',' + x_wef + ',' + x_wet + ',''' + x_stops + ''',''' +
                x_Aircraft + ''',' + IntToStr(x_Days) + ', 6)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;

            end;

          x_row := x_row + 1;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure ConvertFreqAirIndia(x_Freq: string; var x_Days: integer);
var
  x_Str: string;
begin

  x_Str := '';
  if Pos('1',UpperCase(x_Freq)) > 0 then
    x_Str := 'Mo';

  if Pos('2',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Tu';
    end;

  if Pos('3',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'We';
    end;

  if Pos('4',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Th';
    end;

  if Pos('5',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Fr';
    end;

  if Pos('6',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Sa';
    end;

  if Pos('7',UpperCase(x_Freq)) > 0 then
    begin
      if x_Str > '' then
        x_Str := x_Str + '/';
      x_Str := x_Str + 'Su';
    end;

  if Pos('DAILY',UpperCase(x_Freq)) > 0 then
    x_Str := x_Str + 'Mo/Tu/We/Th/Fr/Sa/Su';

  x_Days := DaysToBit(x_Str);

end;

end.
