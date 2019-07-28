unit ChangePasswordFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel, cxControls,
  cxContainer, cxEdit, cxGroupBox,DBXpress,DBCtrls,DB,Provider,SqlExpr,
  Menus, dxSkinsCore, dxSkinsDefaultPainters;

type
  TChangePasswordForm = class(TForm)
    cxChangePassGB: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    OldPassEdit: TEdit;
    NewPassEdit: TEdit;
    ConfirmPassEdit: TEdit;
    cxGroupBox1: TcxGroupBox;
    cxCancelBtn: TcxButton;
    cxOKBtn: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    function ChangeValid: Boolean;
    procedure cxOKBtnClick(Sender: TObject);
    procedure cxCancelBtnClick(Sender: TObject);
    procedure OldPassEditKeyPress(Sender: TObject; var Key: Char);
    procedure NewPassEditKeyPress(Sender: TObject; var Key: Char);
    procedure ConfirmPassEditKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePasswordForm : TChangePasswordForm;
  _ChangePassForm_Level : Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TChangePasswordForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TChangePasswordForm.FormDestroy(Sender: TObject);
begin
  ChangePasswordForm := Nil;
end;

function TChangePasswordForm.ChangeValid: Boolean;
var
  GpSds : TSQLDataset;
  pwd : string;
  Retval : Boolean;
begin
  Retval := True;
  pwd := '';

  GpSds := TSQLDataset.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT PWD FROM AdmUsers ' +
    'WHERE AdmUsers_id = ' + IntToStr(g_users_id);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['PWD']<>null) then
    begin
      pwd := GpSds['PWD'];
    end;

  if pwd <> Trim(Oldpassedit.Text) then
    begin
      MessageDlg('Incorrect Old Password',mtError,[mbOK],0);
      Retval := False;
    end;
  GpSds.Free;

  if (Retval) and (Trim(NewPassEdit.Text) = '') then
    begin
      MessageDlg('New Password cannot be blank',mtError,[mbOK],0);
      Retval := False;
    end;

  if (Retval) and (Trim(ConfirmPassEdit.Text) <> Trim(NewPassEdit.Text)) then
    begin
      MessageDlg('New Password not the same as Confirm Password ',mtError,[mbOK],0);
      Retval := False;
    end;
  Result := Retval;

end;


procedure TChangePasswordForm.cxOKBtnClick(Sender: TObject);
var
  GpSds : TSQLDataset;
begin
  if ChangeValid then
    begin
      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      GpSds.CommandText := 'UPDATE AdmUsers SET PWD = ''' +
        Trim(NewpassEdit.Text) + ''' ' +
        'WHERE AdmUsers_id = ' + IntToStr(g_users_id);

      GpSds.ExecSQL;
      GpSds.Free;
    end;
  ChangePassWordForm.Close;
end;

procedure TChangePasswordForm.cxCancelBtnClick(Sender: TObject);
begin
  ChangePasswordForm.Close;
end;

procedure TChangePasswordForm.OldPassEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
    NewPassEdit.SetFocus;
end;

procedure TChangePasswordForm.NewPassEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
    ConfirmPassEdit.SetFocus;
end;

procedure TChangePasswordForm.ConfirmPassEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
    cxOKBtn.SetFocus;
end;

end.
