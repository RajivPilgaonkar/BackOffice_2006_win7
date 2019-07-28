unit CarHireAgentChangeFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxGroupBox, dxSkinsCore, dxSkinsDefaultPainters;

type
  TCarHireAgentChangeForm = class(TForm)
    cxGroupBox5: TcxGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    Panel2: TPanel;
    cxCloseBtn: TcxButton;
    procedure cxCloseBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarHireAgentChangeForm: TCarHireAgentChangeForm;

implementation

uses QuoCitywiseFm;

{$R *.dfm}

procedure TCarHireAgentChangeForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.
