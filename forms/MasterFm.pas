unit MasterFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, Menus, cxTimeEdit, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLookAndFeelPainters, cxButtons, ImgList, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGroupBox, cxLabel;

type
  TMasterForm = class(TForm)
    Panel2: TPanel;
    GroupBox2: TcxGroupBox;
    Panel1: TPanel;
    SearchLbl: TcxLabel;
    KeyIdDbText: TDBText;
    SearchEdit: TcxTextEdit;
    MastersPC: TcxPageControl;
    MasterTickets: TcxTabSheet;
    MasterAccommodation: TcxTabSheet;
    MasterServices: TcxTabSheet;
    MasterTransport: TcxTabSheet;
    MasterPackages: TcxTabSheet;
    TicketsGrid: TcxGrid;
    TicketsGridDBTableView1: TcxGridDBTableView;
    TicketsGridLevel1: TcxGridLevel;
    AccommodationGrid: TcxGrid;
    AccommodationGridDBTableView1: TcxGridDBTableView;
    AccommodationGridLevel1: TcxGridLevel;
    ServicesGrid: TcxGrid;
    servicesGridDBTableView1: TcxGridDBTableView;
    ServicesGridLevel1: TcxGridLevel;
    TransportGrid: TcxGrid;
    TransportGridDBTableView1: TcxGridDBTableView;
    TransportGridLevel1: TcxGridLevel;
    PackagesGrid: TcxGrid;
    PackagesGridDBTableView1: TcxGridDBTableView;
    PackagesGridLevel1: TcxGridLevel;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    AccommodationSds: TSQLDataSet;
    AccommodationDsp: TDataSetProvider;
    AccommodationCds: TClientDataSet;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    TransportSds: TSQLDataSet;
    TransportCds: TClientDataSet;
    PackagesSds: TSQLDataSet;
    PackagesDsp: TDataSetProvider;
    PackagesCds: TClientDataSet;
    TicketsCdsMasterTickets_id: TIntegerField;
    TicketsCdsMasterCode: TStringField;
    TicketsCdsMasters_id: TIntegerField;
    TicketsCdsOrganisation: TStringField;
    TicketsCdsDay: TIntegerField;
    TicketsCdsDetails: TStringField;
    TicketsCdsFlightNo: TStringField;
    TicketsCdsFrom_City: TStringField;
    TicketsCdsTo_City: TStringField;
    TicketsCdsTours: TStringField;
    TicketsCdsDeparture: TSQLTimeStampField;
    TicketsCdsArrival: TSQLTimeStampField;
    TicketsCdsAdviceNumPaxDays: TIntegerField;
    TicketsCdsAdviceNamePaxDays: TIntegerField;
    TicketsCdsClass: TStringField;
    AccommodationDs: TDataSource;
    ServiceDs: TDataSource;
    TransportDs: TDataSource;
    PackagesDs: TDataSource;
    TicketsDs: TDataSource;
    AccommodationCdsMasterAccommodation_id: TIntegerField;
    AccommodationCdsMasterCode: TStringField;
    AccommodationCdsMasters_id: TIntegerField;
    AccommodationCdsCity: TStringField;
    AccommodationCdscities_id: TIntegerField;
    AccommodationCdsOrganisation: TStringField;
    AccommodationCdsDayIn: TIntegerField;
    AccommodationCdsDayOut: TIntegerField;
    AccommodationCdsTours: TStringField;
    AccommodationCdsRemarks: TStringField;
    AccommodationCdsAc: TBooleanField;
    AccommodationCdsRoomType: TStringField;
    AccommodationCdsPlan: TStringField;
    ServiceCdsMasterServices_id: TIntegerField;
    ServiceCdsMasterCode: TStringField;
    ServiceCdsMasters_id: TIntegerField;
    ServiceCdsCity: TStringField;
    ServiceCdsCities_id: TIntegerField;
    ServiceCdsOrganisation: TStringField;
    ServiceCdsDay: TIntegerField;
    ServiceCdsService: TStringField;
    ServiceCdsEntranceFees: TBooleanField;
    ServiceCdsStartingTime: TSQLTimeStampField;
    ServiceCdsTours: TStringField;
    ServiceCdsRemarks: TStringField;
    ServiceCdsTransport: TBooleanField;
    ServiceCdsAC: TBooleanField;
    ServiceCdsGuide: TBooleanField;
    TransportDsp: TDataSetProvider;
    TransportCdsMasterTransport_id: TIntegerField;
    TransportCdsFromPlace: TStringField;
    TransportCdsFromDay: TIntegerField;
    TransportCdsFromTime: TSQLTimeStampField;
    TransportCdsToPlace: TStringField;
    TransportCdsToDay: TIntegerField;
    TransportCdsToTime: TSQLTimeStampField;
    TransportCdsRemarks: TStringField;
    TransportCdsTours: TStringField;
    TransportCdsAC: TBooleanField;
    TransportCdsDropOffDays: TIntegerField;
    TransportCdsMasters_id: TIntegerField;
    TransportCdsCity: TStringField;
    TransportCdsCity_1: TStringField;
    TransportCdsOrganisation: TStringField;
    TransportCdsdropoffkms: TIntegerField;
    PackagesCdspackage: TStringField;
    PackagesCdsmasterpackages_id: TIntegerField;
    PackagesCdsfrom_day: TIntegerField;
    PackagesCdsfrom_time: TSQLTimeStampField;
    PackagesCdsfrom_addressbook_id: TIntegerField;
    PackagesCdsto_time: TSQLTimeStampField;
    PackagesCdsto_place: TStringField;
    PackagesCdsaddressbook_id: TIntegerField;
    PackagesCdsremarks: TStringField;
    PackagesCdstours: TStringField;
    PackagesCdsfrom_place: TStringField;
    PackagesCdsmasters_id: TIntegerField;
    PackagesCdsAgent: TStringField;
    PackagesCdsFromagent: TStringField;
    PackagesCdsMasterCode: TStringField;
    PackagesCdsto_day: TIntegerField;
    TicketsGridDBTableView1Organisation: TcxGridDBColumn;
    TicketsGridDBTableView1Day: TcxGridDBColumn;
    TicketsGridDBTableView1Details: TcxGridDBColumn;
    TicketsGridDBTableView1FlightNo: TcxGridDBColumn;
    TicketsGridDBTableView1From_City: TcxGridDBColumn;
    TicketsGridDBTableView1To_City: TcxGridDBColumn;
    TicketsGridDBTableView1Tours: TcxGridDBColumn;
    TicketsGridDBTableView1Departure: TcxGridDBColumn;
    TicketsGridDBTableView1Arrival: TcxGridDBColumn;
    TicketsGridDBTableView1AdviceNumPaxDays: TcxGridDBColumn;
    TicketsGridDBTableView1AdviceNamePaxDays: TcxGridDBColumn;
    TicketsGridDBTableView1Class: TcxGridDBColumn;
    servicesGridDBTableView1City: TcxGridDBColumn;
    servicesGridDBTableView1Organisation: TcxGridDBColumn;
    servicesGridDBTableView1Day: TcxGridDBColumn;
    servicesGridDBTableView1Service: TcxGridDBColumn;
    servicesGridDBTableView1EntranceFees: TcxGridDBColumn;
    servicesGridDBTableView1StartingTime: TcxGridDBColumn;
    servicesGridDBTableView1Tours: TcxGridDBColumn;
    servicesGridDBTableView1Remarks: TcxGridDBColumn;
    servicesGridDBTableView1Transport: TcxGridDBColumn;
    servicesGridDBTableView1AC: TcxGridDBColumn;
    servicesGridDBTableView1Guide: TcxGridDBColumn;
    TransportGridDBTableView1FromPlace: TcxGridDBColumn;
    TransportGridDBTableView1FromDay: TcxGridDBColumn;
    TransportGridDBTableView1FromTime: TcxGridDBColumn;
    TransportGridDBTableView1ToPlace: TcxGridDBColumn;
    TransportGridDBTableView1ToDay: TcxGridDBColumn;
    TransportGridDBTableView1ToTime: TcxGridDBColumn;
    TransportGridDBTableView1Remarks: TcxGridDBColumn;
    TransportGridDBTableView1Tours: TcxGridDBColumn;
    TransportGridDBTableView1AC: TcxGridDBColumn;
    TransportGridDBTableView1DropOffDays: TcxGridDBColumn;
    TransportGridDBTableView1City: TcxGridDBColumn;
    TransportGridDBTableView1City_1: TcxGridDBColumn;
    TransportGridDBTableView1Organisation: TcxGridDBColumn;
    TransportGridDBTableView1dropoffkms: TcxGridDBColumn;
    PackagesGridDBTableView1package: TcxGridDBColumn;
    PackagesGridDBTableView1from_day: TcxGridDBColumn;
    PackagesGridDBTableView1tours: TcxGridDBColumn;
    PackagesGridDBTableView1Agent: TcxGridDBColumn;
    PackagesGridDBTableView1to_day: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Add1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    AccommodationGridDBTableView1City: TcxGridDBColumn;
    AccommodationGridDBTableView1Organisation: TcxGridDBColumn;
    AccommodationGridDBTableView1DayIn: TcxGridDBColumn;
    AccommodationGridDBTableView1DayOut: TcxGridDBColumn;
    AccommodationGridDBTableView1Tours: TcxGridDBColumn;
    AccommodationGridDBTableView1Remarks: TcxGridDBColumn;
    AccommodationGridDBTableView1Ac: TcxGridDBColumn;
    AccommodationGridDBTableView1RoomType: TcxGridDBColumn;
    AccommodationGridDBTableView1Plan: TcxGridDBColumn;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCds: TClientDataSet;
    MasterDs: TDataSource;
    cxMasterLcmb: TcxLookupComboBox;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsmastercode: TStringField;
    MasterCdsname: TStringField;
    cxButton1: TcxButton;
    ImageList1: TImageList;
    N1: TMenuItem;
    Add2: TMenuItem;
    Edit2: TMenuItem;
    PackagesGridDBTableView1masterpackages_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Add1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure cxMasterLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure Add2Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MasterForm: TMasterForm;
  _MasterForm_Level: integer;

