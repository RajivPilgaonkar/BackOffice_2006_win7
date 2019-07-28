unit TrainCategories2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_2DG_Type2_Fm, Menus, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxCheckBox, DateUtils;

type
  TTrainCategories2Form = class(TCustom_1MG_2DG_Type2_Form)
    MasterCdstraincategories_id: TIntegerField;
    MasterCdscategory: TStringField;
    MasterCdsdefaultorder: TIntegerField;
    MasterCdssectorfare: TBooleanField;
    cxGrid1DBBandedTableView1traincategories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1category: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1defaultorder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sectorfare: TcxGridDBBandedColumn;
    Detail2Cdstrainfaresindia_id: TIntegerField;
    Detail2Cdskms: TIntegerField;
    Detail2Cdstraincategories_id: TIntegerField;
    Detail2Cdst1c: TBCDField;
    Detail2Cdst1c_ac: TBCDField;
    Detail2Cdst2c: TBCDField;
    Detail2Cdst2c_ac_2t: TBCDField;
    Detail2Cdst2c_ac_3t: TBCDField;
    Detail2Cdsac_cc: TBCDField;
    Detail2Cdsac_cce: TBCDField;
    Detail2Cdssleeper: TBCDField;
    Detail2Cdsaddressbook_id: TIntegerField;
    Detail2Cdswef: TSQLTimeStampField;
    Detail2Cdswet: TSQLTimeStampField;
    Detail2CdsFlag: TIntegerField;
    cxGridDBBandedTableView1trainfaresindia_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1kms: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1traincategories_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1t1c: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1t1c_ac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1t2c: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1t2c_ac_2t: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1t2c_ac_3t: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ac_cc: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ac_cce: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1sleeper: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Flag: TcxGridDBBandedColumn;
    Detail1Cdstrainsectorfaresindia_id: TIntegerField;
    Detail1Cdstraincategories_id: TIntegerField;
    Detail1Cdswef: TSQLTimeStampField;
    Detail1Cdswet: TSQLTimeStampField;
    Detail1Cdsfrom_cities_id: TIntegerField;
    Detail1Cdsto_cities_id: TIntegerField;
    Detail1Cdst1c: TFloatField;
    Detail1Cdst1c_ac: TFloatField;
    Detail1Cdst2c: TFloatField;
    Detail1Cdst2c_ac_2t: TFloatField;
    Detail1Cdst2c_ac_3t: TFloatField;
    Detail1Cdsac_cc: TFloatField;
    Detail1Cdsac_cce: TFloatField;
    Detail1Cdssleeper: TFloatField;
    Detail1Cdscost: TFloatField;
    Detail1Cdsaddressbook_id: TIntegerField;
    Detail1Cdsfrom_stations_id: TIntegerField;
    Detail1Cdsto_stations_id: TIntegerField;
    cxGrid2DBBandedTableView1trainsectorfaresindia_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1traincategories_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1wet: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1from_cities_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1to_cities_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1t1c: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1t1c_ac: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1t2c: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1t2c_ac_2t: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1t2c_ac_3t: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ac_cc: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ac_cce: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1sleeper: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1cost: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1from_stations_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1to_stations_id: TcxGridDBBandedColumn;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    StationSds: TSQLDataSet;
    StationDsp: TDataSetProvider;
    StationCds: TClientDataSet;
    StationDs: TDataSource;
    StationCdsTrainStations_id: TIntegerField;
    StationCdsStationName: TStringField;
    StationCdsRailwayCode: TStringField;
    Label1: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDs: TDataSource;
    WefCdsWef: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    CopyCosts1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail2CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
    procedure cxGrid2DBBandedTableView1from_stations_idPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid2DBBandedTableView1to_stations_idPropertiesEditValueChanged(
      Sender: TObject);
    procedure CopyCosts1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    procedure FilterData;
    procedure SetWefCombo;
    procedure PostWef (x_option: integer);
    function GetCityFromStations_id(x_Stations_id: integer): integer;
    function IsDetail1RecordConsistent: Boolean;
    procedure CopyTrainCosts;
  public
    { Public declarations }
  end;

var
  TrainCategories2Form: TTrainCategories2Form;
  TrainCategories2Form_level: integer;

implementation

uses BackOfficeDM, ReportParameterFm, ReportParamFm;

{$R *.dfm}

