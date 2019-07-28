unit PackageItinerariesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, cxMemo, cxDBEdit, cxDBLabel;

type
  TPackageItinerariesForm = class(TCustomMasterCxGridForm)
    MasterCdsPackageItineraries_id: TIntegerField;
    MasterCdsPackages_id: TIntegerField;
    MasterCdsDayNo: TIntegerField;
    MasterCdsCity: TStringField;
    MasterCdsHotel: TStringField;
    CustomMasterCxGridDBTableView1PackageItineraries_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Packages_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DayNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1City: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Hotel: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    MasterCdsItinerary: TStringField;
    cxDBLabel1: TcxDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function GetNextDayNo: integer;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PackageItinerariesForm: TPackageItinerariesForm;
  _PackageItinerariesForm_Level: Integer;
  _PackageItinerariesForm_Packages_id: Integer;

implementation

uses BackOfficeDM, PackagesFm;

{$R *.dfm}

procedure TPackageItinerariesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'PackageItineraries';
  MasterKeyField := 'PackageItineraries_id';
  AdmLevel := _PackageItinerariesForm_Level;

  MasterCds.Active := false;
  MasterSds.Active := false;
  MasterSds.Params[0].Value := _PackageItinerariesForm_Packages_id;
  inherited;

end;

procedure TPackageItinerariesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PackageItinerariesForm := nil;
end;

procedure TPackageItinerariesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  MasterCds['Packages_id'] := _PackageItinerariesForm_Packages_id;

  if (MasterCds['DayNo'] = null) then
    raise Exception.Create('Please enter the Day No.');

  if (MasterCds['DayNo'] <= 0) then
    raise Exception.Create('Invalid Day No');

  if (MasterCds['Packages_id'] = null) then
    raise Exception.Create('Please enter the Package');

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;
end;

function TPackageItinerariesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM PackageItineraries ' +
    'WHERE Packages_id = ' + IntToStr(_PackageItinerariesForm_Packages_id) + ' ' +
    'AND DayNo = ' + IntToStr(MasterCds['DayNo']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (PackageItineraries_id <> ' + IntToStr(MasterCds['PackageItineraries_id']) + ') ';

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

function TPackageItinerariesForm.GetNextDayNo: integer;
var
  x_NextDayNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT MAX(COALESCE(DayNo,0)) AS NextDayNo FROM PackageItineraries ' +
    'WHERE Packages_id = ' + IntToStr(_PackageItinerariesForm_Packages_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['NextDayNo'] <> null) then
    x_NextDayNo := GpSds['NextDayNo']+1
  else
    x_NextDayNo := 1;

  GpSds.Free;

  Result := x_NextDayNo;

end;


procedure TPackageItinerariesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['DayNo'] := GetNextDayNo;
end;

procedure TPackageItinerariesForm.FormActivate(Sender: TObject);
begin
  inherited;
  MasterCdsName := 'PackageItineraries';
  MasterKeyField := 'PackageItineraries_id';
  AdmLevel := _PackageItinerariesForm_Level;

end;

end.
