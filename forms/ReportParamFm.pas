unit ReportParamFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxControls, cxContainer, cxEdit,
  cxCheckBox, ExtCtrls, cxGraphics, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, DateUtils, Buttons;

type
  TReportParamForm = class(TForm)
    Panel1: TPanel;
    cxDateRangeCkb: TcxCheckBox;
    cxFromDateLabel: TcxLabel;
    cxFromDateEdit: TcxDateEdit;
    cxToDateLabel: TcxLabel;
    cxToDateEdit: TcxDateEdit;
    Panel2: TPanel;
    cxCompanyCkb: TcxCheckBox;
    cxCompanyLCMB: TcxLookupComboBox;
    CompaniesSds: TSQLDataSet;
    CompaniesDsp: TDataSetProvider;
    CompaniesCds: TClientDataSet;
    CompaniesDs: TDataSource;
    Panel7: TPanel;
    cxMonthCkb: TcxCheckBox;
    cxMonthsLCMB: TcxLookupComboBox;
    MonthsSds: TSQLDataSet;
    MonthsDsp: TDataSetProvider;
    MonthsCds: TClientDataSet;
    MonthsDs: TDataSource;
    MonthsCdsMonths_id: TIntegerField;
    MonthsCdsMonthName: TStringField;
    Panel4: TPanel;
    cxDivisionCkb: TcxCheckBox;
    cxDivisionLCMB: TcxLookupComboBox;
    OfficesSds: TSQLDataSet;
    OfficesDsp: TDataSetProvider;
    OfficesCds: TClientDataSet;
    OfficesDs: TDataSource;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    DivisionsSds: TSQLDataSet;
    DivisionsDsp: TDataSetProvider;
    DivisionsCds: TClientDataSet;
    DivisionsDs: TDataSource;
    Panel3: TPanel;
    cxOfficeCkb: TcxCheckBox;
    cxOfficeLCMB: TcxLookupComboBox;
    OrgSds: TSQLDataSet;
    OrgDsp: TDataSetProvider;
    OrgCds: TClientDataSet;
    OrgDs: TDataSource;
    Panel5: TPanel;
    cxCityCkb: TcxCheckBox;
    cxCityLCMB: TcxLookupComboBox;
    Panel6: TPanel;
    cxOrganisationCkb: TcxCheckBox;
    cxOrganisationLCMB: TcxLookupComboBox;
    Panel8: TPanel;
    cxUserCkb: TcxCheckBox;
    cxUserLCMB: TcxLookupComboBox;
    UserSds: TSQLDataSet;
    UserDsp: TDataSetProvider;
    UserCds: TClientDataSet;
    UserDs: TDataSource;
    UserCdsAdmUsers_id: TIntegerField;
    UserCdsUsername: TStringField;
    Panel9: TPanel;
    cxNumberRangeCkb: TcxCheckBox;
    cxLabel5: TcxLabel;
    cxFromTextEdit: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxToTextEdit: TcxTextEdit;
    Panel12: TPanel;
    CompaniesCdsCompanies_id: TIntegerField;
    CompaniesCdsCompany: TStringField;
    OfficesCdsOffices_id: TIntegerField;
    OfficesCdsOffices: TStringField;
    OfficesCdsCompanies_id: TIntegerField;
    DivisionsCdsDivisions_id: TIntegerField;
    DivisionsCdsDivision: TStringField;
    DivisionsCdsCompanies_id: TIntegerField;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesCdsState: TStringField;
    OrgCdsAddressbook_id: TIntegerField;
    OrgCdsOrganisation: TStringField;
    OrgCdsCity: TStringField;
    OrgCdsCities_id: TIntegerField;
    OrgCdsContact: TStringField;
    OrgCdsPostalCode: TStringField;
    cxLabelYear: TcxLabel;
    cxYearEdit: TcxTextEdit;
    UserCdsuid: TStringField;
    cxButtonOK: TcxButton;
    cxButtonCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxMonthsLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCompanyLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxOfficeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxDivisionLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxOrganisationLCMBPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxUserLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure SetFormDimensions;
    procedure SetDefaults;
  public
    { Public declarations }
  end;

var
  ReportParamForm: TReportParamForm;
  ReportParamForm_FromDate: TDateTime;
  ReportParamForm_ToDate: TDateTime;
  ReportParamForm_Divisions_id: integer;
  ReportParamForm_Division: string;
  ReportParamForm_Months_id: integer;
  ReportParamForm_Month: string;
  ReportParamForm_Companies_id: integer;
  ReportParamForm_Company: string;
  ReportParamForm_Offices_id: integer;
  ReportParamForm_Office: string;
  ReportParamForm_Cities_id: integer;
  ReportParamForm_City: string;
  ReportParamForm_Addressbook_id: integer;
  ReportParamForm_Organisation: string;
  ReportParamForm_Year: integer;
  ReportParamForm_AdmUsers_id: integer;
  ReportParamForm_Username: string;
  ReportParamForm_FromNumber: integer;
  ReportParamForm_ToNumber: integer;

  ReportParamForm_Visible: array[0..8] of integer;
  ReportParamForm_EditCkb: array[0..8] of integer;
  ReportParamForm_UserDefined: array[0..8] of integer;

  ReportParamForm_Visible_str: string;
  ReportParamForm_EditCkb_str: string;
  ReportParamForm_UserDefined_str: string;

  ReportParam_FormWidth: integer;
  ReportParam_FormHeight: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TReportParamForm.FormCreate(Sender: TObject);
