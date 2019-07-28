unit CityFixedItinFm;

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
  TCityFixedItinForm = class(TCustom_1MG_Form)
    MasterCdsCityFixedItin_id: TIntegerField;
    MasterCdsCities_id: TIntegerField;
    MasterCdsFixedItin_id: TIntegerField;
    cxGrid1DBBandedTableView1CityFixedItin_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FixedItin_id: TcxGridDBBandedColumn;
    FixedItinCds: TClientDataSet;
    FixedItinCdsFixedItin_id: TIntegerField;
    FixedItinCdsTitle: TStringField;
    FixedItinDs: TDataSource;
    FixedItinDsp: TDataSetProvider;
    FixedItinSds: TSQLDataSet;
    CityNameLabel: TLabel;
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
  CityFixedItinForm: TCityFixedItinForm;
  CityFixedItinForm_Level: Integer;
  CityFixedItinForm_Cities_id: Integer;
  CityFixedItinForm_City: String;
implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCityFixedItinForm.FormCreate(Sender: TObject);
begin
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterCds.Close;
  MasterSds.Close;
  MasterSds.Params[0].Value := CityFixedItinForm_Cities_id;

  inherited;

  FixedItinCds.Open;

  CityNameLabel.Caption := CityFixedItinForm_City;
end;

procedure TCityFixedItinForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCityFixedItinForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CityFixedItinForm := nil;
end;

procedure TCityFixedItinForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CityFixedItin';
  Custom_MasterKeyField := 'CityFixedItin_id';
  Custom_AdmLevel := CityFixedItinForm_Level;

  Custom_FormWidth := 560;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TCityFixedItinForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TCityFixedItinForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Cities_id'] = null) or (Trim(MasterCds['Cities_id']) = '') then
    raise Exception.Create('Please select a City');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['CityFixedItin_id'] = null then
    raise Exception.Create('CityFixedItin_id id is not assigned');

end;

function TCityFixedItinForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CityFixedItin ' +
    'WHERE Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ' '+
    'AND FixedItin_id = ' + IntToStr(MasterCds['FixedItin_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CityFixedItin_id <> ' + IntToStr(MasterCds['CityFixedItin_id']) + ') ';

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

procedure TCityFixedItinForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Cities_id'] := CityFixedItinForm_Cities_id;
end;

end.
