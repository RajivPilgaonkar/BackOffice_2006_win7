unit InvoicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxNavigator, cxDBNavigator, cxContainer, cxLabel, cxDBLabel, StdCtrls,
  cxButtons, ExtCtrls, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, DBCtrls,
  cxMemo, cxCheckBox, cxButtonEdit, DateUtils, scExcelExport, Math,
  cxCurrencyEdit;

type
  TInvoicesForm = class(TCustom_1ML_1DG_Form)
    MasterCdsinvoices_id: TIntegerField;
    MasterCdsinvoiceno: TIntegerField;
    MasterCdsyearref: TIntegerField;
    MasterCdsaddressbook_id: TIntegerField;
    MasterCdstourcode: TStringField;
    MasterCdstourdate: TSQLTimeStampField;
    MasterCdsinvoicedate: TSQLTimeStampField;
    MasterCdsnote: TMemoField;
    MasterCdscredit: TIntegerField;
    MasterCdsdivisions_id: TIntegerField;
    MasterCdsfit: TBooleanField;
    MasterCdscompanies_id: TIntegerField;
    MasterCdstaxes_id: TIntegerField;
    MasterCdstaxamount: TBCDField;
    MasterCdstaxpercentage: TBCDField;
    MasterCdsinvoicetypes_id: TIntegerField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdsoffices_id: TIntegerField;
    MasterCdsexchangerate: TBCDField;
    MasterCdsyears_id: TIntegerField;
    MasterCdsmonths_id: TIntegerField;
    MasterCdstl_type: TIntegerField;
    MasterCdsMasterCode: TStringField;
    MasterCdsMasterDepartureDate: TSQLTimeStampField;
    MasterCdsTotalInvoiceAmount: TFMTBCDField;
    MasterCdsServiceTaxAmount: TFMTBCDField;
    MasterCdsCessAmount: TFMTBCDField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsQuoModules_id: TIntegerField;
    MasterCdsLinkedInvoices_id: TIntegerField;
    DetailCdsproducts_id: TIntegerField;
    DetailCdsdetails: TStringField;
    DetailCdsunitprice: TBCDField;
    DetailCdsquantity: TIntegerField;
    DetailCdsamount: TBCDField;
    DetailCdstourdate: TSQLTimeStampField;
    DetailCdsinvoices_id: TIntegerField;
    DetailCdsroomtypes_id: TIntegerField;
    DetailCdsitemno: TIntegerField;
    DetailCdsbookingref: TStringField;
    DetailCdstourcode: TStringField;
    DetailCdsroomsizes_id: TIntegerField;
    DetailCdsnights: TIntegerField;
    DetailCdsinvoicedetails_id: TIntegerField;
    DetailCdslocalpayment: TBCDField;
    DetailCdsservicetaxperc: TBCDField;
    DetailCdsbookingsaccommodation_id: TIntegerField;
    DetailCdsCancelledByPax: TSQLTimeStampField;
    DetailCdsCancelPerc: TFMTBCDField;
    DetailCdsQuoModuleDetails_id: TIntegerField;
    Label1: TcxLabel;
    DBText1: TDBText;
    Label2: TcxLabel;
    DBText2: TDBText;
    Label5: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    TourCodeLbl: TcxLabel;
    TourCodeEdit: TcxDBTextEdit;
    TourDateLbl: TcxLabel;
    TourDateEdit: TcxDBDateEdit;
    Label7: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    Label15: TcxLabel;
    Label6: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label8: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label9: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label11: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label3: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    CustomerSds: TSQLDataSet;
    CustomerDsp: TDataSetProvider;
    CustomerCds: TClientDataSet;
    CustomerCdsAddressbook_id: TIntegerField;
    CustomerCdsOrganisation: TStringField;
    CustomerCdsCity: TStringField;
    CustomerCdsCities_id: TIntegerField;
    CustomerCdsContact: TStringField;
    CustomerDs: TDataSource;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdsCurrencies_id: TIntegerField;
    CurrencyCdsCurrencyCode: TStringField;
    CurrencyCdsCurrency: TStringField;
    CurrencyDs: TDataSource;
    InvoiceTypeSds: TSQLDataSet;
    InvoiceTypeDSP: TDataSetProvider;
    InvoiceTypeCds: TClientDataSet;
    InvoiceTypeCdsInvoiceTypes_id: TIntegerField;
    InvoiceTypeCdsType: TStringField;
    InvoiceTypeDs: TDataSource;
    TaxDsp: TDataSetProvider;
    TaxSds: TSQLDataSet;
    TaxCds: TClientDataSet;
    TaxCdstaxes_id: TIntegerField;
    TaxCdstax: TStringField;
    TaxDs: TDataSource;
    DBText3: TDBText;
    cxTabSheet3: TcxTabSheet;
    cxGrid1DBBandedTableView1products_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1details: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1unitprice: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1amount: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tourdate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoices_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1roomtypes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1itemno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bookingref: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tourcode: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1roomsizes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nights: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1invoicedetails_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1localpayment: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1servicetaxperc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bookingsaccommodation_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CancelledByPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CancelPerc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoModuleDetails_id: TcxGridDBBandedColumn;
    PaymentSds: TSQLDataSet;
    PaymentDsp: TDataSetProvider;
    PaymentCds: TClientDataSet;
    PaymentCdstransactiondate: TSQLTimeStampField;
    PaymentCdscashvoucherno: TIntegerField;
    PaymentCdsDb: TFMTBCDField;
    PaymentCdsDetails: TStringField;
    PaymentCdsInvoiceNo: TIntegerField;
    PaymentCdsYearRef: TIntegerField;
    PaymentCdsDivisions_id: TIntegerField;
    PaymentCdsCurrencies_id: TIntegerField;
    PaymentCdsLedgers_id: TIntegerField;
    PaymentDS: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1transactiondate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1cashvoucherno: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Db: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Details: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1InvoiceNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1YearRef: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Divisions_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Currencies_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Ledgers_id: TcxGridDBBandedColumn;
    Label10: TLabel;
    cxSearchEdit: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    ShowDetails1: TMenuItem;
    cxChkDisplayBalance: TcxCheckBox;
    ReportPopup: TPopupMenu;
    BoatInvoice1: TMenuItem;
    N1: TMenuItem;
    mnuInvoicesIssued: TMenuItem;
    mnuInvoicesDue: TMenuItem;
    N2: TMenuItem;
    ourInvoiceExcel1: TMenuItem;
    ManualTourInvoiceExcelPerLine1: TMenuItem;
    scExcelExport1: TscExcelExport;
    MasterCdsPaidAmt: TFloatField;
    MasterCdsDiffAmt: TFloatField;
    cxPaidAmtLabel: TcxLabel;
    cxDiffAmtLabel: TcxLabel;
    PaidAmtTxt: TDBText;
    DiffAmtTxt: TDBText;
    cxTabSheet4: TcxTabSheet;
    MasterCdsGstinRecipient: TStringField;
    MasterCdsPlaceOfSupply: TStringField;
    MasterCdsSupplyStates_id: TIntegerField;
    MasterCdsTaxPayableRcm: TStringField;
    StateSds: TSQLDataSet;
    StateDsp: TDataSetProvider;
    StateCds: TClientDataSet;
    StateCdsStates_id: TIntegerField;
    StateCdsState: TStringField;
    StateDs: TDataSource;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    mnuBoatInv: TMenuItem;
    DetailCdsServiceTax: TFMTBCDField;
    DetailCdsAmtAfterTax: TFMTBCDField;
    cxGrid1DBBandedTableView1ServiceTax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AmtAfterTax: TcxGridDBBandedColumn;
    N3: TMenuItem;
    mnuManualTour1: TMenuItem;
    mnuManualTour2: TMenuItem;
    DetailCdsRateAfterServTax: TFMTBCDField;
    N4: TMenuItem;
    WorkBackwardsfromTotalAmt1: TMenuItem;
    DetailCdsSacCode: TStringField;
    cxGrid1DBBandedTableView1SacCode: TcxGridDBBandedColumn;
    MasterCdsDivInvoiceNo: TIntegerField;
    cxLabel1: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBComboBox2: TcxDBComboBox;
    MasterCdsForInvoiceNo: TIntegerField;
    MasterCdsForInvoiceDate: TSQLTimeStampField;
    MasterCdsCrDbReasons_id: TIntegerField;
    CrDbReasonsSds: TSQLDataSet;
    CrDbReasonsDsp: TDataSetProvider;
    CrDbReasonsCds: TClientDataSet;
    CrDbReasonsDs: TDataSource;
    CrDbReasonsCdsCrDbReasons_id: TIntegerField;
    CrDbReasonsCdsCrDbReason: TStringField;
    Panel5: TPanel;
    cxLabel2: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel8: TcxLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    PlaceOfSupplySds: TSQLDataSet;
    PlaceOfSupplyDsp: TDataSetProvider;
    PlaceOfSupplyCds: TClientDataSet;
    PlaceOfSupplyDs: TDataSource;
    MasterCdsI_Gst_Perc: TFMTBCDField;
    MasterCdsC_Gst_Perc: TFMTBCDField;
    MasterCdsS_Gst_Perc: TFMTBCDField;
    MasterCdsI_Gst: TFMTBCDField;
    MasterCdsC_Gst: TFMTBCDField;
    MasterCdsS_Gst: TFMTBCDField;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    MasterCdsCustomer: TStringField;
    MasterCdsAddr1: TStringField;
    MasterCdsAddr2: TStringField;
    cxLabel12: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    DetailCdsPlaceOfSupplyLine: TStringField;
    cxGrid1DBBandedTableView1PlaceOfSupplyLine: TcxGridDBBandedColumn;
    N5: TMenuItem;
    Split4increase1: TMenuItem;
    ReversalofSplit1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure DetailCdsAfterInsert(DataSet: TDataSet);
    procedure DetailCdsBeforeInsert(DataSet: TDataSet);
    procedure DetailCdsAfterPost(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure DetailCdsAfterDelete(DataSet: TDataSet);
    procedure DetailCdsquantityChange(Sender: TField);
    procedure DetailCdsunitpriceChange(Sender: TField);
    procedure cxGrid1DBBandedTableView1detailsPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxSearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure ShowDetails1Click(Sender: TObject);
    procedure DetailCdsnightsChange(Sender: TField);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure cxChkDisplayBalanceClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure BoatInvoice1Click(Sender: TObject);
    procedure mnuInvoicesIssuedClick(Sender: TObject);
    procedure mnuInvoicesDueClick(Sender: TObject);
    procedure ourInvoiceExcel1Click(Sender: TObject);
    procedure ManualTourInvoiceExcelPerLine1Click(Sender: TObject);
    procedure mnuBoatInvClick(Sender: TObject);
    procedure mnuManualTour1Click(Sender: TObject);
    procedure mnuManualTour2Click(Sender: TObject);
    procedure WorkBackwardsfromTotalAmt1Click(Sender: TObject);
    procedure cxDBLookupComboBox4PropertiesEditValueChanged(
      Sender: TObject);
    procedure Split4increase1Click(Sender: TObject);
    procedure ReversalofSplit1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure InvoiceSearch;
    function GetNextInvoiceNo (x_YearRef,x_companies_id, x_divisions_id: integer): integer;
    function GetNextSeriesInvoiceNo (x_YearRef,x_companies_id, x_divisions_id, x_InvoiceTypes_id: integer): integer;
    function GetNextItemNo (x_invoices_id: integer): integer;
    function GetSacCode: string;
    procedure UpdateInvoiceAmount (x_invoices_id: integer);
    procedure ComputeInvoiceDetailsAmount;
    procedure ShowAccommodation;
    procedure ShowTickets;
    function GetInvoiceType(x_invoiceTypes_id: integer): string;
    function PaidAmt: double;
    procedure ManualTourGstInvoice(x_type: integer);
    function GetNextInvoiceNoAllDiv (x_YearRef,x_companies_id: integer): integer;
    function GetNextSeriesInvoiceNoAllDiv (x_YearRef,x_companies_id, x_InvoiceTypes_id: integer): integer;
    function IsForInvoiceValid (x_companies_id, x_invoiceNo: integer; x_invoiceDate: TDateTime): boolean;
    procedure AddPlaceOfSupply();
    procedure SetDefaultPlaceOfSupply();
  public
    { Public declarations }
  end;

var
  InvoicesForm: TInvoicesForm;
  InvoicesForm_Level: integer;
  InvoicesForm_Type: integer;
  InvoicesForm_MasterCode: String;
  InvoicesForm_MasterDepartureDate: TDateTime;
  InvoicesForm_FromDate: TDateTime;
  InvoicesForm_ToDate: TDateTime;
  InvoicesForm_Invoices_id: integer;
  InvoicesForm_Months_id: integer;
  InvoicesForm_Years_id: integer;
  InvoicesForm_Divisions_id: integer;
  InvoicesForm_Offices_id: integer;
  InvoicesForm_Companies_id: integer;
  InvoicesForm_InvoiceTypes_id: integer;

implementation

uses SearchSortFm, BackOfficeDM, ReportParameterFm, RptInvoiceBoatFm,
  RptInvIssuedAnnexBFm, RptInvoiceDueFm, GeneralUt, MainFm,
  QuoModules_ExcelReportsUt, RpInvGstFm, Gst_TourInvoice_ExcelReportsUt;

{$R *.dfm}

procedure TInvoicesForm.FormCreate(Sender: TObject);
begin

  Caption := 'Invoices';
  Width := 1350;
  Height := 700;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;

  cxTabSheet1.Caption := 'Details';
  cxTabSheet2.Caption := 'Payments';

  Panel1.Visible := false;
  ActivateInCustom;
  cxChkDisplayBalanceClick(nil);

  if InvoicesForm_Type = 1 then
    begin

      MasterSds.CommandText := 'SELECT * FROM Invoices ' +
        'WHERE MasterCode = ' + QuotedStr(InvoicesForm_MasterCode) +  ' ' +
        'AND MasterDepartureDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',InvoicesForm_MasterDepartureDate)) + ' ' +
        'AND Companies_id = ' + IntToStr(InvoicesForm_Companies_id) + ' ' +
        'AND Divisions_id = ' + IntToStr(InvoicesForm_Divisions_id) + ' ' +
        'AND InvoiceTypes_id = ' + IntToStr(InvoicesForm_InvoiceTypes_id) + ' ' +
        'ORDER BY InvoiceNo';

    end

  else if InvoicesForm_Type = 2 then
    begin

      MasterSds.CommandText := 'SELECT * FROM Invoices ' +
        'WHERE InvoiceDate BETWEEN ' + QuotedStr(FormatDateTime('mm/dd/yyyy',InvoicesForm_FromDate)) + ' ' +
        'AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',InvoicesForm_ToDate)) + ' ' +
        'AND Companies_id = ' + IntToStr(InvoicesForm_Companies_id) + ' ' +
        'AND Divisions_id = ' + IntToStr(InvoicesForm_Divisions_id) + ' ' +
        'AND InvoiceTypes_id = ' + IntToStr(InvoicesForm_InvoiceTypes_id) + ' ' +
        'ORDER BY InvoiceNo';

    end
  else if InvoicesForm_Type = 3 then
    begin

      MasterSds.CommandText := 'SELECT * FROM Invoices ' +
        'WHERE Invoices_id = ' + IntToStr(InvoicesForm_Invoices_id) + ' ' +
        'ORDER BY InvoiceNo';

    end
  else if InvoicesForm_Type = 4 then
    begin

      MasterSds.CommandText := 'SELECT * FROM Invoices ' +
        'WHERE Months_id = ' + IntToStr(InvoicesForm_Months_id) + ' ' +
        'AND Years_id = ' + IntToStr(InvoicesForm_Years_id) + ' ' +
        'AND Companies_id = ' + IntToStr(InvoicesForm_Companies_id) + ' ' +
        'AND Divisions_id = ' + IntToStr(InvoicesForm_Divisions_id) + ' ' +
        'AND InvoiceTypes_id = ' + IntToStr(InvoicesForm_InvoiceTypes_id) + ' ' +
        'AND ((TL_Type = 1) OR (TL_Type = 2)) ' +
        'ORDER BY InvoiceNo';

    end;

  // Tour Invoice
  if InvoicesForm_Divisions_id = 0 then
    begin
      mnuBoatInv.Visible := false;
    end
  // Boat Invoice
  else
    begin
      mnuManualTour1.Visible := false;
      mnuManualTour2.Visible := false;
      mnuInvoicesIssued.Visible := false;
      mnuInvoicesDue.Visible := false;
    end;

  if (InvoicesForm_InvoiceTypes_id = 1) or (InvoicesForm_InvoiceTypes_id = 4) then
    Panel5.Visible := false;

  inherited;

  CurrencyCds.Open;
  CustomerCds.Open;
  InvoiceTypeCds.Open;
  TaxCds.Open;
  StateCds.Open;
  CrDbReasonsCds.Open;
  PlaceOfSupplyCds.Open;

  PaymentCds.Open;

  AddPlaceOfSupply();

