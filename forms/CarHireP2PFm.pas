unit CarHireP2PFm;

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
  TCarHireP2PForm = class(TForm)
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
    FerriesGrid: TcxGrid;
    FerriesGridDBTableView1: TcxGridDBTableView;
    FerriesGridLevel1: TcxGridLevel;
    CarHireP2PSds: TSQLDataSet;
    CarHireP2PDsp: TDataSetProvider;
    CarHireP2PCds: TClientDataSet;
    CarHireP2PDs: TDataSource;
    FerriesGridDBTableView1vehicles_id: TcxGridDBColumn;
    FerriesGridDBTableView1frompax: TcxGridDBColumn;
    FerriesGridDBTableView1topax: TcxGridDBColumn;
    FerriesGridDBTableView1wef: TcxGridDBColumn;
    FerriesGridDBTableView1wet: TcxGridDBColumn;
    FerriesGridDBTableView1costnonac: TcxGridDBColumn;
    FerriesGridDBTableView1costac: TcxGridDBColumn;
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
    Label5: TcxLabel;
    cxFromCityLCMB: TcxLookupComboBox;
    cxSelectedCitiesCkb: TcxCheckBox;
    FromCitySds: TSQLDataSet;
    FromCityDsp: TDataSetProvider;
    FromCityCds: TClientDataSet;
    FromCityDs: TDataSource;
    FromCityCdsCities_id: TIntegerField;
    FromCityCdsCity: TStringField;
    CarHireP2PCdsCarHireP2P_id: TIntegerField;
    CarHireP2PCdsAddressbook_id: TIntegerField;
    CarHireP2PCdsVehicles_id: TIntegerField;
    CarHireP2PCdsFromPax: TIntegerField;
    CarHireP2PCdsToPax: TIntegerField;
    CarHireP2PCdsWef: TSQLTimeStampField;
    CarHireP2PCdsWet: TSQLTimeStampField;
    CarHireP2PCdsCostNonAc: TFMTBCDField;
    CarHireP2PCdsCostAc: TFMTBCDField;
    CarHireP2PCdsFit: TBooleanField;
    CarHireP2PCdsCurrencies_id: TIntegerField;
    CarHireP2PCdsFromCities_id: TIntegerField;
    CarHireP2PCdsToCities_id: TIntegerField;
    Label4: TcxLabel;
    cxToCityLCMB: TcxLookupComboBox;
    ToCitySds: TSQLDataSet;
    ToCityDsp: TDataSetProvider;
    ToCityCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    ToCityDs: TDataSource;
    CarHireP2PCdscommission: TFMTBCDField;
    FerriesGridDBTableView1Commission: TcxGridDBColumn;
    CarHireP2PCdsRep: TFMTBCDField;
    FerriesGridDBTableView1Rep: TcxGridDBColumn;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    CarHirePerKmPriceList1: TMenuItem;
    CarHireP2PCdsGuide: TFMTBCDField;
    FerriesGridDBTableView1Guide: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CarHireP2PCdsAfterInsert(DataSet: TDataSet);
    procedure CarHireP2PCdsAfterPost(DataSet: TDataSet);
    procedure CarHireP2PCdsBeforePost(DataSet: TDataSet);
    procedure CarHireP2PCdsBeforeInsert(DataSet: TDataSet);
    procedure CarHireP2PCdsAfterDelete(DataSet: TDataSet);
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
    procedure AutoCdsBeforeDelete(DataSet: TDataSet);
    procedure CarHireP2PCdsBeforeDelete(DataSet: TDataSet);
    procedure AutoCdsBeforeEdit(DataSet: TDataSet);
    procedure CarHireP2PCdsBeforeEdit(DataSet: TDataSet);
    procedure cxSelectedCitiesCkbClick(Sender: TObject);
    procedure cxFromCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxToCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure CarHirePerKmPriceList1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarHireP2PForm: TCarHireP2PForm;
  _CarHireP2PForm_Level: Integer;
  _CarHireP2PTbl_State: TDataSetState;
implementation

uses BackOfficeDM, GeneralUt, ReportParameterFm, CarHirePriceListFm;

var
  _LastWefDate: TDateTime;
  _IsNewWef:  Boolean;
  AdmLevel : Integer;

{$R *.dfm}

procedure TCarHireP2PForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCarHireP2PForm.FormDestroy(Sender: TObject);
begin
  CarHireP2PForm := nil;
