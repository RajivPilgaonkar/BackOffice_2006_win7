unit CostPkgFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_CostPkg_Fm, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, Menus, cxLookAndFeelPainters, dxSkinscxPCPainter, FMTBcd, DB,
  DBClient, Provider, SqlExpr, cxPC, ExtCtrls, cxDBLabel, cxNavigator,
  cxDBNavigator, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxLabel, Buttons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DateUtils;

type
  TCostPkgForm = class(TCustom_CostPkg_Form)
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1costpackages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1packages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wet: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1commission: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1available: TcxGridDBBandedColumn;
    MasterCdsFromPax: TIntegerField;
    MasterCdsToPax: TIntegerField;
    MasterCdsCost: TFMTBCDField;
    cxGridDBBandedTableView1FromPax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ToPax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Cost: TcxGridDBBandedColumn;
    MasterCdscurrencies_id: TIntegerField;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    cxGridDBBandedTableView1currencies_id: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    CarHirePerKmPriceList1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxPackageLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWet;
  public
    { Public declarations }
  end;

var
  CostPkgForm: TCostPkgForm;
  CostPkgForm_Level: integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TCostPkgForm.FormCreate(Sender: TObject);
begin
  Caption := 'Cost - Packages';
  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := '01/01/1990';

  inherited;

  CitiesCds.Open;
  PackageCds.Open;
  AgentCds.Open;
  WefCds.Open;
  CurrencyCds.Open;

  Panel9.Hide;

  cxGrid1.LookAndFeel.SkinName := '';

end;

procedure TCostPkgForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCostPkgForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CostPkgForm := nil;
end;

procedure TCostPkgForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CostPackages';
  Custom_MasterKeyField := 'CostPackages_id';

  Custom_AdmLevel := CostPkgForm_Level;

  Custom_FormWidth := 1100;
  Custom_FormHeight := 315;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TCostPkgForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['Packages_id'] = null then
    raise Exception.Create('Please enter the package');

  if MasterCds['Addressbook_id'] = null then
    raise Exception.Create('Please enter the agent');

  if MasterCds['Wef'] = null then
    raise Exception.Create('Please enter the from date');

  if MasterCds['FromPax'] = null then
    raise Exception.Create('Please enter the "From Pax"');

  if MasterCds['ToPax'] = null then
    raise Exception.Create('Please enter the "To Pax"');

  if MasterCds['Currencies_id'] = null then
    raise Exception.Create('Please enter the "Currency"');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['CostPackages_id'] = null then
    raise Exception.Create('CostPackages_id is not assigned');

end;

function TCostPkgForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostPackages ' +
    'WHERE Packages_id = ' + IntToStr(MasterCds['Packages_id']) + ' ' +
    'AND Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND FromPax = ' + IntToStr(MasterCds['FromPax']) + ' ' +
    'AND Currencies_id = ' + IntToStr(MasterCds['Currencies_id']) + ' ' +
    'AND wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['wef'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostPackages_id <> ' + IntToStr(MasterCds['CostPackages_id']) + ') ';

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

procedure TCostPkgForm.FilterData;
var
  x_Packages_id: integer;
  x_wef: TDateTime;
begin

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := '01/01/1990';

  x_Packages_id := -1;

  if cxPackageLCMB.EditValue <> null then
    x_Packages_id := cxPackageLCMB.EditValue;

  x_wef := StrToDate('01/01/' + IntToStr(YearOf(Date)));

  if cxWefLcmb.EditValue <> null then
    x_wef := cxWefLcmb.EditValue;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Packages_id;
  MasterSds.Params[1].Value := x_Wef;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;  

procedure TCostPkgForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCostPkgForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Cities_id: integer;
begin
  inherited;

  x_Cities_id := -1;

  if cxCityLCMB.EditValue <> null then
    x_Cities_id := cxCityLCMB.EditValue;

  CitiesCds.Locate('Cities_id', x_Cities_id, []);

end;

procedure TCostPkgForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if cxPackageLCMB.EditValue = null then
    exit;

  if cxAgentLcmb.EditValue = null then
    exit;

  MasterCds['Packages_id'] := cxPackageLCMB.EditValue;
  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;
  MasterCds['Currencies_id'] := GetDefaultCurrency;

  MasterCds['Commission'] := 0.0;

end;

procedure TCostPkgForm.cxPackageLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Packages_id: integer;
begin
  inherited;
  x_Packages_id := -1;

  if cxPackageLCMB.EditValue <> null then
    x_Packages_id := cxPackageLCMB.EditValue;

  PackageCds.Locate('Packages_id', VarArrayOf([x_Packages_id]), []);

  if AgentCds['Addressbook_id'] <> null then
    cxAgentLcmb.EditValue := AgentCds['Addressbook_id'];

  if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef'];

  FilterData;

end;

procedure TCostPkgForm.PostWet;
begin
  inherited;

  if MasterCds['Wef'] <> cxWefLCMB.EditValue then
    begin
      if not WefCds.Locate ('wef', MasterCds['Wef'], []) then
        begin
          WefCds.Close;
          WefCds.Open;
          if WefCds.Locate ('wef', MasterCds['Wef'], []) then
            cxWefLCMB.EditValue := MasterCds['Wef'];
        end;
    end;

end;


procedure TCostPkgForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWet;
end;

procedure TCostPkgForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  WefCds.Close;
  WefCds.Open;
  if WefCds.Locate ('wef', MasterCds['Wef'], []) then
    cxWefLCMB.EditValue := MasterCds['Wef'];
end;

end.
