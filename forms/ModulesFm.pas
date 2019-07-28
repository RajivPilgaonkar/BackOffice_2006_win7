unit ModulesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLookAndFeelPainters, FMTBcd, DBClient, Provider, SqlExpr, StdCtrls,
  cxButtons, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxTextEdit, cxLabel, cxContainer, cxGroupBox;

type
  TModulesForm = class(TCustomMasterCxGridForm)
    MasterCdsAdmModules_id: TIntegerField;
    MasterCdsAdmModule: TStringField;
    MasterCdsAdmModuleNo: TIntegerField;
    CustomMasterCxGridDBTableView1AdmModule: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AdmModuleNo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModulesForm: TModulesForm;
  _ModulesForm_Level : Integer;

implementation

uses Math, BackOfficeDM;

{$R *.dfm}

procedure TModulesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'AdmModules';
  MasterKeyField := 'AdmModules_id';
  AdmLevel := _ModulesForm_Level;
  inherited;
end;

procedure TModulesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ModulesForm := nil;
end;

procedure TModulesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (MasterCds['AdmModule'] = null) or (Trim(MasterCds['AdmModule']) = '') then
    raise Exception.Create('Please enter the Module Name.');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TModulesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM AdmModules ' +
    'WHERE AdmModule = ''' + MasterCds['AdmModule'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (AdmModules_id <> ' + IntToStr(MasterCds['AdmModules_id']) + ') ';

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

procedure TModulesForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
