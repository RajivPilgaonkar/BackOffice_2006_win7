unit AdmUsersFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, FMTBcd, DBClient, Provider, SqlExpr,
  cxDBLookupComboBox, cxLookAndFeelPainters, StdCtrls, cxButtons, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel,
  cxContainer, cxGroupBox;

type
  TAdmUsersForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MasterSDS: TSQLDataSet;
    DataSetProvider: TDataSetProvider;
    MasterDS: TDataSource;
    MasterCds: TClientDataSet;
    RightsSds: TSQLDataSet;
    RightsDSP: TDataSetProvider;
    RightsDS: TDataSource;
    RightsCds: TClientDataSet;
    MasterCdsAdmUsers_id: TIntegerField;
    MasterCdsuid: TStringField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsPwd: TStringField;
    MasterCdsActive: TBooleanField;
    MasterCdsUserName: TStringField;
    MasterCdsSuperuser: TBooleanField;
    MasterCdsDefaultFinancialYears_id: TIntegerField;
    MasterCdsDefaultLoginTypes_id: TIntegerField;
    MasterCdsDefaultDivisions_id: TIntegerField;
    MasterCdsDefaultCompanies_id: TIntegerField;
    CustomMasterCxGridDBTableView1Active: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Superuser: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Uid: TcxGridDBColumn;
    cxGridDBTableView1AdmModules_id: TcxGridDBColumn;
    cxGridDBTableView1AdmLevel: TcxGridDBColumn;
    ModuleLookUpSds: TSQLDataSet;
    ModuleLookUpDsp: TDataSetProvider;
    ModuleLookUpDS: TDataSource;
    ModuleLookUpCds: TClientDataSet;
    RightsCdsAdmUserRights_id: TIntegerField;
    RightsCdsAdmUsers_id: TIntegerField;
    RightsCdsAdmModules_id: TIntegerField;
    RightsCdsAdmLevel: TIntegerField;
    ModuleLookUpCdsAdmModules_id: TIntegerField;
    ModuleLookUpCdsAdmModule: TStringField;
    ModuleLookUpCdsAdmModuleNo: TIntegerField;
    CloseBtn: TcxButton;
    PopupMenu1: TPopupMenu;
    AddModules1: TMenuItem;
    Copymodules1: TMenuItem;
    OverwritefromUsersModulesalreadyincluded1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AddModules1Click(Sender: TObject);
    procedure Copymodules1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure RightsCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure RightsCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure RightsCdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsBeforeEdit(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure RightsCdsBeforeInsert(DataSet: TDataSet);
    procedure RightsCdsBeforeEdit(DataSet: TDataSet);
    procedure OverwritefromUsersModulesalreadyincluded1Click(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdmUsersForm: TAdmUsersForm;
  _AdmUsersForm_Level: integer;

implementation

uses BackOfficeDM, MainFm, SearchSortFm, GeneralUt;

var
  AdmLevel : Integer;

{$R *.dfm}

procedure TAdmUsersForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TAdmUsersForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAdmUsersForm.FormDestroy(Sender: TObject);
begin
  AdmUsersForm := nil;
end;

procedure TAdmUsersForm.AddModules1Click(Sender: TObject);
var
  tSds: TSQLDataSet;
begin
  tSds := TSQLDataSet.Create(nil);
  tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  tSds.Close;
  tSds.CommandText := '';
  tSds.CommandText := 'EXEC p_AddModules 1, ' +  IntToStr(MasterCdsAdmUsers_id.Value) + ', 0  '  ;
  tSds.ExecSQL;

  MasterCds.Refresh;
  RightsCds.Active := False;
  RightsCds.Active := True;
  tSds.Free;
end;

procedure TAdmUsersForm.Copymodules1Click(Sender: TObject);
var
  tSds: TSQLDataSet;
  QueryString: String;
  i: Integer;
  SourceUser_id: Integer;
begin
  QueryString := '';
  QueryString := 'SELECT AdmUsers_id, Uid, Active, SuperUser FROM AdmUSers ' +
    ' WHERE AdmUsers_id IN(SELECT AdmUSers_id FROM AdmUserRights) ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;
  if SearchSortForm.SearchCds.RecordCount = 0 then
    begin
      MessageDlg('No modules exist for any of the users',mtInformation,[mbOK],0);
      Abort;
    end;
  for i := 0 to 3 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'AdmUsers_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Uid';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Active';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Superuser';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  //SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'User';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Superuser';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'AdmUsers_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      SourceUser_id := SearchSortForm.SearchCds['AdmUsers_id'];

      tSds := TSQLDataSet.Create(nil);
      tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      tSds.Close;
      tSds.CommandText := '';
      tSds.CommandText := 'EXEC p_AddModules 2, ' +  IntToStr(MasterCdsAdmUsers_id.Value) +
        ', ' + IntToStr(SourceUser_id);
      tSds.ExecSQL;

      MasterCds.Refresh;

      RightsCds.Refresh;
    end;
  SearchSortForm.Free;
  SearchSortForm := nil;

  tSds.Free;

end;

procedure TAdmUsersForm.FormCreate(Sender: TObject);
begin
  AdmLevel := _AdmUsersForm_Level;

  MasterCds.Active := False;
  MasterCds.Active := True;
  ModuleLookUpCds.Active := False;
  ModuleLookUpCds.Active := True;
  RightsCds.Active := False;
  RightsCds.Active := True;
end;

procedure TAdmUsersForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TAdmUsersForm.RightsCdsAfterPost(DataSet: TDataSet);
begin
  RightsCds.ApplyUpdates(0);
end;

procedure TAdmUsersForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if MasterCds['Uid'] = null then
    Raise Exception.Create('Please enter the user id');

  if MasterCds['pwd'] = null then
    MasterCds['Pwd'] := MasterCds['uid'];

  if MasterCds.State = dsInsert then
    MasterCds['AdmUsers_id'] := GetNextId('AdmUsers','AdmUsers_id');
end;

procedure TAdmUsersForm.RightsCdsBeforePost(DataSet: TDataSet);
var
  tSds: TSQLDataSet;
  ModulesCnt: Integer;
begin
  if RightsCds.State = dsInsert then
    RightsCds['AdmUserRights_id'] := GetNextId('AdmUserRights','AdmUserRights_id');

  if RightsCds['AdmModules_id'] = null then
    raise exception.Create('Please enter the module');

  if RightsCds['AdmLevel'] = null then
    raise exception.Create('Please enter the level');

  if (RightsCds['AdmLevel'] < 0) or (RightsCds['AdmLevel'] > 4)  then
    raise exception.Create('Access Level should be between 0 and 4');

end;

procedure TAdmUsersForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  tSds: TSQLDataSet;
begin
  if (AdmLevel < 4) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  tSds := TSQLDataSet.Create(nil);
  tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  tSds.CommandText := '';
  tSds.CommandText := 'SELECT COUNT(*) AS Cnt FROM AdmUserRights ' +
    ' WHERE AdmUsers_id = ' + IntToStr(MasterCdsAdmUsers_id.Value) ;
  tSds.Active := True;

  if tSds['Cnt'] > 0 then
    begin
      if MessageDlg ('Cannot delete this user.Modules have already been' +
        'assigned.Continue? ',mtConfirmation, [mbYes, mbNo],0) = mrYes then
        begin
          tSds.Close;
          tSds.CommandText := '';
          tSds.CommandText := 'DELETE FROM AdmUserRights ' +
            ' WHERE AdmUsers_id = ' + IntToStr(MasterCdsAdmUsers_id.Value) ;
          tSds.ExecSQL;
        end
      else
        Abort;
    end;
  tSds.Free;

  RightsCds.Refresh;
end;

procedure TAdmUsersForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
end;

procedure TAdmUsersForm.RightsCdsAfterDelete(DataSet: TDataSet);
begin
  RightsCds.ApplyUpdates(0);
  RightsCds.Refresh;
end;

procedure TAdmUsersForm.MasterCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 4) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TAdmUsersForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 4) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TAdmUsersForm.RightsCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 4) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TAdmUsersForm.RightsCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 4) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TAdmUsersForm.OverwritefromUsersModulesalreadyincluded1Click(
  Sender: TObject);