procedure TTrainCategories2Form.FormCreate(Sender: TObject);
begin
  Caption := 'Train Categories';
  ActivateInCustom;

  TrainCategories2Form_level := 4;

  inherited;

  CitiesCds.Open;
  StationCds.Open;

  SetWefCombo;

end;

procedure TTrainCategories2Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTrainCategories2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  TrainCategories2Form := nil;
end;

procedure TTrainCategories2Form.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TrainCategories';
  Custom_MasterKeyField := 'TrainCategories_id';

  Custom_Detail1CdsName := 'TrainSectorFaresIndia';
  Custom_Detail1KeyField := 'TrainSectorFaresIndia_id';

  Custom_Detail2CdsName := 'TrainFaresIndia';
  Custom_Detail2KeyField := 'TrainFaresIndia_id';

  Custom_AdmLevel := TrainCategories2Form_level;

  Custom_FormWidth := 1100;
  Custom_FormHeight := 730 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TTrainCategories2Form.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTrainCategories2Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Category']= null) or (trim(MasterCds['Category']) = '') then
    raise Exception.Create('Please enter the Category');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['TrainCategories_id'] = null then
    raise Exception.Create('TrainCategories_id is not assigned');

end;

procedure TTrainCategories2Form.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  if Detail1Cds['wef'] = null then
    raise Exception.Create('Please enter the wef');

  if Detail1Cds['From_Cities_id'] = null then
    raise Exception.Create('Please enter the From City');

  if Detail1Cds['To_Cities_id'] = null then
    raise Exception.Create('Please enter the To City');

  if Detail1Cds['From_Stations_id'] = null then
    raise Exception.Create('Please enter the From Station');

  if Detail1Cds['To_Stations_id'] = null then
    raise Exception.Create('Please enter the To Station');

  if Detail1Cds['TrainCategories_id'] = null then
    raise Exception.Create('Please enter the Train Category');

  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  if not IsDetail1RecordConsistent then
    raise Exception.Create('Invalid station/city combination');

  inherited;

  if Detail1Cds['TrainSectorFaresIndia_id'] = null then
    raise Exception.Create('TrainSectorFaresIndia_id not assigned');

end;

procedure TTrainCategories2Form.Detail2CdsBeforePost(DataSet: TDataSet);
begin

  if Detail2Cds['wef'] = null then
    raise Exception.Create('Please enter the wef');

  if Detail2Cds['kms'] = null then
    raise Exception.Create('Please enter the kms');

  if Detail2Cds['TrainCategories_id'] = null then
    raise Exception.Create('Please enter the Train Category');

  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['TrainFaresIndia_id'] = null then
    raise Exception.Create('TrainFaresIndia_id not assigned');

end;

