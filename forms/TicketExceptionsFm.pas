unit TicketExceptionsFm;

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
  TTicketExceptionsForm = class(TCustomMasterCxGridForm)
    MasterCdsTicketExceptions_id: TIntegerField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsTrainNo: TStringField;
    CustomMasterCxGridDBTableView1TicketExceptions_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Tickets_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TrainNo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TicketExceptionsForm: TTicketExceptionsForm;
  _TicketExceptionsForm_Level: integer;
  _TicketExceptionsForm_Tickets_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TTicketExceptionsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'TicketExceptions';
  MasterKeyField := 'TicketExceptions_id';
  AdmLevel := _TicketExceptionsForm_Level;
  inherited;

end;

procedure TTicketExceptionsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TicketExceptionsForm := nil;
end;

procedure TTicketExceptionsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['TrainNo'] = null) then
    raise Exception.Create('Please enter the Train No');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TTicketExceptionsForm.IsRecordDuplicate: Boolean;
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



procedure TTicketExceptionsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Tickets_id'] := _TicketExceptionsForm_Tickets_id;
end;

end.
