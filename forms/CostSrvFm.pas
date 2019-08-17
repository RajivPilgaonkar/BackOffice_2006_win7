unit CostSrvFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_CostSrv_Fm, dxSkinsCore, dxSkinsDefaultPainters,
  cxGraphics, Menus, cxLookAndFeelPainters, dxSkinscxPCPainter, FMTBcd, DB,
  DBClient, Provider, SqlExpr, cxPC, cxDBLabel, cxNavigator, cxDBNavigator,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxLabel, Buttons, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxMemo, cxDBEdit,
  cxRadioGroup, DateUtils, cxCheckBox;

type
  TCostSrvForm = class(TCustom_CostSrv_Form)
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1costservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1services_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1remarks: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1tourleaderfree: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1servicecharges: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1agentcharges: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1commissionontransport: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1costservicesdistinct_id: TcxGridDBBandedColumn;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    ServiceCdsServices_id: TIntegerField;
    ServiceCdsService: TStringField;
    ServiceCdsDescription: TStringField;
    ServiceCdsActive: TBooleanField;
    ServiceDs: TDataSource;
    cxDBMemo1: TcxDBMemo;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBBandedTableView2CostServicesClose_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2CostServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2FromDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ToDate: TcxGridDBBandedColumn;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBBandedTableView3costservicesothers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3costservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3frompax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3topax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3costperperson: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3costpergroup: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3remarks: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3tourleaderfree: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3resident: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3tourleader: TcxGridDBBandedColumn;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBBandedTableView4costservicesguides_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4costservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4frompax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4topax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4tourleaderfree: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4resident: TcxGridDBBandedColumn;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxGridDBBandedTableView5costservicesentrancefees_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5costservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5frompax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5topax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5cost: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5tourleaderfree: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5resident: TcxGridDBBandedColumn;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxGridDBBandedTableView6costservicestransport_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6costservice_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6frompax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6topax: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6vehicles_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6fit: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6costnonac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6costac: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6parkingfee: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6masters_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6RoadTaxPerDay: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6MeetAndAssist: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6EntryAp: TcxGridDBBandedColumn;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleDs: TDataSource;
    VehicleCdsVehicles_id: TIntegerField;
    VehicleCdsVehicle: TStringField;
    cxTrsfRB: TcxRadioButton;
    cxSsRB: TcxRadioButton;
    ResidentSds: TSQLDataSet;
    ResidentDsp: TDataSetProvider;
    ResidentCds: TClientDataSet;
    ResidentDs: TDataSource;
    ResidentCdsresident_string: TStringField;
    ResidentCdsresident_id: TIntegerField;
    N1: TMenuItem;
    PriceLists1: TMenuItem;
    N2: TMenuItem;
    AddnewServiceCity1: TMenuItem;
    AllCostingsDisplayed1: TMenuItem;
    CurrentCostingSelected1: TMenuItem;
    Sightseeing1: TMenuItem;
    ransfer1: TMenuItem;
    Guide1: TMenuItem;
    Miscellaneous1: TMenuItem;
    EntranceFees1: TMenuItem;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeCds: TClientDataSet;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    MasterCodeDS: TDataSource;
    N3: TMenuItem;
    DeletethisCosting1: TMenuItem;
    cxGridDBBandedTableView5Column1: TcxGridDBBandedColumn;
    Detail2CdsSpecialGst: TFMTBCDField;
    cxGridDBBandedTableView3SpecialGst: TcxGridDBBandedColumn;
    Detail2Cdsnett: TBooleanField;
    cxGridDBBandedTableView3nett: TcxGridDBBandedColumn;
    Detail3CdsSpecialGst: TFMTBCDField;
    Detail3Cdsnett: TBooleanField;
    Detail4CdsSpecialGst: TFMTBCDField;
    Detail4Cdsnett: TBooleanField;
    cxGridDBBandedTableView4SpecialGst: TcxGridDBBandedColumn;
    cxGridDBBandedTableView4nett: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5SpecialGst: TcxGridDBBandedColumn;
    cxGridDBBandedTableView5nett: TcxGridDBBandedColumn;
    Detail5CdsSpecialGst: TFMTBCDField;
    Detail5Cdsnett: TBooleanField;
    cxGridDBBandedTableView6SpecialGst: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6nett: TcxGridDBBandedColumn;
    Detail5CdsSpecialGst2: TFMTBCDField;
    cxGridDBBandedTableView6SpecialGst2: TcxGridDBBandedColumn;
    Detail5Cdsnett2: TBooleanField;
    cxGridDBBandedTableView6nett2: TcxGridDBBandedColumn;
    Services1: TMenuItem;
    N4: TMenuItem;
    ransfers1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    procedure Detail3CdsBeforePost(DataSet: TDataSet);
    procedure Detail4CdsBeforePost(DataSet: TDataSet);
    procedure Detail5CdsBeforePost(DataSet: TDataSet);
    procedure cxServiceCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxHotelLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforeInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
    procedure Detail3CdsAfterInsert(DataSet: TDataSet);
    procedure Detail4CdsAfterInsert(DataSet: TDataSet);
    procedure Detail5CdsAfterInsert(DataSet: TDataSet);
    procedure cxTrsfRBClick(Sender: TObject);
    procedure cxSsRBClick(Sender: TObject);
    procedure AllCostingsDisplayed1Click(Sender: TObject);
    procedure CurrentCostingSelected1Click(Sender: TObject);
    procedure Sightseeing1Click(Sender: TObject);
    procedure ransfer1Click(Sender: TObject);
    procedure Guide1Click(Sender: TObject);
    procedure Miscellaneous1Click(Sender: TObject);
    procedure EntranceFees1Click(Sender: TObject);
    procedure AddnewServiceCity1Click(Sender: TObject);
    procedure DeletethisCosting1Click(Sender: TObject);
    procedure Services1Click(Sender: TObject);
    procedure ransfers1Click(Sender: TObject);
  private
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetail1RecordDuplicate: Boolean;
    function IsDetail2RecordDuplicate: Boolean;
    function IsDetail3RecordDuplicate: Boolean;
    function IsDetail4RecordDuplicate: Boolean;
    function IsDetail5RecordDuplicate: Boolean;
    procedure FilterData;
    procedure PostWet;
    procedure CopyCosting (x_CostServices_id: integer; x_wef, x_wef_new: TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostSrvForm: TCostSrvForm;
  CostSrvForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, ReportParameterFm, SightSeeingPriceListFm,
  TransferPriceListFm, GuidePriceListFm, MiscPriceListFm,
  EntranceFeesPriceListFm, ServiceCityAddFm;

{$R *.dfm}

procedure TCostSrvForm.FormCreate(Sender: TObject);
begin
  Caption := 'Cost - Services';
  ActivateInCustom;

  ServiceSds.Params[0].Value := false;
  ServiceSds.Params[1].Value := -1;
  cxSsRB.Checked := true;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;
  MasterSds.Params[2].Value := '01/01/1990';
  MasterSds.Params[3].Value := false;

  inherited;

  CitiesCds.Open;
  AgentCds.Open;
  ServiceCitiesCds.Open;
  WefCds.Open;

  ServiceCds.Open;
  CurrencyCds.Open;
  VehicleCds.Open;
  ResidentCds.Open;
  MasterCodeCds.Open;

  Top := 10;

  cxGrid1.LookAndFeel.SkinName := '';
  cxGrid2.LookAndFeel.SkinName := '';
  cxGrid3.LookAndFeel.SkinName := '';
  cxGrid4.LookAndFeel.SkinName := '';
  cxGrid5.LookAndFeel.SkinName := '';
  cxGrid6.LookAndFeel.SkinName := '';

end;

procedure TCostSrvForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TCostSrvForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CostSrvForm := nil;
end;

procedure TCostSrvForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'CostServices';
  Custom_MasterKeyField := 'CostServices_id';

  Custom_Detail1CdsName := 'CostServicesClose';
  Custom_Detail1KeyField := 'CostServicesClose_id';

  Custom_Detail2CdsName := 'CostServicesOthers';
  Custom_Detail2KeyField := 'CostServicesOthers_id';

  Custom_Detail3CdsName := 'CostServicesGuides';
  Custom_Detail3KeyField := 'CostServicesGuides_id';

  Custom_Detail4CdsName := 'CostServicesEntranceFees';
  Custom_Detail4KeyField := 'CostServicesEntranceFees_id';

  Custom_Detail5CdsName := 'CostServicesTransport';
  Custom_Detail5KeyField := 'CostServicesTransport_id';

  Custom_AdmLevel := CostSrvForm_Level;

  //Custom_FormWidth := 1100;
  //Custom_FormHeight := 710;

  Custom_FormWidth := Round(Screen.Width * 0.9);
  Custom_FormHeight := Screen.Height - 100;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TCostSrvForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure TCostSrvForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['Addressbook_id'] = null then
    raise Exception.Create('Please enter the agent');

  if MasterCds['Wef'] = null then
    raise Exception.Create('Please enter the from date');

  if MasterCds['Services_id'] = null then
    raise Exception.Create('Please enter the service');

  if MasterCds['Cities_id'] = null then
    raise Exception.Create('Please enter the service city');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['CostServices_id'] = null then
    raise Exception.Create('CostServices_id is not assigned');

end;

function TCostSrvForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostServices ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']) + ' ' +
    'AND Cities_id = ' + IntToStr(MasterCds['Cities_id']) + ' ' +
    'AND Services_id = ' + IntToStr(MasterCds['Services_id']) + ' ' +
    'AND wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['wef'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostServices_id <> ' + IntToStr(MasterCds['CostServices_id']) + ') ';

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


procedure TCostSrvForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  if Detail1Cds['CostServices_id'] = null then
    raise exception.Create('Please select the service');

  if Detail1Cds['FromDate'] = null then
    raise exception.Create('Please enter the "From Date"');

  if Detail1Cds['ToDate'] = null then
    raise exception.Create('Please enter the "To Date"');

  //Check if the tour code and tour date combination  already exists
  if IsDetail1RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail1Cds['CostServicesClose_id'] = null then
    raise Exception.Create('CostServicesClose_id not assigned');

end;

function TCostSrvForm.IsDetail1RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostServicesClose ' +
    'WHERE CostServices_id = ' + IntToStr(Detail1Cds['CostServices_id']) + ' ' +
    'AND FromDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['FromDate'])) + ' ' +
    'AND ToDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Detail1Cds['ToDate'])) + ' ';

  if Detail1Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostServicesClose_id <> ' + IntToStr(Detail1Cds['CostServicesClose_id']) + ') ';

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

