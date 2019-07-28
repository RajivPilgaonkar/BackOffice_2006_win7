unit HopExceptionsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, cxButtons, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit, cxLabel,
  cxContainer, cxGroupBox;

type
  THopExceptionsForm = class(TCustomMasterCxGridForm)
    MasterCdsHopExceptions_id: TIntegerField;
    MasterCdsFromCities_id: TIntegerField;
    MasterCdsToCities_id: TIntegerField;
    MasterCdsHops: TIntegerField;
    CustomMasterCxGridDBTableView1HopExceptions_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Hops: TcxGridDBColumn;
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
  HopExceptionsForm: THopExceptionsForm;
  _HopExceptionsForm_Level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure THopExceptionsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'HopExceptions';
  MasterKeyField := 'HopExceptions_id';
  AdmLevel := _HopExceptionsForm_Level;
  inherited;

  BackOfficeDataModule.CitiesCds.Open;

end;

procedure THopExceptionsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  HopExceptionsForm := nil;
end;

procedure THopExceptionsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['FromCities_id'] = null) then
    raise Exception.Create('Please enter the "From City"');

  if (MasterCds['ToCities_id'] = null) then
    raise Exception.Create('Please enter the "To City"');

  if (MasterCds['Hops'] = null) then
    raise Exception.Create('Please enter the "Hops"');

//  if (IsRecordDuplicate) then
//    raise exception.create ('Duplicate Record found');

end;

function THopExceptionsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TicketExceptions ' +
    'WHERE Tickets_id = ' + IntToStr(masterCds['Tickets_id']) + ' ' +
    'AND TrainNo = ''' + MasterCds['TrainNo'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (TicketExceptions_id <> ' + IntToStr(MasterCds['TicketExceptions_id']) + ') ';

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
