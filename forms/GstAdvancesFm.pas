unit GstAdvancesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TGstAdvancesForm = class(TCustom_1MG_Form)
    Label1: TLabel;
    cxMonthLcmb: TcxLookupComboBox;
    MonthSds: TSQLDataSet;
    MonthDsp: TDataSetProvider;
    MonthCds: TClientDataSet;
    MonthDS: TDataSource;
    CurrencyCds: TClientDataSet;
    CurrencyDS: TDataSource;
    CurrencyDsp: TDataSetProvider;
    CurrencySds: TSQLDataSet;
    PlaceOfSupplyDS: TDataSource;
    PlaceOfSupplyCds: TClientDataSet;
    PlaceOfSupplyDsp: TDataSetProvider;
    PlaceOfSupplySds: TSQLDataSet;
    MonthCdsMonths_id: TIntegerField;
    MonthCdsMonthShortName: TStringField;
    MasterCdsAdvances_id: TIntegerField;
    MasterCdsMonths_id: TIntegerField;
    MasterCdsYearRef: TIntegerField;
    MasterCdsTransactionDate: TSQLTimeStampField;
    MasterCdsParty: TStringField;
    MasterCdsDetails: TStringField;
    MasterCdsCurrencies_id: TIntegerField;
    MasterCdsForex: TFMTBCDField;
    MasterCdsExchRate: TFMTBCDField;
    MasterCdsAdvAmt: TFMTBCDField;
    MasterCdsLedgers_id: TIntegerField;
    MasterCdsRate: TFMTBCDField;
    MasterCdsPlaceOfSupply: TStringField;
    MasterCdsI_GST: TFMTBCDField;
    MasterCdsC_GST: TFMTBCDField;
    MasterCdsS_GST: TFMTBCDField;
    MasterCdsAccounts_id: TIntegerField;
    cxGrid1DBBandedTableView1Advances_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Months_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1YearRef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TransactionDate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Party: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Details: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Forex: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ExchRate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AdvAmt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Ledgers_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PlaceOfSupply: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1I_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1C_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1S_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Accounts_id: TcxGridDBBandedColumn;
    CurrencyCdscurrencycode: TStringField;
    CurrencyCdscurrencies_id: TIntegerField;
    Label2: TLabel;
    cxYearEdit: TcxTextEdit;
    GenerateAdvances1: TMenuItem;
    cxButton1: TcxButton;
    N1: TMenuItem;
    InsertAccountsid1: TMenuItem;
    MasterCdsSelected: TBooleanField;
    cxGrid1DBBandedTableView1Selected: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxYearEditPropertiesEditValueChanged(Sender: TObject);
    procedure GenerateAdvances1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxYearEditExit(Sender: TObject);
    procedure InsertAccountsid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
  end;

var
  GstAdvancesForm: TGstAdvancesForm;
  GstAdvancesForm_Level: Integer;

  GstAdvancesForm_Months_id: Integer;
  GstAdvancesForm_Year: Integer;

implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TGstAdvancesForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;

  inherited;

  CurrencyCds.Open;
  PlaceOfSupplyCds.Open;
  MonthCds.Open;

  cxYearEdit.Text := IntToStr(GstAdvancesForm_Year);
  cxMonthLcmb.EditValue := GstAdvancesForm_Months_id;

end;

procedure TGstAdvancesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TGstAdvancesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  GstAdvancesForm := nil;
end;

procedure TGstAdvancesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Advances';
  Custom_MasterKeyField := 'Advances_id';
  Custom_AdmLevel := GstAdvancesForm_Level;

  Custom_FormWidth := 1220;
  Custom_FormHeight := 600;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TGstAdvancesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TGstAdvancesForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_tax: double;
begin
  if (MasterCds['Months_id'] = null) then
    raise Exception.Create('Please enter the Month');

  if (MasterCds['YearRef'] = null) then
    raise Exception.Create('Please enter the Year');

  if (MasterCds['Accounts_id'] = null) then
    raise Exception.Create('Please enter the Accounts_id');

  if (MasterCds['Ledgers_id'] = null) then
    raise Exception.Create('Please enter the Ledgers_id');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  // export
  if (MasterCds['ExchRate'] <> 1.0) then
    begin
      MasterCds['PlaceOfSupply'] := '97-Other Territory';
      x_tax := MasterCds['AdvAmt'] - MasterCds['AdvAmt']/(1.0 + MasterCds['Rate']/100.0);
      MasterCds['I_GST'] := x_tax;
      MasterCds['C_GST'] := 0.0;
      MasterCds['S_GST'] := 0.0;
    end
  else if (MasterCds['PlaceOfSupply'] <> '30-Goa') then
    begin
      x_tax := MasterCds['AdvAmt'] - MasterCds['AdvAmt']/(1.0 + MasterCds['Rate']/100.0);
      MasterCds['I_GST'] := x_tax;
      MasterCds['C_GST'] := 0.0;
      MasterCds['S_GST'] := 0.0;
    end
  else
    begin
      x_tax := MasterCds['AdvAmt'] - MasterCds['AdvAmt']/(1.0 + MasterCds['Rate']/100.0);
      MasterCds['I_GST'] := 0.0;
      MasterCds['C_GST'] := x_tax/2.0;
      MasterCds['S_GST'] := x_tax/2.0;
    end;

  inherited;

  if MasterCds['Advances_id'] = null then
    raise Exception.Create('Advances_id is not assigned');

end;

function TGstAdvancesForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_count FROM Advances ' +
    'WHERE Ledgers_id = ' + IntToStr(MasterCds['Ledgers_id']) + ' ';

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (Advances_id <> ' + IntToStr(MasterCds['Advances_id']) + ') ';

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

procedure TGstAdvancesForm.FilterData;
var
  x_Months_id, x_YearRef: integer;
begin
  x_Months_id := -1;

  if cxMonthLcmb.EditValue <> null then
    x_Months_id := cxMonthLcmb.EditValue;

  try
    x_YearRef := StrToInt(cxYearEdit.Text);
  except
    raise exception.create('Please enter the year');
    x_YearRef := -1;
  end;

  MasterCds.Active := False;
  MasterSds.Active := False;

  MasterSds.Params[0].Value := x_Months_id;
  MasterSds.Params[1].Value := x_YearRef;

  MasterSds.Active := True;
  MasterCds.Active := True;
end;

procedure TGstAdvancesForm.cxCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvancesForm.cxYearEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvancesForm.GenerateAdvances1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_GstGenerateAdvances ' + IntToStr(MasterSds.Params[0].Value) + ',' + IntToStr(MasterSds.Params[1].Value) + ', null';
  GpSds.ExecSQL;

  GpSds.Free;

  FilterData;

end;

procedure TGstAdvancesForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvancesForm.cxYearEditExit(Sender: TObject);
begin
  inherited;
  FilterData;

end;

procedure TGstAdvancesForm.InsertAccountsid1Click(Sender: TObject);
var
  x_idStr: string;
  GpSds: TSQLDataSet;
begin
  inherited;
  x_idStr := inputbox('Accounts_id import', 'Please enter the accounts_id to import', '');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_GstGenerateAdvances ' + IntToStr(MasterSds.Params[0].Value) + ',' + IntToStr(MasterSds.Params[1].Value) + ', ' + x_idStr;
  GpSds.ExecSQL;

  GpSds.Free;

  FilterData;

end;

end.