procedure TCostSrvForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin

  if Detail2Cds['CostServices_id'] = null then
    raise exception.Create('Please select the service');

  if Detail2Cds['FromPax'] = null then
    raise exception.Create('Please enter the "From Pax"');

  if Detail2Cds['ToPax'] = null then
    raise exception.Create('Please enter the "To Pax"');

  if Detail2Cds['Currencies_id'] = null then
    raise exception.Create('Please enter the Currency');

  if Detail2Cds['Resident'] = null then
    Detail2Cds['Resident'] := 1;

  if Detail2Cds['Remarks'] = null then
    Detail2Cds['Remarks'] := '';

  //Check if the tour code and tour date combination  already exists
  if IsDetail2RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail2Cds['CostServicesOthers_id'] = null then
    raise Exception.Create('CostServicesOthers_id not assigned');

end;

function TCostSrvForm.IsDetail2RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostServicesOthers ' +
    'WHERE CostServices_id = ' + IntToStr(Detail2Cds['CostServices_id']) + ' ' +
    'AND FromPax = ' + IntToStr(Detail2Cds['FromPax']) + ' ' +
    'AND ToPax = ' + IntToStr(Detail2Cds['ToPax']) + ' ' +
    'AND Resident = ' + IntToStr(Detail2Cds['Resident']) + ' ' +
    'AND Remarks = ' + QuotedStr(Detail2Cds['Remarks']) + ' ' +
    'AND Currencies_id = ' + IntToStr(Detail2Cds['Currencies_id']) + ' ';

  if Detail2Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostServicesOthers_id <> ' + IntToStr(Detail2Cds['CostServicesOthers_id']) + ') ';

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


