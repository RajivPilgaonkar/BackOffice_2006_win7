unit ModuleCostings_Ut;

interface

uses
SQLExpr, SysUtils, Db, cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, Dialogs, cxCustomPivotGrid,
  cxExportPivotGridLink, scExcelExport, Forms, DateUtils, Provider, DbClient, Excel2000, OleServer, ActiveX, Math, Classes;

procedure ModuleCostings_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_option: integer);
procedure ModuleCostings_Title(scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
procedure ModuleCostings_Details(scExcelExport: TScExcelExport; var x_row: integer; x_Quotations_id: integer);

implementation

uses BackOfficeDM, Variants, GeneralUt;

procedure ModuleCostings_Excel(scExcelExport: TScExcelExport; x_FileName: string; x_option: integer);
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

  x_QueryString := 'SELECT DISTINCT Quotations_id, ModuleName, ModuleCode FROM TmpCostModules_PaxRange ' +
       'ORDER BY ModuleCode ';

  x_row := 1;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  while (not GpSds.Eof) do
    begin

      ModuleCostings_Title(scExcelExport, GpSds, x_row);
      ModuleCostings_Details(scExcelExport, x_row, GpSds['Quotations_id']);

      x_row := x_row + 2;

      GpSds.Next;
    end;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;

procedure ModuleCostings_Title(scExcelExport: TScExcelExport; GpSds: TSQLDataSet; var x_row: integer);
var
  x_CellCol: string;
  x_count: integer;
begin

  with scExcelExport.ExcelWorkSheet do
    begin

      Range['A1','A1'].ColumnWidth := 60;
      Range['B1','O1'].ColumnWidth := 8;

      if GpSds['ModuleName'] <> null then
        Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['ModuleName'];
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Name := 'Calibri';
      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.Size := '11';

      Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Interior.ColorIndex := 36;

      x_row := x_row + 1;

      x_CellCol := 'A';
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := 'Travel Element';
      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := 'Day In';
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;

      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := 'Day Out';
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;

      x_CellCol := NextColumn(x_CellCol);
      x_CellCol := NextColumn(x_CellCol);
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := 'Nights';
      Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;

      x_count := 1;
      while (x_count <= 10) do
        begin

          x_CellCol := NextColumn(x_CellCol);
          Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := x_count;

          x_count := x_count + 1;
        end;

      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.Name := 'Calibri';
      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.Size := '11';

      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Interior.ColorIndex := 15;

      x_row := x_row + 1;

    end;


end;

procedure ModuleCostings_Details(scExcelExport: TScExcelExport; var x_row: integer; x_Quotations_id: integer);
var
  x_CellCol, x_col, x_NumCellCol: string;
  x_count, x_StartRow: integer;
  GpSds : TSQLDataSet;
  x_QueryString: string;
begin

  x_StartRow := x_row;

  x_QueryString := 'SELECT * FROM TmpCostModules_PaxRange ' +
       'WHERE Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
       'ORDER BY LineNum ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  with scExcelExport.ExcelWorkSheet do
    begin

      while (not GpSds.Eof) do
        begin

          x_CellCol := 'A';

          if GpSds['TravelElement'] <> null then
            Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := GpSds['TravelElement'];

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['DayIn'] <> null then
            begin
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := GpSds['DayIn'];
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;
            end;

          x_CellCol := NextColumn(x_CellCol);
          if GpSds['DayOut'] <> null then
            begin
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := GpSds['DayOut'];
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;
            end;

          x_CellCol := NextColumn(x_CellCol);
          x_CellCol := NextColumn(x_CellCol);
          if GpSds['Nights'] <> null then
            begin
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := GpSds['Nights'];
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Cells.HorizontalAlignment := xlCenter;
            end;

          x_NumCellCol := x_CellCol;

          x_count := 1;
          while (x_count <= 10) do
            begin

              x_col := 'Cost_' + IntToStr(x_count);

              x_CellCol := NextColumn(x_CellCol);
              Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := GpSds[x_col];

              x_count := x_count + 1;

            end;

          x_row := x_row + 1;

          GpSds.Next;

        end;

      x_CellCol := x_NumCellCol;

      x_count := 1;
      while (x_count <= 10) do
        begin

          x_CellCol := NextColumn(x_CellCol);
          Range[x_CellCol+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Value := '=SUM(' + x_CellCol + IntToStr(x_StartRow) + ':' + x_CellCol + IntToStr(x_row-1) + ')';

          x_count := x_count + 1;

        end;

      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Borders[xlEdgeTop].Weight := xlThin;

      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.FontStyle := 'Bold';
      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.Name := 'Calibri';
      Range['A'+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Font.Size := '11';

      Range['A'+IntToStr(x_StartRow),x_CellCol+IntToStr(x_row)].Interior.ColorIndex := 35;
      Range['A'+IntToStr(x_StartRow),x_CellCol+IntToStr(x_row)].Font.Name := 'Calibri';
      Range['A'+IntToStr(x_StartRow),x_CellCol+IntToStr(x_row)].Font.Size := '11';

      Range[NextColumn(x_NumCellCol)+IntToStr(x_row),x_CellCol+IntToStr(x_row)].Interior.ColorIndex := 36;

    end;

end;


end.
