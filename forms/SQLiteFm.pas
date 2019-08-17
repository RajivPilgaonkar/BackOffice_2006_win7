unit SQLiteFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, FMTBcd, DB,
  DBClient, Provider, SqlExpr, ShellAPI;

type
  TSQLiteForm = class(TForm)
    cxButton1: TcxButton;
    SysTablesSds: TSQLDataSet;
    SysTablesDsp: TDataSetProvider;
    SysTablesCds: TClientDataSet;
    SysTablesCdsName: TStringField;
    SysTablesDs: TDataSource;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    //procedure ExecuteBatchFile(x_FileName: String);
  public
    { Public declarations }
  end;

var
  SQLiteForm: TSQLiteForm;
  _SQLiteForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TSQLiteForm.cxButton1Click(Sender: TObject);
var
  GpSds, Gp1Sds: TSQLDataSet;
  x_dir, x_TextFilePath, S: string;
  F_data: Textfile;
begin

  inherited;

  x_dir := g_ReportDir + '\SQLite';
  if not DirectoryExists(x_dir) then
    CreateDir(x_dir);

  x_TextFilePath := x_dir + '\data.txt';

  if MessageDlg('This will create text files of the data.' + chr(13) +
    'This will take about a minute to execute. Please do not shut the application off.' , mtWarning, mbOKCancel, 0) = mrOk then
    begin

      AssignFile(F_data, x_TextFilePath);
      ReWrite(F_data);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      Gp1Sds := TSQLDataSet.Create(nil);
      Gp1Sds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.Close;
      GpSds.CommandText := 'SELECT TableName FROM WebTablesLite WHERE active = 1';
      GpSds.Open;

      S := 'BEGIN TRANSACTION;';
      Writeln(F_data, S);

      while (not GpSds.EOF) do
        begin

          S := '/*=============================================*/';
          Writeln(F_data, S);

          S := 'delete from ' + GpSds['TableName'] + ';';
          Writeln(F_data, S);

          Gp1Sds.Close;
          Gp1Sds.CommandText := 'exec [p_InsertGenerator] ' + GpSds['TableName'] + ', 2';
          Gp1Sds.Open;

          while not (Gp1Sds.EOF) do
            begin

              if Gp1Sds['Qry']<>null then
                begin
                  S := Gp1Sds['Qry'];
                  Writeln(F_data, S);
                end;

              Gp1Sds.Next;
            end;

          S := '';
          Writeln(F_data, S);

          GpSds.Next;

        end;

      S := '';
      Writeln(F_data, S);

      S := 'COMMIT;';
      Writeln(F_data, S);

      S := '';
      Writeln(F_data, S);

      S := 'VACUUM;';
      Writeln(F_data, S);

      CloseFile(F_data);

      GpSds.Free;
      Gp1Sds.Free;

    end;

  ShowMessage('done');

end;

procedure TSQLiteForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSQLiteForm.FormDestroy(Sender: TObject);
begin
  SQLiteForm := nil;
end;

{
procedure TSQLiteForm.ExecuteBatchFile(x_FileName: String);
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
}

procedure TSQLiteForm.cxButton2Click(Sender: TObject);
var
  x_file, x_dir: string;
begin

  x_dir := g_ReportDir + '\SQLite';
  x_file := g_ReportDir + '\SQLite\import.bat';

{
  if FileExists(x_file) then
    ExecuteBatchFile(x_file);
}

  ShellExecute(handle,'open',PChar(x_dir), '','',SW_SHOWNORMAL);
end;

end.
