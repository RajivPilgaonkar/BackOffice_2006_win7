unit TourFamilyFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, Menus, SqlExpr, DB, DBClient,
  Provider, StdCtrls, Grids, DBGrids, DBCtrls, ExtCtrls, Buttons;

type
  TTourFamilyForm = class(TCustomMasterGridForm)
    AgentCDS: TClientDataSet;
    AgentDSP: TDataSetProvider;
    AgentQry: TSQLQuery;
    AgentQryAddressBook_id: TIntegerField;
    AgentQryOrganisation: TStringField;
    AgentCDSAddressBook_id: TIntegerField;
    AgentCDSOrganisation: TStringField;
    MasterCDSmastercode: TStringField;
    MasterCDSname: TStringField;
    MasterCDSfit: TBooleanField;
    MasterCDSnoofdays: TIntegerField;
    MasterCDStailormade: TBooleanField;
    MasterCDSactive: TBooleanField;
    MasterCDSmasters_id: TIntegerField;
    MasterCDSaddressbook_id: TIntegerField;
    MasterCDScompanies_id: TIntegerField;
    MasterCDSAgentLookUp: TStringField;
    Panel1: TPanel;
    TailorMadeChk: TCheckBox;
    ActiveChk: TCheckBox;
    CalSBtn: TSpeedButton;
    DepDateSBtn: TSpeedButton;
    ToursSBtn: TSpeedButton;
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FilterTours;
    procedure ActiveChkClick(Sender: TObject);
    procedure TailorMadeChkClick(Sender: TObject);
    procedure CalSBtnClick(Sender: TObject);
    procedure ToursSBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure DepDateSBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TourFamilyForm: TTourFamilyForm;
  _TourFamilyForm_Level : Integer;
implementation

uses BackOfficeDM, Math, TourCalendersFm, MainFm, ToursFm,
  TourDeparturesFm;

{$R *.dfm}

procedure TTourFamilyForm.FilterTours;
begin
  if TailorMadeChk.Checked then
    begin
      if ActiveChk.Checked then
        MasterCDS.Filter := '(TailorMade) AND Active'
      else
        MasterCDS.Filter := '(TailorMade) AND Not Active';
    end
  else
    begin
      if ActiveChk.Checked then
        MasterCDS.Filter := '(Not TailorMade) AND Active'
      else
        MasterCDS.Filter := '(Not TailorMade) AND Not Active';
    end;
  MasterCDS.Refresh;
end;

procedure TTourFamilyForm.Exit1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TTourFamilyForm.FormCreate(Sender: TObject);
begin
  inherited;
  MasterTblName := 'Masters';
  MasterKeyField := 'Masters_id';
  AdmLevel := _TourFamilyForm_Level;

  TailorMadeChk.Checked := True;
  ActiveChk.Checked := True;
  FilterTours;

  if g_InvokeSubForm > 0 then
    begin
      if ToursCalendarForm.TailorMadeChk.Checked then
        TailorMadeChk.Checked := True
      else
        TailorMadeChk.Checked := False;
      if (g_InvokeSubForm = 4) or (g_InvokeSubForm = 5) then
        begin
          MasterCDS.Filtered := False;
          MasterCDS.Locate ('Masters_id',ToursCalendarForm.TourFamilyCDS['Masters_id'],[]);
        end;
   end;
//  File1.Visible := True;
end;

procedure TTourFamilyForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TourFamilyForm := nil;
end;

procedure TTourFamilyForm.ActiveChkClick(Sender: TObject);
begin
  inherited;
  FilterTours;
end;

procedure TTourFamilyForm.TailorMadeChkClick(Sender: TObject);
begin
  inherited;
  FilterTours;
end;

procedure TTourFamilyForm.CalSBtnClick(Sender: TObject);
begin
  inherited;
  g_InvokeSubForm := 1;  //Invoke calendar form from tour family
  if ToursCalendarForm = nil then
    Application.CreateForm(TToursCalendarForm,ToursCalendarForm);
  ToursCalendarForm.TourFamilyCDS.Locate ('Masters_id',MasterCDS['Masters_id'],[]);
end;

procedure TTourFamilyForm.ToursSBtnClick(Sender: TObject);
begin
  inherited;
  g_InvokeSubForm := 2;  //Invoke tours form from tour family
  if ToursForm = nil then
    Application.CreateForm(TToursForm,ToursForm);
end;

procedure TTourFamilyForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  g_InvokeSubForm := 0;
end;

procedure TTourFamilyForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TTourFamilyForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TTourFamilyForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;

  MasterCDS['Active'] := 0;
  MasterCDS['Fit'] := 0;
  MasterCDS['NoOfDays'] := 0;

  if TailorMadeChk.Checked then
    MasterCDS['TailorMade'] := 1
  else
    MasterCDS['TailorMade'] := 0;

  if ActiveChk.Checked then
    MasterCDS['Active'] := 1
  else
    MasterCDS['Active'] := 0;

  if ActiveChk.Checked then
    MasterCDS['Active'] := 1
  else
    MasterCDS['Active'] := 0;

end;

procedure TTourFamilyForm.DepDateSBtnClick(Sender: TObject);
begin
  inherited;
  g_InvokeSubForm := 3;  //Invoke calendar form from tour family
  if TourDeparturesForm = nil then
      Application.CreateForm(TTourDeparturesForm,TourDeparturesForm);
  TourDeparturesForm.PageControl1.ActivePageIndex := 1;
  if TailorMadeChk.Checked then
    TourDeparturesForm.TailorMadeChk.Checked := True;
  TourDeparturesForm.MasterCDS.Locate ('Masters_id',MasterCDS['Masters_id'],[]);
end;

end.
