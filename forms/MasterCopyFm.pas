unit MasterCopyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, ExtCtrls, cxGraphics, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, cxGroupBox;

type
  TMasterCopyForm = class(TForm)
    GroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    cxOKButton: TcxButton;
    cxCancelButton: TcxButton;
    cxFromMasterLCMB: TcxLookupComboBox;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDS: TDataSource;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsMasterCode: TStringField;
    MasterCdsname: TStringField;
    cxToMasterLCMB: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterCopyForm: TMasterCopyForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TMasterCopyForm.FormCreate(Sender: TObject);
begin

  MasterCds.Active := True;

end;

end.
