unit PrinAgentAcHeadsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox;

type
  TPrinAgentAcHeadsForm = class(TCustom_1MG_Form)
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsorganisation: TStringField;
    MasterCdscity: TStringField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsDebitAccountHeads_id: TIntegerField;
    MasterCdsCreditAccountHeads_id: TIntegerField;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    PrinAgentCdsAddressbook_id: TIntegerField;
    PrinAgentCdsOrganisation: TStringField;
    PrinAgentCdsCity: TStringField;
    PrinAgentCdsCities_id: TIntegerField;
    PrinAgentCdsContact: TStringField;
    PrinAgentDS: TDataSource;
    AccountHeadsSds: TSQLDataSet;
    AccountHeadsDsp: TDataSetProvider;
    AccountHeadsCds: TClientDataSet;
    AccountHeadsCdsAccountHeads_id: TIntegerField;
    AccountHeadsCdsAccountHeadsNo: TIntegerField;
    AccountHeadsCdsDescription: TStringField;
    AccountHeadsCdsfolio: TStringField;
    AccountHeadsDS: TDataSource;
    CountriesSds: TSQLDataSet;
    CountriesDsp: TDataSetProvider;
    CountriesCds: TClientDataSet;
    CountriesCdsCountries_id: TIntegerField;
    CountriesCdsCountry: TStringField;
    CountriesDs: TDataSource;
    cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1organisation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1city: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DebitAccountHeads_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CreditAccountHeads_id: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
  end;

var
  PrinAgentAcHeadsForm: TPrinAgentAcHeadsForm;
  PrinAgentAcHeadsForm_Level: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TPrinAgentAcHeadsForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  CountriesCds.Open;
  
  inherited;

  UsersCds.Open;
  PrinAgentCds.Open;
  AccountHeadsCds.Open;

end;

procedure TPrinAgentAcHeadsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TPrinAgentAcHeadsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PrinAgentAcHeadsForm := nil;
end;

procedure TPrinAgentAcHeadsForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Addressbook';
  Custom_MasterKeyField := 'Addressbook_id';
  Custom_AdmLevel := PrinAgentAcHeadsForm_Level;

  Custom_FormWidth := 860;
  Custom_FormHeight := 540;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TPrinAgentAcHeadsForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

end.
