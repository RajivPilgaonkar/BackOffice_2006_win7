unit QuoPrintFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_1DG_1SDG_Fm, Menus, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit, cxNavigator, cxDBNavigator, DateUtils,
  cxMemo, QuickRpt, Buttons, QRPDFFilt, OleServer, Outlook2000, ComObj,
  scExcelExport;

type
  TQuoPrintForm = class(TCustom_1ML_1DG_1SDG_Form)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    MasterCdsQuoPrint_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsPaxInfo: TStringField;
    MasterCdsStartingInfo: TStringField;
    MasterCdsBookingInfo: TStringField;
    DetailCdsQuoPrintDays_id: TIntegerField;
    DetailCdsQuoPrint_id: TIntegerField;
    DetailCdsSrNo: TIntegerField;
    DetailCdsDayInfo: TStringField;
    DetailCdsDaySummaryInfo: TMemoField;
    SubDetailCdsQuoPrintPlaces_id: TIntegerField;
    SubDetailCdsQuoPrintDays_id: TIntegerField;
    SubDetailCdsSrNo: TIntegerField;
    SubDetailCdsPlace: TStringField;
    SubDetailCdsPlaceInfo: TMemoField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxGridDBBandedTableView1QuoPrintPlaces_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1QuoPrintDays_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Place: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PlaceInfo: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    N1: TMenuItem;
    Delete1: TMenuItem;
    cxTabSheet4: TcxTabSheet;
    ItinerarySds: TSQLDataSet;
    ItineraryDsp: TDataSetProvider;
    ItineraryCds: TClientDataSet;
    ItineraryDs: TDataSource;
    ItineraryCdsQuoPrintItineraries_id: TIntegerField;
    ItineraryCdsQuoPrint_id: TIntegerField;
    ItineraryCdsSrNo: TIntegerField;
    ItineraryCdsDayInfo: TStringField;
    ItineraryCdsDaySummaryInfo: TMemoField;
    PrintItinerary1: TMenuItem;
    DeleteItinerary1: TMenuItem;
    cxTabSheet5: TcxTabSheet;
    InclusionsSds: TSQLDataSet;
    InclusionsDsp: TDataSetProvider;
    InclusionsCds: TClientDataSet;
    InclusionsDs: TDataSource;
    InclusionsCdsQuoPrintInclusions_id: TIntegerField;
    InclusionsCdsQuoPrint_id: TIntegerField;
    InclusionsCdsOrderNo: TIntegerField;
    InclusionsCdsSrNo: TIntegerField;
    InclusionsCdsServiceType: TStringField;
    InclusionsCdsRemarks: TMemoField;
    DeleteInclusions1: TMenuItem;
    PrintInclusions1: TMenuItem;
    N2: TMenuItem;
    PrintCompositeReport1: TMenuItem;
    QRCompositeReport1: TQRCompositeReport;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    MasterCdsQuoRequest: TStringField;
    MasterCdsQuoRequestDetails: TMemoField;
    MasterCdsQuoFor: TStringField;
    MasterCdsQuoForDetails: TMemoField;
    MasterCdsQuoEstimate: TStringField;
    cxLabel2: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    N3: TMenuItem;
    Exclusions1: TMenuItem;
    cxButtonUpdate: TcxButton;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBBandedTableView3QuoPrintDays_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3QuoPrint_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3SrNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3DayInfo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3DaySummaryInfo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoPrintItineraries_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QuoPrint_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DayInfo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DaySummaryInfo: TcxGridDBBandedColumn;
    MasterCdsBasicRate: TFMTBCDField;
    MasterCdsBasicAmt: TFMTBCDField;
    MasterCdsServiceTaxPerc: TFMTBCDField;
    MasterCdsServiceTaxAmt: TFMTBCDField;
    MasterCdsQuotationAmt: TFMTBCDField;
    MasterCdsAdvanceAmt: TFMTBCDField;
    MasterCdsDueDate: TSQLTimeStampField;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxBasicAmtTextEdit: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    SpeedButton1: TSpeedButton;
    cxPaxLabel: TcxLabel;
    cxButton1: TcxButton;
    PrintCompositeReportRiksja1: TMenuItem;
    WriteWebTextFile1: TMenuItem;
    cxCurrencyLabel: TcxLabel;
    cxLabel15: TcxLabel;
    DeleteDetailedItinerary1: TMenuItem;
    PrintHotelListingwithImages1: TMenuItem;
    PrintHotelListingwithImagesMany1: TMenuItem;
    MasterCdsEmergencyContact: TStringField;
    cxLabel14: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    PrintDetailedItinerarywithImages1: TMenuItem;
    N4: TMenuItem;
    Print2: TMenuItem;
    N5: TMenuItem;
    SendEmail1: TMenuItem;
    scExcelExport: TscExcelExport;
    SendEmailHotelsDetailedItin1: TMenuItem;
    SaveQuotationASExcel2: TMenuItem;
    ServiceTaxperInvoiceFormat1: TMenuItem;
    ServiceTaxperItemFormat1: TMenuItem;
    SendEmailAllattachments1: TMenuItem;
    MasterCdsCompanyContact: TStringField;
    cxLabel16: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Exclusions2: TMenuItem;
    MasterCdsAdvDueDate: TSQLTimeStampField;
    cxLabel17: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    MasterCdsBalanceAmt: TFloatField;
    MasterCdsEmail: TStringField;
    MasterCdsNumPax: TIntegerField;
    cxLabel19: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
    procedure SubDetailCdsBeforePost(DataSet: TDataSet);
    procedure Delete1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ItineraryCdsBeforePost(DataSet: TDataSet);
    procedure ItineraryCdsAfterPost(DataSet: TDataSet);
    procedure ItineraryCdsAfterDelete(DataSet: TDataSet);
    procedure DeleteItinerary1Click(Sender: TObject);
    procedure PrintItinerary1Click(Sender: TObject);
    procedure InclusionsCdsAfterDelete(DataSet: TDataSet);
    procedure InclusionsCdsAfterPost(DataSet: TDataSet);
    procedure InclusionsCdsBeforePost(DataSet: TDataSet);
    procedure DeleteInclusions1Click(Sender: TObject);
    procedure PrintInclusions1Click(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure PrintCompositeReport1Click(Sender: TObject);
    procedure Exclusions1Click(Sender: TObject);
    procedure cxButtonUpdateClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure PrintCompositeReportRiksja1Click(Sender: TObject);
    procedure WriteWebTextFile1Click(Sender: TObject);
    procedure DeleteDetailedItinerary1Click(Sender: TObject);
    procedure PrintHotelListingwithImages1Click(Sender: TObject);
    procedure PrintHotelListingwithImagesMany1Click(Sender: TObject);
    procedure PrintDetailedItinerarywithImages1Click(Sender: TObject);
    procedure Print2Click(Sender: TObject);
    procedure SendEmail1Click(Sender: TObject);
    procedure ServiceTaxperInvoiceFormat1Click(Sender: TObject);
    procedure ServiceTaxperItemFormat1Click(Sender: TObject);
    procedure SendEmailHotelsDetailedItin1Click(Sender: TObject);
    procedure SendEmailAllattachments1Click(Sender: TObject);
    procedure Exclusions2Click(Sender: TObject);
    procedure MasterCdsCalcFields(DataSet: TDataSet);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure InsertPrintEntry;
    procedure InsertItineraryEntry;
    procedure InsertInclusionEntry;
    procedure InsertExclusionEntry;
    function DoesPrintEntryExist: boolean;
    function DoesItineraryEntryExist: boolean;
    function DoesInclusionEntryExist: boolean;
    function GetDayString(x_DayNo: integer; x_QuoDate: TDateTime;x_city: string): string;
    function GetNextDetailSrNo(x_QuoPrint_id: integer): integer;
    function GetNextItinerarySrNo(x_QuoPrint_id: integer): integer;
    function GetNextInclusionsSrNo(x_QuoPrint_id, x_type: integer): integer;
    function GetNextSubDetailSrNo(x_QuoPrintDays_id: integer): integer;
    procedure SaveChanges;
    procedure UpdateRequestDetails;
    procedure ComputeCosts;
    procedure WriteWebTextFile (x_Filename: string);
    procedure WritePdfFile(x_CompositeReportType: integer; x_option1: integer; x_Filename: string);
    procedure WriteHotelPdfFile;
    procedure WriteManyHotelPdfFile(x_option: integer; x_FileName: string);
    procedure WriteQuotationPdfFile(x_option: integer; x_Filename: string);
    procedure WriteDetailedItinPdfFile(x_option: integer; x_Filename: string);
    function GetMailIp: string;
    function GetSendMail: boolean;
    procedure SendEmail(x_option: integer);
    function GetMailBody(x_option: integer): string;
  public
    { Public declarations }
  end;

var
  QuoPrintForm: TQuoPrintForm;
  _QuoPrintForm_Level: integer;
  _QuoPrintForm_Quotations_id: integer;
  _QuoPrintForm_QuotationNo: integer;
  _QuoPrintForm_NumPax: integer;
  _QuoPrintForm_PaxName: string;
  _QuoPrintForm_QuotationDate: TDateTime;
  _QuoPrintForm_StartDate: TDateTime;
  _QuoPrintForm_Currency: string;
  _QuoPrintForm_Currencies_id: integer;
  _QuoPrintForm_CompositeReportType: integer;
  _QuoPrintForm_Email: string;
  _QuoPrintForm_StartDateEntered: integer;
  _QuoPrintForm_QuotationDateEntered: integer;

implementation

uses BackOfficeDM, RpQuoDetailedItinerary2Fm, GeneralUt, RpQuoItineraryFm,
  RpQuoInclusionFm, QuoExclusionFm, RpQuoHeaderFm, RpQuoEstimateFm,
  RpQuoExclusionFm, RpQuoHotelListFm, RpQuoHotelList2Fm, RpQuoModuleFm,
  MainFm, QuoModules_ExcelReportsUt, QuoExclFm, QuoReceiptsFm;

{$R *.dfm}

procedure TQuoPrintForm.FormCreate(Sender: TObject);
begin

  Caption := 'Quotation Detailed Itinerary - Custom Print';
  Width := 770;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  cxPaxLabel.Caption := ' ( x ' + IntToStr(_QuoPrintForm_NumPax) + ' Pax)';
  cxCurrencyLabel.Caption := _QuoPrintForm_Currency;

  ActivateInCustom;

  MasterSds.Params[0].Value := _QuoPrintForm_Quotations_id;

  inherited;

  ItineraryCds.Active := true;
  InclusionsCds.Active := true;

  InsertPrintEntry;
  InsertItineraryEntry;
  InsertInclusionEntry;
  InsertExclusionEntry;

  UpdateRequestDetails;

end;

procedure TQuoPrintForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoPrintForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoPrintForm := nil;
end;

procedure TQuoPrintForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoPrint';
  Custom_MasterKeyField := 'QuoPrint_id';

  Custom_DetailCdsName := 'QuoPrintDays';
  Custom_DetailKeyField := 'QuoPrintDays_id';

  Custom_SubDetailCdsName := 'QuoPrintPlaces';
  Custom_SubDetailKeyField := 'QuoPrintPlaces_id';

  Custom_AdmLevel := _QuoPrintForm_Level;

  Custom_FormWidth := 915;
  Custom_FormHeight := 660 - Panel1.Height; // since Panel1 is visbible=false here

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TQuoPrintForm.InsertPrintEntry;
var
  GpSds : TSQLDataSet;
  x_PrevDayNo: integer;
  x_str: string;
begin

  if DoesPrintEntryExist then
    begin
      if  MasterCds['NumPax'] <> null then
        _QuoPrintForm_NumPax := MasterCds['NumPax'];

      if MasterCds['Email'] <> null then
        _QuoPrintForm_Email := MasterCds['Email'];

      exit;
    end;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_Rpt_DetailedItinerary2 ' + IntToStr(_QuoPrintForm_Quotations_id) + ',1 ';
  GpSds.Open;

  if not GpSds.Eof then
    begin
      MasterCds.Insert;
      MasterCds['Quotations_id'] := _QuoPrintForm_Quotations_id;
      if GpSds['Str1'] <> null then
        MasterCds['PaxInfo'] := GpSds['Str1'];
      if GpSds['Str2'] <> null then
        MasterCds['StartingInfo'] := GpSds['Str2'];
      if GpSds['Str3'] <> null then
        MasterCds['BookingInfo'] := GpSds['Str3'];
      MasterCds['EmergencyContact'] := 'Emergency contact number in Delhi: (0091) 98290-16388 (Mr. Anil Sharma)';
      MasterCds['CompanyContact'] := 'Tel: (91) 93261 15681';
      MasterCds['NumPax'] := _QuoPrintForm_NumPax;
      MasterCds['Email'] := _QuoPrintForm_Email;
      MasterCds.Post;
    end;

  x_PrevDayNo := -1;

  while (not GpSds.EOF) do
    begin
      if GpSds['DayNo'] <> x_PrevDayNo then
        begin
          x_str := '';
          if (GpSds['DayNo'] <> null) and (GpSds['QuoDate'] <> null) and (GpSds['City'] <> null) then
            x_str := GetDayString(GpSds['DayNo'], GpSds['QuoDate'], GpSds['City']);
          if x_str > '' then
            begin
              DetailCds.Insert;
              DetailCds['DayInfo'] := x_str;
              if GpSds['String'] <> null then
                DetailCds['DaySummaryInfo'] := GpSds['String'];
              DetailCds.Post;
            end;
        end;

      SubDetailCds.Insert;
      if GpSds['Title'] <> null then
        SubDetailCds['Place'] := GpSds['Title'];
      if GpSds['WriteUp'] <> null then
        SubDetailCds['PlaceInfo'] := GpSds['WriteUp'];
      SubDetailCds.Post;

      x_PrevDayNo := GpSds['DayNo'];

      GpSds.Next;
    end;

  if  MasterCds['NumPax'] <> null then
    _QuoPrintForm_NumPax := MasterCds['NumPax'];

  if MasterCds['Email'] <> null then
    _QuoPrintForm_Email := MasterCds['Email'];

  GpSds.Free;

end;

procedure TQuoPrintForm.InsertItineraryEntry;
var
  GpSds : TSQLDataSet;
  x_PrevDayNo: integer;
  x_str: string;
begin

  if DoesItineraryEntryExist then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_Rpt_DetailedItinerary2 ' + IntToStr(_QuoPrintForm_Quotations_id) + ',2 ';
  GpSds.Open;

  x_PrevDayNo := -1;

  ItineraryCds.First;

  if ItineraryCds.Eof then
    begin

      while (not GpSds.EOF) do
        begin
          if GpSds['DayNo'] <> x_PrevDayNo then
            begin
              x_str := '';
              if (GpSds['DayNo'] <> null) and (GpSds['QuoDate'] <> null) and (GpSds['City'] <> null) then
                x_str := GetDayString(GpSds['DayNo'], GpSds['QuoDate'], GpSds['City']);
              if x_str > '' then
                begin
                  ItineraryCds.Insert;
                  ItineraryCds['DayInfo'] := x_str;
                  if GpSds['String'] <> null then
                    ItineraryCds['DaySummaryInfo'] := GpSds['String'];
                  ItineraryCds.Post;
                end;
            end;

          GpSds.Next;
        end;

    end;


  GpSds.Free;

end;

procedure TQuoPrintForm.InsertExclusionEntry;
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoExcl WHERE Quotations_id =  ' + IntToStr(_QuoPrintForm_Quotations_id) + ' ';
  GpSds.Open;

  if GpSds['x_count'] = 0 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'EXEC p_AddQuoExclusions ' + IntToStr(_QuoPrintForm_Quotations_id) + ' ';
      GpSds.ExecSQL;
    end;

  GpSds.Free;

end;

procedure TQuoPrintForm.InsertInclusionEntry;
var
  GpSds : TSQLDataSet;
begin

  if DoesInclusionEntryExist then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_RptQuoItinerary ' + IntToStr(_QuoPrintForm_Quotations_id) + ', 2';
  GpSds.Open;

  InclusionsCds.First;

  if InclusionsCds.Eof then
    begin

      while (not GpSds.EOF) do
        begin
          InclusionsCds.Insert;
          InclusionsCds['ServiceType'] := GpSds['ServiceType'];
          InclusionsCds['Remarks'] := GpSds['Remarks'];
          InclusionsCds.Post;
          GpSds.Next;
        end;

    end;

  GpSds.Free;

end;


function TQuoPrintForm.DoesPrintEntryExist: boolean;
var
  GpSds : TSQLDataSet;
  x_exists: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoPrint q ' +
    'WHERE Quotations_id = ' + IntToStr(_QuoPrintForm_Quotations_id);
  GpSds.Open;

  x_exists := false;
  if GpSds['x_count'] > 0 then
    x_exists := true;

  GpSds.Free;

  Result := x_exists;

end;


function TQuoPrintForm.DoesItineraryEntryExist: boolean;
var
  GpSds : TSQLDataSet;
  x_exists: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoPrint q ' +
    'INNER JOIN QuoPrintItineraries qi ON q.QuoPrint_id = qi.QuoPrint_id ' +
    'WHERE Quotations_id = ' + IntToStr(_QuoPrintForm_Quotations_id);
  GpSds.Open;

  x_exists := false;
  if GpSds['x_count'] > 0 then
    x_exists := true;

  GpSds.Free;

  Result := x_exists;

end;

function TQuoPrintForm.DoesInclusionEntryExist: boolean;
var
  GpSds : TSQLDataSet;
  x_exists: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoPrint q ' +
    'INNER JOIN QuoPrintInclusions qi ON q.QuoPrint_id = qi.QuoPrint_id ' +
    'WHERE Quotations_id = ' + IntToStr(_QuoPrintForm_Quotations_id);
  GpSds.Open;

  x_exists := false;
  if GpSds['x_count'] > 0 then
    x_exists := true;

  GpSds.Free;

  Result := x_exists;

end;


function TQuoPrintForm.GetDayString(x_DayNo: integer; x_QuoDate: TDateTime;x_city: string): string;
var
  x_string: string;
begin

  x_string := '';

  x_string := 'Day ' + Trim(IntToStr(x_DayNo)) + ' (' +
              FormatDateTime('ddd dd-mmm-yy',x_QuoDate) + '), ' +
              x_city;

  Result := x_string;

end;


procedure TQuoPrintForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DetailCds.State = dsInsert then
    DetailCds['SrNo'] := GetNextDetailSrNo(MasterCds['QuoPrint_id']);
end;

procedure TQuoPrintForm.SubDetailCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SubDetailCds.State = dsInsert then
    SubDetailCds['SrNo'] := GetNextSubDetailSrNo(DetailCds['QuoPrintDays_id']);

end;

function TQuoPrintForm.GetNextDetailSrNo(x_QuoPrint_id: integer): integer;
var
  GpSds : TSQLDataSet;
  x_Max_SrNo: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MAX(SrNo) AS MaxSrNo FROM QuoPrintDays ' +
    'WHERE QuoPrint_id = ' + IntToStr(x_QuoPrint_id);
  GpSds.Open;

  x_Max_SrNo := 0;
  if (not GpSds.eof) and (GpSds['MaxSrNo'] <> null) then
    x_Max_SrNo := GpSds['MaxSrNo'];
  x_Max_SrNo := x_Max_SrNo + 1;

  GpSds.Free;

  Result := x_Max_SrNo;

end;

function TQuoPrintForm.GetNextItinerarySrNo(x_QuoPrint_id: integer): integer;
var
  GpSds : TSQLDataSet;
  x_Max_SrNo: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MAX(SrNo) AS MaxSrNo FROM QuoPrintItineraries ' +
    'WHERE QuoPrint_id = ' + IntToStr(x_QuoPrint_id);
  GpSds.Open;

  x_Max_SrNo := 0;
  if (not GpSds.eof) and (GpSds['MaxSrNo'] <> null) then
    x_Max_SrNo := GpSds['MaxSrNo'];
  x_Max_SrNo := x_Max_SrNo + 1;

  GpSds.Free;

  Result := x_Max_SrNo;

end;

function TQuoPrintForm.GetNextInclusionsSrNo(x_QuoPrint_id, x_type: integer): integer;
var
  GpSds : TSQLDataSet;
  x_Max_SrNo: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MAX(SrNo) AS MaxSrNo FROM QuoPrintInclusions ' +
    'WHERE QuoPrint_id = ' + IntToStr(x_QuoPrint_id) + ' ' +
    'AND OrderNo = ' + IntToStr(x_type);
  GpSds.Open;

  x_Max_SrNo := 0;
  if (not GpSds.eof) and (GpSds['MaxSrNo'] <> null) then
    x_Max_SrNo := GpSds['MaxSrNo'];
  x_Max_SrNo := x_Max_SrNo + 1;

  GpSds.Free;

  Result := x_Max_SrNo;

end;


function TQuoPrintForm.GetNextSubDetailSrNo(x_QuoPrintDays_id: integer): integer;
var
  GpSds : TSQLDataSet;
  x_Max_SrNo: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT MAX(SrNo) AS MaxSrNo FROM QuoPrintPlaces ' +
    'WHERE QuoPrintDays_id = ' + IntToStr(x_QuoPrintDays_id);
  GpSds.Open;

  x_Max_SrNo := 0;
  if (not GpSds.eof) and (GpSds['MaxSrNo'] <> null) then
    x_Max_SrNo := GpSds['MaxSrNo'];
  x_Max_SrNo := x_Max_SrNo + 1;

  GpSds.Free;

  Result := x_Max_SrNo;

end;


procedure TQuoPrintForm.Delete1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_QuoPrint_Delete] ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;

