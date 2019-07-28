unit ItineraryPackagesFm;

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
  cxDBNavigator, DateUtils, cxCalendar, cxCheckBox;

type
  TItineraryPackagesForm = class(TCustom_1ML_1DG_Form)
    Label3: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    cxCityLCMB: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label12: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton3: TcxButton;
    Label1: TLabel;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    CitiesDs: TDataSource;
    CitiesCdsState: TStringField;
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
    AgentCdsCities_id: TIntegerField;
    PopupMenu1: TPopupMenu;
    AddAllTourCodes1: TMenuItem;
    PackageSds: TSQLDataSet;
    PackageDsp: TDataSetProvider;
    PackageCds: TClientDataSet;
    PackageDs: TDataSource;
    PackageCdsPackages_id: TIntegerField;
    PackageCdsPackage: TStringField;
    PackageCdsFrom_Cities_id: TIntegerField;
    Label9: TLabel;
    MasterCdsitinerarypackages_id: TIntegerField;
    MasterCdsitineraries_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsfrom_date: TSQLTimeStampField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdsremarks: TStringField;
    MasterCdstours: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsestimatednoofpax: TIntegerField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdssinglesupplement: TIntegerField;
    MasterCdsgeneratevoucher: TBooleanField;
    MasterCdsmasterpackages_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    Panel5: TPanel;
    Label21: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label22: TcxLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    Label23: TcxLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    Label24: TcxLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    MasterCdsbooked: TSQLTimeStampField;
    MasterCdsreminder: TSQLTimeStampField;
    MasterCdsconfirmed: TSQLTimeStampField;
    MasterCdscancelled: TSQLTimeStampField;
    Panel6: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    MasterCdsto_date: TSQLTimeStampField;
    DetailCdsitinerarypackagestours_id: TIntegerField;
    DetailCdsitinerarypackages_id: TIntegerField;
    DetailCdstourcodes_id: TIntegerField;
    cxGrid1DBBandedTableView1itinerarypackagestours_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1itinerarypackages_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tourcodes_id: TcxGridDBBandedColumn;
    MasterCdsvouchers_id: TIntegerField;
    VoucherSds: TSQLDataSet;
    VoucherDsp: TDataSetProvider;
    VoucherCds: TClientDataSet;
    VoucherDs: TDataSource;
    Label2: TLabel;
    VoucherCdsVouchers_id: TIntegerField;
    VoucherCdsVoucherNo: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    MasterCdsVoucherLookup: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure DetailCdsAfterDelete(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure AddAllTourCodes1Click(Sender: TObject);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    procedure UpdateTourString;
    procedure SetAgent;
  public
    { Public declarations }
  end;

var
  ItineraryPackagesForm: TItineraryPackagesForm;
  ItineraryPackagesForm_Level: integer;
  ItineraryPackagesForm_Itineraries_id: integer;
  ItineraryPackagesForm_Mode: integer;
  ItineraryPackagesForm_ItineraryPackages_id: integer;

implementation

uses BackOfficeDM, SearchSortFm, TicketsFm;

{$R *.dfm}

procedure TItineraryPackagesForm.FormCreate(Sender: TObject);
begin

  Caption := 'Itinerary Packages';
  Width := 770;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Packages';
  cxTabSheet2.Caption := 'Tours';

  ActivateInCustom;

  MasterSds.Params[0].Value := ItineraryPackagesForm_Itineraries_id;

  inherited;

  AgentCds.Open;
  CitiesCds.Open;
  PackageCds.Open;
  TourCodeCds.Open;
  VoucherCds.Open;

  cxCityLCMBPropertiesEditValueChanged(nil);

  if ItineraryPackagesForm_Mode = 1 then
    MasterCds.Insert;

  if ItineraryPackagesForm_Mode = 2 then
    begin
      if ItineraryPackagesForm_ItineraryPackages_id <> null then
        MasterCds.Locate('ItineraryPackages_id', ItineraryPackagesForm_ItineraryPackages_id, []);
    end;

end;

procedure TItineraryPackagesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'ItineraryPackages';
  Custom_MasterKeyField := 'ItineraryPackages_id';

  Custom_DetailCdsName := 'ItineraryPackagesTours';
  Custom_DetailKeyField := 'ItineraryPackagesTours_id';

  Custom_AdmLevel := ItineraryPackagesForm_Level;

  Custom_FormWidth := 915;
  Custom_FormHeight := 660 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;


end;


procedure TItineraryPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Itineraries_id'] = null) then
    raise Exception.Create('Please select a Tour');

  if (MasterCds['From_Date'] = null) then
    raise Exception.Create('Please enter the From Date');

  if (MasterCds['Packages_id'] = null) then
    raise Exception.Create('Please enter the Package');

  if (MasterCds['Cities_id'] = null) then
    raise Exception.Create('Please enter the City');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  SetAgent;

  if (MasterCds['To_Date'] = null) then
    raise Exception.Create('Please enter the To Date (in Packages master)');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent (in Packages master)');

  inherited;

  if MasterCds['ItineraryPackages_id'] = null then
    raise Exception.Create('ItineraryPackages_id is not assigned');

end;

procedure TItineraryPackagesForm.SetAgent;
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT Addressbook_id, Nights FROM Packages ' +
    'WHERE Packages_id = ' + IntToStr(MasterCds['Packages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['Addressbook_id'] <> null) then
    MasterCds['Addressbook_id'] := GpSds['Addressbook_id'];

  if (not GpSds.Eof) and (GpSds['Nights'] <> null) then
    MasterCds['to_date'] := IncDay(MasterCds['from_date'], GpSds['Nights']);

  GpSds.Free;

end;


function TItineraryPackagesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM ItineraryPackages ' +
    'WHERE Itineraries_id = ' + IntToStr(MasterCds['Itineraries_id']) + ' ' +
    'AND From_Date = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['From_Date'])) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (ItineraryPackages_id <> ' + IntToStr(MasterCds['ItineraryPackages_id']) + ') ';

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


procedure TItineraryPackagesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin
  inherited;

  if MessageDlg ('Are you sure you would like to delete this record?',mtConfirmation,[mbYes,mbNo],0) <> mrYes then
    exit;

  QueryString := 'DELETE FROM ItineraryPackagesTours ' +
    'WHERE ItineraryPackages_id = ' + IntToStr(MasterCds['ItineraryPackages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TItineraryPackagesForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  if (DetailCds['TourCodes_id'] = null) then
    raise Exception.Create('Please enter the Tour Code');

  if (DetailCds['ItineraryPackages_id'] = null) then
    raise Exception.Create('Please enter the Package Details first');

  if (IsDetailRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

  inherited;

  if (DetailCds['ItineraryPackagesTours_id'] = null) then
    raise Exception.Create('ItineraryPackagesTours_id is not assigned');

end;

function TItineraryPackagesForm.IsDetailRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryPackagesTours ' +
    'WHERE ItineraryPackages_id = ' + IntToStr(DetailCds['ItineraryPackages_id'])  + ' ' +
    'AND Tourcodes_id = ' + IntToStr(DetailCds['TourCodes_id'])  + ' ';

  if DetailCds.State = dsEdit then
    QueryString := QueryString + ' AND (ItineraryPackagesTours_id <> ' + IntToStr(DetailCds['ItineraryPackagesTours_id']) + ') ';

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


procedure TItineraryPackagesForm.DetailCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateTourString;
end;

procedure TItineraryPackagesForm.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateTourString;
end;

procedure TItineraryPackagesForm.cxButton3Click(Sender: TObject);
begin
  inherited;
  UpdateTourString;
end;

procedure TItineraryPackagesForm.UpdateTourString;
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

  QueryString := 'SELECT tc.TourCode FROM ItineraryPackagesTours mtt ' +
    'LEFT JOIN TourCodes tc ON mtt.TourCodes_id = tc.TourCodes_id ' +
    'WHERE mtt.ItineraryPackages_id = ' + IntToStr(MasterCds['ItineraryPackages_id']) + ' ' +
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


procedure TItineraryPackagesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Itineraries_id'] := ItineraryPackagesForm_Itineraries_id;
  MasterCds['GenerateVoucher'] := true;
end;

procedure TItineraryPackagesForm.MasterCdsAfterPost(DataSet: TDataSet);
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

procedure TItineraryPackagesForm.AddAllTourCodes1Click(Sender: TObject);
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

      QueryString := 'SELECT COUNT(*) AS x_count FROM ItineraryPackagesTours mtt ' +
        'LEFT JOIN TourCodes tc ON mtt.TourCodes_id = tc.TourCodes_id ' +
        'WHERE mtt.ItineraryPackages_id = ' + IntToStr(MasterCds['ItineraryPackages_id']) + ' ' +
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

procedure TItineraryPackagesForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if (cxCityLCMB.EditValue <> null) and (CitiesCds.State <> dsInactive) then
      CitiesCds.Locate('Cities_id',cxCityLCMB.EditValue,[]);
  except
  end;

end;

end.
