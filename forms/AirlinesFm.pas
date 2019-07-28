unit AirlinesFm;

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
  TAirlinesForm = class(TCustom_1MG_Form)
    MasterCdsairlines_id: TIntegerField;
    MasterCdsairline: TStringField;
    MasterCdscode: TStringField;
    cxGrid1DBBandedTableView1airlines_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1airline: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1code: TcxGridDBBandedColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  AirlinesForm: TAirlinesForm;
  AirlinesForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAirlinesForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  UsersCds.Open;
  
end;

procedure TAirlinesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAirlinesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AirlinesForm := nil;
end;

procedure TAirlinesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Airlines';
  Custom_MasterKeyField := 'Airlines_id';
  Custom_AdmLevel := AirlinesForm_Level;

  Custom_FormWidth := 510;
  Custom_FormHeight := 490;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAirlinesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAirlinesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Code'] = null) or (Trim(MasterCds['Code']) = '') then
    raise Exception.Create('Please enter the Code');

  if (MasterCds['Airline'] = null) or (Trim(MasterCds['Airline']) = '') then
    raise Exception.Create('Please enter the Airline');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Airlines_id'] = null then
    raise Exception.Create('Airlines_id id is not assigned');
end;

function TAirlinesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Airlines ' +
    'WHERE Code = ' + QuotedStr(Trim(MasterCds['Code'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Airlines_id <> ' + IntToStr(MasterCds['Airlines_id']) + ') ';

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

end.
