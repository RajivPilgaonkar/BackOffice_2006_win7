unit AccountHeadFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox;

type
  TAccountHeadForm = class(TCustom_1MG_1DG_Form)
    MasterCdsfolios_id: TIntegerField;
    MasterCdsfolio: TStringField;
    MasterCdsfoliocategories_id: TIntegerField;
    DetailCdsaccountheads_id: TIntegerField;
    DetailCdsaccountheadsno: TIntegerField;
    DetailCdsdescription: TStringField;
    DetailCdsfolios_id: TIntegerField;
    DetailCdscompanies_id: TIntegerField;
    DetailCdsaddressbook_id: TIntegerField;
    DetailCdsactive: TBooleanField;
    cxGrid1DBBandedTableView1folios_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1folio: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1foliocategories_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1accountheads_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1accountheadsno: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1description: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1folios_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1companies_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1active: TcxGridDBBandedColumn;
    FolioCategoriesSds: TSQLDataSet;
    FolioCategoriesDsp: TDataSetProvider;
    FolioCategoriesCds: TClientDataSet;
    FolioCategoriesDs: TDataSource;
    FolioCategoriesCdsFolioCategories_id: TIntegerField;
    FolioCategoriesCdsDescription: TStringField;
    AddressbookSds: TSQLDataSet;
    IntegerField5: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    AddressbookDsp: TDataSetProvider;
    AddressbookCds: TClientDataSet;
    AddressbookCdsAddressbook_id: TIntegerField;
    AddressbookCdsOrganisation: TStringField;
    AddressbookCdsCity: TStringField;
    AddressbookDs: TDataSource;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    DetailCdsModifiedByUsers_id: TIntegerField;
    DetailCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
  public
    { Public declarations }
  end;

var
  AccountHeadForm: TAccountHeadForm;
  AccountHeadForm_Level: integer;
  AccountHeadForm_Companies_id: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAccountHeadForm.FormCreate(Sender: TObject);
begin

  Caption := 'Account Heads';
  Top := 90;

  Panel1.Visible := false;
  cxButtonUtilities.Visible := false;

  ActivateInCustom;

  DetailCds.Filter := 'Companies_id = ' + IntToStr(AccountHeadForm_Companies_id);
  DetailCds.Filtered := True;

  inherited;

  FolioCategoriesCds.Open;
  AddressbookCds.Open;
  UsersCds.Open;

end;

procedure TAccountHeadForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAccountHeadForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AccountHeadForm := nil;
end;

procedure TAccountHeadForm.ActivateInCustom;
begin

  Custom_MasterCdsName := 'Folios';
  Custom_MasterKeyField := 'Folios_id';

  Custom_DetailCdsName := 'AccountHeads';
  Custom_DetailKeyField := 'AccountHeads_id';

  Custom_AdmLevel := AccountHeadForm_Level;

  Custom_FormWidth := 860;
  Custom_FormHeight := 670 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

  Top := 90;

end;


procedure TAccountHeadForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAccountHeadForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Folio'] = null) or (Trim(MasterCds['Folio']) = '') then
    raise Exception.Create('Please enter the "Folio"');

  if (MasterCds['FolioCategories_id'] = null) then
    raise Exception.Create('Please enter the FolioCategories_id');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  // get the next id just before posting.
  // this will minimize chances to duplicate ids in a multiuser situation
  // User enters folios_id
  //inherited;

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  if (MasterCds['Folios_id'] = null) then
    raise Exception.Create('Please enter the Folios_id');

end;

procedure TAccountHeadForm.DetailCdsBeforePost(DataSet: TDataSet);
begin

  if (DetailCds['Folios_id'] = null) then
    raise Exception.Create('Please enter the Folios_id');

  if (DetailCds['AccountHeadsNo'] = null) then
    raise Exception.Create('Please enter the "Account Head No"');

  if (DetailCds['Description'] = null) or (trim(DetailCds['Description']) = '') then
    raise Exception.Create('Please enter the "Description"');

  if (DetailCds['Companies_id'] = null) then
    raise Exception.Create('Please enter the Companies_id');

  if IsDetailRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  DetailCds['ModifiedByUsers_id'] := g_users_id;
  DetailCds['ModifiedOn'] := Date;

  // get the next id just before posting.
  // this will minimize chances to duplicate ids in a multiuser situation
  inherited;

  if (DetailCds['AccountHeads_id'] = null) then
    raise Exception.Create('Please enter the AccountHeads_id');

end;

function TAccountHeadForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Folios ' +
    'WHERE Folio = ' + QuotedStr(Trim(MasterCds['Folio'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Folios_id <> ' + IntToStr(MasterCds['Folios_id']) + ') ';

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

function TAccountHeadForm.IsDetailRecordDuplicate: Boolean;
var
  x_duplicate: boolean;
  x_QueryString: string;
  GpSds: TSQLDataSet;  
begin

  x_duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM AccountHeads ' +
    'WHERE AccountHeadsNo = ' + IntToStr(DetailCds['AccountHeadsNo']) + ' ' +
    'AND Companies_id = ' + IntToStr(DetailCds['Companies_id']);

  if DetailCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AccountHeads_id <> ' + IntToStr(DetailCds['AccountHeads_id']) + ') ';

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


procedure TAccountHeadForm.DetailCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DetailCds['Companies_id'] := AccountHeadForm_Companies_id;
end;

end.
