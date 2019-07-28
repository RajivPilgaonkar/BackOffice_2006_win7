unit ReportParameterFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, FMTBcd, DB, DBClient, Provider, SqlExpr, cxGraphics,
  Menus, dxSkinsCore, dxSkinsDefaultPainters;

type
  TReportParameterForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    cxOkButton: TcxButton;
    cxCancelButton: TcxButton;
    cxDateCkb: TcxCheckBox;
    DateRangeLabel: TLabel;
    FromDateLabel: TLabel;
    ToDateLabel: TLabel;
    cxCompanyCkb: TcxCheckBox;
    CompanyLabel: TLabel;
    cxOfficeCkb: TcxCheckBox;
    OfficeLabel: TLabel;
    cxDivisionCkb: TcxCheckBox;
    DivisionLabel: TLabel;
    cxCityCkb: TcxCheckBox;
    CityLabel: TLabel;
    cxOrganisationCkb: TcxCheckBox;
    OrganisationLabel: TLabel;
    cxMonthCkb: TcxCheckBox;
    MonthLabel: TLabel;
    Label7: TLabel;
    cxCompanyLCMB: TcxLookupComboBox;
    cxOfficeLCMB: TcxLookupComboBox;
    cxDivisionLCMB: TcxLookupComboBox;
    cxCityLCMB: TcxLookupComboBox;
    cxOrganisationLCMB: TcxLookupComboBox;
    cxMonthLCMB: TcxLookupComboBox;
    OrgSds: TSQLDataSet;
    OrgDsp: TDataSetProvider;
    OrgCds: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    OrgDS: TDataSource;
    OrgCdsCities_id: TIntegerField;
    OrgCdsContact: TStringField;
    Panel5: TPanel;
    NumberRangeLabel: TLabel;
    cxNumberRangeCkb: TcxCheckBox;
    FromLabel: TLabel;
    ToLabel: TLabel;
    YearEdit: TcxMaskEdit;
    cxCashChk: TcxCheckBox;
    CashLbl: TLabel;
    FromEdit: TcxMaskEdit;
    ToEdit: TcxMaskEdit;
    VouNoEdit: TcxMaskEdit;
    MonthSds: TSQLDataSet;
    MonthDsp: TDataSetProvider;
    MonthCds: TClientDataSet;
    MonthDS: TDataSource;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxOkButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure InitializeParameters(Sender: TObject);
    function ValidateInputs(Sender: TObject) : String;
    procedure cxCompanyLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
   MAXARRAYLMT = 8;
   DATERANGE_IDX = 1;
   COMPANY_IDX = 2;
   OFFICE_IDX = 3;
   DIVISION_IDX = 4;
   CITY_IDX = 5;
   ORG_IDX = 6;
   MONTH_IDX = 7;
   NUMBERRANGE_IDX = 8;

var
  ReportParameterForm: TReportParameterForm;

  // inputstr is a string of 6 charcter each character resembles 1 panel.
  // 0 value means NOT REQD, 1 means REQD, >1 means COMPULSORY input
  _inputstr: String;  // sample '0100200000'

  // Default Values
  _def1, _def2: Array[1..MAXARRAYLMT] of variant;

  // field names
  _fieldstr : Array[1..MAXARRAYLMT] of string;

  // number of edit boxes
  _Type : Array[1..MAXARRAYLMT] of integer;
  _SubType : Array[1..MAXARRAYLMT] of integer;

  // sign type (<=, =, >=)
  _SignType : Array[1..MAXARRAYLMT] of integer;

  // result values
  _ret1, _ret2: Array[1..MAXARRAYLMT] of variant;
  _outsqlstr: String;

  // Components
  _CaptionArray : Array[1..MAXARRAYLMT] of TLabel;
  _CheckBoxArray : Array[1..MAXARRAYLMT] of TcxCheckBox ;
  _PanelArray : Array[1..MAXARRAYLMT] of TPanel;
  _Label1Array, _Label2Array : Array[1..MAXARRAYLMT] of TLabel;


implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TReportParameterForm.FormCreate(Sender: TObject);
var
  Year,Month,Day: Word;
