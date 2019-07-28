unit ImageCategoriesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls;

type
  TImageCategoriesForm = class(TCustom_1MG_Form)
    MasterCdsimagecategories_id: TIntegerField;
    MasterCdsimagecategory: TStringField;
    cxGrid1DBBandedTableView1imagecategories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1imagecategory: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  ImageCategoriesForm: TImageCategoriesForm;
  ImageCategoriesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TImageCategoriesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;
end;

procedure TImageCategoriesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TImageCategoriesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ImageCategoriesForm := nil;
end;

procedure TImageCategoriesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ImageCategories';
  Custom_MasterKeyField := 'ImageCategories_id';
  Custom_AdmLevel := ImageCategoriesForm_Level;

  Custom_FormWidth := 480;
  Custom_FormHeight := 485;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TImageCategoriesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TImageCategoriesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['ImageCategory'] = null) or (Trim(MasterCds['ImageCategory']) = '') then
    raise Exception.Create('Please enter the Image Category');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  // the key field here in auto increment

//  inherited;

//  if MasterCds['ImageCategories_id'] = null then
//    raise Exception.Create('ImageCategories_id is not assigned');

end;

function TImageCategoriesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ImageCategories ' +
    'WHERE ImageCategory = ' + QuotedStr(Trim(MasterCds['ImageCategory'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ImageCategories_id <> ' + IntToStr(MasterCds['ImageCategories_id']) + ') ';

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


procedure TImageCategoriesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  // the key field here in auto increment
  MasterCds.Close;
  MasterCds.Open;
end;

end.
