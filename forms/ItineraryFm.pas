unit ItineraryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTimeEdit, StdCtrls, Buttons,
  DBCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, cxContainer, cxProgressBar,
  Menus, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters, cxButtons,
  ImgList, Grids, DBGrids, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGroupBox;

type
  TItineraryForm = class(TForm)
    Panel2: TPanel;
    GroupBox2: TcxGroupBox;
    ItineraryPC: TcxPageControl;
    ItinTickets: TcxTabSheet;
    TicketsGrid: TcxGrid;
    TicketsGridLevel1: TcxGridLevel;
    ItinAccommodation: TcxTabSheet;
    AccommodationGrid: TcxGrid;
    AccommodationGridLevel1: TcxGridLevel;
    ItinServices: TcxTabSheet;
    ServicesGrid: TcxGrid;
    ServicesGridLevel1: TcxGridLevel;
    ItinTransport: TcxTabSheet;
    TransportGrid: TcxGrid;
    TransportGridLevel1: TcxGridLevel;
    ItinPackages: TcxTabSheet;
    PackagesGrid: TcxGrid;
    PackagesGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    SearchLbl: TLabel;
    KeyIdDbText: TDBText;
    SearchEdit: TEdit;
    GroupBox1: TcxGroupBox;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeCds: TClientDataSet;
    MasterCodeDs: TDataSource;
    DepDateSds: TSQLDataSet;
    DepDateDsp: TDataSetProvider;
    DepDateCds: TClientDataSet;
    DepDateDs: TDataSource;
    cxProgressBar1: TcxProgressBar;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    ItinTicketsSds: TSQLDataSet;
    ItinTicketsDsp: TDataSetProvider;
    ItinTicketsCds: TClientDataSet;
    ItinTicketsDs: TDataSource;
    ItinAccommodationSds: TSQLDataSet;
    ItinAccommodationDsp: TDataSetProvider;
    ItinAccommodationCds: TClientDataSet;
    ItinAccommodationDs: TDataSource;
    ItinServiceSds: TSQLDataSet;
    ItinServiceDsp: TDataSetProvider;
    ItinServiceDs: TDataSource;
    ItinTransportSds: TSQLDataSet;
    ItinTransportDsp: TDataSetProvider;
    ItinTransportDs: TDataSource;
    ItinPackagesSds: TSQLDataSet;
    ItinPackagesDsp: TDataSetProvider;
    ItinPackagesCds: TClientDataSet;
    ItinPackagesDs: TDataSource;
    TicketsGridDBTableView1: TcxGridDBTableView;
    TicketsGridDBTableView1TravelDate: TcxGridDBColumn;
    TicketsGridDBTableView1FlightNo: TcxGridDBColumn;
    TicketsGridDBTableView1Tours: TcxGridDBColumn;
    TicketsGridDBTableView1AdviceNoOfPax: TcxGridDBColumn;
    TicketsGridDBTableView1AdviceNamesOfPax: TcxGridDBColumn;
    TicketsGridDBTableView1Confirmed: TcxGridDBColumn;
    TicketsGridDBTableView1NoofPax: TcxGridDBColumn;
    TicketsGridDBTableView1Class: TcxGridDBColumn;
    TicketsGridDBTableView1ExpectedAmount: TcxGridDBColumn;
    TicketsGridDBTableView1City: TcxGridDBColumn;
    TicketsGridDBTableView1City_1: TcxGridDBColumn;
    TicketsGridDBTableView1Details: TcxGridDBColumn;
    TicketsGridDBTableView1Departure: TcxGridDBColumn;
    TicketsGridDBTableView1Arrival: TcxGridDBColumn;
    TicketsGridDBTableView1remarks: TcxGridDBColumn;
    TicketsGridDBTableView1Organisation: TcxGridDBColumn;
    AccommodationGridDBTableView1: TcxGridDBTableView;
    AccommodationGridDBTableView1City: TcxGridDBColumn;
    AccommodationGridDBTableView1Organisation: TcxGridDBColumn;
    AccommodationGridDBTableView1DateIn: TcxGridDBColumn;
    AccommodationGridDBTableView1DateOut: TcxGridDBColumn;
    AccommodationGridDBTableView1Tours: TcxGridDBColumn;
    AccommodationGridDBTableView1Remarks: TcxGridDBColumn;
    AccommodationGridDBTableView1NoOfSingles: TcxGridDBColumn;
    AccommodationGridDBTableView1NoOfDoubles: TcxGridDBColumn;
    AccommodationGridDBTableView1NoOfTriples: TcxGridDBColumn;
    AccommodationGridDBTableView1Ac: TcxGridDBColumn;
    AccommodationGridDBTableView1ExtraBeds: TcxGridDBColumn;
    AccommodationGridDBTableView1RoomType: TcxGridDBColumn;
    AccommodationGridDBTableView1Plan: TcxGridDBColumn;
    AccommodationGridDBTableView1NoOfPax: TcxGridDBColumn;
    AccommodationGridDBTableView1Organisation_1: TcxGridDBColumn;
    AccommodationGridDBTableView1Confirmed: TcxGridDBColumn;
    AccommodationGridDBTableView1ExpectedCost: TcxGridDBColumn;
    AccommodationGridDBTableView1NoConfirmed: TcxGridDBColumn;
    ServicesGridDBTableView1: TcxGridDBTableView;
    ServicesGridDBTableView1City: TcxGridDBColumn;
    ServicesGridDBTableView1Organisation: TcxGridDBColumn;
    ServicesGridDBTableView1TransferDate: TcxGridDBColumn;
    ServicesGridDBTableView1Service: TcxGridDBColumn;
    ServicesGridDBTableView1Time: TcxGridDBColumn;
    ServicesGridDBTableView1Tours: TcxGridDBColumn;
    ServicesGridDBTableView1Remarks: TcxGridDBColumn;
    ServicesGridDBTableView1NoOfPax: TcxGridDBColumn;
    ServicesGridDBTableView1Transport: TcxGridDBColumn;
    ServicesGridDBTableView1AC: TcxGridDBColumn;
    ServicesGridDBTableView1Automobile: TcxGridDBColumn;
    ServicesGridDBTableView1NoOfVehicles: TcxGridDBColumn;
    ServicesGridDBTableView1Guide: TcxGridDBColumn;
    ServicesGridDBTableView1ExpectedAmount: TcxGridDBColumn;
    TransportGridDBTableView1: TcxGridDBTableView;
    TransportGridDBTableView1FromPlace: TcxGridDBColumn;
    TransportGridDBTableView1FromDate: TcxGridDBColumn;
    TransportGridDBTableView1FromTime: TcxGridDBColumn;
    TransportGridDBTableView1ToPlace: TcxGridDBColumn;
    TransportGridDBTableView1ToDate: TcxGridDBColumn;
    TransportGridDBTableView1ToTime: TcxGridDBColumn;
    TransportGridDBTableView1Remarks: TcxGridDBColumn;
    TransportGridDBTableView1Organisation: TcxGridDBColumn;
    TransportGridDBTableView1Tours: TcxGridDBColumn;
    TransportGridDBTableView1NoOfPax: TcxGridDBColumn;
    TransportGridDBTableView1AC: TcxGridDBColumn;
    TransportGridDBTableView1DropOffDays: TcxGridDBColumn;
    TransportGridDBTableView1Automobile: TcxGridDBColumn;
    TransportGridDBTableView1NoOfVehicles: TcxGridDBColumn;
    TransportGridDBTableView1ExpectedAmount: TcxGridDBColumn;
    TransportGridDBTableView1City: TcxGridDBColumn;
    TransportGridDBTableView1City_1: TcxGridDBColumn;
    TransportGridDBTableView1Dropoffkms: TcxGridDBColumn;
    PackagesGridDBTableView1: TcxGridDBTableView;
    PackagesGridDBTableView1package: TcxGridDBColumn;
    PackagesGridDBTableView1tours: TcxGridDBColumn;
    PackagesGridDBTableView1noofpax: TcxGridDBColumn;
    MasterCodeLcmb: TcxLookupComboBox;
    DepDateLcmb: TcxLookupComboBox;
    ItinAccommodationCdsMasters_id: TIntegerField;
    ItinAccommodationCdsDepartureDate: TSQLTimeStampField;
    ItinAccommodationCdsItineraryAccommodation_id: TIntegerField;
    ItinAccommodationCdsItineraries_id: TIntegerField;
    ItinAccommodationCdsCities_id: TIntegerField;
    ItinAccommodationCdsCity: TStringField;
    ItinAccommodationCdsOrganisation: TStringField;
    ItinAccommodationCdsDateIn: TSQLTimeStampField;
    ItinAccommodationCdsDateOut: TSQLTimeStampField;
    ItinAccommodationCdsTours: TStringField;
    ItinAccommodationCdsRemarks: TStringField;
    ItinAccommodationCdsNoOfSingles: TIntegerField;
    ItinAccommodationCdsNoOfDoubles: TIntegerField;
    ItinAccommodationCdsNoOfTriples: TIntegerField;
    ItinAccommodationCdsAc: TBooleanField;
    ItinAccommodationCdsExtraBeds: TIntegerField;
    ItinAccommodationCdsRoomType: TStringField;
    ItinAccommodationCdsPlan: TStringField;
    ItinAccommodationCdsNoOfPax: TIntegerField;
    ItinAccommodationCdsOrganisation_1: TStringField;
    ItinAccommodationCdsConfirmed: TSQLTimeStampField;
    ItinAccommodationCdsExpectedCost: TBCDField;
    ItinAccommodationCdsNoConfirmed: TIntegerField;
    cxButton1: TcxButton;
    ImageList1: TImageList;
    ItinServiceCds: TClientDataSet;
    ItinTransportCds: TClientDataSet;
    ItinTransportCdsMasters_id: TIntegerField;
    ItinTransportCdsDepartureDate: TSQLTimeStampField;
    ItinTransportCdsItineraryTransport_id: TIntegerField;
    ItinTransportCdsItineraries_id: TIntegerField;
    ItinTransportCdsFromPlace: TStringField;
    ItinTransportCdsFromDate: TSQLTimeStampField;
    ItinTransportCdsFromTime: TSQLTimeStampField;
    ItinTransportCdsToPlace: TStringField;
    ItinTransportCdsToDate: TSQLTimeStampField;
    ItinTransportCdsToTime: TSQLTimeStampField;
    ItinTransportCdsRemarks: TStringField;
    ItinTransportCdsOrganisation: TStringField;
    ItinTransportCdsTours: TStringField;
    ItinTransportCdsNoOfPax: TIntegerField;
    ItinTransportCdsAC: TBooleanField;
    ItinTransportCdsDropOffDays: TIntegerField;
    ItinTransportCdsAutomobile: TStringField;
    ItinTransportCdsNoOfVehicles: TIntegerField;
    ItinTransportCdsExpectedAmount: TBCDField;
    ItinTransportCdsCity: TStringField;
    ItinTransportCdsCity_1: TStringField;
    ItinTransportCdscities_id: TIntegerField;
    ItinTransportCdsDropoffkms: TIntegerField;
    MasterCodeCdsMasters_id: TIntegerField;
    MasterCodeCdsMasterCode: TStringField;
    ItinServiceCdsMasters_id: TIntegerField;
    ItinServiceCdsDepartureDate: TSQLTimeStampField;
    ItinServiceCdsItineraryServices_id: TIntegerField;
    ItinServiceCdsItineraries_id: TIntegerField;
    ItinServiceCdsCity: TStringField;
    ItinServiceCdsOrganisation: TStringField;
    ItinServiceCdsTransferDate: TSQLTimeStampField;
    ItinServiceCdsService: TStringField;
    ItinServiceCdsTime: TSQLTimeStampField;
    ItinServiceCdsTours: TStringField;
    ItinServiceCdsRemarks: TStringField;
    ItinServiceCdsNoOfPax: TIntegerField;
    ItinServiceCdsTransport: TBooleanField;
    ItinServiceCdsAC: TBooleanField;
    ItinServiceCdsAutomobile: TStringField;
    ItinServiceCdsNoOfVehicles: TIntegerField;
    ItinServiceCdsGuide: TBooleanField;
    ItinServiceCdsExpectedAmount: TFMTBCDField;
    ItinServiceCdscities_id: TIntegerField;
    DepDateCdsMasters_id: TIntegerField;
    DepDateCdsItineraries_id: TIntegerField;
    DepDateCdsDepartureDate: TSQLTimeStampField;
    cxButton2: TcxButton;
    ItinTicketsCdsMasters_id: TIntegerField;
    ItinTicketsCdsItineraryTickets_id: TIntegerField;
    ItinTicketsCdsItineraries_id: TIntegerField;
    ItinTicketsCdsTravelDate: TSQLTimeStampField;
    ItinTicketsCdsFlightNo: TStringField;
    ItinTicketsCdsTours: TStringField;
    ItinTicketsCdsAdviceNoOfPax: TSQLTimeStampField;
    ItinTicketsCdsAdviceNamesOfPax: TSQLTimeStampField;
    ItinTicketsCdsConfirmed: TSQLTimeStampField;
    ItinTicketsCdsOrganisation: TStringField;
    ItinTicketsCdsNoofPax: TIntegerField;
    ItinTicketsCdsClass: TStringField;
    ItinTicketsCdsExpectedAmount: TBCDField;
    ItinTicketsCdsCity: TStringField;
    ItinTicketsCdsCity_1: TStringField;
    ItinTicketsCdsDetails: TStringField;
    ItinTicketsCdsDeparture: TSQLTimeStampField;
    ItinTicketsCdsArrival: TSQLTimeStampField;
    ItinTicketsCdsNoConfirmed: TIntegerField;
    ItinTicketsCdsDepartureDate: TSQLTimeStampField;
    ItinTicketsCdscities_id: TIntegerField;
    ItinTicketsCdsremarks: TStringField;
    ItinPackagesCdsmasters_id: TIntegerField;
    ItinPackagesCdsDepartureDate: TSQLTimeStampField;
    ItinPackagesCdsitinerarypackages_id: TIntegerField;
    ItinPackagesCdsitineraries_id: TIntegerField;
    ItinPackagesCdspackage: TStringField;
    ItinPackagesCdsfrom_time: TSQLTimeStampField;
    ItinPackagesCdsto_time: TSQLTimeStampField;
    ItinPackagesCdsfrom_place: TStringField;
    ItinPackagesCdsto_place: TStringField;
    ItinPackagesCdstours: TStringField;
    ItinPackagesCdstransport: TBooleanField;
    ItinPackagesCdsac: TBooleanField;
    ItinPackagesCdsnoofpax: TIntegerField;
    ItinPackagesCdssinglesupplement: TIntegerField;
    ItinPackagesCdsorganisation: TStringField;
    ItinPackagesCdsvehicle: TStringField;
    ItinPackagesCdsnoofvehicles: TIntegerField;
    ItinPackagesCdsremarks: TStringField;
    ItinPackagesCdsexpectedamount: TFMTBCDField;
    ItinerariesSds: TSQLDataSet;
    ItinerariesDsp: TDataSetProvider;
    ItinerariesCds: TClientDataSet;
    Itinerariesds: TDataSource;
    ItinerariesCdsMasters_id: TIntegerField;
    ItinerariesCdsMasterCode: TStringField;
    ItinerariesCdsItineraries_id: TIntegerField;
    ItinerariesCdsDepartureDate: TSQLTimeStampField;
    MasterCodeLbl: TDBText;
    DBText2: TDBText;
    TicketsGridDBTableView1NoBooked: TcxGridDBColumn;
    ItinTicketsCdsNoBooked: TIntegerField;
    ItinTicketsCdsNoCancelled: TIntegerField;
    TicketsGridDBTableView1NoCancelled: TcxGridDBColumn;
    ItinAccommodationCdsNoOfTwins: TIntegerField;
    AccommodationGridDBTableView1NoOfTwins: TcxGridDBColumn;
    N1: TMenuItem;
    Add2: TMenuItem;
    Edit2: TMenuItem;
    PackagesGridDBTableView1itinerarypackages_id: TcxGridDBColumn;
    PackagesGridDBTableView1itineraries_id: TcxGridDBColumn;
    PackagesGridDBTableView1remarks: TcxGridDBColumn;
    PackagesGridDBTableView1Organisation: TcxGridDBColumn;
    ItinPackagesCdsfrom_date: TSQLTimeStampField;
    ItinPackagesCdsto_date: TSQLTimeStampField;
    PackagesGridDBTableView1from_date: TcxGridDBColumn;
    PackagesGridDBTableView1to_date: TcxGridDBColumn;
    procedure RoomAssign;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ItinerariesCdsAfterScroll(DataSet: TDataSet);
    procedure Edit2Click(Sender: TObject);
    procedure Add2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItineraryForm: TItineraryForm;
  _ItineraryForm_Level: Integer;
  _Mode : String;
  _TourDepDate : Variant;
  _Itineraries_id : Integer;
  _ItineraryForm_Itineraries_id: integer;
  _ItineraryForm_Masters_id: integer;
  _ItineraryForm_MasterCode: string;
  _ItineraryForm_MasterTourDate: TDateTime;
  _ItineraryForm_Type: integer;


