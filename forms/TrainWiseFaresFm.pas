unit TrainWiseFaresFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxLabel, ExtCtrls, cxGraphics, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons;

type
  TTrainWiseFaresForm = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTrainsLcmb: TcxLookupComboBox;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    TrainFaresSds: TSQLDataSet;
    TrainFaresDsp: TDataSetProvider;
    TrainFaresDs: TDataSource;
    TrainFaresCds: TClientDataSet;
    cxWefLcmb: TcxLookupComboBox;
    cxButtonUpdate: TcxButton;
    TrainFaresCdsTrainWiseFares_id: TIntegerField;
    TrainFaresCdsWef: TSQLTimeStampField;
    TrainFaresCdsWet: TSQLTimeStampField;
    TrainFaresCdsFromTrainStations_id: TIntegerField;
    TrainFaresCdsToTrainStations_id: TIntegerField;
    TrainFaresCdsClass_id: TIntegerField;
    TrainFaresCdsResFare: TFMTBCDField;
    TrainFaresCdsSfstFare: TFMTBCDField;
    TrainFaresCdsOthrFare: TFMTBCDField;
    TrainFaresCdsTtklFare: TFMTBCDField;
    TrainFaresCdsAddlrFare: TFMTBCDField;
    CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1BasFare: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ResFare: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SfstFare: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1OthrFare: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TtklFare: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AddlrFare: TcxGridDBColumn;
    TrainsSds: TSQLDataSet;
    TrainsDsp: TDataSetProvider;
    TrainsDs: TDataSource;
    TrainsCds: TClientDataSet;
    TrainStationsSds: TSQLDataSet;
    TrainStationsDsp: TDataSetProvider;
    TrainStationsDs: TDataSource;
    TrainStationsCds: TClientDataSet;
    TrainFaresCdsBaseFare: TFMTBCDField;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassDs: TDataSource;
    WefDS: TDataSource;
    WefCds: TClientDataSet;
    WefDsp: TDataSetProvider;
    WefSds: TSQLDataSet;
    cxCloseBtn: TcxButton;
    WefCdsWef: TSQLTimeStampField;
    ClassCdsclass_id: TIntegerField;
    ClassCdsclass: TStringField;
    TrainFaresCdsTotalFare: TFMTBCDField;
    CustomMasterCxGridDBTableView1TotalFare: TcxGridDBColumn;
    cxButton3: TcxButton;
    PopupMenu1: TPopupMenu;
    ImportTrainFares1: TMenuItem;
    TrainsCdsTrainNo: TStringField;
    TrainsCdsTrainName: TStringField;
    TrainStationsCdsTrainstations_id: TIntegerField;
    TrainStationsCdsStation: TStringField;
    TrainFaresCdsTrainNo: TStringField;
    CustomMasterCxGridDBTableView1FromTrainStations_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToTrainStations_id: TcxGridDBColumn;
    ClassCdsCode: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure FilterTrainFares;
    procedure TrainFaresCdsBeforePost(DataSet: TDataSet);
    procedure TrainFaresCdsAfterPost(DataSet: TDataSet);
    procedure TrainFaresCdsAfterDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure TrainFaresCdsAfterInsert(DataSet: TDataSet);
    procedure cxTrainsLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure UpdateWefLcmb;
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure ImportTrainFares1Click(Sender: TObject);
    procedure cxWefLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure UpdateTrainStations;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrainWiseFaresForm: TTrainWiseFaresForm;
  _TrainWiseFaresForm_Level: Integer;

implementation


uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TTrainWiseFaresForm.UpdateWefLcmb;
var
  x_Filter : String;
