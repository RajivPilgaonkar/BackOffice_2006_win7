unit PreferredRoutesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, cxButtons, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit, cxLabel,
  cxContainer, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, scExcelExport;

type
  TPreferredRoutesForm = class(TCustomMasterCxGridForm)
    MasterCdsPreferredRoutes_id: TIntegerField;
    MasterCdsRouteFromCities_id: TIntegerField;
    MasterCdsRouteToCities_id: TIntegerField;
    MasterCdsFromCities_id: TIntegerField;
    MasterCdsToCities_id: TIntegerField;
    MasterCdsMode: TIntegerField;
    MasterCdsTrainNo: TStringField;
    CustomMasterCxGridDBTableView1PreferredRoutes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Mode: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TrainNo: TcxGridDBColumn;
    GroupBox2: TcxGroupBox;
    cxFromCityLCMB: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxToCityLCMB: TcxLookupComboBox;
    CitySds: TSQLDataSet;
    CityDsp: TDataSetProvider;
    CityCds: TClientDataSet;
    CityDs: TDataSource;
    CityCdscities_id: TIntegerField;
    CityCdscity: TStringField;
    MasterCdsOrderNo: TIntegerField;
    CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    Statewise1: TMenuItem;
    scExcelExport: TscExcelExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure cxStateLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FilterData;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Statewise1Click(Sender: TObject);
  private
    { Private declarations }
    function GetNextOrderNo: integer;
  public
    { Public declarations }
  end;

var
  PreferredRoutesForm: TPreferredRoutesForm;
  _PreferredRoutesForm_Level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TPreferredRoutesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'PreferredRoutes';
  MasterKeyField := 'PreferredRoutes_id';
  AdmLevel := _PreferredRoutesForm_Level;

  BackOfficeDataModule.CitiesCds.Open;
  CityCds.Open;

  FilterData;

  inherited;

end;

procedure TPreferredRoutesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PreferredRoutesForm := nil;
end;

procedure TPreferredRoutesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cxFromCityLCMB.EditValue = null then
    raise exception.create ('Please enter the Main From City');

  if cxToCityLCMB.EditValue = null then
    raise exception.create ('Please enter the Main To City');

  MasterCds['RouteFromCities_id'] := cxFromCityLCMB.EditValue;
  MasterCds['RouteToCities_id'] := cxToCityLCMB.EditValue;
  MasterCds['Mode'] := 3;

  if (MasterCds['RouteFromCities_id'] = null) then
    raise Exception.Create('Please enter the "From Main City"');

  if (MasterCds['RouteToCities_id'] = null) then
    raise Exception.Create('Please enter the "To Main City"');

  if (MasterCds['FromCities_id'] = null) then
    raise Exception.Create('Please enter the "From City"');

  if (MasterCds['ToCities_id'] = null) then
    raise Exception.Create('Please enter the "To City"');

  if (MasterCds['TrainNo'] = null) then
    raise Exception.Create('Please enter the "Train No"');

  if ((MasterCds['OrderNo'] <> null) and (MasterCds['OrderNo'] > 3)) then
    raise exception.create ('Order No cannot exceed 3');

//  if (IsRecordDuplicate) then
//    raise exception.create ('Duplicate Record found');

end;

function TPreferredRoutesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM PreferredRoutes ' +
    'WHERE RouteFromCities_id = ' + IntToStr(MasterCds['RouteFromCities_id']) + ' ' +
    'AND RouteToCities_id = ' + IntToStr(MasterCds['RouteToCities_id']) + ' ' +
    'AND FromCities_id = ' + IntToStr(MasterCds['FromCities_id']) + ' ' +
    'AND ToCities_id = ' + IntToStr(MasterCds['ToCities_id']) + ' ' +
    'AND TrainNo = ''' + MasterCds['TrainNo'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (PreferredRoutes_id <> ' + IntToStr(MasterCds['PreferredRoutes_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;



procedure TPreferredRoutesForm.cxStateLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TPreferredRoutesForm.cxLookupComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TPreferredRoutesForm.FilterData;
var
  x_FromCities_id, x_ToCities_id: integer;
begin

  x_FromCities_id := -1;
  x_ToCities_id := -1;

  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  MasterCds.Active := False;
  MasterCds.Filtered := True;
  MasterCds.Filter := 'RouteFromCities_id = ' + IntToStr(x_FromCities_id) + ' ' +
    'AND RouteToCities_id = ' + IntToStr(x_ToCities_id);
  MasterCds.Active := True;


end;


procedure TPreferredRoutesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxFromCityLCMB.EditValue <> null then
    begin
      MasterCds['RouteFromCities_id'] := cxFromCityLCMB.EditValue;
      MasterCds['FromCities_id'] := cxFromCityLCMB.EditValue;
    end;

  if cxToCityLCMB.EditValue <> null then
    begin
      MasterCds['RouteToCities_id'] := cxToCityLCMB.EditValue;
      MasterCds['ToCities_id'] := cxToCityLCMB.EditValue;
    end;

  MasterCds['OrderNo'] := GetNextOrderNo;

end;

function TPreferredRoutesForm.GetNextOrderNo: integer;
var
  x_QueryString: String;
  x_OrderNo: Integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(COALESCE(OrderNo,0)) as MaxNo FROM PreferredRoutes ' +
       'WHERE FromCities_id = ' + IntToStr(MasterCds['FromCities_id']) + ' ' +
       'AND ToCities_id = ' + IntToStr(MasterCds['ToCities_id']) + ' ' + 
       'AND RouteFromCities_id = ' + IntToStr(MasterCds['RouteFromCities_id']) + ' ' +
       'AND RouteToCities_id = ' + IntToStr(MasterCds['RouteToCities_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_OrderNo := 0;
  if (not GpSds.EOF) and (GpSds['MaxNo'] <> null) then
    x_OrderNo := GpSds['MaxNo'];

  x_OrderNo := x_OrderNo + 1;

  GpSds.Free;

  Result := x_OrderNo;
end;


procedure TPreferredRoutesForm.Statewise1Click(Sender: TObject);
var
  x_FileName: string;
  x_row: integer;
  GpSds, Gp2Sds: TSQLDataSet;
begin
  inherited;

  if MessageDlg('This will take a few minutes to run. Please wait', mtWarning, [mbYes, mbNo],0) <> mrYes then
    exit;

  x_FileName := g_ReportDir + '\PreferredRoutes.xlsx';

  scExcelExport.CloseAllExcelApps;

  // Open Sheet
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.WorksheetName := 'PreferredRoutes';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  Gp2Sds := TSQLDataSet.Create(nil);
  Gp2Sds.SQLConnection := BackOfficeDataModule.SQLConnection;
  Gp2Sds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT c1.City AS RouteFromCity, c2.City as RouteToCity, pr.RouteFromCities_id, pr.RouteToCities_id, COUNT(*) ' +
    'FROM PreferredRoutes pr ' +
    'LEFT JOIN Cities c1 ON pr.RouteFromCities_id = c1.cities_id ' +
    'LEFT JOIN Cities c2 ON pr.RouteToCities_id = c2.cities_id ' +
    'GROUP BY c1.City, c2.City, pr.RouteFromCities_id, pr.RouteToCities_id ' +
    'ORDER BY c1.City, c2.City ';
  GpSds.Open;

  x_row := 1;

  while (not GpSds.EOF) do
    begin

      if GpSds['RouteFromCity'] <> null then
        scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['RouteFromCity'];

      if GpSds['RouteToCity'] <> null then
        scExcelExport.ExcelWorkSheet.Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['RouteToCity'];

      Gp2Sds.Close;
      Gp2Sds.CommandText := 'SELECT c1.City AS FromCity, c2.City AS ToCity, pr.TrainNo, ' +
        '(SELECT MAX(TrainName) FROM Trains t WHERE pr.TrainNo = t.trainno) AS TrainName ' +
        'FROM PreferredRoutes pr ' +
        'LEFT JOIN Cities c1 ON pr.FromCities_id = c1.cities_id ' +
        'LEFT JOIN Cities c2 ON pr.ToCities_id = c2.cities_id ' +
        'WHERE RouteFromCities_id = ' + IntToStr(GpSds['RouteFromCities_id']) + ' ' +
        'AND RouteToCities_id = ' + IntToStr(GpSds['RouteToCities_id']) + ' ' +
        'ORDER BY c1.City, c2.City, pr.OrderNo, pr.TrainNo ';
      Gp2Sds.Open;

      while (not Gp2Sds.EOF) do
        begin

          x_row := x_row + 1;

          if Gp2Sds['FromCity'] <> null then
            scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := Gp2Sds['FromCity'];

          if Gp2Sds['ToCity'] <> null then
            scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := Gp2Sds['ToCity'];

          if Gp2Sds['TrainNo'] <> null then
            scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value := Gp2Sds['TrainNo'];

          if Gp2Sds['TrainName'] <> null then
            scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value := Gp2Sds['TrainName'];

          Gp2Sds.Next;

        end;

      x_row := x_row + 2;

      GpSds.Next;

    end;

  Gp2Sds.Free;
  GpSds.Free;

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(1),'B'+IntToStr(x_row)].Font.Size := 12;
  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(1),'B'+IntToStr(x_row)].Font.FontStyle := 'Bold';

  scExcelExport.ExcelWorkSheet.Range['A'+IntToStr(1),'B'+IntToStr(x_row)].ColumnWidth := 25;

  scExcelExport.SaveAs(x_Filename,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  ShowMessage('Saved as ' + x_FileName);

end;

end.
