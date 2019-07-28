unit MasterTourEditFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, FMTBcd, DB, DBClient,
  Provider, SqlExpr, cxPC, cxNavigator, cxDBNavigator, cxControls,
  cxContainer, cxEdit, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxCheckBox, cxDBEdit, cxTextEdit, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TMasterTourEditForm = class(TCustom_1ML_Form)
    MasterCdsmastercode: TStringField;
    MasterCdsname: TStringField;
    MasterCdsfit: TBooleanField;
    MasterCdsnoofdays: TIntegerField;
    MasterCdstailormade: TBooleanField;
    MasterCdsactive: TBooleanField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdscompanies_id: TIntegerField;
    MasterCdsDomestic: TBooleanField;
    MasterCdsLpDay: TIntegerField;
    MasterCdsLpCities_id: TIntegerField;
    MasterCdsLpBanks_id: TIntegerField;
    MasterCdsMasterCategories_id: TIntegerField;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    Label2: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label3: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label4: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    PrinAgentSds: TSQLDataSet;
    PrinAgentDsp: TDataSetProvider;
    PrinAgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    PrinAgentDS: TDataSource;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    BankSds: TSQLDataSet;
    BankDsp: TDataSetProvider;
    BankCds: TClientDataSet;
    BankDs: TDataSource;
    BankCdsAddressbook_id: TIntegerField;
    BankCdsOrganisation: TStringField;
    BankCdsCity: TStringField;
    BankCdsCities_id: TIntegerField;
    cxBankButton: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxBankButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  public
    { Public declarations }
  end;

var
  MasterTourEditForm: TMasterTourEditForm;
  MasterTourEditForm_level: integer;
  MasterTourEditForm_Mode: integer;
  MasterTourEditForm_Masters_id: integer;

implementation

uses BackOfficeDM, SearchSortFm;

{$R *.dfm}

procedure TMasterTourEditForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := MasterTourEditForm_Masters_id;

  inherited;

  PrinAgentCds.Open;
  CitiesCds.Open;
  BankCds.Open;

  cxButtonUtilities.Visible := false;

  if MasterTourEditForm_Mode = 1 then
    MasterCds.Insert;

end;

procedure TMasterTourEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TMasterTourEditForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Masters';
  Custom_MasterKeyField := 'Masters_id';
  Custom_AdmLevel := MasterTourEditForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 290;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TMasterTourEditForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure TMasterTourEditForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['FIT'] := false;
  MasterCds['TailorMade'] := false;
  MasterCds['Active'] := true;
  MasterCds['Domestic'] := true;

  MasterCds['Companies_id'] := 1;
end;

procedure TMasterTourEditForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['FIT'] = null then
    raise Exception.Create('Please enter if FIT');

  if MasterCds['TailorMade'] = null then
    raise Exception.Create('Please enter if Tailor Made');

  if MasterCds['Active'] = null then
    raise Exception.Create('Please enter if Active');

  if MasterCds['Domestic'] = null then
    raise Exception.Create('Please enter if Domestic');

  if (MasterCds['MasterCode'] = null) or (trim(MasterCds['MasterCode']) = '') then
    raise Exception.Create('Please enter the Code');

  if (MasterCds['Name'] = null) or (trim(MasterCds['Name']) = '') then
    raise Exception.Create('Please enter the Name');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  if MasterCds['TailorMade'] = true then
    begin
      if MessageDlg('Will be classified under ''Tailor Made''. Are you sure?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
        abort;
    end
  else if MasterCds['FIT'] = true then
    begin
      if MessageDlg('Will be classified under ''FIT''. Are you sure?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
        abort;
    end
  else
    begin
      if MessageDlg('Will be classified under ''Group''. Are you sure?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
        abort;
    end;

  inherited;

  if MasterCds['Masters_id'] = null then
    raise Exception.Create('Masters_id is not assigned');

  if MasterCds.State = dsInsert then
    MasterTourEditForm_Masters_id := MasterCds['Masters_id'];

end;

procedure TMasterTourEditForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if MasterTourEditForm_Mode = 1 then
    begin
      MasterCds.Active := false;
      MasterSds.Active := false;

      MasterSds.Params[0].Value := MasterTourEditForm_Masters_id;

      MasterSds.Active := true;
      MasterCds.Active := true;
    end;
end;

function TMasterTourEditForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM Masters ' +
    'WHERE MasterCode = ' + QuotedStr(Trim(MasterCds['MasterCode'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Masters_id <> ' + IntToStr(MasterCds['Masters_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;


procedure TMasterTourEditForm.cxBankButtonClick(Sender: TObject);
var
  i: integer;
  QueryString: string;
begin
  inherited;

  if (MasterCds['LpCities_id'] = null) then
    exit;

  if MasterCds.State in [dsBrowse] then
    MasterCds.Edit;

  QueryString := 'SELECT Addressbook_id, Organisation, City FROM dbo.fn_addressbook(2,''B'') ' +
    'WHERE Cities_id = ' + IntToStr(MasterCds['LpCities_id']) + ' ' +
    'ORDER BY Organisation';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

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
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 300;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
    begin
      if MasterCds.State = dsBrowse then
        MasterCds.Edit;
      MasterCds['LpBanks_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
