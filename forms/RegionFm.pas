unit RegionFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxSplitter, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxDBEdit,
  cxTextEdit, cxMemo, cxDBLookupComboBox;

type
  TRegionForm = class(TCustom_1MG_Form)
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Splitter1: TSplitter;
    MasterCdsRegions_id: TIntegerField;
    MasterCdsTitle: TStringField;
    MasterCdsOneLiner: TStringField;
    MasterCdsIntroduction: TMemoField;
    MasterCdsRegion: TMemoField;
    MasterCdsOrderNo: TIntegerField;
    MasterCdsurl: TStringField;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGrid1DBBandedTableView1Regions_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBMemo11: TcxDBMemo;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    MasterCdsMeta_Descr: TMemoField;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Keywords: TStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function GetNextOrderNo: Integer;
  end;

var
  RegionForm: TRegionForm;
  RegionForm_Level: Integer;
  
implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TRegionForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

  cxPageControl2.ActivePageIndex := 0;

end;

procedure TRegionForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRegionForm.FormDestroy(Sender: TObject);
begin
  inherited;
  RegionForm := nil;
end;

procedure TRegionForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Regions';
  Custom_MasterKeyField := 'Regions_id';
  Custom_AdmLevel := RegionForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TRegionForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TRegionForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Title'] = null) or (Trim(MasterCds['Title']) = '') then
    raise Exception.Create('Please enter the Title.');

  if (MasterCds['Url'] = null) or (trim(MasterCds['Url']) = '') then
    MasterCds['Url'] := GetUrlString(MasterCds['Title']);

  if MasterCds['OrderNo'] = null then
    raise Exception.Create('Please enter the Order No.');

  if (IsMasterRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Regions_id'] = null then
    raise Exception.Create('Regions_id is is not assigned');
end;

function TRegionForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Regions ' +
    'WHERE Title = ' + QuotedStr(Trim(MasterCds['Title'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Regions_id <> ' + IntToStr(MasterCds['Regions_id']) + ') ';

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

function TRegionForm.GetNextOrderNo: Integer;
var
  x_QueryString: string;
  x_Result: Integer;
  GpSds: TSQLDataSet;
begin
  x_Result := 0;
  x_QueryString := 'SELECT COALESCE(MAX(OrderNo),0) + 1 OrderNo FROM Regions';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['OrderNo'] > 0) then
    x_Result := GpSds['OrderNo'];
  GpSds.Free;
  Result := x_Result;
end;

procedure TRegionForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['OrderNo'] := GetNextOrderNo;
end;

end.
