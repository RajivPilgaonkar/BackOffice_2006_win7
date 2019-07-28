unit AdditionalRemarksFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxDBEdit, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons;

type
  TAdditionalRemarksForm = class(TForm)
    cxDBMemo1: TcxDBMemo;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdditionalRemarksForm: TAdditionalRemarksForm;

implementation

uses QuoCitywiseFm;

{$R *.dfm}

procedure TAdditionalRemarksForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

end.
