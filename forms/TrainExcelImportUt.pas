unit TrainExcelImportUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Variants, StrUtils;

procedure ImportTrains_Excel(scExcelExport: TScExcelExport; x_FileName: string);
procedure MoveToNextTable(scExcelExport: TScExcelExport; var x_row: integer; var x_success: boolean);
function ConvertTimingsTrains(x_Timing: string): string;
function ConvertKmsTrains(x_KmStr: string): integer;
procedure ConvertFreqTrains(x_Freq: string; var x_Days: integer);
function ConvertTrainNo(x_TrainNo: string): string;

implementation

uses GeneralUt, BackOfficeDM;

procedure ImportTrains_Excel(scExcelExport: TScExcelExport; x_FileName: string);
var
  x_row, x_Days, x_TrainNo_row, x_pos, i, x_offset, x_colNum: integer;
  x_eof, x_success, x_IsDataCol: boolean;
  x_Freq: string;
  x_TrainNo, x_col, x_Class, x_timing, x_kms, x_TrainStation, x_str, x_arr, x_dept, x_KmCol, x_TrainName: string;
  x_QueryString, x_XlsName: string;
  GpSds: TSQLDataSet;
begin

  scExcelExport.CloseAllExcelApps;
  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.Filename := x_FileName;
  scExcelExport.WorksheetName:= 'Sheet1';
  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_pos := LastDelimiter('\',x_FileName);
  x_XlsName := Copy(x_FileName, x_pos+1, 100);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_row := 1;
  x_eof := false;
  x_success := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          MoveToNextTable(scExcelExport, x_row, x_success);

          if x_success = false then
            begin
              x_eof := true;
              continue;
            end;

          x_row := x_row + 1;
          x_col := 'D';

          x_TrainNo_row := x_row;

          x_col := 'A';
          x_offset := -1;
          x_colNum := 0;
          x_KmCol := 'A';
          while (x_colNum < 10) do
            begin
              if UpperCase(System.Copy((VarToStr(Range[x_KmCol+IntToStr(x_TrainNo_row+4), x_KmCol+IntToStr(x_TrainNo_row+4)].Value)),1,2)) = 'KM' then
                begin
                  x_offset := x_offset + 1;
                  x_KmCol := SkipNextCol(x_KmCol, 1);
                end
              else
                x_colNum := 11;
            end;

          x_col := 'D';
          if x_offset > 0 then
            x_col := SkipNextCol(x_col, x_offset);


          x_TrainNo := trim(VarToStr(Range[x_col+IntToStr(x_TrainNo_row), x_col+IntToStr(x_TrainNo_row)].Value));
          x_TrainNo := ConvertTrainNo(x_TrainNo);

          x_TrainName := trim(VarToStr(Range[x_col+IntToStr(x_TrainNo_row-1), x_col+IntToStr(x_TrainNo_row-1)].Value));
          x_TrainName := ConvertTrainNo(x_TrainName);

          x_IsDataCol := true;
//          if trim(x_TrainNo) = '' then
//            x_IsDataCol := false;
          if x_col = 'AA' then
            x_IsDataCol := false;

          while x_IsDataCol do
            begin
              x_row := x_TrainNo_row;

              x_row := x_row + 1;
              x_Class := trim(VarToStr(Range[x_col+IntToStr(x_row), x_col+IntToStr(x_row)].Value));

              x_row := x_row + 2;
              x_Freq := trim(VarToStr(Range[x_col+IntToStr(x_row), x_col+IntToStr(x_row)].Value));

              x_row := x_row + 1;
              x_timing := trim(VarToStr(Range[x_col+IntToStr(x_row), x_col+IntToStr(x_row)].Value));

              x_pos := AnsiIndexStr(x_timing, ['M', 'Tu', 'W', 'Th', 'F', 'Sa', 'Su', 'Daily']);
              if x_timing = '' then
                x_pos := -1;

              while (x_pos < 0) and (x_TrainNo > '') do
                begin

                  x_kms := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
                  x_KmCol := 'A';
                  i := 0;
                  if trim(x_kms) = '' then
                    begin
                      while (i < x_offset) and (trim(x_kms) = '') do
                        begin
                          x_KmCol := SkipNextCol(x_KmCol, 1);
                          x_kms := trim(VarToStr(Range[x_KmCol+IntToStr(x_row), x_KmCol+IntToStr(x_row)].Value));
                          i := i+1;
                        end;
                    end;

                  x_TrainStation := trim(VarToStr(Range[SkipNextCol('B', x_offset)+IntToStr(x_row), SkipNextCol('B', x_offset)+IntToStr(x_row)].Value));
                  x_timing := trim(VarToStr(Range[x_col+IntToStr(x_row), x_col+IntToStr(x_row)].Value));

                  x_timing := ConvertTimingsTrains(x_timing);

                  if (x_timing > '') and (x_TrainStation = '') then
                    x_TrainStation := trim(VarToStr(Range[SkipNextCol('B', x_offset)+IntToStr(x_row-1), SkipNextCol('B', x_offset)+IntToStr(x_row-1)].Value));

                  if (x_timing > '') and (x_kms = '') then
                    begin
                      x_kms := trim(VarToStr(Range['A'+IntToStr(x_row-1), 'A'+IntToStr(x_row-1)].Value));
                      x_KmCol := 'A';
                      i := 0;
                      if trim(x_kms) = '' then
                        begin
                          while (i < x_offset) and (trim(x_kms) = '') do
                            begin
                              x_KmCol := SkipNextCol(x_KmCol, 1);
                              x_kms := trim(VarToStr(Range[x_KmCol+IntToStr(x_row-1), x_KmCol+IntToStr(x_row-1)].Value));
                              i := i+1;
                            end;
                        end;
                    end;

                  if (x_TrainNo > '') and (x_timing > '') then
                    begin

                      if length(x_timing) > 5 then
                        begin
                          x_arr := QuotedStr(System.Copy(x_timing,1,5));
                          x_dept := QuotedStr(System.Copy(x_timing,7,5));
                        end
                      else
                        begin
                          x_arr := QuotedStr(System.Copy(x_timing,1,5));
                          x_dept := 'null';
                        end;

                      ConvertFreqTrains(x_Freq, x_Days);

                      x_QueryString :=
                        'INSERT INTO zz_schedule (shortname, longname, stopname, stopcode, arrival, departure, ' +
                        'stopnum, daynum, remark, routenum, used, distance, days, XlsName, TrainClass, Freq) ' +
                        'VALUES (''' + x_TrainNo + ''',' + QuotedStr(x_TrainName) + ',''' + x_TrainStation + ''',''' + '' + ''',' + x_arr + ',' + x_dept + ',' +
                        '0,0,' + ''' '',' + '0,0,' + IntToStr(ConvertKmsTrains(x_kms)) + ',' + IntToStr(x_Days) + ',' +
                        QuotedStr(x_XlsName) + ',' + QuotedStr(x_class) + ',' + QuotedStr(x_Freq) + ')';

                      GpSds.Close;
                      GpSds.CommandText := x_QueryString;

                      try
                        GpSds.ExecSQL;
                      except
                        x_QueryString :=
                          'INSERT INTO zz_schedule_errors (XlsName, row) ' +
                          'VALUES (' + QuotedStr(x_XlsName) + ',' + IntToStr(x_row) + ')';

                        GpSds.Close;
                        GpSds.CommandText := x_QueryString;
                        GpSds.ExecSQL;

                        x_pos := 0;
                      end;

                    end;

                  x_row := x_row + 1;
                  x_kms := trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value));
                  x_KmCol := 'A';
                  i := 0;
                  if trim(x_kms) = '' then
                    begin
                      while (i < x_offset) and (trim(x_kms) = '') do
                        begin
                          x_KmCol := SkipNextCol(x_KmCol, 1);
                          x_kms := trim(VarToStr(Range[x_KmCol+IntToStr(x_row), x_KmCol+IntToStr(x_row)].Value));
                          i := i+1;
                        end;
                    end;

                  x_str := System.Copy(x_kms,1,4);
                  if x_str = 'Days' then
                    x_pos := 0;

                end;

              x_col := SkipNextCol(x_col, 1);

              x_TrainNo := trim(VarToStr(Range[x_col+IntToStr(x_TrainNo_row), x_col+IntToStr(x_TrainNo_row)].Value));
              x_TrainNo := ConvertTrainNo(x_TrainNo);

              x_TrainName := trim(VarToStr(Range[x_col+IntToStr(x_TrainNo_row-1), x_col+IntToStr(x_TrainNo_row-1)].Value));
              x_TrainName := ConvertTrainNo(x_TrainName);

              x_IsDataCol := true;
