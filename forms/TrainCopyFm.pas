unit TrainCopyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus, cxGroupBox;

type
  TTrainCopyForm = class(TForm)
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxTrainNoEdit: TcxTextEdit;
    Label2: TLabel;
    cxWefDateEdit: TcxDateEdit;
    Panel3: TPanel;
    cxOkButton: TcxButton;
    cxCancelButton: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrainCopyForm: TTrainCopyForm;

implementation

{$R *.dfm}

end.