end;

procedure TCarHireP2PForm.FormCreate(Sender: TObject);
begin
  AdmLevel := _CarHireP2PForm_Level;

  BackOfficeDataModule.CitiesCds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active :=  True;
  AgentCDS.Active := False;
  AgentCDS.Active := True;
  AutoCds.Active := False;
  AutoCds.Active := True;
  CarHireP2PCds.Active := False;
  CarHireP2PCds.Active := True;

  FromCityCds.Active := True;
  ToCityCds.Active := True;

  FilterData;

  ChangeWefCombo;
end;

procedure TCarHireP2PForm.CarHireP2PCdsAfterInsert(DataSet: TDataSet);
begin

  CarHireP2PCds['AddressBook_id']:= AgentLcmb.EditValue;
  if cxWefLCMB.Text <> '' then
    CarHireP2PCds['Wef']:= cxWefLCMB.Text;

  CarHireP2PCds['Currencies_id'] := GetDefaultCurrency;
end;

procedure TCarHireP2PForm.CarHireP2PCdsAfterPost(DataSet: TDataSet);
begin
  CarHireP2PCds.ApplyUpdates(0);
  CarHireP2PCds.Refresh;

  if _IsNewWef then
    cxButtonUpdateClick(nil);

end;

procedure TCarHireP2PForm.CarHireP2PCdsBeforePost(DataSet: TDataSet);
begin
  _CarHireP2PTbl_State := CarHireP2PCds.state;

  if CarHireP2PCds['FromCities_id'] = null then
    begin
      if cxFromCityLCMB.EditValue <> null then
        CarHireP2PCds['FromCities_id'] := cxFromCityLCMB.EditValue
      else
        raise exception.create ('From City has to be entered');
    end;

  if CarHireP2PCds['ToCities_id'] = null then
    begin
      if cxToCityLCMB.EditValue <> null then
        CarHireP2PCds['ToCities_id'] := cxToCityLCMB.EditValue
      else
        raise exception.create ('To City has to be entered');
    end;

  if CarHireP2PCds['Rep'] = null then
    CarHireP2PCds['Rep'] := 0.0;

  if CarHireP2PCds['Guide'] = null then
    CarHireP2PCds['Guide'] := 0.0;

  if CarHireP2PCds['Currencies_id'] = null then
    CarHireP2PCds['Currencies_id'] := GetDefaultCurrency;

  if CarHireP2PCds['AddressBook_id'] = null then
    Raise Exception.Create('Please select an agent');

  if CarHireP2PCds['Vehicles_id'] = null then
    Raise Exception.Create('Please select an automobile');

  if CarHireP2PCds['FromPax'] = null then
    Raise Exception.Create('Please the From-PAX');

  if CarHireP2PCds['ToPax'] = null then
    Raise Exception.Create('Please the To-PAX');

  if CarHireP2PCds['Wef'] = null then
    Raise Exception.Create('Please the with effective from-date');

  if CarHireP2PCds['CostNonAc'] = null then
    CarHireP2PCds['CostNonAc'] := 0.0;

  if CarHireP2PCds['CostAc'] = null then
    CarHireP2PCds['CostAc'] := 0.0;

  if CarHireP2PCds['Commission'] = null then
    CarHireP2PCds['Commission'] := 0.0;

  if CarHireP2PCdsfrompax.Value > CarHireP2PCdstopax.Value then
    raise Exception.Create('FROM PAX cannot be greater than TO PAX');

  _IsNewWef := False;

  if DoesWefExist = false then
    begin
      _IsNewWef := True;
      _LastWefDate := CarHireP2PCds['Wef'];
    end;

  if CarHireP2PCds.State = dsInsert then
    CarHireP2PCds['CarHireP2P_id'] := GetNextId('CarHireP2P', 'CarHireP2P_id');
end;

procedure TCarHireP2PForm.CarHireP2PCdsBeforeInsert(DataSet: TDataSet);
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
  if cxFromCityLCMB.EditValue = 0 then
    Raise Exception.Create ('Please select the "From City" ');
  if cxToCityLCMB.EditValue = 0 then
    Raise Exception.Create ('Please select the "To City" ');

end;

procedure TCarHireP2PForm.CarHireP2PCdsAfterDelete(DataSet: TDataSet);
begin
  CarHireP2PCds.ApplyUpdates(0);
  CarHireP2PCds.Refresh;