end;

procedure TQuoPrintForm.Print1Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _RpQuoDetailedItinerary2Form_Type := 2;
  _RpQuoDetailedItinerary2Form_Image := 0;  

  if RpQuoDetailedItinerary2Form = nil then
    Application.CreateForm(TRpQuoDetailedItinerary2Form, RpQuoDetailedItinerary2Form);

  RpQuoDetailedItinerary2Form.ReportCds.Close;
  RpQuoDetailedItinerary2Form.ReportSds.Close;

  RpQuoDetailedItinerary2Form.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.BookingInfo AS Str3,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,' +
       'sd.Place AS Title, cast(sd.PlaceInfo as text) AS WriteUp, p.EmergencyContact, p.CompanyContact ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintDays d ON p.QuoPrint_id = d.QuoPrint_id ' +
       'LEFT JOIN QuoPrintPlaces sd ON d.QuoPrintDays_id = sd.QuoPrintDays_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo, sd.SrNo';


  RpQuoDetailedItinerary2Form.ReportSds.Open;
  RpQuoDetailedItinerary2Form.ReportCds.Open;

  RpQuoDetailedItinerary2Form.QuickRep1.PreviewModal;

  RpQuoDetailedItinerary2Form.Release;
  RpQuoDetailedItinerary2Form := nil;

