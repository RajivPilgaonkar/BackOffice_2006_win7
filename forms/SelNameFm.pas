unit SelNameFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, Provider, DBClient, DB,
  SqlExpr;

type
  TSelNameForm = class(TForm)
    Panel1: TPanel;
    OkBB: TBitBtn;
    CancelBB: TBitBtn;
    NameCMB: TComboBox;
    SelNameQry: TSQLQuery;
    SelNameDS: TDataSource;
    SelNameCDS: TClientDataSet;
    SelNameDSP: TDataSetProvider;
    procedure FormShow(Sender: TObject);
    procedure NameCMBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelNameForm: TSelNameForm;
  _QueryStr: String;
  _QueryField: String;
implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TSelNameForm.FormShow(Sender: TObject);
begin
  SelNameQry.Close;
  SelNameQry.SQL.Clear;
  SelNameQry.SQL.Add(_QueryStr);
  SelNameQry.Active := True;
  SelNameCDS.Active := True;
  NameCMB.Items.Clear;
  SelNameCDS.First;
  while not SelNameCDS.EOF do
    begin
      if SelNameForm.SelNameCDS[_QueryField] <> null then
        NameCMB.Items.Add(SelNameForm.SelNameCDS[_QueryField]);
      SelNameCDS.Next;
    end;
  //SelNameQry.Close;
  NameCMB.SetFocus;
end;

procedure TSelNameForm.NameCMBKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    OkBB.SetFocus;
end;

end.
