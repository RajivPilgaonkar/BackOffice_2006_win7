unit CostServicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, DBCtrls, ExtCtrls,
  FMTBcd, Menus, DB, DBClient, Provider, SqlExpr, cxDropDownEdit,
  cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, cxDBEdit, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMemo, cxCheckBox, cxTimeEdit, cxButtonEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel;

type
  TCostServicesForm = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    ServiceDistinctSds: TSQLDataSet;
    ServiceDistinctDsp: TDataSetProvider;
    ServiceDistinctCds: TClientDataSet;
    ServiceDistinctDs: TDataSource;
    PopupMenu1: TPopupMenu;
    CopyStructure2: TMenuItem;
    CostServicesSds: TSQLDataSet;
    CostServicesDsp: TDataSetProvider;
    CostServicesCds: TClientDataSet;
    CostServicesDs: TDataSource;
    GroupBox2: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    CityLCMB: TcxLookupComboBox;
    cxAgentLcmb: TcxLookupComboBox;
    Label4: TcxLabel;
    cxServiceCityLcmb: TcxLookupComboBox;
    Panel1: TPanel;
    GroupBox1: TcxGroupBox;
    ServiceGrid: TcxGrid;
    ServiceGridDBTableView1: TcxGridDBTableView;
    ServiceGridLevel1: TcxGridLevel;
    GroupBox3: TcxGroupBox;
    ServicePeriodGrid: TcxGrid;
    ServicePeriodGridDBTableView1: TcxGridDBTableView;
    ServicePeriodGridLevel1: TcxGridLevel;
    cxDBMemo1: TcxDBMemo;
    GroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    GroupBox5: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    CostSds: TSQLDataSet;
    CostDsp: TDataSetProvider;
    CostCds: TClientDataSet;
    CostDs: TDataSource;
    GuideSds: TSQLDataSet;
    GuideDsp: TDataSetProvider;
    GuideCds: TClientDataSet;
    GuideDs: TDataSource;
    EntranceSds: TSQLDataSet;
    EntranceDsp: TDataSetProvider;
    EntranceCds: TClientDataSet;
    EntranceDs: TDataSource;
    TransportSds: TSQLDataSet;
    TransportDsp: TDataSetProvider;
    TransportCds: TClientDataSet;
    TransportDs: TDataSource;
    GroupBox8: TcxGroupBox;
    GroupBox6: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxDBMemo2: TcxDBMemo;
    GroupBox7: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxDBMemo3: TcxDBMemo;
    ServiceDistinctCdscostservicesdistinct_id: TIntegerField;
    ServiceDistinctCdsservices_id: TIntegerField;
    ServiceDistinctCdsaddressbook_id: TIntegerField;
    ServiceDistinctCdscities_id: TIntegerField;
    ServiceDistinctCdstransfer: TBooleanField;
    ServiceGridDBTableView1services_id: TcxGridDBColumn;
    CostCdscostservicesothers_id: TIntegerField;
    CostCdscostservices_id: TIntegerField;
    CostCdsfrompax: TIntegerField;
    CostCdstopax: TIntegerField;
    CostCdscostperperson: TBCDField;
    CostCdscostpergroup: TBCDField;
    CostCdsremarks: TStringField;
    CostCdstourleaderfree: TBooleanField;
    CostCdscurrencies_id: TIntegerField;
    CostCdsresident: TSmallintField;
    CostCdstourleader: TIntegerField;
    cxGridDBTableView1frompax: TcxGridDBColumn;
    cxGridDBTableView1topax: TcxGridDBColumn;
    cxGridDBTableView1costperperson: TcxGridDBColumn;
    cxGridDBTableView1costpergroup: TcxGridDBColumn;
    cxGridDBTableView1remarks: TcxGridDBColumn;
    cxGridDBTableView1tourleaderfree: TcxGridDBColumn;
    cxGridDBTableView1currencies_id: TcxGridDBColumn;
    cxGridDBTableView1resident: TcxGridDBColumn;
    cxGridDBTableView1tourleader: TcxGridDBColumn;
    GuideCdscostservicesguides_id: TIntegerField;
    GuideCdscostservices_id: TIntegerField;
    GuideCdsfrompax: TIntegerField;
    GuideCdstopax: TIntegerField;
    GuideCdscost: TBCDField;
    GuideCdstourleaderfree: TBooleanField;
    GuideCdsremarks: TStringField;
    GuideCdscurrencies_id: TIntegerField;
    GuideCdsresident: TSmallintField;
    cxGridDBTableView3frompax: TcxGridDBColumn;
    cxGridDBTableView3topax: TcxGridDBColumn;
    cxGridDBTableView3cost: TcxGridDBColumn;
    cxGridDBTableView3tourleaderfree: TcxGridDBColumn;
    cxGridDBTableView3currencies_id: TcxGridDBColumn;
    cxGridDBTableView3resident: TcxGridDBColumn;
    EntranceCdscostservicesentrancefees_id: TIntegerField;
    EntranceCdscostservices_id: TIntegerField;
    EntranceCdsfrompax: TIntegerField;
    EntranceCdstopax: TIntegerField;
    EntranceCdscost: TBCDField;
    EntranceCdstourleaderfree: TBooleanField;
    EntranceCdsremarks: TStringField;
    EntranceCdscurrencies_id: TIntegerField;
    EntranceCdsresident: TSmallintField;
    cxGridDBTableView4frompax: TcxGridDBColumn;
    cxGridDBTableView4topax: TcxGridDBColumn;
    cxGridDBTableView4cost: TcxGridDBColumn;
    cxGridDBTableView4tourleaderfree: TcxGridDBColumn;
    cxGridDBTableView4currencies_id: TcxGridDBColumn;
    cxGridDBTableView4resident: TcxGridDBColumn;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    TransportCdscostservicestransport_id: TIntegerField;
    TransportCdscostservice_id: TIntegerField;
    TransportCdsfrompax: TIntegerField;
    TransportCdstopax: TIntegerField;
    TransportCdsvehicles_id: TIntegerField;
    TransportCdsfit: TBooleanField;
    TransportCdscostnonac: TBCDField;
    TransportCdscostac: TBCDField;
    TransportCdsparkingfee: TBCDField;
    TransportCdscurrencies_id: TIntegerField;
    TransportCdsmasters_id: TIntegerField;
    TransportCdsobsolete: TSmallintField;
    cxGridDBTableView5frompax: TcxGridDBColumn;
    cxGridDBTableView5topax: TcxGridDBColumn;
    cxGridDBTableView5vehicles_id: TcxGridDBColumn;
    cxGridDBTableView5fit: TcxGridDBColumn;
    cxGridDBTableView5costnonac: TcxGridDBColumn;
    cxGridDBTableView5costac: TcxGridDBColumn;
    cxGridDBTableView5parkingfee: TcxGridDBColumn;
    cxGridDBTableView5currencies_id: TcxGridDBColumn;
    cxGridDBTableView5masters_id: TcxGridDBColumn;
    ResidentSds: TSQLDataSet;
    ResidentDsp: TDataSetProvider;
    ResidentCds: TClientDataSet;
    ResidentDs: TDataSource;
    ResidentCdsreq: TStringField;
    ResidentCdsreq_val: TIntegerField;
    VehiclesSds: TSQLDataSet;
    VehiclesDsp: TDataSetProvider;
    VehiclesCds: TClientDataSet;
    VehiclesDs: TDataSource;
    VehiclesCdsAutomobiles_id: TIntegerField;
    VehiclesCdsAutomobile: TStringField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    AgentDs: TDataSource;
    ServiceCitySds: TSQLDataSet;
    ServiceCityDsp: TDataSetProvider;
    ServiceCityCds: TClientDataSet;
    ServiceCityDs: TDataSource;
    DisplayAllChkBox: TcxCheckBox;
    STRBG: TcxRadioGroup;
    Label5: TcxLabel;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    ServiceDs: TDataSource;
    ServiceCdsServices_id: TIntegerField;
    ServiceCdsService: TStringField;
    ServiceCdsDescription: TStringField;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    CostServicesCdscostservices_id: TIntegerField;
    CostServicesCdsaddressbook_id: TIntegerField;
    CostServicesCdsservices_id: TIntegerField;
    CostServicesCdswef: TSQLTimeStampField;
    CostServicesCdsremarks: TMemoField;
    CostServicesCdstourleaderfree: TBooleanField;
    CostServicesCdsservicecharges: TBCDField;
    CostServicesCdsagentcharges: TBCDField;
    CostServicesCdscommissionontransport: TBCDField;
    CostServicesCdscities_id: TIntegerField;
    CostServicesCdscostservicesdistinct_id: TIntegerField;
    ServicePeriodGridDBTableView1wef: TcxGridDBColumn;
    ServicePeriodGridDBTableView1agentcharges: TcxGridDBColumn;
    ServicePeriodGridDBTableView1commissionontransport: TcxGridDBColumn;
    cxButton2: TcxButton;
    PopUpCopyCostings: TPopupMenu;
    CopyCurrentCosting1: TMenuItem;
    N2: TMenuItem;
    CopyallCostingsDisplayed1: TMenuItem;
    ServicePeriodGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView3DBColumn1: TcxGridDBColumn;
    cxGridDBTableView4DBColumn1: TcxGridDBColumn;
    cxGridDBTableView5DBColumn1: TcxGridDBColumn;
    TransportCdsRoadTaxPerDay: TFMTBCDField;
    cxGridDBTableView5RoadTaxPerDay: TcxGridDBColumn;
    cxDisplayActiveCkb: TcxCheckBox;
    ServiceCdsActive: TBooleanField;
    ServiceDistinctCdsActive: TBooleanField;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxWefLCMB: TcxLookupComboBox;
    cxButtonUpdate: TcxButton;
    ServiceCityCdsCity: TStringField;
    ServiceCityCdscities_id: TIntegerField;
    N1: TMenuItem;
    CorrectTransfersSightSeeing1: TMenuItem;
    N3: TMenuItem;
    ransfersPriceList1: TMenuItem;
    N4: TMenuItem;
    SightSeeingPriceList1: TMenuItem;
    TransportCdsMeetAndAssist: TBCDField;
    cxGridDBTableView5MeetAndAssist: TcxGridDBColumn;
    TransportCdsEntryAp: TBCDField;
    cxGridDBTableView5EntryAp: TcxGridDBColumn;
    N5: TMenuItem;
    GuidePriceList1: TMenuItem;
    N6: TMenuItem;
    MiscPriceList1: TMenuItem;
    N7: TMenuItem;
    EntranceFeesPriceList1: TMenuItem;
    cxGridDBTableView4Remarks: TcxGridDBColumn;
    cxButton4: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    CostServicesCloseSds: TSQLDataSet;
    CostServicesCloseDsp: TDataSetProvider;
    CostServicesCloseCds: TClientDataSet;
    CostServicesCloseDs: TDataSource;
    CostServicesCloseCdsCostServicesClose_id: TIntegerField;
    CostServicesCloseCdsCostServices_id: TIntegerField;
    CostServicesCloseCdsFromDate: TSQLTimeStampField;
    CostServicesCloseCdsToDate: TSQLTimeStampField;
    cxGridDBTableView6CostServicesClose_id: TcxGridDBColumn;
    cxGridDBTableView6CostServices_id: TcxGridDBColumn;
    cxGridDBTableView6FromDate: TcxGridDBColumn;
    cxGridDBTableView6ToDate: TcxGridDBColumn;
    N8: TMenuItem;
    ServicesPriceList1: TMenuItem;
    procedure DefaultServiceFilter;
    procedure ServiceFilter;
    procedure AgentServiceFilter;
    procedure CostServiceFilter;
    procedure CopyCostServStructure(CostServ_ID: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure CityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure AgentLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure ServiceCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure DisplayAllChkBoxClick(Sender: TObject);
    procedure ServiceDistinctCdsBeforeInsert(DataSet: TDataSet);
    procedure ServiceDistinctCdsAfterInsert(DataSet: TDataSet);
    procedure STRBGClick(Sender: TObject);
    procedure ServiceDistinctCdsBeforeEdit(DataSet: TDataSet);
    procedure ServiceDistinctCdsBeforePost(DataSet: TDataSet);
    procedure ServiceDistinctCdsAfterPost(DataSet: TDataSet);
    procedure ServiceDistinctCdsBeforeDelete(DataSet: TDataSet);
    procedure ServiceDistinctCdsAfterDelete(DataSet: TDataSet);
    procedure ServiceDistinctCdsAfterScroll(DataSet: TDataSet);
    procedure CostServicesCdsBeforePost(DataSet: TDataSet);
    procedure CostServicesCdsAfterPost(DataSet: TDataSet);
    procedure CostServicesCdsAfterInsert(DataSet: TDataSet);
    procedure CostServicesCdsBeforeEdit(DataSet: TDataSet);
    procedure CostServicesCdsBeforeInsert(DataSet: TDataSet);
    procedure CostServicesCdsBeforeDelete(DataSet: TDataSet);
    procedure CostCdsBeforePost(DataSet: TDataSet);
    procedure CostCdsAfterPost(DataSet: TDataSet);
    procedure CostCdsAfterInsert(DataSet: TDataSet);
    procedure CostCdsBeforeDelete(DataSet: TDataSet);
    procedure GuideCdsBeforePost(DataSet: TDataSet);
    procedure GuideCdsAfterPost(DataSet: TDataSet);
    procedure GuideCdsAfterInsert(DataSet: TDataSet);
    procedure GuideCdsBeforeDelete(DataSet: TDataSet);
    procedure EntranceCdsBeforePost(DataSet: TDataSet);
    procedure EntranceCdsAfterPost(DataSet: TDataSet);
    procedure EntranceCdsAfterInsert(DataSet: TDataSet);
    procedure EntranceCdsBeforeDelete(DataSet: TDataSet);
    procedure TransportCdsBeforePost(DataSet: TDataSet);
    procedure TransportCdsAfterPost(DataSet: TDataSet);
    procedure TransportCdsAfterInsert(DataSet: TDataSet);
    procedure TransportCdsBeforeDelete(DataSet: TDataSet);
    procedure CopyStructure1Click(Sender: TObject);
    procedure CopyStructure2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CopyCurrentCosting1Click(Sender: TObject);
    procedure CopyallCostingsDisplayed1Click(Sender: TObject);
    procedure CopyCosting (x_CostServices_id: integer; x_wef, x_wef_new: TDateTime);
    procedure CostCdsBeforeEdit(DataSet: TDataSet);
    procedure CostCdsBeforeInsert(DataSet: TDataSet);
    procedure EntranceCdsBeforeEdit(DataSet: TDataSet);
    procedure EntranceCdsBeforeInsert(DataSet: TDataSet);
    procedure GuideCdsBeforeInsert(DataSet: TDataSet);
    procedure GuideCdsBeforeEdit(DataSet: TDataSet);
    procedure TransportCdsBeforeEdit(DataSet: TDataSet);
    procedure TransportCdsBeforeInsert(DataSet: TDataSet);
    procedure cxDisplayActiveCkbClick(Sender: TObject);
    procedure cxWefLCMBEnter(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure cxWefLCMBExit(Sender: TObject);
    procedure cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure cxWefLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure ChangeWefCombo;
    function DoesWefExist: Boolean;
    procedure CostServicesCdsAfterDelete(DataSet: TDataSet);
    procedure CorrectTransfersSightSeeing1Click(Sender: TObject);
    procedure ransfersPriceList1Click(Sender: TObject);
    procedure SightSeeingPriceList1Click(Sender: TObject);
    procedure CostCdsAfterDelete(DataSet: TDataSet);
    procedure GuideCdsAfterDelete(DataSet: TDataSet);
    procedure EntranceCdsAfterDelete(DataSet: TDataSet);
    procedure TransportCdsAfterDelete(DataSet: TDataSet);
    procedure GuidePriceList1Click(Sender: TObject);
    procedure MiscPriceList1Click(Sender: TObject);
    procedure EntranceFeesPriceList1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure CostServicesCloseCdsBeforePost(DataSet: TDataSet);
    procedure CostServicesCloseCdsAfterDelete(DataSet: TDataSet);
    procedure CostServicesCloseCdsAfterPost(DataSet: TDataSet);
    procedure CostServicesCloseCdsBeforeDelete(DataSet: TDataSet);
    procedure CostServicesCloseCdsBeforeEdit(DataSet: TDataSet);
    procedure CostServicesCloseCdsBeforeInsert(DataSet: TDataSet);
    function CostServicesCloseCount: integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostServicesForm: TCostServicesForm;
  _CostServicesForm_Level: Integer;

implementation

uses BackOfficeDM, GeneralUt, ReportParameterFm,
  TransferPriceListFm, SightSeeingPriceListFm, GuidePriceListFm,
  MiscPriceListFm, EntranceFeesPriceListFm, CostSrvFm;

var

  Tbl_array: Array[0..6] of TClientDataSet;
  Qry_array: Array[0..5] of TClientDataSet;
  FilterDate : TDateTime;
  AdmLevel: Integer;
  _FormMode: integer;
  _IsNewWef:  Boolean;



{$R *.dfm}



procedure TCostServicesForm.DefaultServiceFilter;
var
  x_Filter, AgentFilter, ServiceCityFilter, TransferFilter, ActiveFilter :String;
begin

  x_filter := ' (1=1) ';

  AgentFilter := '';
  try
    if (cxAgentLcmb.EditValue <> null) and (cxAgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (Addressbook_id = ' + IntToStr(cxAgentLcmb.EditValue) + ') '
    else
       AgentFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  ServiceCityFilter := '';
  try
    if (cxServiceCityLcmb.EditValue <> null) and (cxServiceCityLcmb.EditValue <> 0) then
       ServiceCityFilter := ' AND (Cities_id = ' + IntToStr(cxServiceCityLcmb.EditValue) + ') '
    else
       ServiceCityFilter := ' AND (Cities_id = -1) '
  except
  end;

  TransferFilter := '';
  if StRBG.ItemIndex = 0 then
    TransferFilter := ' AND (Transfer = 1) '
  else
    TransferFilter := ' AND (Transfer = 0) ';

  ActiveFilter := '';
  if cxDisplayActiveCkb.Checked then
    ActiveFilter := ' AND (Active = True) '
  else
    ActiveFilter := '';

  ServiceDistinctCds.Close;

  ServiceDistinctCds.Filtered := False;
  ServiceDistinctCds.Filter := x_filter + TransferFilter + AgentFilter + ServiceCityFilter + ActiveFilter;
  ServiceDistinctCds.Filtered := True;

  _FormMode := 0;
  ServiceDistinctCds.Open;
  _FormMode := 1;

end;

procedure TCostServicesForm.ServiceFilter;
var
  AgentFilter, ServiceCityFilter, TransferFilter: string;
begin

  ServiceCityFilter := '';
  try
    if (cxServiceCityLcmb.EditValue <> null) and (cxServiceCityLcmb.EditValue <> 0) then
       ServiceCityFilter := ' AND (Cities_id = ' + IntToStr(cxServiceCityLcmb.EditValue) + ') '
    else
       ServiceCityFilter := ' AND (Cities_id = -1) '
  except
  end;

  TransferFilter := '';
  if StRBG.ItemIndex = 0 then
    TransferFilter := ' AND (Transfer = 1) '
  else
    TransferFilter := ' AND (Transfer = 0) ';

  ServiceCds.Close;
  ServiceSds.Close;

  ServiceSds.CommandText := ' SELECT Services_id, Service, Description, Active FROM Services '+
   ' WHERE Service IS NOT NULL ' +
  ServiceCityFilter + ' ' + TransferFilter +
   ' ORDER BY Service' ;


  ServiceSds.Open;
  ServiceCds.Open;

end;

procedure TCostServicesForm.AgentServiceFilter;
begin

  if DisplayAllChkBox.Checked = True then
    begin
      ServiceCitySds.Active := False;
      ServiceCityCds.Active := False;

      ServiceCitySds.CommandText := '';
      if cxDisplayActiveCkb.Checked then
          ServiceCitySds.CommandText := 'SELECT DISTINCT Cities.City, Services.cities_id '+
              ' FROM Services INNER JOIN Cities ON Cities.cities_id = Services.cities_id' +
              ' WHERE len(ltrim(rtrim(Cities.city))) > 0 AND Services.Active = 1 ORDER BY Cities.City'
      else
          ServiceCitySds.CommandText := 'SELECT DISTINCT Cities.City, Services.cities_id '+
              ' FROM Services INNER JOIN Cities ON Cities.cities_id = Services.cities_id' +
              ' WHERE len(ltrim(rtrim(Cities.city))) > 0 ORDER BY Cities.City';

      ServiceCitySds.Active := True;
      ServiceCityCds.Active := True;

    end
  else
    begin

      ServiceCitySds.Active := False;
      ServiceCityCds.Active := False;

      if cxAgentLcmb.EditValue = null then
        begin
          if cxDisplayActiveCkb.Checked then
            ServiceCitySds.CommandText := 'SELECT DISTINCT C.City, S.cities_id'+
                ' FROM Services S'+
                ' INNER JOIN Cities C ON C.cities_id = S.cities_id'+
                ' WHERE S.Active = 1 '
          else
            ServiceCitySds.CommandText := 'SELECT DISTINCT C.City, S.cities_id'+
                ' FROM Services S'+
                ' INNER JOIN Cities C ON C.cities_id = S.cities_id';
        end
      else
        begin
          if cxDisplayActiveCkb.Checked then
            ServiceCitySds.CommandText := 'SELECT DISTINCT C.City, S.cities_id'+
                ' FROM Services S'+
                ' INNER JOIN Cities C ON C.cities_id = S.cities_id'+
                ' WHERE S.Active = 1 ' +
                ' AND EXISTS (SELECT * FROM CostServices cs WHERE cs.Services_id = S.Services_id AND cs.Addressbook_id = ' + IntToStr(cxAgentLcmb.EditValue) + ') '
          else
            ServiceCitySds.CommandText := 'SELECT DISTINCT C.City, S.cities_id'+
                ' FROM Services S'+
                ' INNER JOIN Cities C ON C.cities_id = S.cities_id ' +
                ' AND EXISTS (SELECT * FROM CostServices cs WHERE cs.Services_id = S.Services_id AND cs.Addressbook_id = ' + IntToStr(cxAgentLcmb.EditValue) + ') ';
        end;


      ServiceCitySds.Active := True;
      ServiceCityCds.Active := True;
    end;
end;

procedure TCostServicesForm.CostServiceFilter;
var
  x_filter, AgentFilter, ServiceCityFilter, ServiceFilter, DateFilter: string;
begin

  if Trim(cxWefLCMB.Text) = '' then
    x_filter := ' (1=2) '
  else
    x_filter := ' (1=1) ';

  AgentFilter := '';
  try
    if (cxAgentLcmb.EditValue <> null) and (cxAgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (Addressbook_id = ' + IntToStr(cxAgentLcmb.EditValue) + ') '
    else
       AgentFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  ServiceCityFilter := '';
  try
    if (cxServiceCityLcmb.EditValue <> null) and (cxServiceCityLcmb.EditValue <> 0) then
       ServiceCityFilter := ' AND (Cities_id = ' + IntToStr(cxServiceCityLcmb.EditValue) + ') '
    else
       ServiceCityFilter := ' AND (Cities_id = -1) '
  except
  end;

  ServiceFilter := '';
  try
    if ServiceDistinctCds['Services_id'] <> null then
       ServiceFilter := ' AND (Services_id = ' + IntToStr(ServiceDistinctCds['Services_id']) + ') '
    else
       ServiceFilter := ' AND (Services_id = -1) '
  except
  end;

  DateFilter := '';
  try
    if Trim(cxWefLCMB.Text) <> '' then
       DateFilter := ' AND (Wef = ''' + FormatDateTime('dd/mm/yyyy', StrToDate(cxWefLCMB.Text) ) + ''') ';
  except
  end;


  TransportCds.Active := False;
  EntranceCds.Active := False;
  GuideCds.Active := False;
  CostCds.Active := False;

  CostServicesCds.Active := False;
  CostServicesCds.Filter := x_Filter + AgentFilter + ServiceCityFilter + ServiceFilter + DateFilter;
  CostServicesCds.Filtered := True;
  CostServicesCds.Active := True;
  CostServicesCds.Last;

  CostCds.Active := True;
  GuideCds.Active := True;
  EntranceCds.Active := True;
  TransportCds.Active := True;

end;

procedure TCostServicesForm.ChangeWefCombo;
var
  x_Filter, StateFilter, AgentFilter, ServiceCityFilter, ServiceFilter, DateFilter : string;
begin
  inherited;

  x_Filter := ' WHERE (1=1) ';


  AgentFilter := '';
  try
    if (cxAgentLcmb.EditValue <> null) and (cxAgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (Addressbook_id = ' + IntToStr(cxAgentLcmb.EditValue) + ') '
    else
       AgentFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  ServiceCityFilter := '';
  try
    if (cxServiceCityLcmb.EditValue <> null) and (cxServiceCityLcmb.EditValue <> 0) then
       ServiceCityFilter := ' AND (Cities_id = ' + IntToStr(cxServiceCityLcmb.EditValue) + ') '
    else
       ServiceCityFilter := ' AND (Cities_id = -1) '
  except
  end;

  ServiceFilter := '';
  try
    if ServiceDistinctCds['Services_id'] <> null then
       ServiceFilter := ' AND (Services_id = ' + IntToStr(ServiceDistinctCds['Services_id']) + ') '
    else
       ServiceFilter := ' AND (Services_id = -1) '
  except
  end;

  x_Filter := 'SELECT DISTINCT wef FROM CostServices ' +
    x_Filter + AgentFilter + ServiceCityFilter + ServiceFilter +
    ' ORDER BY Wef DESC';

  WefSds.Close;
  WefSds.CommandText := x_Filter;

  WefCds.Close;
  WefCds.Open;

  if WefCds['Wef'] <> null then
    cxWefLCMB.EditValue := WefCds['Wef']
  else
    cxWefLCMB.EditValue := null;

end;


procedure TCostServicesForm.CopyCostServStructure(CostServ_ID: Integer);
begin

{
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if SelectDateForm = nil then
     Application.CreateForm(TSelectDateForm, SelectDateForm);
  SelectDateForm.ShowModal;

  if SelectDateForm.ModalResult = mrOK then
    begin
      Next_Date := SelectDateForm.cxDateEdit1.Date;
      SelectDateForm.Release;
      SelectDateForm := nil;

      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'Exec p_CopyCostServices '+ IntToStr(CostServ_id) +
         ', ''' + FormatDateTime('mm/dd/yyyy', Next_Date) + '''';
      GpSds.ExecSQL;
      GpSds.Close;
      GpSds.Free;
    end
  else
    begin
      SelectDateForm.Release;
      SelectDateForm := nil;
    end;

  CostServicesCds.Refresh;
  CostServicesCds.Last;

  ServiceDistinctCds.Refresh;
  CostCds.Refresh;
  GuideCds.Refresh;
  EntranceCds.Refresh;
  TransportCds.Refresh;
}
end;


procedure TCostServicesForm.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  AdmLevel := _CostServicesForm_Level;

  _FormMode := 0;

  Tbl_array[0]:= ServiceDistinctCds;
  Tbl_array[1]:= CostServicesCds;
  Tbl_array[2]:= CostCds;
  Tbl_array[3]:= GuideCds;
  Tbl_array[4]:= EntranceCds;
  Tbl_array[5]:= TransportCds;
  Tbl_array[6]:= CostServicesCloseCds;

  Qry_array[0] := BackOfficeDataModule.AgentCityCds;
  Qry_array[1] := AgentCds;
  Qry_array[2] := ServiceCityCds;
  Qry_array[3] := BackOfficeDataModule.ServicesCDS;
  Qry_array[4] := BackOfficeDataModule.CurrenciesCds;
  Qry_array[5] := BackOfficeDataModule.MasterCodeCds;

  for i := 0 to 5 do
   begin
    Qry_array[i].Active:=True;
   end;
  for i := 0 to 6 do
   begin
    Tbl_array[i].Active:=True;
   end;

  VehiclesCds.Active := True;
  ResidentCds.Active := True;

  STRBG.ItemIndex := 0;

  DefaultServiceFilter;

  _FormMode := 1;

  CostServiceFilter;

  ChangeWefCombo;

  GroupBox3.Left := ServiceGrid.Left + ServiceGrid.Width + 10;
  GroupBox3.Width := Screen.Width - (ServiceGrid.Left + ServiceGrid.Width + 50);

  GroupBox7.Left := GroupBox6.Left + GroupBox6.Width + 10;
  GroupBox7.Width := Screen.Width - (GroupBox6.Left + GroupBox6.Width + 50);


end;

procedure TCostServicesForm.FormDestroy(Sender: TObject);
begin
  CostServicesForm := nil;
end;

procedure TCostServicesForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TCostServicesForm.CityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if CityLCMB.EditValue <> null then
      BackOfficeDataModule.AgentCityCds.Locate('Cities_id',CityLcmb.EditValue,[])
  except
  end;

    DefaultServiceFilter;

  try
    CostServiceFilter;
  except
  end;
      
end;

procedure TCostServicesForm.AgentLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if cxAgentLcmb.EditValue <> null then
      AgentCds.Locate('Addressbook_id',cxAgentLcmb.EditValue,[]);
  except
  end;

  AgentServiceFilter;
  DefaultServiceFilter;

  try
    cxButtonUpdateClick(nil);
  except
  end;

end;

procedure TCostServicesForm.ServiceCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if cxServiceCityLcmb.EditValue <> null then
      ServiceCityCds.Locate('Cities_id',cxServiceCityLcmb.EditValue,[])
  except
  end;

  ServiceFilter;
  DefaultServiceFilter;

  try
    cxButtonUpdateClick(nil);
  except
  end;
end;

procedure TCostServicesForm.DisplayAllChkBoxClick(Sender: TObject);
begin
  AgentServiceFilter;
end;

procedure TCostServicesForm.ServiceDistinctCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if (cxAgentLcmb.EditValue = 0) Or (cxAgentLcmb.EditValue = null) then
    Raise Exception.Create('Default Agent not selected ...!');

  if (cxServiceCityLcmb.EditValue = 0) Or (cxServiceCityLcmb.EditValue = null) then
    Raise Exception.Create('Service city not selected ...!');
end;

procedure TCostServicesForm.ServiceDistinctCdsAfterInsert(
  DataSet: TDataSet);
begin
  ServiceDistinctCdsaddressbook_id.Value := cxAgentLcmb.EditValue;
  ServiceDistinctCdscities_id.Value := cxServiceCityLcmb.EditValue;
  ServiceDistinctCdsActive.Value := True;

  if STRBG.ItemIndex = 0 then
     ServiceDistinctCds['transfer']:= 1
  else
     ServiceDistinctCds['transfer']:= 0;
end;

procedure TCostServicesForm.STRBGClick(Sender: TObject);
begin
  ServiceFilter;
  DefaultServiceFilter;

  try
    CostServiceFilter;
  except
  end;

end;

procedure TCostServicesForm.ServiceDistinctCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostServicesForm.ServiceDistinctCdsBeforePost(
  DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if ServiceDistinctCdsservices_id.IsNull then
     Raise Exception.Create('Service Name not selected ...!');

  if ServiceDistinctCds.State = dsInsert then
    begin
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'SELECT MAX(CostServicesDistinct_id) as MaxId FROM CostServicesDistinct ';
      GpSds.Open;
      if GpSds.RecordCount <> 0 then
        begin
          GpSds.First;
          if GpSds['MaxId']=null then
            ServiceDistinctCdscostservicesdistinct_id.value := 1
          else
            ServiceDistinctCdscostservicesdistinct_id.Value := GpSds['MaxId'] + 1;
        end
      else
        ServiceDistinctCdscostservicesdistinct_id.value := 1;
    end;

  if ServiceDistinctCds.State = dsEdit then
    begin
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'SELECT services_id FROM CostServicesDistinct'+
      ' WHERE CostServicesDistinct_ID='+ IntToStr(ServiceDistinctCdscostservicesdistinct_id.Value);
      GpSds.Open;

      if not GpSds.Eof then
        begin
          if (GpSds['services_id'] <> ServiceDistinctCds['services_id']) then
             Raise Exception.Create('Cannot Change an existing Service ..!');
        end;
    end;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT * FROM CostServicesDistinct'+
  ' WHERE Services_id='+ IntToStr(ServiceDistinctCdsservices_id.Value)+
  ' AND AddressBook_id='+ IntToStr(ServiceDistinctCdsaddressbook_id.Value)+
  ' AND Cities_id='+ IntToStr(ServiceDistinctCdscities_id.Value);
  GpSds.Open;

  if not GpSds.Eof then
     Raise Exception.Create('Services exists in list of values'+Chr(13)+'Please verify ..!');
end;

procedure TCostServicesForm.ServiceDistinctCdsAfterPost(DataSet: TDataSet);
begin
  ServiceDistinctCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.ServiceDistinctCdsBeforeDelete(
  DataSet: TDataSet);
var
  DelSds : TSQLDataSet;
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  DelSds := TSQLDataSet.Create(nil);
  DelSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  DelSds.Close;
  DelSds.CommandText := '';
  DelSds.CommandText := 'SELECT * FROM CostServices Where costservicesdistinct_id = ' +
                        IntToStr(ServiceDistinctCdscostservicesdistinct_id.Value);

  if DelSds.RecordCount > 0 then
     Raise Exception.Create('Service Period exists for this Service'+ Chr(13) + 'Please delete the Service Period first');
end;

procedure TCostServicesForm.ServiceDistinctCdsAfterDelete(
  DataSet: TDataSet);
begin
  ServiceDistinctCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.ServiceDistinctCdsAfterScroll(
  DataSet: TDataSet);
begin
  if _FormMode = 1 then
    cxButtonUpdateClick(nil);
end;

procedure TCostServicesForm.CostServicesCdsBeforePost(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds:=TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if CostServicesCds.State = dsInsert then
    CostServicesCds['CostServices_id'] := GetNextId('CostServices','CostServices_id');

  if CostServicesCds['CostServicesDistinct_id'] = null then
    raise exception.create('Please enter the Cost Services Distinct');

  if CostServicesCds['Services_id'] = null then
    raise exception.create ('Please enter the service');

  if CostServicesCds['Addressbook_id'] = null then
    raise exception.create ('Please enter the Agent');

  if CostServicesCds['Cities_id'] = null then
    raise exception.create ('Please enter the Service City');

  if CostServicesCds['Wef'] = null then
    raise exception.create ('Please enter wef');

  GpSds.Close;
  GpSds.Free;

  _IsNewWef := False;

  if DoesWefExist = false then
    begin
      _IsNewWef := True;
    end;

end;

procedure TCostServicesForm.CostServicesCdsAfterPost(DataSet: TDataSet);
begin
  CostServicesCds.ApplyUpdates(0);

  if _IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TCostServicesForm.CostServicesCdsAfterInsert(DataSet: TDataSet);
begin

  if cxAgentLcmb.EditValue <> null then
    CostServicesCds['Addressbook_id'] := cxAgentLcmb.EditValue;

  if cxServiceCityLcmb.EditValue <> null then
    CostServicesCds['Cities_id'] := cxServiceCityLcmb.EditValue;

  if ServiceDistinctCds['Services_id'] <> null then
    CostServicesCds['Services_id'] := ServiceDistinctCds['Services_id'];

  if cxWefLCMB.Text > '' then
    CostServicesCds['wef'] := cxWefLCMB.Text;

  CostServicesCds['ServiceCharges'] := 0.0;
  CostServicesCds['CommissionOnTransport'] := 0.0;
  CostServicesCds['AgentCharges'] := 0.0;

  if ServiceDistinctCds['CostServicesDistinct_id'] <> null then
    CostServicesCds['CostServicesDistinct_id'] := ServiceDistinctCds['CostServicesDistinct_id'];


end;

procedure TCostServicesForm.CostServicesCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostServicesForm.CostServicesCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.CostServicesCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if CostServicesCloseCount > 0 then
    raise exception.create ('Remove the close dates before deleting this record');
end;

function TCostServicesForm.CostServicesCloseCount: integer;
var
  GpSds : TSQLDataSet;
  x_count: integer;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT COUNT(*) AS x_count FROM CostServicesClose ' +
                  'WHERE CostServices_id = ' + 
                  IntToStr(CostServicesCds['CostServices_id']);
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;

end;


procedure TCostServicesForm.CostCdsBeforePost(DataSet: TDataSet);
begin
  if CostCds.State = dsInsert then
    CostCds['costservicesothers_id'] := GetNextId('costservicesothers','costservicesothers_id');

  if ((CostCds['CostPerPerson'] = 0) or (CostCds['CostPerPerson'] = null))
    and ((CostCds['CostPerGroup'] = null) or (CostCds['CostPerGroup'] = 0)) then
    raise Exception.Create('Please enter the costperson or costper group');

  if CostCds['frompax'] = null then
    raise Exception.Create('Please enter the "from pax"');
  if CostCds['topax'] = null then
    raise Exception.Create('Please enter the "To Pax"');
  if CostCds['topax'] < CostCds['frompax'] then
    raise Exception.Create('The number of "to pax" should be greater than "from pax"');

end;

procedure TCostServicesForm.CostCdsAfterPost(DataSet: TDataSet);
begin
  CostCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.CostCdsAfterInsert(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'SELECT C.Currencies_id FROM Currencies C, Cities CC'+
                  ' WHERE C.Countries_id = CC.Countries_id '+
                  ' AND CC.Cities_id = '+ IntToStr(CityLCMB.EditValue);
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['currencies_id'] <> null) then
     CostCdscurrencies_id.Value := GpSds['currencies_id']
  else
    begin
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'SELECT number FROM Defaults WHERE lower(ltrim(rtrim(item))) like = ''%currency%'' ';
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['number'] <> null) then
        CostCdscurrencies_id.Value := GpSds['number'];
    end;

  CostCdsFromPax.Value := 1;
  CostCdsToPax.Value := 1;
  CostCdsCostPerPerson.Value := 0.00;
  CostCdsCostPerGroup.Value := 0.00;
  CostCdsTourLeader.Value := 0;
  CostCdsTourLeaderFree.Value := False;
  CostCdsresident.Value := 4;

  GpSds.Close;
  GpSds.Free;
end;

procedure TCostServicesForm.CostCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostServicesForm.GuideCdsBeforePost(DataSet: TDataSet);
begin
  if GuideCds.State = dsInsert then
    GuideCds['costservicesguides_id'] := GetNextId('costservicesguides','costservicesguides_id');

  if (GuideCds['Cost']=0) or (GuideCds['Cost']=null) then
       raise Exception.Create('Please enter the cost');

  if GuideCds['frompax'] = null then
    raise Exception.Create('Please enter the "from pax"');
  if GuideCds['topax'] = null then
    raise Exception.Create('Please enter the "To Pax"');
  if GuideCds['topax'] < GuideCds['frompax'] then
    raise Exception.Create('The number of "to pax" should be greater than "from pax"');
end;

procedure TCostServicesForm.GuideCdsAfterPost(DataSet: TDataSet);
begin
  GuideCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.GuideCdsAfterInsert(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'select c.currencies_id from currencies c, cities cc'+
                  ' where c.countries_id = cc.countries_id '+
                  ' and cc.cities_id = '+ IntToStr(CityLCMB.EditValue);
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['currencies_id'] <> null) then
       GuideCdscurrencies_id.Value:=GpSds['currencies_id']
  else
    begin
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'select number from defaults where lower(ltrim(rtrim(item))) like ''%currency%'' ';
      GpSds.OPen;

      if (not GpSds.Eof) and (GpSds['number'] <> null) then
        GuideCdscurrencies_id.Value:=GpSds['number'];
    end;

  GuideCdsfrompax.Value := 1;
  GuideCdsToPax.Value := 1;
  GuideCdsCost.Value := 0.00;
  GuideCdsTourLeaderFree.Value := False;
  GuideCdsresident.Value := 4;

  GpSds.Close;
  GpSds.Free;
end;

procedure TCostServicesForm.GuideCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostServicesForm.EntranceCdsBeforePost(DataSet: TDataSet);
begin
  if EntranceCds.State = dsInsert then
    EntranceCds['costservicesentrancefees_id'] := GetNextId('costservicesentrancefees','costservicesentrancefees_id');

  if (EntranceCds['Cost']=0) or (EntranceCds['Cost']=null) then
       raise Exception.Create('Please enter the cost');

  if EntranceCds['frompax'] = null then
    raise Exception.Create('Please enter the "from pax"');
  if EntranceCds['topax'] = null then
    raise Exception.Create('Please enter the "To Pax"');
  if EntranceCds['topax'] < EntranceCds['frompax'] then
    raise Exception.Create('The number of "to pax" should be greater than "from pax"');
end;

procedure TCostServicesForm.EntranceCdsAfterPost(DataSet: TDataSet);
begin
  EntranceCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.EntranceCdsAfterInsert(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'select c.currencies_id from currencies c, cities cc'+
                  ' where c.countries_id = cc.countries_id '+
                  ' and cc.cities_id = '+ IntToStr(CityLCMB.EditValue);
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['currencies_id'] <> null) then
    EntranceCdscurrencies_id.Value := GpSds['currencies_id']
  else
    begin
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'select number from defaults where lower(ltrim(rtrim(item)) like ''%currency%'' ';
      GpSds.OPen;

      if (not GpSds.Eof) and (GpSds['number'] <> null) then
        EntranceCdscurrencies_id.Value := GpSds['number'];
    end;

  EntranceCdsfrompax.Value := 1;
  EntranceCdstopax.Value := 1;
  EntranceCdscost.Value := 0.00;
  EntranceCdstourleaderfree.Value := False;
  EntranceCdsresident.Value := 4;

  GpSds.Close;
  GpSds.Free;
end;

procedure TCostServicesForm.EntranceCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostServicesForm.TransportCdsBeforePost(DataSet: TDataSet);
begin
  if TransportCds.State = dsInsert then
    TransportCds['costservicestransport_id'] := GetNextId('costservicestransport','costservicestransport_id');

  if TransportCds['Vehicles_id'] = null then
    raise Exception.Create('Please enter the vehicle.');

  if TransportCds['MeetAndAssist'] = null then
    TransportCds['MeetAndAssist'] := 0.0;

  if ((TransportCds['CostAC'] = 0) or (TransportCds['CostAC'] = null))
      and ((TransportCds['CostNonAC'] = null) or (TransportCds['CostNonAC'] = 0)) then
       raise Exception.Create('Please enter the Cost AC/NonAC');

  if TransportCds['frompax'] = null then
    raise Exception.Create('Please enter the "from pax"');
  if TransportCds['topax'] = null then
    raise Exception.Create('Please enter the "To Pax"');
  if TransportCds['topax'] < TransportCds['frompax'] then
    raise Exception.Create('The number of "to pax" should be greater than "from pax"');
end;

procedure TCostServicesForm.TransportCdsAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.TransportCdsAfterInsert(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := '';
  GpSds.CommandText := 'select c.currencies_id from currencies c, cities cc'+
                  ' where c.countries_id = cc.countries_id '+
                  ' and cc.cities_id = '+ IntToStr(CityLCMB.EditValue);
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['currencies_id'] <> null) then
    TransportCdscurrencies_id.Value := GpSds['currencies_id']
  else
    begin
      GpSds.Close;
      GpSds.CommandText := '';
      GpSds.CommandText := 'select number from defaults where lower(ltrim(rtrim(item))) like ''%currency%'' ';
      GpSds.OPen;

      if (not GpSds.Eof) and (GpSds['number'] <> null) then
        TransportCdscurrencies_id.Value := GpSds['number'];
   end;

   TransportCdsfrompax.Value := 1;
   TransportCdstopax.Value := 1;
   TransportCds['fit'] := 0;
   TransportCdscostac.Value := 0.00;
   TransportCdscostnonac.Value := 0.00;
   TransportCdsparkingfee.Value := 0.00;

   GpSds.Close;
   GpSds.Free;
end;


procedure TCostServicesForm.TransportCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCostServicesForm.CopyStructure1Click(Sender: TObject);
begin
  CopyCostServStructure(CostServicesCdscostservices_id.Value);
end;

procedure TCostServicesForm.CopyStructure2Click(Sender: TObject);
begin
  CopyCostServStructure(CostServicesCdscostservices_id.Value);
end;

procedure TCostServicesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  for i := 0 to 5 do
  begin
    Qry_array[i].Active:=False;
  end;
  for i := 0 to 6 do
  begin
    Tbl_array[i].Active:=False;
  end;
  Action:=caFree;
end;

procedure TCostServicesForm.CopyCurrentCosting1Click(Sender: TObject);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

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

      CopyCosting (CostServicesCds['CostServices_id'], CostServicesCds['wef'], VarToDateTime(_ret1[1]));

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TCostServicesForm.CopyCosting (x_CostServices_id: integer; x_wef, x_wef_new: TDateTime);
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


procedure TCostServicesForm.CopyallCostingsDisplayed1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_wef: TDateTime;
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

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

      ServiceDistinctCds.First;
      while not ServiceDistinctCds.EOF do
        begin

          QueryString := 'SELECT MAX(wef) as MaxWef FROM CostServices ' +
            'WHERE CostServicesDistinct_id = ' + IntToStr(ServiceDistinctCds['CostServicesDistinct_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          if GpSds['Maxwef'] <> null then
            begin

             x_wef := GpSds['Maxwef'];

             QueryString := 'SELECT MAX(CostServices_id) as x_CostServices_id FROM CostServices ' +
               'WHERE CostServicesDistinct_id = ' + IntToStr(ServiceDistinctCds['CostServicesDistinct_id']) + ' ' +
               'AND wef = ''' + FormatDateTime('mm/dd/yyyy',x_wef) + ''' ';

             GpSds.Close;
             GpSds.CommandText := QueryString;
             GpSds.Open;

             CopyCosting (GpSds['x_CostServices_id'], x_wef, VarToDateTime(_ret1[1]));
            end;

          serviceDistinctCds.Next;
        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GpSds.Free;

end;

procedure TCostServicesForm.CostCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.CostCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.EntranceCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.EntranceCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.GuideCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.GuideCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.TransportCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.TransportCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.cxDisplayActiveCkbClick(Sender: TObject);
begin
  ServiceFilter;
  DefaultServiceFilter;
  try
    CostServiceFilter;
  except
  end;

end;

procedure TCostServicesForm.cxWefLCMBEnter(Sender: TObject);
begin
  ChangeWefCombo;
end;

procedure TCostServicesForm.cxButtonUpdateClick(Sender: TObject);
begin
  ChangeWefCombo;
  CostServiceFilter;
end;

function TCostServicesForm.DoesWefExist: Boolean;
var
  QueryString, x_filter, AgentFilter, ServiceCityFilter, ServiceFilter: string;
  x_WefExist: boolean;
  GpSds: TSQLDataSet;
begin

  x_WefExist := False;

  x_Filter := ' WHERE (1=1) ';

  AgentFilter := '';
  try
    if (cxAgentLcmb.EditValue <> null) and (cxAgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (Addressbook_id = ' + IntToStr(cxAgentLcmb.EditValue) + ') '
    else
       AgentFilter := ' AND (Addressbook_id = -1) '
  except
  end;

  ServiceCityFilter := '';
  try
    if (cxServiceCityLcmb.EditValue <> null) and (cxServiceCityLcmb.EditValue <> 0) then
       ServiceCityFilter := ' AND (Cities_id = ' + IntToStr(cxServiceCityLcmb.EditValue) + ') '
    else
       ServiceCityFilter := ' AND (Cities_id = -1) '
  except
  end;

  ServiceFilter := '';
  try
    if ServiceDistinctCds['Services_id'] <> null then
       ServiceFilter := ' AND (Services_id = ' + IntToStr(ServiceDistinctCds['Services_id']) + ') '
    else
       ServiceFilter := ' AND (Services_id = -1) '
  except
  end;

  QueryString := 'SELECT x_count = COUNT(*) FROM CostServices ' +
    x_filter + AgentFilter + ServiceCityFilter + ServiceFilter +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',CostServicesCds['wef']) + ''' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Active := True;

  if (GpSds['x_count'] > 0) then
    x_WefExist := True;

  GpSds.Free;

  Result := x_wefExist;

end;


procedure TCostServicesForm.cxWefLCMBExit(Sender: TObject);
begin
  CostServiceFilter;
end;

procedure TCostServicesForm.cxWefLCMBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    CostServiceFilter;

end;

procedure TCostServicesForm.cxWefLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  CostServiceFilter;
end;

procedure TCostServicesForm.CostServicesCdsAfterDelete(DataSet: TDataSet);
begin
  CostServicesCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.CorrectTransfersSightSeeing1Click(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin

  QueryString :=
   'update CostServicesDistinct set Transfer = ' +
   '(select s.Transfer from Services s where CostServicesDistinct.Services_id = s.Services_id) ' +
   'where exists ' +
   '(select * from Services s2 where CostServicesDistinct.Services_id = s2.Services_id and CostServicesDistinct.Transfer <> s2.Transfer) ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  Showmessage ('Please close && open this form again.');



end;

procedure TCostServicesForm.ransfersPriceList1Click(Sender: TObject);
begin

   if TransferPriceListForm = nil then
    Application.CreateForm(TTransferPriceListForm, TransferPriceListForm);

end;

procedure TCostServicesForm.SightSeeingPriceList1Click(Sender: TObject);
begin

   if SightSeeingPriceListForm = nil then
    Application.CreateForm(TSightSeeingPriceListForm, SightSeeingPriceListForm);

end;

procedure TCostServicesForm.CostCdsAfterDelete(DataSet: TDataSet);
begin
  CostCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.GuideCdsAfterDelete(DataSet: TDataSet);
begin
  GuideCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.EntranceCdsAfterDelete(DataSet: TDataSet);
begin
  EntranceCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.TransportCdsAfterDelete(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.GuidePriceList1Click(Sender: TObject);
begin
   if GuidePriceListForm = nil then
    Application.CreateForm(TGuidePriceListForm, GuidePriceListForm);

end;

procedure TCostServicesForm.MiscPriceList1Click(Sender: TObject);
begin
   if MiscPriceListForm = nil then
    Application.CreateForm(TMiscPriceListForm, MiscPriceListForm);

end;

procedure TCostServicesForm.EntranceFeesPriceList1Click(Sender: TObject);
begin
   if EntranceFeesPriceListForm = nil then
    Application.CreateForm(TEntranceFeesPriceListForm, EntranceFeesPriceListForm);

end;

procedure TCostServicesForm.cxButton4Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'update CostServicesDistinct set Active = ' +
   '(select Active from Services s where CostServicesDistinct.Services_id = s.Services_id)';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  Showmessage ('Please close & open this form again.');

end;

procedure TCostServicesForm.CostServicesCloseCdsBeforePost(
  DataSet: TDataSet);
begin

  if CostServicesCds['CostServices_id'] = null then
    raise exception.create ('Please select a service period');

  if CostServicesCloseCds['FromDate'] = null then
    raise exception.create ('From Date should be entered ');

  if CostServicesCloseCds['ToDate'] = null then
    raise exception.create ('To Date should be entered ');

  CostServicesCloseCds['CostServices_id'] := CostServicesCds['CostServices_id'];

  if CostServicesCloseCds.State = dsInsert then
    CostServicesCloseCds['CostServicesClose_id'] := GetNextId('CostServicesClose','CostServicesClose_id');


end;

procedure TCostServicesForm.CostServicesCloseCdsAfterDelete(
  DataSet: TDataSet);
begin
  CostServicesCloseCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.CostServicesCloseCdsAfterPost(
  DataSet: TDataSet);
begin
  CostServicesCloseCds.ApplyUpdates(0);
end;

procedure TCostServicesForm.CostServicesCloseCdsBeforeDelete(
  DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.CostServicesCloseCdsBeforeEdit(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCostServicesForm.CostServicesCloseCdsBeforeInsert(
  DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

end.
