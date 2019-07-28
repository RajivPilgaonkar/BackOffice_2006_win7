unit ImageTypesFm;

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
  TImageTypesForm = class(TCustom_1MG_Form)
    MasterCdsimagetypes_id: TIntegerField;
    MasterCdsimagetype: TStringField;
    cxGrid1DBBandedTableView1imagetypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1imagetype: TcxGridDBBandedColumn;
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
  ImageTypesForm: TImageTypesForm;
  ImageTypesForm_Level: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TImageTypesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;
end;

procedure TImageTypesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TImageTypesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ImageTypesForm := nil;
end;

procedure TImageTypesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ImageTypes';
  Custom_MasterKeyField := 'ImageTypes_id';
  Custom_AdmLevel := ImageTypesForm_Level;

  Custom_FormWidth := 480;
  Custom_FormHeight := 485;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TImageTypesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TImageTypesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['ImageType'] = null) or (Trim(MasterCds['ImageType']) = '') then
    raise Exception.Create('Please enter the Image Type');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  // the key field here in auto increment
    
//  inherited;

//  if MasterCds['ImageTypes_id'] = null then
//    raise Exception.Create('ImageTypes_id is not assigned');

end;

function TImageTypesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ImageTypes ' +
    'WHERE ImageType = ' + QuotedStr(Trim(MasterCds['ImageType'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ImageTypes_id <> ' + IntToStr(MasterCds['ImageTypes_id']) + ') ';

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


procedure TImageTypesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  // the key field here in auto increment
  MasterCds.Close;
  MasterCds.Open;
end;

end.
