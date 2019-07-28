unit FixedItinCloseDatesFm;

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
  TFixedItinCloseDatesForm = class(TCustomMasterCxGridForm)
    MasterCdsFixedItinCloseDates_id: TIntegerField;
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsFromDate: TSQLTimeStampField;
    MasterCdsToDate: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1FixedItinCloseDates_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromDate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToDate: TcxGridDBColumn;
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
  FixedItinCloseDatesForm: TFixedItinCloseDatesForm;
  _FixedItinCloseDatesForm_Level: Integer;
  _FixedItinCloseDatesForm_FixedItin_id: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TFixedItinCloseDatesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'FixedItinCloseDates';
  MasterKeyField := 'FixedItinCloseDates_id';

  AdmLevel := _FixedItinCloseDatesForm_Level;

  MasterSds.Active := False;
  MasterSds.Params[0].Value := _FixedItinCloseDatesForm_FixedItin_id;
  MasterSds.Active := True;

  inherited;

end;

procedure TFixedItinCloseDatesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FixedItinCloseDatesForm := nil;
end;

procedure TFixedItinCloseDatesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if _FixedItinCloseDatesForm_FixedItin_id = null then
    raise exception.create ('Please select an itinerary');

  if _FixedItinCloseDatesForm_FixedItin_id <> null then
    MasterCds['FixedItin_id'] := _FixedItinCloseDatesForm_FixedItin_id;

  if (MasterCds['FromDate'] = null) then
    raise Exception.Create('Please enter the "From Date"');

  if (MasterCds['ToDate'] = null) then
    raise Exception.Create('Please enter the "To Date"');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TFixedItinCloseDatesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM FixeditinCloseDates ' +
    'WHERE FixedItin_id = ' + IntToStr(_FixedItinCloseDatesForm_FixedItin_id) + ' ' +
    'AND FromDate = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['FromDate']) + ''' ' +
    'AND ToDate = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['ToDate']) + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (FixeditinCloseDates_id <> ' + IntToStr(MasterCds['FixeditinCloseDates_id']) + ') ';

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