end;

procedure TInvoicesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Invoices';
  Custom_MasterKeyField := 'Invoices_id';

  Custom_DetailCdsName := 'InvoiceDetails';
  Custom_DetailKeyField := 'InvoiceDetails_id';

  Custom_AdmLevel := InvoicesForm_Level;

  Custom_FormWidth := Width;
  Custom_FormHeight := Height - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TInvoicesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  InvoicesForm := nil;
end;

procedure TInvoicesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin

  if MasterCds['InvoiceDate'] = Null then
    Raise Exception.Create('Enter the Invoice Date');

  if MasterCds['Currencies_id'] = Null then
    Raise Exception.Create('Enter the Currency');

  if MasterCds['InvoiceTypes_id'] = Null then
    Raise Exception.Create('Enter the Invoice Type');

  if MasterCds['Taxes_id'] = Null then
    Raise Exception.Create('Enter the Tax Type');

  if MasterCds.State = dsInsert then
    begin
      MasterCds['YearRef'] := CalcCentury(MasterCds['InvoiceDate'],4);

      // Tour Invoices
      if InvoicesForm_Type = 2 then
        begin
          // Could be Invoice, Debit, Credit note
          MasterCds['InvoiceNo'] := GetNextSeriesInvoiceNoAllDiv (MasterCds['YearRef'],g_companies_id, MasterCds['InvoiceTypes_id']);
          MasterCds['DivInvoiceNo'] := GetNextSeriesInvoiceNo (MasterCds['YearRef'],g_companies_id, InvoicesForm_Divisions_id, MasterCds['InvoiceTypes_id']);
        end
      else
        begin
          MasterCds['InvoiceNo'] := GetNextInvoiceNoAllDiv (MasterCds['YearRef'],g_companies_id);
          MasterCds['DivInvoiceNo'] := GetNextInvoiceNo (MasterCds['YearRef'],g_companies_id, InvoicesForm_Divisions_id);
        end;
    end;

  MasterCds['Months_id'] := MonthOf(MasterCds['InvoiceDate']);
  MasterCds['Years_id'] := YearOf(MasterCds['InvoiceDate']);

  if (MasterCds['InvoiceTypes_id'] = 2) or (MasterCds['InvoiceTypes_id'] = 3) then
    begin

      if MasterCds['ForInvoiceNo'] = Null then
        raise Exception.Create('Enter the "For Invoice No"');

      if MasterCds['ForInvoiceDate'] = Null then
        raise Exception.Create('Enter the "For Invoice Date"');

      if MasterCds['CrDbReasons_id'] = Null then
        raise Exception.Create('Enter the "Reason"');

      if not IsForInvoiceValid(MasterCds['companies_id'], MasterCds['ForInvoiceNo'], MasterCds['ForInvoiceDate']) then
        raise Exception.Create('Invalid "For Invoice No / Invoice Date"');

    end;


  inherited;

  if MasterCds['Invoices_id'] = null then
    raise Exception.Create('Invoices_id is not assigned');