end;

procedure TQuoPrintForm.SaveChanges;
begin
  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;
  if (DetailCds.State = dsInsert) or (DetailCds.State = dsEdit) then
    DetailCds.Post;
  if (SubDetailCds.State = dsInsert) or (SubDetailCds.State = dsEdit) then
    SubDetailCds.Post;
  if (ItineraryCds.State = dsInsert) or (ItineraryCds.State = dsEdit) then
    ItineraryCds.Post;
  if (InclusionsCds.State = dsInsert) or (InclusionsCds.State = dsEdit) then
    InclusionsCds.Post;
end;


procedure TQuoPrintForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  SaveChanges;
  inherited;
end;

procedure TQuoPrintForm.ItineraryCdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ItineraryCds.State = dsInsert then
    ItineraryCds['SrNo'] := GetNextItinerarySrNo(MasterCds['QuoPrint_id']);

  if ItineraryCds.State = dsInsert then
    ItineraryCds['QuoPrintItineraries_id'] := GetNextId('QuoPrintItineraries','QuoPrintItineraries_id');

end;

procedure TQuoPrintForm.ItineraryCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  ItineraryCds.ApplyUpdates(0);
end;

procedure TQuoPrintForm.ItineraryCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ItineraryCds.ApplyUpdates(0);
end;