begin

  // Date Range
  _CaptionArray[DATERANGE_IDX] := DateRangeLabel;
  _CheckBoxArray[DATERANGE_IDX] := cxDateCkb;
  _PanelArray[DATERANGE_IDX] := Panel1;
  _Type[DATERANGE_IDX] := 2;
  _SubType[DATERANGE_IDX] := 1;
  _SignType[DATERANGE_IDX] := 1;
  _Label1Array[DATERANGE_IDX] := FromDateLabel;
  _Label2Array[DATERANGE_IDX] := ToDateLabel;
  DecodeDate(Date, Year, Month, Day);
  if Month <= 3 then
    Year := Year - 1;

    // Companies
  _CaptionArray[COMPANY_IDX] := CompanyLabel;
  _CheckBoxArray[COMPANY_IDX] := cxCompanyCkb;
  _PanelArray[COMPANY_IDX] := Panel2;
  _Type[COMPANY_IDX] := 1;
  _SubType[COMPANY_IDX] := 1;
  _SignType[COMPANY_IDX] := 1;

    // Offices
  _CaptionArray[OFFICE_IDX] := OfficeLabel;
  _CheckBoxArray[OFFICE_IDX] := cxOfficeCkb;
  _PanelArray[OFFICE_IDX] := Panel10;
  _Type[OFFICE_IDX] := 1;
  _SubType[OFFICE_IDX] := 1;
  _SignType[OFFICE_IDX] := 1;

    // Divisions
  _CaptionArray[DIVISION_IDX] := DivisionLabel;
  _CheckBoxArray[DIVISION_IDX] := cxDivisionCkb;
  _PanelArray[DIVISION_IDX] := Panel9;
  _Type[DIVISION_IDX] := 1;
  _SubType[DIVISION_IDX] := 1;
  _SignType[DIVISION_IDX] := 1;

    // City
  _CaptionArray[CITY_IDX] := CityLabel;
  _CheckBoxArray[CITY_IDX] := cxCityCkb;
  _PanelArray[CITY_IDX] := Panel8;
  _Type[CITY_IDX] := 1;
  _SubType[CITY_IDX] := 1;
  _SignType[CITY_IDX] := 1;

    // Org
  _CaptionArray[ORG_IDX] := OrganisationLabel;
  _CheckBoxArray[ORG_IDX] := cxOrganisationCkb;
  _PanelArray[ORG_IDX] := Panel7;
  _Type[ORG_IDX] := 1;
  _SubType[ORG_IDX] := 1;
  _SignType[ORG_IDX] := 1;

    // Month
  _CaptionArray[MONTH_IDX] := MonthLabel;
  _CheckBoxArray[MONTH_IDX] := cxMonthCkb;
  _PanelArray[MONTH_IDX] := Panel4;
  _Type[MONTH_IDX] := 1;
  _SubType[MONTH_IDX] := 1;
  _SignType[MONTH_IDX] := 1;

  // Number Range
  _CaptionArray[NUMBERRANGE_IDX] := NumberRangeLabel;
  _CheckBoxArray[NUMBERRANGE_IDX] := cxNumberRangeCkb;
  _PanelArray[NUMBERRANGE_IDX] := Panel5;
  _Type[NUMBERRANGE_IDX] := 3;
  _SubType[NUMBERRANGE_IDX] := 1;
  _SignType[NUMBERRANGE_IDX] := 1;
  _Label1Array[NUMBERRANGE_IDX] := FromLabel;
  _Label2Array[NUMBERRANGE_IDX] := ToLabel;

  InitializeParameters(Self);

end;

procedure TReportParameterForm.FormDestroy(Sender: TObject);
begin
  ReportParameterForm := nil;
end;

procedure TReportParameterForm.InitializeParameters(Sender: TObject);
var
  cnt: Integer;
  outval: Integer;
