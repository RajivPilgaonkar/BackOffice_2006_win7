unit QuoExclusionDisplayFm;

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
  TQuoExclusionDisplayForm = class(TCustom_1MG_Form)
    MasterCdsQuoExclusionDetailsDisplay_id: TIntegerField;
    MasterCdsQuoExclusionDetails_id: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdsDisplay: TBooleanField;
    cxAgentLabel: TcxLabel;
    cxGrid1DBBandedTableView1QuoExclusionDetailsDisplay_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoExclusionDetails_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Display: TcxGridDBBandedColumn;
    QuoExclSds: TSQLDataSet;
    QuoExclDsp: TDataSetProvider;
    QuoExclCds: TClientDataSet;
    QuoExclDs: TDataSource;
    cxButton1: TcxButton;
    QuoExclCdsQuoExclusionDetails_id: TIntegerField;
    QuoExclCdsQuoExclusionDetail: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure SetAgentDetails;
  public
    { Public declarations }
  end;

var
  QuoExclusionDisplayForm: TQuoExclusionDisplayForm;
  QuoExclusionDisplayForm_level: integer;
  QuoExclusionDisplayForm_QuoExclusions_id: integer;
  QuoExclusionDisplayForm_Agent: string;
  QuoExclusionDisplayForm_Addressbook_id: integer;
  QuoExclusionDisplayForm_Quotations_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoExclusionDisplayForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  SetAgentDetails;

  QuoExclCds.Open;

  MasterSds.Close;
  MasterSds.Params[0].Value := QuoExclusionDisplayForm_Addressbook_id;
  MasterSds.Params[1].Value := QuoExclusionDisplayForm_QuoExclusions_id;

  inherited;

end;

procedure TQuoExclusionDisplayForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoExclusionDisplayForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoExclusionDisplayForm := nil;
end;

procedure TQuoExclusionDisplayForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoExclusionDetailsDisplay';
  Custom_MasterKeyField := 'QuoExclusionDetailsDisplay_id';
  Custom_AdmLevel := QuoExclusionDisplayForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TQuoExclusionDisplayForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TQuoExclusionDisplayForm.cxButton1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  if QuoExclusionDisplayForm_Addressbook_id = 0 then
    raise exception.create('Agent not entered');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_AddExclusionDetailsDisplay ' +
    IntToStr(QuoExclusionDisplayForm_Addressbook_id) + ',' +
    IntToStr(QuoExclusionDisplayForm_QuoExclusions_id);

  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;

end;

procedure TQuoExclusionDisplayForm.SetAgentDetails;
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT q.PrincipalAgents_id, a.Organisation ' +
    'FROM Quotations q INNER JOIN Addressbook a ON q.PrincipalAgents_id = a.Addressbook_id ' +
    'WHERE q.Quotations_id = ' + IntToStr(QuoExclusionDisplayForm_Quotations_id);

  GpSds.Open;

  if (not GpSds.EOF) then
    begin

      QuoExclusionDisplayForm_Addressbook_id := 0;
      if GpSds['PrincipalAgents_id'] <> null then
        QuoExclusionDisplayForm_Addressbook_id := GpSds['PrincipalAgents_id'];

      QuoExclusionDisplayForm_Agent := '<Principal Agent not entered>';
      if GpSds['Organisation'] <> null then
        QuoExclusionDisplayForm_Agent := GpSds['Organisation'];
      cxAgentLabel.Caption := QuoExclusionDisplayForm_Agent;

    end;

  GpSds.Free;

end;


end.