//              if trim(x_TrainNo) = '' then
//                x_IsDataCol := false;
              if x_col = 'AA' then
                x_IsDataCol := false;

            end;

        end;

    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

function ConvertTrainNo(x_TrainNo: string): string;
var
  x_Str, x_chr: string;
  x_index, x_len: integer;
begin

  x_Str := '';
  x_index := 1;
  x_len := length(x_TrainNo);

  while (x_index <= x_len) do
    begin
      x_chr := Copy(x_TrainNo, x_index, 1);

      if (x_chr >= '0') and (x_chr <= '9') then
        x_str := x_str + x_chr
      else if (x_chr >= 'A') and (x_chr <= 'Z') then
        x_str := x_str + x_chr
      else if (x_chr >= 'a') and (x_chr <= 'z') then
        x_str := x_str + x_chr
      else if (x_chr = '/') then
        x_str := x_str + x_chr;

      x_index := x_index + 1;
    end;

  x_str := trim(x_str);

  Result := x_str;

end;


function ConvertKmsTrains(x_KmStr: string): integer;
var
  x_Str, x_chr: string;
  x_index, x_len, x_kms: integer;
begin

  x_Str := '';
  x_index := 1;
  x_len := length(x_KmStr);

  while (x_index <= x_len) do
    begin
      x_chr := Copy(x_KmStr, x_index, 1);

      if (x_chr >= '0') and (x_chr <= '9') then
        x_str := x_str + x_chr;

      if x_chr = '/' then
        x_index := x_len;

      x_index := x_index + 1;
    end;

  if trim(x_str) = '' then
    x_kms := 0
  else
    x_kms := StrToInt(x_str);

  Result := x_kms;

