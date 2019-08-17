unit ImportDriveFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, scExcelExport, StdCtrls, cxButtons, sqlExpr, StrUtils;

type
  TImportDriveForm = class(TForm)
    cxButton1: TcxButton;
    scExcelExport: TscExcelExport;
    cxButton2: TcxButton;
    RowEdit: TEdit;
    Label1: TLabel;
    procedure cxButton1Click(Sender: TObject);
    function CheckCitiesAndStates(scExcelExport: TscExcelExport): integer;
    function ExistCity(x_City: string): integer;
    function ExistState(x_State: string): integer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    function NextDistancesId: integer;
    function EnterRecordsNorthIndia(scExcelExport: TscExcelExport): integer;
    function NextStateCrossingsId: integer;
    function NextCityCrossingsId: integer;
    procedure DeleteOldRecords(x_FromCities_id, x_ToCities_id: integer);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportDriveForm: TImportDriveForm;

implementation

uses BackOfficeDM;

var
  _MaxRow: integer;

{$R *.dfm}

//******************************************//
//*** Written by Bipin Shah, 10 Nov 2008 ***//
//******************************************//

procedure TImportDriveForm.cxButton1Click(Sender: TObject);
begin

  _MaxRow := StrToInt(RowEdit.Text);

  if MessageDlg('The Excel file will be read upto ' + IntToStr(_MaxRow) + ' rows.' + chr(13) +
      'Are you sure?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := ExtractFilePath(Application.ExeName) + 'NorthIndiaDrives.xls';

  scExcelExport.WorksheetName := 'A';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  if CheckCitiesAndStates (scExcelExport) = 0 then
    begin
      EnterRecordsNorthIndia(scExcelExport);
      ShowMessage('Done');
    end;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;


end;

function TImportDriveForm.EnterRecordsNorthIndia(scExcelExport: TscExcelExport): integer;
var
  x_Retval, x_row: integer;
  x_City, x_State, x_Via, x_Duration: string;
  x_FromCities_id, x_ToCities_id, x_StateCrossings_id, x_CityCrossings_id: integer;
  x_Distance, x_Distances_id, x_States_id, x_Cities_id: integer;
  x_QueryString, x_a: string;
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_RetVal := 0;

  x_row := 4;

  with scExcelExport.ExcelWorkSheet do
    begin

      while (x_row < 1880) and (x_Retval = 0) do
        begin

          //x_FromCities_id := 0;
          x_City := Trim(Range['A' + IntToStr(x_row), 'A' + IntToStr(x_row)].Value);
          x_FromCities_id := ExistCity(x_City);

          if x_FromCities_id > 0 then
            begin

              x_City := Trim(Range['B' + IntToStr(x_row), 'B' + IntToStr(x_row)].Value);
              x_ToCities_id := ExistCity(x_City);

              DeleteOldRecords(x_FromCities_id, x_ToCities_id);

              x_Via := '';
              x_Via := Trim(Range['I' + IntToStr(x_row), 'I' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['J' + IntToStr(x_row), 'J' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['K' + IntToStr(x_row), 'K' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['L' + IntToStr(x_row), 'L' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['M' + IntToStr(x_row), 'M' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['N' + IntToStr(x_row), 'N' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['O' + IntToStr(x_row), 'O' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['P' + IntToStr(x_row), 'P' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['Q' + IntToStr(x_row), 'Q' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['R' + IntToStr(x_row), 'R' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['S' + IntToStr(x_row), 'S' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['T' + IntToStr(x_row), 'T' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['U' + IntToStr(x_row), 'U' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['V' + IntToStr(x_row), 'V' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['W' + IntToStr(x_row), 'W' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['X' + IntToStr(x_row), 'X' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['Y' + IntToStr(x_row), 'Y' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['Z' + IntToStr(x_row), 'Z' + IntToStr(x_row)].Value) + ' ' +
                       Trim(Range['AA' + IntToStr(x_row), 'AA' + IntToStr(x_row)].Value) ;


              x_Via := Trim(x_Via);

              x_Distance := Range['G' + IntToStr(x_row), 'G' + IntToStr(x_row)].Value;

              x_Distances_id := NextDistancesId;

              x_QueryString := 'INSERT INTO Distances(Distances_id, Distance, Via, Drive,' +
                'Comments, From_Cities_id, To_Cities_id, flag) ' +
                'VALUES (' + IntToStr(x_Distances_id) + ',' + IntToStr(x_distance) + ',''' +
                x_via + ''',1,null,' + IntToStr(x_FromCities_id) + ',' +
                IntToStr(x_ToCities_id) + ',1)';

              GpSds.Close;
              GpSds.CommandText := x_QueryString;
              GpSds.ExecSQL;


              x_State := Trim(Range['C' + IntToStr(x_row), 'C' + IntToStr(x_row)].Value);
              if x_state > '' then
                begin
                  x_States_id := ExistState(x_State);

                  x_StateCrossings_id := NextStateCrossingsId;

                  x_QueryString := 'INSERT INTO StateCrossings(StateCrossings_id, Distances_id, States_id) ' +
                    'VALUES (' + IntToStr(x_StateCrossings_id) + ',' + IntToStr(x_Distances_id) + ',' + IntToStr(x_States_id) + ')';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end;

              x_City := Trim(Range['D' + IntToStr(x_row), 'D' + IntToStr(x_row)].Value);

              if x_City > '' then
                begin

                  //x_Duration := Range['E' + IntToStr(x_row), 'E' + IntToStr(x_row)].Value;
                  x_Duration := LeftStr(Range['E' + IntToStr(x_row), 'E' + IntToStr(x_row)].Value,5);

                  x_Cities_id := ExistCity(x_City);

                  x_CityCrossings_id := NextCityCrossingsId;

                  x_QueryString := 'INSERT INTO CityCrossings(CityCrossings_id, Distances_id, Cities_id, Duration, DaysOfOperation) ' +
                    'VALUES (' + IntToStr(x_CityCrossings_id) + ',' + IntToStr(x_Distances_id) + ',' +
                    IntToStr(x_Cities_id) + ',''' + x_Duration + ''',127)';

                  GpSds.Close;
                  GpSds.CommandText := x_QueryString;
                  GpSds.ExecSQL;

                end;


              x_a := x_QueryString;

            end;

          x_row := x_row+1;

        end;

    end;

  Result := x_Retval;

end;


function TImportDriveForm.CheckCitiesAndStates(scExcelExport: TscExcelExport): integer;
var
  x_Retval, x_row: integer;
  x_City, x_State: string;
begin

  x_RetVal := 0;

  x_row := 4;

  with scExcelExport.ExcelWorkSheet do
    begin

      while (x_row < 1880) and (x_Retval = 0) do
        begin

          x_City := Trim(Range['A' + IntToStr(x_row), 'A' + IntToStr(x_row)].Value);

          if (x_City > '') then
            begin
              if ExistCity(x_City) = 0 then
                begin
                  ShowMessage(x_City + ' -- does not exist (city)');
                  x_RetVal := 1;
                end;
            end;

          x_City := Trim(Range['B' + IntToStr(x_row), 'B' + IntToStr(x_row)].Value);

          if (x_City > '') then
            begin
              if ExistCity(x_City) = 0 then
                begin
                  ShowMessage(x_City + ' -- does not exist (city)');
                  x_RetVal := 1;
                end;
            end;

          x_City := Trim(Range['D' + IntToStr(x_row), 'D' + IntToStr(x_row)].Value);

          if (x_City > '') then
            begin
              if ExistCity(x_City) = 0 then
                begin
                  ShowMessage(x_City + ' -- does not exist (city)');
                  x_RetVal := 1;
                end;
            end;

          x_State := Trim(Range['C' + IntToStr(x_row), 'C' + IntToStr(x_row)].Value);

          if (x_State > '') then
            begin
              if ExistState(x_State) = 0 then
                begin
                  ShowMessage(x_State + ' -- does not exist (state)');                
                  x_RetVal := 2;
                end;
            end;

          x_row := x_row+1;

        end;

    end;

  Result := x_Retval;

end;

procedure TImportDriveForm.DeleteOldRecords(x_FromCities_id, x_ToCities_id: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'DELETE FROM StateCrossings ' +
    'WHERE Distances_id IN ' +
    '(SELECT Distances_id FROM Distances WHERE From_Cities_id = ' +
    IntToStr(x_FromCities_id) + ' AND To_Cities_id = ' + IntToStr(x_ToCities_id) + ')';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM CityCrossings ' +
    'WHERE Distances_id IN ' +
    '(SELECT Distances_id FROM Distances WHERE From_Cities_id = ' +
    IntToStr(x_FromCities_id) + ' AND To_Cities_id = ' + IntToStr(x_ToCities_id) + ')';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'DELETE FROM Distances ' +
    'WHERE From_Cities_id = ' + IntToStr(x_FromCities_id) +
    ' AND To_Cities_id = ' + IntToStr(x_ToCities_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;


function TImportDriveForm.NextDistancesId: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Max_id: integer;
begin
  QueryString := 'SELECT MAX(Distances_id) AS MaxId FROM Distances';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_max_id := 0;
  if (not GpSds.EOF) and (GpSds['MaxId'] <> null) then
    x_max_id := GpSds['MaxId'];

  x_max_id := x_max_id + 1;

  GpSds.Free;

  Result := x_max_id;

end;

function TImportDriveForm.NextStateCrossingsId: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Max_id: integer;
begin
  QueryString := 'SELECT MAX(StateCrossings_id) AS MaxId FROM StateCrossings';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_max_id := 0;
  if (not GpSds.EOF) and (GpSds['MaxId'] <> null) then
    x_max_id := GpSds['MaxId'];

  x_max_id := x_max_id + 1;

  GpSds.Free;

  Result := x_max_id;

end;

function TImportDriveForm.NextCityCrossingsId: integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Max_id: integer;
begin
  QueryString := 'SELECT MAX(CityCrossings_id) AS MaxId FROM CityCrossings';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_max_id := 0;
  if (not GpSds.EOF) and (GpSds['MaxId'] <> null) then
    x_max_id := GpSds['MaxId'];

  x_max_id := x_max_id + 1;

  GpSds.Free;

  Result := x_max_id;

end;



function TImportDriveForm.ExistCity(x_City: string): integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Cities_id: integer;
begin
  QueryString := 'SELECT Cities_id FROM Cities WHERE City = ''' + x_City + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Cities_id := 0;
  if (not GpSds.EOF) and (GpSds['Cities_id'] <> null) then
    x_Cities_id := GpSds['Cities_id'];

  GpSds.Free;

  Result := x_Cities_id;

end;

function TImportDriveForm.ExistState(x_State: string): integer;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_States_id: integer;
begin
  QueryString := 'SELECT States_id FROM States WHERE State = ''' + x_State + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_States_id := 0;
  if (not GpSds.EOF) and (GpSds['States_id'] <> null) then
    x_States_id := GpSds['States_id'];

  GpSds.Free;

  Result := x_States_id;

end;


procedure TImportDriveForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TImportDriveForm.FormDestroy(Sender: TObject);
begin
  ImportDriveForm := nil;
end;

procedure TImportDriveForm.cxButton2Click(Sender: TObject);
var
  GpSds, Gp1Sds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT From_Cities_id, To_Cities_id FROM Distances WHERE Flag = 1';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  Gp1Sds := TSQLDataSet.Create(nil);
  Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp1Sds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  while not GpSds.Eof do
    begin

      DeleteOldRecords(GpSds['To_Cities_id'], GpSds['From_Cities_id']);

      QueryString := 'EXEC p_AutoFillDistance ' + IntToStr(GpSds['From_Cities_id']) + ',' +
        IntToStr(GpSds['To_Cities_id']);

      Gp1Sds.Close;
      Gp1Sds.CommandText := QueryString;
      Gp1Sds.ExecSQL;

      QueryString := 'UPDATE Distances SET Flag = 2 ' +
        'WHERE From_Cities_id = ' + IntToStr(GpSds['To_Cities_id']) + ' ' +
        'AND To_Cities_id = ' + IntToStr(GpSds['From_Cities_id']);

      Gp1Sds.Close;
      Gp1Sds.CommandText := QueryString;
      Gp1Sds.ExecSQL;

      GpSds.Next;
    end;


  GpSds.Free;
  Gp1Sds.Free;

  ShowMessage('Done');

end;

end.
