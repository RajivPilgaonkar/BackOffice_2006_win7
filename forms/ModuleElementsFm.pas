unit ModuleElementsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxControls, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLabel, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, Provider, DBClient, SqlExpr,
  scExcelExport, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DateUtils,
  cxGroupBox, cxRadioGroup;

type
  TModuleElementsForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheetAcc: TcxTabSheet;
    cxCloseBtn: TcxButton;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ModElemAccSds: TSQLDataSet;
    ModElemAccCds: TClientDataSet;
    ModElemAccDsp: TDataSetProvider;
    ModElemAccDs: TDataSource;
    cxGrid1DBTableView1Organisation: TcxGridDBColumn;
    cxGrid1DBTableView1City: TcxGridDBColumn;
    cxGrid1DBTableView1ModuleElemAcc_id: TcxGridDBColumn;
    cxGrid1DBTableView1AC: TcxGridDBColumn;
    cxGrid1DBTableView1RoomType: TcxGridDBColumn;
    cxGrid1DBTableView1MealPlan: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    scExcelExport1: TscExcelExport;
    PopupMenu2: TPopupMenu;
    ModElemTrsfSds: TSQLDataSet;
    ModElemTrsfCds: TClientDataSet;
    ModElemTrsfDsp: TDataSetProvider;
    ModElemTrsfDs: TDataSource;
    cxTabSheetTrsf: TcxTabSheet;
    cxTransferGrid: TcxGrid;
    cxTransferGridDBTableView1: TcxGridDBTableView;
    cxTransferGridDBTableView1Organisation: TcxGridDBColumn;
    cxTransferGridDBTableView1Service: TcxGridDBColumn;
    cxTransferGridDBTableView1ModuleElemServices_id: TcxGridDBColumn;
    cxTransferGridLevel1: TcxGridLevel;
    cxTransferGridDBTableView1City: TcxGridDBColumn;
    cxTabSheetTrain: TcxTabSheet;
    ModElemTrainSds: TSQLDataSet;
    ModElemTrainDsp: TDataSetProvider;
    ModElemTrainCds: TClientDataSet;
    ModElemTrainDs: TDataSource;
    cxTrainGrid2: TcxGrid;
    cxTrainGridDBTableView1: TcxGridDBTableView;
    cxTrainGridLevel1: TcxGridLevel;
    cxTrainGridDBTableView1Class: TcxGridDBColumn;
    cxTrainGridDBTableView1FromCity: TcxGridDBColumn;
    cxTrainGridDBTableView1ToCity: TcxGridDBColumn;
    cxTrainGridDBTableView1FromTrainStation: TcxGridDBColumn;
    cxTrainGridDBTableView1ToTrainStation: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainNo: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainName: TcxGridDBColumn;
    cxTrainGridDBTableView1Timings: TcxGridDBColumn;
    cxTabSheetSight: TcxTabSheet;
    ModElemSightSds: TSQLDataSet;
    ModElemSightDsp: TDataSetProvider;
    ModElemSightCds: TClientDataSet;
    ModElemSightDs: TDataSource;
    cxSightGrid: TcxGrid;
    cxSightGridDBTableView1: TcxGridDBTableView;
    cxSightGridLevel1: TcxGridLevel;
    cxSightGridDBTableView1Organisation: TcxGridDBColumn;
    cxSightGridDBTableView1Service: TcxGridDBColumn;
    cxSightGridDBTableView1Vehicle: TcxGridDBColumn;
    cxSightGridDBTableView1AgentAddressBook_id: TcxGridDBColumn;
    cxSightGridDBTableView1City: TcxGridDBColumn;
    cxSightGridDBTableView1ModuleElemServices_id: TcxGridDBColumn;
    cxTabSheetCar: TcxTabSheet;
    ModElemCarSds: TSQLDataSet;
    ModElemCarDsp: TDataSetProvider;
    ModElemCarCds: TClientDataSet;
    ModElemCarDs: TDataSource;
    cxCarHireGrid: TcxGrid;
    cxCarHireGridDBTableView1: TcxGridDBTableView;
    cxCarHireGridLevel1: TcxGridLevel;
    cxCarHireGridDBTableView1ModuleElemCars_id: TcxGridDBColumn;
    cxCarHireGridDBTableView1Organisation: TcxGridDBColumn;
    cxTabSheetInterCities: TcxTabSheet;
    ModElemIntercitiesSds: TSQLDataSet;
    ModElemIntercitiesDsp: TDataSetProvider;
    ModElemIntercitiesCds: TClientDataSet;
    ModElemIntercitiesDs: TDataSource;
    cxInterCityGrid: TcxGrid;
    cxInterCityGridDBTableView1: TcxGridDBTableView;
    cxInterCityGridLevel1: TcxGridLevel;
    cxInterCityGridDBTableView1ModuleElemInterCities_id: TcxGridDBColumn;
    cxInterCityGridDBTableView1Organisation: TcxGridDBColumn;
    EditInsert1: TMenuItem;
    cxTabSheetCityGroups: TcxTabSheet;
    cxTranspModGrid: TcxGrid;
    cxTranspModGridDBTableView1: TcxGridDBTableView;
    cxTranspModGridLevel1: TcxGridLevel;
    cxButtonUtilities: TcxButton;
    PopupMenu1: TPopupMenu;
    Deletethisrecord1: TMenuItem;
    Deleteallrecordsofthisdate1: TMenuItem;
    ModulesSds: TSQLDataSet;
    ModulesDsp: TDataSetProvider;
    ModulesCds: TClientDataSet;
    ModulesDs: TDataSource;
    ModulesCdsFixedItin_id: TIntegerField;
    ModulesCdsTitle: TStringField;
    cxModuleLCMB: TcxLookupComboBox;
    ModElemAccCdsModuleElemAcc_id: TIntegerField;
    ModElemAccCdscity: TStringField;
    ModElemAccCdsOrganisation: TStringField;
    ModElemAccCdscities_id: TIntegerField;
    ModElemAccCdsAC: TBooleanField;
    ModElemAccCdsRoomType: TStringField;
    ModElemAccCdsMealPlan: TStringField;
    ModElemAccCdsFixedItin_id: TIntegerField;
    ModElemTrsfCdsModuleElemServices_id: TIntegerField;
    ModElemTrsfCdsCity: TStringField;
    ModElemTrsfCdsOrganisation: TStringField;
    ModElemTrsfCdsService: TStringField;
    ModElemTrsfCdsVehicle: TStringField;
    ModElemTrsfCdsCities_id: TIntegerField;
    ModElemTrainCdsModuleElemTickets_id: TIntegerField;
    ModElemTrainCdsClass: TStringField;
    ModElemTrainCdsFromCity: TStringField;
    ModElemTrainCdsToCity: TStringField;
    ModElemTrainCdsTrainNo: TStringField;
    ModElemTrainCdsTrainName: TStringField;
    ModElemTrainCdsTimings: TStringField;
    ModElemTrainCdsFromCities_id: TIntegerField;
    ModElemTrainCdsToCities_id: TIntegerField;
    ModElemTrainCdsFixedItin_id: TIntegerField;
    ModElemTrsfCdsFixedItin_id: TIntegerField;
    ModElemSightCdsModuleElemServices_id: TIntegerField;
    ModElemSightCdsCity: TStringField;
    ModElemSightCdsOrganisation: TStringField;
    ModElemSightCdsService: TStringField;
    ModElemSightCdsVehicle: TStringField;
    ModElemSightCdsCities_id: TIntegerField;
    ModElemSightCdsFixedItin_id: TIntegerField;
    ModElemCarCdsModuleElemCars_id: TIntegerField;
    ModElemCarCdsFixedItin_id: TIntegerField;
    ModElemCarCdsOrganisation: TStringField;
    ModElemIntercitiesCdsModuleElemInterCities_id: TIntegerField;
    ModElemIntercitiesCdsFixedItin_id: TIntegerField;
    ModElemIntercitiesCdsOrganisation: TStringField;
    N1: TMenuItem;
    Elements1: TMenuItem;
    cxTrainGridDBTableView1ModuleElemTickets_id: TcxGridDBColumn;
    InsertElementsforSelectedModule1: TMenuItem;
    N2: TMenuItem;
    ModulesCdsQuotationRef: TStringField;
    ModElemCarCdsSector: TStringField;
    cxCarHireGridDBTableView1Sector: TcxGridDBColumn;
    ModElemIntercitiesCdsSector: TStringField;
    cxInterCityGridDBTableView1Sector: TcxGridDBColumn;
    ModElemCityGroupsSds: TSQLDataSet;
    ModElemCityGroupsDsp: TDataSetProvider;
    ModElemCityGroupsCds: TClientDataSet;
    ModElemCityGroupsDs: TDataSource;
    ModElemCityGroupsCdsModuleElemCityGroups_id: TIntegerField;
    ModElemCityGroupsCdsFixedItin_id: TIntegerField;
    ModElemCityGroupsCdsOrganisation: TStringField;
    cxTranspModGridDBTableView1ModuleElemCityGroups_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1FixedItin_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1Organisation: TcxGridDBColumn;
    cxTranspModGridDBTableView1CarHireGroup: TcxGridDBColumn;
    ModElemTrainCdsTravelMode: TStringField;
    cxTrainGridDBTableView1TravelMode: TcxGridDBColumn;
    ModElemCityGroupsCdsCarHireGroup: TStringField;
    AutoInsertElementsforallModules1: TMenuItem;
    ModElemAccCdsSrNo: TIntegerField;
    cxGrid1DBTableView1SrNo: TcxGridDBColumn;
    ModElemTrsfCdsSrNo: TIntegerField;
    cxTransferGridDBTableView1SrNo: TcxGridDBColumn;
    ModElemTrainCdsSrNo: TIntegerField;
    cxTrainGridDBTableView1SrNo: TcxGridDBColumn;
    ModElemSightCdsSrNo: TIntegerField;
    cxSightGridDBTableView1SrNo: TcxGridDBColumn;
    ModElemCarCdsSrNo: TIntegerField;
    cxCarHireGridDBTableView1SrNo: TcxGridDBColumn;
    ModElemIntercitiesCdsSrNo: TIntegerField;
    cxInterCityGridDBTableView1SrNo: TcxGridDBColumn;
    ModElemCityGroupsCdsSrNo: TIntegerField;
    cxTranspModGridDBTableView1SrNo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditInsert1Click(Sender: TObject);
    procedure Elements1Click(Sender: TObject);
    procedure cxModuleLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure InsertElementsforSelectedModule1Click(Sender: TObject);
    procedure Deletethisrecord1Click(Sender: TObject);
    procedure Deleteallrecordsofthisdate1Click(Sender: TObject);
    procedure AutoInsertElementsforallModules1Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  ModuleElementsForm: TModuleElementsForm;
  ModuleElementsForm_Level: integer;

