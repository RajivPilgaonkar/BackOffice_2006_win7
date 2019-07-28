unit AddressBook2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, Mask, ExtCtrls, jpeg, Grids,
  DBGrids, Buttons, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TAddressBook2Form = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Image1: TImage;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBGrid2: TDBGrid;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    NameOpt: TRadioButton;
    OrgOpt: TRadioButton;
    Edit1: TEdit;
    DBEdit16: TDBEdit;
    BitBtn1: TBitBtn;
    CityCDS: TClientDataSet;
    CityDSP: TDataSetProvider;
    CityQry: TSQLQuery;
    CityCDSCities_id: TIntegerField;
    CityCDSCityCode: TStringField;
    CityCDSCity: TStringField;
    DBLookupComboBox8: TDBLookupComboBox;
    StatesCDS: TClientDataSet;
    StatesDSP: TDataSetProvider;
    StatesQry: TSQLQuery;
    CountryCDS: TClientDataSet;
    CountryDSP: TDataSetProvider;
    CountryQry: TSQLQuery;
    CountryCDSCountries_id: TIntegerField;
    CountryCDSCountry: TStringField;
    BankABCDS: TClientDataSet;
    BankABDSP: TDataSetProvider;
    BankABQry: TSQLQuery;
    BranchCDS: TClientDataSet;
    BranchDSP: TDataSetProvider;
    BranchQry: TSQLQuery;
    CurrCDS: TClientDataSet;
    CurrDSP: TDataSetProvider;
    CurrQry: TSQLQuery;
    BranchCDSCities_id: TIntegerField;
    BranchCDSCity: TStringField;
    BranchCDSCitycode: TStringField;
    CurrCDSCurrencies_id: TIntegerField;
    CurrCDSCurrencyCode: TStringField;
    CurrCDSCurrency: TStringField;
    AddrCDS: TClientDataSet;
    AddrDSP: TDataSetProvider;
    AddrTbl: TSQLTable;
    AddrDS: TDataSource;
    AddrCDSaddressbook_id: TIntegerField;
    AddrCDSorganisation: TStringField;
    AddrCDSaddress: TStringField;
    AddrCDScity: TStringField;
    AddrCDSpostalcode: TStringField;
    AddrCDScountries_id: TIntegerField;
    AddrCDSphone: TStringField;
    AddrCDSfax: TStringField;
    AddrCDSpan: TStringField;
    AddrCDSemail: TStringField;
    AddrCDSwww: TStringField;
    AddrCDSbranch_cities_id: TIntegerField;
    AddrCDSnote: TMemoField;
    AddrCDSareacode: TStringField;
    AddrCDSbank_addressbook_id: TIntegerField;
    AddrCDSthrough_addressbook_id: TIntegerField;
    AddrCDSmailto_addressbook_id: TIntegerField;
    AddrCDScities_id: TIntegerField;
    AddrCDSstates_id: TIntegerField;
    AddrCDScurrencies_id: TIntegerField;
    AddrCDSweb: TBooleanField;
    AddrCDScompany: TBooleanField;
    AddrCDStaxno: TStringField;
    AddrDetDS: TDataSource;
    AddrDetCDS: TClientDataSet;
    AddrDetTbl: TSQLTable;
    AddrDetDSP: TDataSetProvider;
    AddrDetCDSaddressdetails_id: TIntegerField;
    AddrDetCDSaddressbook_id: TIntegerField;
    AddrDetCDSsalutation: TStringField;
    AddrDetCDSfirstname: TStringField;
    AddrDetCDSlastname: TStringField;
    AddrDetCDStitle: TStringField;
    AddrDetCDSextension: TStringField;
    AddrDetCDSemail: TStringField;
    AddrDetCDSphoneres: TStringField;
    AddrDetCDSmobile: TStringField;
    OrgCDS: TClientDataSet;
    OrgDSP: TDataSetProvider;
    OrgQry: TSQLQuery;
    OrgCDSOrg_Name: TStringField;
    OrgCDSAddressBook_id: TIntegerField;
    OrgCDSsortval: TIntegerField;
    AddrTbladdressbook_id: TIntegerField;
    AddrTblorganisation: TStringField;
    AddrTbladdress: TStringField;
    AddrTblcity: TStringField;
    AddrTblpostalcode: TStringField;
    AddrTblcountries_id: TIntegerField;
    AddrTblphone: TStringField;
    AddrTblfax: TStringField;
    AddrTblpan: TStringField;
    AddrTblemail: TStringField;
    AddrTblwww: TStringField;
    AddrTblbranch_cities_id: TIntegerField;
    AddrTblnote: TMemoField;
    AddrTblareacode: TStringField;
    AddrTblbank_addressbook_id: TIntegerField;
    AddrTblthrough_addressbook_id: TIntegerField;
    AddrTblmailto_addressbook_id: TIntegerField;
    AddrTblcities_id: TIntegerField;
    AddrTblstates_id: TIntegerField;
    AddrTblcurrencies_id: TIntegerField;
    AddrTblweb: TBooleanField;
    AddrTblcompany: TBooleanField;
    AddrTbltaxno: TStringField;
    AddrTblMailLookUp: TStringField;
    AddrCDSBookingAgentLookUp: TStringField;
    AddrCDSCountryLookUp: TStringField;
    BankABCDSOrg_Name: TStringField;
    BankABCDSAddressbook_id: TIntegerField;
    AddrCDSBankABLookUp: TStringField;
    AddrCDSBranchLookUp: TStringField;
    AddrCDSCurrencyLookUp: TStringField;
    AddrCDSCityLookUp: TStringField;
    StatesCDSStates_id: TIntegerField;
    StatesCDSState: TStringField;
    AddrCDSStatesLookUp: TStringField;
    DBLookupComboBox4: TDBLookupComboBox;
    AddrCDSMailLookUp: TStringField;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddrCDSAfterPost(DataSet: TDataSet);
    procedure AddrCDSAfterDelete(DataSet: TDataSet);
    procedure AddrDetCDSAfterDelete(DataSet: TDataSet);
    procedure AddrDetCDSAfterPost(DataSet: TDataSet);
    procedure AddrCDSBeforePost(DataSet: TDataSet);
    procedure AddrDetCDSBeforePost(DataSet: TDataSet);
    procedure AddrCDSBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddressBook2Form: TAddressBook2Form;
  _AddrTbl_State, _AddrDetTbl_State: TDataSetState;
  LocateAddrKeyId, LocateAddrDetKeyId: Integer;
  
implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TAddressBook2Form.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TAddressBook2Form.FormCreate(Sender: TObject);
begin
  Self.Height := 685;
  Self.Width := 940;
  AddrCDS.Active := True;
  AddrDetCDS.Active := True;

end;

procedure TAddressBook2Form.FormDestroy(Sender: TObject);
begin
  AddressBook2Form := nil;
end;

procedure TAddressBook2Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAddressBook2Form.AddrCDSAfterPost(DataSet: TDataSet);
begin
  AddrCDS.ApplyUpdates(0);
  AddrCDS.Refresh;
end;

procedure TAddressBook2Form.AddrCDSAfterDelete(DataSet: TDataSet);
begin
  AddrCDS.ApplyUpdates(0);
  AddrCDS.Refresh;
end;

procedure TAddressBook2Form.AddrDetCDSAfterDelete(DataSet: TDataSet);
begin
  AddrDetCDS.ApplyUpdates(0);
  AddrDetCDS.Refresh;
end;

procedure TAddressBook2Form.AddrDetCDSAfterPost(DataSet: TDataSet);
begin
  AddrDetCDS.ApplyUpdates(0);
  AddrDetCDS.Refresh;
end;

procedure TAddressBook2Form.AddrCDSBeforePost(DataSet: TDataSet);
begin
  _AddrTbl_State := AddrCDS.State;

  if AddrCDS.State = dsInsert then
    AddrCDS['AddressBook_id'] := GetNextId('AddressBook', 'AddressBook_id');

  LocateAddrKeyId := AddrCDS['AddressBook_id'];

end;

procedure TAddressBook2Form.AddrDetCDSBeforePost(DataSet: TDataSet);
begin
  _AddrDetTbl_State := AddrDetCDS.State;

  if AddrDetDS.State = dsInsert then
    AddrDetCDS['AddressDetails_id'] := GetNextId('AddressDetails', 'AddressDetails_id');

//  LocateAddrDetKeyId := AddrDetCDS['addressdetails_id'];
end;

procedure TAddressBook2Form.AddrCDSBeforeDelete(DataSet: TDataSet);
begin
  if AddrDetCDS.RecordCount >0  then
    Raise Exception.Create('Please delete the details first');
end;

end.
