unit MasterTickets2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls, cxMemo,
  cxDBEdit, cxDBLookupComboBox, cxSpinEdit, cxTimeEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxNavigator,
  cxDBNavigator, DateUtils;

type
  TMasterTickets2Form = class(TCustom_1ML_1DG_Form)
    MasterCdsmastertickets_id: TIntegerField;
    MasterCdsday: TIntegerField;
    MasterCdsflightno: TStringField;
    MasterCdstrainno: TStringField;
    MasterCdstours: TStringField;
    MasterCdsdeparture: TSQLTimeStampField;
    MasterCdsarrival: TSQLTimeStampField;
    MasterCdsadvicenumpaxdays: TIntegerField;
    MasterCdsadvicenamepaxdays: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsclassid: TIntegerField;
    MasterCdsremarks: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdstickets_id: TIntegerField;
    MasterCdsfrom_cities_id: TIntegerField;
    MasterCdsto_cities_id: TIntegerField;
    MasterCdsFromStations_id: TIntegerField;
    MasterCdsToStations_id: TIntegerField;
    DetailCdsmasterticketstours_id: TIntegerField;
    DetailCdsmastertickets_id: TIntegerField;
    DetailCdstourcodes_id: TIntegerField;
    Label3: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxModeLCMB: TcxDBLookupComboBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    Label12: TLabel;
    Label10: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton3: TcxButton;
    cxGrid1DBBandedTableView1masterticketstours_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mastertickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tourcodes_id: TcxGridDBBandedColumn;
    Label1: TLabel;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    CitiesDs: TDataSource;
    CitiesCdsState: TStringField;
    TicketsSds: TSQLDataSet;
    TicketsDsp: TDataSetProvider;
    TicketsCds: TClientDataSet;
    TicketsCdstickets_id: TIntegerField;
    TicketsCdsdetails: TStringField;
    TicketsDs: TDataSource;
    ClassSds: TSQLDataSet;
    ClassCds: TClientDataSet;
    ClassCdsClass_id: TIntegerField;
    ClassCdsclass: TStringField;
    ClassCdscode: TStringField;
    ClassCdstickets_id: TIntegerField;
    ClassDsp: TDataSetProvider;
    ClassDs: TDataSource;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourCode: TStringField;
    TourCodeDs: TDataSource;
    TourCodeCdsMasters_id: TIntegerField;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    AgentDs: TDataSource;
    AgentCdsOrgCity: TStringField;
    cxButton1: TcxButton;
    AgentCdsCities_id: TIntegerField;
    PopupMenu1: TPopupMenu;
    AddAllTourCodes1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DetailCdsAfterDelete(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure cxModeLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure AddAllTourCodes1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    procedure UpdateTourString;
  public
    { Public declarations }
  end;

var
  MasterTickets2Form: TMasterTickets2Form;
  MasterTickets2Form_Level: integer;
  MasterTickets2Form_Masters_id: integer;
  MasterTickets2Form_Mode: integer;
  MasterTickets2Form_MasterTickets_id: integer;

implementation

uses BackOfficeDM, SearchSortFm, TicketsFm;

{$R *.dfm}

procedure TMasterTickets2Form.FormCreate(Sender: TObject);
begin

  Caption := 'Master Tickets';
  Width := 770;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Tickets';
  cxTabSheet2.Caption := 'Tours';

  ActivateInCustom;

  MasterSds.Params[0].Value := MasterTickets2Form_Masters_id;

  inherited;

  AgentCds.Open;
  CitiesCds.Open;
  TicketsCds.Open;
  ClassCds.Open;
  TourCodeCds.Open;
  
  if MasterTickets2Form_Mode = 1 then
    MasterCds.Insert;

  if MasterTickets2Form_Mode = 2 then
    begin
      if MasterTickets2Form_MasterTickets_id <> null then
        MasterCds.Locate('MasterTickets_id', MasterTickets2Form_MasterTickets_id, []);
      cxModeLCMBPropertiesEditValueChanged(nil);
    end;

end;

procedure TMasterTickets2Form.ActivateInCustom;
begin
  Custom_MasterCdsName := 'MasterTickets';
  Custom_MasterKeyField := 'MasterTickets_id';

  Custom_DetailCdsName := 'MasterTicketsTours';
  Custom_DetailKeyField := 'MasterTicketsTours_id';

  Custom_AdmLevel := MasterTickets2Form_Level;

  Custom_FormWidth := 915;
  Custom_FormHeight := 660 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;


end;


procedure TMasterTickets2Form.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Masters_id'] = null) then
    raise Exception.Create('Please select a Master Tour');

  if (MasterCds['Day'] = null) then
    raise Exception.Create('Please enter the Day');

  if (MasterCds['From_Cities_id'] = null) then
    raise Exception.Create('Please enter the From City');

  if (MasterCds['To_Cities_id'] = null) then
    raise Exception.Create('Please enter the To City');

  if (MasterCds['Tickets_id'] = null) then
    raise Exception.Create('Please enter the Mode');

  if (MasterCds['Arrival'] = null) then
    raise Exception.Create('Please enter the Arrival');

  if (MasterCds['Departure'] = null) then
    raise Exception.Create('Please enter the Departure');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['MasterTickets_id'] = null then
    raise Exception.Create('MasterTickets_id is not assigned');

end;

function TMasterTickets2Form.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM MasterTickets ' +
    'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
    'AND Day = ' + IntToStr(MasterCds['Day']) + ' ' +
    'AND From_Cities_id = ' + IntToStr(MasterCds['From_Cities_id']) + ' ' +
    'AND To_Cities_id = ' + IntToStr(MasterCds['To_Cities_id']);

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (MasterTickets_id <> ' + IntToStr(MasterCds['MasterTickets_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (GpSds['x_Count'] > 0) then
    x_Duplicate := True;

  GpSds.Free;

  Result := x_Duplicate;
end;


procedure TMasterTickets2Form.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM MasterTicketsTours ' +
    'WHERE MasterTickets_id = ' + IntToStr(MasterCds['MasterTickets_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TMasterTickets2Form.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if (DetailCds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (DetailCds['MasterTickets_id'] = null) then
    raise Exception.Create('Please enter the Ticket Details first');

  if (IsDetailRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if (DetailCds['MasterTicketsTours_id'] = null) then
    raise Exception.Create('MasterTicketsTours_id is not assigned');

end;

function TMasterTickets2Form.IsDetailRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM MasterTicketsTours ' +
    'WHERE MasterTickets_id = ' + IntToStr(DetailCds['MasterTickets_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(DetailCds['TourCodes_id'])  + ' ';

  if DetailCds.State = dsEdit then
    QueryString := QueryString + ' AND (MasterTicketsTours_id <> ' + IntToStr(DetailCds['MasterTicketsTours_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


procedure TMasterTickets2Form.DetailCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateTourString;
end;

procedure TMasterTickets2Form.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateTourString;
end;

procedure TMasterTickets2Form.cxButton3Click(Sender: TObject);
begin
  inherited;
  UpdateTourString;
end;

procedure TMasterTickets2Form.UpdateTourString;
var
  x_BookMark: TBookMarkStr;
  x_mode: integer;
  x_TourCode, QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  x_mode := 0;
  if (not DetailCds.Eof) then
    x_mode := 1;

  if (x_mode = 1) then
    x_BookMark := DetailCds.Bookmark;

  QueryString := 'SELECT tc.TourCode FROM MasterTicketsTours mtt ' +
    'LEFT JOIN TourCodes tc ON mtt.TourCodes_id = tc.TourCodes_id ' +
    'WHERE mtt.MasterTickets_id = ' + IntToStr(MasterCds['MasterTickets_id']) + ' ' +
    'AND tc.TourCode IS NOT NULL';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_TourCode := '';
  while (not GpSds.EOF) do
    begin
      if x_TourCode > '' then
        x_TourCode := x_TourCode + '/';
      x_TourCode := x_TourCode + GpSds['TourCode'];
      GpSds.Next;
    end;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['Tours'] := x_TourCode;

  MasterCds.Post;

  if (x_mode = 1) then
    DetailCds.Bookmark := x_BookMark;

  GpSds.Free;

end;


procedure TMasterTickets2Form.cxModeLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if (cxModeLCMB.EditValue <> null) and (TicketsCds.State <> dsInactive) then
      TicketsCds.Locate('Tickets_id',cxModeLCMB.EditValue,[]);
  except
  end;

end;

procedure TMasterTickets2Form.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Masters_id'] := MasterTickets2Form_Masters_id;
end;

procedure TMasterTickets2Form.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  DetailCds.First;
  if DetailCds.Eof then
    begin
      ShowMessage ('Please enter the Tours');
      DetailCds.Insert;
      cxGrid1.SetFocus;
    end;

end;

procedure TMasterTickets2Form.cxButton2Click(Sender: TObject);
begin
  inherited;

  if (MasterCds['Tickets_id']=null) or (MasterCds['Tickets_id']=0) then
    exit;

  TicketsForm_Level := 1;
  TicketsForm_FormType := 2;
  TicketsForm_Type := 1;

  if MasterCDS['Tickets_id'] = 1 then
    TicketsForm_Type := 1
  else if MasterCDS['Tickets_id'] = 2 then
    TicketsForm_Type := 2
  else if MasterCDS['Tickets_id'] = 3 then
    TicketsForm_Type := 3
  else if MasterCDS['Tickets_id'] = 4 then
    TicketsForm_Type := 4;

  TicketsForm_FromCities_id := MasterCDS['From_Cities_id'];
  TicketsForm_ToCities_id := MasterCDS['To_Cities_id'];
  TicketsForm_Wef := IncYear(Date,-1);

  if TicketsForm = nil then
    Application.CreateForm(TTicketsForm, TicketsForm);

  TicketsForm.FormStyle := fsNormal;
  TicketsForm.Visible := False;   //Important

  TicketsForm.ShowModal;

  if TicketsForm.ModalResult = mrOK then
  begin
    if MasterCds.State = dsBrowse then
      MasterCds.Edit;
    if MasterCds['Tickets_id'] = 1 then
    begin

      if TicketsForm.FlightsCds['FlightNo'] <> null then
        MasterCds['FlightNo'] := TicketsForm.FlightsCds['FlightNo'];

      if TicketsForm.FlightsCds['Arrival'] <> null then
        MasterCds['Arrival'] := TicketsForm.FlightsCds['Arrival'];

      if TicketsForm.FlightsCds['Departure'] <> null then
        MasterCds['Departure'] := TicketsForm.FlightsCds['Departure'];
    end;

    if MasterCds['Tickets_id'] = 2 then
    begin
      if TicketsForm.TrainsCds['TrainName'] <> null then
        MasterCds['FlightNo'] := Trim(TicketsForm.TrainsCds['TrainNo']) + ' ' + Trim(TicketsForm.TrainsCds['TrainName']);

      if TicketsForm.TrainsCds['TrainNo'] <> null then
        MasterCds['TrainNo'] := TicketsForm.TrainsCds['TrainNo'];

      if TicketsForm.TrainsCds['Arrival'] <> null then
        MasterCds['Arrival'] := TicketsForm.TrainsCds['Arrival'];

      if TicketsForm.TrainsCds['Departure'] <> null then
        MasterCds['Departure'] := TicketsForm.TrainsCds['Departure'];

      if TicketsForm.TrainsCds['FromStations_id'] <> null then
        MasterCds['FromStations_id'] := TicketsForm.TrainsCds['FromStations_id'];

      if TicketsForm.TrainsCds['ToStations_id'] <> null then
        MasterCds['ToStations_id'] := TicketsForm.TrainsCds['ToStations_id'];

    end;

    if MasterCds['Tickets_id'] = 3 then
    begin
      if TicketsForm.BusesCds['busno'] <> null then
        MasterCds['FlightNo']:= TicketsForm.BusesCds['BusNo'];

      if TicketsForm.BusesCds['Arrival'] <> null then
        MasterCds['Arrival'] := TicketsForm.BusesCds['Arrival'];

      if TicketsForm.BusesCds['Departure'] <> null then
        MasterCds['Departure'] := TicketsForm.BusesCds['Departure'];
    end;

    if MasterCds['Tickets_id'] = 4 then
    begin
      MasterCds['FlightNo']:= NULL;
      MasterCds['Arrival'] := NULL;
      MasterCds['Departure'] := NULL;
    end;

  end;

  TicketsForm.Release;
  TicketsForm := nil;

end;

procedure TMasterTickets2Form.cxButton1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i, x_Cities_id: integer;
begin
  inherited;

  if MasterCds['Addressbook_id'] = null then
    raise exception.create ('Please enter the Agent');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'SELECT Cities_id FROM Addressbook ' +
    'WHERE Addressbook_id = ' + IntToStr(MasterCds['Addressbook_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Cities_id := -1;
  if (not GpSds.Eof) and (GpSds['Cities_id']<>null) then
    x_Cities_id := GpSds['Cities_id'];

  QueryString := 'SELECT Addressbook_id, Organisation, City ' +
    'FROM dbo.fn_addressbook(2,''A'') ' +
    'WHERE Cities_id = ' + IntToStr(x_Cities_id);

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchCds.Close;
  SearchSortForm.SearchSds.Close;

  SearchSortForm.SearchSds.CommandText := QueryString;

  SearchSortForm.SearchSds.Open;
  SearchSortForm.SearchCds.Open;

  for i := 0 to 2 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Addressbook_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Organisation';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'City';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := false;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Agent';
  SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'City';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Addressbook_id';

  if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if MasterCds.State = dsBrowse then
            MasterCds.Edit;
          MasterCds['Addressbook_id'] := SearchSortForm.SearchCds['Addressbook_id'];
        end;

    end
  else
    ShowMessage('Record not found');

  SearchSortForm.Free;
  SearchSortForm := nil;

  GpSds.Free;

end;

procedure TMasterTickets2Form.AddAllTourCodes1Click(Sender: TObject);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  TourCodeCds.First;

  while not (TourCodeCds.eof) do
    begin

      QueryString := 'SELECT COUNT(*) AS x_count FROM MasterTicketsTours mtt ' +
        'LEFT JOIN TourCodes tc ON mtt.TourCodes_id = tc.TourCodes_id ' +
        'WHERE mtt.MasterTickets_id = ' + IntToStr(MasterCds['MasterTickets_id']) + ' ' +
        'AND tc.TourCode = ' + QuotedStr(TourCodeCds['TourCode']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if GpSds['x_count'] = 0 then
        begin
          DetailCds.Insert;
          DetailCds['TourCodes_id'] := TourCodeCds['TourCodes_id'];
          DetailCds.Post;
        end;

      TourCodeCds.Next;
    end;

  GpSds.Free;
    
end;

end.
