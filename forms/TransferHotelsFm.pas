unit TransferHotelsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBCtrls, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, cxDBLookupComboBox;

type
  TTransferHotelsForm = class(TCustomMasterCxGridForm)
    MasterCdsTransferHotels_id: TIntegerField;
    MasterCdsServices_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    CustomMasterCxGridDBTableView1TransferHotels_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Services_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Addressbook_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferHotelsForm: TTransferHotelsForm;
  _TransferHotelsForm_Services_id: Integer;
  _TransferHotelsForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TTransferHotelsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'TransferHotels';
  MasterKeyField := 'TransferHotels_id';
  AdmLevel := _TransferHotelsForm_Level;

  BackOfficeDataModule.HotelCds.Open;

  MasterCds.Close;
  MasterSds.Close;
  MasterSds.Params[0].Value := _TransferHotelsForm_Services_id;
  MasterSds.Open;
  MasterCds.Open;

  inherited;

end;

procedure TTransferHotelsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Services_id'] = null) then
    raise Exception.Create('Please enter the transfer');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the hotel');

  if (MasterCds['TransferHotels_id'] = null) then
    raise Exception.Create('Please enter the TransferHotels_id');

 if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TTransferHotelsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM TransferHotels ' +
    'WHERE Services_id = ' + IntToStr(_TransferHotelsForm_Services_id) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']);

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (TransferHotels_id <> ' + IntToStr(MasterCds['TransferHotels_id']) + ') ';

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


procedure TTransferHotelsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Services_id'] := _TransferHotelsForm_Services_id;
end;

end.