procedure TQuoPrintForm.DeleteItinerary1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'DELETE FROM QuoPrintItineraries WHERE QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;


end;

procedure TQuoPrintForm.PrintItinerary1Click(Sender: TObject);
begin
  inherited;


  SaveChanges;

  _RpQuoItineraryForm_Type := 2;

  if RpQuoItineraryForm = nil then
    Application.CreateForm(TRpQuoItineraryForm, RpQuoItineraryForm);

  RpQuoItineraryForm.ReportCds.Close;
  RpQuoItineraryForm.ReportSds.Close;

  RpQuoItineraryForm.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.BookingInfo AS Str3,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,  ' +
       'CAST(0 AS BIT) AS Overnight ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintItineraries d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo';

  RpQuoItineraryForm.ReportSds.Open;
  RpQuoItineraryForm.ReportCds.Open;

  RpQuoItineraryForm.QuickRep1.PreviewModal;

  RpQuoItineraryForm.Release;
  RpQuoItineraryForm := nil;

end;

procedure TQuoPrintForm.InclusionsCdsAfterDelete(DataSet: TDataSet);
begin
  inherited;
  InclusionsCds.ApplyUpdates(0);
end;

procedure TQuoPrintForm.InclusionsCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  InclusionsCds.ApplyUpdates(0);
end;

procedure TQuoPrintForm.InclusionsCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if ((InclusionsCds['ServiceType'] = null) or (trim(InclusionsCds['ServiceType']) = '')) then
    raise SysUtils.exception.create('Service Type has to be entered');

  InclusionsCds['OrderNo'] := 0;
  if InclusionsCds['ServiceType'] = 'Tickets' then
    InclusionsCds['OrderNo'] := 2
  else if InclusionsCds['ServiceType'] = 'Accommodation' then
    InclusionsCds['OrderNo'] := 1
  else if InclusionsCds['ServiceType'] = 'Services' then
    InclusionsCds['OrderNo'] := 4
  else if InclusionsCds['ServiceType'] = 'Transport' then
    InclusionsCds['OrderNo'] := 3;

  if (InclusionsCds['OrderNo'] = 0) then
    raise SysUtils.exception.create('Invalid Service Type entered');

  if InclusionsCds.State = dsInsert then
    InclusionsCds['SrNo'] := GetNextInclusionsSrNo(MasterCds['QuoPrint_id'],InclusionsCds['OrderNo']);

  if InclusionsCds.State = dsInsert then
    InclusionsCds['QuoPrintInclusions_id'] := GetNextId('QuoPrintInclusions','QuoPrintInclusions_id');

end;

procedure TQuoPrintForm.DeleteInclusions1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'DELETE FROM QuoPrintInclusions WHERE QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;

end;

procedure TQuoPrintForm.PrintInclusions1Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _RpQuoInclusionForm_Type := 2;  

  if RpQuoInclusionForm = nil then
    Application.CreateForm(TRpQuoInclusionForm, RpQuoInclusionForm);

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportSds.Close;

  RpQuoInclusionForm.ReportSds.Close;
  RpQuoInclusionForm.ReportSds.CommandText :=
    'SELECT d.QuoPrintInclusions_id AS Inclusion_id, cast(null as smalldatetime) AS DateIn, cast(null as datetime) AS TimeIn, ' +
    'd.ServiceType, Cast(d.Remarks AS varchar(1000)) AS Remarks, d.OrderNo, '''' AS LeadName, '''' AS TourCode, ' +
    'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.BookingInfo AS Str3 ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintInclusions d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.OrderNo, d.SrNo';
  RpQuoInclusionForm.ReportSds.Open;

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportCds.Open;

  RpQuoInclusionForm.QuickRep1.PreviewModal;

  RpQuoInclusionForm.Release;
  RpQuoInclusionForm := nil;

end;

procedure TQuoPrintForm.QRCompositeReport1AddReports(Sender: TObject);
begin
  inherited;

  with QRCompositeReport1.Reports do
    begin
      Clear;
      Add(RpQuoHeaderForm.QuickRep1);
      Add(RpQuoItineraryForm.QuickRep1);
      if  _QuoPrintForm_CompositeReportType = 1 then
        Add(RpQuoEstimateForm.QuickRep1);
      Add(RpQuoInclusionForm.QuickRep1);
      Add(RpQuoExclusionForm.QuickRep1);
    end;
end;

procedure TQuoPrintForm.PrintCompositeReport1Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WritePdfFile(1, 1, '');

end;

procedure TQuoPrintForm.Exclusions1Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _QuoExclusionForm_Level := 4;
  _QuoExclusionForm_Quotations_id := _QuoPrintForm_Quotations_id;

  If _QuoExclusionForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoExclusionForm = nil then
    Application.CreateForm(TQuoExclusionForm, QuoExclusionForm);

end;

procedure TQuoPrintForm.cxButtonUpdateClick(Sender: TObject);
begin
  inherited;
  UpdateRequestDetails;
end;