begin
  ActivateInCustom;
  SetDefaults;
end;

procedure TReportParamForm.ActivateInCustom;
begin
  ReportParam_FormWidth := 700;
  ReportParam_FormHeight := 446;

  SetFormDimensions;

end;

procedure TReportParamForm.SetFormDimensions;
begin
  Width := ReportParam_FormWidth;
  Height := ReportParam_FormHeight;
end;


procedure TReportParamForm.FormResize(Sender: TObject);
begin
  SetFormDimensions;
end;

procedure TReportParamForm.SetDefaults;
var
  i: integer;
begin

  i := 0;
  while (i <= 8) do
    begin
      ReportParamForm_Visible[i] := StrToInt(Copy(ReportParamForm_Visible_str,i+1,1));
      ReportParamForm_EditCkb[i] := StrToInt(Copy(ReportParamForm_EditCkb_str,i+1,1));
      ReportParamForm_UserDefined[i] := StrToInt(Copy(ReportParamForm_UserDefined_str,i+1,1));
      i := i+1;
    end;

  // Date Range
  if ReportParamForm_Visible[0] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel1.Height;
      Panel1.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[0] = 1 then
    begin
      cxDateRangeCkb.Checked := true;
      cxFromDateEdit.Date := ReportParamForm_FromDate;
      cxToDateEdit.Date := ReportParamForm_ToDate;
      if ReportParamForm_EditCkb[0] = 0 then
        cxDateRangeCkb.Properties.ReadOnly := true;
    end;

  // Company
  if ReportParamForm_Visible[1] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel2.Height;
      Panel2.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[1] = 1 then
    begin
      CompaniesCds.Open;
      cxCompanyCkb.Checked := true;
      cxCompanyLCMB.EditValue := ReportParamForm_Companies_id;
      if ReportParamForm_EditCkb[1] = 0 then
        cxCompanyCkb.Properties.ReadOnly := true;
    end;

  // Office
  if ReportParamForm_Visible[2] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel3.Height;
      Panel3.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[2] = 1 then
    begin
      OfficesCds.Open;
      cxOfficeCkb.Checked := true;
      cxOfficeLCMB.EditValue := ReportParamForm_Offices_id;
      if ReportParamForm_EditCkb[2] = 0 then
        cxOfficeCkb.Properties.ReadOnly := true;
    end;

  // Division
  if ReportParamForm_Visible[3] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel4.Height;
      Panel4.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[3] = 1 then
    begin
      DivisionsCds.Open;
      cxDivisionCkb.Checked := true;
      cxDivisionLCMB.EditValue := ReportParamForm_Divisions_id;
      if ReportParamForm_EditCkb[3] = 0 then
        cxDivisionCkb.Properties.ReadOnly := true;
    end;

  // Cities
  if ReportParamForm_Visible[4] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel5.Height;
      Panel5.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[4] = 1 then
    begin
      CitiesCds.Open;
      cxCityCkb.Checked := true;
      cxCityLCMB.EditValue := ReportParamForm_Cities_id;
      if ReportParamForm_EditCkb[4] = 0 then
        cxCityCkb.Properties.ReadOnly := true;
    end;

  // Organisation
  if ReportParamForm_Visible[5] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel6.Height;
      Panel6.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[5] = 1 then
    begin
      OrgCds.Open;
      cxOrganisationCkb.Checked := true;
      cxOrganisationLCMB.EditValue := ReportParamForm_Addressbook_id;
      if ReportParamForm_EditCkb[5] = 0 then
        cxOrganisationCkb.Properties.ReadOnly := true;
    end;


  // Month
  if ReportParamForm_Visible[6] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel7.Height;
      Panel7.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[6] = 1 then
    begin
      MonthsCds.Open;
      cxMonthCkb.Checked := true;
      cxMonthsLCMB.EditValue := ReportParamForm_Months_id;
      if ReportParamForm_EditCkb[6] = 0 then
        cxMonthCkb.Properties.ReadOnly := true;
    end;

  // Users
  if ReportParamForm_Visible[7] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel8.Height;
      Panel8.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[7] = 1 then
    begin
      UserCds.Open;
      cxUserCkb.Checked := true;
      cxUserLCMB.EditValue := ReportParamForm_AdmUsers_id;
      if ReportParamForm_EditCkb[7] = 0 then
        cxUserCkb.Properties.ReadOnly := true;
    end;

  // Number Range
  if ReportParamForm_Visible[8] = 0 then
    begin
      ReportParam_FormHeight := ReportParam_FormHeight - Panel9.Height;
      Panel9.Visible := false;
      SetFormDimensions;
    end
  else if ReportParamForm_Visible[8] = 1 then
    begin
      cxNumberRangeCkb.Checked := true;
      cxFromTextEdit.Text := IntToStr(ReportParamForm_FromNumber);
      cxToTextEdit.Text := IntToStr(ReportParamForm_ToNumber);
      if ReportParamForm_EditCkb[8] = 0 then
        cxNumberRangeCkb.Properties.ReadOnly := true;
    end;


