unit WebTransferFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  FMTBcd, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, cxTextEdit,
  cxLabel, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxGroupBox, cxCheckBox,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, ShellAPI, DBXpress;

type
  TWebTransferForm = class(TCustomMasterCxGridForm)
    MasterCdsWebTransferTables_id: TIntegerField;
    MasterCdsTableName: TStringField;
    MasterCdsActive: TBooleanField;
    MasterCdsWebTableTypes_id: TIntegerField;
    CustomMasterCxGridDBTableView1WebTransferTables_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TableName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Active: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1WebTableTypes_id: TcxGridDBColumn;
    SysTablesSds: TSQLDataSet;
    SysTablesDsp: TDataSetProvider;
    SysTablesCds: TClientDataSet;
    SysTablesCdsName: TStringField;
    SysTablesDs: TDataSource;
    cxExportFile: TcxButton;
    cxImportFile: TcxButton;
    cxExportData: TcxButton;
    cxImportData: TcxButton;
    cxChangeBCPOption: TcxButton;
    cxLabel1: TcxLabel;
    cxTypeLcmb: TcxLookupComboBox;
    cxSelectAll: TcxButton;
    cxDeSelectAll: TcxButton;
    TypeSds: TSQLDataSet;
    TypeDsp: TDataSetProvider;
    TypeCds: TClientDataSet;
    TypeDs: TDataSource;
    TypeCdsType: TIntegerField;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    RemoteSqlConnection: TSQLConnection;
    cxButton1: TcxButton;
    cxUsServerCkb: TcxCheckBox;
    MasterCdsOrderNo: TIntegerField;
    cxTrsfDataButton: TcxButton;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxSelectAllClick(Sender: TObject);
    procedure cxDeSelectAllClick(Sender: TObject);
    procedure FilterData;
    procedure cxTypeLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxTypeLcmbPropertiesCloseUp(Sender: TObject);
    procedure cxExportFileClick(Sender: TObject);
    procedure GetDefaults;
    procedure cxImportFileClick(Sender: TObject);
    procedure cxExportDataClick(Sender: TObject);
    procedure ExecuteBatchFile(x_FileName: String);
    procedure cxImportDataClick(Sender: TObject);
    procedure cxChangeBCPOptionClick(Sender: TObject);
    procedure SetFilePathNames;
    procedure cxButton1Click(Sender: TObject);
    procedure cxUsServerCkbClick(Sender: TObject);
    procedure cxTrsfDataButtonClick(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterDelete(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebTransferForm: TWebTransferForm;
  _WebTransferForm_Level: Integer;
  _BcpPath, _LocalDB, _LocalHost, _LocalUid, _LocalPwd, _RemoteDB, _RemoteHost, _RemoteUid, _RemotePwd : String;
  _Remote2DB, _Remote2Host, _Remote2Uid, _Remote2Pwd : String;
  _ExportFileName, _ImportFileName: String;
implementation

uses BackOfficeDM, BCPOptionFm, MainFm, SQLiteFm, GeneralUt;

{$R *.dfm}

procedure TWebTransferForm.SetFilePathNames;
begin
  GetDefaults;
  if not DirectoryExists(_BcpPath) then
    CreateDir(_BcpPath);
  _ExportFileName := _BcpPath + '\' + 'ExportWebTables.bat' ;
  _ImportFileName := _BcpPath + '\' + 'ImportWebTables.bat';
end;

procedure TWebTransferForm.ExecuteBatchFile(x_FileName: String);
var
sei: TShellExecuteInfo;
begin
  ZeroMemory(@sei, sizeof(sei));
  with sei do
    begin
      cbSize := SizeOf(sei);
      fMask := SEE_MASK_INVOKEIDLIST;
      Wnd := handle;
      lpVerb := 'open';
      lpFile := PChar(x_FileName);
      lpDirectory := PChar(g_ReportDir + '\');
      nShow := SW_HIDE;
    end;
  ShellExecuteEX(@sei);
end;

procedure TWebTransferForm.GetDefaults;
var
  GpSds: TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT * FROM Defaults WHERE defaults_id >= 28 ';
  GpSds.Open;

  while not GpSds.Eof do
    begin
      if GpSds['Defaults_id'] = 28 then
        _BcpPath := GpSds['Text'];
      if GpSds['Defaults_id'] = 29 then
        _LocalHost := GpSds['Text'];
      if GpSds['Defaults_id'] = 30 then
        _LocalDB := GpSds['Text'];
      if GpSds['Defaults_id'] = 31 then
        _LocalUid := GpSds['Text'];
      if GpSds['Defaults_id'] = 32 then
        _LocalPwd := GpSds['Text'];
      if cxUsServerCkb.Checked then
        begin
          if GpSds['Defaults_id'] = 37 then
            _RemoteHost := GpSds['Text'];
          if GpSds['Defaults_id'] = 38 then
            _RemoteDB := GpSds['Text'];
          if GpSds['Defaults_id'] = 39 then
            _RemoteUid := GpSds['Text'];
          if GpSds['Defaults_id'] = 40 then
            _RemotePwd := GpSds['Text'];
        end
      else
        begin
          if GpSds['Defaults_id'] = 33 then
            _RemoteHost := GpSds['Text'];
          if GpSds['Defaults_id'] = 34 then
            _RemoteDB := GpSds['Text'];
          if GpSds['Defaults_id'] = 35 then
            _RemoteUid := GpSds['Text'];
          if GpSds['Defaults_id'] = 36 then
            _RemotePwd := GpSds['Text'];
        end;

      GpSds.Next;
    end;

  GpSds.Free;

  RemoteSqlConnection.Connected := False;
  RemoteSqlConnection.Params[0]:= 'DriverName=SQLServer';
  RemoteSqlConnection.Params[1]:= 'BlobSize=-1';
  RemoteSqlConnection.Params[2]:= 'Hostname='+_RemoteHost;
  RemoteSqlConnection.Params[3]:= 'DataBase='+_RemoteDB;
  RemoteSqlConnection.Params[4]:= 'User_Name='+_RemoteUid;
  RemoteSqlConnection.Params[5]:= 'Password='+_RemotePwd;
  RemoteSqlConnection.Connected := True;
  
end;

procedure TWebTransferForm.FilterData;
var
  x_Type : String;
begin
  if cxTypeLcmb.EditValue > 0 then
    x_Type := VarToStr(cxTypeLcmb.EditValue)
  else
    x_Type := '-1';

  MasterCds.Filtered := False;

  MasterCds.Filter := '(WebTableTypes_id = ' + x_Type + ') OR (WebTableTypes_id = 100)';
  MasterCds.Filtered := True;
end;

procedure TWebTransferForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'WebTransferTables';
  MasterKeyField := 'WebTransferTables_id';
  AdmLevel := _WebTransferForm_Level;
  inherited;
  GetDefaults;

end;

procedure TWebTransferForm.FormActivate(Sender: TObject);
begin
  MasterCdsName := 'WebTransferTables';
  MasterKeyField := 'WebTransferTables_id';
  AdmLevel := _WebTransferForm_Level;
  FilterData;
  inherited;
  SysTablesSds.Active := False;
  SysTablesCds.Active := True;
  TypeCds.Active := False;
  TypeCds.Active := True;

  CloseBtn.Left := cxChangeBCPOption.Left;
end;

procedure TWebTransferForm.cxSelectAllClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'UPDATE WebTransferTables SET Active = 1';
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Refresh;
end;

procedure TWebTransferForm.cxDeSelectAllClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := 'UPDATE WebTransferTables SET Active = 0';
  GpSds.ExecSQL;

  GpSds.Close;
  GpSds.CommandText := 'UPDATE WebTransferTables SET Active = 1 WHERE WebTableTypes_id = 100 ';
  GpSds.ExecSQL;

  MasterCds.Refresh;
  GpSds.Free;
end;

procedure TWebTransferForm.cxTypeLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TWebTransferForm.cxTypeLcmbPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TWebTransferForm.cxExportFileClick(Sender: TObject);
var
  F_ini: Textfile;
  x_TextFilePath: string;
  s: string;
begin
  inherited;
  SetFilePathNames;

  MasterCds.First;

  if FileExists(_ExportFileName) then
    DeleteFile(_ExportFileName);

  x_TextFilePath := copy(_ExportFileName, 0, length(_ExportFileName)-3) + 'txt';

  AssignFile(F_ini, x_TextFilePath);
  ReWrite(F_ini);

  while not MasterCds.Eof do
    begin
      S := '';
      if MasterCds['Active'] = True then
        begin
//          S:= 'bcp ' + _LocalDB + '.dbo.' + VarToStr(MasterCds['TableName']) + ' out "' +
//            _BcpPath + '\' + VarToStr(MasterCds['TableName']) + '.txt' +
//            '" -c -U' + _LocalUid + ' -P' + _LocalPwd + ' -S' + _LocalHost + ' -t*@#F#@* -r*@#R#@*';


          S:= 'bcp ' + _LocalDB + '.dbo.' + VarToStr(MasterCds['TableName']) + ' out "' +
            _BcpPath + '\' + VarToStr(MasterCds['TableName']) + '.txt' +
            '" -c -U' + _LocalUid + ' -P' + _LocalPwd + ' -S' + _LocalHost + '  -t\\0\0 -r\\0\0';


          if Length(trim(S)) > 0 then
            Writeln(F_ini, S);

        end;
      MasterCds.Next;
    End;
  CloseFile(F_ini);

  RenameFile(x_TextFilePath, _ExportFileName);

  ShowMessage ('Saved as ' + x_TextFilePath);
end;

procedure TWebTransferForm.cxImportFileClick(Sender: TObject);
var
  F_ini: Textfile;
  x_TextFilePath: string;
  s: string;
begin
  inherited;
  SetFilePathNames;
  MasterCds.First;

  x_TextFilePath := copy(_ImportFileName, 0, length(_ImportFileName)-3) + 'txt';

  if FileExists(_ImportFileName) then
    DeleteFile(_ImportFileName);

  AssignFile(F_ini, x_TextFilePath);
  ReWrite(F_ini);

  while not MasterCds.Eof do
    begin
      S := '';
      if MasterCds['Active'] = True then
        begin
//          S:= 'bcp ' + _RemoteDB + '.dbo.' + VarToStr(MasterCds['TableName']) + ' in "' +
//            _BcpPath + '\' + VarToStr(MasterCds['TableName']) + '.txt' +
//            '" -c -U' + _RemoteUid + ' -P' + _RemotePwd + ' -S' + _RemoteHost + ' -t*@#F#@* -r*@#R#@*';

          S:= 'bcp ' + _RemoteDB + '.dbo.' + VarToStr(MasterCds['TableName']) + ' in "' +
            _BcpPath + '\' + VarToStr(MasterCds['TableName']) + '.txt' +
            '" -c -U' + _RemoteUid + ' -P' + _RemotePwd + ' -S' + _RemoteHost + '  -t\\0\0 -r\\0\0';

          if Length(trim(S)) > 0 then
            Writeln(F_ini, S);

        end;
      MasterCds.Next;
    End;
  CloseFile(F_ini);

  RenameFile(x_TextFilePath, _ImportFileName);

  ShowMessage ('Saved as ' + x_TextFilePath);
end;

procedure TWebTransferForm.cxExportDataClick(Sender: TObject);
begin
  inherited;
  if FileExists(_ExportFileName) then
    ExecuteBatchFile(_ExportFileName);

  ShowMessage ('Done');
end;

procedure TWebTransferForm.cxImportDataClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Type: string;
begin

  SetFilePathNames;

  if cxTypeLcmb.EditValue > 0 then
    x_Type := VarToStr(cxTypeLcmb.EditValue)
  else
    x_Type := 'null';

  inherited;
  if MessageDlg('This will upload data onto the ' + _RemoteHost + 'server in ' + _RemoteDB + ' database.' + chr(13) +
    'This will take about 15 minutes to execute. Please do not shut the application off.' , mtWarning, mbOKCancel, 0) = mrOk then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := RemoteSqlConnection;

      MasterCds.First;

{
      while not MasterCds.Eof do
        begin
          if MasterCds['Active'] = true then
            begin
              GpSds.Close;
              GpSds.CommandText := 'TRUNCATE TABLE ' + VarToStr(MasterCds['TableName']);
              GpSds.ExecSQL;
            end;

          MasterCds.Next;
        end;
}

      GpSds.Free;

      if FileExists(_ImportFileName) then
        ExecuteBatchFile(_ImportFileName);

      ShowMessage ('Started sync');
    end;
end;

procedure TWebTransferForm.cxChangeBCPOptionClick(Sender: TObject);
begin
  inherited;
  if BcpOptionForm = nil then
    Application.CreateForm(TBcpOptionForm, BcpOptionForm);
  BcpOptionForm.ShowModal;

  BcpOptionForm.Free;
  BcpOptionForm := nil;
end;

procedure TWebTransferForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Type: string;
begin

  SetFilePathNames;

  if cxTypeLcmb.EditValue > 0 then
    x_Type := VarToStr(cxTypeLcmb.EditValue)
  else
    x_Type := 'null';

  inherited;
  if MessageDlg('This will delete data from the ' + _RemoteHost + 'server in ' + _RemoteDB + ' database.' + chr(13) +
    'This will take about 5 minutes to execute. Please do not shut the application off.' , mtWarning, mbOKCancel, 0) = mrOk then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := RemoteSqlConnection;

      GpSds.Close;
      GpSds.CommandText := 'TRUNCATE TABLE WebSyncStatus';
      GpSds.ExecSQL;

      MasterCds.First;

      while not MasterCds.Eof do
        begin
          if MasterCds['Active'] = true then
            begin
              GpSds.Close;
              GpSds.CommandText := 'TRUNCATE TABLE ' + VarToStr(MasterCds['TableName']);
              GpSds.ExecSQL;
            end;

          MasterCds.Next;
        end;

      GpSds.Free;

      ShowMessage ('Done');
    end;

end;

procedure TWebTransferForm.cxUsServerCkbClick(Sender: TObject);
begin
  inherited;
  GetDefaults;
end;

procedure TWebTransferForm.cxTrsfDataButtonClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_count: integer;
begin
  inherited;

  if MessageDlg('This will transfer data from RemoteBackup To RemoteLive database.' + chr(13) +
    'This will take about a minute to execute. Please do not shut the application off.' , mtWarning, mbOKCancel, 0) = mrOk then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := RemoteSqlConnection;

      GpSds.Close;
      GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM WebSyncStatus';
      GpSds.Open;

      x_count := GpSds['x_count'];

      if x_count = 0 then
        begin
          ShowMessage('Cannot Transfer. ' + chr(13) +
            'Either last transfer was moved to LIVE -- OR -- data was not transferred fully to BACKUP');
        end
      else
        begin

          GpSds.Close;
          GpSds.CommandText := 'EXEC p_SyncFromBackup ' + VarToStr(cxTypeLcmb.EditValue);
          GpSds.ExecSQL;

          GpSds.Close;
          GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM WebSyncStatus';
          GpSds.Open;

          x_count := GpSds['x_count'];

          if x_count = 0 then
            ShowMessage ('Transferred successully to LIVE')
          else
            ShowMessage ('There wwas a problem transferring from the BACKUP to the LIVE Database');

        end;

    end;

end;

procedure TWebTransferForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if MasterCds['OrderNo'] <> null then
    MasterCds['OrderNo'] := 1;

  if (MasterCds['TableName'] = null) or (trim(MasterCds['TableName']) = '')then
    raise exception.Create('Please enter the table name');
end;

procedure TWebTransferForm.FormDestroy(Sender: TObject);
begin
  inherited;
  WebTransferForm := nil;
end;

procedure TWebTransferForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Active'] := true;
  if cxTypeLcmb.EditValue <> null then
    MasterCds['WebTableTypes_id'] := cxTypeLcmb.EditValue;

end;

procedure TWebTransferForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  //inherited;
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
  MasterCds.Last;

end;

procedure TWebTransferForm.MasterCdsAfterDelete(DataSet: TDataSet);
begin
  //inherited;
  MasterCds.ApplyUpdates(0);
  MasterCds.Refresh;
  MasterCds.Last;

end;

procedure TWebTransferForm.cxButton2Click(Sender: TObject);
begin
  inherited;

  _SQLiteForm_Level := GetUserLevel(g_users_id, 2200);

  If _SQLiteForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if SQLiteForm = nil then
    Application.CreateForm(TSQLiteForm,SQLiteForm);

end;

end.
