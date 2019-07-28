unit FixedItinCityFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DType1Fm, Menus, cxLookAndFeelPainters, FMTBcd,
  StdCtrls, DBClient, DB, Provider, SqlExpr, cxButtons, ExtCtrls,
  cxGraphics, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGroupBox, cxMemo, cxDBEdit, cxPC,
  cxNavigator, cxDBNavigator, DBCtrls, cxCalendar, cxCheckBox, cxButtonEdit;

type
  TFixedItinCityForm = class(TCustom1M1DType1Form)
    cxGroupBox1: TcxGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Detail1CdsCityFixedItin_id: TIntegerField;
    Detail1CdsCities_id: TIntegerField;
    Detail1CdsFixedItin_id: TIntegerField;
    RegionSds: TSQLDataSet;
    RegionDsp: TDataSetProvider;
    RegionDs: TDataSource;
    RegionCds: TClientDataSet;
    RegionCdsRegions_id: TIntegerField;
    RegionCdsTitle: TStringField;
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsTitle: TStringField;
    MasterCdsOneLiner: TStringField;
    MasterCdsIntroduction: TMemoField;
    MasterCdsItinerary: TMemoField;
    MasterCdsTripHighlights: TMemoField;
    MasterCdsQuotes: TMemoField;
    MasterCdsAdv: TMemoField;
    MasterCdsRegions_id: TIntegerField;
    MasterCdsReadyTours: TBooleanField;
    MasterCdsItinDates: TMemoField;
    MasterCdsInclusions: TMemoField;
    MasterCdsPrices: TMemoField;
    MasterCdsOrderNo: TIntegerField;
    MasterCdsDuration: TMemoField;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Title: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Regions_id: TcxGridDBColumn;
    CustomMasterCxGridLevel1: TcxGridLevel;
    cxPageControl1: TcxPageControl;
    cxTabSheetOneLiner: TcxTabSheet;
    cxDBMemo4: TcxDBMemo;
    cxTabSheetIntro: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxTabSheetQuote: TcxTabSheet;
    cxDBMemo5: TcxDBMemo;
    cxTabSheetItin: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxTabSheetAdvert: TcxTabSheet;
    cxDBMemo6: TcxDBMemo;
    cxTabSheetHigh: TcxTabSheet;
    cxDBMemo3: TcxDBMemo;
    cxTabSheetDuration: TcxTabSheet;
    cxDBMemo10: TcxDBMemo;
    cxTabSheetDeparture: TcxTabSheet;
    cxDBMemo7: TcxDBMemo;
    cxTabSheetPrice: TcxTabSheet;
    cxDBMemo9: TcxDBMemo;
    cxTabSheetIncl: TcxTabSheet;
    cxDBMemo8: TcxDBMemo;
    KeyIdDbText: TDBText;
    Label1: TLabel;
    cxDateEdit: TcxDateEdit;
    MasterCdsInactiveWef: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1InactiveWef: TcxGridDBColumn;
    MasterCdsFixedItinCode: TStringField;
    MasterCdsStartCities_id: TIntegerField;
    MasterCdsEndCities_id: TIntegerField;
    MasterCdsDays: TIntegerField;
    MasterCdsNights: TIntegerField;
    MasterCdsDepartureDays: TIntegerField;
    CustomMasterCxGridDBTableView1FixedItinCode: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1StartCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1EndCities_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Days: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Nights: TcxGridDBColumn;
    CitySds: TSQLDataSet;
    CityDsp: TDataSetProvider;
    CityDs: TDataSource;
    CityCds: TClientDataSet;
    CityCdsCities_id: TIntegerField;
    CityCdsCity: TStringField;
    cxModuleDetailsCkb: TcxCheckBox;
    MasterCdsDaysName: TStringField;
    CustomMasterCxGridDBTableView1DaysName: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    CloseDate1: TMenuItem;
    N1: TMenuItem;
    Costing1: TMenuItem;
    ailormadeTips1: TMenuItem;
    N2: TMenuItem;
    MasterCdsAddressbook_id: TIntegerField;
    cxTabSheet1: TcxTabSheet;
    MasterCdsurl: TStringField;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBMemo11: TcxDBMemo;
    MasterCdsQuotationRef: TStringField;
    CustomMasterCxGridDBTableView1QuotationRef: TcxGridDBColumn;
    MasterCdsDisplay: TBooleanField;
    CustomMasterCxGridDBTableView1Display: TcxGridDBColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxDBMemo12: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1DayNo: TcxGridDBColumn;
    cxGridDBTableView1Cities_id: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2CityFixedItin_id: TcxGridDBColumn;
    cxGridDBTableView2Cities_id: TcxGridDBColumn;
    cxGridDBTableView2FixedItin_id: TcxGridDBColumn;
    Detail2Sds: TSQLDataSet;
    Detail2Dsp: TDataSetProvider;
    Detail2Cds: TClientDataSet;
    Detail2Ds: TDataSource;
    Detail2CdsCityDayFixedItin_id: TIntegerField;
    Detail2CdsFixedItin_id: TIntegerField;
    Detail2CdsCities_id: TIntegerField;
    Detail2CdsDayNo: TIntegerField;
    Detail2CdsDayItinerary: TMemoField;
    cxGridDBTableView1CityDayFixedItin_id: TcxGridDBColumn;
    cxGridDBTableView1FixedItin_id: TcxGridDBColumn;
    Detail2CdsEndOfTour: TBooleanField;
    cxGridDBTableView1EndOfTour: TcxGridDBColumn;
    N3: TMenuItem;
    hemes1: TMenuItem;
    MasterCdsMeta_Descr: TMemoField;
    MasterCdsMeta_Title: TStringField;
    MasterCdsMeta_Keywords: TStringField;
    MasterCdsModifiedByUsers_id: TIntegerField;
    MasterCdsModifiedOn: TSQLTimeStampField;
    CustomMasterCxGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ModifiedOn: TcxGridDBColumn;
    UsersSds: TSQLDataSet;
    UsersDsp: TDataSetProvider;
    UsersCds: TClientDataSet;
    UsersCdsAdmUsers_id: TIntegerField;
    UsersCdsuid: TStringField;
    UsersDs: TDataSource;
    Detail1CdsModifiedByUsers_id: TIntegerField;
    Detail1CdsModifiedOn: TSQLTimeStampField;
    cxGridDBTableView2ModifiedByUsers_id: TcxGridDBColumn;
    cxGridDBTableView2ModifiedOn: TcxGridDBColumn;
    Detail2CdsModifiedByUsers_id: TIntegerField;
    Detail2CdsModifiedOn: TSQLTimeStampField;
    cxGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn;
    cxGridDBTableView1ModifiedOn: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
    function IsDetailRecordDuplicate: Boolean;
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    function GetDetailCount: integer;
    procedure FormActivate(Sender: TObject);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxModuleDetailsCkbClick(Sender: TObject);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure CustomMasterCxGridDBTableView1DaysNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure CloseDate1Click(Sender: TObject);
    procedure Costing1Click(Sender: TObject);
    procedure ailormadeTips1Click(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure Detail2CdsBeforePost(DataSet: TDataSet);
    function IsDetail2RecordDuplicate: Boolean;
    procedure Detail2CdsAfterDelete(DataSet: TDataSet);
    procedure Detail2CdsAfterPost(DataSet: TDataSet);
    procedure Detail2CdsBeforeDelete(DataSet: TDataSet);
    procedure Detail2CdsBeforeEdit(DataSet: TDataSet);
    procedure Detail2CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail2CdsAfterInsert(DataSet: TDataSet);
    procedure hemes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixedItinCityForm: TFixedItinCityForm;
  _FixedItinCityForm_Level: Integer;
  _FixedItinCityForm_Type: Integer;
  _FixedItinCityForm_Addressbook_id: Integer;


implementation

uses BackOfficeDM, SelOprFm, GeneralUt, FixedItinCloseDatesFm,
  FixedItinCostingFm, FixedItinTipsFm, FixedItinThemesFm, MainFm;

{$R *.dfm}

procedure TFixedItinCityForm.FormCreate(Sender: TObject);
begin

  MasterCdsName := 'FixedItin';
  MasterKeyField := 'FixedItin_id';
  Detail1CdsName := 'CityFixedItin';
  Detail1KeyField := 'CityFixedItin_id';

  if _FixedItinCityForm_Type = 0 then
    begin
      MasterSds.Params[0].Value := false;
      MasterSds.Params[1].Value := _FixedItinCityForm_Addressbook_id;
      Caption := 'Itinerary Ideas';
      if _FixedItinCityForm_Addressbook_id > 0 then
        Caption := 'Modules - Riksja';
      cxModuleDetailsCkb.Visible := True;
    end
  else
    begin
      MasterSds.Params[0].Value := true;
      MasterSds.Params[1].Value := _FixedItinCityForm_Addressbook_id;
      Caption := 'Ready Tours';
      cxModuleDetailsCkb.Visible := True;
    end;

  MasterSds.Params[2].Value := Date();

  inherited;

  cxDateEdit.Date := Date();

  AdmLevel := _FixedItinCityForm_Level;

  Detail2Cds.Active := true;

  RegionCds.Open;
  CityCds.Open;
  BackOfficeDataModule.CitiesCds.Open;
  UsersCds.Open;

  cxPageControl1.ActivePageIndex := 0;

end;

procedure TFixedItinCityForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FixedItinCityForm := nil;
end;

procedure TFixedItinCityForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if (MasterCds['Title'] = null) or (Trim(MasterCds['Title']) = '') then
    raise Exception.Create('Please enter the Title.');

  if _FixedItinCityForm_Type = 0 then
    MasterCds['ReadyTours'] := false
  else
    MasterCds['ReadyTours'] := true;

  MasterCds['Addressbook_id'] := _FixedItinCityForm_Addressbook_id;

  if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
    MasterCds['url'] := GetNextUrlString(GetUrlString(MasterCds['Title']), 2);

  if (IsRecordDuplicate) then
    begin
      if MessageDlg ('There is another record with the same name. Do you want to save anyway?',
                     mtWarning, [mbYes, mbNo], 0) <> mrYes then
        abort;
    end;

  MasterCds['ModifiedByUsers_id'] := g_users_id;
  MasterCds['ModifiedOn'] := Date;

  inherited;

end;

procedure TFixedItinCityForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin

  Detail1Cds['ModifiedByUsers_id'] := g_users_id;
  Detail1Cds['ModifiedOn'] := Date;

  if (Detail1Cds['Cities_id'] = null) then
    raise Exception.Create('Please enter the city.');

  if IsDetailRecordDuplicate then
    raise exception.create ('Duplicate Record found');

  inherited;

end;

function TFixedItinCityForm.IsDetailRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CityFixedItin ' +
    'WHERE Cities_id = ' + IntToStr(Detail1Cds['Cities_id']) + ' ' +
    'AND FixedItin_id = ' + IntToStr(Detail1Cds['FixedItin_id']) + ' ';

  if Detail1Cds.State = dsEdit then
    QueryString := QueryString + ' AND (CityFixedItin_id <> ' + IntToStr(Detail1Cds['CityFixedItin_id']) + ') ';

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

function TFixedItinCityForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

{
  QueryString := 'SELECT COUNT(*) AS x_count FROM FixedItin ' +
    'WHERE Title = ''' + MasterCds['Title'] + ''' ' +
    'AND ReadyTours = ' + IntToStr(_FixedItinCityForm_Type) + ' ' +
    'AND Addressbook_id = ' + IntToStr(_FixedItinCityForm_Addressbook_id);
}

  QueryString := 'SELECT COUNT(*) AS x_count FROM FixedItin ' +
    'WHERE Title = ''' + MasterCds['Title'] + ''' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (FixedItin_id <> ' + IntToStr(MasterCds['FixedItin_id']) + ') ';

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

procedure TFixedItinCityForm.MasterCdsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GetDetailCount > 0 then
    raise exception.create ('Details present. Cannot delete.');
end;

function TFixedItinCityForm.GetDetailCount: integer;
var
  QueryString: string;
  x_count: integer;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT COUNT(*) AS x_count FROM CityFixedItin ' +
    'WHERE FixedItin_id = ' + IntToStr(MasterCds['FixedItin_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  if (x_count = 0) then
    begin

      QueryString := 'SELECT COUNT(*) AS x_count FROM CityDayFixedItin ' +
        'WHERE FixedItin_id = ' + IntToStr(MasterCds['FixedItin_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_count := GpSds['x_count'];

    end;

  GpSds.Free;

  Result := x_count;

end;


procedure TFixedItinCityForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'FixedItin';
  MasterKeyField := 'FixedItin_id';
  Detail1CdsName := 'CityFixedItin';
  Detail1KeyField := 'CityFixedItin_id';

  AdmLevel := _FixedItinCityForm_Level;

end;

procedure TFixedItinCityForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  Detail2Cds.Active := false;
  Detail2Sds.Active := false;

  Detail1Cds.Active := false;
  Detail1Sds.Active := false;

  MasterCds.Active := false;
  MasterSds.Active := false;

  MasterSds.Params[2].Value := cxDateEdit.Date;

  MasterSds.Active := true;
  MasterCds.Active := true;

  Detail1Sds.Active := true;
  Detail1Cds.Active := true;

  Detail2Sds.Active := true;
  Detail2Cds.Active := true;

end;

procedure TFixedItinCityForm.cxModuleDetailsCkbClick(Sender: TObject);
begin
  inherited;
  if cxModuleDetailsCkb.Checked then
    begin
      CustomMasterCxGridDBTableView1FixedItinCode.Visible := true;
      CustomMasterCxGridDBTableView1StartCities_id.Visible := true;
      CustomMasterCxGridDBTableView1EndCities_id.Visible := true;
      CustomMasterCxGridDBTableView1Days.Visible := true;
      CustomMasterCxGridDBTableView1Nights.Visible := true;
      CustomMasterCxGridDBTableView1DaysName.Visible := true;
      Panel3.Width := 1000;
      Panel4.Width := 1000;
      cxPageControl1.Visible := False;
    end
  else
    begin
      CustomMasterCxGridDBTableView1FixedItinCode.Visible := false;
      CustomMasterCxGridDBTableView1StartCities_id.Visible := false;
      CustomMasterCxGridDBTableView1EndCities_id.Visible := false;
      CustomMasterCxGridDBTableView1Days.Visible := false;
      CustomMasterCxGridDBTableView1Nights.Visible := false;
      CustomMasterCxGridDBTableView1DaysName.Visible := false;
      Panel3.Width := 400;
      Panel4.Width := 400;
      cxPageControl1.Visible := True;      
    end;
end;

procedure TFixedItinCityForm.MasterCdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['DepartureDays'] <> null then
    MasterCds['DaysName'] := DaysToStr(MasterCds['DepartureDays']);

end;

procedure TFixedItinCityForm.CustomMasterCxGridDBTableView1DaysNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  if SelOprForm = Nil then
    Application.CreateForm(TSelOprForm, SelOprForm);

  if MasterCds['DepartureDays'] <> null then
    _InitStr := DaysToStr(MasterCds['DepartureDays'])
  else
    _InitStr := '';

  SelOprForm.ShowModal;

  if SelOprForm.ModalResult = mrOK then
    MasterCds['DepartureDays'] := DaysToBit(_RetStr);

  SelOprForm.Free;
  SelOprForm := nil;

end;

procedure TFixedItinCityForm.CloseDate1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['FixedItin_id'] = null then
    Abort;

  _FixedItinCloseDatesForm_Level := 4;
  _FixedItinCloseDatesForm_FixedItin_id := MasterCds['FixedItin_id'];

  if FixedItinCloseDatesForm = nil then
    Application.CreateForm(TFixedItinCloseDatesForm,FixedItinCloseDatesForm);

  FixedItinCloseDatesForm.Visible := False;

  FixedItinCloseDatesForm.ShowModal;

  FixedItinCloseDatesForm.Free;
  FixedItinCloseDatesForm := nil;

end;

procedure TFixedItinCityForm.Costing1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['FixedItin_id'] = null then
    Abort;

  _FixedItinCostingForm_Level := 4;
  _FixedItinCostingForm_FixedItin_id := MasterCds['FixedItin_id'];
  _FixedItinCostingForm_Addressbook_id := _FixedItinCityForm_Addressbook_id;

  if FixedItinCostingForm = nil then
    Application.CreateForm(TFixedItinCostingForm,FixedItinCostingForm);

  FixedItinCostingForm.Visible := False;

  FixedItinCostingForm.ShowModal;

  FixedItinCostingForm.Free;
  FixedItinCostingForm := nil;

end;

procedure TFixedItinCityForm.ailormadeTips1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['FixedItin_id'] = null then
    Abort;

  _FixedItinTipsForm_Level := 4;
  _FixedItinTipsForm_FixedItin_id := MasterCds['FixedItin_id'];

  if FixedItinTipsForm = nil then
    Application.CreateForm(TFixedItinTipsForm,FixedItinTipsForm);

  FixedItinTipsForm.Visible := False;

  FixedItinTipsForm.ShowModal;

  FixedItinTipsForm.Free;
  FixedItinTipsForm := nil;

end;

procedure TFixedItinCityForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Display'] := true;
end;

procedure TFixedItinCityForm.Detail2CdsBeforePost(DataSet: TDataSet);
begin

  if (Detail2Cds['EndOfTour'] = null) then
    Detail2Cds['EndOfTour'] := false;

  if (Detail2Cds['Cities_id'] = null) then
    raise Exception.Create('Please enter the city.');

  if (Detail2Cds['FixedItin_id'] = null) then
    raise Exception.Create('Please choose the itinerary.');

  if Detail2Cds.State = dsInsert then
    Detail2Cds['CityDayFixedItin_id'] := GetNextId('CityDayFixedItin','CityDayFixedItin_id');

  if (Detail2Cds['CityDayFixedItin_id'] = null) then
    raise Exception.Create('Please enter the CityDayFixedItin_id.');

  if IsDetail2RecordDuplicate then
    raise exception.create ('Duplicate Record found');

  Detail2Cds['ModifiedByUsers_id'] := g_users_id;
  Detail2Cds['ModifiedOn'] := Date;

  inherited;

end;

function TFixedItinCityForm.IsDetail2RecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM CityDayFixedItin ' +
    'WHERE Cities_id = ' + IntToStr(Detail2Cds['Cities_id']) + ' ' +
    'AND DayNo = ' + IntToStr(Detail2Cds['DayNo']) + ' ' +
    'AND FixedItin_id = ' + IntToStr(Detail2Cds['FixedItin_id']) + ' ';

  if Detail2Cds.State = dsEdit then
    QueryString := QueryString + ' AND (CityDayFixedItin_id <> ' + IntToStr(Detail2Cds['CityDayFixedItin_id']) + ') ';

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


procedure TFixedItinCityForm.Detail2CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds.ApplyUpdates(0);
end;

procedure TFixedItinCityForm.Detail2CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds.ApplyUpdates(0);
end;

procedure TFixedItinCityForm.Detail2CdsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if (_FixedItinCityForm_Level < 3) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

end;

procedure TFixedItinCityForm.Detail2CdsBeforeEdit(DataSet: TDataSet);
var x_TableArray: Array[0..0] of TDataSource;
begin
  inherited;

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  x_TableArray[0] := MasterDS;
  PostDsTables(x_TableArray);

end;

procedure TFixedItinCityForm.Detail2CdsBeforeInsert(DataSet: TDataSet);
var x_TableArray: Array[0..0] of TDataSource;
begin
  inherited;

  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  x_TableArray[0] := MasterDS;
  PostDsTables(x_TableArray);

end;

procedure TFixedItinCityForm.Detail2CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail2Cds['EndOfTour'] := false;
end;

procedure TFixedItinCityForm.hemes1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds['FixedItin_id'] = null then
    Abort;

  FixedItinThemesForm_Level := 4;
  FixedItinThemesForm_FixedItin_id := MasterCds['FixedItin_id'];

  if FixedItinThemesForm = nil then
    Application.CreateForm(TFixedItinThemesForm,FixedItinThemesForm);

  FixedItinThemesForm.Visible := False;

  FixedItinThemesForm.ShowModal;

  FixedItinThemesForm.Free;
  FixedItinThemesForm := nil;


end;

end.
