  unit TourCalendersFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, StdCtrls, ExtCtrls, Menus, SqlExpr,
  DB, DBClient, Provider, Grids, DBGrids, DBCtrls, Mask, Buttons;

type
  TToursCalendarForm = class(TCustomMasterGridForm)
    Panel1: TPanel;
    TailorMadeChk: TCheckBox;
    MasterCodeDBEdit: TDBEdit;
    MasterNameDBEdit: TDBEdit;
    TourFamilyDS: TDataSource;
    TourFamilyCDS: TClientDataSet;
    TourFamilyDSP: TDataSetProvider;
    TourFamilyTbl: TSQLTable;
    DBNavigator1: TDBNavigator;
    FamilySBtn: TSpeedButton;
    DepDateSBtn: TSpeedButton;
    TourFamilyCDSmastercode: TStringField;
    TourFamilyCDSname: TStringField;
    TourFamilyCDSfit: TBooleanField;
    TourFamilyCDSnoofdays: TIntegerField;
    TourFamilyCDStailormade: TBooleanField;
    TourFamilyCDSactive: TBooleanField;
    TourFamilyCDSmasters_id: TIntegerField;
    TourFamilyCDSaddressbook_id: TIntegerField;
    TourFamilyCDScompanies_id: TIntegerField;
    MasterCDStourcalendar_id: TIntegerField;
    MasterCDSdaysoffset: TIntegerField;
    MasterCDSmasters_id: TIntegerField;
    MasterCDStourcodes_id: TIntegerField;
    TourCodeCDS: TClientDataSet;
    IntegerField4: TIntegerField;
    TourCodeDSP: TDataSetProvider;
    TourCodeQry: TSQLQuery;
    TourCodeCDSTourCode: TStringField;
    MasterCDSCodeLookUp: TStringField;
    procedure Exit1Click(Sender: TObject);
    procedure TailorMadeChkClick(Sender: TObject);
    procedure FamilySBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure DepDateSBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToursCalendarForm: TToursCalendarForm;
  _TourCalendarForm_Level: Integer;
implementation

uses BackOfficeDM, Math, TourFamilyFm, MainFm;

{$R *.dfm}

procedure TToursCalendarForm.Exit1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToursCalendarForm.TailorMadeChkClick(Sender: TObject);
begin
  inherited;
 // if TourFamilyCDS.Active = False then
//    TourFamilyCDS.Active := True;

  if TailorMadeChk.Checked then
    TourFamilyCDS.Filter := 'TailorMade'
  else
    TourFamilyCDS.Filter := 'Not TailorMade';

  TourFamilyCDS.Refresh;
end;

procedure TToursCalendarForm.FamilySBtnClick(Sender: TObject);
begin
  inherited;
  g_InvokeSubForm := 4;         // Invoke tour family form from tour calendars form
  If TourFamilyForm = nil  Then
    Application.CreateForm(TTourFamilyForm, TourFamilyForm);
end;

procedure TToursCalendarForm.FormCreate(Sender: TObject);
begin
  inherited;
  MasterTblName := 'TOurCalendar';
  MasterKeyField := 'TOurCalendar_id';

  AdmLevel := _TourCalendarForm_Level;

  TourFamilyCDS.Active := False;
  TourFamilyCDS.Active := True;

  TailorMadeChk.Checked := True;

  if g_InvokeSubForm > 0 then
    begin
      if TourFamilyForm.TailorMadeChk.Checked then
        TailorMadeChk.Checked := True
      else
        TailorMadeChk.Checked := False;
    end;
//  File1.Visible := True;
end;

procedure TToursCalendarForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ToursCalendarForm := nil;
end;

procedure TToursCalendarForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToursCalendarForm.DepDateSBtnClick(Sender: TObject);
begin
  inherited;
  g_InvokeSubForm := 5;         // Invoke tour family form from tour calendars form
  If TourFamilyForm = nil  Then
    Application.CreateForm(TTourFamilyForm, TourFamilyForm);
end;

end.