end;

procedure TReportParamForm.cxMonthsLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxMonthsLCMB.EditValue <> null then
    MonthsCds.Locate('Months_id', cxMonthsLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxCompanyLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxCompanyLCMB.EditValue <> null then
    CompaniesCds.Locate('Companies_id', cxCompanyLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxOfficeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxOfficeLCMB.EditValue <> null then
    OfficesCds.Locate('Offices_id', cxOfficeLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxDivisionLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxDivisionLCMB.EditValue <> null then
    DivisionsCds.Locate('Divisions_id', cxDivisionLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxCityLCMB.EditValue <> null then
    CitiesCds.Locate('Cities_id', cxCityLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxOrganisationLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxOrganisationLCMB.EditValue <> null then
    OrgCds.Locate('Addressbook_id', cxOrganisationLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxUserLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxUserLCMB.EditValue <> null then
    UserCds.Locate('Addressbook_id', cxUserLCMB.EditValue,[]);
end;

procedure TReportParamForm.cxButtonOKClick(Sender: TObject);
begin

  // Date Range
  if ReportParamForm_Visible[0] = 1 then
    begin
      ReportParamForm_FromDate := cxFromDateEdit.Date;
      ReportParamForm_ToDate := cxToDateEdit.Date;
    end;

  // Company
  if ReportParamForm_Visible[1] = 1 then
    begin
      if (cxCompanyCkb.Checked) and (cxCompanyLCMB.EditValue = null) then
        raise exception.create ('Please enter the Company');
      ReportParamForm_Companies_id := cxCompanyLCMB.EditValue;
    end;

  // Office
  if ReportParamForm_Visible[2] = 1 then
    begin
      if (cxOfficeCkb.Checked) and (cxOfficeLCMB.EditValue = null) then
        raise exception.create ('Please enter the Office');
      ReportParamForm_Offices_id := cxOfficeLCMB.EditValue;
    end;

  // Division
  if ReportParamForm_Visible[3] = 1 then
    begin
      if (cxDivisionCkb.Checked) and (cxDivisionLCMB.EditValue = null) then
        raise exception.create ('Please enter the Division');
      ReportParamForm_Divisions_id := cxDivisionLCMB.EditValue;
    end;

  // City
  if ReportParamForm_Visible[4] = 1 then
    begin
      if (cxCityCkb.Checked) and (cxCityLCMB.EditValue = null) then
        raise exception.create ('Please enter the City');
      ReportParamForm_Cities_id := cxCityLCMB.EditValue;
    end;

  // Organisation
  if ReportParamForm_Visible[5] = 1 then
    begin
      if (cxOrganisationCkb.Checked) and (cxOrganisationLCMB.EditValue = null) then
        raise exception.create ('Please enter the Organisation');
      ReportParamForm_Addressbook_id := cxOrganisationLCMB.EditValue;
    end;

  // Month
  if ReportParamForm_Visible[6] = 1 then
    begin
      if (cxMonthCkb.Checked) and (cxMonthsLCMB.EditValue = null) then
        raise exception.create ('Please enter the Month');
      ReportParamForm_Months_id := cxMonthsLCMB.EditValue;
    end;

  // Users
  if ReportParamForm_Visible[7] = 1 then
    begin
      if (cxUserCkb.Checked) and (cxUserLCMB.EditValue = null) then
        raise exception.create ('Please enter the User');
      ReportParamForm_AdmUsers_id := cxUserLCMB.EditValue;
    end;

  // Number Range
  if ReportParamForm_Visible[8] = 1 then
    begin
      if (cxNumberRangeCkb.Checked) and ((trim(cxFromTextEdit.Text) = '') or (trim(cxToTextEdit.Text) = '')) then
        raise exception.create ('Please enter the Number Range');
      ReportParamForm_FromNumber := StrToInt(cxFromTextEdit.Text);
      ReportParamForm_ToNumber := StrToInt(cxToTextEdit.Text);
    end;

end;

end.
