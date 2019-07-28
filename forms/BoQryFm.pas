unit BoQryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask, Buttons, FMTBcd,
  DB, Provider, DBClient, SqlExpr, dxSkinsCore, dxSkinsDefaultPainters,
  cxLabel, cxControls, cxContainer, cxEdit, cxGroupBox, cxCheckBox;

type
  TBoQryForm = class(TForm)
    PanelTop: TPanel;
    PanelBottom: TPanel;
    ToursPnl: TcxGroupBox;
    CityPnl: TcxGroupBox;
    OrgPnl: TcxGroupBox;
    MastersPnl: TcxGroupBox;
    MonthYrPnl: TcxGroupBox;
    DivisionPnl: TcxGroupBox;
    OfficePnl: TcxGroupBox;
    CompanyPnl: TcxGroupBox;
    DateRangePnl: TcxGroupBox;
    DateChk: TcxCheckBox;
    CompanyChk: TcxCheckBox;
    OfficeChk: TcxCheckBox;
    DivisionChk: TcxCheckBox;
    CityChk: TcxCheckBox;
    OrgChk: TcxCheckBox;
    TourCodeChk: TcxCheckBox;
    TourFamChk: TcxCheckBox;
    MonthChk: TcxCheckBox;
    FromDateEdit: TDateTimePicker;
    ToDateEdit: TDateTimePicker;
    Label1: TcxLabel;
    Label2: TcxLabel;
    CompLookUpCmb: TDBLookupComboBox;
    OfficeLookUpCmb: TDBLookupComboBox;
    DivisionLookUpCmb: TDBLookupComboBox;
    CityLookUpCmb: TDBLookupComboBox;
    OrgLookUpCmb: TDBLookupComboBox;
    TourCodeLookUpCmb: TDBLookupComboBox;
    TourFamLookUpCmb: TDBLookupComboBox;
    Label3: TcxLabel;
    Label4: TcxLabel;
    YearEdit: TMaskEdit;
    Label5: TcxLabel;
    Label6: TcxLabel;
    DepDtTCdLookUpCmb: TDBLookupComboBox;
    DepDtTFamLookUpCmb: TDBLookupComboBox;
    ShowTourCodesChk: TcxCheckBox;
    ShowAllTourFamChk: TcxCheckBox;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    CompDS: TDataSource;
    CompQry: TSQLQuery;
    CompCDS: TClientDataSet;
    CompDSP: TDataSetProvider;
    CompCDSCompanies_id: TIntegerField;
    CompCDSName: TStringField;
    OfficeCDS: TClientDataSet;
    OfficeDS: TDataSource;
    OfficeQry: TSQLQuery;
    OfficeDSP: TDataSetProvider;
    DivsionCDS: TClientDataSet;
    DivsionDS: TDataSource;
    DivsionQry: TSQLQuery;
    DivsionDSP: TDataSetProvider;
    CityCDS: TClientDataSet;
    CityDS: TDataSource;
    CityQry: TSQLQuery;
    CityDSP: TDataSetProvider;
    OrgCDS: TClientDataSet;
    OrgDS: TDataSource;
    OrgQry: TSQLQuery;
    OrgDSP: TDataSetProvider;
    DepDtCDS: TClientDataSet;
    DepDtDS: TDataSource;
    DepDtQry: TSQLQuery;
    DepDtDSP: TDataSetProvider;
    MasterDepdtCDS: TClientDataSet;
    MasterDepdtDS: TDataSource;
    MasterDepdtQry: TSQLQuery;
    MasterDepdtDSP: TDataSetProvider;
    MasterDS: TDataSource;
    MasterCDS: TClientDataSet;
    MasterQRY: TSQLQuery;
    MasterDSP: TDataSetProvider;
    OfficeCDSOffices_id: TIntegerField;
    OfficeCDSOffices: TStringField;
    DivsionCDSDivisions_id: TIntegerField;
    DivsionCDSDivision: TStringField;
    CityCDSCities_id: TIntegerField;
    CityCDSCityCode: TStringField;
    CityCDSCity: TStringField;
    OrgCDSAddressBook_id: TIntegerField;
    OrgCDSOrganisation: TStringField;
    TourCodeDS: TDataSource;
    TourCodeQry: TSQLQuery;
    TourCodeCDS: TClientDataSet;
    TourCodeDSP: TDataSetProvider;
    TourCodeCDSTourCodes_id: TIntegerField;
    TourCodeCDSTourCode: TStringField;
    DepDtCDSTourDepartureDates_id: TIntegerField;
    DepDtCDSTourDate: TSQLTimeStampField;
    DepDtCDSTourCodes_id: TIntegerField;
    MasterCDSMasters_id: TIntegerField;
    MasterCDSMasterCode: TStringField;
    MasterCDSName: TStringField;
    MasterDepdtCDSMasters_id: TIntegerField;
    MasterDepdtCDSTourDate: TSQLTimeStampField;
    MonthCmb: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Initialize(gb_visible: string);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BoQryForm: TBoQryForm;
  _BoQry_Code, _BoQry_FilterStr: string;
  _BoQry_Company_id,_BoQry_Office_id, _BoQry_Division_id,_BoQry_City_id: Integer;
  _BoQry_Org_id,_BoQry_TourCode_id,_BoQry_TourFamily_id: Integer;
  _BoQryForm_OrgCategory: string;

