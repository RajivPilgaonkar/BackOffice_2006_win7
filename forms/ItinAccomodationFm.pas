unit ItinAccomodationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterTMFm, FMTBcd, DBClient, DB, Provider, SqlExpr,
  Menus, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, ExtCtrls;

type
  TItinAccomodationForm = class(TCustomMasterTMForm)
    DBCheckBox1: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    MasterCDSitineraryaccommodation_id: TIntegerField;
    MasterCDSitineraries_id: TIntegerField;
    MasterCDSaddressbook_id: TIntegerField;
    MasterCDSdatein: TSQLTimeStampField;
    MasterCDSdateout: TSQLTimeStampField;
    MasterCDStours: TStringField;
    MasterCDSremarks: TStringField;
    MasterCDSestimatednoofsingles: TIntegerField;
    MasterCDSestimatednoofdoubles: TIntegerField;
    MasterCDSnoofsingles: TIntegerField;
    MasterCDSnoofdoubles: TIntegerField;
    MasterCDSac: TBooleanField;
    MasterCDSextrabeds: TIntegerField;
    MasterCDSnooftriples: TIntegerField;
    MasterCDSroomtypes_id: TIntegerField;
    MasterCDSmealplans_id: TIntegerField;
    MasterCDSgeneratevoucher: TBooleanField;
    MasterCDSestimatednoofpax: TIntegerField;
    MasterCDSnoofpax: TIntegerField;
    MasterCDSagent_addressbook_id: TIntegerField;
    MasterCDSbooked: TSQLTimeStampField;
    MasterCDSreminder: TSQLTimeStampField;
    MasterCDSconfirmed: TSQLTimeStampField;
    MasterCDScancelled: TSQLTimeStampField;
    MasterCDSexpectedcost: TBCDField;
    MasterCDSmasteraccommodation_id: TIntegerField;
    MasterCDSvouchers_id: TIntegerField;
    MasterCDSquoted: TBCDField;
    MasterCDSeta: TSQLTimeStampField;
    MasterToursCDSitineraryaccommodationtours_id: TIntegerField;
    MasterToursCDSitineraryaccommodation_id: TIntegerField;
    MasterToursCDStourcodes_id: TIntegerField;
    ItinerariesClientsDS: TDataSource;
    ItinerariesClientsCDS: TClientDataSet;
    ItinerariesClientsCDSitinerariesclients_id: TIntegerField;
    ItinerariesClientsCDSitineraryaccommodation_id: TIntegerField;
    ItinerariesClientsCDSitinerarytickets_id: TIntegerField;
    ItinerariesClientsCDSitineraryservices_id: TIntegerField;
    ItinerariesClientsCDSitinerarytransport_id: TIntegerField;
    ItinerariesClientsCDSitinerarypackages_id: TIntegerField;
    ItinerariesClientsCDSbookingsclients_id: TIntegerField;
    ItinerariesClientsDSP: TDataSetProvider;
    ItinerariesClientsTbl: TSQLTable;
    ItinerariesPaxDS: TDataSource;
    ItinerariesPaxCDS: TClientDataSet;
    ItinerariesPaxCDSitinerariespax_id: TIntegerField;
    ItinerariesPaxCDSitineraryaccommodation_id: TIntegerField;
    ItinerariesPaxCDSitinerarytickets_id: TIntegerField;
    ItinerariesPaxCDSitineraryservices_id: TIntegerField;
    ItinerariesPaxCDSitinerarytransport_id: TIntegerField;
    ItinerariesPaxCDSitinerarypackages_id: TIntegerField;
    ItinerariesPaxCDSpaxcategories_id: TIntegerField;
    ItinerariesPaxCDSbooked: TIntegerField;
    ItinerariesPaxCDScancelled: TIntegerField;
    ItinerariesPaxDSP: TDataSetProvider;
    ItinerariesPaxTbl: TSQLTable;
    PaxCatagoriesQry: TSQLQuery;
    PaxCatagoriesDSP: TDataSetProvider;
    PaxCatagoriesCDS: TClientDataSet;
    PaxCatagoriesCDSpaxcategories_id: TIntegerField;
    PaxCatagoriesCDScategory: TStringField;
    ClientsQry: TSQLQuery;
    ClientsDSP: TDataSetProvider;
    ClientsCDS: TClientDataSet;
    CityDS: TDataSource;
    CityCDS: TClientDataSet;
    CityDSP: TDataSetProvider;
    CityQry: TSQLQuery;
    CityCDSCity: TStringField;
    CityCDSCities_id: TIntegerField;
    HotelQry: TSQLQuery;
    HotelDSP: TDataSetProvider;
    HotelCDS: TClientDataSet;
    HotelDS: TDataSource;
    HotelCDSorganisation: TStringField;
    HotelCDSAddressbook_id: TIntegerField;
    RoomTypeQry: TSQLQuery;
    RoomTypeDSP: TDataSetProvider;
    RoomTypeCDS: TClientDataSet;
    RoomTypeDS: TDataSource;
    AgentQry: TSQLQuery;
    AgentDSP: TDataSetProvider;
    AgentCDS: TClientDataSet;
    AgentDS: TDataSource;
    MealPlanQry: TSQLQuery;
    MealPlanDSP: TDataSetProvider;
    MealPlanCDS: TClientDataSet;
    MealPlanDS: TDataSource;
    RoomTypeCDSRoomTypes_id: TIntegerField;
    RoomTypeCDSRoomType: TStringField;
    AgentCDSorganisation: TStringField;
    AgentCDSAddressbook_id: TIntegerField;
    MealPlanCDSMealplans_id: TIntegerField;
    MealPlanCDSPlan: TStringField;
    ItinerariesPaxCDSPaxCatagoryLookUp: TStringField;
    VouNoQry: TSQLQuery;
    VouNoDSP: TDataSetProvider;
    VouNoCDS: TClientDataSet;
    VouNoCDSvouchers_id: TIntegerField;
    VouNoCDSyearref: TIntegerField;
    VouNoCDSvoucherno: TIntegerField;
    MasterCDSVoucherNoLookUp: TStringField;
    TourCodeQry: TSQLQuery;
    TourCodeDSP: TDataSetProvider;
    TourCodeCDS: TClientDataSet;
    TourCodeCDSTourCodes_id: TIntegerField;
    TourCodeCDSTourcode: TStringField;
    MasterToursCDSTourCodeLookUp: TStringField;
    AgentCDScities_id: TIntegerField;
    HotelCDScities_id: TIntegerField;
    ItinerariesClientsCDSPaxLookUp: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure MasterToursCDSAfterPost(DataSet: TDataSet);
    procedure MasterCDSAfterPost(DataSet: TDataSet);
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure MasterCDSAfterInsert(DataSet: TDataSet);
    procedure ItinerariesPaxCDSAfterInsert(DataSet: TDataSet);
    procedure ItinerariesPaxCDSAfterPost(DataSet: TDataSet);
    procedure ItinerariesPaxCDSBeforePost(DataSet: TDataSet);
    procedure MasterCDSAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinAccomodationForm: TItinAccomodationForm;
  _ItinAccommodationForm_Mode: String;