procedure TCostSrvForm.Detail3CdsBeforePost(DataSet: TDataSet);
begin

  if Detail3Cds['CostServices_id'] = null then
    raise exception.Create('Please select the service');

  if Detail3Cds['FromPax'] = null then
    raise exception.Create('Please enter the "From Pax"');

  if Detail3Cds['ToPax'] = null then
    raise exception.Create('Please enter the "To Pax"');

  if Detail3Cds['Currencies_id'] = null then
    raise exception.Create('Please enter the Currency');

  if Detail3Cds['Resident'] = null then
    Detail3Cds['Resident'] := 1;

  //Check if the tour code and tour date combination  already exists
  if IsDetail3RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail3Cds['CostServicesGuides_id'] = null then
    raise Exception.Create('CostServicesGuides_id not assigned');

end;

function TCostSrvForm.IsDetail3RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostServicesGuides ' +
    'WHERE CostServices_id = ' + IntToStr(Detail3Cds['CostServices_id']) + ' ' +
    'AND FromPax = ' + IntToStr(Detail3Cds['FromPax']) + ' ' +
    'AND ToPax = ' + IntToStr(Detail3Cds['ToPax']) + ' ' +
    'AND Resident = ' + IntToStr(Detail3Cds['Resident']) + ' ' +
    'AND Currencies_id = ' + IntToStr(Detail3Cds['Currencies_id']) + ' ';

  if Detail3Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostServicesGuides_id <> ' + IntToStr(Detail3Cds['CostServicesGuides_id']) + ') ';

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

