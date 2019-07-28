unit PrincipalAgentFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, cxLookAndFeelPainters, StdCtrls, cxButtons, DB,
  DBClient, Provider, SqlExpr, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxCheckBox, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, Menus;

type
  TPrincipalAgentForm = class(TForm)
    Panel7: TPanel;
    OrganisationLabel: TLabel;
    cxOrganisationCkb: TcxCheckBox;
    cxOrganisationLCMB: TcxLookupComboBox;
    OrgSds: TSQLDataSet;
    OrgDsp: TDataSetProvider;
    OrgCds: TClientDataSet;
    OrgDS: TDataSource;
    Panel3: TPanel;
    cxOkButton: TcxButton;
    OrgCdsAddressbook_id: TIntegerField;
    OrgCdsOrganisation: TStringField;
    OrgCdsCity: TStringField;
    OrgCdsCities_id: TIntegerField;
    OrgCdsContact: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalAgentForm: TPrincipalAgentForm;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TPrincipalAgentForm.FormCreate(Sender: TObject);
begin
  OrgCds.Close;
  OrgCds.Open;

  cxOrganisationLCMB.EditValue := GetDefaultPrincipalAgent;

end;

end.
