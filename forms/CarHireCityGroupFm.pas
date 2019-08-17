unit CarHireCityGroupFm;

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
  TCarHireCityGroupForm = class(TForm)
    TopPnl: TPanel;
    BottomPnl: TPanel;
    GridPnl: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    CityLcmb: TcxLookupComboBox;
    AgentSDS: TSQLDataSet;
    AgentDSP: TDataSetProvider;
    AgentCDS: TClientDataSet;
    AgentDS: TDataSource;
    AgentCDSAddressbook_id: TIntegerField;
    AgentCDSOrganisation: TStringField;
    AgentCDSCity: TStringField;
    AgentCDSCities_id: TIntegerField;
    AgentCDSContact: TStringField;
    CostGrid: TcxGrid;
    CostGridDBTableView1: TcxGridDBTableView;
    CostGridLevel1: TcxGridLevel;
    CarHireSds: TSQLDataSet;
    CarHireDsp: TDataSetProvider;
    CarHireCds: TClientDataSet;
    CarHireDs: TDataSource;
    CostGridDBTableView1vehicles_id: TcxGridDBColumn;
    CostGridDBTableView1frompax: TcxGridDBColumn;
    CostGridDBTableView1topax: TcxGridDBColumn;
    CostGridDBTableView1wef: TcxGridDBColumn;
    CostGridDBTableView1wet: TcxGridDBColumn;
    CostGridDBTableView1costnonac: TcxGridDBColumn;
    CostGridDBTableView1costac: TcxGridDBColumn;
    CostGridDBTableView1currencies_id: TcxGridDBColumn;
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
    Label5: TcxLabel;
    cxCityGroupLCMB: TcxLookupComboBox;
    CityGroupSds: TSQLDataSet;
    CityGroupDsp: TDataSetProvider;
    CityGroupCds: TClientDataSet;
    CityGroupDs: TDataSource;
    CarHireCdsCarHireGroupCosts_id: TIntegerField;
    CarHireCdsCarHireGroups_id: TIntegerField;
    CarHireCdsAddressbook_id: TIntegerField;
    CarHireCdsVehicles_id: TIntegerField;
    CarHireCdsFromPax: TIntegerField;
    CarHireCdsToPax: TIntegerField;
    CarHireCdsWef: TSQLTimeStampField;
    CarHireCdsWet: TSQLTimeStampField;
    CarHireCdsCostNonAc: TFMTBCDField;
    CarHireCdsCostAc: TFMTBCDField;
    CarHireCdsCurrencies_id: TIntegerField;
    CityGroupCdsCarHireGroups_id: TIntegerField;
    CityGroupCdsCarHireGroup: TStringField;
    CarHireCdsRemarks: TStringField;
    CarHireCdsParkingFee: TFMTBCDField;
    CarHireCdsCostNightHalt: TFMTBCDField;
    CarHireCdsTollTax: TFMTBCDField;
    CarHireCdsCostEscort: TFMTBCDField;
    CostGridDBTableView1ParkingFee: TcxGridDBColumn;
    CostGridDBTableView1CostNightHalt: TcxGridDBColumn;
    CostGridDBTableView1TollTax: TcxGridDBColumn;
    CostGridDBTableView1CostEscort: TcxGridDBColumn;
    CarHireCdscommission: TFMTBCDField;
    CostGridDBTableView1Commission: TcxGridDBColumn;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    CarHirePerKmPriceList1: TMenuItem;
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
    procedure FilterData;
    procedure ChangeWefCombo;
    procedure cxButtonFilterClick(Sender: TObject);
    procedure cxWefLCMBEnter(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    function DoesWefExist: Boolean;
    procedure CloseBtnClick(Sender: TObject);
    procedure AgentLcmbExit(Sender: TObject);
    procedure AgentLcmbKeyPress(Sender: TObject; var Key: Char);
    procedure cxWefLCMBExit(Sender: TObject);
    procedure cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure AutoCdsAfterDelete(DataSet: TDataSet);
    procedure AutoCdsBeforeDelete(DataSet: TDataSet);
    procedure CarHireCdsBeforeDelete(DataSet: TDataSet);
    procedure AutoCdsBeforeEdit(DataSet: TDataSet);
    procedure CarHireCdsBeforeEdit(DataSet: TDataSet);
    procedure cxServiceCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure CarHirePerKmPriceList1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarHireCityGroupForm: TCarHireCityGroupForm;
  _CarHireCityGroupForm_Level: Integer;
  _CarHireCityGroupTbl_State: TDataSetState;
implementation

uses BackOfficeDM, GeneralUt, ReportParameterFm, CarHirePriceListFm;

var
  _LastWefDate: TDateTime;
  _IsNewWef:  Boolean;
  AdmLevel : Integer;

{$R *.dfm}

procedure TCarHireCityGroupForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCarHireCityGroupForm.FormDestroy(Sender: TObject);
begin
  CarHireCityGroupForm := nil;
end;

procedure TCarHireCityGroupForm.FormCreate(Sender: TObject);
begin
  AdmLevel := _CarHireCityGroupForm_Level;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active :=  True;

  AgentCDS.Active := False;
  AgentCDS.Active := True;

  CityGroupCds.Active := False;
  CityGroupCds.Active := True;

  AutoCds.Active := False;
  AutoCds.Active := True;

  CarHireCds.Active := False;
  CarHireCds.Active := True;

  FilterData;

  ChangeWefCombo;
end;

procedure TCarHireCityGroupForm.CarHireCdsAfterInsert(DataSet: TDataSet);
begin

  CarHireCds['Addressbook_id']:= AgentLcmb.EditValue;
  CarHireCds['CarHireGroups_id']:= cxCityGroupLCMB.EditValue;

  if cxWefLCMB.Text <> '' then
    CarHireCds['Wef']:= cxWefLCMB.Text;

  CarHireCds['Currencies_id'] := GetDefaultCurrency;
end;

procedure TCarHireCityGroupForm.CarHireCdsAfterPost(DataSet: TDataSet);
begin
  CarHireCds.ApplyUpdates(0);
  CarHireCds.Refresh;

  if _IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TCarHireCityGroupForm.CarHireCdsBeforePost(DataSet: TDataSet);
begin
  _CarHireCityGroupTbl_State := CarHireCds.state;

  if CarHireCds['CarHireGroups_id'] = null then
    begin
      if cxCityGroupLCMB.EditValue <> null then
        CarHireCds['CarHireGroups_id'] := cxCityGroupLCMB.EditValue
      else
        raise exception.create ('City Group has to be entered');
    end;

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

  if CarHireCds['Commission'] = null then
    CarHireCds['Commission'] := 0.0;


  if CarHireCdsfrompax.Value > CarHireCdstopax.Value then
    raise Exception.Create('FROM-PAX cannot be greater than TO-PAX');

  _IsNewWef := False;

  if DoesWefExist = false then
    begin
      _IsNewWef := True;
      _LastWefDate := CarHireCds['Wef'];
    end;

  if CarHireCds.State = dsInsert then
    CarHireCds['CarHireGroupCosts_id'] := GetNextId('CarHireGroupCosts', 'CarHireGroupCosts_id');
end;

procedure TCarHireCityGroupForm.CarHireCdsBeforeInsert(DataSet: TDataSet);
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
  if cxCityGroupLCMB.EditValue = 0 then
    Raise Exception.Create ('Please select a City Group');
end;

procedure TCarHireCityGroupForm.CarHireCdsAfterDelete(DataSet: TDataSet);
begin
  CarHireCds.ApplyUpdates(0);
  CarHireCds.Refresh;
end;

procedure TCarHireCityGroupForm.CityLcmbPropertiesEditValueChanged(Sender: TObject);
begin
  try
    if CityLcmb.EditValue <> null then
      BackOfficeDataModule.CitiesCds.Locate('Cities_id',CityLcmb.EditValue,[]);
      AgentCDS.Locate('Cities_id',CityLcmb.EditValue,[]);

      cxButtonUpdateClick(nil);

      FilterData;

  except
  end;
end;

procedure TCarHireCityGroupForm.CityLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireCityGroupForm.CityLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;
end;

procedure TCarHireCityGroupForm.FilterData;
var
  x_Filter, AgentFilter, datefilter, CityGroupFilter : string;
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

  DateFilter := '';
  try
    if Trim(cxWefLCMB.Text) <> '' then
       DateFilter := ' AND (Wef = ''' + FormatDateTime('dd/mm/yyyy', StrToDate(cxWefLCMB.Text) ) + ''') ';
  except
  end;

  CityGroupFilter := '';
  try
    if (cxCityGroupLCMB.EditValue <> null) and (cxCityGroupLCMB.EditValue <> 0) then
       CityGroupFilter := ' AND (CarHireGroups_id = ' + IntToStr(cxCityGroupLCMB.EditValue) + ') '
    else
       CityGroupFilter := ' AND (CarHireGroups_id = -1) ';
  except
  end;



  CarHireCds.Active := False;
  CarHireCds.Filter := x_Filter + AgentFilter + DateFilter + CityGroupFilter;
  CarHireCds.Filtered := True;
  CarHireCds.Active := True;
  CarHireCds.Last;

end;

procedure TCarHireCityGroupForm.ChangeWefCombo;
var
  x_Filter, AgentFilter, datefilter, CityGroupFilter : string;
begin
  inherited;

  x_Filter := ' WHERE (1=1) ';

  AgentFilter := '';
  try
    if (AgentLcmb.EditValue <> null) and (AgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (AddressBook_id = ' + IntToStr(AgentLcmb.EditValue) + ') ';
  except
  end;

  CityGroupFilter := '';
  try
    if (cxCityGroupLcmb.EditValue <> null) and (cxCityGroupLcmb.EditValue <> 0) then
      CityGroupFilter := ' AND (CarHireGroups_id = ' + IntToStr(cxCityGroupLCMB.EditValue) + ') ';
  except
  end;

  x_Filter := 'SELECT DISTINCT wef FROM carHireGroupCosts ' +
    x_Filter + AgentFilter + DateFilter + CityGroupFilter +
    ' ORDER BY Wef DESC';

  WefSds.Close;
  WefSds.CommandText := x_Filter;

  WefCds.Close;
  WefCds.Open;

  cxWefLCMB.EditValue := WefCds['Wef'];

end;



procedure TCarHireCityGroupForm.cxButtonFilterClick(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireCityGroupForm.cxWefLCMBEnter(Sender: TObject);
begin
  ChangeWefCombo;
end;

procedure TCarHireCityGroupForm.cxButtonUpdateClick(Sender: TObject);
begin

  ChangeWefCombo;

  try
    WefCds.Locate('wef',_LastWefDate,[]);
  except
  end;

  FilterData;
end;

function TCarHireCityGroupForm.DoesWefExist: Boolean;
var
  QueryString, x_filter, AgentFilter, CityGroupFilter: string;
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

  CityGroupFilter := '';
  try
    if (cxCityGroupLcmb.EditValue <> null) and (cxCityGroupLcmb.EditValue <> 0) then
      CityGroupFilter := ' AND (CarHireGroups_id = ' + IntToStr(cxCityGroupLCMB.EditValue) + ') ';
  except
  end;


  QueryString := 'SELECT x_count = COUNT(*) FROM carHireGroupCosts ' +
    x_filter + AgentFilter + CityGroupFilter +
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


procedure TCarHireCityGroupForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TCarHireCityGroupForm.AgentLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireCityGroupForm.AgentLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireCityGroupForm.cxWefLCMBExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireCityGroupForm.cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireCityGroupForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_addressbook_id_str, x_wef, x_wef_new, queryString, x_cg_id_str: string;
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
  x_cg_id_str := IntToStr(cxCityGroupLCMB.EditValue);
  x_wef := FormatDateTime('mm/dd/yyyy',StrToDate(cxWefLCMB.Text));

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

      QueryString := 'EXEC p_CopyCostCarHireCityGroups ' + x_addressbook_id_str + ',' +
        x_cg_id_str + ',''' + x_wef + ''',''' +
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

procedure TCarHireCityGroupForm.AutoCdsAfterDelete(DataSet: TDataSet);
begin
  CarHireCds.ApplyUpdates(0);
  CarHireCds.Refresh;

end;

procedure TCarHireCityGroupForm.AutoCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCarHireCityGroupForm.CarHireCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCarHireCityGroupForm.AutoCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCarHireCityGroupForm.CarHireCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCarHireCityGroupForm.cxServiceCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if cxCityGroupLCMB.EditValue <> null then
      CityGroupCds.Locate('CarHireGroups_id',cxCityGroupLCMB.EditValue,[]);

    cxButtonUpdateClick(nil);

    FilterData;
  except
  end;

end;

procedure TCarHireCityGroupForm.CarHirePerKmPriceList1Click(
  Sender: TObject);
begin

   if CarHirePriceListForm = nil then
    Application.CreateForm(TCarHirePriceListForm, CarHirePriceListForm);

end;

end.