procedure TQuoPrintForm.UpdateRequestDetails;
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT * FROM dbo.[fn_QuoRequestDetails](' +
                       IntToStr(_QuoPrintForm_Quotations_id) + ')';
  GpSds.Open;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  if (MasterCds['QuoRequest'] = null) or (MasterCds['QuoRequest'] = '') then
    if GpSds['QuoRequest'] <> null then
      MasterCds['QuoRequest'] := GpSds['QuoRequest'];

  if (MasterCds['QuoRequestDetails'] = null) or (MasterCds['QuoRequestDetails'] = '') then
    if GpSds['QuoRequestDetails'] <> null then
      MasterCds['QuoRequestDetails'] := GpSds['QuoRequestDetails'];

  if (MasterCds['QuoFor'] = null) or (MasterCds['QuoFor'] = '') then
    if GpSds['QuoFor'] <> null then
      MasterCds['QuoFor'] := GpSds['QuoFor'];

  if (MasterCds['QuoForDetails'] = null) or (MasterCds['QuoForDetails'] = '') then
    if GpSds['QuoForDetails'] <> null then
      MasterCds['QuoForDetails'] := GpSds['QuoForDetails'];

  GpSds.Free;

  MasterCds.Post;

end;


procedure TQuoPrintForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  cxBasicAmtTextEdit.SetFocus;
  ComputeCosts;
end;

procedure TQuoPrintForm.ComputeCosts;
begin

  if MasterCds['BasicRate'] = null then
    raise SysUtils.exception.create ('Please enter the Basic Rate');

  // to save numPax (if changed) in this form since it is used for the calculations  
  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  if MasterCds.State = dsBrowse then
    MasterCds.Edit;

  MasterCds['BasicAmt'] := MasterCds['BasicRate'] * _QuoPrintForm_NumPax;

  MasterCds['ServiceTaxPerc'] := GetServiceTax(_QuoPrintForm_StartDate, 15);
  MasterCds['ServiceTaxAmt'] := RoundUp((MasterCds['ServiceTaxPerc']/100.0) * MasterCds['BasicAmt']);

  MasterCds['QuotationAmt'] := MasterCds['BasicAmt'] + MasterCds['ServiceTaxAmt'];

  MasterCds['DueDate'] := IncMonth(_QuoPrintForm_StartDate,-3);

  if (_QuoPrintForm_QuotationDateEntered = 1) and (MasterCds['DueDate'] < _QuoPrintForm_QuotationDate) then
    MasterCds['DueDate'] := _QuoPrintForm_QuotationDate;

  if (MasterCds['AdvDueDate'] = null) and (_QuoPrintForm_QuotationDateEntered = 1) then
    MasterCds['AdvDueDate'] := _QuoPrintForm_QuotationDate;

end;


procedure TQuoPrintForm.cxButton1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  SaveChanges;

  if MessageDlg('Are you sure you want to sync this quotation with the web?', mtConfirmation, [mbYes, mbNo],0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC [p_UpdateRemoteQuotation] ' + IntToStr(_QuoPrintForm_Quotations_id);
  GpSds.ExecSQL;
  GpSds.Free;

  ShowMessage('Done');

end;

procedure TQuoPrintForm.PrintCompositeReportRiksja1Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WritePdfFile(2, 1, '');

end;

procedure TQuoPrintForm.WriteWebTextFile1Click(Sender: TObject);
var
  x_Path, x_FileName: string;
begin

  if MasterCds['Quotations_id'] = null then
    raise SysUtils.exception.create('Please select the quotation');

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;
      
  x_Path := g_ReportDir + '\WebQuotations';

  if not DirectoryExists(x_Path) then
    CreateDir(x_Path);

  x_FileName := x_Path + '\' + IntToStr(MasterCds['Quotations_id']);

  _QuoPrintForm_NumPax := MasterCds['NumPax'];
  _QuoPrintForm_Email := MasterCds['Email'];

  WriteWebTextFile (x_Filename+ '.txt');
  WritePdfFile(1, 2, x_Filename + '.pdf');

  ShowMessage ('Saved As ' + x_FileName + '.txt & ' + x_FileName + '.pdf');
end;

procedure TQuoPrintForm.WriteWebTextFile (x_Filename: string);
var
  F_web: Textfile;
  x_DueDateStr: string;
  x_Quotations_id: integer;
  x_BasicRate, x_ServTaxPerc,x_ServTaxAmt, x_QuotationAmt, x_AdvanceAmt, x_BalanceAmt: double;
begin

  if _QuoPrintForm_Email = '' then
    raise SysUtils.exception.create ('Please enter the email in the starting info');

  AssignFile(F_web, x_FileName);
  Rewrite(F_web);

  WriteLn (F_web, '[FileType]');
  WriteLn (F_web, 'Type = Tours');

  WriteLn (F_web, '[Lead]');

  WriteLn (F_web, 'PartyName = ' + _QuoPrintForm_PaxName);

  WriteLn (F_web, 'Email = ' + _QuoPrintForm_Email);

  WriteLn (F_web, 'NumPax = ' + IntToStr(_QuoPrintForm_NumPax));

  WriteLn (F_web, '');

  WriteLn (F_web, '[Quotation]');

  x_Quotations_id := 0;
  if MasterCds['Quotations_id'] <> null then
    x_Quotations_id := MasterCds['Quotations_id'];
  WriteLn (F_web, 'Id = ' + IntToStr(x_Quotations_id));

  WriteLn (F_web, 'No = ' + IntToStr(_QuoPrintForm_QuotationNo));

  WriteLn (F_web, 'Currency = ' + IntToStr(_QuoPrintForm_Currencies_id));

  x_BasicRate := 0;
  if MasterCds['BasicRate'] <> null then
    x_BasicRate := MasterCds['BasicRate'];
  WriteLn (F_web, 'AmountPerPerson = ' + FloatToStr(x_BasicRate));

  x_ServTaxPerc := 0;
  if MasterCds['ServiceTaxPerc'] <> null then
    x_ServTaxPerc := MasterCds['ServiceTaxPerc'];
  WriteLn (F_web, 'ServiceTaxPercentage = ' + FloatToStr(x_ServTaxPerc));

  x_ServTaxAmt := 0;
  if MasterCds['ServiceTaxAmt'] <> null then
    x_ServTaxAmt := MasterCds['ServiceTaxAmt'];
  WriteLn (F_web, 'ServiceTax = ' + FloatToStr(x_ServTaxAmt));

  x_QuotationAmt := 0;
  if MasterCds['QuotationAmt'] <> null then
    x_QuotationAmt := MasterCds['QuotationAmt'];
  WriteLn (F_web, 'TotalAmt = ' + FloatToStr(x_QuotationAmt));

  WriteLn (F_web, '');

  WriteLn (F_web, '[Payment]');

  x_AdvanceAmt := 0;
  if MasterCds['AdvanceAmt'] <> null then
    x_AdvanceAmt := MasterCds['AdvanceAmt'];
  WriteLn (F_web, 'AdvanceAmt = ' + FloatToStr(x_AdvanceAmt));

  x_DueDateStr := '';
  if (x_AdvanceAmt <> 0) and (MasterCds['AdvDueDate'] <> null) then
    x_DueDateStr := FormatDateTime('yyyy-mm-dd',MasterCds['AdvDueDate'])
  else
    x_DueDateStr := '0000-00-00';
  WriteLn (F_web, 'AdvanceDueOn = ' + x_DueDateStr);

  x_BalanceAmt := x_QuotationAmt - x_AdvanceAmt;
  WriteLn (F_web, 'BalanceAmt = ' + FloatToStr(x_BalanceAmt));

  x_DueDateStr := '';
  if MasterCds['DueDate'] <> null then
    x_DueDateStr := FormatDateTime('yyyy-mm-dd',MasterCds['DueDate'])
  else
    x_DueDateStr := '0000-00-00';
  WriteLn (F_web, 'BalanceAmtDueOn = ' + x_DueDateStr);

  CloseFile(F_web);
end;

procedure TQuoPrintForm.WritePdfFile(x_CompositeReportType: integer; x_option1: integer; x_Filename: string);
var
  x_PDF : TQRPDFDocumentFilter;
  GpSds : TSQLDataSet;
  x_Trial, x_PrincipalAgents_id, x_Consultants_id: integer;
begin

  SaveChanges;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'SELECT COALESCE(Trial,0) AS Trial, PrincipalAgents_id, Consultants_id FROM Quotations WHERE Quotations_id = ' + IntToStr(_QuoPrintForm_Quotations_id);
  GpSds.Open;

  x_Trial := 0;
  if (not GpSds.EOF) and (GpSds['Trial'] <> null) then
    x_Trial := GpSds['Trial'];

  x_PrincipalAgents_id := 0;
  if (not GpSds.EOF) and (GpSds['PrincipalAgents_id'] <> null) then
    x_PrincipalAgents_id := GpSds['PrincipalAgents_id'];

  x_Consultants_id := 0;
  if (not GpSds.EOF) and (GpSds['Consultants_id'] <> null) then
    x_Consultants_id := GpSds['Consultants_id'];

  GpSds.Free;


  _QuoPrintForm_CompositeReportType := x_CompositeReportType;

  // Header

  if RpQuoHeaderForm = nil then
    Application.CreateForm(TRpQuoHeaderForm, RpQuoHeaderForm);

  // web
  if (x_Trial = 2) or (x_PrincipalAgents_id = 0) or (x_Consultants_id = 0) then
    begin
      RpQuoHeaderForm.QRDB_QuoRequestLabel.Enabled := false;
      RpQuoHeaderForm.QRDB_QuoRequestDetailsLabel.Enabled := false;
    end;

  RpQuoHeaderForm.ReportCds.Close;
  RpQuoHeaderForm.ReportSds.Close;

  RpQuoHeaderForm.ReportSds.Params[0].Value := _QuoPrintForm_Quotations_id;

  RpQuoHeaderForm.ReportSds.Open;
  RpQuoHeaderForm.ReportCds.Open;


  _RpQuoItineraryForm_Type := 2;

  if RpQuoItineraryForm = nil then
    Application.CreateForm(TRpQuoItineraryForm, RpQuoItineraryForm);

  RpQuoItineraryForm.ReportCds.Close;
  RpQuoItineraryForm.ReportSds.Close;

  RpQuoItineraryForm.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.BookingInfo AS Str3,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,  ' +
       'CAST(0 AS BIT) AS Overnight ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintItineraries d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo';

  RpQuoItineraryForm.ReportSds.Open;
  RpQuoItineraryForm.ReportCds.Open;



  // Estimate

  if RpQuoEstimateForm = nil then
    Application.CreateForm(TRpQuoEstimateForm, RpQuoEstimateForm);

  RpQuoEstimateForm.ReportCds.Close;
  RpQuoEstimateForm.ReportSds.Close;

  RpQuoEstimateForm.ReportSds.Params[0].Value := _QuoPrintForm_Quotations_id;

  RpQuoEstimateForm.ReportSds.Open;
  RpQuoEstimateForm.ReportCds.Open;


  // Inclusion

  _RpQuoInclusionForm_Type := 2;

  if RpQuoInclusionForm = nil then
    Application.CreateForm(TRpQuoInclusionForm, RpQuoInclusionForm);

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportSds.Close;

  RpQuoInclusionForm.ReportSds.Close;
  RpQuoInclusionForm.ReportSds.CommandText :=
    'SELECT d.QuoPrintInclusions_id AS Inclusion_id, cast(null as smalldatetime) AS DateIn, cast(null as datetime) AS TimeIn, ' +
    'd.ServiceType, Cast(d.Remarks AS varchar(1000)) AS Remarks, d.OrderNo, '''' AS LeadName, '''' AS TourCode, ' +
    'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.BookingInfo AS Str3 ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintInclusions d ON p.QuoPrint_id = d.QuoPrint_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.OrderNo, d.SrNo';
  RpQuoInclusionForm.ReportSds.Open;

  RpQuoInclusionForm.ReportCds.Close;
  RpQuoInclusionForm.ReportCds.Open;



  // Exclusions

  if x_CompositeReportType = 1 then
    _RpQuoExclusionForm_Type := 1
  else if x_CompositeReportType = 2 then
    _RpQuoExclusionForm_Type := 2;

  _RpQuoExclusionForm_EmergencyContact := '';
  if MasterCds['EmergencyContact'] <> null then
    _RpQuoExclusionForm_EmergencyContact := MasterCds['EmergencyContact'];

  _RpQuoExclusionForm_CompanyContact := '';
  if MasterCds['CompanyContact'] <> null then
    _RpQuoExclusionForm_CompanyContact := MasterCds['CompanyContact'];

  if RpQuoExclusionForm = nil then
    Application.CreateForm(TRpQuoExclusionForm, RpQuoExclusionForm);

  RpQuoExclusionForm.ReportCds.Close;
  RpQuoExclusionForm.ReportSds.Close;

  RpQuoExclusionForm.ReportSds.Params[0].Value := _QuoPrintForm_Quotations_id;

  RpQuoExclusionForm.ReportSds.Open;
  RpQuoExclusionForm.ReportCds.Open;

  if x_option1 = 1 then
    begin
      QRCompositeReport1.Preview;
    end
  else if x_option1 = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      QRCompositeReport1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;


  RpQuoExclusionForm.Release;
  RpQuoExclusionForm := nil;

  RpQuoInclusionForm.Release;
  RpQuoInclusionForm := nil;

  RpQuoEstimateForm.Release;
  RpQuoEstimateForm := nil;

  RpQuoItineraryForm.Release;
  RpQuoItineraryForm := nil;

  RpQuoHeaderForm.Release;
  RpQuoHeaderForm := nil;

end;

procedure TQuoPrintForm.DeleteDetailedItinerary1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'DELETE FROM QuoPrintDays WHERE QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.ExecSQL;

  GpSds.Free;

  MasterCds.Active := false;
  MasterCds.Active := true;


end;

procedure TQuoPrintForm.PrintHotelListingwithImages1Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  WriteHotelPdfFile;

end;

procedure TQuoPrintForm.WriteHotelPdfFile;
var
  x_PDF : TQRPDFDocumentFilter;
begin

  SaveChanges;

  // Header

  if RpQuoHotelListForm = nil then
    Application.CreateForm(TRpQuoHotelListForm, RpQuoHotelListForm);

  RpQuoHotelListForm.ReportCds.Close;
  RpQuoHotelListForm.ReportSds.Close;

  RpQuoHotelListForm.ReportSds.Params[0].Value := _QuoPrintForm_Quotations_id;

  RpQuoHotelListForm.ReportSds.Open;
  RpQuoHotelListForm.ReportCds.Open;

  RpQuoHotelListForm.QuickRep1.PreviewModal;

{
  if x_option1 = 1 then
    begin
      QRCompositeReport1.Preview;
    end
  else if x_option1 = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      QRCompositeReport1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;
}

  RpQuoHotelListForm.Release;
  RpQuoHotelListForm := nil;

end;


procedure TQuoPrintForm.PrintHotelListingwithImagesMany1Click(
  Sender: TObject);
begin
  inherited;

  SaveChanges;

  WriteManyHotelPdfFile(1, '');

end;

procedure TQuoPrintForm.WriteManyHotelPdfFile(x_option: integer; x_FileName: string);
var
  x_PDF : TQRPDFDocumentFilter;
begin

  SaveChanges;

  // Header

  if RpQuoHotelList2Form = nil then
    Application.CreateForm(TRpQuoHotelList2Form, RpQuoHotelList2Form);

  RpQuoHotelList2Form.ReportCds.Close;
  RpQuoHotelList2Form.ReportSds.Close;

  RpQuoHotelList2Form.ReportSds.Params[0].Value := _QuoPrintForm_Quotations_id;

  RpQuoHotelList2Form.ReportSds.Open;
  RpQuoHotelList2Form.ReportCds.Open;

  if x_option = 1 then
    begin
      RpQuoHotelList2Form.QuickRep1.PreviewModal;
    end
  else if x_option = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      RpQuoHotelList2Form.QuickRep1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;

  RpQuoHotelList2Form.Release;
  RpQuoHotelList2Form := nil;

end;


procedure TQuoPrintForm.PrintDetailedItinerarywithImages1Click(
  Sender: TObject);
begin
  inherited;

  WriteDetailedItinPdfFile(1, '');

end;

procedure TQuoPrintForm.WriteDetailedItinPdfFile(x_option: integer; x_Filename: string);
var
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
  x_PDF : TQRPDFDocumentFilter;
begin
  inherited;

  SaveChanges;

  _RpQuoDetailedItinerary2Form_Type := 2;
  _RpQuoDetailedItinerary2Form_Image := 1;

  if RpQuoDetailedItinerary2Form = nil then
    Application.CreateForm(TRpQuoDetailedItinerary2Form, RpQuoDetailedItinerary2Form);

  RpQuoDetailedItinerary2Form.ReportCds.Close;
  RpQuoDetailedItinerary2Form.ReportSds.Close;

  RpQuoDetailedItinerary2Form.ReportSds.CommandText :=
    'SELECT cast(null as smalldatetime) AS QuoDate, '''' AS City, '''' AS TourCode,' +
       'cast(null as smalldatetime) AS StartDate, p.PaxInfo AS Str1, p.StartingInfo AS Str2, p.BookingInfo AS Str3,' +
       'd.SrNo AS DayNo, d.DayInfo As PaxName, cast(d.DaySummaryInfo as varchar(2000)) AS String,' +
       'sd.Place AS Title, cast(sd.PlaceInfo as text) AS WriteUp, p.EmergencyContact, p.CompanyContact ' +
  'FROM QuoPrint p ' +
       'LEFT JOIN QuoPrintDays d ON p.QuoPrint_id = d.QuoPrint_id ' +
       'LEFT JOIN QuoPrintPlaces sd ON d.QuoPrintDays_id = sd.QuoPrintDays_id ' +
  'WHERE p.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']) + ' ' +
 'ORDER BY d.SrNo, sd.SrNo';


  RpQuoDetailedItinerary2Form.ReportSds.Open;
  RpQuoDetailedItinerary2Form.ReportCds.Open;

  if x_option = 1 then
    RpQuoDetailedItinerary2Form.QuickRep1.PreviewModal
  else if x_option = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      RpQuoDetailedItinerary2Form.QuickRep1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;

  RpQuoDetailedItinerary2Form.Release;
  RpQuoDetailedItinerary2Form := nil;


