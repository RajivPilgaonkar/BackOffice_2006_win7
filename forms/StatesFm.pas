unit StatesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxControls, cxSplitter, DBClient, DB,
  Provider, SqlExpr, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, DBCtrls, cxDBLookupComboBox, Buttons,
  cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxContainer, cxGroupBox, cxTextEdit, cxMemo, cxDBEdit, cxPC;

type
  TStatesForm = class(TCustom1M1DForm)
    Panel3: TPanel;
    cxSplitter1: TcxSplitter;
    Panel4: TPanel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    CustomMasterCxGridDBTableView1statecode: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1state: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1printstate: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Detail1Cdsstatetaxes_id: TIntegerField;
    Detail1Cdswef: TSQLTimeStampField;
    Detail1Cdstax: TBCDField;
    Detail1Cdstaxes_id: TIntegerField;
    Detail1Cdsac: TBooleanField;
    Detail1Cdsnonac: TBooleanField;
    Detail1Cdsfromrate: TBCDField;
    Detail1Cdstorate: TBCDField;
    Detail1Cdspublishedrate: TBooleanField;
    Detail1Cdsstates_id: TIntegerField;
    Detail1Cdsstar: TIntegerField;
    cxGridDBTableView1wef: TcxGridDBColumn;
    cxGridDBTableView1taxes_id: TcxGridDBColumn;
    cxGridDBTableView1ac: TcxGridDBColumn;
    cxGridDBTableView1nonac: TcxGridDBColumn;
    cxGridDBTableView1fromrate: TcxGridDBColumn;
    cxGridDBTableView1torate: TcxGridDBColumn;
    cxGridDBTableView1publishedrate: TcxGridDBColumn;
    cxGridDBTableView1states_id: TcxGridDBColumn;
    cxGridDBTableView1star: TcxGridDBColumn;
    KeyIdDbText: TDBText;
    CloseBtn: TBitBtn;
    CustomMasterCxGridDBTableView1Countries_id: TcxGridDBColumn;
    MasterCdsstatecode: TStringField;
    MasterCdsstate: TStringField;
    MasterCdsstates_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsprintstate: TBooleanField;
    MasterCdsoneliner: TStringField;
    MasterCdsgeneralinfo: TMemoField;
    MasterCdsWebWriteUp: TMemoField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    MasterCdswriteup: TMemoField;
    MasterCdsCentralCities_id: TIntegerField;
    CustomMasterCxGridDBTableView1CentralCities_id: TcxGridDBColumn;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesDS: TDataSource;
    CitiesCdsStates_id: TIntegerField;
    cxTabSheet5: TcxTabSheet;
    MasterCdsurl: TStringField;
    cxDBMemo5: TcxDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    MasterCdsDisplay: TBooleanField;
    CustomMasterCxGridDBTableView1Display: TcxGridDBColumn;
    MasterCdsMeta_Descr: TMemoField;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Keywords: TStringField;
    MasterCdstextX: TIntegerField;
    MasterCdstextY: TIntegerField;
    MasterCdspath: TMemoField;
    MasterCdscode: TStringField;
    CustomMasterCxGridDBTableView1TextX: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TextY: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Code: TcxGridDBColumn;
    cxTabSheet6: TcxTabSheet;
    cxDBMemo6: TcxDBMemo;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ModifiedOn: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatesForm: TStatesForm;
  _StatesForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TStatesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'States';
  MasterKeyField := 'States_id';

  Detail1CdsName := 'StateTaxes';
  Detail1KeyField := 'StateTaxes_id';

  AdmLevel := _StatesForm_Level;
  inherited;

  BackOfficeDataModule.TaxSds.Active := False;
  BackOfficeDataModule.TaxCds.Active := False;

  BackOfficeDataModule.TaxSds.Active := True;
  BackOfficeDataModule.TaxCds.Active := True;

  BackOfficeDataModule.CountriesSds.Active := False;
  BackOfficeDataModule.CountriesCds.Active := False;

  BackOfficeDataModule.CountriesSds.Active := True;
  BackOfficeDataModule.CountriesCds.Active := True;

  CitiesCds.Active := True;
  UsersCds.Open;

end;

procedure TStatesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  StatesForm := nil;
end;

procedure TStatesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['PrintState'] := True;
  MasterCds['Display'] := True;  
end;

procedure TStatesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['State'] = null) or (Trim(MasterCds['State']) = '') then
    raise Exception.Create('Please enter the State.');

  if (MasterCds['Countries_id'] = null) or (Trim(MasterCds['Countries_id']) = '') then
    raise Exception.Create('Please select the Country');

  if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
    MasterCds['url'] := GetUrlString(MasterCds['State']);

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;
  
end;

procedure TStatesForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['AC'] := True;
  Detail1Cds['NonAC'] := True;
  Detail1Cds['PublishedRate'] := True;
  Detail1Cds['FromRate'] := 0;
  Detail1Cds['ToRate'] := 999999;
  Detail1Cds['Star'] := 123450;
end;

procedure TStatesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Detail1Cds['States_id'] = null) then
    raise Exception.Create('Please select the State');

  if (Detail1Cds['Taxes_id'] = null) then
    raise Exception.Create('Please select the Tax Type');

  if (Detail1Cds['Wef'] = null) then
   raise Exception.Create('Please enter the Wef');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

procedure TStatesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
Var
  DelQry: TSQLQuery;
begin
  inherited;
  DelQry := TSQLQuery.Create(nil);
  DelQry.SQLConnection := BackOfficeDataModule.SQLConnection;
  DelQry.Close;
  DelQry.SQL.Clear;
  DelQry.SQL.Add('SELECT * FROM StateTaxes WHERE States_id = ' + IntToStr(MasterCdsstates_id.Value) );
  If DelQry.RecordCount >0 then
    raise Exception.Create('Taxes exist for the State. You Can not delete the record!')

  else
  begin
    if MessageDlg('Are you sure you want to delete ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DelQry.Close;
      DelQry.SQL.Clear;
      DelQry.SQL.Add('DELETE FROM States WHERE States_id= ' + IntToStr(MasterCdsstates_id.Value));
      DelQry.ExecSQL;
    end
    else
    Abort;
  end;
  DelQry.Free;
end;

function TStatesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM States ' +
    'WHERE State = ''' + MasterCds['State'] + ''' ' +
    'AND Countries_id = ' + IntToStr(MasterCds['Countries_id']);

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (States_id <> ' + IntToStr(MasterCds['States_id']) + ') ';

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

function TStatesForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM StateTaxes ' +
    'WHERE States_id = ' + IntToStr(Detail1Cds['States_id']) + ' ' +
    'AND Taxes_id = ' + IntToStr(Detail1Cds['Taxes_id']) + ' ' +
    'AND wef = ''' + FormatDateTime('mm/dd/yyyy',Detail1Cds['wef']) + ''' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (StateTaxes_id <> ' + IntToStr(Detail1Cds['StateTaxes_id']) + ') ';

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


end.