implementation

uses BackOfficeDM, Excel2000, GeneralUt, ImportErrorsFm,
  QuoFixedRateAccModifyFm, QuoFixedRateTrsfModifyFm,
  QuoFixedRateSsModifyFm, QuoFixedRateCarHireModifyFm,
  QuoFixedRateInterCityModifyFm, QuoFixedRateTrainModifyFm,
  HotelPriceListFm, TransferPriceListFm, SightSeeingPriceListFm,
  TrainTicketsPriceListFm, CarHirePriceListFm,
  QuoFixedRateTranspModuleModifyFm, QuoFixedRateAccFm, ElemAccCostFm,
  ElemAccFm, ElementsFm, SelectElementsFm;

{$R *.dfm}

procedure TModuleElementsForm.FormCreate(Sender: TObject);
//var
  //x_Year: integer;
begin
  //x_Year := YearOf(IncYear(Date,-1));
  cxPageControl1.ActivePageIndex := 0;

  ModulesCds.Open;
  ModElemAccCds.Open;
  ModElemTrsfCds.Open;
  ModElemSightCds.Open;
  ModElemTrainCds.Open;
  ModElemCarCds.Open;
  ModElemInterCitiesCds.Open;
  ModElemCityGroupsCds.Open;

  ModulesCds.First;
  if ModulesCds['FixedItin_id'] <> null then
    cxModuleLCMB.EditValue := ModulesCds['FixedItin_id'];