implementation

uses BackOfficeDM, ItinTicketsFm, ItinDepDatesFm, ItinAccommodationFm,
  ItinServicesFm, ItinTransportFm, ItinPackagesFm, MainFm, GeneralUt,
  ItineraryPackagesFm;

var
  AdmLevel: Integer;
{$R *.dfm}

procedure TItineraryForm.RoomAssign;
var
  GPQry: TSQLQuery;
begin
  GPQry:= TSQLQuery.Create(nil);
  GPQry.SQLConnection:=BackOfficeDataModule.SQLConnection;

  // Execute Room Assignment
  GPQry.Close;
  GPQry.SQL.Clear;
  GpQry.SQL.Add('EXEC p_PaxInRooms ' +IntToStr(DepDateCds['itineraries_id']) +'');
  GPQry.ExecSQL;
  GPQry.Close;
  GPQry.Free;
end;

procedure TItineraryForm.FormCreate(Sender: TObject);
begin

  Height := 600;
  Width := 1000;

  AdmLevel := _ItineraryForm_Level;
  ItineraryPC.ActivePageIndex := 0;

  ItinerariesCds.Active := True;

  if _ItineraryForm_Type = 2 then
    ItinerariesCds.Locate('Itineraries_id',_ItineraryForm_Itineraries_id,[])
  else
    ItinerariesCds.Locate('Masters_id;DepartureDate',
        VarArrayOf([_ItineraryForm_Masters_id,_ItineraryForm_MasterTourDate]),[]);

  ItinTicketsCds.Active := True;
  ItinAccommodationCds.Active := True;
  ItinServiceCds.Active := True;
  ItinTransportCds.Active := True;
  ItinPackagesCds.Active := True;

  ItinerariesCdsAfterScroll(ItinerariesCds);

