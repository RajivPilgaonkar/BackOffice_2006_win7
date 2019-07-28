unit Invoices2Fm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxNavigator, cxDBNavigator, cxControls,
  cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, SqlExpr, Provider, DBClient, cxMemo,
  Buttons, Custom1M1DFm, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TInvoices2Form = class(TForm)
    BottomPnl: TPanel;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    TourCodeLbl: TLabel;
    TourCodeEdit: TcxDBTextEdit;
    Label8: TLabel;
    Label2: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    TourDateLbl: TLabel;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label7: TLabel;
    Label11: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label4: TLabel;
    Label6: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBNavigator1: TcxDBNavigator;
    cxGroupBox2: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    InvoiceTab: TcxTabSheet;
    PaymentsTab: TcxTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DisplayBalanceChk: TcxCheckBox;
    InvoicedEdit: TcxDBTextEdit;
    BalanceEdit: TcxDBTextEdit;
    PaidEdit: TcxDBTextEdit;
    InvoiceGrid: TcxGrid;
    InvoiceGridDBTableView1: TcxGridDBTableView;
    InvoiceGridLevel1: TcxGridLevel;
    PaymentsGridcxGridDBTableView1: TcxGridDBTableView;
    PaymentsGridcxGridLevel1: TcxGridLevel;
    PaymentsGrid: TcxGrid;
    InvoicesDS: TDataSource;
    InvoicesCds: TClientDataSet;
    InvoicesDsp: TDataSetProvider;
    InvoicesSds: TSQLDataSet;
    InvoiceDetDS: TDataSource;
    InvoiceDetCds: TClientDataSet;
    InvoiceDetDSP: TDataSetProvider;
    InvoiceDetSds: TSQLDataSet;
    PaymentDS: TDataSource;
    PaymentCds: TClientDataSet;
    PaymentDsp: TDataSetProvider;
    PaymentSds: TSQLDataSet;
    InvoicesCdsinvoices_id: TIntegerField;
    InvoicesCdsinvoiceno: TIntegerField;
    InvoicesCdsyearref: TIntegerField;
    InvoicesCdsaddressbook_id: TIntegerField;
    InvoicesCdstourcode: TStringField;
    InvoicesCdstourdate: TSQLTimeStampField;
    InvoicesCdsinvoicedate: TSQLTimeStampField;
    InvoicesCdsnote: TMemoField;
    InvoicesCdscredit: TIntegerField;
    InvoicesCdsdivisions_id: TIntegerField;
    InvoicesCdsfit: TBooleanField;
    InvoicesCdscompanies_id: TIntegerField;
    InvoicesCdstaxes_id: TIntegerField;
    InvoicesCdstaxamount: TBCDField;
    InvoicesCdstaxpercentage: TBCDField;
    InvoicesCdsinvoicetypes_id: TIntegerField;
    InvoicesCdscurrencies_id: TIntegerField;
    InvoicesCdsoffices_id: TIntegerField;
    InvoicesCdsexchangerate: TBCDField;
    InvoicesCdsyears_id: TIntegerField;
    InvoicesCdsmonths_id: TIntegerField;
    InvoicesCdstl_type: TIntegerField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    InvoiceTypeDS: TDataSource;
    InvoiceTypeCds: TClientDataSet;
    InvoiceTypeDSP: TDataSetProvider;
    InvoiceTypeSds: TSQLDataSet;
    InvoiceTypeCdsInvoiceTypes_id: TIntegerField;
    InvoiceTypeCdsType: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    CustDS: TDataSource;
    CustCds: TClientDataSet;
    CustDSP: TDataSetProvider;
    CustSds: TSQLDataSet;
    CustCdsAddressBook_id: TIntegerField;
    CustCdsOrganisation: TStringField;
    InvoicesCdsCustomerName: TStringField;
    TourDateEdit: TcxDBDateEdit;
    InvoiceDetCdsproducts_id: TIntegerField;
    InvoiceDetCdsdetails: TStringField;
    InvoiceDetCdsunitprice: TBCDField;
    InvoiceDetCdsquantity: TIntegerField;
    InvoiceDetCdsamount: TBCDField;
    InvoiceDetCdstourdate: TSQLTimeStampField;
    InvoiceDetCdsinvoices_id: TIntegerField;
    InvoiceDetCdsroomtypes_id: TIntegerField;
    InvoiceDetCdsitemno: TIntegerField;
    InvoiceDetCdsbookingref: TStringField;
    InvoiceDetCdstourcode: TStringField;
    InvoiceDetCdsroomsizes_id: TIntegerField;
    InvoiceDetCdsnights: TIntegerField;
    InvoiceDetCdsinvoicedetails_id: TIntegerField;
    InvoiceDetCdslocalpayment: TBCDField;
    InvoiceDetCdsservicetaxperc: TBCDField;
    InvoiceDetCdsbookingsaccommodation_id: TIntegerField;
    InvoiceGridDBTableView1details: TcxGridDBColumn;
    InvoiceGridDBTableView1unitprice: TcxGridDBColumn;
    InvoiceGridDBTableView1quantity: TcxGridDBColumn;
    InvoiceGridDBTableView1amount: TcxGridDBColumn;
    InvoiceGridDBTableView1tourdate: TcxGridDBColumn;
    InvoiceGridDBTableView1itemno: TcxGridDBColumn;
    InvoiceGridDBTableView1bookingref: TcxGridDBColumn;
    InvoiceGridDBTableView1tourcode: TcxGridDBColumn;
    InvoiceGridDBTableView1roomsizes_id: TcxGridDBColumn;
    InvoiceGridDBTableView1nights: TcxGridDBColumn;
    InvoiceGridDBTableView1localpayment: TcxGridDBColumn;
    InvoiceGridDBTableView1servicetaxperc: TcxGridDBColumn;
    Label15: TLabel;
    cxDBMemo1: TcxDBMemo;
    BitBtn1: TBitBtn;
    BalanceDS: TDataSource;
    BalanceCds: TClientDataSet;
    BalanceDsp: TDataSetProvider;
    BalanceSds: TSQLDataSet;
    RoomSizeDS: TDataSource;
    RoomSizeCds: TClientDataSet;
    RoomSizeDsp: TDataSetProvider;
    RoomSizeSds: TSQLDataSet;
    RoomSizeCdsroomsizes_id: TIntegerField;
    RoomSizeCdsroomsize: TStringField;
    RoomSizeCdspax: TIntegerField;
    PaymentCdstransactiondate: TSQLTimeStampField;
    PaymentCdscashvoucherno: TIntegerField;
    PaymentCdsDb: TFMTBCDField;
    PaymentCdsDetails: TStringField;
    PaymentsGridcxGridDBTableView1transactiondate: TcxGridDBColumn;
    PaymentsGridcxGridDBTableView1cashvoucherno: TcxGridDBColumn;
    PaymentsGridcxGridDBTableView1Db: TcxGridDBColumn;
    PaymentsGridcxGridDBTableView1Details: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    InvoiceTotalDS: TDataSource;
    InvoiceTotalCDS: TClientDataSet;
    InvoiceTotalDSP: TDataSetProvider;
    InvoiceTotalSDS: TSQLDataSet;
    PayDS: TDataSource;
    PayCDS: TClientDataSet;
    PayDSP: TDataSetProvider;
    PaySDS: TSQLDataSet;
    InvoiceTotalCDSInvoiceTotal: TFMTBCDField;
    BalanceCdsinvoices_id: TIntegerField;
    BalanceCdscurrencies_id: TIntegerField;
    BalanceCdsinvoiced: TFMTBCDField;
    BalanceCdsForexPaid: TFMTBCDField;
    BalanceCdsPaid: TFMTBCDField;
    BalanceCdsBalance: TStringField;
    InvoiceTotalCDSInvoices_id: TIntegerField;
    PayCDStransactiondate: TSQLTimeStampField;
    PayCDScashvoucherno: TIntegerField;
    PayCDSDb: TFMTBCDField;
    PayCDSDetails: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    SearchLbl: TLabel;
    InvoiceNoEdit: TEdit;
    YearRefEdit: TEdit;
    Label3: TLabel;

    procedure ShowAccommodation;
    procedure ShowTickets;
    procedure DisplayBalance(x_Display: Boolean);
    function GetInvoiceNo:Variant;
    function GetItemNo:Variant;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure DisplayBalanceChkClick(Sender: TObject);
    
    procedure cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);

    procedure BalanceCdsCalcFields(DataSet: TDataSet);
    procedure InvoicesCdsAfterInsert(DataSet: TDataSet);
    procedure InvoicesCdsAfterScroll(DataSet: TDataSet);
    procedure InvoicesCdsAfterPost(DataSet: TDataSet);

    procedure InvoiceDetCdsBeforePost(DataSet: TDataSet);
    procedure InvoiceDetCdsAfterPost(DataSet: TDataSet);
    procedure InvoiceDetCdsAfterDelete(DataSet: TDataSet);
    procedure InvoiceDetCdsAfterInsert(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure Search;
    procedure YearRefEditKeyPress(Sender: TObject; var Key: Char);
    procedure InvoicesCdsBeforePost(DataSet: TDataSet);

// ~~~~

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Invoices2Form: TInvoices2Form;
  _InvYearRef: Variant;
  _InvDivisions_id: Integer;
  _Invoice_TblState, _InvoiceDet_TblState: TDataSetState;
  _InvoiceForm_Companies_id: Integer;
implementation

uses BackOfficeDM, BoQryFm, MainFm, Mask, GeneralUt, AccountsFm;

{$R *.dfm}

procedure TInvoices2Form.Search;
begin
  if (YearRefEdit.Text <> '') and (Length(YearRefEdit.Text) > 0) then
    begin
      InvoicesCds.DisableControls;
      if not InvoicesCds.Locate('InvoiceNo;YearRef',
        VarArrayOf([StrToInt(InvoiceNoEdit.Text),StrToInt(YearRefEdit.Text)]),[]) then
        ShowMessage('Invoice not found');
      InvoicesCds.EnableControls;
    end
  else
    begin
      InvoicesCds.DisableControls;
      if not InvoicesCds.Locate('InvoiceNo',
        VarArrayOf([StrToInt(InvoiceNoEdit.Text)]),[]) then
        ShowMessage('Invoice not found');
      InvoicesCds.EnableControls;
    end
end;

procedure TInvoices2Form.DisplayBalance(x_Display: Boolean);
begin
  InvoicedEdit.Visible := x_Display;
  PaidEdit.Visible := x_Display;
  BalanceEdit.Visible := x_Display;
end;

function TInvoices2Form.GetInvoiceNo:Variant;
var
  tQry: TSQLQuery;
begin
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add ('SELECT Max(InvoiceNo) As MaxInvNo FROM Invoices' +
    ' WHERE  Divisions_id = ' + IntToStr(_InvDivisions_id) +
    ' AND YearRef = ' + IntToStr(_InvYearRef) );
  tQry.Open;

  if tQry['MaxInvNo'] = NULL then
    Result := 1
  else
    Result := tQry['MaxInvNo'] + 1;

  tQry.Free;
end;

function TInvoices2Form.GetItemNo:Variant;
var
  tQry: TSQLQuery;
begin

  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  if InvoiceDetCds.State = dsInsert then
    begin
      tQry.SQL.Clear;
      tQry.SQL.Add('SELECT COALESCE(Max(ItemNo),0) As MaxItemNo FROM ' +
        'InvoiceDetails WHERE Invoices_id = ' + IntToStr(InvoicesCds['Invoices_id']) ) ;
      tQry.Open;
      tQry.First;
      if tQry.EOF then
        InvoiceDetCds['ItemNo'] := 1
      else
        InvoiceDetCds['ItemNo'] := tQry['MaxItemNo'] + 1;
    end;
end;

procedure TInvoices2Form.ShowAccommodation;
var
  tQry: TSQLQuery;
  Str: string;
begin
  if (InvoiceDetCds['BookingsAccommodation_id'] = null) or
    (InvoiceDetCds['BookingsAccommodation_id'] = 0) then
    begin
      ShowMessage ('No details available');
      Exit;
    end;
  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  tQry.Close;
  tQry.SQL.Clear;
  tQry.SQL.Add('SELECT ba.DateIn, ba.DateOut, a.organisation, rs.roomsize, ' +
    'rt.roomtype, mp.mealplan ' +
    'from bookingsAccommodation ba left join addressbook a on ba.addressbook_id = a.addressbook_id ' +
    'left join roomtypes rt on ba.roomtypes_id = rt.roomtypes_id ' +
    'left join roomsizes rs on ba.roomsizes_id = rs.roomsizes_id ' +
    'left join mealplans mp on ba.mealplans_id = mp.mealplans_id ' +
    'where ba.bookingsaccommodation_id = ' + IntToStr(InvoiceDetCds['BookingsAccommodation_id']));
  tQry.Open;

  Str := '';
  if tQry['DateIn'] <> null then
    Str := Str + 'Date In : ' + FormatDateTime('dd/mm/yyyy',tQry['DateIn']) + chr(13);
  if tQry['DateOut'] <> null then
    Str := Str + 'Date Out : ' + FormatDateTime('dd/mm/yyyy',tQry['DateOut']) + chr(13);
  if tQry['organisation'] <> null then
    Str := Str + 'Hotel : ' + tQry['organisation'] + chr(13);
  if tQry['roomsize'] <> null then
    Str := Str + 'Room Size : ' + tQry['roomsize'] + chr(13);
  if tQry['roomtype'] <> null then
    Str := Str + 'Room Type : ' + tQry['roomtype'] + chr(13);
  if tQry['mealplan'] <> null then
    Str := Str + 'Meal Plan : ' + tQry['mealplan'] + chr(13);

  tQry.Free;

  ShowMessage(Str);
end;

procedure TInvoices2Form.ShowTickets;
var
  tQry: TSQLQuery;
  Str: String;
begin
  if (InvoiceDetCds['BookingsAccommodation_id'] = null) or
    (InvoiceDetCds['BookingsAccommodation_id'] = 0) then
    begin
      ShowMessage ('No details available');
      exit;
    end;

  tQry := TSQLQuery.Create(nil);
  tQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  tQry.close;
  tQry.SQL.Clear;
  tQry.SQL.Add('SELECT traveldate, a.organisation, c1.city as fromcity, ' +
    'c2.city as tocity, t.details ' +
    'from bookingstickets btk left join addressbook a on btk.addressbook_id = a.addressbook_id ' +
    'left join cities c1 on btk.from_cities_id = c1.cities_id ' +
    'left join cities c2 on btk.to_cities_id = c2.cities_id ' +
    'left join tickets t on btk.tickets_id = t.tickets_id ' +
    'where btk.bookingstickets_id = ' + IntToStr(InvoiceDetCds['BookingsAccommodation_id']));
  tQry.Open;

  Str := '';
  if tQry['TravelDate'] <> null then
    Str := Str + 'TravelDate : ' + FormatDateTime('dd/mm/yyyy',tQry['TravelDate']) + chr(13);
  if tQry['organisation'] <> null then
    Str := Str + 'Agent : ' + tQry['organisation'] + chr(13);
  if tQry['fromcity'] <> null then
    Str := Str + 'From City : ' + tQry['fromcity'] + chr(13);
  if tQry['tocity'] <> null then
    Str := Str + 'To City : ' + tQry['tocity'] + chr(13);
  if tQry['Details'] <> null then
    Str := Str + 'Mode : ' + tQry['Details'] + chr(13);

  tQry.Free;

  ShowMessage(Str);

end;

procedure TInvoices2Form.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TInvoices2Form.FormCreate(Sender: TObject);
begin
{
  if BoQryForm.DivisionLookUpCmb.EditValue = 1 then
    begin
      TourCodeLbl.Visible := False;
      TourCodeEdit.Visible := False;
      TourDateLbl.Visible := False;
      TourDateEdit.Visible := False;
      InvoiceGridDBTableView1bookingref.Visible := False;
      InvoiceGridDBTableView1roomsizes_id.Visible := False;
      InvoiceGridDBTableView1nights.Visible := False;
      InvoiceGridDBTableView1tourcode.Visible := False;
    end;

  CustCds.Active := False;
  CustCds.Active := True;
  InvoiceTypeCds.Active := False;
  InvoiceTypeCds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active := True;
  RoomSizeCds.Active := False;
  RoomSizeCds.Active := True;
  InvoicesCds.Active := False;
  InvoicesCds.Filter := 'Companies_id = ' + IntToStr(g_companies_id) + ' AND YearRef = ' + BoQryForm.YearEdit.Text;
  InvoicesCds.Active := True;
  InvoiceDetCds.Active := False;
  InvoiceDetCds.Active := True;

  InvoiceTotalCDS.Active := False;
  InvoiceTotalCDS.Active := True;
  PaymentCds.Active := False;
  PaymentCds.Active := True;
  BalanceCds.Active := False;
  BalanceCds.Active := True;
}  
end;

procedure TInvoices2Form.FormDestroy(Sender: TObject);
begin
  Invoices2Form := nil;
end;

procedure TInvoices2Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TInvoices2Form.BalanceCdsCalcFields(DataSet: TDataSet);
var
  Bal: Variant;
begin
  if BalanceCds['Currencies_id'] = null then
    Bal := '0.00'  //BalanceCds['Balance'] := 0
  else if BalanceCds['Currencies_id'] <> 13 then
//     BalanceCds['Balance'] := BalanceCds['Invoiced'] - BalanceCds['ForexPaid']
    Bal := FormatFloat('#,##0.00',StrToFloat(BalanceCds['Invoiced'] - BalanceCds['ForexPaid']))
  else
//     BalanceCds['Balance'] := BalanceCds['Invoiced'] - BalanceCds['Paid'];
    Bal := FormatFloat('#,##0.00',StrToFloat(BalanceCds['Invoiced'] - BalanceCds['Paid']));

  BalanceCds['Balance'] := Bal;
end;

procedure TInvoices2Form.InvoicesCdsAfterScroll(DataSet: TDataSet);
begin
  PaymentCds.Active := False;
  PaymentSds.Active := False;
{  PaymentSds.Params[0].Value := InvoicesCdsinvoiceno.Value;
  PaymentSds.Params[1].Value := InvoicesCdsyearref.Value;
  PaymentSds.Params[2].Value := InvoicesCdsdivisions_id.Value;
  PaymentSds.Params[3].Value := InvoicesCdscurrencies_id.Value;
}
  InvoiceTotalCDS.Active := False;
  InvoiceTotalCDS.Active := True;
  PaymentSds.Active := True;
  PaymentCds.Active := True;
  BalanceCds.Active := False;
  BalanceCds.Active := True;
end;

procedure TInvoices2Form.InvoicesCdsAfterInsert(DataSet: TDataSet);
begin
  InvoicesCds['Companies_id'] := g_companies_id;
  InvoicesCds['Divisions_id'] := _InvDivisions_id;
  InvoicesCds['InvoiceDate'] := Date();
  InvoicesCds['FIT'] := 0;
  InvoicesCds['InvoiceTypes_id'] := 1;
  if InvoicesCds['Divisions_id'] = 0 then
    InvoicesCds['Currencies_id'] := 25
  else
  InvoicesCds['Currencies_id'] := GetDefaultCurrency;
  InvoicesCds['Addressbook_id'] := 0;
  InvoicesCds['Taxes_id'] := 4;

  InvoicesCds['YearRef'] := CalcCentury(InvoicesCds['InvoiceDate'],4);

end;

procedure TInvoices2Form.cxDBTextEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TInvoices2Form.InvoicesCdsAfterPost(DataSet: TDataSet);
begin
  InvoicesCds.ApplyUpdates(0);
  if _Invoice_TblState = dsInsert then
    begin
      InvoicesCds.Refresh;
      InvoicesCds.Last;
    end;  
end;

procedure TInvoices2Form.InvoiceDetCdsBeforePost(DataSet: TDataSet);
begin
  GetInvoiceNo;
  _InvoiceDet_TblState := InvoiceDetCds.State;
  if (_InvDivisions_id = 0) then
    begin
      if InvoiceDetCds['Details'] = null then
        raise Exception.Create ('Please enter the details');
      if InvoiceDetCds['Quantity'] = null then
        raise Exception.Create ('Please enter the quantity');
    end;
  InvoiceGridDBTableView1amount.Editing := True;
  if InvoiceDetCds['Nights'] <> null then
    InvoiceDetCds['Amount'] := InvoiceDetCds['UnitPrice'] * InvoiceDetCds['Nights'] * InvoiceDetCds['Quantity']
  else
     InvoiceDetCds['Amount'] := InvoiceDetCds['UnitPrice'] * InvoiceDetCds['Quantity'];

  if InvoiceDetCds.State = dsInsert then
    begin
      _InvoiceDet_TblState := InvoiceDetCds.State;

      GetItemNo;
      if InvoiceDetCds.State = dsInsert then
        InvoiceDetCds['InvoiceDetails_id'] := GetNextId('InvoiceDetails','InvoiceDetails_id');
    end;

end;

procedure TInvoices2Form.InvoiceDetCdsAfterPost(DataSet: TDataSet);
var
  tSds: TSQLDataSet;
  Opt: Integer;
begin
  InvoiceDetCds.ApplyUpdates(0);
  if _InvoiceDet_TblState = dsInsert then
    begin
      InvoicesCds.Refresh;
      InvoiceDetCds.Last;
    end;

  if InvoicesCds['Divisions_id'] = '0' then
    Opt := 0
  else if InvoicesCds['Divisions_id'] = '1' then
    Opt := 1;

  tSds := TSQLDataSet.Create(nil);
  tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  tSds.Close;
  tSds.CommandText := '';
  tSds.CommandText := 'EXEC p_TaxUpdate ' + IntToStr(InvoicesCds['Invoices_id']) +
      ',' + IntToStr(InvoicesCds['Divisions_id']) + ',' + IntToStr(Opt);
  tSds.ExecSQL;
  if InvoicesCds.State = dsBrowse then
    begin
      InvoicesCds.Edit;
      InvoicesCds.Post;
      InvoicesCds.Refresh;
    end;
  InvoiceGridDBTableView1amount.Editing := False;
  tSds.Free;
end;

procedure TInvoices2Form.DisplayBalanceChkClick(Sender: TObject);
begin
  if DisplayBalanceChk.Checked then
    DisplayBalance(True)
  else
    DisplayBalance(False);
end;

procedure TInvoices2Form.InvoiceDetCdsAfterDelete(DataSet: TDataSet);
var
  tSds: TSQLDataSet;
  Opt: Integer;
begin
  Opt := 1;

  tSds := TSQLDataSet.Create(nil);
  tSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  tSds.Close;
  tSds.CommandText := '';
  tSds.CommandText := 'EXEC p_TaxUpdate ' + IntToStr(InvoicesCds['Invoices_id']) +
      ',' + IntToStr(InvoicesCds['Divisions_id']) + ',' + IntToStr(Opt);
  tSds.ExecSQL;

  InvoiceDetCds.ApplyUpdates(0);
  InvoiceDetCds.Refresh;
  InvoicesCds.Post;
  InvoicesCds.Refresh;         
end;

procedure TInvoices2Form.InvoiceDetCdsAfterInsert(DataSet: TDataSet);
begin
  InvoiceDetCds['LocalPayment'] := 0.0;
  InvoiceDetCds['ServiceTaxPerc'] := 0.0;
end;

procedure TInvoices2Form.BitBtn2Click(Sender: TObject);
begin
  if AccountsForm <> Nil then
    begin
      AccountsForm.Show;
      AccountsForm.WindowState := wsNormal;
    end;

end;

procedure TInvoices2Form.YearRefEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Search;
end;

procedure TInvoices2Form.InvoicesCdsBeforePost(DataSet: TDataSet);
begin
  _Invoice_TblState := InvoicesCds.State;
  InvoicesCds['InvoiceNo'] := GetInvoiceNo;
  if InvoicesCds.State = dsInsert then
    begin
      _Invoice_TblState := InvoicesCds.State;

      if InvoicesCds.State = dsInsert then
        InvoicesCds['Invoices_id'] := GetNextId('Invoices','Invoices_id');
    end;

end;

end.