implementation

uses ItineraryFm, BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TItinAccomodationForm.FormCreate(Sender: TObject);
begin
  inherited;
  MasterTblName := 'ItineraryAccommodation';
  MasterKeyField:= 'ItineraryAccommodation_id';

  TourCodeTblName := 'ItineraryAccommodationTours';
  TourCodeKeyField := 'ItineraryAccommodationTours_id';

  MasterCDS.Active := False;
  MasterCDS.Active := True;
  MasterToursCDS.Active := False;
  MasterToursCDS.Active := True;
  ItinerariesPaxCDS.Active := False;
  ItinerariesPaxCDS.Active := True;
  ItinerariesClientsCDS.Active := False;
  ItinerariesClientsCDS.Active := True;

  if _ItinAccommodationForm_Mode = 'I' then
    begin
      MasterCDS.Insert;
      MasterToursCDS.Insert;
//      ItinerariesPaxCDS.Insert;
//      ItinerariesClientsCDS.Insert;
    end
  else if _ItinAccommodationForm_Mode = 'E' then
    begin
      MasterCDS.Edit;
      MasterToursCDS.Edit;
//      ItinerariesPaxCDS.Edit;
//      ItinerariesClientsCDS.Edit;
    end
  else if _ItinAccommodationForm_Mode = 'D' then
    begin
      MasterCDS.Delete;
      MasterToursCDS.Delete;
      ItinerariesPaxCDS.Delete;
      ItinerariesClientsCDS.Delete;
    end;
end;

procedure TItinAccomodationForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ItinAccomodationForm := nil;
end;

procedure TItinAccomodationForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
  ItineraryForm.GridCDS2.Refresh;
  ItineraryForm.DBGrid2.Refresh;
end;

procedure TItinAccomodationForm.Clear1Click(Sender: TObject);
begin
  inherited;
  if MasterCDS.State = dsBrowse then
    MasterCDS.Edit;
  if ActiveControl = DBLookupComboBox2 then
    MasterCDSaddressbook_id.Clear;
  if ActiveControl = DBLookupComboBox3 then
    MasterCDSroomtypes_id.Clear;
  if ActiveControl = DBLookupComboBox5 then
    MasterCDSmealplans_id.Clear;
  if ActiveControl = DBLookupComboBox4 then
    MasterCDSAgent_Addressbook_id.Clear;
