unit CarHireFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxTextEdit, cxMemo, cxDBEdit, cxControls, cxContainer,
  cxEdit, cxGroupBox, StdCtrls, Buttons, cxNavigator, cxDBNavigator,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxCheckBox, cxCalendar, FMTBcd, DB, DBClient, Provider,
  SqlExpr, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxTimeEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLookAndFeelPainters, cxButtons, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel;

type
  TCarHireForm = class(TForm)
    TopPnl: TPanel;
    BottomPnl: TPanel;
    GridPnl: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label3: TcxLabel;
    CityLcmb: TcxLookupComboBox;
    PerTourChk: TcxCheckBox;
    AgentSDS: TSQLDataSet;
    AgentDSP: TDataSetProvider;
    AgentCDS: TClientDataSet;
    AgentDS: TDataSource;
    MasterLcmb: TcxLookupComboBox;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDS: TDataSource;
    MasterCdsCOLUMN1: TIntegerField;
    MasterCdsMASTERCODE: TStringField;
    MasterCdsFIT: TBooleanField;
    MasterCdsMASTERS_ID: TIntegerField;
    AgentCDSAddressbook_id: TIntegerField;
    AgentCDSOrganisation: TStringField;
    AgentCDSCity: TStringField;
    AgentCDSCities_id: TIntegerField;
    AgentCDSContact: TStringField;
    FerriesGrid: TcxGrid;
    FerriesGridDBTableView1: TcxGridDBTableView;
    FerriesGridLevel1: TcxGridLevel;
    CarHireSds: TSQLDataSet;
    CarHireDsp: TDataSetProvider;
    CarHireCds: TClientDataSet;
    CarHireDs: TDataSource;
    CarHireCdscarhire_id: TIntegerField;
    CarHireCdsaddressbook_id: TIntegerField;
    CarHireCdsvehicles_id: TIntegerField;
    CarHireCdsfrompax: TIntegerField;
    CarHireCdstopax: TIntegerField;
    CarHireCdswef: TSQLTimeStampField;
    CarHireCdswet: TSQLTimeStampField;
    CarHireCdscostnonac: TBCDField;
    CarHireCdscostac: TIntegerField;
    CarHireCdsfit: TBooleanField;
    CarHireCdsremarks: TMemoField;
    CarHireCdscostpertour: TBooleanField;
    CarHireCdscostperkmac: TBCDField;
    CarHireCdscostperkmnonac: TBCDField;
    CarHireCdsminimumkm: TIntegerField;
    CarHireCdscostinterstate: TBCDField;
    CarHireCdscostnighthalt: TBCDField;
    CarHireCdscoststatetax: TBCDField;
    CarHireCdscommission: TBCDField;
    CarHireCdsmasters_id: TIntegerField;
    CarHireCdscurrencies_id: TIntegerField;
    FerriesGridDBTableView1vehicles_id: TcxGridDBColumn;
    FerriesGridDBTableView1frompax: TcxGridDBColumn;
    FerriesGridDBTableView1topax: TcxGridDBColumn;
    FerriesGridDBTableView1wef: TcxGridDBColumn;
    FerriesGridDBTableView1wet: TcxGridDBColumn;
    FerriesGridDBTableView1costnonac: TcxGridDBColumn;
    FerriesGridDBTableView1costac: TcxGridDBColumn;
    FerriesGridDBTableView1fit: TcxGridDBColumn;
    FerriesGridDBTableView1costperkmac: TcxGridDBColumn;
    FerriesGridDBTableView1costperkmnonac: TcxGridDBColumn;
    FerriesGridDBTableView1minimumkm: TcxGridDBColumn;
    FerriesGridDBTableView1costnighthalt: TcxGridDBColumn;
    FerriesGridDBTableView1commission: TcxGridDBColumn;
    FerriesGridDBTableView1currencies_id: TcxGridDBColumn;
    AutoSds: TSQLDataSet;
    AutoDsp: TDataSetProvider;
    AutoCds: TClientDataSet;
    AutoDS: TDataSource;
    AutoCdsAutomobiles_id: TIntegerField;
    AutoCdsAutomobile: TStringField;
    AgentLcmb: TcxLookupComboBox;
    cxWefLCMB: TcxLookupComboBox;
    WefSds: TSQLDataSet;
    WefDsp: TDataSetProvider;
    WefCds: TClientDataSet;
    WefCdswef: TSQLTimeStampField;
    WefDS: TDataSource;
    cxButtonFilter: TcxButton;
    cxButtonUpdate: TcxButton;
    CloseBtn: TcxButton;
    cxButton1: TcxButton;
    CarHireCdsTollTax: TFMTBCDField;
    FerriesGridDBTableView1TollTax: TcxGridDBColumn;
    Label5: TcxLabel;
    cxServiceCityLCMB: TcxLookupComboBox;
    cxSelectedCitiesCkb: TcxCheckBox;
    ServiceCitySds: TSQLDataSet;
    ServiceCityDsp: TDataSetProvider;
    ServiceCityCds: TClientDataSet;
    ServiceCityDs: TDataSource;
    ServiceCityCdsCities_id: TIntegerField;
    ServiceCityCdsCity: TStringField;
    CarHireCdsServiceCities_id: TIntegerField;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    CarHirePerKmPriceList1: TMenuItem;
    CarHireCdsCostEscort: TFMTBCDField;
    FerriesGridDBTableView1Escort: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CarHireCdsAfterInsert(DataSet: TDataSet);
    procedure CarHireCdsAfterPost(DataSet: TDataSet);
    procedure CarHireCdsBeforePost(DataSet: TDataSet);
    procedure CarHireCdsBeforeInsert(DataSet: TDataSet);
    procedure CarHireCdsAfterDelete(DataSet: TDataSet);
    procedure CityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure CityLcmbExit(Sender: TObject);
    procedure CityLcmbKeyPress(Sender: TObject; var Key: Char);
    procedure AutoCdsBeforeInsert(DataSet: TDataSet);
    procedure PerTourChkClick(Sender: TObject);
    procedure FilterData;
    procedure ChangeWefCombo;
    procedure cxButtonFilterClick(Sender: TObject);
    procedure cxWefLCMBEnter(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    function DoesWefExist: Boolean;
    procedure CloseBtnClick(Sender: TObject);
    procedure AgentLcmbExit(Sender: TObject);
    procedure AgentLcmbKeyPress(Sender: TObject; var Key: Char);
    procedure MasterLcmbExit(Sender: TObject);
    procedure MasterLcmbKeyPress(Sender: TObject; var Key: Char);
    procedure cxWefLCMBExit(Sender: TObject);
    procedure cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure AutoCdsAfterDelete(DataSet: TDataSet);
    procedure MasterLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure AutoCdsBeforeDelete(DataSet: TDataSet);
    procedure CarHireCdsBeforeDelete(DataSet: TDataSet);
    procedure AutoCdsBeforeEdit(DataSet: TDataSet);
    procedure CarHireCdsBeforeEdit(DataSet: TDataSet);
    procedure cxServiceCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxSelectedCitiesCkbClick(Sender: TObject);
    procedure CarHirePerKmPriceList1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarHireForm: TCarHireForm;
  _CarHireForm_Level: Integer;
  _CarHireTbl_State: TDataSetState;

implementation

uses BackOfficeDM, GeneralUt, ReportParameterFm, CarHirePriceListFm;

var
  _LastWefDate: TDateTime;
  _IsNewWef:  Boolean;
  AdmLevel : Integer;

{$R *.dfm}

procedure TCarHireForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCarHireForm.FormDestroy(Sender: TObject);
begin
  CarHireForm := nil;
end;

procedure TCarHireForm.FormCreate(Sender: TObject);
begin
  AdmLevel := _CarHireForm_Level;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active :=  True;
  AgentCDS.Active := False;
  AgentCDS.Active := True;
  MasterCds.Active := False;
  MasterCds.Active := True;
  AutoCds.Active := False;
  AutoCds.Active := True;
  CarHireCds.Active := False;
  CarHireCds.Active := True;

  ServiceCityCds.Active := True;

  FilterData;

  ChangeWefCombo;
end;

procedure TCarHireForm.CarHireCdsAfterInsert(DataSet: TDataSet);
begin
// currencycmb.KeyValue := TempQry['number'];
  if PerTourChk.Checked = true then
    CarHireCds['CostPerTour']:= 1
  else
    CarHireCds['CostPerTour']:= 0;

  if PerTourChk.Checked = true then
    if (MasterCds['Masters_id'] = null) or (MasterCds['Masters_id'] = 0)then
      raise Exception.Create ('Please select the master code ');

  CarHireCds['AddressBook_id']:= AgentLcmb.EditValue;
  CarHireCds['Masters_id']:= MasterLcmb.EditValue;
  CarHireCds['FIT'] :=  MasterCds['FIT'];
  if cxWefLCMB.Text <> '' then
    CarHireCds['Wef']:= cxWefLCMB.Text;

  CarHireCds['Currencies_id'] := GetDefaultCurrency;
  CarHireCds['CostEscort']:= 0.0;

end;

procedure TCarHireForm.CarHireCdsAfterPost(DataSet: TDataSet);
begin
  CarHireCds.ApplyUpdates(0);
  CarHireCds.Refresh;

  if _IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TCarHireForm.CarHireCdsBeforePost(DataSet: TDataSet);
begin
  _CarHireTbl_State := CarHireCds.state;

  if CarHireCds['ServiceCities_id'] = null then
    begin
      if cxServiceCityLCMB.EditValue <> null then
        CarHireCds['ServiceCities_id'] := cxServiceCityLCMB.EditValue
      else
        raise exception.create ('Service City has to be entered');
    end;

  if CarHireCds['ServiceCities_id'] = null then
    Raise Exception.Create('Please select the service city');  

  if CarHireCds['Currencies_id'] = null then
    CarHireCds['Currencies_id'] := GetDefaultCurrency;

  if CarHireCds['AddressBook_id'] = null then
    Raise Exception.Create('Please select an agent');

  if CarHireCds['Vehicles_id'] = null then
    Raise Exception.Create('Please select an automobile');

  if CarHireCds['FromPax'] = null then
    Raise Exception.Create('Please the From-PAX');

  if CarHireCds['ToPax'] = null then
    Raise Exception.Create('Please the To-PAX');

  if CarHireCds['Wef'] = null then
    Raise Exception.Create('Please the with effective from-date');

  if CarHireCds['CostNonAc'] = null then
    CarHireCds['CostNonAc'] := 0.0;

  if CarHireCds['CostAc'] = null then
    CarHireCds['CostAc'] := 0.0;

  if CarHireCds['CostPerKmAc'] = null then
    CarHireCds['CostPerKmAc'] := 0.0;

  if CarHireCds['CostPerKmNonAC'] = null then
    CarHireCds['CostPerKmNonAC'] := 0.0;

  if CarHireCds['MinimumKm'] = null then
    CarHireCds['MinimumKm'] := 0.0;

  if CarHireCds['CostNightHalt'] = null then
    CarHireCds['CostNightHalt'] := 0.0;

  if CarHireCds['CostStateTax'] = null then
    CarHireCds['CostStateTax'] := 0.0;

  if CarHireCds['Commission'] = null then
    CarHireCds['Commission'] := 0.0;

//  if CarHireCds['Wet'] = null then
//    Raise Exception.Create('Please the with effective to-date');

  if CarHireCdsfrompax.Value > CarHireCdstopax.Value then
    raise Exception.Create('FROM-PAX cannot be greater than TO-PAX');

  _IsNewWef := False;

  if DoesWefExist = false then
    begin
      _IsNewWef := True;
      _LastWefDate := CarHireCds['Wef'];
    end;

  if CarHireCds.State = dsInsert then
    CarHireCds['CarHire_id'] := GetNextId('CarHire', 'CarHire_id');
end;

procedure TCarHireForm.CarHireCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if CityLcmb.EditValue = 0 then
    Raise Exception.Create('Please select a city');
  if AgentLcmb.EditValue = 0 then
    Raise Exception.Create ('Please select an agent ');
end;

procedure TCarHireForm.CarHireCdsAfterDelete(DataSet: TDataSet);
begin
  CarHireCds.ApplyUpdates(0);
  CarHireCds.Refresh;
end;

procedure TCarHireForm.CityLcmbPropertiesEditValueChanged(Sender: TObject);
begin
  try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
      AgentCDS.Locate('Cities_id',CityLcmb.EditValue,[]);

      cxSelectedCitiesCkbClick(nil);

      cxButtonUpdateClick(nil);      

      FilterData;

  except
  end;
end;

procedure TCarHireForm.CityLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireForm.CityLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;
end;

procedure TCarHireForm.AutoCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if AgentLcmb.EditValue = null then
    Raise Exception.Create('Please select an agent');
  if MasterLcmb.EditValue = null then
    Raise Exception.Create('Please select a master code');
end;

procedure TCarHireForm.PerTourChkClick(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireForm.FilterData;
var
  x_Filter, AgentFilter, perTourFilter, MasterFilter, datefilter, ServiceCityFilter : string;
begin

  if Trim(cxWefLCMB.Text) = '' then
    x_filter := ' (1=2) '
  else
    x_filter := ' (1=1) ';

  AgentFilter := '';
  try
    if (AgentLcmb.EditValue <> null) and (AgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (AddressBook_id = ' + IntToStr(AgentLcmb.EditValue) + ') '
    else
       AgentFilter := ' AND (AddressBook_id = -1) '
  except
  end;

  PerTourFilter := '';
  try
    if PerTourChk.Checked = True then
      perTourFilter := ' AND (CostPerTour = 1) '
    else
      perTourFilter := ' AND (CostPerTour = 0) ';
  except
  end;

  MasterFilter := '';
  if PerTourChk.Checked then
    begin
      try
        if ((MasterLcmb.EditValue <> null) and (MasterLcmb.Editvalue <> 0)) then
          MasterFilter := ' AND (Masters_id = '+ VarToStr(MasterLcmb.EditValue) + ') ';
      except
      end;
    end;

  DateFilter := '';
  try
    if Trim(cxWefLCMB.Text) <> '' then
       DateFilter := ' AND (Wef = ''' + FormatDateTime('dd/mm/yyyy', StrToDate(cxWefLCMB.Text) ) + ''') ';
  except
  end;

  ServiceCityFilter := '';
  try
    if (cxServiceCityLCMB.EditValue <> null) and (cxServiceCityLCMB.EditValue <> 0) then
       ServiceCityFilter := ' AND (ServiceCities_id = ' + IntToStr(cxServiceCityLCMB.EditValue) + ') '
    else
       ServiceCityFilter := ' AND (ServiceCities_id = -1) '
  except
  end;



  CarHireCds.Active := False;
  CarHireCds.Filter := x_Filter + AgentFilter + perTourFilter + Masterfilter + DateFilter + ServiceCityFilter;
  CarHireCds.Filtered := True;
  CarHireCds.Active := True;
  CarHireCds.Last;

end;

procedure TCarHireForm.ChangeWefCombo;
var
  x_Filter, AgentFilter, perTourFilter, MasterFilter, datefilter : string;
begin
  inherited;

  x_Filter := ' WHERE (1=1) ';

  AgentFilter := '';
  try
    if (AgentLcmb.EditValue <> null) and (AgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (AddressBook_id = ' + IntToStr(AgentLcmb.EditValue) + ') ';
  except
  end;

  PerTourFilter := '';
  try
    if PerTourChk.Checked = True then
      perTourFilter := ' AND (CostPerTour = 1) '
    else
      perTourFilter := ' AND (CostPerTour = 0) ';
  except
  end;

  MasterFilter := '';
  if PerTourChk.Checked then
    begin
      try
        if ((MasterLcmb.EditValue <> null) and (MasterLcmb.Editvalue <> 0)) then
          MasterFilter := ' AND (Masters_id = '+ VarToStr(MasterLcmb.EditValue) + ') ';
      except
      end;
    end;


  x_Filter := 'SELECT DISTINCT wef FROM CarHire ' +
    x_Filter + AgentFilter + perTourFilter + Masterfilter + DateFilter +
    ' ORDER BY Wef DESC';

  WefSds.Close;
  WefSds.CommandText := x_Filter;

  WefCds.Close;
  WefCds.Open;

  cxWefLCMB.EditValue := WefCds['Wef'];

end;



procedure TCarHireForm.cxButtonFilterClick(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireForm.cxWefLCMBEnter(Sender: TObject);
begin
  ChangeWefCombo;
end;

procedure TCarHireForm.cxButtonUpdateClick(Sender: TObject);
begin

  ChangeWefCombo;

  try
    WefCds.Locate('wef',_LastWefDate,[]);
  except
  end;

  FilterData;
end;

function TCarHireForm.DoesWefExist: Boolean;
var
  QueryString, x_filter, AgentFilter, PerTourFilter, MasterFilter: string;
  x_WefExist: boolean;
  GpSds: TSQLDataSet;
begin

  x_WefExist := False;

  x_Filter := ' WHERE (1=1) ';

  AgentFilter := '';
  try
    if (AgentLcmb.EditValue <> null) and (AgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (AddressBook_id = ' + IntToStr(AgentLcmb.EditValue) + ') ';
  except
  end;

  PerTourFilter := '';
  try
    if PerTourChk.Checked = True then
      perTourFilter := ' AND (CostPerTour = 1) '
    else
      perTourFilter := ' AND (CostPerTour = 0) ';
  except
  end;

  MasterFilter := '';
  if PerTourChk.Checked then
    begin
      try
        if ((MasterLcmb.EditValue <> null) and (MasterLcmb.Editvalue <> 0)) then
          MasterFilter := ' AND (Masters_id = '+ VarToStr(MasterLcmb.EditValue) + ') ';
      except
      end;
    end;


  QueryString := 'SELECT x_count = COUNT(*) FROM CarHire ' +
    x_filter + AgentFilter + PerTourFilter + MasterFilter +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',CarHireCds['wef']) + ''' ';

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


procedure TCarHireForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TCarHireForm.AgentLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireForm.AgentLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireForm.MasterLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireForm.MasterLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireForm.cxWefLCMBExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireForm.cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_addressbook_id_str, x_masters_id_str, x_wef, x_wef_new, queryString: string;
begin

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if (AgentLcmb.EditValue = null) or (AgentLcmb.EditValue = 0) then
    raise exception.create ('Please select an agent');

  if Trim(cxWefLCMB.Text) = '' then
    raise exception.create ('Please select a date');

  x_addressbook_id_str := IntToStr(AgentLcmb.EditValue);
  x_wef := FormatDateTime('mm/dd/yyyy',StrToDate(cxWefLCMB.Text));

  if (MasterCds['Masters_id'] = null) or (MasterCds['Masters_id'] = 0) then
    x_masters_id_str := 'null'
  else
    x_masters_id_str := VarToStr(MasterCds['Masters_id']);

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

      x_wef_new := FormatDateTime('mm/dd/yyyy', VarToDateTime(_ret1[1]));

      QueryString := 'EXEC p_CopyCostCarHire ' + x_addressbook_id_str + ',' +
        x_masters_id_str + ',''' + x_wef + ''',''' +
        x_wef_new + ''', null';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      GpSds.Free;

      ChangeWefCombo;

      FilterData;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

end;

procedure TCarHireForm.AutoCdsAfterDelete(DataSet: TDataSet);
begin
  CarHireCds.ApplyUpdates(0);
  CarHireCds.Refresh;

end;

procedure TCarHireForm.MasterLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  if MasterLCMB.EditValue <> null then
    masterCds.Locate('Masters_id', MasterLCMB.EditValue, []); 
end;

procedure TCarHireForm.AutoCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCarHireForm.CarHireCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCarHireForm.AutoCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCarHireForm.CarHireCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCarHireForm.cxServiceCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if cxServiceCityLCMB.EditValue <> null then
      ServiceCityCds.Locate('Cities_id',cxServiceCityLCMB.EditValue,[]);

    cxButtonUpdateClick(nil);

    FilterData;
  except
  end;

end;

procedure TCarHireForm.cxSelectedCitiesCkbClick(Sender: TObject);
var
  x_Addressbook_id: integer;
  x_str: string;
begin

  if AgentLcmb.EditValue <> null then
    x_addressbook_id := AgentLcmb.EditValue
  else
    x_Addressbook_id := -1;

  if cxSelectedCitiesCkb.Checked then
    x_str := ' AND Cities_id IN ' +
      '(SELECT ServiceCities_id FROM CarHire WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) + ') '
  else
    x_str := '';


  ServiceCitySds.Close;
  ServiceCityCds.Close;

  ServiceCitySds.CommandText := 'SELECT Cities_id, City FROM Cities ' +
    'WHERE (1=1) ' +
    x_str +
    'ORDER BY City';
  ServiceCitySds.Open;
  ServiceCityCds.Open;

end;




procedure TCarHireForm.CarHirePerKmPriceList1Click(Sender: TObject);
begin

   if CarHirePriceListForm = nil then
    Application.CreateForm(TCarHirePriceListForm, CarHirePriceListForm);

end;

end.
