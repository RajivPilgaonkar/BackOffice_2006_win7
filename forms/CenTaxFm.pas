unit CenTaxFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit;

type
  TCentralTaxesForm = class(TCustomMasterCxGridForm)
    CustomMasterCxGridDBTableView1wef: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1tax: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1fromrate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1torate: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ac: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1non_ac: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1star: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1taxamount: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1wet: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    CustomMasterCxGridDBTableView1taxes_id: TcxGridDBColumn;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesCdscountries_id: TIntegerField;
    CountriesCdscountry: TStringField;
    CountriesDS: TDataSource;
    cxCountryLCMB: TcxLookupComboBox;
    MasterCdscentraltaxes_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdstax: TBCDField;
    MasterCdstaxes_id: TIntegerField;
    MasterCdsfromrate: TBCDField;
    MasterCdstorate: TBCDField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsac: TBooleanField;
    MasterCdsnon_ac: TBooleanField;
    MasterCdsstar: TIntegerField;
    MasterCdstaxamount: TBCDField;
    MasterCdswet: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure cxCountryLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CentralTaxesForm: TCentralTaxesForm;
  _CentralTaxesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCentralTaxesForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'CentralTaxes';
  MasterKeyField := 'CentralTaxes_id';

  AdmLevel := _CentralTaxesForm_Level;

  CountriesCds.Active := False;
  CountriesCds.Active := True;

  inherited;

  BackOfficeDataModule.TaxSds.Active := False;
  BackOfficeDataModule.TaxCds.Active := False;

  BackOfficeDataModule.TaxSds.Active := True;
  BackOfficeDataModule.TaxCds.Active := True;

  cxCountryLCMB.EditValue := CountriesCdsCountries_id.Value;

end;

procedure TCentralTaxesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CentralTaxesForm := nil;

end;

procedure TCentralTaxesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cxCountryLcmb.EditValue <> null then
    MasterCds['Countries_id'] := cxCountryLcmb.EditValue;

  if (MasterCds['Countries_id'] = null) then
    raise Exception.Create('Please select the Country');

  if (MasterCds['Taxes_id'] = null) then
    raise Exception.Create('Please select the Tax');

  if (MasterCds['Wef'] = null) then
   raise Exception.Create('Please enter the Wef');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

procedure TCentralTaxesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['FromRate'] := 0;
  MasterCds['ToRate'] := 0;
  MasterCds['Star'] := 0;
  MasterCds['TaxAmount'] := 0;
end;

function TCentralTaxesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CentralTaxes ' +
    'WHERE Taxes_id = ' + IntToStr(MasterCds['Taxes_id']) + ' ' +
    'AND Countries_id = ' + IntToStr(MasterCds['Countries_id']) + ' ' +
    'AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (CentralTaxes_id <> ' + IntToStr(MasterCds['CentralTaxes_id']) + ') ';

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



procedure TCentralTaxesForm.cxCountryLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if CxCountryLCMB.EditValue <> null then
      CountriesCds.Locate('Countries_id',CxCountryLCMB.EditValue,[]);
  except
  end;

end;

end.
