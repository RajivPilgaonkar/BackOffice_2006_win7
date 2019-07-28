unit Quotations_ExcelReportsUt;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes;

procedure Quotations_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_Quotations_id, x_option: integer);
procedure Quo_Title(scExcelExport: TScExcelExport; x_Quotations_id: integer; GpSds: TSQLDataSet; var x_row: integer);
procedure Quo_Bookings(scExcelExport: TScExcelExport; x_Quotations_id: integer; var x_row: integer);
procedure Quo_Arrival(scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
procedure Quo_Details(scExcelExport: TScExcelExport; x_Quotations_id: integer; var x_row: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;

procedure Quotations_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_Quotations_id, x_option: integer);
var
  GpSds : TSQLDataSet;
  x_QueryString: string;
  x_row: integer;
begin

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_QueryString := 'SELECT q.QuotationRef, DateOfArrival, FlightNo, PlaceFrom, ETA, ' +
       'DateOfDeparture, ETA, FlightNoDept, PlaceTo, ETD, Email, '+
       'NumSingles, NumDoubles, NumTriples ' + 
       'FROM Quotations q ' +
       'WHERE q.Quotations_id = ' + IntToStr(x_Quotations_id) + ' ';

  x_row := 1;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  Quo_Title(scExcelExport, x_Quotations_id, GpSds, x_row);
  Quo_Bookings(scExcelExport, x_Quotations_id, x_row);
  Quo_Arrival(scExcelExport, GpSds, x_row);
  Quo_Details(scExcelExport, x_Quotations_id, x_row);    

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;


procedure Quo_Title(scExcelExport: TScExcelExport; x_Quotations_id: integer; GpSds: TSQLDataSet; var x_row: integer);
begin

  with scExcelExport.ExcelWorkSheet do
    begin
      if GpSds['QuotationRef'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Concerns booking number ' + GpSds['QuotationRef'];

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].ColumnWidth := 35;
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].ColumnWidth := 14;
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].ColumnWidth := 12;
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].ColumnWidth := 14;
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].ColumnWidth := 41;
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].ColumnWidth := 14;

      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row+200)].Font.Size := '10';
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row+200)].Font.Name := 'Book Antiqua';
      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row+200)].VerticalAlignment := xlTop;      

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
    end;

  x_row := x_row + 2;

end;

procedure Quo_Bookings(scExcelExport: TScExcelExport; x_Quotations_id: integer; var x_row: integer);
var
  GpSds : TSQLDataSet;
  x_QueryString, x_salutation: string;