end;

procedure TItineraryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TItineraryForm.FormDestroy(Sender: TObject);
begin
  ItineraryForm := nil;
end;

procedure TItineraryForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TItineraryForm.Add1Click(Sender: TObject);
begin
  _ItineraryForm_Level := GetUserLevel(g_users_id, 4030);

  If _ItineraryForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ItinerariesCds.Eof then
    raise exception.create ('Please select an Itinerary first');

  if ItineraryPC.ActivePageIndex = 0 then    // Set the ItinTicketsForm to InsertMode
  begin
    _ItinTicketsForm_Mode := 'I';
    _ItinTicketsForm_Level := _ItineraryForm_Level;

    if ItinTicketsForm = Nil then
      Application.CreateForm(TItinTicketsForm, ItinTicketsForm);

    ItinTicketsForm.ShowModal;

    // Refresh the Grid
    ItinTicketsCds.Close;
    ItinTicketsCds.Open;

    FreeAndNil(ItinTicketsForm);
  end

  else if ItineraryPC.ActivePageIndex = 1 then   // Set the ItinAccommodationForm to InsertMode
  begin
    _ItinAccommodationForm_Mode := 'I';
    _ItinAccommodationForm_Level := _ItineraryForm_Level;

    if ItinAccommodationForm = Nil then
      Application.CreateForm(TItinAccommodationForm, ItinAccommodationForm);

    ItinAccommodationForm.ShowModal;

    // Refresh the Grid
    ItinAccommodationCds.Close;
    ItinAccommodationCds.Open;

    FreeAndNil(ItinAccommodationForm);
  end

  else if ItineraryPC.ActivePageIndex = 2 then    // Set the ItinServiceForm to InsertMode
  begin
    _ItinServicesForm_Mode := 'I';
    _ItinServicesForm_Level := _ItineraryForm_Level;

    if ItinServicesForm = Nil then
      Application.CreateForm(TItinServicesForm, ItinServicesForm);

    ItinServicesForm.ShowModal;

    // Refresh the Grid
    ItinServiceCds.Close;
    ItinServiceCds.Open;

    FreeAndNil(ItinServicesForm);

  end

  else if ItineraryPC.ActivePageIndex = 3 then    // Set the ItinTransportForm to InsertMode
  begin
    _ItinTransportForm_Mode := 'I';
    _ItinTransportForm_Level := _ItineraryForm_Level;

    if ItinTransportForm = Nil then
      Application.CreateForm(TItinTransportForm, ItinTransportForm);

    ItinTransportForm.ShowModal;

    // Refresh the Grid
    ItinTransportCds.Close;
    ItinTransportCds.Open;

    FreeAndNil(ItinTransportForm);
  end

  else if ItineraryPC.ActivePageIndex = 4 then    // Set the ItinPackagesForm to InsertMode
  begin
    _ItinPackagesForm_Mode := 'I';
    _ItinPackagesForm_Level := _ItineraryForm_Level;

    if ItinPackagesForm = Nil then
      Application.CreateForm(TItinPackagesForm, ItinPackagesForm);

    ItinPackagesForm.ShowModal;
    // Refresh the Grid
    ItinPackagesCds.Close;
    ItinPackagesCds.Open;

    FreeAndNil(ItinPackagesForm);

  end;

