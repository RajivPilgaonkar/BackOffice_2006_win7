unit AccountHeadsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DB, StdCtrls, DBClient, Provider, SqlExpr,
  ExtCtrls, Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxDBLookupComboBox, cxContainer, cxLabel, cxDBLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox;

type
  TAccountHeadsForm = class(TCustom1M1DForm)
    GroupBox1: TcxGroupBox;
    GroupBox2: TcxGroupBox;
    MasterCdsfolios_id: TIntegerField;
    MasterCdsfolio: TStringField;
    MasterCdsfoliocategories_id: TIntegerField;
    BitBtn1: TBitBtn;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    CustomMasterCxGridDBTableView1folio: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1foliocategories_id: TcxGridDBColumn;
    Detail1Cdsaccountheads_id: TIntegerField;
    Detail1Cdsaccountheadsno: TIntegerField;
    Detail1Cdsdescription: TStringField;
    Detail1Cdsfolios_id: TIntegerField;
    Detail1Cdscompanies_id: TIntegerField;
    Detail1Cdsaddressbook_id: TIntegerField;
    Detail1Cdsactive: TBooleanField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1accountheadsno: TcxGridDBColumn;
    cxGridDBTableView1description: TcxGridDBColumn;
    cxGridDBTableView1addressbook_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1folios_id: TcxGridDBColumn;
    cxLabel: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountHeadsForm: TAccountHeadsForm;
  _AccountHeadsForm_Level: integer;
  _AccountHeadsForm_CompanyID: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TAccountHeadsForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'Folios';
  MasterKeyField := '';

  Detail1CdsName := 'AccountHeads';
  Detail1KeyField := 'AccountHeads_id';

  Detail1Cds.Filter := 'Companies_id = ' + IntToStr(_AccountHeadsForm_CompanyID);
  Detail1Cds.Filtered := True;

  AdmLevel := _AccountHeadsForm_Level;
  inherited;

  BackOfficeDataModule.FolioCatSds.Active := True;
  BackOfficeDataModule.FolioCatCds.Active := True;

  BackOfficeDataModule.OrgContactSds.Active := True;
  BackOfficeDataModule.OrgContactCds.Active := True;

  // Enter company name here -- since details get filled only for selected company in login screen
  cxLabel.Caption := '';

end;

procedure TAccountHeadsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AccountHeadsForm := nil;
end;

procedure TAccountHeadsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Folio'] = null) or (Trim(MasterCds['Folio']) = '') then
    raise Exception.Create('Please enter the Folio.');

  if (MasterCds['FolioCategories_id'] = null) then
    raise Exception.Create('Please enter the Folio Category');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

procedure TAccountHeadsForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['Companies_id'] := _AccountHeadsForm_CompanyID;
end;

procedure TAccountHeadsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Detail1Cds['AccountHeadsNo'] = null) then
    raise Exception.Create('Please enter the Account Head');

  if (Detail1Cds['Description'] = null) or (Trim(Detail1Cds['Description']) = '') then
    raise Exception.Create('Please enter the Description');

  if (Detail1Cds['Folios_id'] = null) then
    raise Exception.Create('Please select a Folio');

  if (Detail1Cds['Companies_id'] = null) then
    raise Exception.Create('Please select a Company');

//  if (Detail1Cds['Addressbook_id'] = null) then
//    raise Exception.Create('Please enter a company/contact');

  if (IsDetail1RecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  Detail1Cds['Active']:= True;

end;

function TAccountHeadsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Folios ' +
    'WHERE Folio = ''' + MasterCds['Folio'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Folios_id <> ' + IntToStr(MasterCds['Folios_id']) + ') ';

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

function TAccountHeadsForm.IsDetail1RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM AccountHeads ' +
    'WHERE Folios_id = ' + IntToStr(Detail1Cds['Folios_id']) + ' ' +
    'AND AccountHeadsNo = ' + IntToStr(Detail1Cds['AccountHeadsNo']) + ' ' +
    'AND Companies_id = ' + IntToStr(Detail1Cds['Companies_id']) + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (AccountHeads_id <> ' + IntToStr(Detail1Cds['AccountHeads_id']) + ') ';

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
