unit QuoModulesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DType1Fm, Menus, cxLookAndFeelPainters, FMTBcd,
  DBClient, DB, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxNavigator, cxDBNavigator,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, DBCtrls,
  cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit, scExcelExport, Mask,
  cxRadioGroup, cxCheckBox, Math;

type
  TQuoModulesForm = class(TCustom1M1DType1Form)
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxDBNavigator1: TcxDBNavigator;
    cxLabel4: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    TourDateEdit: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    MasterCdsQuoModules_id: TIntegerField;
    MasterCdsQuotationDate: TSQLTimeStampField;
    MasterCdsQuotationNo: TIntegerField;
    MasterCdsQuotationYearRef: TIntegerField;
    MasterCdsPaxName: TStringField;
    MasterCdsTrial: TIntegerField;
    Detail1CdsQuoModuleDetails_id: TIntegerField;
    Detail1CdsQuoModules_id: TIntegerField;
    Detail1CdsDateIn: TSQLTimeStampField;
    Detail1CdsDateOut: TSQLTimeStampField;
    Detail1CdsFixedItin_id: TIntegerField;
    Detail1CdsTickets_id: TIntegerField;
    Detail1CdsFromCities_id: TIntegerField;
    Detail1CdsToCities_id: TIntegerField;
    Detail1CdsServices_id: TIntegerField;
    PopupMenu1: TPopupMenu;
    cxButton1: TcxButton;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Detail1CdsCost: TFMTBCDField;
    Detail1CdsTrsType: TIntegerField;
    Detail1CdsHotelAddressbook_id: TIntegerField;
    Detail1CdsTransferTypes_id: TIntegerField;
    Detail1CdsQty: TFMTBCDField;
    Detail1CdsRate: TFMTBCDField;
    Detail1CdsQuoModuleDetails: TStringField;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    cxGridMasterDBBandedTableView1QuoModuleDetails_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoModules_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DateIn: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DateOut: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1FixedItin_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Services_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TrsType: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1HotelAddressbook_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TransferTypes_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoModuleDetails: TcxGridDBBandedColumn;
    DBText1: TDBText;
    Insert1: TMenuItem;
    MasterCdsNumPax: TIntegerField;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Detail1CdsNights: TIntegerField;
    cxTrialLabel: TcxLabel;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    MasterCdsArrivalDate: TSQLTimeStampField;
    cxLabel5: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    MasterCdsNumSingles: TIntegerField;
    MasterCdsNumDoubles: TIntegerField;
    MasterCdsNumTriples: TIntegerField;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Detail1CdsTrainNo: TStringField;
    Detail1CdsP2P: TIntegerField;
    Detail1CdsGroupOrderNo: TIntegerField;
    cxGridMasterDBBandedTableView1GroupOrderNo: TcxGridDBBandedColumn;
    Detail1CdsDayNo: TIntegerField;
    cxGridMasterDBBandedTableView1DayNo: TcxGridDBBandedColumn;
    Detail1CdsDayFrom: TStringField;
    Detail1CdsDayTill: TStringField;
    cxGridMasterDBBandedTableView1DayFrom: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1DayTill: TcxGridDBBandedColumn;
    Detail1CdsMainOrderNo: TIntegerField;
    Detail1CdsSubOrderNo: TIntegerField;
    Detail1CdsParentFixedItin_id: TIntegerField;
    cxGridMasterDBBandedTableView1MainOrderNo: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1SubOrderNo: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ParentFixedItin_id: TcxGridDBBandedColumn;
    FixedItinSds: TSQLDataSet;
    FixedItinDsp: TDataSetProvider;
    FixedItinCds: TClientDataSet;
    FixedItinDs: TDataSource;
    FixedItinCdsFixedItin_id: TIntegerField;
    FixedItinCdsTitle: TStringField;
    FixedItinCdsQuoModules_id: TIntegerField;
    Detail1CdsRecType: TIntegerField;
    cxStyleGrey: TcxStyle;
    cxGridMasterDBBandedTableView1RecType: TcxGridDBBandedColumn;
    Label1: TLabel;
    MasterCdsTourCode: TStringField;
    cxLabel9: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    MasterCdscurrencies_id: TIntegerField;
    scExcelExport: TscExcelExport;
    MasterCdsTourDate: TSQLTimeStampField;
    MasterCdsPrincipalAgents_id: TIntegerField;
    cxLabel13: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel14: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Detail1CdsFlightNo: TStringField;
    cxSearchTextEdit: TcxTextEdit;
    cxSearchGB: TcxRadioGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    MasterCdsCancelled: TBooleanField;
    cxLabel11: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    MasterCdsRemarks: TStringField;
    Detail1CdsCancelPerc: TFMTBCDField;
    cxGridMasterDBBandedTableView1CancelPerc: TcxGridDBBandedColumn;
    N1: TMenuItem;
    PrintInvoice1: TMenuItem;
    SaveAsExcel1: TMenuItem;
    ServiceTaxperInvoice1: TMenuItem;
    ServiceTaxperItemFormat1: TMenuItem;
    Detail1CdsServTaxPerc: TFMTBCDField;
    Detail1CdsServTaxAmt: TFMTBCDField;
    Detail1CdsTotalAmt: TFMTBCDField;
    cxGridMasterDBBandedTableView1ServTaxPerc: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ServTaxAmt: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1TotalAmt: TcxGridDBBandedColumn;
    N2: TMenuItem;
    Detail1CdsRateAfterServTax: TFMTBCDField;
    cxGridMasterDBBandedTableView1RateAfterServTax: TcxGridDBBandedColumn;
    InsertNewModules1: TMenuItem;
    N3: TMenuItem;
    Refresh1: TMenuItem;
    cxLabel12: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    MasterCdsNumTwins: TIntegerField;
    N4: TMenuItem;
    WorkB1: TMenuItem;
    SaveAsExcel2: TMenuItem;
    Detail1CdsPlaceOfSupplyLine: TStringField;
    PlaceOfSupplySds: TSQLDataSet;
    PlaceOfSupplyDsp: TDataSetProvider;
    PlaceOfSupplyCds: TClientDataSet;
    PlaceOfSupplyDs: TDataSource;
    cxGridMasterDBBandedTableView1PlaceOfSupplyLine: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
    procedure FormDestroy(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure TopPanelLayout(x_trial: integer);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure UpdateDayNos;
    procedure Detail1CdsCalcFields(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    function GetLinkedMainOrderNo(x_QuoModules_id, x_ParentFixedItin_id: integer): integer;
    function GetLinkedSubOrderNo(x_QuoModules_id, x_MainOrderNo: integer) : integer;
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure Detail1CdsAfterDelete(DataSet: TDataSet);
    function GetCurrencyForPrincipalAgent(x_PrincipalAgents_id: integer): integer;
    procedure FormActivate(Sender: TObject);
    procedure cxSearchTextEditKeyPress(Sender: TObject; var Key: Char);
    procedure PrintInvoice1Click(Sender: TObject);
    procedure ServiceTaxperInvoice1Click(Sender: TObject);
    procedure ServiceTaxperItemFormat1Click(Sender: TObject);
    procedure InsertNewModules1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure MasterCdsBeforeDelete(DataSet: TDataSet);
    procedure WorkB1Click(Sender: TObject);
    procedure SaveAsExcel2Click(Sender: TObject);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure SearchQuotation;
    function CheckDuplicate: integer;
  public
    { Public declarations }
    procedure TourGstQuotation(x_type: integer);
  end;

var
  QuoModulesForm: TQuoModulesForm;
  _QuoModulesForm_Level: Integer;
  _QuoModulesForm_FromDate, _QuoModulesForm_ToDate :TDateTime;
  _QuoModulesForm_Trial: Integer;

implementation

uses BackOfficeDM, GeneralUt, SearchSortFm, StrUtils, DateUtils,
  QuoModuleListFm, QuoModules_ExcelReportsUt, RpQuoModuleFm,
  QuoModuleElemListFm, MainFm, Gst_QuoModules_ExcelReportsUt;

{$R *.dfm}

procedure TQuoModulesForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'QuoModules';
  MasterKeyField := 'QuoModules_id';

  Detail1CdsName := 'QuoModuleDetails';
  Detail1KeyField := 'QuoModuleDetails_id';

  MasterCds.Active := False;
  MasterCds.Filter := '(QuotationDate >= ''' + FormatDateTime('dd/mm/yyyy',_QuoModulesForm_FromDate) + ''' ' +
        ' AND QuotationDate <= ''' + FormatDateTime('dd/mm/yyyy',_QuoModulesForm_ToDate) + ''') ' +
        ' AND (Trial = ' + IntToStr(_QuoModulesForm_Trial) + ')';
  MasterCds.Filtered := True;

  inherited;
  AdmLevel := _QuoModulesForm_Level;

  cxTrialLabel.Caption := '';
  TopPanelLayout(_QuoModulesForm_Trial);

  FixedItinCds.Open;
  BackOfficeDataModule.CurrenciesCds.Open;
  BackOfficeDataModule.PrinAgentCds.Open;
  PlaceOfSupplyCds.Open;

end;

procedure TQuoModulesForm.TopPanelLayout(x_trial: integer);
begin

  if x_trial = 1 then
    begin
      Panel1.Color := cxStyleRed.Color;
      cxTrialLabel.Caption := 'TRIAL AREA';
    end
  else if x_trial = 2 then
    begin
      Panel1.Color := cxStyleBlue.Color;
      cxTrialLabel.Caption := 'WEB QUOTATIONS AREA';
    end;

end;


function TQuoModulesForm.GetNextQuoteNo (x_YearRef, x_Trial: integer): integer;
var
  x_NextQuoteNo: integer;
  GpSds : TSQLDataSet;
  x_QueryString: string;
begin
  x_QueryString := 'SELECT MAX(QuotationNo) AS NextQuoteNo FROM QuoModules ' +
    'WHERE QuotationYearRef = ' + IntToStr(x_YearRef) + ' ' +
    'AND Trial = ' + IntToStr(x_Trial);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['NextQuoteNo'] <> null) then
    x_NextQuoteNo := GpSds['NextQuoteNo']+1
  else
    x_NextQuoteNo := 1;

  GpSds.Free;

  Result := x_NextQuoteNo;
end;


procedure TQuoModulesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['QuotationDate'] := Date;
  if MasterCds['QuotationDate'] > _QuoModulesForm_ToDate then
    MasterCds['QuotationDate'] := _QuoModulesForm_ToDate;
  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);
  MasterCds['Trial'] := _QuoModulesForm_Trial;
  MasterCds['QuotationNo'] := GetNextQuoteNo (MasterCds['QuotationYearRef'], _QuoModulesForm_Trial);
  MasterCds['PrincipalAgents_id'] := GetDefaultPrincipalAgent;
  if MasterCds['PrincipalAgents_id'] <> null then
    MasterCds['Currencies_id'] := GetCurrencyForPrincipalAgent(MasterCds['PrincipalAgents_id']);
  MasterCds['Cancelled'] := false;
end;

function TQuoModulesForm.GetCurrencyForPrincipalAgent(x_PrincipalAgents_id: integer): integer;
var
  x_Currencies_id: integer;
  GpSds : TSQLDataSet;
  x_QueryString: string;
begin
  inherited;

  x_QueryString := 'SELECT Currencies_id FROM Addressbook ' +
    'WHERE AddressBook_id = '+ IntToStr(x_PrincipalAgents_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_Currencies_id := 0;
  if (not GpSds.EOF) and (GpSds['Currencies_id'] <> null) then
    x_Currencies_id := GpSds['Currencies_id'];

  GpSds.Free;

  Result := x_Currencies_id;

end;

procedure TQuoModulesForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_QuoModules_id: integer;
  GpSds : TSQLDataSet;
begin
  if MasterCds['QuotationDate'] = null then
    raise Exception.Create('Please enter the quotation date');

  if MasterCds['ArrivalDate'] = null then
    raise Exception.Create('Please enter the arrival date');

  if (MasterCds['QuotationDate'] < _QuoModulesForm_FromDate) or (MasterCds['QuotationDate'] > _QuoModulesForm_ToDate) then
    raise Exception.Create('Date does not lie in the selected date range');

  MasterCds['QuotationYearRef'] := CalcCentury(MasterCds['QuotationDate'],4);

  if MasterCds['QuotationNo'] = null then
    raise Exception.Create('Please enter the quotation number');

  if MasterCds['QuotationYearRef'] = null then
    raise Exception.Create('Please enter the year reference');

  if MasterCds['Currencies_id'] = null then
    raise Exception.Create('Please enter the currency');

  if MasterCds['NumPax'] = null then
    raise Exception.Create('Please enter the no. of pax');

  if MasterCds['NumSingles'] = null then
    MasterCds['NumSingles'] := 0;

  if MasterCds['NumDoubles'] = null then
    MasterCds['NumDoubles'] := 0;

  if MasterCds['NumTwins'] = null then
    MasterCds['NumTwins'] := 0;

  if MasterCds['NumTriples'] = null then
    MasterCds['NumTriples'] := 0;

  if MasterCds['Cancelled'] = null then
    MasterCds['Cancelled'] := false;

  if CheckDuplicate > 0 then
    begin
      if MessageDlg('Duplicate Code found. Do you want to mark the earlier as cancelled?', mtWarning, [mbYes, mbNo],0) <> mrYes then
        abort;
      x_QuoModules_id := 0;
      if MasterCds.State = dsEdit then
        x_QuoModules_id := MasterCds['QuoModules_id'];

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GpSds.CommandType := ctQuery;
      GpSds.CommandText := 'EXEC p_CancelPrevQuoModules ' + QuotedStr(MasterCds['TourCode']) + ',' + IntToStr(x_QuoModules_id) + ',' +
        IntToStr(_QuoModulesForm_Trial);
      GpSds.ExecSQL;

      GpSds.Free;

    end;

  inherited;
end;

function TQuoModulesForm.CheckDuplicate: integer;
var
  x_count: integer;
  GpSds : TSQLDataSet;
  x_str: string;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_count := 0;

  x_str := '';
  if MasterCds.State = dsEdit then
    x_str := 'AND QuoModules_id <> '+ IntToStr(MasterCds['QuoModules_id']);

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoModules ' +
    'WHERE (TourCode = ''' + MasterCds['TourCode'] + ''') ' +
    ' AND (Trial = ' + IntToStr(_QuoModulesForm_Trial) + ') ' +
    x_str;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['x_count'] <> null) then
    x_count := GpSds['x_count'];

  GpSds.Free;

  Result := x_count;
end;


procedure TQuoModulesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoModulesForm := nil;
end;

procedure TQuoModulesForm.Insert1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if (Detail1Cds.State = dsInsert) or (Detail1Cds.State = dsEdit) then
    raise exception.create('Please save or cancel entry first');

  if MasterCds['QuoModules_id'] = null then
    Abort;

  _QuoModuleListForm_QuoDate := MasterCds['QuotationDate'];
  _QuoModuleListForm_ArrivalDate := MasterCds['ArrivalDate'];
  _QuoModuleListForm_NumPax := MasterCds['NumPax'];

  if QuoModuleListForm = nil then
    Application.CreateForm(TQuoModuleListForm,QuoModuleListForm);

  QuoModuleListForm.Visible := False;

  QuoModuleListForm.ShowModal;

  QuoModuleListForm.Free;
  QuoModuleListForm := nil;

end;

procedure TQuoModulesForm.Detail1CdsBeforePost(DataSet: TDataSet);
var
  x_MainOrderNo, x_Singles, x_Doubles, x_Triples, x_Twins: integer;
begin
  inherited;

  if (Detail1Cds['FixedItin_id'] <> null) and (Detail1Cds['ParentFixedItin_id'] <> null) then
    raise exception.create ('Cannot link a main booking element');

  if Detail1Cds['Nights'] = null then
    Detail1Cds['Nights'] := 0;

  if (Detail1Cds['DateIn'] = null) then
    Detail1Cds['GroupOrderNo'] := 2
  else
    Detail1Cds['GroupOrderNo'] := 1;

  if (Detail1Cds['DateIn'] <> null) and (Detail1Cds['Nights'] <> null) then
    Detail1Cds['DateOut'] := IncDay(Detail1Cds['DateIn'], Detail1Cds['Nights']);

  if Detail1Cds['Qty'] = null then
    Detail1Cds['Qty'] := 1.0;

  if Detail1Cds['Rate'] = null then
    Detail1Cds['Rate'] := 0.0;

  if (Detail1Cds['ParentFixedItin_id'] <> null) then
    begin
      x_MainOrderNo := GetLinkedMainOrderNo(MasterCds['QuoModules_id'], Detail1Cds['ParentFixedItin_id']);
      if x_MainOrderNo > 0 then
        Detail1Cds['MainOrderNo'] := x_MainOrderNo;

      if (Detail1Cds['SubOrderNo'] = null) and (x_MainOrderNo > 0) then
        Detail1Cds['SubOrderNo'] := GetLinkedSubOrderNo(MasterCds['QuoModules_id'], x_MainOrderNo);
    end;


  if (Detail1Cds['ParentFixedItin_id'] <> null) and (Detail1Cds['Rate'] >= 0.0) then
    begin
      if (Detail1Cds['QuoModuleDetails'] <> null) and (not AnsiContainsStr(Detail1Cds['QuoModuleDetails'], 'Add:')) then
        begin
          Detail1Cds['QuoModuleDetails'] := StringReplace(Detail1Cds['QuoModuleDetails'], 'Less:', '', [rfReplaceAll, rfIgnoreCase]);
          //Detail1Cds['QuoModuleDetails'] := 'Add: ' + Detail1Cds['QuoModuleDetails'];
        end;
    end
  else if (Detail1Cds['ParentFixedItin_id'] <> null) and (Detail1Cds['Rate'] < 0.0) then
    begin
      if (Detail1Cds['QuoModuleDetails'] <> null) and (not AnsiContainsStr(Detail1Cds['QuoModuleDetails'], 'Less:')) then
        begin
          Detail1Cds['QuoModuleDetails'] := StringReplace(Detail1Cds['QuoModuleDetails'], 'Add:', '', [rfReplaceAll, rfIgnoreCase]);
          Detail1Cds['QuoModuleDetails'] := 'Less: ' + Detail1Cds['QuoModuleDetails'];
        end;
    end;

  if (Detail1Cds['TrsType'] = 2) and (Detail1Cds['DateIn'] <> null) and (Detail1Cds['DateOut'] <> null) then
    begin
      x_Singles := 0;
      if MasterCds['NumSingles'] <> null then
        x_Singles := MasterCds['NumSingles'];
      x_Doubles := 0;
      if MasterCds['NumDoubles'] <> null then
        x_Doubles := MasterCds['NumDoubles'];
      x_Twins := 0;
      if MasterCds['NumTwins'] <> null then
        x_Twins := MasterCds['NumTwins'];
      x_Doubles := x_Doubles + x_Twins;
      x_Triples := 0;
      if MasterCds['NumTriples'] <> null then
        x_Triples := MasterCds['NumTriples'];

      if AnsiContainsStr(Detail1Cds['QuoModuleDetails'], 'Single') then
        Detail1Cds['Qty'] := Detail1Cds['Nights'] * x_Singles;
      if AnsiContainsStr(Detail1Cds['QuoModuleDetails'], 'Double') then
        Detail1Cds['Qty'] := Detail1Cds['Nights'] * x_Doubles;
      if AnsiContainsStr(Detail1Cds['QuoModuleDetails'], 'Triple') then
        Detail1Cds['Qty'] := Detail1Cds['Nights'] * x_Triples;

    end;

  Detail1Cds['Cost'] := Detail1Cds['Qty'] * Detail1Cds['Rate'];

  if Detail1Cds['FixedItin_id'] <> null then
    Detail1Cds['RecType'] := 1
  else if (Detail1Cds['ParentFixedItin_id'] <> null) and (Detail1Cds['Rate'] >= 0.0) then
    Detail1Cds['RecType'] := 2
  else if (Detail1Cds['ParentFixedItin_id'] <> null) and (Detail1Cds['Rate'] < 0.0) then
    Detail1Cds['RecType'] := 3
  else
    Detail1Cds['RecType'] := 4;

  if Detail1Cds['ServTaxPerc'] = null then
    begin
      if Detail1Cds['DateIn'] <> null then
        Detail1Cds['ServTaxPerc'] := GetServiceTax(Detail1Cds['DateIn'], 28)
      else
        Detail1Cds['ServTaxPerc'] := GetServiceTax(MasterCds['QuotationDate'], 28);
    end;

  Detail1Cds['RateAfterServTax'] := RoundOff((Detail1Cds['Rate']) * (1.0 + (Detail1Cds['ServTaxPerc']/100.0)));
  Detail1Cds['TotalAmt'] := Detail1Cds['RateAfterServTax'] * Detail1Cds['Qty'];

  Detail1Cds['ServTaxAmt'] := Detail1Cds['TotalAmt'] - Detail1Cds['Cost'];

end;


function TQuoModulesForm.GetLinkedMainOrderNo(x_QuoModules_id, x_ParentFixedItin_id: integer) : integer;
var
  x_OrderNo: integer;
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_OrderNo := 0;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'SELECT MAX(MainOrderNo) AS OrderNo FROM QuoModuleDetails ' +
    'WHERE QuoModules_id = ' + IntToStr(x_QuoModules_id) + ' ' +
    'AND FixedItin_id = ' + IntToStr(x_ParentFixedItin_id);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['OrderNo'] <> null) then
    x_OrderNo := GpSds['OrderNo'];

  GpSds.Free;

  Result := x_OrderNo;

end;

function TQuoModulesForm.GetLinkedSubOrderNo(x_QuoModules_id, x_MainOrderNo: integer) : integer;
var
  x_OrderNo: integer;
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_OrderNo := 0;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'SELECT MAX(SubOrderNo) AS OrderNo FROM QuoModuleDetails ' +
    'WHERE QuoModules_id = ' + IntToStr(x_QuoModules_id) + ' ' +
    'AND MainOrderNo = ' + IntToStr(x_MainOrderNo);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['OrderNo'] <> null) then
    x_OrderNo := GpSds['OrderNo'];

  x_OrderNo := x_OrderNo + 1;

  GpSds.Free;

  Result := x_OrderNo;

end;


procedure TQuoModulesForm.Detail1CdsAfterPost(DataSet: TDataSet);
var
  x_QuoModuleDetails_id: integer;
begin
  inherited;
  UpdateDayNos;

  x_QuoModuleDetails_id := Detail1Cds['QuoModuleDetails_id'];

  Detail1Cds.Active := False;
  Detail1Cds.Active := True;

  Detail1Cds.Locate('QuoModuleDetails_id', x_QuoModuleDetails_id, []);

  FixedItinCds.Close;
  FixedItinCds.Open;

end;

procedure TQuoModulesForm.UpdateDayNos;
var
  GpSds : TSQLDataSet;
begin
  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'EXEC p_QuoModulesUpdateDayNo ' + IntToStr(MasterCds['QuoModules_id']);
  GpSds.ExecSQL;

  GpSds.Free;
end;


procedure TQuoModulesForm.Detail1CdsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Detail1Cds['DateIn'] <> null then
    Detail1Cds['DayFrom'] := FormatDateTime ('ddd', Detail1Cds['DateIn']);

  if Detail1Cds['DateOut'] <> null then
    Detail1Cds['DayTill'] := FormatDateTime ('ddd', Detail1Cds['DateOut']);

end;

procedure TQuoModulesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  FixedItinCds.Close;
  FixedItinCds.Open;
end;

procedure TQuoModulesForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnRecType: TcxCustomGridTableItem;
begin
  inherited;

  AColumnRecType := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('RecType');

  if (ARecord.Values[AColumnRecType.Index] = 1) then
    AStyle := cxStyleYellow
  else if (ARecord.Values[AColumnRecType.Index] = 2) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnRecType.Index] = 3) then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleGrey;

end;

procedure TQuoModulesForm.Detail1CdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  FixedItinCds.Close;
  FixedItinCds.Open;

end;

procedure TQuoModulesForm.FormActivate(Sender: TObject);
begin
  inherited;

  MasterCdsName := 'QuoModules';
  MasterKeyField := 'QuoModules_id';

  Detail1CdsName := 'QuoModuleDetails';
  Detail1KeyField := 'QuoModuleDetails_id';

  AdmLevel := _QuoModulesForm_Level;

end;

procedure TQuoModulesForm.cxSearchTextEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    SearchQuotation;
end;

procedure TQuoModulesForm.SearchQuotation;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  if cxSearchGB.ItemIndex = 0 then
    begin

      QueryString := 'SELECT QuoModules_id, QuotationDate, QuotationNo ' +
            'FROM QuoModules ' +
            'WHERE QuotationNo = ' + cxSearchTextEdit.Text + ' ' +
            'AND QuotationDate BETWEEN ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_FromDate) + ''' AND ''' +
            FormatDateTime('mm/dd/yyyy',_QuoModulesForm_ToDate) + ''' ' +
            'AND Trial = ' + IntToStr(_QuoModulesForm_Trial) + ' ' +
            'ORDER BY QuotationDate';

      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Close;
      SearchSortForm.SearchSds.CommandText := QueryString;
      SearchSortForm.SearchSds.Open;

      SearchSortForm.SearchCds.Open;

      for i := 0 to 2 do
        begin
          SearchSortForm.SearchGridDBTableView1.CreateColumn;
        end;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'QuoModules_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'QuotationDate';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationNo';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 100;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Quotation Date';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quotation No';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'QuoModules_id';

      if SearchSortForm.SearchCds.RecordCount > 1 then
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              if not MasterCds.Locate('QuoModules_id', SearchSortForm.SearchCds['QuoModules_id'], []) then
                Showmessage ('Not found in selected date range');
            end;

        end

      else if SearchSortForm.SearchCds.RecordCount = 1 then
        begin
          MasterCds.Locate('QuoModules_id', SearchSortForm.SearchCds['quoModules_id'], []);
        end

      else
        begin
          ShowMessage ('Id Not Found in selected date range');
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end

  else if cxSearchGB.ItemIndex = 1 then
    begin

      QueryString := 'SELECT QuoModules_id, PaxName, QuotationDate from QuoModules ' +
            'WHERE PaxName LIKE ''%' + cxSearchTextEdit.Text + '%'' ' +
            'AND Trial = ' + IntToStr(_QuoModulesForm_Trial) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_ToDate) + ''' ' +
            'ORDER BY PaxName';

      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Close;
      SearchSortForm.SearchSds.CommandText := QueryString;
      SearchSortForm.SearchSds.Open;

      SearchSortForm.SearchCds.Open;

      for i := 0 to 2 do
        begin
          SearchSortForm.SearchGridDBTableView1.CreateColumn;
        end;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'QuoModules_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'PaxName';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationDate';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Pax Name';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quo Date';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'QuoModules_id';

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          if not MasterCds.Locate('QuoModules_id', SearchSortForm.SearchCds['quoModules_id'], []) then
            Showmessage ('Not found in selected date range');
        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end

  else if cxSearchGB.ItemIndex = 2 then
    begin

      QueryString := 'SELECT quoModules_id from quoModules ' +
            'WHERE quoModules_id = ' + cxSearchTextEdit.Text + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_ToDate) + ''' ';

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['QuoModules_id']<>null) then
        begin
          MasterCds.Locate('QuoModules_id', GpSds['QuoModules_id'], []);
        end
      else
        begin
          ShowMessage ('Id Not Found in selected date range');
        end;

      GpSds.Free;

    end

  else if cxSearchGB.ItemIndex = 3 then
    begin

      QueryString := 'SELECT QuoModules_id, TourCode, QuotationDate from QuoModules ' +
            'WHERE TourCode LIKE ''%' + cxSearchTextEdit.Text + '%'' ' +
            'AND Trial = ' + IntToStr(_QuoModulesForm_Trial) + ' ' +
            'AND QuotationDate >= ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_FromDate) + ''' ' +
            'AND QuotationDate <= ''' + FormatDateTime('mm/dd/yyyy',_QuoModulesForm_ToDate) + ''' ' +
            'ORDER BY TourCode';

      if SearchSortForm = nil then
        Application.CreateForm(TSearchSortForm, SearchSortForm);

      SearchSortForm.SearchSds.Close;
      SearchSortForm.SearchSds.CommandText := QueryString;
      SearchSortForm.SearchSds.Open;

      SearchSortForm.SearchCds.Open;

      for i := 0 to 2 do
        begin
          SearchSortForm.SearchGridDBTableView1.CreateColumn;
        end;

      //*=== Set the Grid Fields ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'QuoModules_id';
      SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'TourCode';
      SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'QuotationDate';

      //*=== Set the Grid Columns' width ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
      SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 200;
      SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 100;

      //*=== Set the Grid Column Headers ===*//
      SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Tour Code';
      SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Quo Date';

      SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'QuoModules_id';

      if SearchSortForm.SearchCds.RecordCount > 1 then
        begin

          SearchSortForm.ShowModal;

          if (SearchSortForm.ModalResult = mrOK) then
            begin
              if not MasterCds.Locate('QuoModules_id', SearchSortForm.SearchCds['QuoModules_id'], []) then
                Showmessage ('Not found in selected date range');
            end;

        end

      else if SearchSortForm.SearchCds.RecordCount = 1 then
        begin

          MasterCds.Locate('QuoModules_id', SearchSortForm.SearchCds['QuoModules_id'], []);

        end

      else
        begin

          ShowMessage ('Not found in selected date range');

        end;

      SearchSortForm.Free;
      SearchSortForm := nil;

    end;

end;


procedure TQuoModulesForm.PrintInvoice1Click(Sender: TObject);
begin
  inherited;

  if RpQuoModuleForm = nil then
    Application.CreateForm(TRpQuoModuleForm, RpQuoModuleForm);

  RpQuoModuleForm.ReportCds.Close;
  RpQuoModuleForm.ReportSds.Close;
  RpQuoModuleForm.ReportSds.CommandText :=
    'EXEC [p_PrintQuoModule] ' + IntToStr(MasterCds['QuoModules_id']) + ', 1';
  RpQuoModuleForm.ReportSds.Open;
  RpQuoModuleForm.ReportCds.Open;

  RpQuoModuleForm.PaxCds.Close;
  RpQuoModuleForm.PaxSds.Close;
  RpQuoModuleForm.PaxSds.CommandText :=
    'EXEC [p_PrintQuoModule] ' + IntToStr(MasterCds['QuoModules_id']) + ', 2';
  RpQuoModuleForm.PaxSds.Open;
  RpQuoModuleForm.PaxCds.Open;

  RpQuoModuleForm.RptDetailCds.Close;
  RpQuoModuleForm.RptDetailSds.Close;
  RpQuoModuleForm.RptDetailSds.CommandText :=
    'EXEC [p_PrintQuoModule] ' + IntToStr(MasterCds['QuoModules_id']) + ', 3';
  RpQuoModuleForm.RptDetailSds.Open;
  RpQuoModuleForm.RptDetailCds.Open;

  RpQuoModuleForm.QuickRep1.PreviewModal;

  RpQuoModuleForm.Release;
  RpQuoModuleForm := nil;

end;

procedure TQuoModulesForm.ServiceTaxperInvoice1Click(Sender: TObject);
var
  x_FileName: string;
begin
  inherited;

  if MasterCds['QuoModules_id'] = null then
    abort;

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(MasterCds['QuoModules_id']) + '.xls';

  QuoModule_Quotation_Excel(scExcelExport, x_FileName, MasterCds['QuoModules_id'], 1, 0, 0, 0, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TQuoModulesForm.ServiceTaxperItemFormat1Click(Sender: TObject);
var
  x_FileName: string;
begin
  inherited;

  if MasterCds['QuoModules_id'] = null then
    abort;

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(MasterCds['QuoModules_id']) + '.xls';

  QuoModule_Quotation_Excel(scExcelExport, x_FileName, MasterCds['QuoModules_id'], 1, 0, 0, 0, 2);

  ShowMessage('Saved As ' + x_FileName);
end;

procedure TQuoModulesForm.InsertNewModules1Click(Sender: TObject);
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if (Detail1Cds.State = dsInsert) or (Detail1Cds.State = dsEdit) then
    raise exception.create('Please save or cancel entry first');

  if MasterCds['QuoModules_id'] = null then
    Abort;

  _QuoModuleListForm_QuoDate := MasterCds['QuotationDate'];
  _QuoModuleElemListForm_ArrivalDate := MasterCds['ArrivalDate'];
  _QuoModuleElemListForm_NumPax := MasterCds['NumPax'];

  if QuoModuleElemListForm = nil then
    Application.CreateForm(TQuoModuleElemListForm,QuoModuleElemListForm);

  QuoModuleElemListForm.Visible := False;

  QuoModuleElemListForm.ShowModal;

  QuoModuleElemListForm.Free;
  QuoModuleElemListForm := nil;

end;

procedure TQuoModulesForm.Refresh1Click(Sender: TObject);
var
  x_QuoModules_id: integer;
begin
  inherited;

  x_QuoModules_id := 0;

  if MasterCds['QuoModules_id'] <> null then
    x_QuoModules_id := MasterCds['QuoModules_id'];

  Detail1Cds.Active := false;
  MasterCds.Active := false;

  MasterCds.Active := true;
  Detail1Cds.Active := true;

  MasterCds.Locate('QuoModules_id',x_QuoModules_id,[]);

end;

procedure TQuoModulesForm.MasterCdsBeforeDelete(DataSet: TDataSet);
var
  GpSds : TSQLDataSet;
begin
  inherited;
  if MessageDlg ('Are you sure you want to delete this module?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := 'DELETE FROM QuoModuleDetails ' + 
    'WHERE QuoModules_id = ' + IntToStr(MasterCds['QuoModules_id']) + ' ';
  GpSds.ExecSQL;

  GpSds.Free;

  Detail1Cds.Active := false;
  Detail1Cds.Active := true;

end;

procedure TQuoModulesForm.WorkB1Click(Sender: TObject);
var
  x_amt, x_GstPerc, x_AmtAfterTax, x_Gst, x_unitPrice, x_RateAfterGst : double;
  x_amtStr: string;
begin
  inherited;

  if Detail1Cds['ServTaxPerc'] = null then
    raise exception.create ('"GST (%)" has to be entered');

  if Detail1Cds['Qty'] = null then
    raise exception.create ('"Quantity" has to be entered');

  if Detail1Cds['Qty'] = 0 then
    raise exception.create ('"Quantity" has to be  greater than 0');

  x_amtAfterTax := 0;
  if Detail1Cds['TotalAmt'] <> null then
    x_amtAfterTax := Detail1Cds['TotalAmt'];
  x_amtStr := inputbox('', 'Please enter the amount after tax', FloatToStr(x_amtAfterTax));

  if Detail1Cds.State = dsBrowse then
    Detail1Cds.Edit;

  x_GstPerc := Detail1Cds['ServTaxPerc'];
  x_amtAfterTax := SimpleRoundTo(StrToFloat(x_amtStr),-2);
  x_amt := x_AmtAfterTax/(1.0 + x_GstPerc/100.0);
  x_Gst := SimpleRoundTo(x_amtAfterTax - x_amt,-2);
  x_amt := x_amtAfterTax - x_Gst;

  x_unitPrice := x_amt / Detail1Cds['Qty'];
  x_RateAfterGst := x_amtAfterTax / Detail1Cds['Qty'];

  Detail1Cds['Rate'] := x_unitPrice;
  Detail1Cds['Cost'] := SimpleRoundTo(x_amt,-2);
  Detail1Cds['ServTaxAmt'] := SimpleRoundTo(x_Gst,-2);
  Detail1Cds['RateAfterServTax'] := SimpleRoundTo(x_RateAfterGst,-2);
  Detail1Cds['TotalAmt'] := x_amtAfterTax;


end;

procedure TQuoModulesForm.SaveAsExcel2Click(Sender: TObject);
begin
  inherited;
  TourGstQuotation(1);
end;

procedure TQuoModulesForm.TourGstQuotation(x_type: integer);
var
  GpSds: TSQLDataSet;
  x_QuoModules_id: integer;
  x_FileName, x_MonthName: string;
  x_Months_id, x_YearRef: integer;
begin

  if MasterCds['QuoModules_id'] = null then
    raise Exception.create ('Please select a Quotation Module first');

  if MasterCds['QuotationNo'] = null then
    raise Exception.create ('Please select a Quotation No first');

  if MasterCds['QuotationDate'] = null then
    raise Exception.create ('Please select a Quotation Date first');

  x_Months_id := MonthOf(MasterCds['QuotationDate']);
  x_YearRef := YearOf(MasterCds['QuotationDate']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MonthShortName FROM Months WHERE Months_id = ' + IntToStr(x_Months_id);
  GpSds.Open;
  x_MonthName := '';
  if (not GpSds.Eof) and (GpSds['MonthShortName'] <> null) then
    x_monthName := GpSds['MonthShortName'] + '_' + IntToStr(x_YearRef);

  GpSds.Free;

  x_QuoModules_id := MasterCds['QuoModules_id'];

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(MasterCds['QuotationNo']) + '_' + x_MonthName;

  GST_QuoModule_Excel(scExcelExport, x_QuoModules_id, x_FileName);

  ShowMessage('Invoices saved in Desktop\BackOffice_Rpt folder');

end;


procedure TQuoModulesForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['ServTaxPerc'] := GetServiceTax(MasterCds['QuotationDate'], 28);
end;

end.