begin

  // set possible options
  for cnt := 1 To MAXARRAYLMT do
    begin
      outval := StrToInt(Copy(_inputstr,cnt,1));
      case outval of
        0 : begin
              _PanelArray[cnt].Visible := False;
              Self.Height := Self.Height - 41;
            end;
        1 : begin
              _PanelArray[cnt].Visible := True;
              _CheckBoxArray[cnt].Checked := False;
              _CheckBoxArray[cnt].Enabled := True;
              _CheckBoxArray[cnt].Visible := True;
            end;
        2 : begin
              _PanelArray[cnt].Visible := True;
              _CheckBoxArray[cnt].Checked := True;
              _CheckBoxArray[cnt].Enabled := False;
              _CheckBoxArray[cnt].Visible := True;
            end;
      end;
      _ret1[cnt] := '';
      _ret2[cnt] := '';

    if VarIsNull(_fieldstr[cnt]) then
      _fieldstr[cnt] := '';

  end;

  // set default values
  for cnt := 1 To MAXARRAYLMT do
  begin
    if VarIsNull(_def1[cnt]) then  _def1[cnt] := '';
    if VarIsNull(_def2[cnt]) then  _def2[cnt] := '';
    case cnt of
      1 : begin
            if (_SubType[cnt] = 1) then
              begin
                cxDateEdit1.Date := VarToDateTime(_def1[cnt]);
                cxDateEdit2.Date := VarToDateTime(_def2[cnt]);
              end
            else if (_SubType[cnt] = 2) then
              cxDateEdit1.Date := VarToDateTime(_def1[cnt])
            else if (_SubType[cnt] = 3) then
              cxDateEdit2.Date := VarToDateTime(_def2[cnt]);
          end;
      2 : begin
            BackOfficeDataModule.CompanyCds.Open;
            cxCompanyLCMB.EditValue := BackOfficeDataModule.CompanyCdsCompanies_id.Value;
          end;
      3 : begin
            BackOfficeDataModule.OfficeCds.Open;
            cxOfficeLCMB.EditValue := BackOfficeDataModule.OfficeCdsOffices_id.Value;
          end;
      4 : begin
            BackOfficeDataModule.DivisionCds.Open;
            cxDivisionLCMB.EditValue := BackOfficeDataModule.DivisionCdsDivisions_id.Value;
          end;
      5 : begin
            BackOfficeDataModule.CitiesCds.Open;
            cxCityLCMB.EditValue := BackOfficeDataModule.CitiesCdsCities_id.Value;
          end;
      6 : begin
            BackOfficeDataModule.OrgCds.Open;
            cxOrganisationLCMB.EditValue := OrgCds['Addressbook_id'];
          end;
      7 : begin
            MonthCds.Open;
            cxMonthLCMB.EditValue := MonthCds['Months_id'];
          end;
      8 : begin
            if (_SubType[cnt] = 1) then
              begin
                FromEdit.Text := VarToStr(_def1[cnt]);
                ToEdit.Text := VarToStr(_def2[cnt]);
              end
            else if (_SubType[cnt] = 2) then
                FromEdit.Text := VarToStr(_def1[cnt])
            else if (_SubType[cnt] = 3) then
                ToEdit.Text := VarToStr(_def2[cnt]);
          end;
    end;
  end;
end;



procedure TReportParameterForm.cxOkButtonClick(Sender: TObject);
begin
    _outsqlstr := validateinputs(self);
end;

function TReportParameterForm.validateinputs(Sender: TObject) : String;
var
  cnt: Integer;
  outstr: String;
