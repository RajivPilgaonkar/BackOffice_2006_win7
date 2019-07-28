unit CategoriesFm;

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
  cxDBLookupComboBox;

type
  TCategoriesForm = class(TCustom_1MG_Form)
    MasterCdscategory: TStringField;
    MasterCdsdescription: TStringField;
    MasterCdscategories_id: TIntegerField;
    MasterCdsOrderNo: TIntegerField;
    cxGrid1DBBandedTableView1Category: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Description: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Categories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    MasterCdsInclHotelReport: TBooleanField;
    cxGrid1DBBandedTableView1InclHotelReport: TcxGridDBBandedColumn;
    MasterCdsOrderHotelReport: TIntegerField;
    cxGrid1DBBandedTableView1OrderHotelReport: TcxGridDBBandedColumn;
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
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  CategoriesForm: TCategoriesForm;
  CategoriesForm_level: integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TCategoriesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;

end;

procedure TCategoriesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCategoriesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CategoriesForm := nil;
end;

procedure TCategoriesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Categories';
  Custom_MasterKeyField := 'Categories_id';
  Custom_AdmLevel := CategoriesForm_level;

  Custom_FormWidth := 710;
  Custom_FormHeight := 580;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TCategoriesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCategoriesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Category'] = null) or (Trim(MasterCds['Category']) = '') then
    raise Exception.Create('Please enter the Category');

  if (MasterCds['Description'] = null) or (Trim(MasterCds['Description']) = '') then
    raise Exception.Create('Please enter the Description');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Categories_id'] = null then
    raise Exception.Create('Categories_id id is not assigned');
end;

function TCategoriesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Categories ' +
    'WHERE Category = ' + QuotedStr(Trim(MasterCds['Category'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Categories_id <> ' + IntToStr(MasterCds['Categories_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;

end;

procedure TCategoriesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['InclHotelReport'] := false;
end;

end.
