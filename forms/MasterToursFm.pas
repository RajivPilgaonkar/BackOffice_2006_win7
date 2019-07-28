unit MasterToursFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_2MG_2DG_Fm, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  FMTBcd, DBClient, Provider, SqlExpr, cxPC, cxLabel, cxDBLabel, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  cxContainer, cxGroupBox, cxRadioGroup, ExtCtrls, cxDBLookupComboBox;

type
  TMasterToursForm = class(TCustom_2MG_2DG_Form)
    MasterTourCdsMasters_id: TIntegerField;
    MasterTourCdsmastercode: TStringField;
    MasterTourCdsMasterName: TStringField;
    MasterTourCdsFit: TBooleanField;
    MasterTourCdstailormade: TBooleanField;
    MasterTourCdsactive: TBooleanField;
    MasterTourCdsPrincipalAgent: TStringField;
    MasterTourCdsDomestic: TBooleanField;
    MasterTourCdsLpDay: TIntegerField;
    MasterTourCdscity: TStringField;
    MasterTourCdsBank: TStringField;
    MasterTourCdsDeptDate: TSQLTimeStampField;
    cxGrid1DBTableView1Masters_id: TcxGridDBColumn;
    cxGrid1DBTableView1mastercode: TcxGridDBColumn;
    cxGrid1DBTableView1MasterName: TcxGridDBColumn;
    cxGrid1DBTableView1Fit: TcxGridDBColumn;
    cxGrid1DBTableView1tailormade: TcxGridDBColumn;
    cxGrid1DBTableView1active: TcxGridDBColumn;
    cxGrid1DBTableView1PrincipalAgent: TcxGridDBColumn;
    cxGrid1DBTableView1Domestic: TcxGridDBColumn;
    cxGrid1DBTableView1LpDay: TcxGridDBColumn;
    cxGrid1DBTableView1city: TcxGridDBColumn;
    cxGrid1DBTableView1Bank: TcxGridDBColumn;
    cxGrid1DBTableView1DeptDate: TcxGridDBColumn;
    TourCdsTourCodes_id: TIntegerField;
    TourCdsTourCode: TStringField;
    TourCdsTourName: TStringField;
    TourCdsFit: TBooleanField;
    TourCdstailormade: TBooleanField;
    TourCdsactive: TBooleanField;
    TourCdscity: TStringField;
    TourCdsTransferAgent: TStringField;
    TourCdsHotel: TStringField;
    TourCdsSingleConstituent: TBooleanField;
    TourCdsDeptDate: TSQLTimeStampField;
    cxGridDBTableView1TourCodes_id: TcxGridDBColumn;
    cxGridDBTableView1TourCode: TcxGridDBColumn;
    cxGridDBTableView1TourName: TcxGridDBColumn;
    cxGridDBTableView1Fit: TcxGridDBColumn;
    cxGridDBTableView1tailormade: TcxGridDBColumn;
    cxGridDBTableView1active: TcxGridDBColumn;
    cxGridDBTableView1city: TcxGridDBColumn;
    cxGridDBTableView1TransferAgent: TcxGridDBColumn;
    cxGridDBTableView1Hotel: TcxGridDBColumn;
    cxGridDBTableView1SingleConstituent: TcxGridDBColumn;
    cxGridDBTableView1DeptDate: TcxGridDBColumn;
    TourCalCdstourcalendar_id: TIntegerField;
    TourCalCdsdaysoffset: TIntegerField;
    TourCalCdsmasters_id: TIntegerField;
    TourCalCdstourcodes_id: TIntegerField;
    FitAgentCdsMasterFitAgents_id: TIntegerField;
    FitAgentCdsMasters_id: TIntegerField;
    FitAgentCdsFitAgents_id: TIntegerField;
    cxGridDBTableView2tourcalendar_id: TcxGridDBColumn;
    cxGridDBTableView2daysoffset: TcxGridDBColumn;
    cxGridDBTableView2masters_id: TcxGridDBColumn;
    cxGridDBTableView2tourcodes_id: TcxGridDBColumn;
    cxGrid3DBTableView1MasterFitAgents_id: TcxGridDBColumn;
    cxGrid3DBTableView1Masters_id: TcxGridDBColumn;
    cxGrid3DBTableView1FitAgents_id: TcxGridDBColumn;
    FitAgentQrySds: TSQLDataSet;
    FitAgentQryDsp: TDataSetProvider;
    FitAgentQryCds: TClientDataSet;
    FitAgentQryDs: TDataSource;
    TourCodeQrySds: TSQLDataSet;
    TourCodeQryDsp: TDataSetProvider;
    TourCodeQryCds: TClientDataSet;
    TourCodeQryDs: TDataSource;
    TourCodeQryCdsTourCodes_id: TIntegerField;
    TourCodeQryCdsTourCode: TStringField;
    FitAgentQryCdsFitAgents_id: TIntegerField;
    FitAgentQryCdsFitAgent: TStringField;
    PopupMenu1: TPopupMenu;
    DepartureDates1: TMenuItem;
    N1: TMenuItem;
    Edit1: TMenuItem;
    Add1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxFromDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxToDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxTourNameTextEditPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxTourCodeTextEditPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxActiveCkbPropertiesEditValueChanged(Sender: TObject);
    procedure cxTmRBClick(Sender: TObject);
    procedure cxFitRBClick(Sender: TObject);
    procedure cxGroupRBClick(Sender: TObject);
    procedure cxTourNameTextEditKeyPress(Sender: TObject; var Key: Char);
    procedure cxTourCodeTextEditKeyPress(Sender: TObject; var Key: Char);
    procedure TourCalCdsAfterInsert(DataSet: TDataSet);
    procedure TourCalCdsBeforePost(DataSet: TDataSet);
    procedure FitAgentCdsBeforePost(DataSet: TDataSet);
    procedure Add1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
    procedure FilterData;
    procedure ActivateInCustom;
    function IsTourCalendarRecordDuplicate: boolean;
    function IsFitAgentRecordDuplicate: boolean;
  public
    { Public declarations }
  end;

