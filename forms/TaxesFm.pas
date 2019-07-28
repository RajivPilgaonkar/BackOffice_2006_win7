unit TaxesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons, Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox;

type
  TTaxesForm = class(TCustomMasterCxGridForm)
    MasterCdstaxes_id: TIntegerField;
    MasterCdstax: TStringField;
    CustomMasterCxGridDBTableView1tax: TcxGridDBColumn;
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
  TaxesForm: TTaxesForm;
  _TaxesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TTaxesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'Taxes';
  MasterKeyField := 'Taxes_id';
  AdmLevel := _TaxesForm_Level;
  inherited;

end;

procedure TTaxesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TaxesForm := nil;
end;

function TTaxesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Taxes ' +
    'WHERE Tax = ''' + MasterCds['Tax'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Taxes_id <> ' + IntToStr(MasterCds['Taxes_id']) + ') ';

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



procedure TTaxesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Tax'] = null) or (Trim(MasterCds['Tax']) = '') then
   raise Exception.Create('Please enter the Tax.');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');


end;

end.