begin
  for cnt := 1 To MAXARRAYLMT do
  begin

    if _CheckBoxArray[cnt].Checked then
      begin
        case cnt of
           1: begin
                if (_SubType[cnt] = 1) and (VarIsNull(cxDateEdit1.Date) OR VarISNull(cxDateEdit2.Date)) then
                  raise Exception.Create('Incorrect Start/End Dates !!');
                if (_SubType[cnt] = 2) and (VarIsNull(cxDateEdit1.Date)) then
                  raise Exception.Create('Incorrect Date !!');
                if (_SubType[cnt] = 3) and (VarIsNull(cxDateEdit2.Date)) then
                  raise Exception.Create('Incorrect Date !!');

                if (_SubType[cnt] = 1) then
                  begin
                    _ret1[cnt] := FormatDateTime('dd/mm/yyyy',cxDateEdit1.Date);
                    _ret2[cnt] := FormatDateTime('dd/mm/yyyy',cxDateEdit2.Date);
                    outstr := outstr + ' AND (' + _fieldstr[cnt] + ' BETWEEN ''' +
                      FormatDateTime('mm/dd/yyyy',cxDateEdit1.Date) + ''' AND ''' +
                      FormatDateTime('mm/dd/yyyy',cxDateEdit2.Date) + ''') ';
                  end
                else if (_SubType[cnt] = 2) then
                  begin
                    _ret1[cnt] := FormatDateTime('dd/mm/yyyy',cxDateEdit1.Date);
                    if (_SignType[cnt] = 2) then
                      outstr := outstr + ' AND (' + _fieldstr[cnt] + ' <= ''' +
                        FormatDateTime('mm/dd/yyyy',cxDateEdit1.Date) + ''') '
                    else if (_SignType[cnt] = 3) then
                      outstr := outstr + ' AND (' + _fieldstr[cnt] + ' >= ''' +
                        FormatDateTime('mm/dd/yyyy',cxDateEdit1.Date) + ''') '
                    else if (_SignType[cnt] = 4) then
                      outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ''' +
                        FormatDateTime('mm/dd/yyyy',cxDateEdit1.Date) + ''') ';
                  end;

              end;

           2: begin

                if (cxCompanyLcmb.Editvalue = null) then
                  raise Exception.Create('Please Choose a Company !!');

                _ret1[cnt] := cxCompanyLcmb.Editvalue;
                outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ' +
                  IntToStr(cxCompanyLcmb.Editvalue) + ') ';

              end;

           3: begin

                if (cxOfficeLcmb.Editvalue = null) then
                  raise Exception.Create('Please Choose an Office !!');

                _ret1[cnt] := cxOfficeLcmb.Editvalue;
                outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ' +
                  IntToStr(cxOfficeLcmb.Editvalue) + ') ';

              end;

           4: begin

                if (cxDivisionLcmb.Editvalue = null) then
                  raise Exception.Create('Please Choose a Division !!');

                _ret1[cnt] := cxDivisionLcmb.Editvalue;
                outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ' +
                  IntToStr(cxDivisionLcmb.Editvalue) + ') ';

              end;

           5: begin

                if (cxCityLcmb.Editvalue = null) then
                  raise Exception.Create('Please Choose a City !!');

                _ret1[cnt] := cxCityLcmb.Editvalue;
                outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ' +
                  IntToStr(cxCityLcmb.Editvalue) + ') ';

              end;

           6: begin

                if (cxOrganisationLcmb.Editvalue = null) then
                  raise Exception.Create('Please Choose an Organisation !!');

                _ret1[cnt] := cxOrganisationLcmb.Editvalue;
                outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ' +
                  IntToStr(cxOrganisationLcmb.Editvalue) + ') ';

              end;


           8: begin
                if (_SubType[cnt] = 1) and ((Trim(FromEdit.Text)= '') OR (Trim(ToEdit.Text)='') ) then
                  raise Exception.Create('Incorrect Start/End Numbers !!');
                if (_SubType[cnt] = 2) and (Trim(FromEdit.Text)= '') then
                  raise Exception.Create('Incorrect Start Number !!');
                if (_SubType[cnt] = 3) and (Trim(ToEdit.Text)= '' ) then
                  raise Exception.Create('Incorrect End Number !!');

                if (_SubType[cnt] = 1) then
                  begin
                    _ret1[cnt] := Trim(FromEdit.Text);
                    _ret2[cnt] := Trim(ToEdit.Text);
                    outstr := outstr + ' AND (' + _fieldstr[cnt] + ' BETWEEN ' +
                      Trim(FromEdit.Text) + ' AND ' +
                      Trim(ToEdit.Text) + ') ';
                  end
                else if (_SubType[cnt] = 2) then
                  begin
                    _ret1[cnt] := Trim(FromEdit.Text);
                    if (_SignType[cnt] = 2) then
                      outstr := outstr + ' AND (' + _fieldstr[cnt] + ' <= ' +
                          Trim(FromEdit.Text) + ') '
                    else if (_SignType[cnt] = 3) then
                      outstr := outstr + ' AND (' + _fieldstr[cnt] + ' >= ' +
                          Trim(FromEdit.Text) + ') '
                    else if (_SignType[cnt] = 4) then
                      outstr := outstr + ' AND (' + _fieldstr[cnt] + ' = ' +
                          Trim(FromEdit.Text) + ') '
                  end;

              end;

        end;

      end;

  end;

  Result := outstr;

end;


procedure TReportParameterForm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13  then                        { if it''s an enter key }
    begin
      Perform(WM_NEXTDLGCTL, 0, 0);            { move to next control }
    end;

end;

procedure TReportParameterForm.cxCompanyLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin


  try
    if (cxCompanyLCMB.EditValue <> null) and (BackOfficeDataModule.OfficeCds.State = dsInactive) then
      begin
        BackOfficeDataModule.OfficeCds.Filtered := True;
        BackOfficeDataModule.OfficeCds.Filter := 'Companies_id = ' + IntToStr(cxCompanyLCMB.EditValue);

        BackOfficeDataModule.DivisionCds.Filtered := True;
        BackOfficeDataModule.DivisionCds.Filter := 'Companies_id = ' + IntToStr(cxCompanyLCMB.EditValue);


        //BackOfficeDataModule.OfficeCds.Locate('companies_id',CxCompanyLCMB.EditValue,[]);
      end
    else if (cxCompanyLCMB.EditValue <> null) and (BackOfficeDataModule.OfficeCds.State <> dsInactive) then
      begin
        BackOfficeDataModule.OfficeCds.Close;
        BackOfficeDataModule.OfficeCds.Filtered := True;
        BackOfficeDataModule.OfficeCds.Filter := 'Companies_id = ' + IntToStr(cxCompanyLCMB.EditValue);
        BackOfficeDataModule.OfficeCds.Open;

        BackOfficeDataModule.DivisionCds.Close;
        BackOfficeDataModule.DivisionCds.Filtered := True;
        BackOfficeDataModule.DivisionCds.Filter := 'Companies_id = ' + IntToStr(cxCompanyLCMB.EditValue);
        BackOfficeDataModule.DivisionCds.Open;

        //BackOfficeDataModule.OfficeCds.Locate('companies_id',CxCompanyLCMB.EditValue,[]);
      end

  except
  end;


end;

end.
