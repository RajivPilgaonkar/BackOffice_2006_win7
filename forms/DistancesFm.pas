unit DistancesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_2DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxTimeEdit;

type
  TDistancesForm = class(TCustom_1MG_2DG_Form)
    cxCityLcmb: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    MasterCdsdistances_id: TIntegerField;
    MasterCdsdistance: TBCDField;
    MasterCdsvia: TStringField;
    MasterCdsdrive: TBooleanField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdstime: TStringField;
    MasterCdsFlag: TIntegerField;
    Detail1CdsStateCrossings_id: TIntegerField;
    Detail1CdsDistances_id: TIntegerField;
    Detail1CdsStates_id: TIntegerField;
    Detail2CdsCityCrossings_id: TIntegerField;
    Detail2CdsDistances_id: TIntegerField;
    Detail2CdsCities_id: TIntegerField;
    Detail2Cdsduration: TStringField;
    Detail2CdsDaysOfOperation: TIntegerField;
    cxGrid1DBBandedTableView1Distances_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Distance: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Via: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Drive: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Comments: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1To_Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Time: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1StateCrossings_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Distances_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1States_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CityCrossings_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Distances_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Duration: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DaysOfOperation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Flag: TcxGridDBBandedColumn;
    cxReverseBtn: TcxButton;
    Detail2CdsDaysName: TStringField;
    cxGridDBBandedTableView1DaysName: TcxGridDBBandedColumn;
    StatesCds: TClientDataSet;
    StatesCdsstates_id: TIntegerField;
    StatesCdsstate: TStringField;
    StatesCdscountry: TStringField;
    StatesDs: TDataSource;
    StatesDsp: TDataSetProvider;
    StatesSds: TSQLDataSet;
    MasterCdscomments: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    Detail1CdsModifiedByUsers_id: TIntegerField;
    Detail1CdsModifiedOn: TSQLTimeStampField;
    cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    Detail2CdsModifiedByUsers_id: TIntegerField;
    Detail2CdsModifiedOn: TSQLTimeStampField;
    cxGridDBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    Detail2CdsOrderNo: TIntegerField;
    cxGridDBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxGridDBBandedTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure Detail2CdsCalcFields(DataSet: TDataSet);
    procedure cxReverseBtnClick(Sender: TObject);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    procedure FilterData;
    function GetNextOrderNo: integer;
  end;

var
  DistancesForm: TDistancesForm;
  DistancesForm_Level: Integer;
implementation

uses BackOfficeDM, SelOprFm, GeneralUt, MainFm;

{$R *.dfm}

procedure TDistancesForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;
  
  CitiesCds.Open;
  StatesCds.Open;
  UsersCds.Open;

end;

procedure TDistancesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TDistancesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  DistancesForm := nil;
end;

procedure TDistancesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Distances';
  Custom_MasterKeyField := 'Distances_id';

  Custom_Detail1CdsName := 'StateCrossings';
  Custom_Detail1KeyField := 'StateCrossings_id';

  Custom_Detail2CdsName := 'CityCrossings';
  Custom_Detail2KeyField := 'CityCrossings_id';

  Custom_AdmLevel := DistancesForm_Level;

  Custom_FormWidth := 870;
  Custom_FormHeight := 620;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TDistancesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TDistancesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['From_Cities_id']= null) or (trim(MasterCds['From_Cities_id']) = '') then
    raise Exception.Create('Please enter the From City');

  if (MasterCds['To_Cities_id']= null) or (trim(MasterCds['To_Cities_id']) = '') then
    raise Exception.Create('Please enter the To City');

  if (MasterCds['Time'] = null) then
    raise Exception.Create('Please enter the Time taken');

  MasterCds['Time'] := Copy(MasterCds['Time'],1,5);

  if (Copy(MasterCds['Time'],2,1) = ':') then
    MasterCds['Time'] := '0' + MasterCds['Time'];

  if (Copy(MasterCds['Time'],3,1) <> ':') then
    raise Exception.Create('Invalid Time');

  MasterCds['Time'] := System.Copy(MasterCds['Time'],1,5);

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Distances_id'] = null then
    raise Exception.Create('Distances_id is not assigned');
end;