end;

procedure TItineraryForm.Edit1Click(Sender: TObject);
begin
  _ItineraryForm_Level := GetUserLevel(g_users_id, 4030);

  If _ItineraryForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ItinerariesCds.Eof then
    raise exception.create ('Please select an Itinerary first');

  if ItineraryPC.ActivePageIndex = 0 then         // Set the ItinTicketsForm to EditMode
    begin
      _ItinTicketsForm_Mode := 'E';
      _ItinTicketsForm_Level := _ItineraryForm_Level;

      if ItinTicketsForm = Nil then
        Application.CreateForm(TItinTicketsForm, ItinTicketsForm);

      ItinTicketsForm.ShowModal;

    //  Refresh the Grid
      ItinTicketsCds.Close;
      ItinTicketsCds.Open;

      FreeAndNil(ItinTicketsForm);

    end

  else if ItineraryPC.ActivePageIndex = 1 then        // Set the ItinAccommodationForm to EditMode
    begin
      _ItinAccommodationForm_Mode := 'E';
      _ItinAccommodationForm_Level := _ItineraryForm_Level;

      if ItinAccommodationForm = Nil then
        Application.CreateForm(TItinAccommodationForm, ItinAccommodationForm);

      ItinAccommodationForm.ShowModal;

      // Refresh the Grid
      ItinAccommodationCds.Close;
      ItinAccommodationCds.Open;

      FreeAndNil(ItinAccommodationForm);
    end

  else if ItineraryPC.ActivePageIndex = 2 then     // Set the ItinServicesForm to EditMode
    begin
      _ItinServicesForm_Mode := 'E';
      _ItinServicesForm_Level := _ItineraryForm_Level;

      if ItinServicesForm = Nil then
        Application.CreateForm(TItinServicesForm, ItinServicesForm);

      ItinServicesForm.ShowModal;

          // Refresh the Grid
      ItinServiceCds.Close;
      ItinServiceCds.Open;

      FreeAndNil(ItinServicesForm);

    end

  else if ItineraryPC.ActivePageIndex = 3 then     // Set the ItinTransportForm to EditMode
    begin
      _ItinTransportForm_Mode := 'E';
      _ItinTransportForm_Level := _ItineraryForm_Level;

      if ItinTransportForm = Nil then
        Application.CreateForm(TItinTransportForm, ItinTransportForm);

      ItinTransportForm.ShowModal;

      // Refresh the Grid
      ItinTransportCds.Close;
      ItinTransportCds.Open;

      FreeAndNil(ItinTransportForm);

    end

  else if ItineraryPC.ActivePageIndex = 4 then      // Set the ItinPackagesForm to EditMode
    begin

      _ItinPackagesForm_Mode := 'E';
      _ItinPackagesForm_Level := _ItineraryForm_Level;

      if ItinPackagesForm = Nil then
        Application.CreateForm(TItinPackagesForm, ItinPackagesForm);

      ItinPackagesForm.ShowModal;

      // Refresh the Grid
      ItinPackagesCds.Close;
      ItinPackagesCds.Open;

      FreeAndNil(ItinPackagesForm);

    end ;

