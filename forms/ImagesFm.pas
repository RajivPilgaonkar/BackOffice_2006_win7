unit ImagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox,
  cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel,
  cxGroupBox;

type
  TImagesForm = class(TCustomMasterCxGridForm)
    GroupBox2: TcxGroupBox;
    MasterCdsimages_id: TIntegerField;
    MasterCdsImageName: TStringField;
    MasterCdsWidth: TIntegerField;
    MasterCdsHeight: TIntegerField;
    MasterCdsCategory: TStringField;
    MasterCdsTitle: TStringField;
    MasterCdsAltTag: TStringField;
    MasterCdsSrNo: TIntegerField;
    CustomMasterCxGridDBTableView1images_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ImageName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Width: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Height: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Title: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1AltTag: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1SrNo: TcxGridDBColumn;
    cxCategoryCMB: TcxComboBox;
    MasterCdsImageCategories_id: TIntegerField;
    MasterCdsFileSize: TIntegerField;
    MasterCdsType: TStringField;
    MasterCdsImageObjectId: TIntegerField;
    MasterCdsImageTypes_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure cxCategoryCMBPropertiesEditValueChanged(Sender: TObject);
    function GetMaxSrNo: integer;
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImagesForm: TImagesForm;
  _ImagesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TImagesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'Images';
  MasterKeyField := 'Images_id';

  AdmLevel := _ImagesForm_Level;

  inherited;

  cxCategoryCMB.EditValue := cxCategoryCMB.Properties.Items[0];

end;

procedure TImagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ImagesForm := nil;
end;

procedure TImagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if cxCategoryCMB.EditValue <> null then
    MasterCds['Category'] := cxCategoryCMB.EditValue;

  if (MasterCds['Category'] = null) or (trim(MasterCds['Category']) = '') then
    raise Exception.Create('Please enter the Category');

  if (MasterCds['ImageName'] = null) then
    raise Exception.Create('Please enter the Image Name');

  if (MasterCds['Title'] = null) then
    raise Exception.Create('Please select the title');

  if (MasterCds['Height'] = null) then
    raise Exception.Create('Please enter the Height');

  if (MasterCds['Width'] = null) then
   raise Exception.Create('Please enter the Width');

  if (MasterCds.State = dsInsert) and (MasterCds['SrNo'] = null) then
   MasterCds['SrNo'] := GetMaxSrNo + 1;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');


end;

function TImagesForm.GetMaxSrNo: integer;
var
  QueryString: string;
  x_SrNo: integer;
  GpSds: TSQLDataSet;
begin

  x_SrNo := 0;

  QueryString := 'SELECT MAX(SrNo) AS MaxSrNo FROM Images ' +
    'WHERE Category = ''' + cxCategoryCMB.EditValue + ''' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['MaxSrNo'] <> null) then
    x_SrNo := GpSds['MaxSrNo'];

  GpSds.Free;

  Result := x_SrNo;

end;


function TImagesForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Images ' +
    'WHERE Category = ''' + MasterCds['Category'] + ''' ' +
    'AND ImageName = ''' + MasterCds['ImageName'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Images_id <> ' + IntToStr(MasterCds['Images_id']) + ') ';

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



procedure TImagesForm.cxCategoryCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  MasterCds.Close;
  MasterSds.Close;

  MasterSds.CommandText := 'SELECT * FROM Images WHERE Category = ''' + cxCategoryCMB.EditValue + ''' ';

  MasterSds.Active := true;
  MasterCds.Active := true;

end;

procedure TImagesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  MasterCds['SrNo'] := GetMaxSrNo + 1;

end;

end.

