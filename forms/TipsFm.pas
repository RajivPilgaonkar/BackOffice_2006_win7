unit TipsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox;

type
  TTipsForm = class(TCustomMasterCxGridForm)
    CustomMasterCxGridDBTableView1tip: TcxGridDBColumn;
    MasterCdsTips_id: TIntegerField;
    MasterCdsTip: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TipsForm: TTipsForm;
  _TipsForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TTipsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'Tips';
  MasterKeyField := 'Tips_id';
  AdmLevel := _TipsForm_Level;
  inherited;

end;

procedure TTipsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TipsForm := nil;
end;

procedure TTipsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Tip'] = null) or (Trim(MasterCds['Tip']) = '') then
    raise Exception.Create('Please enter the Tip.');

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TTipsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Tips ' +
    'WHERE Tip = ' + QuotedStr(MasterCds['Tip']);

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Tips_id <> ' + IntToStr(MasterCds['Tips_id']) + ') ';

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