implementation

uses BackOfficeDM;

var
  GB_array: array[0..8] of TControl;



{$R *.dfm}

procedure TBoQryForm.Initialize(gb_visible: string);
var
  i: integer;
  f_top: integer;
begin
  f_top := 0;

  for i := 0 to 8 do
    begin

      // Search for 0
      if Pos(IntToStr(i),gb_visible) > 0 then
        begin
          gb_array[i].Top := f_Top;
          f_Top := f_top + gb_array[i].Height + 2;
        end
      else
        begin
          gb_array[i].Visible := False;
        end;

    end;

    Height := f_Top + 80;
end;

procedure TBoQryForm.FormCreate(Sender: TObject);
begin
  GB_array[0] := DateRangePnl;
  GB_array[1] := CompanyPnl;
  GB_array[2] := OfficePnl;
  GB_array[3] := DivisionPnl;
  GB_array[4] := CityPnl;
  GB_array[5] := OrgPnl;
  GB_array[6] := ToursPnl;
  GB_array[7] := MastersPnl;
  GB_array[8] := MonthYrPnl;


  //*** Company
  if Pos('1',_BoQry_Code) > 0 then
    CompCDS.Open;

  //*** Office
  if Pos('2',_BoQry_Code) > 0 then
    OfficeCDS.Open;

  //*** Division
  if Pos('3',_BoQry_Code) > 0 then
    DivsionCDS.Open;

  //*** City
  if Pos('4',_BoQry_Code) > 0 then
    CityCDS.Open;

  //*** Organisation
  if Pos('5',_BoQry_Code) > 0 then
    OrgCDS.Open;

  //*** Tour Codes
  if Pos('6',_BoQry_Code) > 0 then
    begin
      TourCodeCDS.Open;
      DepDtCDS.Open;
    end;

  //*** Tour Family Codes
  if Pos('7',_BoQry_Code) > 0 then
    begin
      MasterCDS.Open;
      MasterDepdtCDS.Open;
    end;

   MonthCmb.Text := MonthCmb.Items[0];

end;

procedure TBoQryForm.BitBtn1Click(Sender: TObject);
begin
  if CompanyChk.Checked then
    _BoQry_Company_id := CompLookUpCmb.KeyValue;

  if OfficeChk.Checked then
    _BoQry_Office_id := OfficeLookUpCmb.KeyValue;

  if DivisionChk.Checked then
    _BoQry_Division_id := DivisionLookUpCmb.KeyValue;

  if CityChk.Checked then
    _BoQry_City_id := CityLookUpCmb.KeyValue;

  if OrgChk.Checked then
    _BoQry_Org_id := OrgLookUpCmb.KeyValue;

  if TourCodeChk.Checked then
    _BoQry_TourCode_id := TourCodeLookUpCmb.KeyValue;

  if TourFamChk.Checked then
    _BoQry_TourFamily_id := TourFamLookUpCmb.KeyValue;

end;

end.