end;

procedure TInvoicesForm.DetailCdsBeforePost(DataSet: TDataSet);
begin

  if DetailCds['Details'] = null then
    raise exception.create ('Please enter the details');

  if DetailCds['Quantity'] = null then
    raise exception.create ('Please enter the quantity');

  if DetailCds['UnitPrice'] = null then
    raise exception.create ('Please enter the unit price');

  if DetailCds['ServiceTaxPerc'] = null then
    raise exception.create ('Please enter the GST Rate');

  DetailCds['ServiceTax'] := DetailCds['Amount'] * DetailCds['ServiceTaxPerc']/100;
  DetailCds['AmtAfterTax'] := DetailCds['Amount'] + DetailCds['ServiceTax'];

  if DetailCds['Quantity'] <> 0 then
    DetailCds['RateAfterServTax'] := DetailCds['AmtAfterTax'] / DetailCds['Quantity'];

  if DetailCds.State = dsInsert then
    begin
      DetailCds['ItemNo'] := GetNextItemNo(DetailCds['Invoices_id']);
    end;

  inherited;

  if DetailCds['InvoiceDetails_id'] = null then
    raise Exception.Create('Invoices_id is not assigned');

end;

function TInvoicesForm.IsForInvoiceValid (x_companies_id, x_invoiceNo: integer; x_invoiceDate: TDateTime): boolean;
var
  x_count: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT x_count = COUNT(*) FROM invoices ' +
    'WHERE companies_id = ' + IntToStr(x_Companies_id) + ' ' +
    'AND invoiceNo = ' + IntToStr(x_invoiceNo) + ' ' +
    'AND invoiceDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_invoiceDate));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_count := GpSds['x_count'];

  GpSds.Free;

  if x_count > 0 then
    Result := true
  else
    Result := false;