end;


function ConvertTimingsTrains(x_Timing: string): string;
var
  x_Str: string;
  x_index, x_len, x_NumberFound: integer;
begin

  x_Str := '';
  x_index := 1;
  x_len := length(x_Timing);

  while (x_index <= x_len) do
    begin
      if (Copy(x_Timing, x_index, 1) >= '0') and (Copy(x_Timing, x_index, 1) <= '9') then
        x_Str := x_Str + Copy(x_Timing, x_index, 1)
      else if Copy(x_Timing, x_index, 1) = ':' then
        x_Str := x_Str + Copy(x_Timing, x_index, 1)
      else if Copy(x_Timing, x_index, 1) = '.' then
        x_Str := x_Str + ':'
      else if Copy(x_Timing, x_index, 1) = ' ' then
        x_Str := x_Str + ' ';

      x_index := x_index + 1;
    end;

  x_str := trim(x_str);

  if x_str = ':::' then
    x_str := ''
  else if x_str = '::' then
    x_str := ''
  else if x_str = ':' then
    x_str := '';

  if pos(':',x_str) <> 3 then
    x_str := '0' + x_str;
  if (length(x_str) > 5) and (LastDelimiter(':',x_str) <> 9) then
    System.Insert('0', x_str, 7);

  x_len := length(x_str);
  x_index := 1;

  x_NumberFound := 0;
  while (x_index <= x_len) do
    begin
      if (Copy(x_Timing, x_index, 1) >= '0') and (Copy(x_Timing, x_index, 1) <= '9') then
        x_NumberFound := 1;

      x_index := x_index + 1;
    end;

  if x_NumberFound = 0 then
    x_str := '';

  Result := x_str;

end;


procedure MoveToNextTable(scExcelExport: TScExcelExport; var x_row: integer; var x_success: boolean);
var
  x_BlankCount: integer;
  x_eof: boolean;
begin

  x_BlankCount := 0;
  x_eof := false;
  x_success := false;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not x_eof do
        begin

          // bump BlankCount if blank row
          if trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = '' then
            x_BlankCount := x_BlankCount + 1
          else
            x_BlankCount := 0;

          // 10 successive blank rows
          if x_BlankCount >= 10 then
            x_eof := true;

          if x_row >= 20000 then
            x_eof := true;

          if x_eof then
            begin
              x_row := x_row + 1;
              continue;
            end;

          if trim(VarToStr(Range['A'+IntToStr(x_row), 'A'+IntToStr(x_row)].Value)) = 'TRAIN NAME' then
            begin
              x_success := true;
              x_eof := true;
              continue;
            end;

          x_row := x_row + 1;

        end;

    end;

end;

procedure ConvertFreqTrains(x_Freq: string; var x_Days: integer);
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

      if Pos('M',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Mo', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('TU',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Tu', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('W',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'We', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('TH',UpperCase(x_Freq)) > 0 then
        x_Str := StringReplace(x_Str, 'Th', '', [rfReplaceAll, rfIgnoreCase]);
      x_Str := StringReplace(x_Str, '//', '/', [rfReplaceAll, rfIgnoreCase]);

      if Pos('F',UpperCase(x_Freq)) > 0 then
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



end.