end;



procedure TQuoPrintForm.Print2Click(Sender: TObject);
begin
  inherited;

  WriteQuotationPdfFile(1, '');

end;

procedure TQuoPrintForm.WriteQuotationPdfFile(x_option: integer; x_Filename: string);
var
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
  x_PDF : TQRPDFDocumentFilter;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT qm.QuoModules_id ' +
    'FROM QuoPrint qp ' +
    'INNER JOIN Quotations q ON qp.Quotations_id = q.Quotations_id ' +
    'INNER JOIN QuoModules qm ON q.TourCode = qm.TourCode AND q.StartDate = qm.TourDate ' +
    'WHERE qp.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.Open;

  x_QuoModules_id := -1;
  if (not GpSds.Eof) and (GpSds['QuoModules_id'] <> null) then
    x_QuoModules_id := GpSds['QuoModules_id'];

  GpSds.Free;


  if RpQuoModuleForm = nil then
    Application.CreateForm(TRpQuoModuleForm, RpQuoModuleForm);

  RpQuoModuleForm.ReportCds.Close;
  RpQuoModuleForm.ReportSds.Close;
  RpQuoModuleForm.ReportSds.CommandText :=
    'EXEC p_RptQuoModules ' + IntToStr(x_QuoModules_id) + ', 1';
  RpQuoModuleForm.ReportSds.Open;
  RpQuoModuleForm.ReportCds.Open;

  RpQuoModuleForm.PaxCds.Open;

  if x_option = 1 then
    RpQuoModuleForm.QuickRep1.PreviewModal
  else if x_option = 2 then
    begin
      x_PDF := TQRPDFDocumentFilter.Create(x_FileName);
      x_PDF.FontHandling := fhAutoEmbed;
      RpQuoModuleForm.QuickRep1.ExportToFilter(x_PDF);
      x_PDF.Free;
    end;

  RpQuoModuleForm.Release;
  RpQuoModuleForm := nil;

