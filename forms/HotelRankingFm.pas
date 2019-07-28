unit HotelRankingFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxContainer, cxLabel, cxDBLabel,
  cxButtons, ExtCtrls, Buttons;

type
  THotelRankingForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxCityLCMB: TcxLookupComboBox;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCity: TStringField;
    CitiesCdsCities_id: TIntegerField;
    CitiesDs: TDataSource;
    CategorySds: TSQLDataSet;
    CategoryDsp: TDataSetProvider;
    CategoryCds: TClientDataSet;
    CategoryDs: TDataSource;
    AddrSds: TSQLDataSet;
    AddrDsp: TDataSetProvider;
    AddrCds: TClientDataSet;
    AddrDs: TDataSource;
    Label2: TLabel;
    cxCategoryLCMB: TcxLookupComboBox;
    CategoryCdscategories_id: TIntegerField;
    CategoryCdscategory: TStringField;
    CategoryCdsdescription: TStringField;
    MasterCdsaddresscategories_id: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdscategories_id: TIntegerField;
    MasterCdsRanking: TIntegerField;
    cxGrid1DBBandedTableView1addresscategories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1categories_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Ranking: TcxGridDBBandedColumn;
    AddrCdsAddressbook_id: TIntegerField;
    AddrCdsOrganisation: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCategoryLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure FilterData;
  public
    { Public declarations }
  end;

var
  HotelRankingForm: THotelRankingForm;
  HotelRankingForm_Level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure THotelRankingForm.FormCreate(Sender: TObject);
begin

  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;

  inherited;

  CitiesCds.Open;
  CategoryCds.Open;
  AddrCds.Open;

end;

procedure THotelRankingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure THotelRankingForm.FormDestroy(Sender: TObject);
begin
  inherited;
  HotelRankingForm := nil;
end;

procedure THotelRankingForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'AddressCategories';
  Custom_MasterKeyField := 'AddressCategories_id';
  Custom_AdmLevel := HotelRankingForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure THotelRankingForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;


procedure THotelRankingForm.FilterData;
var
  x_Cities_id, x_Categories_id: integer;
begin

  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  x_Categories_id := -1;

  if cxCategoryLCMB.EditValue <> null then
    x_Categories_id := cxCategoryLCMB.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Cities_id;
  MasterSds.Params[1].Value := x_Categories_id;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure THotelRankingForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;  
begin
  inherited;
  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  CitiesCds.Locate('Cities_id', x_Cities_id, []);

  FilterData;
end;

procedure THotelRankingForm.cxCategoryLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

end.
