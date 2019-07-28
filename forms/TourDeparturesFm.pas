unit TourDeparturesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterPageControlFm, FMTBcd, SqlExpr, DBClient, DB,
  Provider, Grids, DBGrids, ComCtrls, StdCtrls, DBCtrls, Buttons, dblookup,
  ExtCtrls;

type
  TTourDeparturesForm = class(TCustomMasterPageControlForm)
    GridCDS2masterdeparturedates_id: TIntegerField;
    GridCDS2tourdate: TSQLTimeStampField;
    GridCDS2returndate: TSQLTimeStampField;
    GridCDS2tourno: TIntegerField;
    GridCDS2masters_id: TIntegerField;
    GridCDS2localpayment: TFMTBCDField;
    GridCDS1tourdeparturedates_id: TIntegerField;
    GridCDS1tourdate: TSQLTimeStampField;
    GridCDS1returndate: TSQLTimeStampField;
    GridCDS1tourref: TIntegerField;
    GridCDS1tourcodes_id: TIntegerField;
    GridCDS1price: TBCDField;
    GridCDS1singlesupplement: TBCDField;
    GridCDS1fair: TBooleanField;
    GroupBox1: TGroupBox;
    ToursOpt: TRadioButton;
    MastersOpt: TRadioButton;
    TailorMadeChk: TCheckBox;
    MasterDSP: TDataSetProvider;
    MastersQry: TSQLQuery;
    MasterDS: TDataSource;
    MasterCDS: TClientDataSet;
    CDSLookupTourCodes_id: TIntegerField;
    CDSLookupTourCode: TStringField;
    CDSLookupTour: TStringField;
    MasterCDSMasters_id: TIntegerField;
    MasterCDSMasterCode: TStringField;
    MasterCDSName: TStringField;
    CDSLookupTailorMade: TBooleanField;
    MasterCDSTailorMade: TBooleanField;
    procedure ToursOptClick(Sender: TObject);
    procedure MastersOptClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TailorMadeChkClick(Sender: TObject);
    procedure FillLookUp;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure GridCDS2AfterInsert(DataSet: TDataSet);
    procedure GridCDS1AfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TourDeparturesForm: TTourDeparturesForm;
  _TourDeparturesForm_Level: Integer;
implementation

uses MainFm, TourFamilyFm;

{$R *.dfm}

procedure TTourDeparturesForm.FillLookUp;
begin
  LookUpCmb.ListSource := nil;
  LookUpCmb.KeyField := '';
  LookUpCmb.ListField := '';
  DBNavigator1.DataSource := nil;

  if PageControl1.ActivePageIndex = 0 then
    begin
      DBNavigator1.DataSource := DSLookup;
      LookUpCmb.KeyValue := CDSLookupTourCodes_id.Value;
      LookUpCmb.ListSource := DSLookup;
      LookUpCmb.KeyField := 'TourCodes_id';
      LookUpCmb.ListField := 'TourCode';
      ToursOpt.Checked := True;
      CDSLookup.Active := True;
      CDSLookup.First;
    end
  else
    begin
      DBNavigator1.DataSource := MasterDS;
      LookUpCmb.KeyValue := MasterCDSMasters_id.Value;
      LookUpCmb.ListSource := MasterDS;
      LookUpCmb.KeyField := 'Masters_id';
      LookUpCmb.ListField := 'MasterCode';
      MastersOpt.Checked :=  True;
      MasterCDS.Active := True;
      MasterCDS.First;
      if g_InvokeSubForm = 3 then
        MasterCDS.Locate ('Masters_id',TourFamilyForm.MasterCDS['Masters_id'],[]);
        LookUpCmb.KeyValue := MasterCDSMasters_id.Value;
     end;
end;

procedure TTourDeparturesForm.ToursOptClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage := TabSheet1;
  FillLookUp;
end;

procedure TTourDeparturesForm.MastersOptClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage := TabSheet2;
  FillLookUp;
end;

procedure TTourDeparturesForm.FormCreate(Sender: TObject);
begin
  inherited;
  Detail1TblName := 'TourDepartureDates';
  Detail1KeyField := 'TourDepartureDates_id';

  Detail2TblName := 'MasterDepartureDates';
  Detail2KeyField := 'MasterDepartureDates_id';
  AdmLevel := _TourDeparturesForm_Level;

  CDSLookup.Active := True;
  MasterCDS.Active := True;
  GridCDS1.Active := False;
  GridCDS2.Active := False;
  GridCDS1.Active := True;
  GridCDS2.Active := True;
  AdmLevel := _TourDeparturesForm_Level;

  ToursOpt.Checked := True;
  TailorMadeChk.Checked := True;
  CDSLookup.First;
  LookUpCmb.KeyValue := CDSLookupTourCodes_id.Value;

  if g_InvokeSubForm = 3 then
    begin
      if TourFamilyForm.TailorMadeChk.Checked = False then
        TailorMadeChk.Checked := False;
      if g_InvokeSubForm = 5 then
         TourFamilyForm.MasterCDS.Locate ('Masters_id',MasterCDS['Masters_id'],[]);

      MastersOpt.Checked := True
    end;
end;


procedure TTourDeparturesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TourDeparturesForm := nil;
end;

procedure TTourDeparturesForm.PageControl1Change(Sender: TObject);
begin
  inherited;
    if PageControl1.ActivePageIndex =0 then
    ToursOpt.Checked := True
  else
    MastersOpt.Checked := True;
  FillLookUp;
end;

procedure TTourDeparturesForm.TailorMadeChkClick(Sender: TObject);
begin
  inherited;
  if TailorMadeChk.Checked then
    begin
      CDSLookup.Filter := 'TailorMade';
      MasterCDS.Filter := 'TailorMade';
    end
  else
    begin
      CDSLookup.Filter := 'Not TailorMade';
      MasterCDS.filter := 'Not TailorMade';
    end;
    CDSLookup.Refresh;
    MasterCDS.Refresh;
    CDSLookup.First;
    MasterCDS.First;
    GridCDS1.Refresh;
    GridCDS2.Refresh;
    if ToursOpt.Checked then
      LookUpCmb.KeyValue := CDSLookupTourCodes_id.Value
    else
      LookUpCmb.KeyValue := MasterCDSMasters_id.Value;   
end;

procedure TTourDeparturesForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TTourDeparturesForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if ToursOpt.Checked then
    LookUpCmb.KeyValue := CDSLookupTourCodes_id.Value
  else
    LookUpCmb.KeyValue := MasterCDSMasters_id.Value;
end;

procedure TTourDeparturesForm.GridCDS2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  GridCDS2['TourDate'] := Date();
  GridCDS2['ReturnDate'] := Date();
end;

procedure TTourDeparturesForm.GridCDS1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  GridCDS1['TourDate'] := Date();
  GridCDS1['ReturnDate'] := Date();
end;

end.
