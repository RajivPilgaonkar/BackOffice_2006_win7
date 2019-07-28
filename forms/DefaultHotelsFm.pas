unit DefaultHotelsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, Menus, cxCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxTextEdit, cxLabel,
  cxContainer, cxGroupBox;

type
  TDefaultHotelsForm = class(TCustomMasterCxGridForm)
    MasterCdsDefaultHotels_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsCities_id: TIntegerField;
    MasterCdsDefaultBudget: TBooleanField;
    MasterCdsDefaultModerate: TBooleanField;
    MasterCdsDefaultLuxury: TBooleanField;
    CustomMasterCxGridDBTableView1DefaultHotels_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Addressbook_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DefaultBudget: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DefaultModerate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DefaultLuxury: TcxGridDBColumn;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    HoteDS: TDataSource;
    MasterCdsDefaultSuperior: TBooleanField;
    CustomMasterCxGridDBTableView1DefaultSuperior: TcxGridDBColumn;
    MasterCdsDefaultStandard: TBooleanField;
    MasterCdsDefaultTopOfLine: TBooleanField;
    CustomMasterCxGridDBTableView1DefaultStd: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1DefaultTopOfLine: TcxGridDBColumn;
    MasterCdsDefaultComfortable: TBooleanField;
    CustomMasterCxGridDBTableView1DefaultComfortable: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InsertRecords;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DefaultHotelsForm: TDefaultHotelsForm;
  _DefaultHotelsForm_Level: Integer;
  _DefaultHotelsForm_Cities_id: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TDefaultHotelsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'DefaultHotels';
  MasterKeyField := 'DefaultHotels_id';
  AdmLevel := _DefaultHotelsForm_Level;

  InsertRecords;

  MasterCds.Filter := 'Cities_id = ' + IntToStr(_DefaultHotelsForm_Cities_id);
  MasterCds.Filtered := True;

  HotelSds.Close;
  HotelSds.CommandText := 'select * from dbo.fn_addressbook(2,''H'') ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id);
  HotelSds.Open;

  HotelCds.Close;
  HotelCds.Open;

  inherited;

end;

procedure TDefaultHotelsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  DefaultHotelsForm := nil;
end;

procedure TDefaultHotelsForm.InsertRecords;
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  QueryString := 'INSERT INTO DefaultHotels (Cities_id, Addressbook_id, ' +
    'DefaultBudget, DefaultModerate, DefaultLuxury, DefaultSuperior, DefaultStandard, DefaultTopOfLine, DefaultComfortable) ' +
    'SELECT f.Cities_id, f.Addressbook_id, 0, 0, 0, 0, 0, 0, 0 ' +
    'FROM dbo.fn_addressbook(2,''H'') f ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND NOT EXISTS (SELECT * FROM DefaultHotels dh ' +
    'WHERE dh.Cities_id = f.Cities_id AND dh.Addressbook_id = f.Addressbook_id)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;


procedure TDefaultHotelsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if MasterCds.State = dsEdit then
    MasterCds.Post;
end;

procedure TDefaultHotelsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultBudget = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default budget specified');

  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultModerate = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default moderate specified');


  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultLuxury = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default luxury specified');

  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultSuperior = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default superior specified');


  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultStandard = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default standard specified');


  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultTopOfLine = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default "top of the line" specified');


  QueryString := 'SELECT x_count = COUNT(*) FROM DefaultHotels ' +
    'WHERE Cities_id = ' +  IntToStr(_DefaultHotelsForm_Cities_id) + ' ' +
    'AND DefaultComfortable = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if GpSds['x_count'] > 1 then
    ShowMessage ('More than 1 default comfortable specified');

  GpSds.Free;


end;

end.
