unit CentralTaxFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TCentralTaxForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxCountryLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxTaxLCMB: TcxLookupComboBox;
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
    cxGrid1DBBandedTableView1centraltaxes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1taxes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fromrate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1torate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ac: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1non_ac: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1star: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1taxamount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesDs: TDataSource;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    TaxesSds: TSQLDataSet;
    TaxesDsp: TDataSetProvider;
    TaxesCds: TClientDataSet;
    TaxesDs: TDataSource;
    TaxesCdsTaxes_id: TIntegerField;
    TaxesCdsTax: TStringField;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCountryLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxTaxLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  CentralTaxForm: TCentralTaxForm;
  CentralTaxForm_Level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCentralTaxForm.FormCreate(Sender: TObject);
begin

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;

  inherited;

  CountriesCds.Open;
  TaxesCds.Open;
  UsersCds.Open;

end;

procedure TCentralTaxForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCentralTaxForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CentralTaxForm := nil;
end;

procedure TCentralTaxForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CentralTaxes';
  Custom_MasterKeyField := 'CentralTaxes_id';
  Custom_AdmLevel := CentralTaxForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TCentralTaxForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCentralTaxForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['Countries_id'] = null) then
    raise Exception.Create('Please select the country');

  if (MasterCds['Taxes_id'] = null) then
    raise Exception.Create('Please select the tax');

  if (MasterCds['Tax'] = null) then
    raise Exception.Create('Please enter the tax (%)');

  if (MasterCds['TaxAmount'] = null) then
    MasterCds['TaxAmount'] := 0.0;

  if (MasterCds['FromRate'] = null) then
    MasterCds['FromRate'] := 0.0;

  if (MasterCds['ToRate'] = null) then
    MasterCds['ToRate'] := 0.0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;
    
  inherited;

  if MasterCds['CentralTaxes_id'] = null then
    raise Exception.Create('CentralTaxes_id is not assigned');

end;

function TCentralTaxForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM CentralTaxes ' +
    'WHERE Countries_id = ' + IntToStr(MasterCds['Countries_id']) + ' ' +
    'AND Taxes_id = ' + IntToStr(MasterCds['Taxes_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef'])) + ' ' +
    'AND FromRate = ' + FloatToStr(MasterCds['FromRate']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CentralTaxes_id <> ' + IntToStr(MasterCds['CentralTaxes_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

procedure TCentralTaxForm.FilterData;
var
  x_Countries_id, x_Taxes_id: integer;
begin

  x_Countries_id := -1;
  x_Taxes_id := -1;

  if cxCountryLCMB.EditValue <> null then
    x_Countries_id := cxCountryLCMB.EditValue;

  if cxTaxLCMB.EditValue <> null then
    x_Taxes_id := cxTaxLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Taxes_id;
  MasterSds.Params[1].Value := x_Countries_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;



procedure TCentralTaxForm.cxCountryLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCentralTaxForm.cxTaxLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCentralTaxForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxCountryLCMB.EditValue = null then
    exit;

  if cxTaxLCMB.EditValue = null then
    exit;

  MasterCds['Countries_id'] := cxCountryLCMB.EditValue;
  MasterCds['Taxes_id'] := cxTaxLCMB.EditValue;
  MasterCds['ac'] := false;
  MasterCds['non_ac'] := false;
  MasterCds['FromRate'] := 0.0;
  MasterCds['ToRate'] := 0.0;
  MasterCds['TaxAmount'] := 0.0;

end;

end.