begin

  if cxTrainsLcmb.EditValue = null then
    x_Filter := 'SELECT DISTINCT Wef FROM TrainWiseFares ORDER BY Wef DESC '
  else
    x_Filter := 'SELECT DISTINCT Wef FROM TrainWiseFares WHERE TrainNo = ''' + cxTrainsLcmb.EditValue +
      ''' ORDER BY Wef DESC ';

  WefSds.Close;
  WefSds.CommandText := x_Filter;
  WefCds.Close;
  WefCds.Open;

  if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.EditValue := null;

end;

procedure TTrainWiseFaresForm.UpdateTrainStations;
var
  x_Filter: string;
begin

  if cxTrainsLcmb.EditValue = null then
    x_Filter := 'SELECT Trainstations_id, Station FROM Trainstations ORDER BY Station'
  else
    x_Filter := 'SELECT DISTINCT td.Trainstations_id, ts.Station ' +
      'FROM Trains t LEFT JOIN TrainDetails td ON t.Trains_id = td.Trains_id ' +
      'LEFT JOIN TrainStations ts ON td.TrainStations_id = ts.TrainStations_id ' +
      'WHERE t.TrainNo = ''' + cxTrainsLcmb.EditValue + ''' ' +
      'ORDER BY ts.Station';

  TrainStationsSds.Close;
  TrainStationsSds.CommandText := x_Filter;
  TrainStationsSds.Open;

  TrainStationsCds.Close;
  TrainStationsCds.Open;  

end;


procedure TTrainWiseFaresForm.FormCreate(Sender: TObject);
begin
  TrainsCds.Open;
  TrainStationsCds.Open;
  WefCds.Open;
  ClassCds.Open;

  cxCloseBtn.Left := Panel1.Width - cxCloseBtn.Width - 20;

  TrainsCds.Active := False;
  TrainsCds.Active := True;

  FilterTrainFares;
end;

procedure TTrainWiseFaresForm.FilterTrainFares;
begin
  TrainFaresSds.Active := False;
  TrainFaresCds.Active := False;

  if cxTrainsLcmb.EditValue <> null then
    TrainFaresSds.Params[0].Value := trim(cxTrainsLcmb.EditValue)
  else
    TrainFaresSds.Params[0].Value := '-1';

  if cxWefLcmb.EditValue <> null then
    TrainFaresSds.Params[1].Value := cxWefLcmb.EditValue
  else
    TrainFaresSds.Params[1].Value := StrToDate('01/01/2000');

  TrainFaresSds.Active := True;
  TrainFaresCds.Active := True;
end;

procedure TTrainWiseFaresForm.FormDestroy(Sender: TObject);
begin
  TrainWiseFaresForm := nil;
end;

procedure TTrainWiseFaresForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTrainWiseFaresForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TTrainWiseFaresForm.TrainFaresCdsBeforePost(DataSet: TDataSet);
begin

  if TrainFaresCds['Wef'] = null then
    raise exception.create('wef has to be entered');

  if TrainFaresCds['TrainNo'] = null then
    raise exception.create('Train No has to be entered');

  if (TrainFaresCds['Class_id'] = null) then
    raise exception.create('Class has to be entered');

  if (TrainFaresCds['BaseFare'] = null) then
    TrainFaresCds['BaseFare'] := 0.0;

  if (TrainFaresCds['ResFare'] = null) then
    TrainFaresCds['ResFare'] := 0.0;

  if (TrainFaresCds['SfstFare'] = null) then
    TrainFaresCds['SfstFare'] := 0.0;

  if (TrainFaresCds['OthrFare'] = null) then
    TrainFaresCds['OthrFare'] := 0.0;

  if (TrainFaresCds['TtklFare'] = null) then
    TrainFaresCds['TtklFare'] := 0.0;

  if (TrainFaresCds['AddlrFare'] = null) then
    TrainFaresCds['AddlrFare'] := 0.0;

  TrainFaresCds['TotalFare'] := TrainFaresCds['BaseFare'] + TrainFaresCds['ResFare'] + TrainFaresCds['SfstFare'] +
      TrainFaresCds['OthrFare'] + TrainFaresCds['TtklFare'] + TrainFaresCds['AddlrFare'];

  if TrainFaresCds.State = dsInsert then
    TrainFaresCds['TrainWiseFares_id'] := GetNextId('TrainWiseFares', 'TrainWiseFares_id');

end;

procedure TTrainWiseFaresForm.TrainFaresCdsAfterPost(DataSet: TDataSet);
begin
  TrainFaresCds.ApplyUpdates(0);
end;

procedure TTrainWiseFaresForm.TrainFaresCdsAfterDelete(DataSet: TDataSet);
begin
  TrainFaresCds.ApplyUpdates(0);
end;

procedure TTrainWiseFaresForm.FormResize(Sender: TObject);
begin
  cxCloseBtn.Left := Panel1.Width - cxCloseBtn.Width - 20;
end;

procedure TTrainWiseFaresForm.TrainFaresCdsAfterInsert(DataSet: TDataSet);
begin

  if cxWefLcmb.EditValue = null then
    raise exception.create('wef has to be entered');

  TrainFaresCds['Wef'] := StrToDate(cxWefLcmb.EditValue);

  if (cxTrainsLcmb.EditValue = null) or (trim(cxTrainsLcmb.EditValue)='') then
    raise exception.create('Train No has to be entered');

  TrainFaresCds['TrainNo'] := cxTrainsLcmb.EditValue;

end;

procedure TTrainWiseFaresForm.cxTrainsLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterTrainFares;
  UpdateWefLcmb;
  UpdateTrainStations;
end;

procedure TTrainWiseFaresForm.cxButtonUpdateClick(Sender: TObject);
begin
  UpdateWefLcmb;
  FilterTrainFares;
end;

procedure TTrainWiseFaresForm.ImportTrainFares1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  ClickedOK: Boolean;
  x_wef: string;
begin

  if MessageDlg ('This will take a while. Are you sure you want to import new train fares?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  ClickedOK:= InputQuery('Wef', 'Enter Wef', x_wef);

  if ClickedOK then
    begin

      GpSds.Close;
      GpSds.CommandText := 'SELECT MAX(wef) AS wef FROM TrainWiseFares ';
      GpSds.Open;

      if (GPSds.EOF) or (GpSds['wef'] = null) or (GpSds['wef'] < x_wef) then
        begin

          GpSds.Close;
          GpSds.CommandText := ' EXEC p_ImportTrainFares ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(x_wef)));
          GpSds.ExecSQL;

          ShowMessage('Train Fares Imported');

        end
      else
        begin
          ShowMessage ('Earlier dates cannot be imported now');
        end;

    end;

  GpSds.Free;

  FilterTrainFares;
end;

procedure TTrainWiseFaresForm.cxWefLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterTrainFares;
end;

end.
