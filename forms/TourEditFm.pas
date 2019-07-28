unit TourEditFm;

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
  TTourEditForm = class(TCustom_1ML_Form)
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    Label3: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label4: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    AgentDS: TDataSource;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    HotelCdsCities_id: TIntegerField;
    MasterCdstourcodes_id: TIntegerField;
    MasterCdstourcode: TStringField;
    MasterCdstour: TStringField;
    MasterCdsfit: TBooleanField;
    MasterCdsnoofdays: TIntegerField;
    MasterCdsagent_addressbook_id: TIntegerField;
    MasterCdshotel_addressbook_id: TIntegerField;
    MasterCdstailormade: TBooleanField;
    MasterCdssingleconstituent: TBooleanField;
    MasterCdsactive: TBooleanField;
    MasterCdscities_id: TIntegerField;
    MasterCdsitinerary_en: TMemoField;
    MasterCdsfactfinder_en: TMemoField;
    MasterCdstravelstyles_id: TIntegerField;
    Label7: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBCheckBox4: TcxDBCheckBox;
    AgentCdsCities_id: TIntegerField;
    cxAgentButton: TcxButton;
    cxHotelButton: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxAgentButtonClick(Sender: TObject);
    procedure cxHotelButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  public
    { Public declarations }
  end;

var
  TourEditForm: TTourEditForm;
  TourEditForm_level: integer;
  TourEditForm_Mode: integer;
  TourEditForm_TourCodes_id: integer;

implementation

uses BackOfficeDM, SearchSortFm;

{$R *.dfm}

procedure TTourEditForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := TourEditForm_TourCodes_id;

  inherited;

  AgentCds.Open;
  CitiesCds.Open;
  HotelCds.Open;

  cxButtonUtilities.Visible := false;

  if TourEditForm_Mode = 1 then
    MasterCds.Insert;

end;

procedure TTourEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTourEditForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'TourCodes';
  Custom_MasterKeyField := 'TourCodes_id';
  Custom_AdmLevel := TourEditForm_level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 290;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TTourEditForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure TTourEditForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['FIT'] := false;
  MasterCds['TailorMade'] := false;
  MasterCds['Active'] := true;
  MasterCds['SingleConstituent'] := true;
end;

procedure TTourEditForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['FIT'] = null then
    raise Exception.Create('Please enter if FIT');

  if MasterCds['TailorMade'] = null then
    raise Exception.Create('Please enter if Tailor Made');

  if MasterCds['Active'] = null then
    raise Exception.Create('Please enter if Active');

  if MasterCds['SingleConstituent'] = null then
    raise Exception.Create('Please enter if Single Constituent');

  if (MasterCds['TourCode'] = null) or (trim(MasterCds['TourCode']) = '') then
    raise Exception.Create('Please enter the Code');

  if (MasterCds['Tour'] = null) or (trim(MasterCds['Tour']) = '') then
    raise Exception.Create('Please enter the Tour');

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

  if MasterCds['TourCodes_id'] = null then
    raise Exception.Create('TourCodes_id is not assigned');

  if MasterCds.State = dsInsert then
    TourEditForm_TourCodes_id := MasterCds['TourCodes_id'];

end;

procedure TTourEditForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if TourEditForm_Mode = 1 then
    begin
      MasterCds.Active := false;
      MasterSds.Active := false;

      MasterSds.Params[0].Value := TourEditForm_TourCodes_id;

      MasterSds.Active := true;
      MasterCds.Active := true;
    end;
end;

function TTourEditForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TourCodes ' +
    'WHERE TourCode = ' + QuotedStr(Trim(MasterCds['TourCode'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TourCodes_id <> ' + IntToStr(MasterCds['TourCodes_id']) + ') ';

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


procedure TTourEditForm.cxAgentButtonClick(Sender: TObject);
var
  i: integer;
  QueryString: string;
begin
  inherited;

  if (MasterCds['cities_id'] = null) then
    exit;

  if MasterCds.State in [dsBrowse] then
    MasterCds.Edit;

  QueryString := 'SELECT  Addressbook_id, Organisation, City FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(MasterCds['cities_id']) + ' ' +
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
      MasterCds['Agent_Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TTourEditForm.cxHotelButtonClick(Sender: TObject);
var
  i: integer;
  QueryString: string;
begin
  inherited;

  if (MasterCds['cities_id'] = null) then
    exit;

  if MasterCds.State in [dsBrowse] then
    MasterCds.Edit;

  QueryString := 'SELECT  Addressbook_id, Organisation, City FROM dbo.fn_addressbook(2,''H'') ' +
    'WHERE Cities_id = ' + IntToStr(MasterCds['cities_id']) + ' ' +
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
      MasterCds['Hotel_Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
    end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

end.