var
  MasterToursForm: TMasterToursForm;
  MasterToursForm_Level: integer;

implementation

uses GeneralUt, BackOfficeDM, MasterTourEditFm, MainFm, TourEditFm;

var
  _x_filter: boolean;

{$R *.dfm}

procedure TMasterToursForm.FormCreate(Sender: TObject);
begin

  Caption := 'Master Tours';
  Top := 10;

  _x_filter := false;

  cxFromDateEdit.Date := IncMonth(Date(), -3);
  cxToDateEdit.Date := IncMonth(Date(), 6);

  _x_filter := true;

  FilterData;

//  ActivateInCustom;

  inherited;

  FitAgentQryCds.Open;
  TourCodeQryCds.Open;

end;

procedure TMasterToursForm.FilterData;
var
  x_TourName, x_TourCode, x_TourName2, x_TourCode2, x_Active, x_TM: string;
begin

  if _x_filter = false then
    exit;

  if (cxFromDateEdit.Date = null) or (not IsDate(cxFromDateEdit.Text)) then
    cxFromDateEdit.Date := IncMonth(Date(), -3);

  if (cxToDateEdit.Date = null) or (not IsDate(cxToDateEdit.Text)) then
    cxToDateEdit.Date := IncMonth(Date(), 6);

  x_TourName := '';
  if (trim(cxTourNameTextEdit.Text) > '') then
    begin
      x_TourName := ' AND (Name LIKE ''%' + trim(cxTourNameTextEdit.Text) + '%'') ';
      x_TourName2 := ' AND (Tour LIKE ''%' + trim(cxTourNameTextEdit.Text) + '%'') ';
    end;

  x_TourCode := '';
  if (trim(cxTourCodeTextEdit.Text) > '') then
    begin
      x_TourCode := ' AND (MasterCode LIKE ''%' + trim(cxTourCodeTextEdit.Text) + '%'') ';
      x_TourCode2 := ' AND (TourCode LIKE ''%' + trim(cxTourCodeTextEdit.Text) + '%'') ';
    end;

  x_Active := '';
  if cxActiveCkb.Checked then
    x_Active := ' AND (Active = 1)';

  x_TM := ' AND (TailorMade = 1) ';
  if cxFitRB.Checked then
    x_TM := ' AND (FIT = 1) '
  else if cxGroupRB.Checked then
    x_TM := ' AND (TailorMade = 0 AND FIT = 0) ';

  MasterTourCds.Close;
  MasterTourSds.Close;

  MasterTourSds.CommandText :=
    'SELECT m.Masters_id, m.mastercode, m.name As MasterName, m.Fit, m.tailormade, m.active, ' +
    'a.organisation as PrincipalAgent, m.Domestic, m.LpDay, c.city, b.organisation as Bank, ' +
    '(SELECT MAX(mdd1.TourDate) FROM masterdeparturedates mdd1 ' +
    'WHERE mdd1.masters_id = m.masters_id ' +
    'AND mdd1.tourdate BETWEEN ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ' AND ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ') AS DeptDate ' +
    'FROM masters m ' +
       'LEFT JOIN addressbook a ON m.addressbook_id = a.addressbook_id ' +
       'LEFT JOIN cities c ON m.LpCities_id = c.cities_id ' +
       'LEFT JOIN addressbook b ON m.LpBanks_id = b.addressbook_id ' +
    'WHERE ((EXISTS (SELECT * FROM masterdeparturedates mdd ' +
                   'WHERE mdd.masters_id = m.masters_id ' +
                   'AND tourdate BETWEEN ' +
                   QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ' AND ' +
                   QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ')) ' +
    'OR (NOT EXISTS (SELECT * FROM masterdeparturedates mdd ' +
                   'WHERE mdd.masters_id = m.masters_id ))) ' +
    x_TourName +
    x_TourCode +
    x_Active +
    x_TM;

  MasterTourCds.Open;
  MasterTourSds.Open;


  TourCds.Close;
  TourSds.Close;

  TourSds.CommandText :=
    'SELECT t.TourCodes_id, t.TourCode, t.tour As TourName, t.Fit, t.tailormade, t.active, ' +
    'c.city, a.organisation as TransferAgent, h.organisation as Hotel, t.SingleConstituent, ' +
    '(SELECT MAX(tdd1.TourDate) FROM TourDepartureDates tdd1 ' +
    'WHERE tdd1.TourCodes_id = t.TourCodes_id ' +
    'AND tdd1.tourdate BETWEEN ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ' AND ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ') AS DeptDate ' +
    'FROM TourCodes t ' +
       'LEFT JOIN addressbook a ON t.agent_addressbook_id = a.addressbook_id ' +
       'LEFT JOIN cities c ON t.Cities_id = c.cities_id ' +
       'LEFT JOIN addressbook h ON t.Hotel_Addressbook_id = h.addressbook_id ' +
    'WHERE ((EXISTS (SELECT * FROM TourDepartureDates tdd ' +
                   'WHERE tdd.TourCodes_id = t.TourCodes_id ' +
                   'AND tourdate BETWEEN ' +
                   QuotedStr(FormatDateTime('mm/dd/yyyy',cxFromDateEdit.Date)) + ' AND ' +
                   QuotedStr(FormatDateTime('mm/dd/yyyy',cxToDateEdit.Date)) + ')) ' +
    'OR (NOT EXISTS (SELECT * FROM TourDepartureDates tdd ' +
                   'WHERE tdd.TourCodes_id = t.TourCodes_id ))) ' +
    x_TourName2 +
    x_TourCode2 +
    x_Active +
    x_TM;

  TourCds.Open;
  TourSds.Open;