function TTrainCategories2Form.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM TrainCategories ' +
    'WHERE Category = ' + QuotedStr(Trim(MasterCds['Category'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainCategories_id <> ' + IntToStr(MasterCds['TrainCategories_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

function TTrainCategories2Form.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM TrainSectorFaresIndia ' +
    'WHERE TrainCategories_id = ' + IntToStr(Detail1Cds['TrainCategories_id']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(Detail1Cds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(Detail1Cds['To_Cities_id']) + ' ' +
    'AND From_Stations_id = ' + IntToStr(Detail1Cds['From_Stations_id']) + ' ' +
    'AND To_Stations_id = ' + IntToStr(Detail1Cds['To_Stations_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['Wef'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainSectorFaresIndia_id <> ' + IntToStr(Detail1Cds['TrainSectorFaresIndia_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

function TTrainCategories2Form.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM TrainFaresIndia ' +
    'WHERE TrainCategories_id = ' + IntToStr(Detail2Cds['TrainCategories_id']) + ' ' +
    'AND Kms = ' + IntToStr(Detail2Cds['Kms']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TrainFaresIndia_id <> ' + IntToStr(Detail2Cds['TrainFaresIndia_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

procedure TTrainCategories2Form.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['TrainCategories_id'] = null then
    raise exception.create ('Please select the category first');
end;

procedure TTrainCategories2Form.Detail2CdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['TrainCategories_id'] = null then
    raise exception.create ('Please select the category first');
end;

procedure TTrainCategories2Form.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds['TrainCategories_id'] := MasterCds['TrainCategories_id'];

  if cxWefLCMB.EditValue <> null then
    Detail1Cds['wef'] := cxWefLCMB.EditValue;

  Detail1Cds['t1c'] := 0.0;
  Detail1Cds['t1c_ac'] := 0.0;
  Detail1Cds['t2c'] := 0.0;
  Detail1Cds['t2c_ac_2t'] := 0.0;
  Detail1Cds['t2c_ac_3t'] := 0.0;
  Detail1Cds['ac_cc'] := 0.0;
  Detail1Cds['ac_cce'] := 0.0;
  Detail1Cds['sleeper'] := 0.0;
end;

procedure TTrainCategories2Form.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  Detail2Cds['TrainCategories_id'] := MasterCds['TrainCategories_id'];

  if cxWefLCMB.EditValue <> null then
    Detail2Cds['wef'] := cxWefLCMB.EditValue;

  Detail2Cds['t1c'] := 0.0;
  Detail2Cds['t1c_ac'] := 0.0;
  Detail2Cds['t2c'] := 0.0;
  Detail2Cds['t2c_ac_2t'] := 0.0;
  Detail2Cds['t2c_ac_3t'] := 0.0;
  Detail2Cds['ac_cc'] := 0.0;
  Detail2Cds['ac_cce'] := 0.0;
  Detail2Cds['sleeper'] := 0.0;
end;

procedure TTrainCategories2Form.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FilterData;
end;

procedure TTrainCategories2Form.FilterData;
var
  x_TrainCategories_id: integer;
  x_Wef: TDateTime;
begin

  x_TrainCategories_id := -1;
  if MasterCds['TrainCategories_id'] <> null then
    x_TrainCategories_id := MasterCds['TrainCategories_id'];

  x_Wef := StrToDate('01/01/1970');
  if cxWefLCMB.EditValue <> null then
    x_Wef := cxWefLCMB.EditValue;


  // Detail1
  Detail1Cds.Active := False;
  Detail1Sds.Active := False;

  Detail1Sds.Params[0].Value := x_TrainCategories_id;
  Detail1Sds.Params[1].Value := x_Wef;

  Detail1Sds.Active := True;
  Detail1Cds.Active := True;

  // Detail2
  Detail2Cds.Active := False;
  Detail2Sds.Active := False;

  Detail2Sds.Params[0].Value := x_TrainCategories_id;
  Detail2Sds.Params[1].Value := x_Wef;

  Detail2Sds.Active := True;
  Detail2Cds.Active := True;

end;


procedure TTrainCategories2Form.SetWefCombo;
begin

  WefCds.Close;
  WefSds.Close;

  WefSds.Open;
  WefCds.Open;

  if (not WefCds.EOF) and (WefCds['Wef'] <> null) then
    begin
      WefCds.Locate('wef', WefCds['Wef'], []);
      cxWefLCMB.EditValue := WefCds['Wef'];
    end;

end;


procedure TTrainCategories2Form.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TTrainCategories2Form.PostWef (x_option: integer);
var
  x_wef: TDateTime;
begin
  inherited;

  if x_option = 1 then
    begin
      if Detail1Cds['wef'] <> cxWefLCMB.EditValue then
        begin
          if not WefCds.Locate ('wef', Detail1Cds['wef'], []) then
            begin
              x_wef := Detail1Cds['wef'];
              WefCds.Close;
              WefCds.Open;
              if WefCds.Locate ('wef', x_wef, []) then
                cxWefLCMB.EditValue := x_wef;
            end;
        end;
    end
  else if x_option = 2 then
    begin
      if Detail2Cds['wef'] <> cxWefLCMB.EditValue then
        begin
          if not WefCds.Locate ('wef', Detail2Cds['wef'], []) then
            begin
              x_wef := Detail1Cds['wef'];
              WefCds.Close;
              WefCds.Open;
              if WefCds.Locate ('wef', x_wef, []) then
                cxWefLCMB.EditValue := x_wef;
            end;
        end;
    end;

end;


procedure TTrainCategories2Form.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWef(1);
end;

procedure TTrainCategories2Form.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWef(2);
end;

function TTrainCategories2Form.GetCityFromStations_id(x_Stations_id: integer): integer;
var
  x_QueryString: string;
  x_cities_id: integer;
  GpSds: TSQLDataSet;
begin

  x_cities_id := 0;

  x_QueryString := 'SELECT t.Cities_id FROM TrainStations t ' +
    'WHERE t.TrainStations_id = ' + IntToStr(x_Stations_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['Cities_id'] <> null) then
    x_cities_id := GpSds['Cities_id'];

  GpSds.Free;

  Result := x_cities_id;

end;


procedure TTrainCategories2Form.cxGrid2DBBandedTableView1from_stations_idPropertiesEditValueChanged(
  Sender: TObject);
var
  x_cities_id, x_stations_id: integer;
  x_Edit: TcxCustomEdit;
  x_NewValue: Variant;
  x_stations_id_str: string;
begin
  inherited;

  x_Edit := Sender as TcxCustomEdit;
  x_NewValue := x_Edit.EditingValue;

  x_stations_id_str := trim(VarToStr(x_NewValue));

  if x_stations_id_str > '' then
    begin
      x_stations_id := StrToInt(x_stations_id_str);
      x_cities_id := GetCityFromStations_id(x_stations_id);
      if x_cities_id > 0 then
        begin
          Detail1Cds['From_Stations_id'] := x_stations_id;
          Detail1Cds['From_Cities_id'] := x_cities_id;
        end;
    end;

end;

procedure TTrainCategories2Form.cxGrid2DBBandedTableView1to_stations_idPropertiesEditValueChanged(
  Sender: TObject);
var
  x_cities_id, x_stations_id: integer;
  x_Edit: TcxCustomEdit;
  x_NewValue: Variant;
  x_stations_id_str: string;
begin
  inherited;

  x_Edit := Sender as TcxCustomEdit;
  x_NewValue := x_Edit.EditingValue;

  x_stations_id_str := trim(VarToStr(x_NewValue));

  if x_stations_id_str > '' then
    begin
      x_stations_id := StrToInt(x_stations_id_str);
      x_cities_id := GetCityFromStations_id(x_stations_id);
      if x_cities_id > 0 then
        begin
          Detail1Cds['To_Stations_id'] := x_stations_id;
          Detail1Cds['To_Cities_id'] := x_cities_id;
        end;
    end;

end;

function TTrainCategories2Form.IsDetail1RecordConsistent: Boolean;
var
  x_QueryString: String;
  x_ok: Boolean;
  GpSds: TSQLDataSet;
begin
  x_ok := True;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT COUNT(*) AS x_count ' +
    'FROM TrainStations ts ' +
    'WHERE ts.TrainStations_id = ' + IntToStr(Detail1Cds['From_Stations_id']) + ' ' +
    'AND ts.Cities_id = ' + IntToStr(Detail1Cds['From_Cities_id']);

  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] = 0) then
    x_ok := False;

  if x_ok = true then
    begin

      x_QueryString := 'SELECT COUNT(*) AS x_count ' +
        'FROM TrainStations ts ' +
        'WHERE ts.TrainStations_id = ' + IntToStr(Detail1Cds['To_Stations_id']) + ' ' +
        'AND ts.Cities_id = ' + IntToStr(Detail1Cds['To_Cities_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.Open;

      if (GpSds['x_count'] = 0) then
        x_ok := False;
    end;

  GpSds.Free;

  Result := x_ok;
end;


procedure TTrainCategories2Form.CopyCosts1Click(Sender: TObject);
begin
  inherited;

  if MessageDlg('This will take a few minutes. Proceed to copy?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  CopyTrainCosts;
end;

procedure TTrainCategories2Form.CopyTrainCosts;
var
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  ReportParamForm_Visible_str := '100000000';
  ReportParamForm_EditCkb_str := '000000000';
  ReportParamForm_UserDefined_str := '000000000';

  ReportParamForm_FromDate := cxWefLCMB.EditValue;
  ReportParamForm_ToDate := IncYear(ReportParamForm_FromDate, 1);

  if ReportParamForm = nil then
    Application.CreateForm(TReportParamForm, ReportParamForm);

  ReportParamForm.cxFromDateLabel.Caption := 'From Wef';
  ReportParamForm.cxToDateLabel.Caption := 'To Wef';

  ReportParamForm.ShowModal;

  if ReportParamForm.ModalResult = mrOk then
    begin

      GpSds.CommandText := 'EXEC p_CopyCostAllTrainFaresIndia ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',ReportParamForm_FromDate)) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',ReportParamForm_ToDate)) + ' ';

      GpSds.ExecSQL;

      SetWefCombo;

      ShowMessage('Train Costs copied');

    end;

  ReportParamForm.Release;
  ReportParamForm := nil;

  GpSds.Free;

end;


end.
