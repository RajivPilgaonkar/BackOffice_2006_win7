unit QuoFixedRateTrainModifyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  FMTBcd, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, cxTextEdit,
  cxLabel, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxGroupBox, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TQuoFixedRateTrainModifyForm = class(TCustomMasterCxGridForm)
    Label1: TLabel;
    cxFromCityLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxTrainLCMB: TcxLookupComboBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    CustomMasterCxGridDBTableView1QuoFixedRatesTickets_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn;
    TrainSds: TSQLDataSet;
    TrainDsp: TDataSetProvider;
    TrainCds: TClientDataSet;
    TrainDs: TDataSource;
    Label4: TLabel;
    cxToCityLCMB: TcxLookupComboBox;
    TrainCdsTrainNo: TStringField;
    TrainCdsTrainName: TStringField;
    MasterCdsQuoFixedRatesTickets_id: TIntegerField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsFrom_Cities_id: TIntegerField;
    MasterCdsTo_Cities_id: TIntegerField;
    MasterCdsFrom_TrainStations_id: TIntegerField;
    MasterCdsTo_TrainStations_id: TIntegerField;
    MasterCdsFlightNo: TStringField;
    MasterCdsTrainNo: TStringField;
    MasterCdsClass_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsTrains_id: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsTimings: TStringField;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassDs: TDataSource;
    ClassCdsclass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassCdsOrderNo: TIntegerField;
    TrainCdsTrains_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxFromCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxToCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxTrainLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function IsRecordDuplicate: Boolean;
    procedure FilterData;
    procedure SetTrainDetails;
    procedure UpdateTrains;
  public
    { Public declarations }
  end;

var
  QuoFixedRateTrainModifyForm: TQuoFixedRateTrainModifyForm;
  _QuoFixedRateTrainModifyForm_Level: integer;
  _QuoFixedRateTrainModifyForm_FromCities_id: integer;
  _QuoFixedRateTrainModifyForm_ToCities_id: integer;
  _QuoFixedRateTrainModifyForm_TrainNo: string;
  _QuoFixedRateTrainModifyForm_wef: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoFixedRateTrainModifyForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'QuoFixedRatesTickets';
  MasterKeyField := 'QuoFixedRatesTickets_id';
  AdmLevel := _QuoFixedRateTrainModifyForm_Level;

  BackOfficeDataModule.CitiesCds.Open;

  TrainSds.Params[0].Value := _QuoFixedRateTrainModifyForm_FromCities_id;
  TrainSds.Params[1].Value := _QuoFixedRateTrainModifyForm_ToCities_id;
  TrainSds.Params[2].Value := _QuoFixedRateTrainModifyForm_Wef;
  TrainSds.Open;
  TrainCds.Open;

  BackOfficeDataModule.CurrenciesCds.Open;
  ClassCds.Open;

  cxDateEdit.Date := _QuoFixedRateTrainModifyForm_wef;
  cxFromCityLCMB.EditValue := _QuoFixedRateTrainModifyForm_FromCities_id;
  cxToCityLCMB.EditValue := _QuoFixedRateTrainModifyForm_ToCities_id;
  cxTrainLCMB.EditValue := _QuoFixedRateTrainModifyForm_TrainNo;


  FilterData;

  inherited;

end;

procedure TQuoFixedRateTrainModifyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoFixedRateTrainModifyForm := nil;
end;

procedure TQuoFixedRateTrainModifyForm.MasterCdsBeforePost(
  DataSet: TDataSet);
begin

 if (MasterCds['Tickets_id'] = null) then
    raise Exception.Create('Please enter the Tickets_id');

 if (MasterCds['From_Cities_id'] = null) then
    raise Exception.Create('Please enter the From City');

 if (MasterCds['To_Cities_id'] = null) then
    raise Exception.Create('Please enter the To City');

 if (MasterCds['TrainNo'] = null) then
    raise Exception.Create('Please enter the Train No');

 SetTrainDetails;

 if (MasterCds['From_TrainStations_id'] = null) then
    raise Exception.Create('Please enter the "From Station" in Train - Track Sectors form');

 if (MasterCds['To_TrainStations_id'] = null) then
    raise Exception.Create('Please enter the "To Station" in Train - Track Sectors form');

 if (MasterCds['Class_id'] = null) then
    raise Exception.Create('Please enter the Class');

 if (MasterCds['Wef'] = null) then
    raise Exception.Create('Please enter the wef');

 if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

 if (MasterCds['Cost'] = null) then
    MasterCds['Cost'] := 0.0;

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

end;

