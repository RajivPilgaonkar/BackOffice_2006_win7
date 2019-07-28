unit CostPackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DType1Fm, Menus, cxLookAndFeelPainters, FMTBcd,
  StdCtrls, DBClient, DB, Provider, SqlExpr, cxButtons, ExtCtrls,
  cxGraphics, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox;

type
  TCostPackagesForm = class(TCustom1M1DType1Form)
    Label1: TLabel;
    cxPackageLCMB: TcxLookupComboBox;
    Label2: TLabel;
    cxWefLCMB: TcxLookupComboBox;
    PackageSds: TSQLDataSet;
    PackageDsp: TDataSetProvider;
    PackageCds: TClientDataSet;
    PackageDs: TDataSource;
    PackageCdsPackages_id: TIntegerField;
    PackageCdsPackage: TStringField;
    PackageCdsPackageDescription: TStringField;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefDs: TDataSource;
    WefCdsWef: TSQLTimeStampField;
    WefCdsPackages_id: TIntegerField;
    MasterCdscostpackages_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdswet: TSQLTimeStampField;
    MasterCdscommission: TBCDField;
    MasterCdsavailable: TBooleanField;
    Detail1Cdscostpackagesdetails_id: TIntegerField;
    Detail1Cdscostpackages_id: TIntegerField;
    Detail1Cdsfrompax: TIntegerField;
    Detail1Cdstopax: TIntegerField;
    Detail1Cdscostperperson: TBCDField;
    Detail1Cdscostpergroup: TBCDField;
    Detail1Cdsremarks: TStringField;
    Detail1Cdscurrencies_id: TIntegerField;
    Detail1Cdstourleaderfree: TBooleanField;
    Detail1Cdssinglesupplement: TBCDField;
    Detail1Cdsresident: TSmallintField;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    CostPackageGrid: TcxGrid;
    CostPackageGridDBTableView1: TcxGridDBTableView;
    CostPackageGridLevel1: TcxGridLevel;
    CostPackageDetailsGrid: TcxGrid;
    CostPackageDetailsGridDBTableView1: TcxGridDBTableView;
    CostPackageDetailsGridLevel1: TcxGridLevel;
    CostPackageGridDBTableView1costpackages_id: TcxGridDBColumn;
    CostPackageGridDBTableView1packages_id: TcxGridDBColumn;
    CostPackageGridDBTableView1addressbook_id: TcxGridDBColumn;
    CostPackageGridDBTableView1wef: TcxGridDBColumn;
    CostPackageGridDBTableView1wet: TcxGridDBColumn;
    CostPackageGridDBTableView1commission: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1costpackagesdetails_id: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1costpackages_id: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1frompax: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1topax: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1costperperson: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1costpergroup: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1remarks: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1currencies_id: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1tourleaderfree: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1singlesupplement: TcxGridDBColumn;
    CostPackageDetailsGridDBTableView1resident: TcxGridDBColumn;
    ResidentSds: TSQLDataSet;
    ResidentDsp: TDataSetProvider;
    ResidentCds: TClientDataSet;
    ResidentCdsreq: TStringField;
    ResidentCdsreq_val: TIntegerField;
    ResidentDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    procedure cxPackageLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    function GetDetailCount: integer;
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostPackagesForm: TCostPackagesForm;
  _CostPackagesForm_Level: integer;

implementation

uses BackOfficeDM, GeneralUt;

var
  _CostPackagesForm_NewWef: boolean;
  _CostPackagesForm_Wef: TDateTime;

{$R *.dfm}

procedure TCostPackagesForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'CostPackages';
  MasterKeyField := 'CostPackages_id';
  Detail1CdsName := 'CostPackagesDetails';
  Detail1KeyField := 'CostPackagesDetails_id';

  PackageCds.Open;
  WefCds.Open;
  ResidentCds.Open;

  inherited;

  AdmLevel := _CostPackagesForm_Level;

  BackOfficeDataModule.AgentCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;

  if PackageCds['Packages_id'] <> null then
    cxPackageLCMB.EditValue := PackageCds['Packages_id'];

end;

procedure TCostPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CostPackagesForm := nil;
end;