begin

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Booking Names';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Nationality';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Date of Birth';
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Passport No.';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Valid Upto';

      Range['A'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';

    end;

  x_row := x_row + 1;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT q.Male, q.Name, co.Country, q.DateOfBirth, q.PassportNo, q.ValidTo ' +
                   'FROM QuoBookingsClients q ' +
                   'LEFT JOIN Countries co ON q.Countries_id = co.Countries_id ' +
                   'WHERE Quotations_id = ' + IntToStr(x_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  with scExcelExport.ExcelWorkSheet do
    begin

      while (not GpSds.EOF) do
        begin

          x_salutation := '';
          if GpSds['Male'] <> null then
            begin
              if GpSds['Male'] = true then
                x_salutation := 'Mr. '
              else
                x_salutation := 'Ms. ';
            end;

          if GpSds['Name'] <> null then
            Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := x_salutation + GpSds['Name'];

          if GpSds['Country'] <> null then
            Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['Country'];

          if GpSds['DateOfBirth'] <> null then
            Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['DateOfBirth']);

          if GpSds['PassportNo'] <> null then
            Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := '''' + GpSds['PassportNo'];

          if GpSds['ValidTo'] <> null then
            Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyyy',GpSds['ValidTo']);

          x_row := x_row + 1;

          GpSds.Next;

        end;

    end;

  x_row := x_row + 2;

  GpSds.Free;

end;

procedure Quo_Arrival(scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
begin

  with scExcelExport.ExcelWorkSheet do
    begin

      if GpSds['DateOfArrival'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Arrival: ' + FormatDateTime('dd/mm/yyyy',GpSds['DateOfArrival']);

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 1;

      if GpSds['PlaceFrom'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'From: ' + GpSds['PlaceFrom'];

      if GpSds['FlightNo'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Flight No: ' + GpSds['FlightNo'];

      if GpSds['ETA'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'ETA: ' + FormatDateTime('HH:mm',GpSds['ETA']);

      x_row := x_row + 2;

      if GpSds['DateOfDeparture'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Departure: ' + FormatDateTime('dd/mm/yyyy',GpSds['DateOfDeparture']);

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      x_row := x_row + 1;

      if GpSds['PlaceTo'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'To: ' + GpSds['PlaceTo'];

      if GpSds['FlightNoDept'] <> null then
        Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Flight No: ' + GpSds['FlightNoDept'];

      if GpSds['ETD'] <> null then
        Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'ETD: ' + FormatDateTime('HH:mm',GpSds['ETD']);

      x_row := x_row + 2;

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Phone: ';

      x_row := x_row + 1;

      if GpSds['Email'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Email: ' + GpSds['Email'];

      x_row := x_row + 2;

      if (GpSds['NumSingles'] <> null) and (GpSds['NumSingles'] > 0) then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Singles: ' + IntToStr(GpSds['NumSingles']);
          x_row := x_row + 1;
        end;

      if (GpSds['NumDoubles'] <> null) and (GpSds['NumDoubles'] > 0) then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Doubles: ' + IntToStr(GpSds['NumDoubles']);
          x_row := x_row + 1;
        end;

      if (GpSds['NumTriples'] <> null) and (GpSds['NumTriples'] > 0) then
        begin
          Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Triples: ' + IntToStr(GpSds['NumTriples']);
          x_row := x_row + 1;
        end;

    end;

  x_row := x_row + 2;

end;

procedure Quo_Details(scExcelExport: TScExcelExport; x_Quotations_id: integer; var x_row: integer);
var
  GpSds, Gp1Sds : TSQLDataSet;
  x_QueryString, x_str: string;
  x_Prev_ModuleQuotations_id, x_ModuleQuotations_id, x_Prev_HotelAddressbook_id: integer;
  x_Prev_DayNo, x_DayNo, x_GroupNo: integer;
  x_color, x_MaxDayNo: integer;
  x_Prev_QuoDate: TDateTime;
  x_overnight: boolean;
begin

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Module';
      Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Date';
      Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Day No';
      Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'City';
      Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Particulars';
      Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Hotel';

      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Font.FontStyle := 'Bold';

      Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Interior.Color := $00D6D6D6;

    end;

  x_row := x_row + 1;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT MAX(td.DayNo) AS MaxDayNo FROM TmpDetailedItin td ' +
                   'WHERE td.Quotations_id = ' + IntToStr(x_Quotations_id) + ' ';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_MaxDayNo := 0;
  if (not GpSds.eof) and (GpSds['MaxDayNo'] <> null) then
    x_MaxDayNo := GpSds['MaxDayNo'];

  x_QueryString := 'SELECT q.PaxName, td.QuoDate, td.DayNo, c.City AS ToCity, ' +
                   'CASE WHEN td.RecType IS NULL AND ql.QuoLines_id IS NULL AND td.DayNo = ' + IntToStr(x_MaxDayNo) + ' THEN '' '' ' +
                        'WHEN td.RecType IS NULL AND ql.QuoLines_id IS NULL THEN ''Day At Leisure'' ELSE ql.QuoString END AS QuoString,' +
                   'ql.ModuleQuotations_id, ql.QuoCities_id, ql.TrsType, ' +
                   'td.Overnight, td.City, td.HotelAddressbook_id ' +
                   'FROM TmpDetailedItin td ' +
                   'LEFT JOIN QuoLines ql ON td.DayNo = ql.DayNo AND td.Quotations_id = ql.Quotations_id ' +
                   'LEFT JOIN Quotations q ON ql.ModuleQuotations_id = q.Quotations_id ' +
                   'LEFT JOIN Cities c ON ql.Cities_id = c.Cities_id ' +
                   'LEFT JOIN QuoCities qc ON ql.QuoCities_id = qc.QuoCities_id ' +
                   'WHERE td.Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
                   'ORDER BY td.DayNo, ql.LineNum';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_Prev_ModuleQuotations_id := -1;
  x_Prev_HotelAddressbook_id := -1;
  x_Prev_DayNo := -1;
  x_GroupNo := 0;
  x_Prev_QuoDate := StrToDate('01/01/2000');
  x_color := $00CCFFCC;

  with scExcelExport.ExcelWorkSheet do
    begin

      while (not GpSds.EOF) do
        begin

          x_ModuleQuotations_id := 0;
          if (GpSds['ModuleQuotations_id']) <> null then
            x_ModuleQuotations_id := GpSds['ModuleQuotations_id']
          else
            x_ModuleQuotations_id := x_Prev_ModuleQuotations_id;

          // new module
          if x_ModuleQuotations_id <> x_Prev_ModuleQuotations_id then
            begin

              x_row := x_row + 1;
              if GpSds['PaxName'] <> null then
                Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['PaxName'];
              Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';

              x_GroupNo := x_GroupNo+1;
              if (x_GroupNo mod 2) > 0 then
                x_color := $00CCFFFF
              else
                x_color := $00CCFFCC;

            end;

          x_DayNo := 0;
          if (GpSds['DayNo']) <> null then
            x_DayNo := GpSds['DayNo'];

          x_overnight := false;

          x_QueryString := 'SELECT overnight FROM TmpDetailedItin ' +
               'WHERE Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
               'AND DayNo = ' + IntToStr(x_DayNo) + ' ' ;

          Gp1Sds.Close;
          Gp1Sds.CommandText := x_QueryString;
          Gp1Sds.Open;

          if (not Gp1Sds.EOF) and (Gp1Sds['overnight'] <> null) then
            x_overnight := Gp1Sds['overnight'];

          // new module
          if x_DayNo <> x_Prev_DayNo then
            begin

              if GpSds['QuoDate'] <> null then
                Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := '''' + FormatDateTime('dd/mm/yyy ddd',GpSds['QuoDate']);

              if GpSds['DayNo'] <> null then
                Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := GpSds['DayNo'];

              if GpSds['City'] <> null then
                Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['City'];

              x_QueryString := 'SELECT t.overnight FROM TmpDetailedItin t ' +
                   'WHERE t.QuoDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',GpSds['QuoDate'])) + ' ' +
                   'AND Quotations_id = ' + IntToStr(x_Quotations_id);

              Gp1Sds.Close;
              Gp1Sds.CommandText := x_QueryString;
              Gp1Sds.Open;

              if (Gp1Sds['Overnight'] <> null) and (Gp1Sds['Overnight'] = true) then
                Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Train'
              else
                begin

                  x_QueryString := 'SELECT a.Organisation FROM TmpDetailedItin t ' +
                       'LEFT JOIN Addressbook a ON t.HotelAddressbook_id = a.Addressbook_id ' +
                       'WHERE t.QuoDate <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',GpSds['QuoDate'])) + ' ' +
                       'AND Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
                       'ORDER BY t.QuoDate DESC';

                  Gp1Sds.Close;
                  Gp1Sds.CommandText := x_QueryString;
                  Gp1Sds.Open;

                  if Gp1Sds['Organisation'] <> null then
                    Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := Gp1Sds['Organisation'];

                end;

            end;

          if GpSds['QuoString'] <> null then
            begin
              x_str := GpSds['QuoString'];
              x_str := StringReplace(x_str, chr(13), '', [rfReplaceAll]);
              Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := x_str;
              Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].WrapText := true;
            end;