end;


procedure TInvoicesForm.DetailCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  DetailCds['Invoices_id'] := MasterCds['Invoices_id'];

  DetailCds['LocalPayment'] := 0.0;

  DetailCds['SacCode'] := GetSacCode;

  if MasterCds['TaxPercentage'] <> null then
    DetailCds['ServiceTaxPerc'] := MasterCds['TaxPercentage']
  else
    DetailCds['ServiceTaxPerc'] := 0.0;

end;

procedure TInvoicesForm.DetailCdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['Invoices_id'] = null then
    raise exception.create ('Please fill in Invoice Header first');

end;

procedure TInvoicesForm.DetailCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  UpdateInvoiceAmount (DetailCds['Invoices_id']);
  MasterCds.RefreshRecord;
end;

procedure TInvoicesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;

  UpdateInvoiceAmount (MasterCds['Invoices_id']);

  //if MasterCds.State = dsEdit then
  //  begin
      MasterCds.RefreshRecord;
  //  end;

end;

procedure TInvoicesForm.DetailCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateInvoiceAmount (MasterCds['Invoices_id']);
  MasterCds.RefreshRecord;
end;

procedure TInvoicesForm.DetailCdsquantityChange(Sender: TField);
begin
  inherited;
  ComputeInvoiceDetailsAmount;
end;

procedure TInvoicesForm.DetailCdsunitpriceChange(Sender: TField);
begin
  inherited;
  ComputeInvoiceDetailsAmount;
end;

procedure TInvoicesForm.cxGrid1DBBandedTableView1detailsPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: integer;
begin
  inherited;

  if (MasterCds['Divisions_id'] <> 1)  then
    exit;

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Active := False;
  SearchSortForm.SearchCds.Active := False;
  SearchSortForm.SearchSds.CommandText := 'SELECT Details,UnitPrice,ProductID ' +
    'FROM ProductsBoat ' +
    'ORDER BY Details ';
  SearchSortForm.SearchSds.Active := True;
  SearchSortForm.SearchCds.Active := True;

  for i := 0 to 2 do
    SearchSortForm.SearchGridDBTableView1.CreateColumn;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Details';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'UnitPrice';
  SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'ProductID';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 300;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 150;
  SearchSortForm.SearchGridDBTableView1.Columns[2].Visible := False;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Details';
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Unit Price';

  SearchSortForm.ShowModal;

  if SearchSortForm.ModalResult = mrOk then
    begin
      if DetailCds.State = dsBrowse then
        DetailCds.Edit;
      DetailCds['Details'] := SearchSortForm.SearchCds['Details'];
      DetailCds['UnitPrice'] := SearchSortForm.SearchCds['UnitPrice'];
    end;

  SearchSortForm.Release;
  SearchSortForm := nil;

end;

procedure TInvoicesForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Companies_id'] := g_Companies_id;
  MasterCds['Divisions_id'] := InvoicesForm_Divisions_id;
  MasterCds['Offices_id'] := InvoicesForm_Offices_id;
  MasterCds['InvoiceDate'] := Date;
  MasterCds['FIT'] := false;
  MasterCds['InvoiceTypes_id'] := InvoicesForm_InvoiceTypes_id;

  // Tours Division - Dollars --- Boat Division Rs.
  if MasterCds['Divisions_id'] = 0 then
    begin
      MasterCds['Currencies_id'] := 25;
      MasterCds['Taxes_id'] := 28;
    end
  else
    begin
      MasterCds['Currencies_id'] := GetDefaultCurrency;
      MasterCds['Taxes_id'] := 31;
    end;

  MasterCds['TaxPercentage'] := GetServiceTax(MasterCds['InvoiceDate'], MasterCds['Taxes_id']);

 // MasterCds['PlaceOfSupply'] := '30-Goa';
  SetDefaultPlaceOfSupply();

  MasterCds['SupplyStates_id'] := 10;
  MasterCds['TaxPayableRCM'] := 'No';

  MasterCds['YearRef'] := CalcCentury(MasterCds['InvoiceDate'],4);