procedure TCostPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cxPackageLCMB.EditValue = null then
    raise exception.create('Please select a Package');

  MasterCds['Packages_id'] := cxPackageLCMB.EditValue;

  if MasterCds['CostPackages_id'] = null then
    raise exception.create('Enter the CostPackages_id');

  if MasterCds['Packages_id'] = null then
    raise exception.create('Please select a Package');

  if MasterCds['Addressbook_id'] = null then
    raise exception.create('Please enter an Agent');

  if MasterCds['wef'] = null then
    raise exception.create('Please enter wef');

  if MasterCds['commission'] = null then
    MasterCds['commission'] := 0.0;

  if IsRecordDuplicate then
    raise exception.create ('Duplicate Record found');

  _CostPackagesForm_NewWef := true;
  if MasterCds['wef'] <> cxWefLCMB.EditValue then
    begin
      _CostPackagesForm_NewWef := true;
      _CostPackagesForm_Wef := MasterCds['wef'];
      ShowMessage ('The filter will be refreshed as a new wef has been added');
    end;

end;

procedure TCostPackagesForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Detail1Cds['CostPackagesDetails_id'] = null then
    raise exception.create('Enter the CostPackagesDetails_id');

  if Detail1Cds['CostPackages_id'] = null then
    raise exception.create('Please select a Package');

  if Detail1Cds['FromPax'] = null then
    raise exception.create('Please enter "From Pax"');

  if Detail1Cds['ToPax'] = null then
    raise exception.create('Please enter "To Pax"');

  if Detail1Cds['CostPerPerson'] = null then
    Detail1Cds['CostPerPerson'] := 0.0;

  if Detail1Cds['CostPerGroup'] = null then
    Detail1Cds['CostPerGroup'] := 0.0;

  if Detail1Cds['SingleSupplement'] = null then
    Detail1Cds['SingleSupplement'] := 0.0;

  if Detail1Cds['Currencies_id'] = null then
    raise exception.create('Please enter Currency');

  if Detail1Cds['TourLeaderFree'] = null then
    Detail1Cds['TourLeaderFree'] := false;

  if Detail1Cds['Resident'] = null then
    Detail1Cds['Resident'] := 4;

  if IsDetailRecordDuplicate then
    raise exception.create ('Duplicate Record found');


end;

function TCostPackagesForm.IsDetailRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CostPackagesDetails ' +
    'WHERE CostPackages_id = ' + IntToStr(Detail1Cds['CostPackages_id']) + ' ' +
    'AND FromPax = ' + IntToStr(Detail1Cds['FromPax']) + ' ' +
    'AND Currencies_id = ' + IntToStr(Detail1Cds['Currencies_id']) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (CostPackagesDetails_id <> ' + IntToStr(MasterCds['CostPackagesDetails_id']) + ') ';

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



function TCostPackagesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CostPackages ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND wef = ''' + FormatDateTime('mm/dd/yyyy',MasterCds['wef']) + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (CostPackages_id <> ' + IntToStr(MasterCds['CostPackages_id']) + ') ';

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



procedure TCostPackagesForm.cxPackageLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if cxPackageLcmb.EditValue <> null then
      begin
        PackageCds.Locate('Packages_id',cxPackageLcmb.EditValue,[]);
        if WefCds['Wef'] <> null then
          cxWefLCMB.EditValue := WefCds['Wef'];
      end;
  except
  end;

end;

procedure TCostPackagesForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if cxWefLcmb.EditValue <> null then
      begin
        WefCds.Locate('wef',cxWefLcmb.EditValue,[]);
      end;
  except
  end;

end;

procedure TCostPackagesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  if _CostPackagesForm_NewWef = true then
    begin
      WefCds.Close;
      WefCds.Open;
      WefCds.Locate('wef', _CostPackagesForm_Wef, []);
      cxWefLcmb.EditValue := FormatDateTime('dd/mm/yyyy',WefCds['Wef']);
    end;
end;

procedure TCostPackagesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GetDetailCount > 0 then
    raise exception.create ('Details present. Cannot delete.');
end;

function TCostPackagesForm.GetDetailCount: integer;
var
  QueryString: string;
  x_count: integer;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM CostPackagesDetails ' +
    'WHERE CostPackages_id = ' + IntToStr(Detail1Cds['CostPackages_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


procedure TCostPackagesForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['Currencies_id'] := GetDefaultCurrency;
  Detail1Cds['TourLeaderFree'] := false;
  Detail1Cds['Resident'] := 4;  
end;

procedure TCostPackagesForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'CostPackages';
  MasterKeyField := 'CostPackages_id';
  Detail1CdsName := 'CostPackagesDetails';
  Detail1KeyField := 'CostPackagesDetails_id';
  
  AdmLevel := _CostPackagesForm_Level;

end;

end.