//          x_Prev_ModuleQuotations_id := 0;
          if (GpSds['ModuleQuotations_id']) <> null then
            x_Prev_ModuleQuotations_id := GpSds['ModuleQuotations_id'];


// commented by RVP on 27 Sep 2012
{
          if (GpSds['TrsType']=2) and (GpSds['QuoCities_id'] <> null) then
            begin

              x_QueryString := 'SELECT a.Organisation FROM QuoAccommodation qa ' +
                   'LEFT JOIN Addressbook a ON qa.HotelAddressbook_id = a.Addressbook_id ' +
                   'WHERE qa.QuoCities_id = ' + IntToStr(GpSds['QuoCities_id']) + ' ' +
                   'ORDER BY qa.DateIn DESC';

              Gp1Sds.Close;
              Gp1Sds.CommandText := x_QueryString;
              Gp1Sds.Open;

//              if Gp1Sds['Organisation'] <> null then
//                Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := Gp1Sds['Organisation'];

            end
          else if (GpSds['TrsType']=1) and (GpSds['Overnight'] = true) then
            begin
              Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := 'Train';
            end
          else if (x_DayNo <> x_Prev_DayNo) and (x_overnight = false) and (x_Prev_HotelAddressbook_id = GpSds['HotelAddressbook_id']) then
            begin

              x_QueryString := 'SELECT a.Organisation FROM Addressbook a ' +
                   'WHERE a.Addressbook_id = ' + IntToStr(GpSds['HotelAddressbook_id']) + ' ';

              Gp1Sds.Close;
              Gp1Sds.CommandText := x_QueryString;
              Gp1Sds.Open;

              if Gp1Sds['Organisation'] <> null then
                Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := Gp1Sds['Organisation'];

            end;
 }

          x_Prev_DayNo := 0;
          if (GpSds['DayNo']) <> null then
            x_Prev_DayNo := GpSds['DayNo'];

          x_Prev_HotelAddressbook_id := 0;
          if (GpSds['HotelAddressbook_id']) <> null then
            x_Prev_HotelAddressbook_id := GpSds['HotelAddressbook_id'];

          Range['A'+IntToStr(x_row),'F'+IntToStr(x_row)].Interior.Color := x_color;

          x_row := x_row + 1;

          GpSds.Next;

        end;

    end;

  x_row := x_row + 2;

  GpSds.Free;

end;


end.