end;

procedure TMasterToursForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TMasterToursForm.FormDestroy(Sender: TObject);
begin
  inherited;
  MasterToursForm := nil;
end;

procedure TMasterToursForm.ActivateInCustom;
begin

  Custom_AdmLevel := MasterToursForm_Level;

  Custom_FormWidth := 1100;
  Custom_FormHeight := 690;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

  Top := 10;

end;


procedure TMasterToursForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;

  // put in try block since you sometimes get the message "Cannot focus a disabled or invisible window"
  try
    cxGrid1.SetFocus;
  except
  end;

end;

procedure TMasterToursForm.cxFromDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxToDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxTourNameTextEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxTourCodeTextEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxActiveCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxTmRBClick(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxFitRBClick(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxGroupRBClick(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TMasterToursForm.cxTourNameTextEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterData;
end;

procedure TMasterToursForm.cxTourCodeTextEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterData;

end;

procedure TMasterToursForm.TourCalCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  TourCalCds['DaysOffset'] := 0;
end;

procedure TMasterToursForm.TourCalCdsBeforePost(DataSet: TDataSet);
begin

  if TourCalCds['Masters_id'] = null then
    raise Exception.Create('Please enter the Master Codes first');

  if TourCalCds['TourCodes_id'] = null then
    raise Exception.Create('Please enter the Tour Code');

  if TourCalCds['DaysOffset'] = null then
    TourCalCds['DaysOffset'] := 0;

  if (IsTourCalendarRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if (TourCalCds['TourCalendar_id'] = null) then
    raise Exception.Create('TourCalendar_id is not assigned');

end;

function TMasterToursForm.IsTourCalendarRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM TourCalendar ' +
    'WHERE TourCodes_id = ' + IntToStr(TourCalCds['TourCodes_id']) + ' ' +
    'AND Masters_id = ' + IntToStr(TourCalCds['Masters_id']) + ' ';

  if TourCalCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (TourCalendar_id <> ' + IntToStr(TourCalCds['TourCalendar_id']) + ') ';

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


procedure TMasterToursForm.FitAgentCdsBeforePost(DataSet: TDataSet);
begin

  if FitAgentCds['Masters_id'] = null then
    raise Exception.Create('Please enter the Master Codes first');

  if FitAgentCds['FitAgents_id'] = null then
    raise Exception.Create('Please enter the FIT Agent');

  if (IsFitAgentRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if (FitAgentCds['MasterFitAgents_id'] = null) then
    raise Exception.Create('MasterFitAgents_id is not assigned');

end;

function TMasterToursForm.IsFitAgentRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM MasterFitAgents ' +
    'WHERE FitAgents_id = ' + IntToStr(FitAgentCds['FitAgents_id']) + ' ' +
    'AND Masters_id = ' + IntToStr(FitAgentCds['Masters_id']) + ' ';

  if FitAgentCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MasterFitAgents_id <> ' + IntToStr(FitAgentCds['MasterFitAgents_id']) + ') ';

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

procedure TMasterToursForm.Add1Click(Sender: TObject);
begin
  inherited;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      MasterTourEditForm_level := GetUserLevel(g_users_id, 8000);
      MasterTourEditForm_Mode := 1;
      MasterTourEditForm_Masters_id := -1;

      If MasterTourEditForm_level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if MasterTourEditForm = Nil then
        Application.CreateForm(TMasterTourEditForm, MasterTourEditForm);

      MasterTourEditForm.FormStyle := fsNormal;
      MasterTourEditForm.Visible := False;   //Important

      MasterTourEditForm.ShowModal;

      FilterData;

      MasterTourEditForm.Release;
      MasterTourEditForm := nil;

    end
  else
    begin

      TourEditForm_level := GetUserLevel(g_users_id, 8000);
      TourEditForm_Mode := 1;
      TourEditForm_TourCodes_id := -1;

      If TourEditForm_level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if TourEditForm = Nil then
        Application.CreateForm(TTourEditForm, TourEditForm);

      TourEditForm.FormStyle := fsNormal;
      TourEditForm.Visible := False;   //Important

      TourEditForm.ShowModal;

      TourEditForm.Release;
      TourEditForm := nil;

    end;

end;

procedure TMasterToursForm.Edit1Click(Sender: TObject);
begin
  inherited;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      if MasterTourCds['Masters_id'] = null then
        raise exception.create('Please select a tour first');

      MasterTourEditForm_level := GetUserLevel(g_users_id, 8000);
      MasterTourEditForm_Mode := 2;
      MasterTourEditForm_Masters_id := MasterTourCds['Masters_id'];

      If MasterTourEditForm_level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if MasterTourEditForm = Nil then
        Application.CreateForm(TMasterTourEditForm, MasterTourEditForm);

      MasterTourEditForm.FormStyle := fsNormal;
      MasterTourEditForm.Visible := False;   //Important

      MasterTourEditForm.ShowModal;

      MasterTourEditForm.Release;
      MasterTourEditForm := nil;

    end
  else
    begin

      if TourCds['TourCodes_id'] = null then
        raise exception.create('Please select a tour first');

      TourEditForm_level := GetUserLevel(g_users_id, 8000);
      TourEditForm_Mode := 2;
      TourEditForm_TourCodes_id := TourCds['TourCodes_id'];

      If TourEditForm_level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      if TourEditForm = Nil then
        Application.CreateForm(TTourEditForm, TourEditForm);

      //TourEditForm.FormStyle := fsNormal;
      TourEditForm.Visible := False;   //Important

      TourEditForm.ShowModal;

      TourEditForm.Release;
      TourEditForm := nil;

    end;

end;

end.
