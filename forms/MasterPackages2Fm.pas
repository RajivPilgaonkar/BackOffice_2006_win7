unit MasterPackages2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxMemo,
  cxDBEdit, cxDBLookupComboBox, cxSpinEdit, cxTimeEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxNavigator,
  cxDBNavigator, DateUtils;

type
  TMasterPackages2Form = class(TCustom_1ML_1DG_Form)
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label8: TLabel;
    Label13: TLabel;
    cxCityLCMB: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label12: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton3: TcxButton;
    Label1: TLabel;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    CitiesDs: TDataSource;
    CitiesCdsState: TStringField;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourCode: TStringField;
    TourCodeDs: TDataSource;
    TourCodeCdsMasters_id: TIntegerField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    AgentDs: TDataSource;
    AgentCdsOrgCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    PopupMenu1: TPopupMenu;
    AddAllTourCodes1: TMenuItem;
    MasterCdsmasterpackages_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsfrom_day: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsto_day: TIntegerField;
    MasterCdsCities_id: TIntegerField;
    PackageSds: TSQLDataSet;
    PackageDsp: TDataSetProvider;
    PackageCds: TClientDataSet;
    PackageDs: TDataSource;
    PackageCdsPackages_id: TIntegerField;
    PackageCdsPackage: TStringField;
    PackageCdsFrom_Cities_id: TIntegerField;
    Label9: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    MasterCdstours: TStringField;
    DetailCdsmasterpackagestours_id: TIntegerField;
    DetailCdsmasterpackages_id: TIntegerField;
    DetailCdstourcodes_id: TIntegerField;
    cxGrid1DBBandedTableView1masterpackagestours_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1masterpackages_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tourcodes_id: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DetailCdsAfterDelete(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure AddAllTourCodes1Click(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    procedure UpdateTourString;
    procedure SetAgent;
  public
    { Public declarations }
  end;

var
  MasterPackages2Form: TMasterPackages2Form;
  MasterPackages2Form_Level: integer;
  MasterPackages2Form_Masters_id: integer;
  MasterPackages2Form_Mode: integer;
  MasterPackages2Form_MasterPackages_id: integer;

implementation

uses BackOfficeDM, SearchSortFm, TicketsFm;

{$R *.dfm}

procedure TMasterPackages2Form.FormCreate(Sender: TObject);
begin

  Caption := 'Master Packages';
  Width := 770;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Packages';
  cxTabSheet2.Caption := 'Tours';

  ActivateInCustom;

  MasterSds.Params[0].Value := MasterPackages2Form_Masters_id;

  inherited;

  AgentCds.Open;
  CitiesCds.Open;
  PackageCds.Open;
  TourCodeCds.Open;

  cxCityLCMBPropertiesEditValueChanged(nil);

  if MasterPackages2Form_Mode = 1 then
    MasterCds.Insert;

  if MasterPackages2Form_Mode = 2 then
    begin
      if MasterPackages2Form_MasterPackages_id <> null then
        MasterCds.Locate('MasterPackages_id', MasterPackages2Form_MasterPackages_id, []);
    end;

end;

procedure TMasterPackages2Form.ActivateInCustom;
begin
  Custom_MasterCdsName := 'MasterPackages';
  Custom_MasterKeyField := 'MasterPackages_id';

  Custom_DetailCdsName := 'MasterPackagesTours';
  Custom_DetailKeyField := 'MasterPackagesTours_id';

  Custom_AdmLevel := MasterPackages2Form_Level;

  Custom_FormWidth := 915;
  Custom_FormHeight := 660 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;


end;


procedure TMasterPackages2Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Masters_id'] = null) then
    raise Exception.Create('Please select a Master Tour');

  if (MasterCds['From_Day'] = null) then
    raise Exception.Create('Please enter the Day In');

  if (MasterCds['Packages_id'] = null) then
    raise Exception.Create('Please enter the Package');

  if (MasterCds['Cities_id'] = null) then
    raise Exception.Create('Please enter the City');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  SetAgent;

  if (MasterCds['To_Day'] = null) then
    raise Exception.Create('Please enter the Day Out (package master)');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent (package master)');

  inherited;

  if MasterCds['MasterPackages_id'] = null then
    raise Exception.Create('MasterPackages_id is not assigned');

end;

procedure TMasterPackages2Form.SetAgent;
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT Addressbook_id, Nights FROM Packages ' +
    'WHERE Packages_id = ' + IntToStr(MasterCds['Packages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['Addressbook_id'] <> null) then
    MasterCds['Addressbook_id'] := GpSds['Addressbook_id'];

  if (not GpSds.Eof) and (GpSds['Nights'] <> null) then
    MasterCds['to_day'] := MasterCds['from_day'] + GpSds['Nights'];

  GpSds.Free;

end;


function TMasterPackages2Form.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM MasterPackages ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND From_Day = ' + IntToStr(MasterCds['From_day']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MasterPackages_id <> ' + IntToStr(MasterCds['MasterPackages_id']) + ') ';

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


procedure TMasterPackages2Form.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterPackagesTours ' +
    'WHERE MasterPackages_id = ' + IntToStr(MasterCds['MasterPackages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TMasterPackages2Form.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if (DetailCds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (DetailCds['MasterPackages_id'] = null) then
    raise Exception.Create('Please enter the Package Details first');

  if (IsDetailRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if (DetailCds['MasterPackagesTours_id'] = null) then
    raise Exception.Create('MasterPackagesTours_id is not assigned');

end;

function TMasterPackages2Form.IsDetailRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterPackagesTours ' +
    'WHERE MasterPackages_id = ' + IntToStr(DetailCds['MasterPackages_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(DetailCds['TourCodes_id'])  + ' ';

  if DetailCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterPackagesTours_id <> ' + IntToStr(DetailCds['MasterPackagesTours_id']) + ') ';

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


procedure TMasterPackages2Form.DetailCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateTourString;
end;

procedure TMasterPackages2Form.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateTourString;
end;

procedure TMasterPackages2Form.cxButton3Click(Sender: TObject);
begin
  inherited;
  UpdateTourString;
end;

procedure TMasterPackages2Form.UpdateTourString;
var
  x_BookMark: TBookMarkStr;
  x_mode: integer;
  x_TourCode, QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  x_mode := 0;
  if (not DetailCds.Eof) then
    x_mode := 1;

  if (x_mode = 1) then
    x_BookMark := DetailCds.Bookmark;

  QueryString := 'SELECT tc.TourCode FROM MasterPackagesTours mtt ' +
    'LEFT JOIN TourCodes tc ON mtt.TourCodes_id = tc.TourCodes_id ' +
    'WHERE mtt.MasterPackages_id = ' + IntToStr(MasterCds['MasterPackages_id']) + ' ' +
    'AND tc.TourCode IS NOT NULL';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_TourCode := '';
  while (not GpSds.EOF) do
    begin
      if x_TourCode > '' then
        x_TourCode := x_TourCode + '/';
      x_TourCode := x_TourCode + GpSds['TourCode'];
      GpSds.Next;
    end;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := x_TourCode;

  MasterCds.Post;

  if (x_mode = 1) then
    DetailCds.Bookmark := x_BookMark;

  GpSds.Free;

end;


procedure TMasterPackages2Form.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Masters_id'] := MasterPackages2Form_Masters_id;
end;

procedure TMasterPackages2Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  DetailCds.First;
  if DetailCds.Eof then
    begin
      ShowMessage ('Please enter the Tours');
      DetailCds.Insert;
      cxGrid1.SetFocus;
    end;

end;

procedure TMasterPackages2Form.AddAllTourCodes1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  TourCodeCds.First;

  while not (TourCodeCds.eof) do
    begin

      QueryString := 'SELECT COUNT(*) AS x_count FROM MasterPackagesTours mtt ' +
        'LEFT JOIN TourCodes tc ON mtt.TourCodes_id = tc.TourCodes_id ' +
        'WHERE mtt.MasterPackages_id = ' + IntToStr(MasterCds['MasterPackages_id']) + ' ' +
        'AND tc.TourCode = ' + QuotedStr(TourCodeCds['TourCode']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if GpSds['x_count'] = 0 then
        begin
          DetailCds.Insert;
          DetailCds['TourCodes_id'] := TourCodeCds['TourCodes_id'];
          DetailCds.Post;
        end;

      TourCodeCds.Next;
    end;

  GpSds.Free;

end;

procedure TMasterPackages2Form.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if (cxCityLCMB.EditValue <> null) and (CitiesCds.State <> dsInactive) then
      CitiesCds.Locate('Cities_id',cxCityLCMB.EditValue,[]);
  except
  end;

end;

end.