implementation

uses BackOfficeDM, MasterTicketsFm , MasterAccomodationFm,
  MasterServicesFm, MasterTransportFm, MasterPackagesFm, GeneralUt, MainFm,
  MasterTickets2Fm, MasterPackages2Fm;

var
  AdmLevel: Integer;
{$R *.dfm}

procedure TMasterForm.FormCreate(Sender: TObject);
begin
  MasterCds.Close;
  MasterCds.Open;

  cxMasterLCMB.EditValue := MasterCds['Masters_id'];

  AdmLevel := _MasterForm_Level;

  MastersPC.ActivePageIndex := 0;

  TicketsCds.Active := True;
  AccommodationCds.Active := True;
  ServiceCds.Active := True;
  TransportCds.Active := True;
  PackagesCds.Active := True;

end;

procedure TMasterForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMasterForm.FormDestroy(Sender: TObject);
begin
  MasterForm := nil;
end;

procedure TMasterForm.Add1Click(Sender: TObject);
begin
  _MasterForm_Level := GetUserLevel(g_users_id, 4000);

  If _MasterForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;


  if cxMasterLcmb.EditValue = null then
    raise exception.create ('Please select a Tour first');

  // Tickets
  if MastersPC.ActivePageIndex = 0 then
    begin

      // Insert Mode
      _MasterTicketsForm_Mode := 'I';

      _MasterTicketsForm_Level := _MasterForm_Level;

      if MasterTicketsForm = Nil then
        Application.CreateForm(TMasterTicketsForm, MasterTicketsForm);

      MasterTicketsForm.ShowModal;

      TicketsCds.Close;
      TicketsCds.Open;

      FreeAndNil(MasterTicketsForm);

    end

  // Accommodation
  else if MastersPC.ActivePageIndex = 1 then
    begin

      // Insert Mode
      _MasterAccommodationForm_Mode := 'I';

      _MasterAccommodationForm_Level := _MasterForm_Level;

      if MasterAccommodationForm = Nil then
        Application.CreateForm(TMasterAccommodationForm, MasterAccommodationForm);

      MasterAccommodationForm.ShowModal;

      AccommodationCds.Close;
      AccommodationCds.Open;

      FreeAndNil(MasterAccommodationForm);

    end

  // Sight Seeing
  else if MastersPC.ActivePageIndex = 2 then
    begin

      // Insert Mode
      _MasterServicesForm_Mode := 'I';

      _MasterServicesForm_Level := _MasterForm_Level;

      if MasterServicesForm = Nil then
        Application.CreateForm(TMasterServicesForm, MasterServicesForm);

      MasterServicesForm.ShowModal;

      ServiceCds.Close;
      ServiceCds.Open;

      FreeAndNil(MasterServicesForm);

    end

  // Transport
  else if MastersPC.ActivePageIndex = 3 then
    begin

      // Insert Mode
      _MasterTransportForm_Mode := 'I';

      _MasterTransportForm_Level := _MasterForm_Level;

      if MasterTransportForm = Nil then
        Application.CreateForm(TMasterTransportForm, MasterTransportForm);

      MasterTransportForm.ShowModal;

      TransportCds.Close;
      TransportCds.Open;

      FreeAndNil(MasterTransportForm);

    end

  // packages
  else if MastersPC.ActivePageIndex = 4 then
    begin

      // Insert Mode
      _MasterPackagesForm_Mode := 'I';

      _MasterPackagesForm_Level := _MasterForm_Level;

      if MasterPackagesForm = Nil then
        Application.CreateForm(TMasterPackagesForm, MasterPackagesForm);

      MasterPackagesForm.ShowModal;

      PackagesCds.Close;
      PackagesCds.Open;

      FreeAndNil(MasterPackagesForm);

    end;

