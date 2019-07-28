unit ElementsFm;

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
  cxGroupBox, cxRadioGroup, cxCheckBox;

type
  TElementsForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxAccTab: TcxTabSheet;
    cxCloseBtn: TcxButton;
    cxLabel1: TcxLabel;
    cxFilterBtn: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ElemAccSds: TSQLDataSet;
    ElemAccCds: TClientDataSet;
    ElemAccDsp: TDataSetProvider;
    ElemAccDs: TDataSource;
    cxGrid1DBTableView1Organisation: TcxGridDBColumn;
    cxGrid1DBTableView1State: TcxGridDBColumn;
    cxGrid1DBTableView1City: TcxGridDBColumn;
    cxGrid1DBTableView1ElemAccommodation_id: TcxGridDBColumn;
    cxGrid1DBTableView1FromDate: TcxGridDBColumn;
    cxGrid1DBTableView1ToDate: TcxGridDBColumn;
    cxGrid1DBTableView1AC: TcxGridDBColumn;
    cxGrid1DBTableView1CostSingle: TcxGridDBColumn;
    cxGrid1DBTableView1CostDouble: TcxGridDBColumn;
    cxGrid1DBTableView1CostTriple: TcxGridDBColumn;
    cxGrid1DBTableView1RoomType: TcxGridDBColumn;
    cxGrid1DBTableView1MealPlan: TcxGridDBColumn;
    cxGrid1DBTableView1CurrencyCode: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    scExcelExport: TscExcelExport;
    cxDateEdit: TcxDateEdit;
    PopupMenu2: TPopupMenu;
    ElemTrsfSds: TSQLDataSet;
    ElemTrsfCds: TClientDataSet;
    ElemTrsfDsp: TDataSetProvider;
    ElemTrsfDs: TDataSource;
    cxTransferTab: TcxTabSheet;
    cxTransferGrid: TcxGrid;
    cxTransferGridDBTableView1: TcxGridDBTableView;
    cxTransferGridDBTableView1Organisation: TcxGridDBColumn;
    cxTransferGridDBTableView1Service: TcxGridDBColumn;
    cxTransferGridDBTableView1ElemServices_id: TcxGridDBColumn;
    cxTransferGridDBTableView1Wef: TcxGridDBColumn;
    cxTransferGridLevel1: TcxGridLevel;
    cxTransferGridDBTableView1State: TcxGridDBColumn;
    cxTransferGridDBTableView1City: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    ElemTrainSds: TSQLDataSet;
    ElemTrainDsp: TDataSetProvider;
    ElemTrainCds: TClientDataSet;
    ElemTrainDs: TDataSource;
    cxTrainGrid2: TcxGrid;
    cxTrainGridDBTableView1: TcxGridDBTableView;
    cxTrainGridLevel1: TcxGridLevel;
    cxTrainGridDBTableView1FromCity: TcxGridDBColumn;
    cxTrainGridDBTableView1ToCity: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainNo: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainName: TcxGridDBColumn;
    cxTrainGridDBTableView1wef: TcxGridDBColumn;
    cxTrainGridDBTableView1ElemTickets_id: TcxGridDBColumn;
    cxTrainGridDBTableView1CurrencyCode: TcxGridDBColumn;
    cxTrainGridDBTableView1DaysOfOperation: TcxGridDBColumn;
    cxTrainGridDBTableView1Timings: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    ElemSightSds: TSQLDataSet;
    ElemSightDsp: TDataSetProvider;
    ElemSightCds: TClientDataSet;
    ElemSightDs: TDataSource;
    cxSightGrid: TcxGrid;
    cxSightGridDBTableView1: TcxGridDBTableView;
    cxSightGridLevel1: TcxGridLevel;
    cxSightGridDBTableView1Organisation: TcxGridDBColumn;
    cxSightGridDBTableView1Service: TcxGridDBColumn;
    cxSightGridDBTableView1Wef: TcxGridDBColumn;
    cxSightGridDBTableView1State: TcxGridDBColumn;
    cxSightGridDBTableView1City: TcxGridDBColumn;
    cxSightGridDBTableView1ElemServices_id: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    ElemCarSds: TSQLDataSet;
    ElemCarDsp: TDataSetProvider;
    ElemCarCds: TClientDataSet;
    ElemCarDs: TDataSource;
    cxCarHireGrid: TcxGrid;
    cxCarHireGridDBTableView1: TcxGridDBTableView;
    cxCarHireGridLevel1: TcxGridLevel;
    cxCarHireGridDBTableView1ElemCars_id: TcxGridDBColumn;
    cxCarHireGridDBTableView1Organisation: TcxGridDBColumn;
    cxCarHireGridDBTableView1Wef: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    ElemIntercitiesSds: TSQLDataSet;
    ElemIntercitiesDsp: TDataSetProvider;
    ElemIntercitiesCds: TClientDataSet;
    ElemIntercitiesDs: TDataSource;
    cxInterCityGrid: TcxGrid;
    cxInterCityGridDBTableView1: TcxGridDBTableView;
    cxInterCityGridLevel1: TcxGridLevel;
    mnuEditInsert: TMenuItem;
    N2: TMenuItem;
    SaveAsExcel1: TMenuItem;
    cxTabSheet5: TcxTabSheet;
    cxTranspModGrid: TcxGrid;
    cxTranspModGridDBTableView1: TcxGridDBTableView;
    cxTranspModGridLevel1: TcxGridLevel;
    mnuCostOneTen: TMenuItem;
    cxButtonUtilities: TcxButton;
    PopupMenu1: TPopupMenu;
    Deletethisrecord1: TMenuItem;
    Deleteallrecordsofthisdate1: TMenuItem;
    cxTabSheet6: TcxTabSheet;
    cxRadioGroup1: TcxRadioGroup;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxExchRateTextEdit: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxCurrencyLCMB: TcxLookupComboBox;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesDs: TDataSource;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrencyCode: TStringField;
    CurrenciesCdsCurrency: TStringField;
    cxTrainGridDBTableView1ac_cc_cost: TcxGridDBColumn;
    cxTrainGridDBTableView1ac_2t_cost: TcxGridDBColumn;
    cxTrainGridDBTableView1ac_3t_cost: TcxGridDBColumn;
    cxTrainGridDBTableView1TrainType: TcxGridDBColumn;
    cxGrid1DBTableView1Quoted: TcxGridDBColumn;
    cxTransferGridDBTableView1Quoted: TcxGridDBColumn;
    cxTrainGridDBTableView1Quoted: TcxGridDBColumn;
    cxSightGridDBTableView1Quoted: TcxGridDBColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleDarkRed: TcxStyle;
    cxCarHireGridDBTableView1QuotationRef: TcxGridDBColumn;
    cxCarHireGridDBTableView1PaxName: TcxGridDBColumn;
    cxCodeLabel: TcxLabel;
    cxCodeLCMB: TcxLookupComboBox;
    CodeSds: TSQLDataSet;
    CodeDsp: TDataSetProvider;
    CodeCds: TClientDataSet;
    CodeDs: TDataSource;
    CodeCdsQuotationRef: TStringField;
    CodeCdsPaxName: TStringField;
    cxCarHireGridDBTableView1Sector: TcxGridDBColumn;
    cxInterCityGridDBTableView1ElemInterCities_id: TcxGridDBColumn;
    cxInterCityGridDBTableView1Organisation: TcxGridDBColumn;
    cxInterCityGridDBTableView1wef: TcxGridDBColumn;
    cxInterCityGridDBTableView1Quoted: TcxGridDBColumn;
    ElemCityGroupsSds: TSQLDataSet;
    ElemCityGroupsDsp: TDataSetProvider;
    ElemCityGroupsCds: TClientDataSet;
    ElemCityGroupsDs: TDataSource;
    ElemCityGroupsCdsElemCityGroups_id: TIntegerField;
    ElemCityGroupsCdsOrganisation: TStringField;
    ElemCityGroupsCdswef: TSQLTimeStampField;
    ElemCityGroupsCdsQuoted: TBooleanField;
    cxTranspModGridDBTableView1ElemCityGroups_id: TcxGridDBColumn;
    cxTranspModGridDBTableView1Organisation: TcxGridDBColumn;
    cxTranspModGridDBTableView1wef: TcxGridDBColumn;
    cxTranspModGridDBTableView1CarHireGroup: TcxGridDBColumn;
    cxTranspModGridDBTableView1Quoted: TcxGridDBColumn;
    cxInterCityGridDBTableView1FromCity: TcxGridDBColumn;
    cxInterCityGridDBTableView1ToCity: TcxGridDBColumn;
    ElemCityGroupsCdsCarHireGroup: TStringField;
    cxCarHireGridDBTableView1Quoted: TcxGridDBColumn;
    N1: TMenuItem;
    SaveCostingstoExcel1: TMenuItem;
    ExchRateLabel: TLabel;
    ElemAccCdsElemAccommodation_id: TIntegerField;
    ElemAccCdsstate: TStringField;
    ElemAccCdscity: TStringField;
    ElemAccCdsorganisation: TStringField;
    ElemAccCdsFromDate: TSQLTimeStampField;
    ElemAccCdsToDate: TSQLTimeStampField;
    ElemAccCdsAC: TBooleanField;
    ElemAccCdsroomtype: TStringField;
    ElemAccCdsplan: TStringField;
    ElemAccCdsCostSingle: TFMTBCDField;
    ElemAccCdsCostDouble: TFMTBCDField;
    ElemAccCdsCostTriple: TFMTBCDField;
    ElemAccCdscurrencycode: TStringField;
    ElemAccCdsQuoted: TBooleanField;
    ElemTrsfCdsElemServices_id: TIntegerField;
    ElemTrsfCdsState: TStringField;
    ElemTrsfCdsCity: TStringField;
    ElemTrsfCdsWef: TSQLTimeStampField;
    ElemTrsfCdsOrganisation: TStringField;
    ElemTrsfCdsService: TStringField;
    ElemTrsfCdscurrencycode: TStringField;
    ElemTrsfCdsQuoted: TBooleanField;
    cxTransferGridDBTableView1currencycode: TcxGridDBColumn;
    ElemSightCdsElemServices_id: TIntegerField;
    ElemSightCdsState: TStringField;
    ElemSightCdsCity: TStringField;
    ElemSightCdsWef: TSQLTimeStampField;
    ElemSightCdsOrganisation: TStringField;
    ElemSightCdsService: TStringField;
    ElemSightCdscurrencycode: TStringField;
    ElemSightCdsQuoted: TBooleanField;
    cxSightGridDBTableView1currencycode: TcxGridDBColumn;
    ElemTrainCdsElemTickets_id: TIntegerField;
    ElemTrainCdsWef: TSQLTimeStampField;
    ElemTrainCdsFromCity: TStringField;
    ElemTrainCdsToCity: TStringField;
    ElemTrainCdsTrainNo: TStringField;
    ElemTrainCdsTrainName: TStringField;
    ElemTrainCdsac_cc_cost: TFMTBCDField;
    ElemTrainCdsac_2t_cost: TFMTBCDField;
    ElemTrainCdsac_3t_cost: TFMTBCDField;
    ElemTrainCdscurrencycode: TStringField;
    ElemTrainCdsDaysOfOperation: TStringField;
    ElemTrainCdsTimings: TStringField;
    ElemTrainCdsQuoted: TBooleanField;
    ElemTrainCdsTrainType: TStringField;
    ElemCityGroupsCdscurrencycode: TStringField;
    cxTranspModGridDBTableView1currencycode: TcxGridDBColumn;
    cxInterCityGridDBTableView1currencycode: TcxGridDBColumn;
    ElemIntercitiesCdsElemInterCities_id: TIntegerField;
    ElemIntercitiesCdswef: TSQLTimeStampField;
    ElemIntercitiesCdsOrganisation: TStringField;
    ElemIntercitiesCdsFromCity: TStringField;
    ElemIntercitiesCdsToCity: TStringField;
    ElemIntercitiesCdscurrencycode: TStringField;
    ElemIntercitiesCdsQuoted: TBooleanField;
    ElemCarCdsElemCars_id: TIntegerField;
    ElemCarCdswef: TSQLTimeStampField;
    ElemCarCdsOrganisation: TStringField;
    ElemCarCdsQuotationRef: TStringField;
    ElemCarCdsName: TStringField;
    ElemCarCdsSector: TStringField;
    ElemCarCdscurrencycode: TStringField;
    ElemCarCdsQuoted: TBooleanField;
    ElemAccCdsAddressbook_id: TIntegerField;
    ElemTrsfCdsServices_id: TIntegerField;
    ElemTrsfCdsAgentAddressBook_id: TIntegerField;
    ElemSightCdsServices_id: TIntegerField;
    ElemSightCdsAgentAddressbook_id: TIntegerField;
    ElemCarCdsAddressbook_id: TIntegerField;
    ElemIntercitiesCdsAddressbook_id: TIntegerField;
    ElemCityGroupsCdsAddressbook_id: TIntegerField;
    Panel4: TPanel;
    cxRikCkb: TcxCheckBox;
    cxGroupBoxSS: TGroupBox;
    cxGuideCkb: TcxCheckBox;
    cxEntFeesCkb: TcxCheckBox;
    cxMeetCkb: TcxCheckBox;
    ElemAccCdsCities_id: TIntegerField;
    ElemTrainCdsFrom_Cities_id: TIntegerField;
    ElemTrainCdsTo_Cities_id: TIntegerField;
    N3: TMenuItem;
    MarkasQuoted1: TMenuItem;
    UnmarkQuoted1: TMenuItem;
    Panel5: TPanel;
    cxRecoCkb: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure FilterData;
    procedure cxFilterBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuEditInsertClick(Sender: TObject);
    procedure mnuCostOneTenClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Deletethisrecord1Click(Sender: TObject);
    procedure Deleteallrecordsofthisdate1Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxTransferGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxTrainGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxSightGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxRadioGroup1PropertiesEditValueChanged(Sender: TObject);
    procedure cxCarHireGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxInterCityGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxTranspModGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure SaveCostingstoExcel1Click(Sender: TObject);
    procedure cxCurrencyLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxTabSheet1Enter(Sender: TObject);
    procedure cxTabSheet1Exit(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxTabSheet2Enter(Sender: TObject);
    procedure cxTabSheet2Exit(Sender: TObject);
    procedure cxTabSheet3Enter(Sender: TObject);
    procedure cxTabSheet3Exit(Sender: TObject);
    procedure cxTabSheet4Exit(Sender: TObject);
    procedure cxTabSheet5Enter(Sender: TObject);
    procedure cxTabSheet5Exit(Sender: TObject);
    procedure cxAccTabEnter(Sender: TObject);
    procedure cxAccTabExit(Sender: TObject);
    procedure cxTransferTabEnter(Sender: TObject);
    procedure cxTransferTabExit(Sender: TObject);
    procedure cxTabSheet4Enter(Sender: TObject);
    procedure MarkasQuoted1Click(Sender: TObject);
    procedure UnmarkQuoted1Click(Sender: TObject);
    procedure cxRecoCkbPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function GetQuoteDate: TDateTime;
    procedure ChangeCodeQuery;
  public
    procedure MarkQuoted(x_flag: integer);
    { Public declarations }
  end;

var
  ElementsForm: TElementsForm;
  ElementsForm_Level: integer;

implementation

uses BackOfficeDM, Excel2000, GeneralUt, ImportErrorsFm,
  QuoFixedRateAccModifyFm, QuoFixedRateTrsfModifyFm,
  QuoFixedRateSsModifyFm, QuoFixedRateCarHireModifyFm,
  QuoFixedRateInterCityModifyFm, QuoFixedRateTrainModifyFm,
  HotelPriceListFm, TransferPriceListFm, SightSeeingPriceListFm,
  TrainTicketsPriceListFm, CarHirePriceListFm,
  QuoFixedRateTranspModuleModifyFm, QuoFixedRateAccFm, ElemAccCostFm,
  ElemAccFm, ElemTrsfFm, ElemSightseeingFm, ElemTrainFm, ElemSightCostFm,
  ElemTrsfCostFm, ElemCarCostFm, ElemInterCityCostFm, ElemCityGroupsCostFm,
  ElemCarFm, ElemInterCitiesFm, ElemCityGroupsFm, ModuleCostings_Ut,
  MainFm;

{$R *.dfm}

procedure TElementsForm.FormCreate(Sender: TObject);
begin
  cxDateEdit.Date := GetQuoteDate;
  cxPageControl1.ActivePageIndex := 0;

  FilterData;

  ExchRateLabel.Caption := '';

  CurrenciesCds.Open;

  CodeSds.Params[0].Value := cxDateEdit.Date;
  CodeSds.Open;
  CodeCds.Open;

  cxCurrencyLCMB.EditValue := 27;
end;

function TElementsForm.GetQuoteDate: TDateTime;
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x_date: TDateTime;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT dbo.fn_GetLastElemDate() AS MaxWef ';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_date := GpSds['MaxWef'];

  GpSds.Free;

  Result := x_date;

end;


procedure TElementsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TElementsForm.FormDestroy(Sender: TObject);
begin
  ElementsForm := nil;
end;

procedure TElementsForm.FilterData;
var
  x_Str: string;
  x_Reco: integer;
begin
  if cxPageControl1.ActivePageIndex = 0 then
    begin
      {
      ElemAccSds.Close;
      ElemAccSds.Params[0].Value := cxDateEdit.Date;
      ElemAccSds.Open;
      }

      ElemAccSds.Close;

      x_Str := '';
      if cxRikCkb.Checked = true then
        x_Str :=  'AND EXISTS (SELECT * FROM addresscategories ac ' +
                  'WHERE ea.AddressBook_id = ac.addressbook_id ' +
                  'AND ac.categories_id = 32) ';

      ElemAccSds.CommandText :=
        'SELECT ea.ElemAccommodation_id, s.state, c.city, a.organisation, ea.FromDate, ea.ToDate, ea.AC, r.roomtype, ' +
          'mp.[plan], ea.CostSingle, ea.CostDouble, ea.CostTriple, c2.currencycode, ea.Quoted, ea.Addressbook_id, a.Cities_id ' +
        'FROM ElemAccommodation ea ' +
        'LEFT JOIN addressbook a ON ea.AddressBook_id = a.addressbook_id ' +
        'LEFT JOIN cities c ON a.cities_id = c.cities_id ' +
        'LEFT JOIN states s ON c.states_id = s.states_id ' +
        'LEFT JOIN Currencies c2 ON ea.Currencies_id = c2.currencies_id ' +
        'LEFT JOIN RoomTypes r ON r.RoomTypes_id = ea.RoomTypes_id ' +
        'LEFT JOIN MealPlans mp on mp.MealPlans_id = ea.MealPlans_id ' +
        'WHERE FromDate >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ' ' +
        x_Str +
        'ORDER BY s.state, c.city, a.organisation, ea.FromDate ';

      ElemAccSds.Open;

      ElemAccCds.Close;
      ElemAccCds.Open;
      cxGrid1DBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin
      ElemTrsfSds.Close;
      ElemTrsfSds.Params[0].Value := cxDateEdit.Date;
      ElemTrsfSds.Open;

      ElemTrsfCds.Close;
      ElemTrsfCds.Open;
      cxTransferGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin
      ElemTrainSds.Close;
      ElemTrainSds.Params[0].Value := cxDateEdit.Date;
      ElemTrainSds.Open;

      ElemTrainCds.Close;
      ElemTrainCds.Open;
      cxTrainGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      x_Reco := 0;
      if cxRecoCkb.Checked then
        x_Reco := 1;

      ElemSightSds.Close;
      ElemSightSds.Params[0].Value := cxDateEdit.Date;
      ElemSightSds.Params[1].Value := x_Reco;
      ElemSightSds.Open;

      ElemSightCds.Close;
      ElemSightCds.Open;
      cxSightGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin
      ElemCarSds.Close;
      ElemCarSds.Params[0].Value := cxDateEdit.Date;
      ElemCarSds.Open;

      ElemCarCds.Close;
      ElemCarCds.Open;
      cxCarHireGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin
      ElemInterCitiesSds.Close;
      ElemInterCitiesSds.Params[0].Value := cxDateEdit.Date;
      ElemInterCitiesSds.Open;

      ElemInterCitiesCds.Close;
      ElemInterCitiesCds.Open;
      cxInterCityGridDBTableView1.ViewData.Expand(True);
    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin
      ElemCityGroupsSds.Close;
      ElemCityGroupsSds.Params[0].Value := cxDateEdit.Date;
      ElemCityGroupsSds.Open;

      ElemCityGroupsCds.Close;
      ElemCityGroupsCds.Open;
      cxTranspModGridDBTableView1.ViewData.Expand(True);
    end;
end;

procedure TElementsForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TElementsForm.cxFilterBtnClick(Sender: TObject);
begin
  FilterData;
end;

procedure TElementsForm.mnuEditInsertClick(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      ElemAccForm_Level := 4;

      if ElemAccForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemAccForm_Cities_id := -1;
      if ElemAccCds['Cities_id'] <> null then
        ElemAccForm_Cities_id := ElemAccCds['Cities_id'];

      ElemAccForm_Hotels_id := -1;
      if ElemAccCds['Addressbook_id'] <> null then
        ElemAccForm_Hotels_id := ElemAccCds['Addressbook_id'];

      ElemAccForm_Wef := Date;
      if ElemAccCds['FromDate'] <> null then
        ElemAccForm_Wef := ElemAccCds['FromDate'];

      if ElemAccForm = nil then
         Application.CreateForm(TElemAccForm, ElemAccForm);

    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      ElemTrsfForm_Level := 4;

      if ElemTrsfForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemTrsfForm_Cities_id := -1;
      if ElemTrsfCds['Cities_id'] <> null then
        ElemTrsfForm_Cities_id := ElemTrsfCds['Cities_id'];

      ElemTrsfForm_Agents_id := -1;
      if ElemTrsfCds['AgentAddressbook_id'] <> null then
        ElemTrsfForm_Agents_id := ElemTrsfCds['AgentAddressbook_id'];

      ElemTrsfForm_Services_id := -1;
      if ElemTrsfCds['Services_id'] <> null then
        ElemTrsfForm_Services_id := ElemTrsfCds['Services_id'];

      ElemTrsfForm_Wef := Date;
      if ElemTrsfCds['Wef'] <> null then
        ElemTrsfForm_Wef := ElemTrsfCds['Wef'];

      if ElemTrsfForm = nil then
         Application.CreateForm(TElemTrsfForm, ElemTrsfForm);


    end

  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      ElemTrainForm_Level := 4;

      if ElemTrainForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemTrainForm_From_Cities_id := -1;
      if ElemTrainCds['From_Cities_id'] <> null then
        ElemTrainForm_From_Cities_id := ElemTrainCds['From_Cities_id'];

      ElemTrainForm_To_Cities_id := -1;
      if ElemTrainCds['To_Cities_id'] <> null then
        ElemTrainForm_To_Cities_id := ElemTrainCds['To_Cities_id'];

      ElemTrainForm_Wef := Date;
      if ElemTrainCds['Wef'] <> null then
        ElemTrainForm_Wef := ElemTrainCds['Wef'];

      if ElemTrainForm = nil then
         Application.CreateForm(TElemTrainForm, ElemTrainForm);

    end

  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      ElemSightseeingForm_Level := 4;

      if ElemSightseeingForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemSightseeingForm_Cities_id := -1;
      if ElemSightCds['Cities_id'] <> null then
        ElemSightseeingForm_Cities_id := ElemSightCds['Cities_id'];

      ElemSightseeingForm_Agents_id := -1;
      if ElemSightCds['AgentAddressbook_id'] <> null then
        ElemSightseeingForm_Agents_id := ElemSightCds['AgentAddressbook_id'];

      ElemSightseeingForm_Services_id := -1;
      if ElemSightCds['Services_id'] <> null then
        ElemSightseeingForm_Services_id := ElemSightCds['Services_id'];

      ElemSightseeingForm_Wef := Date;
      if ElemSightCds['Wef'] <> null then
        ElemSightseeingForm_Wef := ElemSightCds['Wef'];

      if ElemSightseeingForm = nil then
         Application.CreateForm(TElemSightseeingForm, ElemSightseeingForm);

    end

  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      ElemCarForm_Level := 4;

      if ElemCarForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemCarForm_Cities_id := -1;
      if ElemCarCds['Cities_id'] <> null then
        ElemCarForm_Cities_id := ElemCarCds['Cities_id'];

      ElemCarForm_Agents_id := -1;
      if ElemCarCds['Addressbook_id'] <> null then
        ElemCarForm_Agents_id := ElemCarCds['Addressbook_id'];

      ElemCarForm_Wef := Date;
      if ElemCarCds['Wef'] <> null then
        ElemCarForm_Wef := ElemCarCds['Wef'];

      if ElemCarForm = nil then
         Application.CreateForm(TElemCarForm, ElemCarForm);

    end

  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      ElemInterCitiesForm_Level := 4;

      if ElemInterCitiesForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemInterCitiesForm_Cities_id := -1;
      if ElemInterCitiesCds['Cities_id'] <> null then
        ElemInterCitiesForm_Cities_id := ElemInterCitiesCds['Cities_id'];

      ElemInterCitiesForm_Agents_id := -1;
      if ElemInterCitiesCds['Addressbook_id'] <> null then
        ElemInterCitiesForm_Agents_id := ElemInterCitiesCds['Addressbook_id'];

      ElemInterCitiesForm_Wef := Date;
      if ElemInterCitiesCds['Wef'] <> null then
        ElemInterCitiesForm_Wef := ElemInterCitiesCds['Wef'];

      ElemInterCitiesForm_FromCities_id := -1;
      if ElemInterCitiesCds['FromCities_id'] <> null then
        ElemInterCitiesForm_FromCities_id := ElemInterCitiesCds['FromCities_id'];

      ElemInterCitiesForm_ToCities_id := -1;
      if ElemInterCitiesCds['ToCities_id'] <> null then
        ElemInterCitiesForm_ToCities_id := ElemInterCitiesCds['ToCities_id'];

      if ElemInterCitiesForm = nil then
         Application.CreateForm(TElemInterCitiesForm, ElemInterCitiesForm);

    end

  else if cxPageControl1.ActivePageIndex = 6 then
    begin

      ElemCityGroupsForm_Level := 4;

      if ElemCityGroupsForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemCityGroupsForm_Cities_id := -1;
      if ElemCityGroupsCds['Cities_id'] <> null then
        ElemCityGroupsForm_Cities_id := ElemCityGroupsCds['Cities_id'];

      ElemCityGroupsForm_Agents_id := -1;
      if ElemCityGroupsCds['Addressbook_id'] <> null then
        ElemCityGroupsForm_Agents_id := ElemCityGroupsCds['Addressbook_id'];

      ElemCityGroupsForm_Wef := Date;
      if ElemCityGroupsCds['Wef'] <> null then
        ElemCityGroupsForm_Wef := ElemCityGroupsCds['Wef'];

      if ElemCityGroupsForm = nil then
         Application.CreateForm(TElemCityGroupsForm, ElemCityGroupsForm);

    end;

end;

procedure TElementsForm.mnuCostOneTenClick(Sender: TObject);
begin

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      ElemAccCostForm_Level := ElementsForm_Level;

      If ElemAccCostForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemAccCostForm_Acc_id := ElemAccCds['ElemAccommodation_id'];

      if ElemAccCostForm = nil then
        Application.CreateForm(TElemAccCostForm, ElemAccCostForm);

      ElemAccCostForm.FormStyle := fsNormal;
      ElemAccCostForm.Visible := false;
      ElemAccCostForm.ShowModal;

      ElemAccCostForm.Free;
      ElemAccCostForm := nil;

    end

  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      ElemTrsfCostForm_Level := ElementsForm_Level;

      If ElemTrsfCostForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemTrsfCostForm_ElemServices_id := ElemTrsfCds['ElemServices_id'];
      ElemTrsfCostForm_Addressbook_id := ElemTrsfCds['AgentAddressbook_id'];

      if ElemTrsfCostForm = nil then
        Application.CreateForm(TElemTrsfCostForm, ElemTrsfCostForm);

      ElemTrsfCostForm.FormStyle := fsNormal;
      ElemTrsfCostForm.Visible := false;
      ElemTrsfCostForm.ShowModal;

      ElemTrsfCostForm.Free;
      ElemTrsfCostForm := nil;

    end

  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      ElemSightCostForm_Level := ElementsForm_Level;

      If ElemSightCostForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemSightCostForm_ElemServices_id := ElemSightCds['ElemServices_id'];
      ElemSightCostForm_Addressbook_id := ElemSightCds['AgentAddressbook_id'];

      if ElemSightCostForm = nil then
        Application.CreateForm(TElemSightCostForm, ElemSightCostForm);

      ElemSightCostForm.FormStyle := fsNormal;
      ElemSightCostForm.Visible := false;
      ElemSightCostForm.ShowModal;

      ElemSightCostForm.Free;
      ElemSightCostForm := nil;

    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      ElemCarCostForm_Level := ElementsForm_Level;

      If ElemCarCostForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemCarCostForm_ElemCars_id := ElemCarCds['ElemCars_id'];
      ElemCarCostForm_Addressbook_id := ElemCarCds['Addressbook_id'];

      if ElemCarCostForm = nil then
        Application.CreateForm(TElemCarCostForm, ElemCarCostForm);

      ElemCarCostForm.FormStyle := fsNormal;
      ElemCarCostForm.Visible := false;
      ElemCarCostForm.ShowModal;

      ElemCarCostForm.Free;
      ElemCarCostForm := nil;

    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      ElemInterCityCostForm_Level := ElementsForm_Level;

      If ElemInterCityCostForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemInterCityCostForm_ElemInterCities_id := ElemInterCitiesCds['ElemInterCities_id'];
      ElemInterCityCostForm_Addressbook_id := ElemInterCitiesCds['Addressbook_id'];

      if ElemInterCityCostForm = nil then
        Application.CreateForm(TElemInterCityCostForm, ElemInterCityCostForm);

      ElemInterCityCostForm.FormStyle := fsNormal;
      ElemInterCityCostForm.Visible := false;
      ElemInterCityCostForm.ShowModal;

      ElemInterCityCostForm.Free;
      ElemInterCityCostForm := nil;

    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin

      ElemCityGroupsCostForm_Level := ElementsForm_Level;

      If ElemCityGroupsCostForm_Level = 0 Then
        begin
          MessageDlg('Access Denied', mtError, [mbOK], 0);
          Exit;
        end;

      ElemCityGroupsCostForm_ElemCityGroups_id := ElemCityGroupsCds['ElemCityGroups_id'];
      ElemCityGroupsCostForm_Addressbook_id := ElemCityGroupsCds['Addressbook_id'];

      if ElemCityGroupsCostForm = nil then
        Application.CreateForm(TElemCityGroupsCostForm, ElemCityGroupsCostForm);

      ElemCityGroupsCostForm.FormStyle := fsNormal;
      ElemCityGroupsCostForm.Visible := false;
      ElemCityGroupsCostForm.ShowModal;

      ElemCityGroupsCostForm.Free;
      ElemCityGroupsCostForm := nil;

    end;


end;

procedure TElementsForm.cxButton1Click(Sender: TObject);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
  x_Guide, x_EntranceFees, x_MeetAssist: integer;
begin

  if cxCurrencyLCMB.EditValue = null then
    raise exception.create ('Please enter the currency');

  if MessageDlg('This will import the data from ' + FormatDateTime('dd/mm/yyyy',cxDateEdit.Date) + chr(13) +
                'Currency ' + cxCurrencyLCMB.Text + ' ' + chr(13) +
                'ExchRate ' + ExchRateLabel.Caption + chr(13) +
                '. Continue?',
                mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if cxRadioGroup1.ItemIndex = 0 then
    begin

{
      x_QueryString := 'EXEC p_ElemInsertHotels ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text;
}

      if MessageDlg ('This may take a long time as the 1-10 costs have to be computed for each hotel. ' + chr(13) +
                     'Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        exit;

      x_QueryString := 'EXEC [p_ElemInsertHotels_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ', 2, ' +
        IntToStr(cxCurrencyLCMB.EditValue);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end
  else if cxRadioGroup1.ItemIndex = 1 then
    begin

{
      x_QueryString := 'EXEC p_ElemInsertTransfers ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text;
}

      if MessageDlg ('This may take a VERY long time as the 1-10 costs have to be computed for each service. ' + chr(13) +
                     'Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        exit;

      x_Guide := 0;
      x_EntranceFees := 0;
      x_MeetAssist := 0;

      if cxGuideCkb.Checked then
        x_Guide := 1;

      if cxEntFeesCkb.Checked then
        x_EntranceFees := 1;

      if cxMeetCkb.Checked then
        x_MeetAssist := 1;

      x_QueryString := 'EXEC [p_ElemInsertServices_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ', ' +
        IntToStr(cxCurrencyLCMB.EditValue) + ', 1, ' +
        IntToStr(x_Guide) + ', ' + IntToStr(x_EntranceFees) + ', ' + IntToStr(x_MeetAssist);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end
  else if cxRadioGroup1.ItemIndex = 2 then
    begin

{
      x_QueryString := 'EXEC p_ElemInsertTickets ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text;
}

      x_QueryString := 'EXEC p_ElemInsertTickets_GST ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end
  else if cxRadioGroup1.ItemIndex = 3 then
    begin

{
      x_QueryString := 'EXEC p_ElemInsertSightseeing ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text;
}

      x_Guide := 0;
      x_EntranceFees := 0;
      x_MeetAssist := 0;

      if cxGuideCkb.Checked then
        x_Guide := 1;

      if cxEntFeesCkb.Checked then
        x_EntranceFees := 1;

      if cxMeetCkb.Checked then
        x_MeetAssist := 1;

      if MessageDlg ('This may take a VERY long time as the 1-10 costs have to be computed for each service. ' + chr(13) +
                     'Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        exit;

      x_QueryString := 'EXEC [p_ElemInsertServices_GST] ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ', ' +
        IntToStr(cxCurrencyLCMB.EditValue) + ', 0, ' +
        IntToStr(x_Guide) + ', ' + IntToStr(x_EntranceFees) + ', ' + IntToStr(x_MeetAssist);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end
  else if cxRadioGroup1.ItemIndex = 4 then
    begin

      if MessageDlg ('This may take a VERY long time as the 1-10 costs have to be computed for each DRIVE. ' + chr(13) +
                     'Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        exit;


      if MessageDlg ('This may take a VERY long time. Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

{
          x_QueryString := 'EXEC p_ElemInsertCars ' +
            QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
            IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text + ',' +
            QuotedStr(cxCodeLCMB.Text);
}

          x_QueryString := 'EXEC p_ElemInsertCars_GST ' +
            QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
            IntToStr(cxCurrencyLCMB.EditValue);

          GpSds.Close;
          GpSds.CommandText := x_QueryString;
          GpSds.ExecSQL;

        end;

    end
  else if cxRadioGroup1.ItemIndex = 5 then
    begin

      if MessageDlg ('This may take a long time as the 1-10 costs have to be computed for each car. ' + chr(13) +
                     'Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        exit;


{
          x_QueryString := 'EXEC p_ElemInsertInterCities ' +
            QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
            IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text;
}

      x_QueryString := 'EXEC p_ElemInsertInterCities_GST ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end
  else if cxRadioGroup1.ItemIndex = 6 then
    begin

      if MessageDlg ('This may take a long time as the 1-10 costs have to be computed for each car. ' + chr(13) +
                     'Please be patient. Are you sure you want to continue?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        exit;

{
          x_QueryString := 'EXEC p_ElemInsertCityGroups ' +
            QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
            IntToStr(cxCurrencyLCMB.EditValue) + ', ' + cxExchRateTextEdit.Text + ' ';
}

      x_QueryString := 'EXEC p_ElemInsertCityGroups_GST ' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ',' +
        IntToStr(cxCurrencyLCMB.EditValue);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

  ShowMessage('Done');

end;

procedure TElementsForm.Deletethisrecord1Click(Sender: TObject);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  if MessageDlg('Are you sure you would like to delete this record? ',
                mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      x_QueryString := 'DELETE FROM ElemAccommodationCosts ' +
        'WHERE ElemAccommodation_id = ' + IntToStr(ElemAccCds['ElemAccommodation_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemAccommodation ' +
        'WHERE ElemAccommodation_id = ' + IntToStr(ElemAccCds['ElemAccommodation_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end

  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      x_QueryString := 'DELETE FROM ElemServicesCosts ' +
        'WHERE ElemServices_id = ' + IntToStr(ElemTrsfCds['ElemServices_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemServices ' +
        'WHERE ElemServices_id = ' + IntToStr(ElemTrsfCds['ElemServices_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      x_QueryString := 'DELETE FROM ElemTickets ' +
        'WHERE ElemTickets_id = ' + IntToStr(ElemTrainCds['ElemTickets_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      x_QueryString := 'DELETE FROM ElemServicesCosts ' +
        'WHERE ElemServices_id = ' + IntToStr(ElemSightCds['ElemServices_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;


      x_QueryString := 'DELETE FROM ElemServices ' +
        'WHERE ElemServices_id = ' + IntToStr(ElemSightCds['ElemServices_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      x_QueryString := 'DELETE FROM ElemCarsCosts ' +
        'WHERE ElemCars_id = ' + IntToStr(ElemCarCds['ElemCars_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemCars ' +
        'WHERE ElemCars_id = ' + IntToStr(ElemCarCds['ElemCars_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      x_QueryString := 'DELETE FROM ElemInterCitiesCosts ' +
        'WHERE ElemInterCities_id = ' + IntToStr(ElemInterCitiesCds['ElemInterCities_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemInterCities ' +
        'WHERE ElemInterCities_id = ' + IntToStr(ElemInterCitiesCds['ElemInterCities_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin

      x_QueryString := 'DELETE FROM ElemCityGroupsCosts ' +
        'WHERE ElemCityGroups_id = ' + IntToStr(ElemCityGroupsCds['ElemCityGroups_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemCityGroups ' +
        'WHERE ElemCityGroups_id = ' + IntToStr(ElemCityGroupsCds['ElemCityGroups_id']);

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;

    end;


  GpSds.Free;

end;

procedure TElementsForm.Deleteallrecordsofthisdate1Click(Sender: TObject);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  if MessageDlg('Are you sure you would like to delete all records with this wef date as ' +
                FormatDateTime('dd/mm/yyyy',cxDateEdit.Date) + '? ',
                mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      x_QueryString := 'DELETE FROM ElemAccommodationCosts ' +
        'WHERE EXISTS (SELECT * FROM ElemAccommodation ea ' +
                       'WHERE ElemAccommodationCosts.ElemAccommodation_id = ea.ElemAccommodation_id ' +
                       'AND ea.FromDate >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemAccCds['FromDate'])) + ')';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemAccommodation ' +
        'WHERE FromDate >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemAccCds['FromDate']));

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end

  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      x_QueryString := 'DELETE FROM ElemServicesCosts ' +
        'WHERE EXISTS (SELECT * FROM ElemServices es ' +
                       'WHERE ElemServicesCosts.ElemServices_id = es.ElemServices_id ' +
                       'AND es.wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemTrsfCds['Wef'])) + ' ' +
                       'AND es.SightSeeing = 0) ';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemServices ' +
        'WHERE wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemTrsfCds['Wef'])) + ' ' +
        'AND SightSeeing = 0';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end
  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      x_QueryString := 'DELETE FROM ElemTickets ' +
        'WHERE wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemTrainCds['Wef'])) + ' ';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end
  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      x_QueryString := 'DELETE FROM ElemServicesCosts ' +
        'WHERE EXISTS (SELECT * FROM ElemServices es ' +
                       'WHERE ElemServicesCosts.ElemServices_id = es.ElemServices_id ' +
                       'AND es.wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemSightCds['Wef'])) + ' ' +
                       'AND es.SightSeeing = 1) ';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;


      x_QueryString := 'DELETE FROM ElemServices ' +
        'WHERE wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemSightCds['Wef'])) + ' ' +
        'AND SightSeeing = 1';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end
  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      x_QueryString := 'DELETE FROM ElemCarsCosts ' +
        'WHERE EXISTS (SELECT * FROM ElemCars ec ' +
                       'WHERE ElemCarsCosts.ElemCars_id = ec.ElemCars_id ' +
                       'AND ec.Wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemCarCds['Wef'])) + ') ';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;


      x_QueryString := 'DELETE FROM ElemCars ' +
        'WHERE wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemCarCds['Wef'])) + ' ';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end
  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      x_QueryString := 'DELETE FROM ElemInterCitiesCosts ' +
        'WHERE EXISTS (SELECT * FROM ElemInterCities ec ' +
                       'WHERE ElemInterCitiesCosts.ElemInterCities_id = ec.ElemInterCities_id ' +
                       'AND ec.Wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemInterCitiesCds['Wef'])) + ') ';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      x_QueryString := 'DELETE FROM ElemInterCities ' +
        'WHERE wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemInterCitiesCds['Wef'])) + ' ';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end
  else if cxPageControl1.ActivePageIndex = 6 then
    begin

      x_QueryString := 'DELETE FROM ElemCityGroupsCosts ' +
        'WHERE EXISTS (SELECT * FROM ElemCityGroups ec ' +
                       'WHERE ElemCityGroupsCosts.ElemCityGroups_id = ec.ElemCityGroups_id ' +
                       'AND ec.Wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemCityGroupsCds['Wef'])) + ') ';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;


      x_QueryString := 'DELETE FROM ElemCityGroups ' +
        'WHERE wef >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy',ElemCityGroupsCds['Wef'])) + ' ';

      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.ExecSQL;

      FilterData;
    end;


  GpSds.Free;

end;

procedure TElementsForm.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;

end;

procedure TElementsForm.cxTransferGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;

end;

procedure TElementsForm.cxTrainGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;


end;

procedure TElementsForm.cxSightGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;


end;

procedure TElementsForm.cxRadioGroup1PropertiesEditValueChanged(
  Sender: TObject);
begin

  // Car Hire
  if (cxRadioGroup1.ItemIndex = 4)  then
    begin
      cxCodeLCMB.Visible := false;
      cxCodeLabel.Visible := false;
      ChangeCodeQuery;
    end
  else
    begin
      cxCodeLCMB.Visible := false;
      cxCodeLabel.Visible := false;
      ChangeCodeQuery;
    end;

  // Sightseeing
  if (cxRadioGroup1.ItemIndex = 3) or (cxRadioGroup1.ItemIndex = 1) then
    begin
      cxGroupBoxSS.Visible := true;
    end
  else
    begin
      cxGroupBoxSS.Visible := false;
    end;

end;

procedure TElementsForm.ChangeCodeQuery;
begin

  CodeCds.Close;
  CodeSds.Close;

  CodeSds.CommandText :=
    'SELECT DISTINCT q.QuotationRef, q.PaxName ' +
    'FROM Quotations q ' +
    'WHERE q.Trial = 3 ' +
    'AND q.ValidFrom >= :wef ';

  if (cxRadioGroup1.ItemIndex = 4) then
    CodeSds.CommandText := CodeSds.CommandText +
      ' AND EXISTS (SELECT * FROM QuoLines ql ' +
      'WHERE q.Quotations_id = ql.Quotations_id ' +
      'AND ql.DriveTypes_id = 1)';
{
  else if (cxRadioGroup1.ItemIndex = 5) then
    CodeSds.CommandText := CodeSds.CommandText +
      ' AND EXISTS (SELECT * FROM QuoLines ql ' +
      'WHERE q.Quotations_id = ql.Quotations_id ' +
      'AND ql.DriveTypes_id = 2)'
  else if (cxRadioGroup1.ItemIndex = 6) then
    CodeSds.CommandText := CodeSds.CommandText +
      ' AND EXISTS (SELECT * FROM QuoLines ql ' +
      'WHERE q.Quotations_id = ql.Quotations_id ' +
      'AND ql.DriveTypes_id = 3)';
}

  CodeSds.CommandText := CodeSds.CommandText +
    'ORDER BY q.QuotationRef';

  CodeSds.Params[0].Value := cxDateEdit.Date;

  CodeSds.Open;
  CodeCds.Open;

end;


procedure TElementsForm.cxCarHireGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;

end;

procedure TElementsForm.cxInterCityGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;


end;

procedure TElementsForm.cxTranspModGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Quoted');

  if ARecord.Values[AColumn.Index] = '1' then
    AStyle := cxStyleGreen
  else
    AStyle := cxStyleBlue;


end;

procedure TElementsForm.SaveCostingstoExcel1Click(Sender: TObject);
var
  x_Currencies_id: integer;
  x_QueryString: string;
  x_FileName: string;
  GpSds : TSQLDataSet;
begin
  if cxDateEdit.Date = null then
    raise exception.create('Please enter the wef first');

  x_Currencies_id := 27;

  x_QueryString := 'EXEC p_CostModules_PaxRange ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', cxDateEdit.Date)) + ',' +
    IntToStr(x_Currencies_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  x_FileName := g_ReportDir + '\ModuleCostings_' + FormatDateTime('mm_yyyy', cxDateEdit.Date) + '.xls';

  ModuleCostings_Excel(scExcelExport, x_FileName, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TElementsForm.cxCurrencyLCMBPropertiesEditValueChanged(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_Currencies_id: integer;
begin

  x_Currencies_id := 13;

  if cxCurrencyLcmb.EditValue <> null then
    x_Currencies_id := cxCurrencyLcmb.EditValue;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  ExchRateLabel.Caption := '';
  if x_Currencies_id <> 13 then
    begin

      // Exch Rate
      GpSds.Close;
      GpSds.CommandText := 'SELECT ExchRate = [dbo].[fn_GetExchangeRate] (' + IntToStr(x_Currencies_id) + ',' +
        QuotedStr(FormatDateTime('mm/dd/yyyy',cxDateEdit.Date)) + ')';
      GpSds.Open;
      if (not GpSds.Eof) and (GpSds['ExchRate'] <> null) and (GpSds['ExchRate'] <> 1.0) then
        ExchRateLabel.Caption := ' @ ' + FormatFloat('#,##0.00',GpSds['ExchRate']);

    end;

  GpSds.Free;

end;

procedure TElementsForm.cxTabSheet1Enter(Sender: TObject);
begin
  mnuCostOneTen.Enabled := false;
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxTabSheet1Exit(Sender: TObject);
begin
  mnuCostOneTen.Enabled := true;
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

procedure TElementsForm.cxTabSheet2Enter(Sender: TObject);
begin
  mnuEditInsert.Visible := false;
end;

procedure TElementsForm.cxTabSheet2Exit(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxTabSheet3Enter(Sender: TObject);
begin
  mnuEditInsert.Visible := false;
end;

procedure TElementsForm.cxTabSheet3Exit(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxTabSheet4Enter(Sender: TObject);
begin
  mnuEditInsert.Visible := false;
end;

procedure TElementsForm.cxTabSheet4Exit(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxTabSheet5Enter(Sender: TObject);
begin
  mnuEditInsert.Visible := false;
end;

procedure TElementsForm.cxTabSheet5Exit(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxAccTabEnter(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxAccTabExit(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;

procedure TElementsForm.cxTransferTabEnter(Sender: TObject);
begin
  mnuEditInsert.Visible := false;
end;

procedure TElementsForm.cxTransferTabExit(Sender: TObject);
begin
  mnuEditInsert.Visible := true;
end;


procedure TElementsForm.MarkasQuoted1Click(Sender: TObject);
begin
  MarkQuoted(1);
end;

procedure TElementsForm.UnmarkQuoted1Click(Sender: TObject);
begin
  MarkQuoted(0);
end;

procedure TElementsForm.MarkQuoted(x_flag: integer);
var
  GpSds: TSQLDataSet;
  x_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if cxPageControl1.ActivePageIndex = 0 then
    begin

      x_id := ElemAccCds['ElemAccommodation_id'];

      GpSds.CommandText := 'UPDATE ElemAccommodation SET Quoted = ' + IntToStr(x_flag) + ' WHERE ElemAccommodation_id = ' + IntToStr(ElemAccCds['ElemAccommodation_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemAccCds.Locate('ElemAccommodation_id',x_id,[]);

    end
  else if cxPageControl1.ActivePageIndex = 1 then
    begin

      x_id := ElemTrsfCds['ElemServices_id'];

      GpSds.CommandText := 'UPDATE ElemServices SET Quoted = '  + IntToStr(x_flag) + ' WHERE ElemServices_id = ' + IntToStr(ElemTrsfCds['ElemServices_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemTrsfCds.Locate('ElemServices_id',x_id,[]);

    end

  else if cxPageControl1.ActivePageIndex = 2 then
    begin

      x_id := ElemTrainCds['ElemTickets_id'];

      GpSds.CommandText := 'UPDATE ElemTickets SET Quoted = ' + IntToStr(x_flag) + ' WHERE ElemTickets_id = ' + IntToStr(ElemTrainCds['ElemTickets_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemTrainCds.Locate('ElemTickets_id',x_id,[]);

    end

  else if cxPageControl1.ActivePageIndex = 3 then
    begin

      x_id := ElemSightCds['ElemServices_id'];

      GpSds.CommandText := 'UPDATE ElemServices SET Quoted = ' + IntToStr(x_flag) + ' WHERE ElemServices_id = ' + IntToStr(ElemSightCds['ElemServices_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemSightCds.Locate('ElemServices_id',x_id,[]);

    end

  else if cxPageControl1.ActivePageIndex = 4 then
    begin

      x_id := ElemCarCds['ElemCars_id'];

      GpSds.CommandText := 'UPDATE ElemCars SET Quoted = ' + IntToStr(x_flag) + ' WHERE ElemCars_id = ' + IntToStr(ElemCarCds['ElemCars_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemCarCds.Locate('ElemCars_id',x_id,[]);

    end

  else if cxPageControl1.ActivePageIndex = 5 then
    begin

      x_id := ElemIntercitiesCds['ElemIntercities_id'];

      GpSds.CommandText := 'UPDATE ElemIntercities SET Quoted = ' + IntToStr(x_flag) + ' WHERE ElemIntercities_id = ' + IntToStr(ElemIntercitiesCds['ElemIntercities_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemIntercitiesCds.Locate('ElemIntercities_id',x_id,[]);

    end

  else if cxPageControl1.ActivePageIndex = 6 then
    begin

      x_id := ElemCityGroupsCds['ElemCityGroups_id'];

      GpSds.CommandText := 'UPDATE ElemCityGroups SET Quoted = ' + IntToStr(x_flag) + ' WHERE ElemCityGroups_id = ' + IntToStr(ElemCityGroupsCds['ElemCityGroups_id']);
      GpSds.ExecSQL;

      FilterData;

      ElemCityGroupsCds.Locate('ElemCityGroups_id',x_id,[]);

    end;

  GpSds.Free;

end;


procedure TElementsForm.cxRecoCkbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterData;
end;

end.