end;

procedure TCarHireP2PForm.CityLcmbPropertiesEditValueChanged(Sender: TObject);
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

procedure TCarHireP2PForm.CityLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireP2PForm.CityLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;
end;

procedure TCarHireP2PForm.AutoCdsBeforeInsert(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if AgentLcmb.EditValue = null then
    Raise Exception.Create('Please select an agent');

  if cxFromCityLcmb.EditValue = null then
    Raise Exception.Create('Please select "From Date"');

  if cxToCityLcmb.EditValue = null then
    Raise Exception.Create('Please select "To Date"');

end;

procedure TCarHireP2PForm.PerTourChkClick(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireP2PForm.FilterData;
var
  x_Filter, AgentFilter, datefilter, FromCityFilter, ToCityFilter : string;
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

  FromCityFilter := '';
  try
    if (cxFromCityLCMB.EditValue <> null) and (cxFromCityLCMB.EditValue <> 0) then
       FromCityFilter := ' AND (FromCities_id = ' + IntToStr(cxFromCityLCMB.EditValue) + ') '
    else
       FromCityFilter := ' AND (FromCities_id = -1) '
  except
  end;

  ToCityFilter := '';
  try
    if (cxToCityLCMB.EditValue <> null) and (cxToCityLCMB.EditValue <> 0) then
       ToCityFilter := ' AND (ToCities_id = ' + IntToStr(cxToCityLCMB.EditValue) + ') '
    else
       ToCityFilter := ' AND (ToCities_id = -1) '
  except
  end;


  CarHireP2PCds.Active := False;
  CarHireP2PCds.Filter := x_Filter + AgentFilter + DateFilter + FromCityFilter + ToCityFilter;
  CarHireP2PCds.Filtered := True;
  CarHireP2PCds.Active := True;
  CarHireP2PCds.Last;

end;

procedure TCarHireP2PForm.ChangeWefCombo;
var
  x_Filter, AgentFilter, FromCityFilter, ToCityFilter, datefilter : string;
begin
  inherited;

  x_Filter := ' WHERE (1=1) ';

  AgentFilter := '';
  try
    if (AgentLcmb.EditValue <> null) and (AgentLcmb.EditValue <> 0) then
       AgentFilter := ' AND (AddressBook_id = ' + IntToStr(AgentLcmb.EditValue) + ') ';
  except
  end;

  FromCityFilter := '';
  try
    if (cxFromCityLcmb.EditValue <> null) and (cxFromCityLcmb.EditValue <> 0) then
       FromCityFilter := ' AND (FromCities_id = ' + IntToStr(cxFromCityLcmb.EditValue) + ') ';
  except
  end;

  ToCityFilter := '';
  try
    if (cxToCityLcmb.EditValue <> null) and (cxToCityLcmb.EditValue <> 0) then
       ToCityFilter := ' AND (ToCities_id = ' + IntToStr(cxToCityLcmb.EditValue) + ') ';
  except
  end;


  x_Filter := 'SELECT DISTINCT wef FROM CarHireP2P ' +
    x_Filter + AgentFilter + DateFilter + FromCityFilter + ToCityFilter +
    ' ORDER BY Wef DESC';

  WefSds.Close;
  WefSds.CommandText := x_Filter;

  WefCds.Close;
  WefCds.Open;

  cxWefLCMB.EditValue := WefCds['Wef'];

end;



procedure TCarHireP2PForm.cxButtonFilterClick(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireP2PForm.cxWefLCMBEnter(Sender: TObject);
begin
  ChangeWefCombo;
end;

procedure TCarHireP2PForm.cxButtonUpdateClick(Sender: TObject);
begin

  ChangeWefCombo;

  try
    WefCds.Locate('wef',_LastWefDate,[]);
  except
  end;

  FilterData;
end;

function TCarHireP2PForm.DoesWefExist: Boolean;
var
  QueryString, x_filter, AgentFilter, FromCityFilter, ToCityFilter: string;
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

  FromCityFilter := '';
  try
    if (cxFromCityLcmb.EditValue <> null) and (cxFromCityLcmb.EditValue <> 0) then
       FromCityFilter := ' AND (FromCities_id = ' + IntToStr(cxFromCityLcmb.EditValue) + ') ';
  except
  end;

  ToCityFilter := '';
  try
    if (cxToCityLcmb.EditValue <> null) and (cxToCityLcmb.EditValue <> 0) then
       ToCityFilter := ' AND (ToCities_id = ' + IntToStr(cxToCityLcmb.EditValue) + ') ';
  except
  end;

  QueryString := 'SELECT x_count = COUNT(*) FROM CarHireP2P ' +
    x_filter + AgentFilter + FromCityFilter + ToCityFilter +
    ' AND wef = ''' + FormatDateTime('mm/dd/yyyy',CarHireP2PCds['wef']) + ''' ';

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


procedure TCarHireP2PForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TCarHireP2PForm.AgentLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireP2PForm.AgentLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireP2PForm.MasterLcmbExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireP2PForm.MasterLcmbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireP2PForm.cxWefLCMBExit(Sender: TObject);
begin
  FilterData;
end;

procedure TCarHireP2PForm.cxWefLCMBKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FilterData;

end;

procedure TCarHireP2PForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_addressbook_id_str, x_wef, x_wef_new, queryString: string;
begin

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  if cxFromCityLCMB.EditValue = null then
    raise exception.create ('Please enter From City');

  if cxToCityLCMB.EditValue = null then
    raise exception.create ('Please enter To City');

  if (AgentLcmb.EditValue = null) or (AgentLcmb.EditValue = 0) then
    raise exception.create ('Please select an agent');

  if Trim(cxWefLCMB.Text) = '' then
    raise exception.create ('Please select a date');

  x_addressbook_id_str := IntToStr(AgentLcmb.EditValue);
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

      QueryString := 'EXEC p_CopyCostCarHireP2P ' + x_addressbook_id_str + ',' +
        IntToStr(cxFromCityLCMB.EditValue) + ',' +
        IntToStr(cxToCityLCMB.EditValue) + ',' +
        ' ''' + x_wef + ''',''' +
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

procedure TCarHireP2PForm.AutoCdsAfterDelete(DataSet: TDataSet);
begin
  CarHireP2PCds.ApplyUpdates(0);
  CarHireP2PCds.Refresh;

end;

procedure TCarHireP2PForm.AutoCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCarHireP2PForm.CarHireP2PCdsBeforeDelete(DataSet: TDataSet);
begin
  if (AdmLevel < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
end;

procedure TCarHireP2PForm.AutoCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCarHireP2PForm.CarHireP2PCdsBeforeEdit(DataSet: TDataSet);
begin
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TCarHireP2PForm.cxSelectedCitiesCkbClick(Sender: TObject);
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
      '(SELECT FromCities_id FROM CarHireP2P WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) + ') '
  else
    x_str := '';


  FromCitySds.Close;
  FromCityCds.Close;

  FromCitySds.CommandText := 'SELECT Cities_id, City FROM Cities ' +
    'WHERE (1=1) ' +
    x_str +
    'ORDER BY City';
  FromCitySds.Open;
  FromCityCds.Open;

  if cxSelectedCitiesCkb.Checked then
    x_str := ' AND Cities_id IN ' +
      '(SELECT ToCities_id FROM CarHireP2P WHERE Addressbook_id = ' + IntToStr(x_Addressbook_id) + ') '
  else
    x_str := '';


  ToCitySds.Close;
  ToCityCds.Close;

  ToCitySds.CommandText := 'SELECT Cities_id, City FROM Cities ' +
    'WHERE (1=1) ' +
    x_str +
    'ORDER BY City';
  ToCitySds.Open;
  ToCityCds.Open;

end;

procedure TCarHireP2PForm.cxFromCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if cxFromCityLCMB.EditValue <> null then
      FromCityCds.Locate('Cities_id',cxFromCityLCMB.EditValue,[]);

    cxButtonUpdateClick(nil);

    FilterData;
  except
  end;

end;

procedure TCarHireP2PForm.cxToCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if cxToCityLCMB.EditValue <> null then
      ToCityCds.Locate('Cities_id',cxToCityLCMB.EditValue,[]);

    cxButtonUpdateClick(nil);

    FilterData;
  except
  end;

end;

procedure TCarHireP2PForm.CarHirePerKmPriceList1Click(Sender: TObject);
begin

   if CarHirePriceListForm = nil then
    Application.CreateForm(TCarHirePriceListForm, CarHirePriceListForm);

end;

end.
