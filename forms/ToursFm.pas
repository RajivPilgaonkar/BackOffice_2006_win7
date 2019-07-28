unit ToursFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterGridFm, FMTBcd, Menus, SqlExpr, DB, DBClient,
  Provider, StdCtrls, Grids, DBGrids, DBCtrls, ExtCtrls, Buttons;

type
  TToursForm = class(TCustomMasterGridForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupFitOpt: TRadioButton;
    TailorMadeOpt: TRadioButton;
    ActiveChk: TCheckBox;
    MasterCDStourcodes_id: TIntegerField;
    MasterCDStourcode: TStringField;
    MasterCDStour: TStringField;
    MasterCDSfit: TBooleanField;
    MasterCDSnoofdays: TIntegerField;
    MasterCDSagent_addressbook_id: TIntegerField;
    MasterCDShotel_addressbook_id: TIntegerField;
    MasterCDStailormade: TBooleanField;
    MasterCDSsingleconstituent: TBooleanField;
    MasterCDSactive: TBooleanField;
    MasterCDScities_id: TIntegerField;
    MasterCDSitinerary_en: TMemoField;
    MasterCDSfactfinder_en: TMemoField;
    MasterCDStravelstyles_id: TIntegerField;
    HotelQry: TSQLQuery;
    CitiesQry: TSQLQuery;
    HotelDSP: TDataSetProvider;
    CitiesDSP: TDataSetProvider;
    HotelCDS: TClientDataSet;
    CitiesCDS: TClientDataSet;
    HotelCDSAddressBook_id: TIntegerField;
    HotelCDSOrganisation: TStringField;
    CitiesQryCities_id: TIntegerField;
    CitiesQryCity: TStringField;
    CitiesCDSCities_id: TIntegerField;
    CitiesCDSCity: TStringField;
    MasterCDSAgentLookUp: TStringField;
    MasterCDSHotelLookUp: TStringField;
    MasterCDSCityLookUp: TStringField;
    AgentCDS: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    AgentDSP: TDataSetProvider;
    AgentQry: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure GroupFitOptClick(Sender: TObject);
    procedure TailorMadeOptClick(Sender: TObject);
    procedure ActiveChkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToursForm: TToursForm;
  _ToursForm_Level: integer;

implementation

uses BackOfficeDM, TourFamilyFm, MainFm;

{$R *.dfm}

procedure TToursForm.FormCreate(Sender: TObject);
begin
  inherited;
  MasterTblName := 'TourCodes';
  MasterKeyField := 'TourCodes_id';
  AdmLevel := _ToursForm_Level;

  GroupFitOpt.Checked := True;
  //File1.Visible := True;

  if g_InvokeSubForm > 0 then
    begin
      if TourFamilyForm.TailorMadeChk.Checked then
        TailorMadeOpt.Checked := True
      else
        TailorMadeOpt.Checked := False;

      if TourFamilyForm.ActiveChk.Checked then
        ActiveChk.Checked := True
      else
        ActiveChk.Checked := False;

    end;
end;

procedure TToursForm.Exit1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToursForm.GroupFitOptClick(Sender: TObject);
begin
  inherited;
  if ActiveChk.Checked then
    MasterCDS.Filter := ' (NOT TailorMade) AND Active '
  else
    MasterCDS.Filter := ' (NOT TailorMade) AND (NOT Active)';

  MasterCDS.Refresh;
end;

procedure TToursForm.TailorMadeOptClick(Sender: TObject);
begin
  inherited;
  if ActiveChk.Checked then
    MasterCDS.Filter := ' (TailorMade) AND Active '
  else
    MasterCDS.Filter := ' (TailorMade) AND (NOT Active)';

  MasterCDS.Refresh;
end;

procedure TToursForm.ActiveChkClick(Sender: TObject);
begin
  inherited;
  if ActiveChk.Checked then
    begin
      if TailorMadeOpt.Checked then
        MasterCDS.Filter := '(TailorMade) AND Active'
      else
        MasterCDS.Filter := ' (NOT TailorMade) AND Active '
    end
  else
    begin
      if GroupFitOpt.Checked then
        MasterCDS.Filter := '(Not TailorMade) AND Not Active'
      else
        MasterCDS.Filter := ' (TailorMade) AND Not Active '
    end;

  MasterCDS.Refresh;
end;

procedure TToursForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ToursForm := nil;
end;

procedure TToursForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  g_InvokeSubForm := 0;
end;

procedure TToursForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToursForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TToursForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TailorMadeOpt.Checked then
    MasterCDS['TailorMade'] := 1
  else
    MasterCDS['TailorMade'] := 0;

  if ActiveChk.Checked then
    MasterCDS['Active'] := 1
  else
    MasterCDS['Active'] := 0;

  if (MasterCDS['Tourcode'] = Null) or (Length(Trim(MasterCDS['Tourcode'])) = 0) then
     Raise Exception.Create('Invalid TourCode Entered');

end;

procedure TToursForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCDS['SingleConstituent'] := 0;
  MasterCDS['FIT'] := 0;
  MasterCDS['NoOfDays'] := 0;
  MasterCDSactive.ReadOnly := False;
  if ActiveChk.Checked then
    MasterCDS['ACTIVE'] := 1
  else
    MasterCDS['ACTIVE'] := 0;

end;

procedure TToursForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  MasterCDSactive.ReadOnly := True;
end;

end.