end;

procedure TItineraryForm.Delete1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  _ItineraryForm_Level := GetUserLevel(g_users_id, 4040);

  If _ItineraryForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  if ItineraryPC.ActivePageIndex = 0 then
     QueryString := 'DELETE FROM ItineraryTicketsTours ' +
       'WHERE ItineraryTickets_id = ' + IntToStr(ItinTicketsCds['ItineraryTickets_id'])

  else if ItineraryPC.ActivePageIndex = 1 then
     QueryString := 'DELETE FROM ItineraryAccommodationTours ' +
       'WHERE ItineraryAccommodation_id = ' + IntToStr(ItinAccommodationCds['ItineraryAccommodation_id'])

  else if ItineraryPC.ActivePageIndex = 2 then
     QueryString := 'DELETE FROM ItineraryServicesTours ' +
       'WHERE ItineraryServices_id = ' + IntToStr(ItinServiceCds['ItineraryServices_id'])

  else if ItineraryPC.ActivePageIndex = 3 then
     QueryString := 'DELETE FROM ItineraryTransportTours ' +
       'WHERE ItineraryTransport_id = ' + IntToStr(ItinTransportCds['ItineraryTransport_id'])

  else if ItineraryPC.ActivePageIndex = 4 then
     QueryString := 'DELETE FROM ItineraryPackagesTours ' +
       'WHERE ItineraryPackages_id = ' + IntToStr(ItinPackagesCds['ItineraryPackages_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  if ItineraryPC.ActivePageIndex = 0 then
    QueryString := 'DELETE FROM ItineraryTickets ' +
    'WHERE ItineraryTickets_id = ' + IntToStr(ItinTicketsCds['ItineraryTickets_id'])

  else if ItineraryPC.ActivePageIndex = 1 then
    QueryString := 'DELETE FROM ItineraryAccommodation ' +
    'WHERE ItineraryAccommodation_id = ' + IntToStr(ItinAccommodationCds['ItineraryAccommodation_id'])

  else if ItineraryPC.ActivePageIndex = 2 then
    QueryString := 'DELETE FROM ItineraryServices ' +
    'WHERE ItineraryServices_id = ' + IntToStr(ItinServiceCds['ItineraryServices_id'])

  else if ItineraryPC.ActivePageIndex = 3 then
    QueryString := 'DELETE FROM ItineraryTransport ' +
    'WHERE ItineraryTransport_id = ' + IntToStr(ItinTransportCds['ItineraryTransport_id'])

  else if ItineraryPC.ActivePageIndex = 4 then
    QueryString := 'DELETE FROM ItineraryPackages ' +
    'WHERE ItineraryPackages_id = ' + IntToStr(ItinPackagesCds['ItineraryPackages_id']);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;
  GpSds.Free;

  ItinTicketsCds.Close;
  ItinTicketsCds.Open;

  ItinAccommodationCds.Close;
  ItinAccommodationCds.Open;

  ItinServiceCds.Close;
  ItinServiceCds.Open;

  ItinTransportCds.Close;
  ItinTransportCds.Open;

  ItinPackagesCds.Close;
  ItinPackagesCds.Open;


{ if MessageDlg ('Are you sure you want to delete ?',mtInformation,[mbNo,mbYes],0) = mrYes then
    begin
      if ItineraryPC.ActivePageIndex = 0 then
        begin
          TempQry.Close;
          TempQry.SQL.Clear;
          TempQry.SQL.Add('delete from itinerarytickets where itinerarytickets_id = ' +
            IntToStr(ItinTravelQryItinerarytickets_id.value));
          TempQry.ExecSQL;

          // Refresh Grid
          ItinTravelQry.Close;
          ItinTravelQry.Open;
        end

      else if pagecontrol1.ActivePage = TabSheet2 then
        begin
          TempQry.Close;
          TempQry.SQL.Clear;
          TempQry.SQL.Add('delete from ItineraryAccommodation where itineraryaccommodation_id = ' +
          IntToStr(ItinAccQryitineraryaccommodation_id.value));
          TempQry.ExecSQL;

          // Refresh Grid
          ItinAccQry.Close;
          ItinAccQry.Open;
        end

      else if pagecontrol1.ActivePage = TabSheet3 then
        begin
          TempQry.Close;
          TempQry.SQL.Clear;
          TempQry.SQL.Add('delete from ItineraryServices where itineraryservices_id = ' +
            IntToStr(ItinSSQryitineraryservices_id.value));
          TempQry.ExecSQL;

          // Refresh Grid
          ItinSSQry.Close;
          ItinSSQry.Open;
        end

        else if pagecontrol1.ActivePage = TabSheet4 then
        begin
          TempQry.Close;
          TempQry.SQL.Clear;
          TempQry.SQL.Add('delete from  itinerarytransport where  itinerarytransport_id = ' +
            IntToStr(ItinTransQryitinerarytransport_id.value));
          TempQry.ExecSQL;

          // Refresh Grid
          ItinTransQry.Close;
          ItinTransQry.Open;
        end

        else if pagecontrol1.ActivePage = TabSheet5 then
        begin
          TempQry.Close;
          TempQry.SQL.Clear;
          TempQry.SQL.Add('delete from  itinerarypackages where  itinerarypackages_id = ' +
            IntToStr(ItinPackQryitineraryPackages_id.value));
          TempQry.ExecSQL;

          // Refresh Grid
          ItinPackQry.Close;
          ItinPackQry.Open;
        end
    end;
  end;                                                    }
end;

procedure TItineraryForm.cxButton2Click(Sender: TObject);
var
  ItinCreateSds : TSQLDataSet;
begin
  if ItinDepDatesForm = nil then
    Application.CreateForm(TItinDepDatesForm,ItinDepDatesForm);

    ItinDepDatesForm.ShowModal;

  if ItinDepDatesForm.ModalResult = MrOk then
  begin

    ItinCreateSds := TSQLDataSet.Create(nil);
    ItinCreateSds.SQLConnection := BackOfficeDataModule.SQLConnection;
    ItinCreateSds.CommandText := '';
    ItinCreateSds.CommandText := 'Exec p_CreateItineraries '+IntToStr(_ItinDepDatesForm_Masters_id) + ','+
    ''''+ FormatDateTime('mm/dd/yyyy', VarToDateTime(_ItinDepDatesForm_MasterTourDate))+ ''' ';
    ItinCreateSds.ExecSQL;

    _ItineraryForm_Masters_id := _ItinDepDatesForm_Masters_id;
    _ItineraryForm_MasterCode := _ItinDepDatesForm_MasterCode;
    _ItineraryForm_MasterTourDate := _ItinDepDatesForm_MasterTourDate;

    if ItineraryForm = nil then
       Application.Createform(TItineraryForm, ItineraryForm);

    ItinCreateSds.Free;

    ItinerariesCds.Locate('Masters_id;DepartureDate',
      VarArrayOf([_ItineraryForm_Masters_id,_ItineraryForm_MasterTourDate]),[]);

  end;

  ItinDepDatesForm.Release;
  ItinDepDatesForm := nil;

end;

procedure TItineraryForm.ItinerariesCdsAfterScroll(DataSet: TDataSet);
begin

  if ItinTicketsCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if ItinTicketsCds.RecordCount = 0 then
        ItinTickets.ImageIndex := -1
      else
        ItinTickets.Imageindex := 0;
    end;

  if ItinAccommodationCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if ItinAccommodationCds.RecordCount = 0 then
        ItinAccommodation.ImageIndex := -1
      else
        ItinAccommodation.Imageindex := 1;
    end;

  if ItinServiceCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if ItinServiceCds.RecordCount = 0 then
        ItinServices.ImageIndex := -1
      else
        ItinServices.Imageindex := 2;
    end;

  if ItinTransportCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if ItinTransportCds.RecordCount = 0 then
        ItinTransport.ImageIndex := -1
      else
        ItinTransport.Imageindex := 3;
    end;

  if ItinPackagesCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if ItinPackagesCds.RecordCount = 0 then
        ItinPackages.ImageIndex := -1
      else
        ItinPackages.Imageindex := 4;
    end;


end;

procedure TItineraryForm.Edit2Click(Sender: TObject);
begin



  // Packages
  if ItineraryPC.ActivePageIndex = 4 then
    begin

      if ItinPackagesCds['ItineraryPackages_id'] = null then
        raise exception.create ('Please select a Tour first');

      ItineraryPackagesForm_Level := GetUserLevel(g_users_id, 4000);

      if ItineraryPackagesForm_Level < 2 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          exit;
        end;

      ItineraryPackagesForm_Itineraries_id := ItinPackagesCds['Itineraries_id'];
      ItineraryPackagesForm_Mode := 2;
      ItineraryPackagesForm_ItineraryPackages_id := ItinPackagesCds['ItineraryPackages_id'];

      if ItineraryPackagesForm = nil then
        Application.CreateForm(TItineraryPackagesForm, ItineraryPackagesForm);

      ItineraryPackagesForm.Visible := false;
      ItineraryPackagesForm.ShowModal;

      ItinPackagesCds.Close;
      ItinPackagesCds.Open;

      FreeAndNil(ItineraryPackagesForm);

    end;

end;

procedure TItineraryForm.Add2Click(Sender: TObject);
begin

  // Packages
  if ItineraryPC.ActivePageIndex = 4 then
    begin

      ItineraryPackagesForm_Level := GetUserLevel(g_users_id, 4000);

      if ItineraryPackagesForm_Level < 2 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          exit;
        end;

      ItineraryPackagesForm_Itineraries_id := _ItineraryForm_Itineraries_id;
      ItineraryPackagesForm_Mode := 1;
      ItineraryPackagesForm_ItineraryPackages_id := -1;

      if ItineraryPackagesForm = nil then
        Application.CreateForm(TItineraryPackagesForm, ItineraryPackagesForm);

      ItineraryPackagesForm.Visible := false;
      ItineraryPackagesForm.ShowModal;

      ItinPackagesCds.Close;
      ItinPackagesCds.Open;

      FreeAndNil(ItineraryPackagesForm);

    end;

end;

end.