end;


procedure TQuoPrintForm.SendEmail1Click(Sender: TObject);
begin
  SendEmail(1);
end;

procedure TQuoPrintForm.SendEmail(x_option: integer);
var
  x_Path, x_FileName, x_ip, x_To, x_TourCode, x_PaxInfo, x_QueryString, x_Sender: string;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
  x_sendMail: boolean;
  GpSds : TSQLDataSet;
begin
  inherited;

  if MessageDlg('This will atach 2 pdf files to your email. It will take a few minutes. Please do not close the application',
                mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if MasterCds['Quotations_id'] = null then
    raise SysUtils.exception.create('Please select the quotation');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT q.Email, qp.PaxInfo, q.TourCode FROM Quotations q ' +
    'INNER JOIN QuoPrint qp ON q.Quotations_id = qp.Quotations_id ' +
    'WHERE q.Quotations_id = ' + IntToStr(MasterCds['Quotations_id']);
  GpSds.Open;

  x_To := '';
  if (not GpSds.Eof) and (GpSds['Email'] <> null) then
    x_To := GpSds['Email'];

  x_PaxInfo := '';
  if (not GpSds.Eof) and (GpSds['PaxInfo'] <> null) then
    x_PaxInfo := GpSds['PaxInfo'];

  x_TourCode := '';
  if (not GpSds.Eof) and (GpSds['TourCode'] <> null) then
    x_TourCode := GpSds['TourCode'];


  x_QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  GpSds.Free;

  x_Path := g_ReportDir + '\WebQuotations';

  if not DirectoryExists(x_Path) then
    CreateDir(x_Path);

  x_FileName := x_Path + '\' + IntToStr(MasterCds['Quotations_id']);

  if x_option = 1 then
    begin
      WritePdfFile(2, 2, x_Filename + '.pdf');
      WriteQuotationPdfFile(2, x_Filename + '_quote.pdf');
    end
  else if x_option = 2 then
    begin
      WriteDetailedItinPdfFile(2, x_Filename + '_DetailedItin.pdf');
      WriteManyHotelPdfFile(2, x_Filename + '_Hotel.pdf');
    end
  else if x_option = 3 then
    begin
      WritePdfFile(2, 2, x_Filename + '.pdf');
      WriteQuotationPdfFile(2, x_Filename + '_quote.pdf');
      WriteDetailedItinPdfFile(2, x_Filename + '_DetailedItin.pdf');
      WriteManyHotelPdfFile(2, x_Filename + '_Hotel.pdf');
    end;

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  if x_SendMail = false then
    x_To := x_Sender
  else
    x_To := x_To + ';' + x_Sender;

  MailItem := Outlook.createitem(olMailItem);
  MailItem.Recipients.Add(x_To);
  MailItem.subject := '(' + x_TourCode + ') -- ' + x_PaxInfo;

  MailItem.Body := GetMailBody (x_option);
  if x_option = 1 then
    begin
      MailItem.Attachments.Add(x_Filename + '.pdf');
      MailItem.Attachments.Add(x_Filename + '_quote.pdf');
    end
  else if x_option = 2 then
    begin
      MailItem.Attachments.Add(x_Filename + '_DetailedItin.pdf');
      MailItem.Attachments.Add(x_Filename + '_Hotel.pdf');
    end
  else if x_option = 3 then
    begin
      MailItem.Attachments.Add(x_Filename + '.pdf');
      MailItem.Attachments.Add(x_Filename + '_quote.pdf');
      MailItem.Attachments.Add(x_Filename + '_DetailedItin.pdf');
      MailItem.Attachments.Add(x_Filename + '_Hotel.pdf');
    end;
  MailItem.save;

  ShowMessage ('Please check the drafts folder of your mailbox');

end;

function TQuoPrintForm.GetMailBody(x_option: integer): string;
var
  GpSds : TSQLDataSet;
  x_msg, QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT c.Consultant, q.PaxName, q.TourCode, u.UserName, '''' AS PaxNotes ' +
                 'FROM Quotations q ' +
                 'LEFT JOIN Consultants c ON q.Consultants_id = c.Consultants_id ' +
                 'LEFT JOIN AdmUsers u ON q.AdmUsers_id = u.AdmUsers_id ' +
                 'LEFT JOIN QuoPrint qp ON q.Quotations_id = qp.Quotations_id ' +
                 'WHERE q.Quotations_id = ' + IntToStr(_QuoPrintForm_Quotations_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_msg := 'Dear ';
  if (not GpSds.Eof) and (GpSds['Consultant'] <> null) then
    x_msg := x_msg + trim(GpSds['Consultant']);
  x_msg := x_msg + chr(13) + chr(13);

  x_msg := x_msg + 'Personal itinerary prepared for ';
  if (not GpSds.Eof) and (GpSds['PaxName'] <> null) then
    x_msg := x_msg + trim(GpSds['PaxName']);
  if (not GpSds.Eof) and (GpSds['TourCode'] <> null) then
    x_msg := x_msg + ' (' + trim(GpSds['TourCode']) + ')';
  x_msg := x_msg + chr(13) + chr(13);

  x_msg := x_msg + 'Please find attached the following documents:' + chr(13) + chr(13);

  if (x_option = 1) or (x_option = 3) then
    begin
      x_msg := x_msg + 'Tour Proposal' + chr(13);
      x_msg := x_msg + 'Quotation' + chr(13);
    end;

  if (x_option = 2) or (x_option = 3) then
    begin
      x_msg := x_msg + 'Detailed Itinerary' + chr(13);
      x_msg := x_msg + 'List of Hotels' + chr(13);
    end;

  x_msg := x_msg + chr(13);

  x_msg := x_msg + 'Please do let me know if you need any further clarification.' + chr(13) + chr(13);

  x_msg := x_msg + 'Best regards, ' + chr(13) + chr(13);

  if (not GpSds.Eof) and (GpSds['UserName'] <> null) then
    x_msg := x_msg + trim(GpSds['UserName']);
  x_msg := x_msg + chr(13);

  x_msg := x_msg + 'Reservations Department' + chr(13) + chr(13);

  if (not GpSds.Eof) and (GpSds['PaxNotes'] <> null) then
    x_msg := x_msg + trim(GpSds['PaxNotes']);

  GpSds.Free;

  Result := x_msg;

end;


function TQuoPrintForm.GetMailIp: string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ip: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT ltrim(rtrim(coalesce(text,''''))) as email_ip from defaults ' +
    'WHERE item = ''Email_ip'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ip := '';
  if GpSds['Email_ip'] <> null then
    x_ip := GpSds['Email_ip'];

  GpSds.Free;

  Result := x_ip;

end;

function TQuoPrintForm.GetSendMail: boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_SendMail: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMailGroup'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  GpSds.Free;

  Result := x_SendMail;

end;



procedure TQuoPrintForm.ServiceTaxperInvoiceFormat1Click(Sender: TObject);
var
  x_FileName: string;
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT qm.QuoModules_id ' +
    'FROM QuoPrint qp ' +
    'INNER JOIN Quotations q ON qp.Quotations_id = q.Quotations_id ' +
    'INNER JOIN QuoModules qm ON q.TourCode = qm.TourCode AND q.StartDate = qm.TourDate ' +
    'WHERE qp.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.Open;

  x_QuoModules_id := -1;
  if (not GpSds.Eof) and (GpSds['QuoModules_id'] <> null) then
    x_QuoModules_id := GpSds['QuoModules_id'];

  GpSds.Free;

  if x_QuoModules_id < 1 then
    abort;

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(x_QuoModules_id) + '.xls';

  QuoModule_Quotation_Excel(scExcelExport, x_FileName, x_QuoModules_id, 1, 0, 0, 0, 1);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TQuoPrintForm.ServiceTaxperItemFormat1Click(Sender: TObject);
var
  x_FileName: string;
  GpSds : TSQLDataSet;
  x_QuoModules_id: integer;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT qm.QuoModules_id ' +
    'FROM QuoPrint qp ' +
    'INNER JOIN Quotations q ON qp.Quotations_id = q.Quotations_id ' +
    'INNER JOIN QuoModules qm ON q.TourCode = qm.TourCode AND q.StartDate = qm.TourDate ' +
    'WHERE qp.QuoPrint_id = ' + IntToStr(MasterCds['QuoPrint_id']);
  GpSds.Open;

  x_QuoModules_id := -1;
  if (not GpSds.Eof) and (GpSds['QuoModules_id'] <> null) then
    x_QuoModules_id := GpSds['QuoModules_id'];

  GpSds.Free;

  if x_QuoModules_id < 1 then
    abort;

  x_FileName := g_ReportDir + '\Quotation_' + IntToStr(x_QuoModules_id) + '.xls';

  QuoModule_Quotation_Excel(scExcelExport, x_FileName, x_QuoModules_id, 1, 0, 0, 0, 2);

  ShowMessage('Saved As ' + x_FileName);

end;

procedure TQuoPrintForm.SendEmailHotelsDetailedItin1Click(Sender: TObject);
begin
  inherited;
  SendEmail(2);
end;

procedure TQuoPrintForm.SendEmailAllattachments1Click(Sender: TObject);
begin
  inherited;
  SendEmail(3);
end;

procedure TQuoPrintForm.Exclusions2Click(Sender: TObject);
begin
  inherited;

  SaveChanges;

  _QuoExclForm_Level := 4;
  _QuoExclForm_Quotations_id := _QuoPrintForm_Quotations_id;

  If _QuoExclForm_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  if QuoExclForm = nil then
    Application.CreateForm(TQuoExclForm, QuoExclForm);


end;

procedure TQuoPrintForm.MasterCdsCalcFields(DataSet: TDataSet);
var
  x_QuoteAmt, x_AdvAmt: double;
begin
  inherited;
  x_QuoteAmt := 0.0;
  if MasterCds['QuotationAmt'] <> null then
    x_QuoteAmt := MasterCds['QuotationAmt'];

  x_AdvAmt := 0.0;
  if MasterCds['AdvanceAmt'] <> null then
    x_AdvAmt := MasterCds['AdvanceAmt'];

  MasterCds['BalanceAmt'] := x_QuoteAmt - x_AdvAmt;

end;

procedure TQuoPrintForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if MasterCds['NumPax'] <> null then
    _QuoPrintForm_NumPax := MasterCds['NumPax'];

  if MasterCds['Email'] <> null then
    _QuoPrintForm_Email := MasterCds['Email'];
end;

procedure TQuoPrintForm.cxButton2Click(Sender: TObject);
begin
  inherited;

  QuoReceiptsForm_Level := 4;
  QuoReceiptsForm_Quotations_id := _QuoPrintForm_Quotations_id;

  if QuoReceiptsForm = nil then
    Application.CreateForm(TQuoReceiptsForm,QuoReceiptsForm);

end;

end.