var
  tSds: TSQLDataSet;
  QueryString: String;
  i: Integer;
  SourceUser_id: Integer;
begin
  QueryString := '';
  QueryString := 'SELECT AdmUsers_id, Uid, Active, SuperUser FROM AdmUSers ' +
    ' WHERE AdmUsers_id IN(SELECT AdmUSers_id FROM AdmUserRights) ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;
  if SearchSortForm.SearchCds.RecordCount = 0 then
    begin
      MessageDlg('No modules exist for any of the users',mtInformation,[mbOK],0);
      Abort;
    end;
  for i := 0 to 3 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'AdmUsers_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Uid';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'Active';
  SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Superuser';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;
  SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 80;

  //*=== Set the Grid Column Headers ===*//
  //SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'User';
  SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Superuser';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'AdmUsers_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      SourceUser_id := SearchSortForm.SearchCds['AdmUsers_id'];

      tSds := TSQLDataSet.Create(nil);
      tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      tSds.Close;
      tSds.CommandText := '';
      tSds.CommandText := 'EXEC p_AddModules 3, ' +  IntToStr(MasterCdsAdmUsers_id.Value) +
        ', ' + IntToStr(SourceUser_id);
      tSds.ExecSQL;

      MasterCds.Refresh;

      RightsCds.Refresh;
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

  tSds.Free;


end;

end.
