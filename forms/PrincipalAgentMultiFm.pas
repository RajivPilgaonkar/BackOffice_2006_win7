unit PrincipalAgentMultiFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, cxLookAndFeelPainters, StdCtrls, cxButtons, DB,
  DBClient, Provider, SqlExpr, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxCheckBox, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, Menus, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TPrincipalAgentMultiForm = class(TForm)
    Panel7: TPanel;
    OrganisationLabel: TLabel;
    OrgSds: TSQLDataSet;
    OrgDsp: TDataSetProvider;
    OrgCds: TClientDataSet;
    OrgDS: TDataSource;
    Panel3: TPanel;
    cxOkButton: TcxButton;
    PrincipalAgentsGrid: TcxGrid;
    PrincipalAgentsGridDBTableView1: TcxGridDBTableView;
    PrincipalAgentsGridLevel1: TcxGridLevel;
    OrgCdsAddressbook_id: TIntegerField;
    OrgCdsOrganisation: TStringField;
    OrgCdsCity: TStringField;
    OrgCdsCities_id: TIntegerField;
    OrgCdsContact: TStringField;
    OrgCdsPostalCode: TStringField;
    PrincipalAgentsGridDBTableView1Addressbook_id: TcxGridDBColumn;
    PrincipalAgentsGridDBTableView1Organisation: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxOkButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrincipalAgentMultiForm: TPrincipalAgentMultiForm;
  _PrincipalAgentMultiForm_Addr_id_str : string;

implementation

uses GeneralUt;

{$R *.dfm}

procedure TPrincipalAgentMultiForm.FormCreate(Sender: TObject);
begin
  OrgCds.Close;
  OrgCds.Open;

  _PrincipalAgentMultiForm_Addr_id_str := '';

end;

procedure TPrincipalAgentMultiForm.cxOkButtonClick(Sender: TObject);
begin

  OrgCds.First;
  while not OrgCds.EOF do
    begin
      if _PrincipalAgentMultiForm_Addr_id_str > '' then
        _PrincipalAgentMultiForm_Addr_id_str := _PrincipalAgentMultiForm_Addr_id_str + ',';
      _PrincipalAgentMultiForm_Addr_id_str := _PrincipalAgentMultiForm_Addr_id_str + IntToStr(OrgCds['Addressbook_id']);
      OrgCds.Next;
    end;

  _PrincipalAgentMultiForm_Addr_id_str := '(' + _PrincipalAgentMultiForm_Addr_id_str + ')';

end;

end.