procedure TCostSrvForm.Detail4CdsBeforePost(DataSet: TDataSet);
begin

  if Detail4Cds['CostServices_id'] = null then
    raise exception.Create('Please select the service');

  if Detail4Cds['FromPax'] = null then
    raise exception.Create('Please enter the "From Pax"');

  if Detail4Cds['ToPax'] = null then
    raise exception.Create('Please enter the "To Pax"');

  if Detail4Cds['Currencies_id'] = null then
    raise exception.Create('Please enter the Currency');

  if Detail4Cds['Remarks'] = null then
    Detail4Cds['Remarks'] := '';

  if Detail4Cds['Resident'] = null then
    Detail4Cds['Resident'] := 1;

  //Check if the tour code and tour date combination  already exists
  if IsDetail4RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail4Cds['CostServicesEntranceFees_id'] = null then
    raise Exception.Create('CostServicesEntranceFees_id not assigned');

end;

function TCostSrvForm.IsDetail4RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostServicesEntranceFees ' +
    'WHERE CostServices_id = ' + IntToStr(Detail4Cds['CostServices_id']) + ' ' +
    'AND FromPax = ' + IntToStr(Detail4Cds['FromPax']) + ' ' +
    'AND ToPax = ' + IntToStr(Detail4Cds['ToPax']) + ' ' +
    'AND Resident = ' + IntToStr(Detail4Cds['Resident']) + ' ' +
    'AND Currencies_id = ' + IntToStr(Detail4Cds['Currencies_id']) + ' ' +
    'AND Remarks = ' + QuotedStr(Detail4Cds['Remarks']);

  if Detail4Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostServicesEntranceFees_id <> ' + IntToStr(Detail4Cds['CostServicesEntranceFees_id']) + ') ';

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


procedure TCostSrvForm.Detail5CdsBeforePost(DataSet: TDataSet);
begin

  if Detail5Cds['CostService_id'] = null then
    raise exception.Create('Please select the service');

  if Detail5Cds['FromPax'] = null then
    raise exception.Create('Please enter the "From Pax"');

  if Detail5Cds['ToPax'] = null then
    raise exception.Create('Please enter the "To Pax"');

  if Detail5Cds['Vehicles_id'] = null then
    raise exception.Create('Please enter the Vehicle');

  if Detail5Cds['FIT'] = null then
    raise exception.Create('Please enter if "FIT"');

  if Detail5Cds['Currencies_id'] = null then
    raise exception.Create('Please enter the Currency');

  //Check if the tour code and tour date combination  already exists
  if IsDetail5RecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if Detail5Cds['CostServicesTransport_id'] = null then
    raise Exception.Create('CostServicesTransport_id not assigned');

