unit CityGroupsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBCtrls,
  DBClient, Provider, SqlExpr, StdCtrls, Buttons, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLookAndFeelPainters, cxButtons, Menus, cxButtonEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel,
  cxGroupBox;

type
  TCityGroupsForm = class(TCustomMasterCxGridForm)
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdscities_id: TIntegerField;
    CitiesCdscity: TStringField;
    CitiesCdscountry: TStringField;
    CitiesCdsstate: TStringField;
    CitiesDS: TDataSource;
    Panel3: TPanel;
    Detail1Sds: TSQLDataSet;
    Detail1Dsp: TDataSetProvider;
    Detail1Ds: TDataSource;
    Detail1Cds: TClientDataSet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MasterCdsCarHireGroups_id: TIntegerField;
    MasterCdsCarHireGroup: TStringField;
    CustomMasterCxGridDBTableView1CarHireGroups_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1CarHireGroup: TcxGridDBColumn;
    Detail1CdsCarHireGroupCities_id: TIntegerField;
    Detail1CdsCarHireGroups_id: TIntegerField;
    Detail1CdsOrderNo: TIntegerField;
    Detail1CdsCities_id: TIntegerField;
    cxGridDBTableView1CarHireGroupCities_id: TcxGridDBColumn;
    cxGridDBTableView1CarHireGroups_id: TcxGridDBColumn;
    cxGridDBTableView1OrderNo: TcxGridDBColumn;
    cxGridDBTableView1Cities_id: TcxGridDBColumn;
    Detail1CdsNights: TIntegerField;
    cxGridDBTableView1Nights: TcxGridDBColumn;
    MasterCdsDefaultAgents_id: TIntegerField;
    CustomMasterCxGridDBTableView1DefaultAgentLookup: TcxGridDBColumn;
    MasterCdsDefaultAgentLookup: TStringField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    AgentDS: TDataSource;
    AgentCdsOrgCity: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure CustomMasterCxGridDBTableView1DefaultAgentLookupPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CityGroupsForm: TCityGroupsForm;
  _CityGroupsForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, SelOprFm, SearchSortFm;

{$R *.dfm}

procedure TCityGroupsForm.FormCreate(Sender: TObject);
begin
  CitiesSds.Active := False;
  CitiesCds.Active := True;

  MasterCdsName := 'CarHireGroups';
  MasterKeyField := 'CarHireGroups_id';

  AdmLevel := _CityGroupsForm_Level;

  inherited;

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  AgentCds.Open;

  CustomMasterCxGridDBTableView1.DataController.GotoFirst;

end;

procedure TCityGroupsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CityGroupsForm := nil;
end;

procedure TCityGroupsForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['CarHireGroup'] = null then
    raise Exception.Create('Please select the City Group');

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TCityGroupsForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CarHireGroups ' +
    'WHERE CarHireGroup = ''' + MasterCds['CarHireGroup'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (CarHireGroups_id <> ' + IntToStr(MasterCds['CarHireGroups_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TCityGroupsForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Detail1Cds['CarHireGroups_id'] = null then
    raise exception.create ('Please enter the City Group first');

  if Detail1Cds['OrderNo'] = null then
    raise exception.create ('Please enter the Order No');

  if Detail1Cds['Cities_id'] = null then
    raise exception.create ('Please enter the City');

  if (Detail1Cds.State = dsInsert) then
    begin
      Detail1Cds['CarHireGroupCities_id'] := GetNextId('CarHireGroupCities','CarHireGroupCities_id');
    end;

  if Detail1Cds['CarHireGroupCities_id'] = null then
    raise exception.create ('Please enter the CarHireGroupCities_id');

end;

procedure TCityGroupsForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCityGroupsForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds.ApplyUpdates(0);
end;

procedure TCityGroupsForm.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not Detail1Cds.EOF then
    raise exception.create ('Please delete the details first');
end;

procedure TCityGroupsForm.CustomMasterCxGridDBTableView1DefaultAgentLookupPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QueryString: string;
  i: integer;  
begin
  inherited;

  if MasterCds['CarHireGroups_id'] = null then
    raise exception.create ('Please enter the costing for this first');

  QueryString := 'SELECT DISTINCT cs.Addressbook_id, a.Organisation, a.City ' +
                 'FROM CarHireGroupCosts cs, Addressbook a ' +
                 'WHERE cs.Addressbook_id = a.Addressbook_id ' +
                 'AND cs.CarHireGroups_id = ' + IntToStr(MasterCds['CarHireGroups_id']);

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  for i := 0 to 2 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Agent';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.SearchCds.Open;

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if MasterCds.State = dsBrowse then
            MasterCds.Edit;
          MasterCds['DefaultAgents_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;

    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
