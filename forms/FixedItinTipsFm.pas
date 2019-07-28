unit FixedItinTipsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox,
  cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel,
  cxGroupBox, cxMemo, cxDBEdit;

type
  TFixedItinTipsForm = class(TCustomMasterCxGridForm)
    MasterCdsFixedItinTips_id: TIntegerField;
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsTip: TStringField;
    CustomMasterCxGridDBTableView1FixedItinTips_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Tip: TcxGridDBColumn;
    MasterCdsOrderNo: TIntegerField;
    CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn;
    MasterCdsTitle: TStringField;
    CustomMasterCxGridDBTableView1Title: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function NextOrderNo: integer;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixedItinTipsForm: TFixedItinTipsForm;
  _FixedItinTipsForm_Level: Integer;
  _FixedItinTipsForm_FixedItin_id: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TFixedItinTipsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'FixedItinTips';
  MasterKeyField := 'FixedItinTips_id';

  AdmLevel := _FixedItinTipsForm_Level;

  MasterSds.Active := False;
  MasterSds.Params[0].Value := _FixedItinTipsForm_FixedItin_id;
  MasterSds.Active := True;

  inherited;

end;

procedure TFixedItinTipsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FixedItinTipsForm := nil;
end;

procedure TFixedItinTipsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if _FixedItinTipsForm_FixedItin_id = null then
    raise exception.create ('Please select an itinerary');

  if _FixedItinTipsForm_FixedItin_id <> null then
    MasterCds['FixedItin_id'] := _FixedItinTipsForm_FixedItin_id;

  if (MasterCds['Tip'] = null) or (Trim(MasterCds['Tip']) = '') then
    raise Exception.Create('Please enter the Tip');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TFixedItinTipsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM FixeditinTips ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinTipsForm_FixedItin_id) + ' ' +
    'AND Tip = ''' + MasterCds['Tip'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (FixeditinTips_id <> ' + IntToStr(MasterCds['FixedItinTips_id']) + ') ';

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

function TFixedItinTipsForm.NextOrderNo: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_OrderNo: integer;
begin

  QueryString := 'SELECT MAX(COALESCE(OrderNo,0)) AS MaxOrderNo FROM FixedItinTips ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinTipsForm_FixedItin_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_OrderNo := 1;
  if (not GpSds.EOF) and (GpSds['MaxOrderNo'] <> null) then
    x_orderNo := GpSds['MaxOrderNo'] + 1;

  GpSds.Free;

  Result := x_OrderNo;
end;



procedure TFixedItinTipsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['OrderNo'] := NextOrderNo;
end;

end.