end;

function TCostSrvForm.IsDetail5RecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
  x_fit_str, x_Master_str: string;
begin
  x_Duplicate := False;

  if Detail5Cds['FIT'] = true then
    x_fit_str := 'AND FIT = 1 '
  else
    x_fit_str := 'AND FIT = 0 ';

  if Detail5Cds['Masters_id'] <> null then
    x_Master_str := 'AND Masters_id = ' + IntToStr(Detail5Cds['Masters_id'])
  else
    x_Master_str := '';

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM CostServicesTransport ' +
    'WHERE CostService_id = ' + IntToStr(Detail5Cds['CostService_id']) + ' ' +
    'AND FromPax = ' + IntToStr(Detail5Cds['FromPax']) + ' ' +
    'AND ToPax = ' + IntToStr(Detail5Cds['ToPax']) + ' ' +
    'AND Vehicles_id = ' + IntToStr(Detail5Cds['ToPax']) + ' ' +
    'AND Currencies_id = ' + IntToStr(Detail5Cds['Currencies_id']) + ' ' +
    x_fit_str + ' ' + x_Master_str;

  if Detail5Cds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (CostServicesTransport_id <> ' + IntToStr(Detail5Cds['CostServicesTransport_id']) + ') ';

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

procedure TCostSrvForm.FilterData;
var
  x_Addressbook_id, x_Cities_id: integer;
  x_wef: TDateTime;
  x_Transfer: boolean;
begin

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;
  MasterSds.Params[2].Value := '01/01/1990';
  MasterSds.Params[3].Value := false;

  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  x_Cities_id := -1;

  if cxServiceCityLCMB.EditValue <> null then
    x_Cities_id := cxServiceCityLCMB.EditValue;

  x_wef := StrToDate('01/01/' + IntToStr(YearOf(Date)));

  if cxWefLcmb.EditValue <> null then
    x_wef := cxWefLcmb.EditValue;

  x_Transfer := false;

  if cxTrsfRB.Checked  then
    x_Transfer := true;

  ServiceCds.Close;
  ServiceSds.Close;
  ServiceSds.Params[0].Value := x_Transfer;
  ServiceSds.Params[1].Value := x_Cities_id;
  ServiceSds.Open;
  ServiceCds.Open;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Addressbook_id;
  MasterSds.Params[1].Value := x_Cities_id;
  MasterSds.Params[2].Value := x_Wef;
  MasterSds.Params[3].Value := x_Transfer;

  MasterSds.Active := True;
  MasterCds.Active := True;

end;


procedure TCostSrvForm.cxServiceCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_ServiceCities_id, x_Addressbook_id: integer;
begin
  inherited;
  x_ServiceCities_id := -1;

  if cxServiceCityLCMB.EditValue <> null then
    x_ServiceCities_id := cxServiceCityLCMB.EditValue;

  x_Addressbook_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Addressbook_id := cxAgentLCMB.EditValue;

  ServiceCitiesCds.Locate('Addressbook_id;Cities_id', VarArrayOf([x_Addressbook_id, x_ServiceCities_id]), []);
  if WefCds['wef'] <> null then
    cxWefLCMB.EditValue := WefCds['wef'];

  FilterData;

end;