end;

procedure TMasterForm.Edit1Click(Sender: TObject);
begin
  _MasterForm_Level := GetUserLevel(g_users_id, 4000);

  If _MasterForm_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if cxMasterLcmb.EditValue = null then
    raise exception.create ('Please select a Tour first');

  // Tickets
  if MastersPC.ActivePageIndex = 0 then
    begin

      // Insert Mode
      _MasterTicketsForm_Mode := 'E';

      _MasterTicketsForm_Level := _MasterForm_Level;

      if MasterTicketsForm = Nil then
        Application.CreateForm(TMasterTicketsForm, MasterTicketsForm);

      MasterTicketsForm.ShowModal;

      TicketsCds.Close;
      TicketsCds.Open;

      FreeAndNil(MasterTicketsForm);

    end

  // Accommodation
  else if MastersPC.ActivePageIndex = 1 then
    begin

      // Insert Mode
      _MasterAccommodationForm_Mode := 'E';

      _MasterAccommodationForm_Level := _MasterForm_Level;

      if MasterAccommodationForm = Nil then
        Application.CreateForm(TMasterAccommodationForm, MasterAccommodationForm);

      MasterAccommodationForm.ShowModal;

      AccommodationCds.Close;
      AccommodationCds.Open;

      FreeAndNil(MasterAccommodationForm);

    end

  // Services
  else if MastersPC.ActivePageIndex = 2 then
    begin

      // Insert Mode
      _MasterServicesForm_Mode := 'E';

      _MasterServicesForm_Level := _MasterForm_Level;

      if MasterServicesForm = Nil then
        Application.CreateForm(TMasterServicesForm, MasterServicesForm);

      MasterServicesForm.ShowModal;

      ServiceCds.Close;
      ServiceCds.Open;

      FreeAndNil(MasterServicesForm);

    end

  // Transport
  else if MastersPC.ActivePageIndex = 3 then
    begin

      // Insert Mode
      _MasterTransportForm_Mode := 'E';

      _MasterTransportForm_Level := _MasterForm_Level;

      if MasterTransportForm = Nil then
        Application.CreateForm(TMasterTransportForm, MasterTransportForm);

      MasterTransportForm.ShowModal;

      TransportCds.Close;
      TransportCds.Open;

      FreeAndNil(MasterTransportForm);

    end

  // Packages
  else if MastersPC.ActivePageIndex = 4 then
    begin

      // Insert Mode
      _MasterPackagesForm_Mode := 'E';

      _MasterPackagesForm_Level := _MasterForm_Level;

      if MasterPackagesForm = Nil then
        Application.CreateForm(TMasterPackagesForm, MasterPackagesForm);

      MasterPackagesForm.ShowModal;

      PackagesCds.Close;
      PackagesCds.Open;

      FreeAndNil(MasterPackagesForm);

    end;

