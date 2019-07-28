unit AddressBookFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M2DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxDBEdit, jpeg, cxControls, cxContainer,
  cxEdit, cxTextEdit, StdCtrls, cxCheckBox, cxNavigator, cxDBNavigator,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, Buttons, DBCtrls,
  cxGroupBox, cxRadioGroup, Menus, cxLookAndFeelPainters, cxButtons,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel;

type
  TAddressbookForm = class(TCustom1M2DForm)
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsorganisation: TStringField;
    MasterCdsaddress: TStringField;
    MasterCdscity: TStringField;
    MasterCdspostalcode: TStringField;
    MasterCdscountries_id: TIntegerField;
    MasterCdsphone: TStringField;
    MasterCdsfax: TStringField;
    MasterCdspan: TStringField;
    MasterCdswww: TStringField;
    MasterCdsbranch_cities_id: TIntegerField;
    MasterCdsnote: TMemoField;
    MasterCdsareacode: TStringField;
    MasterCdsbank_addressbook_id: TIntegerField;
    MasterCdsthrough_addressbook_id: TIntegerField;
    MasterCdsmailto_addressbook_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    MasterCdsstates_id: TIntegerField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsweb: TBooleanField;
    MasterCdscompany: TBooleanField;
    MasterCdstaxno: TStringField;
    GroupBox1: TcxGroupBox;
    Label6: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label12: TcxLabel;
    Label11: TcxLabel;
    Label14: TcxLabel;
    Label13: TcxLabel;
    Label16: TcxLabel;
    Label15: TcxLabel;
    Label18: TcxLabel;
    Label17: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Image1: TImage;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    GroupBox2: TcxGroupBox;
    GroupBox3: TcxGroupBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Detail1Cdsaddressdetails_id: TIntegerField;
    Detail1Cdsaddressbook_id: TIntegerField;
    Detail1Cdssalutation: TStringField;
    Detail1Cdsfirstname: TStringField;
    Detail1Cdslastname: TStringField;
    Detail1Cdstitle: TStringField;
    Detail1Cdsextension: TStringField;
    Detail1Cdsemail: TStringField;
    Detail1Cdsphoneres: TStringField;
    Detail1Cdsmobile: TStringField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView3: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView3extension: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3email: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3phoneres: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3mobile: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1salutation: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firstname: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1lastname: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1title: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1extension: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1email: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1phoneres: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mobile: TcxGridDBBandedColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Detail2Cdsaddresscategories_id: TIntegerField;
    Detail2Cdsaddressbook_id: TIntegerField;
    Detail2Cdscategories_id: TIntegerField;
    cxGrid2DBTableView1categories_id: TcxGridDBColumn;
    DBText1: TDBText;
    BitBtn1: TcxButton;
    Label19: TcxLabel;
    cxRadioGroup: TcxRadioGroup;
    cxSearchTextEdit: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    Hook1: TMenuItem;
    Bound1: TMenuItem;
    cxDisplayButton: TcxButton;
    cxDBCheckBox3: TcxDBCheckBox;
    MasterCdsIncludeInBalanceSheet: TBooleanField;
    Label20: TcxLabel;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    MasterCdsInvoiceTo_Addressbook_id: TIntegerField;
    MasterCdsInvoiceOrderNo: TIntegerField;
    Label21: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    MasterCdsemail: TStringField;
    cxDBMemo3: TcxDBMemo;
    Detail1CdsOrderNo: TIntegerField;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    MasterCdsrtgs_beneficiary: TStringField;
    MasterCdsrtgs_BankAccountNo: TStringField;
    MasterCdsrtgs_Bank: TStringField;
    MasterCdsrtgs_BankAddress: TStringField;
    MasterCdsrtgs_BankBranchCode: TStringField;
    MasterCdsrtgs_RtgsBankCode: TStringField;
    cxLabel1: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBMemo4: TcxDBMemo;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBMemo5: TcxDBMemo;
    MasterCdsCountryCode: TStringField;
    cxDBTextEdit8: TcxDBTextEdit;
    MasterCdsMailExcel: TBooleanField;
    CompRptSds: TSQLDataSet;
    CompRptDsp: TDataSetProvider;
    CompRptCds: TClientDataSet;
    CompRptDs: TDataSource;
    CompRptCdsCompositeReportTypes_id: TIntegerField;
    CompRptCdsCompositeReportType: TStringField;
    cxLabel7: TcxLabel;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    MasterCdsCompositeReportTypes_id: TIntegerField;
    cxLabel8: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    MasterCdsIndiaOffice: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    function IsAddressDuplicate: Boolean;
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdscities_idChange(Sender: TField);
    procedure MasterCdscountries_idChange(Sender: TField);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    function IsCategoryDuplicate: Boolean;
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure cxSearchTextEditKeyPress(Sender: TObject; var Key: Char);
    procedure Hook1Click(Sender: TObject);
    procedure Bound1Click(Sender: TObject);
    procedure cxDisplayButtonClick(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    function NextOrderNo: integer;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddressbookForm: TAddressbookForm;
  _AddressbookForm_Level: integer;

implementation

uses BackOfficeDM, SearchSortFm, AddrCategorySearchFm;

{$R *.dfm}

procedure TAddressbookForm.FormCreate(Sender: TObject);
begin
  inherited;


  BackOfficeDataModule.StatesSds.Active := True;
  BackOfficeDataModule.StatesCds.Active := True;

  BackOfficeDataModule.CountriesSds.Active := True;
  BackOfficeDataModule.CountriesCds.Active := True;

  BackOfficeDataModule.CurrenciesSds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;

  BackOfficeDataModule.OrgSds.Active := True;
  BackOfficeDataModule.OrgCds.Active := True;

  BackOfficeDataModule.BankSds.Active := True;
  BackOfficeDataModule.BankCds.Active := True;

  BackOfficeDataModule.CategoriesSds.Active := True;
  BackOfficeDataModule.CategoriesCds.Active := True;

  CompRptCds.Active := true;

  MasterCdsName := 'Addressbook';
  MasterKeyField := 'Addressbook_id';

  Detail1CdsName := 'AddressDetails';
  Detail1KeyField := 'AddressDetails_id';

  Detail2CdsName := 'AddressCategories';
  Detail2KeyField := 'AddressCategories_id';

  AdmLevel := _AddressbookForm_Level;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;


end;

procedure TAddressbookForm.FormDestroy(Sender: TObject);
begin
  inherited;
  AddressBookForm := nil;
end;

function TAddressbookForm.IsAddressDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM Addressbook ' +
    'WHERE (1=1) ';

  if MasterCds['Organisation'] <> null then
    QueryString := QueryString + ' AND (Organisation = ''' + MasterCds['Organisation'] + ''') ';

  if MasterCds['Cities_id'] <> null then
    QueryString := QueryString + ' AND (Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ') '
  else if MasterCds['City'] <> null then
    QueryString := QueryString + ' AND (City = ''' + MasterCds['City'] + ''') ';

  if MasterCds['Address'] <> null then
    QueryString := QueryString + ' AND (Address = ''' + MasterCds['Address'] + ''') ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (Addressbook_id <> ' + IntToStr(MasterCds['Addressbook_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;

function TAddressbookForm.IsCategoryDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM AddressCategories ' +
    'WHERE Addressbook_id = ' + IntToStr(Detail2Cds['Addressbook_id']) + ' ' +
    'AND Categories_id = ' + IntToStr(Detail2Cds['Categories_id']) + ' ' ;

  if Detail2Cds.State = dsEdit then
    QueryString := QueryString + ' AND (AddressCategories_id <> ' + IntToStr(Detail2Cds['AddressCategories_id']) + ') ';

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


procedure TAddressbookForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['City'] = null) or (Trim(MasterCds['City']) = '') then
    raise Exception.Create('Please enter the City');

  if (IsAddressDuplicate) then
    raise Exception.create('Duplicate record found');

  if (MasterCds['Countries_id'] = null) then
    raise Exception.Create('Please enter the Country');

  if (MasterCds['Currencies_id'] = null) then
    raise Exception.Create('Please enter the Currency');

end;

procedure TAddressbookForm.MasterCdscities_idChange(Sender: TField);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if (MasterCds['Cities_id'] <> null) then
    begin

      QueryString := 'SELECT City FROM Cities WHERE Cities_id = ' + IntToStr(MasterCds['Cities_id']);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Active := True;

      if (not GpSds.EOF) and (GpSds['City'] <> null) then
        MasterCds['City'] := GpSds['City'];

      GpSds.Free;

    end;

end;

procedure TAddressbookForm.MasterCdscountries_idChange(Sender: TField);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if (MasterCds['Countries_id'] <> null) then
    begin

      QueryString := 'SELECT Currencies_id FROM Countries WHERE Countries_id = ' + IntToStr(MasterCds['Countries_id']);

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Active := True;

      if (not GpSds.EOF) and (GpSds['Currencies_id'] <> null) then
        MasterCds['Currencies_id'] := GpSds['Currencies_id'];

      GpSds.Free;

    end;

end;

procedure TAddressbookForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Detail1Cds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter/select an organisation first');

  if (Detail1Cds['Lastname'] = null) or (Trim(Detail1Cds['LastName']) = '') then
    raise Exception.Create('Please enter the Last Name');

  if (Detail1Cds['Salutation'] = null) or (Trim(Detail1Cds['Salutation']) = '') then
    raise Exception.Create('Please enter the Salutation');

end;

procedure TAddressbookForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Detail2Cds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter/select an organisation first');

  if (Detail2Cds['Categories_id'] = null) then
    raise Exception.Create('Please enter the Category');

  if (IsCategoryDuplicate) then
    raise Exception.create('Duplicate record found');


end;

procedure TAddressbookForm.cxSearchTextEditKeyPress(Sender: TObject;
  var Key: Char);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  if Trim(cxSearchTextEdit.Text) = '' then
    exit;

  if key = #13 then
    begin

      if cxRadioGroup.ItemIndex = 0 then
        begin
          QueryString := 'SELECT Addressbook_id, Organisation, City ' +
            'FROM Addressbook ' +
            'WHERE Organisation LIKE ''%' + Trim(cxSearchTextEdit.Text) + '%'' ';
        end
      else
        begin
          QueryString := 'SELECT a.Addressbook_id, a.Organisation, a.City, ad.FirstName, ad.LastName, ad.AddressDetails_id ' +
            'FROM Addressbook a LEFT JOIN AddressDetails ad on a.addressbook_id = ad.addressbook_id ' +
            'WHERE (Lastname LIKE ''%' + Trim(cxSearchTextEdit.Text) + '%'') ' +
            'OR (FirstName LIKE ''%' + Trim(cxSearchTextEdit.Text) + '%'') ';
        end;

      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Close;
      SearchSortForm.SearchSds.CommandText := QueryString;
      SearchSortForm.SearchSds.Open;

      SearchSortForm.SearchCds.Open;

      if cxRadioGroup.ItemIndex = 0 then
        begin

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
          SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
          SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

          SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

          if (SearchSortForm.SearchCds.RecordCount = 1) then
            begin
              MasterCds.Locate ('Addressbook_id', SearchSortForm.SearchCds['Addressbook_id'],[]);
            end
          else if not SearchSortForm.SearchCds.EOF then
            begin
              SearchSortForm.ShowModal;

              if (SearchSortForm.ModalResult = mrOK) then
                begin
                  MasterCds.Locate ('Addressbook_id', SearchSortForm.SearchCds['Addressbook_id'],[]);
                end;
            end;

        end
      else
        begin

          for i := 0 to 5 do
            begin
                SearchSortForm.SearchGridDBTableView1.CreateColumn;
            end;

          //*=== Set the Grid Fields ===*//
          SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
          SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
          SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';
          SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'FirstName';
          SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'LastName';
          SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'AddressDetails_id';

          //*=== Set the Grid Columns' width ===*//
          SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
          SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
          SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;
          SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 100;
          SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 100;
          SearchSortForm.SearchGridDBTableView1.Columns[5].Visible := False;

          //*=== Set the Grid Column Headers ===*//
          SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Organisation';
          SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';
          SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'FirstName';
          SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'LastName';

          SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'AddressDetails_id';

          if (SearchSortForm.SearchCds.RecordCount = 1) then
            begin
              MasterCds.Locate ('Addressbook_id', SearchSortForm.SearchCds['Addressbook_id'],[]);
            end
          else if not SearchSortForm.SearchCds.EOF then
            begin
              SearchSortForm.ShowModal;

              if (SearchSortForm.ModalResult = mrOK) then
                begin
                  MasterCds.Locate ('Addressbook_id', SearchSortForm.SearchCds['Addressbook_id'],[]);
                end;
            end;

        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end;
end;

procedure TAddressbookForm.Hook1Click(Sender: TObject);
begin
  inherited;

  cxGrid1DBBandedTableView3.Bands[0].MoveColumn(cxGrid1DBBandedTableView3extension,0,4);
  cxGrid1DBBandedTableView3.Bands[0].MoveColumn(cxGrid1DBBandedTableView3email,0,5);
  cxGrid1DBBandedTableView3.Bands[0].MoveColumn(cxGrid1DBBandedTableView3phoneres,0,6);
  cxGrid1DBBandedTableView3.Bands[0].MoveColumn(cxGrid1DBBandedTableView3mobile,0,7);

end;

procedure TAddressbookForm.Bound1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView3extension.Position.RowIndex := 1;
  cxGrid1DBBandedTableView3email.Position.RowIndex := 1;
  cxGrid1DBBandedTableView3phoneres.Position.RowIndex := 1;
  cxGrid1DBBandedTableView3mobile.Position.RowIndex := 1;
end;

procedure TAddressbookForm.cxDisplayButtonClick(Sender: TObject);
begin
  inherited;
  if AddrCategorySearchForm = nil then
    Application.CreateForm(TAddrCategorySearchForm,AddrCategorySearchForm);

end;

procedure TAddressbookForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['IncludeInBalanceSheet'] := True;
end;

procedure TAddressbookForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['OrderNo'] := NextOrderNo;
end;

function TAddressbookForm.NextOrderNo: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_OrderNo: integer;
begin

  QueryString := 'SELECT MAX(COALESCE(OrderNo,0)) AS MaxOrderNo FROM AddressDetails ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_OrderNo := 1;
  if (not GpSds.EOF) and (GpSds['MaxOrderNo'] <> null) then
    x_orderNo := GpSds['MaxOrderNo'] + 1;

  GpSds.Free;

  Result := x_OrderNo;
end;

procedure TAddressbookForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