procedure TCostSrvForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCostSrvForm.cxCityLcmbPropertiesEditValueChanged(
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

procedure TCostSrvForm.cxHotelLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_Agents_id: integer;
begin
  inherited;

  x_Agents_id := -1;

  if cxAgentLCMB.EditValue <> null then
    x_Agents_id := cxAgentLCMB.EditValue;

  AgentCds.Locate('Addressbook_id', x_Agents_id, []);

  if ServiceCitiesCds['Cities_id'] <> null then
    begin
      // force change in edit value so that wefLcmb event fires
      cxServiceCityLCMB.EditValue := -1;
      cxServiceCityLCMB.EditValue := ServiceCitiesCds['Cities_id'];
    end;

end;

procedure TCostSrvForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    exit;

  if cxServiceCityLcmb.EditValue = null then
    exit;

  if cxWefLCMB.EditValue = null then
    exit;

  MasterCds['Addressbook_id'] := cxAgentLCMB.EditValue;
  MasterCds['Cities_id'] := cxServiceCityLCMB.EditValue;
  MasterCds['Wef'] := cxWefLCMB.EditValue;

  MasterCds['AgentCharges'] := 0.0;
  MasterCds['CommissionOnTransport'] := 0.0;

end;

procedure TCostSrvForm.MasterCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if cxAgentLCMB.EditValue = null then
    abort;

  if cxServiceCityLcmb.EditValue = null then
    abort;

  if cxWefLCMB.EditValue = null then
    abort;

end;

procedure TCostSrvForm.PostWet;
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


procedure TCostSrvForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  PostWet;
end;

procedure TCostSrvForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  WefCds.Close;
  WefCds.Open;
  if WefCds.Locate ('wef', MasterCds['Wef'], []) then
    cxWefLCMB.EditValue := MasterCds['Wef'];
end;

procedure TCostSrvForm.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds['FromPax'] := 1;
  Detail2Cds['ToPax'] := 1;
  Detail2Cds['CostPerPerson'] := 0.0;
  Detail2Cds['CostPerGroup'] := 0.0;
  Detail2Cds['TourLeaderFree'] := false;
  Detail2Cds['TourLeader'] := 0;
  Detail2Cds['Currencies_id'] := GetDefaultCurrency;
  Detail2Cds['Resident'] := 4;
  Detail2Cds['Nett'] := false;
end;

procedure TCostSrvForm.Detail3CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail3Cds['FromPax'] := 1;
  Detail3Cds['ToPax'] := 1;
  Detail3Cds['Cost'] := 0.0;
  Detail3Cds['TourLeaderFree'] := false;
  Detail3Cds['Currencies_id'] := GetDefaultCurrency;
  Detail3Cds['Resident'] := 4;
  Detail3Cds['Nett'] := false;

end;

procedure TCostSrvForm.Detail4CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail4Cds['FromPax'] := 1;
  Detail4Cds['ToPax'] := 35;
  Detail4Cds['Cost'] := 0.0;
  Detail4Cds['TourLeaderFree'] := false;
  Detail4Cds['Currencies_id'] := GetDefaultCurrency;
  Detail4Cds['Resident'] := 4;
  Detail4Cds['Nett'] := false;

end;

procedure TCostSrvForm.Detail5CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail5Cds['FromPax'] := 1;
  Detail5Cds['ToPax'] := 1;
  Detail5Cds['FIT'] := false;
  Detail5Cds['CostNonAC'] := 0.0;
  Detail5Cds['CostAC'] := 0.0;
  Detail5Cds['Currencies_id'] := GetDefaultCurrency;
  Detail5Cds['ParkingFee'] := 0.0;
  Detail5Cds['RoadTaxPerDay'] := 0.0;
  Detail5Cds['MeetAndAssist'] := 0.0;
  Detail5Cds['EntryAP'] := 0.0;
  Detail5Cds['Nett'] := false;
  Detail5Cds['Nett2'] := false;

end;

procedure TCostSrvForm.cxTrsfRBClick(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCostSrvForm.cxSsRBClick(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TCostSrvForm.AllCostingsDisplayed1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Visible := False;

  ReportParameterForm.FromDateLabel.Caption := 'Copy To';
  ReportParameterForm.ToDateLabel.Visible := False;
  ReportParameterForm.DateRangeLabel.Visible := False;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      MasterCds.First;

      while not MasterCds.EOF do
        begin

          if (MasterCds['CostServices_id'] <> null) and (MasterCds['wef'] <> null) then
            CopyCosting (MasterCds['CostServices_id'], MasterCds['wef'], VarToDateTime(_ret1[1]));

          MasterCds.Next;
        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GpSds.Free;

end;

procedure TCostSrvForm.CurrentCostingSelected1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxDateCkb.Enabled := False;
  ReportParameterForm.cxDateCkb.Checked := True;

  ReportParameterForm.cxDateEdit1.Date := Date();
  ReportParameterForm.cxDateEdit2.Visible := False;

  ReportParameterForm.FromDateLabel.Caption := 'Copy To';
  ReportParameterForm.ToDateLabel.Visible := False;
  ReportParameterForm.DateRangeLabel.Visible := False;

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (MasterCds['CostServices_id'] <> null) and (MasterCds['wef'] <> null) then
        CopyCosting (MasterCds['CostServices_id'], MasterCds['wef'], VarToDateTime(_ret1[1]));

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GpSds.Free;

end;

procedure TCostSrvForm.Sightseeing1Click(Sender: TObject);
begin
  inherited;
   if SightSeeingPriceListForm = nil then
     Application.CreateForm(TSightSeeingPriceListForm, SightSeeingPriceListForm);
end;

procedure TCostSrvForm.ransfer1Click(Sender: TObject);
begin
  inherited;
   if TransferPriceListForm = nil then
     Application.CreateForm(TTransferPriceListForm, TransferPriceListForm);
end;

procedure TCostSrvForm.Guide1Click(Sender: TObject);
begin
  inherited;
   if GuidePriceListForm = nil then
     Application.CreateForm(TGuidePriceListForm, GuidePriceListForm);
end;

procedure TCostSrvForm.Miscellaneous1Click(Sender: TObject);
begin
  inherited;
   if MiscPriceListForm = nil then
     Application.CreateForm(TMiscPriceListForm, MiscPriceListForm);
end;

procedure TCostSrvForm.EntranceFees1Click(Sender: TObject);
begin
  inherited;
   if EntranceFeesPriceListForm = nil then
     Application.CreateForm(TEntranceFeesPriceListForm, EntranceFeesPriceListForm);
end;

procedure TCostSrvForm.CopyCosting (x_CostServices_id: integer; x_wef, x_wef_new: TDateTime);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_CopyCostServices ' + IntToStr(x_CostServices_id) + ',''' +
    FormatDateTime('mm/dd/yyyy',x_wef) + ''', ''' +
    FormatDateTime('mm/dd/yyyy',x_wef_new) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;



procedure TCostSrvForm.AddnewServiceCity1Click(Sender: TObject);
begin
  inherited;
   if ServiceCityAddForm = nil then
     Application.CreateForm(TServiceCityAddForm, ServiceCityAddForm);

  ServiceCityAddForm.ShowModal;

  ServiceCityAddForm.Free;
  ServiceCityAddForm := nil;

end;

procedure TCostSrvForm.DeletethisCosting1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  if MasterCds.Eof then
    exit;

  if MessageDlg('Are you sure you want to delete this costing?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if not MasterCds.Eof then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.CommandText := 'DELETE FROM CostServicesTransport WHERE CostService_id = ' +
        IntToStr(MasterCds['CostServices_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM CostServicesEntranceFees WHERE CostServices_id = ' +
        IntToStr(MasterCds['CostServices_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM CostServicesGuides WHERE CostServices_id = ' +
        IntToStr(MasterCds['CostServices_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM CostServicesOthers WHERE CostServices_id = ' +
        IntToStr(MasterCds['CostServices_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM CostServicesClose WHERE CostServices_id = ' +
        IntToStr(MasterCds['CostServices_id']);
      GpSds.ExecSQL;

      GpSds.CommandText := 'DELETE FROM CostServices WHERE CostServices_id = ' +
        IntToStr(MasterCds['CostServices_id']);
      GpSds.ExecSQL;

      WefCds.Close;
      WefCds.Open;
      if not WefCds.Eof then
        cxWefLCMB.EditValue := WefCds['Wef']
      else
        cxWefLCMB.Text := '';
      FilterData;

      GpSds.Free;

    end;

end;

procedure TCostSrvForm.Services1Click(Sender: TObject);
begin
  inherited;
  _SightSeeingPriceListForm_Type := 1;

   if SightseeingPriceListForm = nil then
     Application.CreateForm(TSightseeingPriceListForm, SightseeingPriceListForm);

end;

procedure TCostSrvForm.ransfers1Click(Sender: TObject);
begin
  inherited;
  _SightSeeingPriceListForm_Type := 2;

   if SightseeingPriceListForm = nil then
     Application.CreateForm(TSightseeingPriceListForm, SightseeingPriceListForm);

end;

end.