end;

procedure TModuleElementsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TModuleElementsForm.FormDestroy(Sender: TObject);
begin
  ModuleElementsForm := nil;
end;

procedure TModuleElementsForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TModuleElementsForm.EditInsert1Click(Sender: TObject);
begin

  if cxModuleLCMB.EditValue = null then
    exit;

  SelectElementsForm_Level := 4;
  SelectElementsForm_FixedItin_id := cxModuleLCMB.EditValue;

  if SelectElementsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      exit;
    end;

  if SelectElementsForm = nil then
     Application.CreateForm(TSelectElementsForm, SelectElementsForm);

  SelectElementsForm.Left := SelectElementsForm.Left + 30;


end;

procedure TModuleElementsForm.Elements1Click(Sender: TObject);
begin
  ElementsForm_Level := 4;

  If ElementsForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if ElementsForm = nil then
    Application.CreateForm(TElementsForm,ElementsForm);


end;

procedure TModuleElementsForm.cxModuleLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxModuleLCMB.EditValue <> null then
    ModulesCds.Locate('FixedItin_id', cxModuleLCMB.EditValue, []);

end;

procedure TModuleElementsForm.InsertElementsforSelectedModule1Click(
  Sender: TObject);
var
  x_QueryString, x_QuotationRef: string;
  GpSds: TSQLDataSet;
begin
  if cxModuleLCMB.EditValue = null then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT QuotationRef FROM FixedItin WHERE FixedItin_id = ' + IntToStr(cxModuleLCMB.EditValue);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_QuotationRef := '';
  if (not GpSds.EOF) and (GpSds['QuotationRef'] <> null) then
    x_QuotationRef := GpSds['QuotationRef'];

  x_QueryString := 'EXEC p_Modules_AutoInsertElements ' + QuotedStr(x_QuotationRef);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshData;

