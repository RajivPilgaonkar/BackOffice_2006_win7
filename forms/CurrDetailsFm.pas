unit CurrDetailsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, Menus, cxTextEdit, cxLabel, cxContainer, cxGroupBox;

type
  TCurrencyDetailsForm = class(TCustomMasterCxGridForm)
    MasterCdscurrencydetails_id: TIntegerField;
    MasterCdsexchangerate: TBCDField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    CustomMasterCxGridDBTableView1exchangerate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1currencies_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1countries_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CurrencyDetailsForm: TCurrencyDetailsForm;
  _CurrencyDetailsForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCurrencyDetailsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'CurrencyDetails';
  MasterKeyField := 'CurrencyDetails_id';
  AdmLevel := _CurrencyDetailsForm_Level;
  inherited;

  BackOfficeDataModule.CountriesSds.Active := False;
  BackOfficeDataModule.CountriesCds.Active := False;

  BackOfficeDataModule.CountriesSds.Active := True;
  BackOfficeDataModule.CountriesCds.Active := True;

  BackOfficeDataModule.CurrenciesSds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active := False;

  BackOfficeDataModule.CurrenciesSds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;
end;

procedure TCurrencyDetailsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CurrencyDetailsForm := nil;
end;

procedure TCurrencyDetailsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['countries_id'] = Null then
    raise Exception.Create ('Please select the Country');

  if MasterCds['currencies_id'] = Null then
    raise Exception.Create ('Please select the Currency');

  if MasterCds['wef'] = Null or (Trim(MasterCds['wef']) = '') then
    raise Exception.Create ('Please enter the Wef Date');

  if (MasterCds['exchangerate'] <= 0) or (MasterCds['exchangerate'] = Null) then
    raise Exception.Create ('Invalid exchange rate');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

procedure TCurrencyDetailsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCDS['wef'] := Date;
  MasterCDS['exchangerate'] := 1.0;
end;

function TCurrencyDetailsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CurrencyDetails ' +
    'WHERE Countries_id = ' + IntToStr(MasterCds['Countries_id']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ' +
    'AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ';    

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (CurrencyDetails_id <> ' + IntToStr(MasterCds['CurrencyDetails_id']) + ') ';

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