end;

procedure TInvoicesForm.cxSearchEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    InvoiceSearch;
end;

procedure TInvoicesForm.InvoiceSearch;
var
  QueryString: string;
  i: integer;
begin

  QueryString := 'SELECT i.Invoices_id, i.InvoiceNo, i.InvoiceDate, f.Organisation, i.MasterCode, i.MasterDepartureDate ' +
            'FROM Invoices i LEFT JOIN dbo.fn_Addressbook(3,'''') f ON i.Addressbook_id = f.Addressbook_id ' +
            'WHERE InvoiceNo = ''' + cxSearchEdit.Text + ''' ' +
            'AND Divisions_id = ' + IntToStr(InvoicesForm_Divisions_id) + ' ' +
            'Order By InvoiceDate DESC';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

    SearchSortForm.SearchSds.Close;
    SearchSortForm.SearchSds.CommandText := QueryString;
    SearchSortForm.SearchSds.Open;

    SearchSortForm.SearchCds.Open;

    for i := 0 to 5 do
      begin
        SearchSortForm.SearchGridDBTableView1.CreateColumn;
      end;

    //*=== Set the Grid Fields ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Invoices_id';
    SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'InvoiceNo';
    SearchSortForm.SearchGridDBTableView1.Columns[2].DataBinding.FieldName := 'InvoiceDate';
    SearchSortForm.SearchGridDBTableView1.Columns[3].DataBinding.FieldName := 'Organisation';
    SearchSortForm.SearchGridDBTableView1.Columns[4].DataBinding.FieldName := 'MasterCode';
    SearchSortForm.SearchGridDBTableView1.Columns[5].DataBinding.FieldName := 'MasterDepartureDate';

    //*=== Set the Grid Columns' width ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
    SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[2].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[3].Width := 150;
    SearchSortForm.SearchGridDBTableView1.Columns[4].Width := 80;
    SearchSortForm.SearchGridDBTableView1.Columns[5].Width := 80;

    //*=== Set the Grid Column Headers ===*//
    SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Invoice No';
    SearchSortForm.SearchGridDBTableView1.Columns[2].Caption := 'Invoice Date';
    SearchSortForm.SearchGridDBTableView1.Columns[3].Caption := 'Customer';
    SearchSortForm.SearchGridDBTableView1.Columns[4].Caption := 'Master Code';
    SearchSortForm.SearchGridDBTableView1.Columns[5].Caption := 'Master Date';

    SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Invoices_id';

    if (SearchSortForm.SearchCds.RecordCount = 1) then
      begin
        MasterCds.Locate ('Invoices_id', SearchSortForm.SearchCds['Invoices_id'],[]);
      end
    else if not SearchSortForm.SearchCds.EOF then
      begin

        SearchSortForm.ShowModal;

        if (SearchSortForm.ModalResult = mrOK) then
          begin
            MasterCds.Locate('Invoices_id',SearchSortForm.SearchCds['Invoices_id'],[]);
          end;

      end
    else
      Showmessage ('Not found');

    SearchSortForm.Free;
    SearchSortForm := nil;
end;

function TInvoicesForm.GetNextInvoiceNo (x_YearRef,x_companies_id, x_divisions_id: integer): integer;
var
  x_NextInvoiceNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextInvoiceNo(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ',' + IntToStr(x_Divisions_id) + ') as NextInvoiceNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextInvoiceNo := GpSds['NextInvoiceNo'];

  GpSds.Free;

  Result := x_NextInvoiceNo;

end;

function TInvoicesForm.GetNextSeriesInvoiceNo (x_YearRef,x_companies_id, x_divisions_id, x_InvoiceTypes_id: integer): integer;
var
  x_NextInvoiceNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextSeriesInvoiceNo(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ',' + IntToStr(x_Divisions_id) + ',' +
    IntToStr(x_InvoiceTypes_id) + ') as NextInvoiceNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextInvoiceNo := GpSds['NextInvoiceNo'];

  GpSds.Free;

  Result := x_NextInvoiceNo;

end;

function TInvoicesForm.GetNextInvoiceNoAllDiv (x_YearRef,x_companies_id: integer): integer;
var
  x_NextInvoiceNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextInvoiceNoAllDiv(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ') as NextInvoiceNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextInvoiceNo := GpSds['NextInvoiceNo'];

  GpSds.Free;

  Result := x_NextInvoiceNo;

end;

function TInvoicesForm.GetNextSeriesInvoiceNoAllDiv (x_YearRef,x_companies_id, x_InvoiceTypes_id: integer): integer;
var
  x_NextInvoiceNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextSeriesInvoiceNoAllDiv(' + IntToStr(x_yearRef) + ',' +
    IntToStr(x_Companies_id) + ',' +
    IntToStr(x_InvoiceTypes_id) + ') as NextInvoiceNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextInvoiceNo := GpSds['NextInvoiceNo'];

  GpSds.Free;

  Result := x_NextInvoiceNo;

end;

function TInvoicesForm.GetNextItemNo (x_invoices_id: integer): integer;
var
  x_NextItemNo: integer;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'SELECT dbo.fn_GetNextInvoiceItemNo(' + IntToStr(x_invoices_id) +  ') ' +
    ' as NextItemNo';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_NextItemNo := GpSds['NextItemNo'];

  GpSds.Free;

  Result := x_NextItemNo;

end;

function TInvoicesForm.GetSacCode: string;
var
  x_divisions_id: integer;
  x_SacCode: string;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  x_divisions_id := 0;
  if MasterCds['Divisions_id'] <> null then
    x_divisions_id := MasterCds['Divisions_id'];

  QueryString := 'SELECT SacCode FROM Divisions ' +
    'WHERE Divisions_id  = ' + IntToStr(x_divisions_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SacCode := '';
  if (GpSds['SacCode'] <> null) then
    x_SacCode := GpSds['SacCode'];

  GpSds.Free;

  Result := x_SacCode;

end;

procedure TInvoicesForm.UpdateInvoiceAmount (x_invoices_id: integer);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_UpdateInvoiceAmount ' + IntToStr(x_invoices_id) +  ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TInvoicesForm.ComputeInvoiceDetailsAmount;
var
  x_Nights, x_Quantity: integer;
  x_UnitPrice: double;
begin

  if DetailCds['Nights'] = null then
    x_Nights := 1
  else
    x_Nights := DetailCds['Nights'];

  if DetailCds['UnitPrice'] = null then
    x_UnitPrice := 0.0
  else
    x_UnitPrice := DetailCds['UnitPrice'];

  if DetailCds['Quantity'] = null then
    x_Quantity := 0
  else
    x_Quantity := DetailCds['Quantity'];

  DetailCds['Amount'] := x_UnitPrice * x_Quantity * x_Nights;

end;

procedure TInvoicesForm.ShowAccommodation;
var
  GpSds: TSQLDataSet;
  x_str: string;
begin

  if (DetailCds['BookingsAccommodation_id'] = null) or
    (DetailCds['BookingsAccommodation_id'] = 0) then
    begin
      ShowMessage ('No details available');
      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT ba.DateIn, ba.DateOut, a.organisation, rs.roomsize, ' +
    'rt.roomtype, mp.mealplan ' +
    'from bookingsAccommodation ba left join addressbook a on ba.addressbook_id = a.addressbook_id ' +
    'left join roomtypes rt on ba.roomtypes_id = rt.roomtypes_id ' +
    'left join roomsizes rs on ba.roomsizes_id = rs.roomsizes_id ' +
    'left join mealplans mp on ba.mealplans_id = mp.mealplans_id ' +
    'where ba.bookingsaccommodation_id = ' + IntToStr(DetailCds['BookingsAccommodation_id']);
  GpSds.Open;

  x_str := '';
  if GpSds['DateIn'] <> null then
    x_str := x_str + 'Date In : ' + FormatDateTime('dd/mm/yyyy',GpSds['DateIn']) + chr(13);
  if GpSds['DateOut'] <> null then
    x_str := x_str + 'Date Out : ' + FormatDateTime('dd/mm/yyyy',GpSds['DateOut']) + chr(13);
  if GpSds['organisation'] <> null then
    x_str := x_str + 'Hotel : ' + GpSds['organisation'] + chr(13);
  if GpSds['roomsize'] <> null then
    x_str := x_str + 'Room Size : ' + GpSds['roomsize'] + chr(13);
  if GpSds['roomtype'] <> null then
    x_str := x_str + 'Room Type : ' + GpSds['roomtype'] + chr(13);
  if GpSds['mealplan'] <> null then
    x_str := x_str + 'Meal Plan : ' + GpSds['mealplan'] + chr(13);

  GpSds.Free;

  ShowMessage(x_str);

end;

procedure TInvoicesForm.ShowTickets;
var
  GpSds: TSQLDataSet;
  x_str: string;
begin
  if (DetailCds['BookingsAccommodation_id'] = null) or
    (DetailCds['BookingsAccommodation_id'] = 0) then
    begin
      ShowMessage ('No details available');
      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT traveldate, a.organisation, c1.city as fromcity, ' +
    'c2.city as tocity, t.details ' +
    'from bookingstickets btk left join addressbook a on btk.addressbook_id = a.addressbook_id ' +
    'left join cities c1 on btk.from_cities_id = c1.cities_id ' +
    'left join cities c2 on btk.to_cities_id = c2.cities_id ' +
    'left join tickets t on btk.tickets_id = t.tickets_id ' +
    'where btk.bookingstickets_id = ' + IntToStr(MasterCds['BookingsAccommodation_id']);
  GpSds.Open;

  x_str := '';
  if GpSds['TravelDate'] <> null then
    x_str := x_str + 'TravelDate : ' + FormatDateTime('dd/mm/yyyy',GpSds['TravelDate']) + chr(13);
  if GpSds['organisation'] <> null then
    x_str := x_str + 'Agent : ' + GpSds['organisation'] + chr(13);
  if GpSds['fromcity'] <> null then
    x_str := x_str + 'From City : ' + GpSds['fromcity'] + chr(13);
  if GpSds['tocity'] <> null then
    x_str := x_str + 'To City : ' + GpSds['tocity'] + chr(13);
  if GpSds['Details'] <> null then
    x_str := x_str + 'Mode : ' + GpSds['Details'] + chr(13);

  GpSds.Free;

  ShowMessage(x_str);

end;


procedure TInvoicesForm.ShowDetails1Click(Sender: TObject);
begin
  inherited;
  if DetailCds['ItemNo'] = 400 then
    ShowAccommodation
  else if DetailCds['ItemNo'] = 600 then
    ShowTickets;

end;

procedure TInvoicesForm.DetailCdsnightsChange(Sender: TField);
begin
  inherited;
  ComputeInvoiceDetailsAmount;
end;

procedure TInvoicesForm.MasterCdsCalcFields(DataSet: TDataSet);
var
  x_Invoiced: double;
begin
  inherited;

  if not cxChkDisplayBalance.Checked then
    exit;

  if MasterCds['Invoices_id'] <> null then
    begin

      MasterCds['PaidAmt'] := PaidAmt;

      if MasterCds['TotalInvoiceAmount'] <> null then
        x_Invoiced := MasterCds['TotalInvoiceAmount']
      else
        x_Invoiced := 0.0;

      MasterCds['DiffAmt'] := x_Invoiced - MasterCds['PaidAmt'];

    end;

end;

function TInvoicesForm.PaidAmt: double;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_pymt: double;
begin
  inherited;

  QueryString := 'SELECT dbo.fn_InvoicePayment(' + IntToStr(MasterCds['InvoiceNo']) +  ', ' +
    IntToStr(MasterCds['YearRef']) + ',' + IntToStr(MasterCds['Divisions_id']) + ',' +
    IntToStr(MasterCds['Currencies_id']) + ') as Pymt ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Pymt'] <> null) then
    x_pymt := GpSds['Pymt']
  else
    x_pymt := 0.0;

  GpSds.Free;

  Result := x_pymt;

end;


procedure TInvoicesForm.cxChkDisplayBalanceClick(Sender: TObject);
begin
  inherited;
  if cxChkDisplayBalance.Checked then
    begin
      cxPaidAmtLabel.Visible := true;
      cxDiffAmtLabel.Visible := true;
      PaidAmtTxt.Visible := true;
      DiffAmtTxt.Visible := true;
      MasterCds.RefreshRecord;
    end
  else
    begin
      cxPaidAmtLabel.Visible := false;
      cxDiffAmtLabel.Visible := false;
      PaidAmtTxt.Visible := false;
      DiffAmtTxt.Visible := false;
    end;
end;

procedure TInvoicesForm.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  inherited;
  if DetailCds.EOF then
    DetailCds.Insert;
end;

procedure TInvoicesForm.BoatInvoice1Click(Sender: TObject);
var
  x_yearref, x_max_no, x_min_no, x_InvoiceTypes_id: integer;
  x_InvoiceType: string;
begin

  _inputstr := '00000012';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.FromEdit.Text := MasterCds['InvoiceNo'];
  ReportParameterForm.ToEdit.Text := MasterCds['InvoiceNo'];

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      x_yearref := StrToInt(ReportParameterForm.YearEdit.Text);
      x_min_no := StrToInt(VarToStr(_ret1[8]));
      x_max_no := StrToInt(VarToStr(_ret2[8]));

      if RptInvoiceBoatForm = nil then
        Application.CreateForm(TRptInvoiceBoatForm, RptInvoiceBoatForm);

      RptInvoiceBoatForm.InvoiceBoatSds.Close;

      x_InvoiceTypes_id := 1;
      if MasterCds['InvoiceTypes_id'] <> null then
        x_InvoiceTypes_id := MasterCds['InvoiceTypes_id'];

      RptInvoiceBoatForm.InvoiceBoatSds.CommandText :=
        'select * from dbo.fn_Rpt_Inv_PrintRange(' +
        IntToStr(x_min_no) + ',' + IntToStr(x_max_no) + ',' + IntToStr(x_yearref) + ',1,' +
        IntToStr(x_InvoiceTypes_id) + ')';

      RptInvoiceBoatForm.InvoiceBoatSds.Open;

      RptInvoiceBoatForm.InvoiceBoatCds.Close;
      RptInvoiceBoatForm.InvoiceBoatCds.Open;

      x_InvoiceType := GetInvoiceType(x_invoiceTypes_id);

      RptInvoiceBoatForm.QRLabelInvoice.Caption := x_InvoiceType;

      RptInvoiceBoatForm.QRInvoice.PreviewModal;

      RptInvoiceBoatForm.Release;
      RptInvoiceBoatForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TInvoicesForm.mnuInvoicesIssuedClick(Sender: TObject);
var
  x_yearref: integer;
begin

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      x_yearref := StrToInt(ReportParameterForm.YearEdit.Text);

      if RptInvIssuedAnnexBForm = nil then
        Application.CreateForm(TRptInvIssuedAnnexBForm, RptInvIssuedAnnexBForm);

      RptInvIssuedAnnexBForm.AnnexBSds.Close;

      RptInvIssuedAnnexBForm.AnnexBSds.CommandText :=
        'select * from dbo.fn_Rpt_Inv_Issued_AnnexB (' +
        IntToStr(x_yearref) + ',0)';

      RptInvIssuedAnnexBForm.AnnexBSds.Open;

      RptInvIssuedAnnexBForm.AnnexBCds.Close;
      RptInvIssuedAnnexBForm.AnnexBCds.Open;

      RptInvIssuedAnnexBForm.QuickRep1.PreviewModal;

      RptInvIssuedAnnexBForm.Release;
      RptInvIssuedAnnexBForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TInvoicesForm.mnuInvoicesDueClick(Sender: TObject);
var
  x_yearref: integer;
begin

  _inputstr := '00000020';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      x_yearref := StrToInt(ReportParameterForm.YearEdit.Text);

      if RptInvoiceDueForm = nil then
        Application.CreateForm(TRptInvoiceDueForm, RptInvoiceDueForm);

      RptInvoiceDueForm.InvoiceDueSds.Close;

      RptInvoiceDueForm.InvoiceDueSds.CommandText :=
        'select * from dbo.fn_Rpt_Inv_InvoiceDue (' +
        IntToStr(x_yearref) + ',1,0)';

      RptInvoiceDueForm.InvoiceDueSds.Open;

      RptInvoiceDueForm.InvoiceDueCds.Close;
      RptInvoiceDueForm.InvoiceDueCds.Open;

      RptInvoiceDueForm.QuickRep1.PreviewModal;

      RptInvoiceDueForm.Release;
      RptInvoiceDueForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TInvoicesForm.ourInvoiceExcel1Click(Sender: TObject);
var
  x_FileName: string;
  x_Months_id, x_YearRef: integer;
begin
  inherited;

  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(MasterCds['InvoiceDate']);
  x_YearRef := YearOf(MasterCds['InvoiceDate']);

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, MasterCds['Invoices_id'], 3, x_Months_id, x_YearRef, 0, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TInvoicesForm.ManualTourInvoiceExcelPerLine1Click(
  Sender: TObject);
var
  x_FileName: string;
  x_Months_id, x_YearRef: integer;
begin
  inherited;

  x_FileName := g_ReportDir + '\Invoice.xls';

  x_Months_id := MonthOf(MasterCds['InvoiceDate']);
  x_YearRef := YearOf(MasterCds['InvoiceDate']);

  QuoModule_Invoice_Excel(scExcelExport1, x_FileName, MasterCds['Invoices_id'], 3, x_Months_id, x_YearRef, 0, 2);

  ShowMessage('Saved As ' + x_FileName);

end;

function TInvoicesForm.GetInvoiceType(x_invoiceTypes_id: integer): string;
var
  GpSds: TSQLDataSet;
  x_InvoiceType: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT Type As InvoiceType FROM InvoiceTypes ' +
    'WHERE InvoiceTypes_id = ' + IntToStr(x_InvoiceTypes_id);
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['InvoiceType'] <> null) then
    x_InvoiceType := GpSds['InvoiceType'];

  GpSds.Free;

  Result := x_InvoiceType;

end;


procedure TInvoicesForm.mnuBoatInvClick(Sender: TObject);
var
  x_yearref, x_max_no, x_min_no, x_InvoiceTypes_id: integer;
begin

  _inputstr := '00000012';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  ReportParameterForm.FromEdit.Text := MasterCds['InvoiceNo'];
  ReportParameterForm.ToEdit.Text := MasterCds['InvoiceNo'];

  ReportParameterForm.cxMonthLCMB.Visible := False;
  ReportParameterForm.MonthLabel.Visible := False;
  ReportParameterForm.YearEdit.Text := CalcCentury(Date(),4);

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult= mrOK then
    begin
      x_yearref := StrToInt(ReportParameterForm.YearEdit.Text);
      x_min_no := StrToInt(VarToStr(_ret1[8]));
      x_max_no := StrToInt(VarToStr(_ret2[8]));

      if RpInvGstForm = nil then
        Application.CreateForm(TRpInvGstForm, RpInvGstForm);

      RpInvGstForm.MasterSds.Close;

      x_InvoiceTypes_id := 1;
      if MasterCds['InvoiceTypes_id'] <> null then
        x_InvoiceTypes_id := MasterCds['InvoiceTypes_id'];

      RpInvGstForm.MasterSds.CommandText :=
        'exec p_BoatInvPrint ' +
        IntToStr(x_min_no) + ',' + IntToStr(x_max_no) + ',' + IntToStr(x_yearref) + ',' + IntToStr(MasterCds['Divisions_id']) + ',' +
        IntToStr(x_InvoiceTypes_id) + ' ';

      RpInvGstForm.MasterSds.Open;

      RpInvGstForm.MasterCds.Close;
      RpInvGstForm.MasterCds.Open;

      RpInvGstForm.QuickRep1.PreviewModal;

      RpInvGstForm.Release;
      RpInvGstForm := nil;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;


end;

procedure TInvoicesForm.mnuManualTour1Click(Sender: TObject);
begin
  inherited;

  ManualTourGstInvoice(1);

end;

procedure TInvoicesForm.mnuManualTour2Click(Sender: TObject);
begin
  inherited;

  ManualTourGstInvoice(2);

end;

procedure TInvoicesForm.ManualTourGstInvoice(x_type: integer);
var
  GpSds: TSQLDataSet;
  x_FileName, x_postfix: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_postfix := '_Inv_';

  if MasterCds['InvoiceNo'] <> null then
    x_postfix := x_postfix + IntToStr(MasterCds['InvoiceNo']);

  if x_type = 2 then
    x_postfix := x_postfix + '_office';

  x_FileName := g_ReportDir + '\' + x_postfix;

  if MasterCds['Addressbook_id'] <> null then
    begin

      GpSds.Close;
      GpSds.CommandText := 'SELECT DISTINCT i.addressbook_id, a.organisation, ' +
            'REPLACE(LTRIM(RTRIM(a.organisation)), '' '', ''_'') AS [FileName] ' +
            'FROM Invoices i ' +
            'LEFT JOIN addressbook a ON i.addressbook_id = a.addressbook_id ' +
            'WHERE i.invoices_id = ' + IntToStr(MasterCds['invoices_id']) + ' ' +
            'AND i.addressbook_id IS NOT NULL ';

      GpSds.Open;

      x_FileName := g_ReportDir + '\' + GpSds['FileName'] + x_postfix;

    end;

  GST_TourInvoice_Manual_Excel(scExcelExport1, MasterCds['invoices_id'], x_FileName, x_type);

  GpSds.Free;

  ShowMessage('Invoices saved in Desktop\BackOffice_Rpt folder');

end;


procedure TInvoicesForm.WorkBackwardsfromTotalAmt1Click(Sender: TObject);
var
  x_amt, x_GstPerc, x_AmtAfterTax, x_Gst, x_unitPrice, x_RateAfterGst : double;
  x_amtStr: string;
begin
  inherited;

  if DetailCds['ServiceTaxPerc'] = null then
    raise exception.create ('"GST (%)" has to be entered');

  if DetailCds['Quantity'] = null then
    raise exception.create ('"Quantity" has to be entered');

  if DetailCds['Quantity'] = 0 then
    raise exception.create ('"Quantity" has to be  greater than 0');

  x_amtAfterTax := 0;
  if DetailCds['AmtAfterTax'] <> null then
    x_amtAfterTax := DetailCds['AmtAfterTax'];
  x_amtStr := inputbox('', 'Please enter the amount after tax', FloatToStr(x_amtAfterTax));

  if DetailCds.State = dsBrowse then
    DetailCds.Edit;

  x_GstPerc := DetailCds['ServiceTaxPerc'];
  x_amtAfterTax := SimpleRoundTo(StrToFloat(x_amtStr),-2);
  x_amt := x_AmtAfterTax/(1.0 + x_GstPerc/100.0);
  x_Gst := SimpleRoundTo(x_amtAfterTax - x_amt,-2);
  x_amt := x_amtAfterTax - x_Gst;

  x_unitPrice := x_amt / DetailCds['Quantity'];
  x_RateAfterGst := x_amtAfterTax / DetailCds['Quantity'];

  DetailCds['UnitPrice'] := x_unitPrice;
  DetailCds['Amount'] := SimpleRoundTo(x_amt,-2);
  DetailCds['ServiceTax'] := SimpleRoundTo(x_Gst,-2);
  DetailCds['RateAfterServTax'] := SimpleRoundTo(x_RateAfterGst,-2);
  DetailCds['AmtAfterTax'] := x_amtAfterTax;

end;

procedure TInvoicesForm.cxDBLookupComboBox4PropertiesEditValueChanged(
  Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_gstin: string;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_gstin := '';

  if cxDBLookupComboBox4.EditValue <> null then
    begin

      GpSds.Close;
      GpSds.CommandText := 'SELECT a.Gstin FROM Addressbook a ' +
            'WHERE a.addressbook_id = ' + IntToStr(cxDBLookupComboBox4.EditValue);
      GpSds.Open;

      if (not GpSds.Eof) and (GpSds['Gstin'] <> null) then
        x_gstin := GpSds['Gstin'];

    end;

  GpSds.Free;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds['GstinRecipient'] := x_gstin;

end;


procedure TInvoicesForm.AddPlaceOfSupply();
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT PlaceOfSupply FROM PlaceOfSupply ' +
            'ORDER BY PlaceOfSupply';
  GpSds.Open;

  cxDBComboBox2.Properties.Items.Clear;

  while not GpSds.Eof do
    begin

      cxDBComboBox2.Properties.Items.Add(GpSds['PlaceOfSupply']);

      GpSds.Next;
    end;

  GpSds.Free;

end;

procedure TInvoicesForm.SetDefaultPlaceOfSupply();
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT PlaceOfSupply FROM PlaceOfSupply ' +
            'WHERE Home = 1';
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['PlaceOfSupply'] <> null) then
    MasterCds['PlaceOfSupply'] := GpSds['PlaceOfSupply'];

  GpSds.Free;

end;

procedure TInvoicesForm.Split4increase1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_zz_InvDetDistrStateWise] ' + IntToStr(DetailCds['InvoiceDetails_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := false;
  DetailCds.Active := true;

end;

procedure TInvoicesForm.ReversalofSplit1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC [p_zz_InvDetDistrStateWise_Reverse] ' + IntToStr(MasterCds['Invoices_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  DetailCds.Active := false;
  DetailCds.Active := true;

end;

end.
