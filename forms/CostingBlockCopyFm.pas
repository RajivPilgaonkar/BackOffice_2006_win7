unit CostingBlockCopyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FMTBcd, DB,
  DBClient, Provider, SqlExpr, cxGraphics, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxGroupBox, cxLabel;

type
  TCostingBlockCopyForm = class(TForm)
    GroupBox1: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    cxWefDateEdit: TcxDateEdit;
    Panel3: TPanel;
    cxOkButton: TcxButton;
    cxCancelButton: TcxButton;
    cxMasterCodeEdit: TcxLookupComboBox;
    MasterTourSds: TSQLDataSet;
    MasterTourDsp: TDataSetProvider;
    MasterTourCds: TClientDataSet;
    MasterTourCdsMasters_id: TIntegerField;
    MasterTourCdsMastercode: TStringField;
    MasterTourDs: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostingBlockCopyForm: TCostingBlockCopyForm;

implementation

{$R *.dfm}

procedure TCostingBlockCopyForm.FormCreate(Sender: TObject);
begin
  MasterTourCds.Active := True;
end;

end.
