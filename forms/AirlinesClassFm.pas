unit AirlinesClassFm;

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
  TAirlinesClassForm = class(TCustom_1MG_Form)
    MasterCdsclass: TStringField;
    MasterCdscode: TStringField;
    MasterCdstickets_id: TIntegerField;
    MasterCdsOrderNo: TIntegerField;
    cxGrid1DBBandedTableView1class_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1class: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1code: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    MasterCdsclass_id: TIntegerField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
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
  AirlinesClassForm: TAirlinesClassForm;
  AirlinesClassForm_level: integer;
  AirlinesClassForm_Tickets_id: Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TAirlinesClassForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := AirlinesClassForm_Tickets_id;

  if AirlinesClassForm_Tickets_id = 1 then
    begin
      Caption := 'Airlines Class';
      cxTabSheet1.Caption := 'Airlines Class';
    end
  else if AirlinesClassForm_Tickets_id = 2 then
    begin
      Caption := 'Train Class';
      cxTabSheet1.Caption := 'Train Class';
    end
  else if AirlinesClassForm_Tickets_id = 3 then
    begin
      Caption := 'Coach Class';
      cxTabSheet1.Caption := 'Coach Class';
    end;

  inherited;

  UsersCds.Open;
  
end;

procedure TAirlinesClassForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TAirlinesClassForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AirlinesClassForm := nil;
end;

procedure TAirlinesClassForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Class';
  Custom_MasterKeyField := 'Class_id';
  Custom_AdmLevel := AirlinesClassForm_level;

  Custom_FormWidth := 495;
  Custom_FormHeight := 500;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TAirlinesClassForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TAirlinesClassForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Tickets_id'] = null) or (Trim(MasterCds['Tickets_id']) = '') then
    raise Exception.Create('Tickets_id cannot be blank');

  if (MasterCds['Class'] = null) or (Trim(MasterCds['Class']) = '') then
    raise Exception.Create('Please enter the class');

  if (MasterCds['Code'] = null) or (Trim(MasterCds['Code']) = '') then
    raise Exception.Create('Please enter the code');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

  if MasterCds['Class_id'] = null then
    raise Exception.Create('Class_id id is not assigned');
end;

function TAirlinesClassForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Class ' +
    'WHERE Class = ' + QuotedStr(Trim(MasterCds['Class'])) + ' ' +
    ' AND Tickets_id = ' + IntToStr(MasterCds['Tickets_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Class_id <> ' + IntToStr(MasterCds['Class_id']) + ') ';

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

procedure TAirlinesClassForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Tickets_id'] := AirlinesClassForm_Tickets_id;

  if MasterCds['Tickets_id'] = 1 then
    MasterCds['Code'] := 'F'
  else if MasterCds['Tickets_id'] = 2 then
    MasterCds['Code'] := 'T'
  else if MasterCds['Tickets_id'] = 3 then
    MasterCds['Code'] := 'B'
  else if MasterCds['Tickets_id'] = 4 then
    MasterCds['Code'] := 'R';
end;

end.
