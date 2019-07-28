unit TicketClassExceptionsFm;

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
  TTicketClassExceptionsForm = class(TCustomMasterCxGridForm)
    MasterCdsTicketClassExceptions_id: TIntegerField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsTrainNo: TStringField;
    MasterCdsClass_id: TIntegerField;
    CustomMasterCxGridDBTableView1TicketClassExceptions_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Tickets_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TrainNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn;
    ClassSds: TSQLDataSet;
    ClassDsp: TDataSetProvider;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDs: TDataSource;
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
  TicketClassExceptionsForm: TTicketClassExceptionsForm;
  _TicketClassExceptionsForm_Level: integer;
  _TicketClassExceptionsForm_Tickets_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TTicketClassExceptionsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'TicketClassExceptions';
  MasterKeyField := 'TicketClassExceptions_id';
  AdmLevel := _TicketClassExceptionsForm_Level;
  inherited;

  ClassCds.Open;

end;

procedure TTicketClassExceptionsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TicketClassExceptionsForm := nil;
end;

procedure TTicketClassExceptionsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['TrainNo'] = null) then
    raise Exception.Create('Please enter the Train No');

  if (MasterCds['Class_id'] = null) then
    raise Exception.Create('Please enter the Class');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TTicketClassExceptionsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TicketClassExceptions ' +
    'WHERE Tickets_id = ' + IntToStr(masterCds['Tickets_id']) + ' ' +
    'AND TrainNo = ''' + MasterCds['TrainNo'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (TicketClassExceptions_id <> ' + IntToStr(MasterCds['TicketClassExceptions_id']) + ') ';

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



procedure TTicketClassExceptionsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Tickets_id'] := _TicketClassExceptionsForm_Tickets_id;
end;

end.