procedure TDistancesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  if Detail1Cds['Distances_id'] = null then
    raise exception.create ('Please enter the Distances id');

  if Detail1Cds['States_id'] = null then
    raise exception.create ('Please select a State');

  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  Detail1Cds['ModifiedByUsers_id'] := g_users_id;
  Detail1Cds['ModifiedOn'] := Date;

  inherited;

  if Detail1Cds['StateCrossings_id'] = null then
    raise exception.create ('Please enter the State Crossings id');

end;

procedure TDistancesForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  if Detail2Cds['Distances_id'] = null then
    raise exception.create ('Please enter the Distances id');

  if Detail2Cds['Cities_id'] = null then
    raise exception.create ('Please select a City');

  if Detail2Cds['Duration'] = null then
    Detail2Cds['Duration'] := '00:00';

  if Detail2Cds['DaysOfOperation'] = null then
    Detail2Cds['DaysOfOperation'] := 127;

  Detail2Cds['ModifiedByUsers_id'] := g_users_id;
  Detail2Cds['ModifiedOn'] := Date;

  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['CityCrossings_id'] = null then
    raise exception.create ('Please enter the City Crossings id');
end;

function TDistancesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Distances ' +
    'WHERE From_Cities_id = ' + IntToStr(MasterCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_Cities_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Distances_id <> ' + IntToStr(MasterCds['Distances_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

function TDistancesForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM StateCrossings ' +
    'WHERE States_id = ' + IntToStr(Detail1Cds['States_id']) + ' ' +
    'AND Distances_id = ' + IntToStr(Detail1Cds['Distances_id']) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (StateCrossings_id <> ' + IntToStr(Detail1Cds['StateCrossings_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;

function TDistancesForm.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CityCrossings ' +
    'WHERE Cities_id = ' + IntToStr(Detail2Cds['Cities_id']) + ' ' +
    'AND Distances_id = ' + IntToStr(Detail2Cds['Distances_id']) + ' ';

  if Detail2Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CityCrossings_id <> ' + IntToStr(Detail2Cds['CityCrossings_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;
procedure TDistancesForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cxCityLcmb.EditValue = null then
    raise Exception.Create('Please select the from city');
end;

procedure TDistancesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  MasterCds['From_Cities_id'] := cxCityLcmb.EditValue;
  MasterCds['Drive'] := True;

end;

procedure TDistancesForm.FilterData;
var
  x_Cities_id: Integer;
begin
  x_Cities_id := -1;
  if cxCityLcmb.EditValue <> null then
    x_Cities_id := cxCityLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Cities_id;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TDistancesForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TDistancesForm.MasterCdsAfterPost(DataSet: TDataSet);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  x_QueryString := 'EXEC p_AutoFillDistance ' +
    IntToStr(MasterCds['From_Cities_id']) + ', ' +
    IntToStr(MasterCds['To_Cities_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TDistancesForm.cxGridDBBandedTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if Detail2Cds.State = dsBrowse then
    Detail2Cds.Edit;

  if SelOprForm = Nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if Detail2Cds['DaysOfOperation'] <> null then
    _InitStr := DaysToStr(Detail2Cds['DaysOfOperation'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    Detail2Cds['DaysOfOperation'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;
end;

procedure TDistancesForm.Detail2CdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Detail2Cds['DaysOfOperation'] <> null then
    Detail2Cds['DaysName'] := DaysToStr(Detail2Cds['DaysOfOperation']);
end;

procedure TDistancesForm.cxReverseBtnClick(Sender: TObject);
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  if MessageDlg('This might take a while. Are you sure you want to update all reverse distances?',
     mtWarning, [mbYes,mbNo], 0) <> mryes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  MasterCds.First;
  while not (MasterCds.Eof) do
    begin

      x_QueryString := 'EXEC p_AutoFillDistance ' +
        IntToStr(MasterCds['From_Cities_id']) + ', ' +
        IntToStr(MasterCds['To_Cities_id']) + ' ';

      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      MasterCds.Next;
    end;

  MasterCds.First;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;

  ShowMessage('Done');
end;

function TDistancesForm.GetNextOrderNo: integer;
var
  x_QueryString: String;
  x_OrderNo: Integer;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT MAX(COALESCE(OrderNo,0)) as MaxNo FROM CityCrossings ' +
       'WHERE Distances_id =  ' + IntToStr(MasterCds['Distances_id']) + ' ';

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


procedure TDistancesForm.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds['OrderNo'] := GetNextOrderNo;
end;

end.