end;

procedure TModuleElementsForm.RefreshData;
var
  x_FixedItin_id: integer;
begin

  x_FixedItin_id := 0;
  if cxModuleLCMB.EditValue <> null then
    x_FixedItin_id := cxModuleLCMB.EditValue;

  ModulesCds.Close;
  ModElemAccCds.Close;
  ModElemTrsfCds.Close;
  ModElemSightCds.Close;
  ModElemTrainCds.Close;
  ModElemCarCds.Close;
  ModElemInterCitiesCds.Close;
  ModElemCityGroupsCds.Close;

  ModulesCds.Open;
  ModulesCds.Locate('FixedItin_id',x_FixedItin_id,[]);
  ModElemAccCds.Open;
  ModElemTrsfCds.Open;
  ModElemSightCds.Open;
  ModElemTrainCds.Open;
  ModElemCarCds.Open;
  ModElemInterCitiesCds.Open;
  ModElemCityGroupsCds.Open;

end;

procedure TModuleElementsForm.Deletethisrecord1Click(Sender: TObject);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin
  if MessageDlg ('Are you sure you want to delete this record?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := '';;

  if cxPageControl1.ActivePage = cxTabSheetAcc then
    begin
      if ModElemAccCds['ModuleElemAcc_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemAcc WHERE ModuleElemAcc_id = ' + IntToStr(ModElemAccCds['ModuleElemAcc_id']);
    end
  else if cxPageControl1.ActivePage = cxTabSheetTrsf then
    begin
      if ModElemTrsfCds['ModuleElemServices_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemServices WHERE ModuleElemServices_id = ' + IntToStr(ModElemTrsfCds['ModuleElemServices_id']);
    end
  else if cxPageControl1.ActivePage = cxTabSheetTrain then
    begin
      if ModElemTrainCds['ModuleElemTickets_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemTickets WHERE ModuleElemTickets_id = ' + IntToStr(ModElemTrainCds['ModuleElemTickets_id']);
    end
  else if cxPageControl1.ActivePage = cxTabSheetSight then
    begin
      if ModElemTrsfCds['ModuleElemServices_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemServices WHERE ModuleElemServices_id = ' + IntToStr(ModElemSightCds['ModuleElemServices_id']);
    end
  else if cxPageControl1.ActivePage = cxTabSheetCar then
    begin
      if ModElemCarCds['ModuleElemCars_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemCars WHERE ModuleElemCars_id = ' + IntToStr(ModElemCarCds['ModuleElemCars_id']);
    end
  else if cxPageControl1.ActivePage = cxTabSheetInterCities then
    begin
      if ModElemIntercitiesCds['ModuleElemInterCities_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemInterCities WHERE ModuleElemInterCities_id = ' + IntToStr(ModElemInterCitiesCds['ModuleElemInterCities_id']);
    end
  else if cxPageControl1.ActivePage = cxTabSheetCityGroups then
    begin
      if ModElemCityGroupsCds['ModuleCityGroups_id'] <> null then
        x_QueryString := 'DELETE FROM ModuleElemCityGroups WHERE ModuleElemCityGroups_id = ' + IntToStr(ModElemCityGroupsCds['ModuleElemCityGroups_id']);
    end;

  if x_QueryString > '' then
    begin
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;
    end;

  GpSds.Free;

  RefreshData;

end;

procedure TModuleElementsForm.Deleteallrecordsofthisdate1Click(
  Sender: TObject);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x_FixedItin_id: integer;
begin
  if MessageDlg ('Are you sure you want to delete this record?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  x_FixedItin_id := 0;
  if cxModuleLCMB.EditValue <> null then
    x_FixedItin_id := cxModuleLCMB.EditValue;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'DELETE FROM ModuleElemAcc WHERE FixedItin_id = ' + IntToStr(x_FixedItin_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM ModuleElemServices WHERE FixedItin_id = ' + IntToStr(x_FixedItin_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM ModuleElemCars WHERE FixedItin_id = ' + IntToStr(x_FixedItin_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM ModuleElemInterCities WHERE FixedItin_id = ' + IntToStr(x_FixedItin_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  x_QueryString := 'DELETE FROM ModuleElemCityGroups WHERE FixedItin_id = ' + IntToStr(x_FixedItin_id);

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshData;

end;

procedure TModuleElementsForm.AutoInsertElementsforallModules1Click(
  Sender: TObject);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'EXEC p_Modules_AutoInsertElements_All ';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  RefreshData;

end;

end.