end;

procedure TItinAccomodationForm.MasterToursCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  MasterCDS.Open;
  MasterCDS.Edit;
  MasterCDS['Tours'] :=  BuildTourString(TourCodeTblName,MasterKeyField, MasterCDS['ItineraryAccommodation_id']);
  MasterCDS.Post;
  MasterCDS.Refresh;
  MasterToursCDS.ApplyUpdates(0);
  MasterToursCDS.Refresh;
end;

procedure TItinAccomodationForm.MasterCDSAfterPost(DataSet: TDataSet);
begin
  inherited;
  MasterCDS.ApplyUpdates(0);
  MasterCDS.Refresh;
  MasterCDS.Last;
end;

procedure TItinAccomodationForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
  validateblanks(MasterCDSaddressbook_id,'HOTEL');
  validateblanks(MasterCDSdatein,'DAY IN');
  validateblanks(MasterCDSdateout,'DAY OUT');
  validateblanks(MasterCDSroomtypes_id,'ROOM TYPE');
  validateblanks(MasterCDSmealplans_id,'MEAL PLAN');
//  ItinAccommodationTbl_State := ItinAccommodationTbl.State;
end;

procedure TItinAccomodationForm.MasterCDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  ItinAccommodationTblItineraries_id.Value := ItineraryForm.DepartureDateQry['itineraries_id'];
  MasterCDSgeneratevoucher.Value := True;
end;

procedure TItinAccomodationForm.ItinerariesPaxCDSAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  ItinerariesPaxCDScancelled.Value:=0;
end;

procedure TItinAccomodationForm.ItinerariesPaxCDSAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ItinerariesPaxCDS.Refresh;
  MasterCDS.Refresh;
end;

procedure TItinAccomodationForm.ItinerariesPaxCDSBeforePost(
  DataSet: TDataSet);
begin
  if (ItinerariesPaxCDS['booked']=null) or (ItinerariesPaxCDS['booked']=0) then
      Raise Exception.Create('Please enter the pax booked');

   if (ItinerariesPaxCDS['paxcategory']=null) then
      Raise Exception.Create('Please enter the pax category');

   if (ItinerariesPaxCDS['paxcategories_id']=null) then
      Raise Exception.Create('Please enter the pax category');
   inherited;
end;

procedure TItinAccomodationForm.MasterCDSAfterScroll(DataSet: TDataSet);
var
   TQry : TSQLQuery;
begin
  inherited;
{  TQry := TSQLQuery.Create(nil);
  TQry.SQLConnection:= BackOfficeDataModule.SQLConnection;

      if (DBLookupComboBox2.KeyValue<>null) and (DBLookupComboBox2.KeyValue<>0) then
       begin
            RoomTypeQry.Close;
            RoomTypeQry.SQL.Clear;

            RoomTypeQry.SQL.Add('SELECT DISTINCT h.roomtypes_id, r.roomtype '+
                     ' FROM   seasons s, hoteltariffs h, roomtypes r, addressbook a '+
                     ' WHERE  ''' + FormatDateTime('dd/mm/yyyy', MasterCDS['datein']) + ''' between s.fromdate and s.todate '+
                     ' AND    ' + IntToStr(MasterCDS['NoOfPax']) +' between s.frompax and s.to_pax '+
                     ' AND    s.seasons_id = h.seasons_id '+
                     ' AND    r.roomtypes_id = h.roomtypes_id '+
                     ' AND    a.addressbook_id = s.addressbook_id '+
                     ' AND    s.addressbook_id = ' + VarToStr(DBLookupComboBox2.KeyValue) + ' ORDER BY r.roomtype; ');

            RoomTypeQry.Open;
            if RoomTypeQry.Eof then
             begin
                  RoomTypeQry.Close;
                  RoomTypeQry.SQL.Clear;
                  RoomTypeQry.SQL.Add('SELECT RoomTypes_id, RoomType FROM RoomTypes '+
                  ' ORDER BY RoomType ');
                  RoomTypeQry.Open;
             end;
       end;

     if MasterCDS['AddressBook_id'] <> null then
     begin
        TQry.Close;
        TQry.SQL.Clear;
        TQry.SQl.Add('select cities_id from addressbook where addressbook_id=' + Vartostr(MasterCDS['AddressBook_id']) );
        TQry.Open;

        if TQry['cities_id'] <> null then
            DBLookupComboBox1.KeyValue := TQry['cities_id'];
        TQry.Close;
     end;
     TQry.Free;    }
end;

end.