end;

procedure TMasterForm.Delete1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  _MasterForm_Level := GetUserLevel(g_users_id, 4020);

  If _MasterForm_Level < 3 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;


  if MastersPC.ActivePageIndex = 0 then
    begin
      QueryString := 'DELETE FROM MasterTicketsTours ' +
          'WHERE MasterTickets_id = ' + IntToStr(TicketsCds['MasterTickets_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'DELETE FROM MasterTickets ' +
        'WHERE MasterTickets_id = ' + IntToStr(TicketsCds['MasterTickets_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      TicketsCds.Close;
      TicketsCds.Open;
    end

  else if MastersPC.ActivePageIndex = 1 then
    begin
      QueryString := 'DELETE FROM MasterAccommodationTours ' +
          'WHERE MasterAccommodation_id = ' + IntToStr(AccommodationCds['MasterAccommodation_id']);
      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'DELETE FROM MasterAccommodation ' +
          'WHERE MasterAccommodation_id = ' + IntToStr(AccommodationCds['MasterAccommodation_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      AccommodationCds.Close;
      AccommodationCds.Open;
    end

  else if MastersPC.ActivePageIndex = 2 then
    begin
      QueryString := 'DELETE FROM MasterServicesTours ' +
          'WHERE MasterServices_id = ' + IntToStr(ServiceCds['MasterServices_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'DELETE FROM MasterServices ' +
          'WHERE MasterServices_id = ' + IntToStr(ServiceCds['MasterServices_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      ServiceCds.Close;
      ServiceCds.Open;
    end

  else if MastersPC.ActivePageIndex = 3 then
    begin
      QueryString := 'DELETE FROM MasterTransporttours ' +
          'WHERE MasterTransport_id = ' + IntToStr(TransportCds['MasterTransport_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'DELETE FROM MasterTransport ' +
          'WHERE MasterTransport_id = ' + IntToStr(TransportCds['MasterTransport_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      TransportCds.Close;
      TransportCds.Open;
    end

  else if MastersPC.ActivePageIndex = 4 then
    begin
      QueryString := 'DELETE FROM MasterPackagestours ' +
          'WHERE MasterPackages_id = ' + IntToStr(PackagesCds['MasterPackages_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      QueryString := 'DELETE FROM MasterPackages ' +
          'WHERE MasterPackages_id = ' + IntToStr(PackagesCds['MasterPackages_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

      PackagesCds.Close;
      PackagesCds.Open;
    end;

  GpSds.Free;

end;

procedure TMasterForm.cxMasterLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if CxMasterLCMB.EditValue <> null then
      MasterCds.Locate('Masters_id',CxMasterLCMB.EditValue,[]);
  except
  end;

end;

procedure TMasterForm.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TMasterForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin

  if TicketsCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if TicketsCds.RecordCount = 0 then
        MasterTickets.ImageIndex := -1
      else
        MasterTickets.Imageindex := 0;
    end;

  if AccommodationCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if AccommodationCds.RecordCount = 0 then
        MasterAccommodation.ImageIndex := -1
      else
        MasterAccommodation.Imageindex := 1;
    end;

  if ServiceCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if ServiceCds.RecordCount = 0 then
        MasterServices.ImageIndex := -1
      else
        MasterServices.Imageindex := 2;
    end;

  if TransportCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if TransportCds.RecordCount = 0 then
        MasterTransport.ImageIndex := -1
      else
        MasterTransport.Imageindex := 3;
    end;

  if PackagesCds.State in [dsbrowse, dsEdit, dsInsert] then
    begin
      if PackagesCds.RecordCount = 0 then
        MasterPackages.ImageIndex := -1
      else
        MasterPackages.Imageindex := 4;
    end;

end;

procedure TMasterForm.Add2Click(Sender: TObject);
begin

  MasterTickets2Form_Level := GetUserLevel(g_users_id, 4000);

  if MasterTickets2Form_Level < 2 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;


  if cxMasterLcmb.EditValue = null then
    raise exception.create ('Please select a Tour first');

  // Tickets
  if MastersPC.ActivePageIndex = 0 then
    begin

      MasterTickets2Form_Masters_id := cxMasterLcmb.EditValue;
      MasterTickets2Form_Mode := 1;

      if MasterTickets2Form = Nil then
        Application.CreateForm(TMasterTickets2Form, MasterTickets2Form);

      MasterTickets2Form.FormStyle := fsNormal;
      MasterTickets2Form.Visible := false;
      MasterTickets2Form.ShowModal;

      TicketsCds.Close;
      TicketsCds.Open;

      FreeAndNil(MasterTickets2Form);

    end
  else if MastersPC.ActivePageIndex = 4 then
    begin

      MasterPackages2Form_Level := GetUserLevel(g_users_id, 4000);

      if MasterPackages2Form_Level < 2 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          exit;
        end;

      MasterPackages2Form_Masters_id := cxMasterLcmb.EditValue;
      MasterPackages2Form_Mode := 1;
      MasterPackages2Form_MasterPackages_id := -1;

      if MasterPackages2Form = nil then
        Application.CreateForm(TMasterPackages2Form, MasterPackages2Form);

      MasterPackages2Form.Visible := false;
      MasterPackages2Form.ShowModal;

      PackagesCds.Close;
      PackagesCds.Open;

      FreeAndNil(MasterPackages2Form);

    end;



end;

procedure TMasterForm.Edit2Click(Sender: TObject);
begin

  if cxMasterLcmb.EditValue = null then
    raise exception.create ('Please select a Tour first');

  // Tickets
  if MastersPC.ActivePageIndex = 0 then
    begin

      MasterTickets2Form_Level := GetUserLevel(g_users_id, 4000);

      if MasterTickets2Form_Level < 2 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          exit;
        end;

      MasterTickets2Form_Masters_id := cxMasterLcmb.EditValue;
      MasterTickets2Form_Mode := 2;
      MasterTickets2Form_MasterTickets_id := TicketsCds['MasterTickets_id'];

      if MasterTickets2Form = nil then
        Application.CreateForm(TMasterTickets2Form, MasterTickets2Form);

      MasterTickets2Form.Visible := false;
      MasterTickets2Form.ShowModal;

      TicketsCds.Close;
      TicketsCds.Open;

      FreeAndNil(MasterTickets2Form);

    end

  // Packages
  else if MastersPC.ActivePageIndex = 4 then
    begin

      MasterPackages2Form_Level := GetUserLevel(g_users_id, 4000);

      if MasterPackages2Form_Level < 2 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          exit;
        end;

      MasterPackages2Form_Masters_id := cxMasterLcmb.EditValue;
      MasterPackages2Form_Mode := 2;
      MasterPackages2Form_MasterPackages_id := PackagesCds['MasterPackages_id'];

      if MasterPackages2Form = nil then
        Application.CreateForm(TMasterPackages2Form, MasterPackages2Form);

      MasterPackages2Form.Visible := false;
      MasterPackages2Form.ShowModal;

      PackagesCds.Close;
      PackagesCds.Open;

      FreeAndNil(MasterPackages2Form);

    end;

end;

end.