procedure TQuoFixedRateTrainModifyForm.SetTrainDetails;
var
  QueryString: string;
  x_trains_id: integer;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if MasterCds.State = dsInsert then
    begin
      GpSds.CommandText := 'SELECT MAX(Trains_id) AS Trains_id ' +
        'FROM Trains WHERE TrainNo = ' + QuotedStr(MasterCds['TrainNo']) + ' ' +
        'AND Wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ' ';
      GpSds.Open;
      x_trains_id := -1;
      if (not GpSds.Eof) and (GpSds['Trains_id'] <> null) then
        x_trains_id := GpSds['Trains_id'];
    end
  else
    x_trains_id := MasterCds['Trains_id'];

  if x_trains_id > 0 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'SELECT [dbo].[fn_GetTrainTimings](' + IntToStr(x_Trains_id) + ') AS Timings ';
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['Timings'] <> null) then
        MasterCds['Timings'] := GpSds['Timings'];

      GpSds.Close;
      GpSds.CommandText := 'SELECT FromTrainStations_id, ToTrainStations_id ' +
        'FROM TrainTrackSectors ' +
        'WHERE TrainNo = ' + QuotedStr(MasterCds['TrainNo']);
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['FromTrainStations_id'] <> null) then
        MasterCds['From_TrainStations_id'] := GpSds['FromTrainStations_id'];

      if (not GpSds.Eof) and (GpSds['ToTrainStations_id'] <> null) then
        MasterCds['To_TrainStations_id'] := GpSds['ToTrainStations_id'];

    end;

  GpSds.Free;

end;


function TQuoFixedRateTrainModifyForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM QuoFixedRatesTickets ' +
    'WHERE Tickets_id = ' + IntToStr(MasterCds['Tickets_id']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(MasterCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_Cities_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['Wef'])) + ' ' +
    'AND TrainNo = ' + QuotedStr(MasterCds['TrainNo']) + ' ' +
    'AND Class_id = ' + IntToStr(MasterCds['Class_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (QuoFixedRatesTickets_id <> ' + IntToStr(MasterCds['QuoFixedRatesTickets_id']) + ') ';

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


procedure TQuoFixedRateTrainModifyForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  UpdateTrains;
  FilterData;
end;

procedure TQuoFixedRateTrainModifyForm.FilterData;
begin

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := -1;
  if cxFromCityLCMB.EditValue <> null then
    MasterSds.Params[0].Value := cxFromCityLCMB.EditValue;

  MasterSds.Params[1].Value := -1;
  if cxToCityLCMB.EditValue <> null then
    MasterSds.Params[1].Value := cxToCityLCMB.EditValue;

  MasterSds.Params[2].Value := -1;
  if cxTrainLCMB.EditValue <> null then
    MasterSds.Params[2].Value := cxTrainLCMB.EditValue;

  MasterSds.Params[3].Value := Date();
  if cxDateEdit.Date <> null then
    MasterSds.Params[3].Value := cxDateEdit.Date;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TQuoFixedRateTrainModifyForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoFixedRatesTickets';
  MasterKeyField := 'QuoFixedRatesTickets_id';
  AdmLevel := _QuoFixedRateTrainModifyForm_Level;

  FilterData;

end;

procedure TQuoFixedRateTrainModifyForm.MasterCdsAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  MasterCds['Tickets_id'] := 2;
  MasterCds['From_Cities_id'] := cxFromCityLCMB.EditValue;
  MasterCds['To_Cities_id'] := cxToCityLCMB.EditValue;
  MasterCds['TrainNo'] := cxTrainLCMB.EditValue;
  MasterCds['Trains_id'] := TrainCds['Trains_id'];
end;

procedure TQuoFixedRateTrainModifyForm.cxFromCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  UpdateTrains;
  FilterData;
end;

procedure TQuoFixedRateTrainModifyForm.cxToCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  UpdateTrains;
  FilterData;
end;

procedure TQuoFixedRateTrainModifyForm.cxTrainLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxTrainLCMB.EditValue <> null then
    TrainCds.Locate('TrainNo', cxTrainLCMB.EditValue, []);

  FilterData;
end;

procedure TQuoFixedRateTrainModifyForm.UpdateTrains;
begin

  TrainCds.Close;
  TrainSds.Close;

  if cxFromCityLCMB.EditValue <> null then
    TrainSds.Params[0].Value := cxFromCityLCMB.EditValue
  else
    TrainSds.Params[0].Value := -1;

  if cxToCityLCMB.EditValue <> null then
    TrainSds.Params[1].Value := cxToCityLCMB.EditValue
  else
    TrainSds.Params[1].Value := -1;

  if cxDateEdit.Date >= StrToDate('01/01/2001') then
    TrainSds.Params[2].Value := cxDateEdit.Date
  else
    TrainSds.Params[2].Value := StrToDate('01/01/2001');

  TrainSds.Open;
  TrainCds.Open;

end;



end.
