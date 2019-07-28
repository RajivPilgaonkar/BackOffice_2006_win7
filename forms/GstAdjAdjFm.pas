unit GstAdjAdjFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_1DG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxContainer, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit;

type
  TGstAdvAdjForm = class(TCustom_1MG_1DG_Form)
    MonthSds: TSQLDataSet;
    MonthDsp: TDataSetProvider;
    MonthCds: TClientDataSet;
    MonthCdsMonths_id: TIntegerField;
    MonthCdsMonthShortName: TStringField;
    MonthDS: TDataSource;
    Label1: TLabel;
    cxMonthLcmb: TcxLookupComboBox;
    Label2: TLabel;
    cxYearEdit: TcxTextEdit;
    cxButton1: TcxButton;
    CurrencySds: TSQLDataSet;
    CurrencyDsp: TDataSetProvider;
    CurrencyCds: TClientDataSet;
    CurrencyCdscurrencycode: TStringField;
    CurrencyCdscurrencies_id: TIntegerField;
    CurrencyDS: TDataSource;
    PlaceOfSupplySds: TSQLDataSet;
    PlaceOfSupplyDsp: TDataSetProvider;
    PlaceOfSupplyCds: TClientDataSet;
    PlaceOfSupplyDS: TDataSource;
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
    MasterCdsAccounts_id: TIntegerField;
    MasterCdsRate: TFMTBCDField;
    MasterCdsPlaceOfSupply: TStringField;
    MasterCdsI_GST: TFMTBCDField;
    MasterCdsC_GST: TFMTBCDField;
    MasterCdsS_GST: TFMTBCDField;
    MasterCdsSelected: TBooleanField;
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
    cxGrid1DBBandedTableView1Accounts_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PlaceOfSupply: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1I_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1C_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1S_GST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Selected: TcxGridDBBandedColumn;
    DetailCdsAdvancesAdj_id: TIntegerField;
    DetailCdsAdvances_id: TIntegerField;
    DetailCdsAdjDate: TSQLTimeStampField;
    DetailCdsAdjAmt: TFMTBCDField;
    DetailCdsI_GST: TFMTBCDField;
    DetailCdsC_GST: TFMTBCDField;
    DetailCdsS_GST: TFMTBCDField;
    cxGrid2DBBandedTableView1AdvancesAdj_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Advances_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1AdjDate: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1AdjAmt: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1I_GST: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1C_GST: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1S_GST: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    GenerateAdvances1: TMenuItem;
    N1: TMenuItem;
    InsertAccountsid1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxMonthLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxYearEditPropertiesEditValueChanged(Sender: TObject);
    procedure GenerateAdvances1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxYearEditExit(Sender: TObject);
    procedure InsertAccountsid1Click(Sender: TObject);
    procedure DetailCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
    procedure FilterData;
    function IsDetailRecordInvalid: Boolean;
  public
    { Public declarations }
  end;

var
  GstAdvAdjForm: TGstAdvAdjForm;
  GstAdvAdjForm_Level: Integer;

  GstAdvAdjForm_Months_id: Integer;
  GstAdvAdjForm_Year: Integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TGstAdvAdjForm.FormCreate(Sender: TObject);
begin
  Caption := 'Gst Advances & Adjustments';

  ActivateInCustom;

  MasterSds.Params[0].Value := -1;
  MasterSds.Params[1].Value := -1;

  inherited;

  CurrencyCds.Open;
  PlaceOfSupplyCds.Open;
  MonthCds.Open;

  cxYearEdit.Text := IntToStr(GstAdvAdjForm_Year);
  cxMonthLcmb.EditValue := GstAdvAdjForm_Months_id;

end;

procedure TGstAdvAdjForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TGstAdvAdjForm.FormDestroy(Sender: TObject);
begin
  inherited;
  GstAdvAdjForm := nil;
end;

procedure TGstAdvAdjForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'Advances';
  Custom_MasterKeyField := 'Advances_id';
  Custom_AdmLevel := GstAdvAdjForm_Level;

  Custom_FormWidth := 1220;
  Custom_FormHeight := 800;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;


procedure TGstAdvAdjForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TGstAdvAdjForm.MasterCdsBeforePost(DataSet: TDataSet);
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

function TGstAdvAdjForm.IsMasterRecordDuplicate: Boolean;
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

procedure TGstAdvAdjForm.FilterData;
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


procedure TGstAdvAdjForm.cxMonthLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvAdjForm.cxYearEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvAdjForm.GenerateAdvances1Click(Sender: TObject);
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

procedure TGstAdvAdjForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvAdjForm.cxYearEditExit(Sender: TObject);
begin
  inherited;
  FilterData;
end;

procedure TGstAdvAdjForm.InsertAccountsid1Click(Sender: TObject);
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

procedure TGstAdvAdjForm.DetailCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (DetailCds['Advances_id'] = null) then
    raise Exception.Create('Please enter the "Advances_id"');

  if (DetailCds['AdjDate'] = null) then
    raise Exception.Create('Please enter the Adjustment Date');

  if (DetailCds['AdjAmt'] = null) then
    raise Exception.Create('Please enter the Adjustment Amt');

  if IsDetailRecordInvalid then
    raise Exception.Create('Total of Adjustments cannot exceed Advance value');

  // get the next id just before posting.
  // this will minimize chances to duplicate ids in a multiuser situation
  inherited;

  if (DetailCds['AdvancesAdj_id'] = null) then
    raise Exception.Create('Please enter the AdvancesAdj_id');

end;

function TGstAdvAdjForm.IsDetailRecordInvalid: Boolean;
var
  x_amt: double;
  x_Result: boolean;
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  x_QueryString := 'SELECT SUM(AdjAmt) AS AdjAmt FROM AdvancesAdj ' +
    'WHERE Advances_id = ' + IntToStr(DetailCds['Advances_id']) + ' ';

  if DetailCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (AdvancesAdj_id <> ' + IntToStr(DetailCds['AdvancesAdj_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_amt := 0.0;
  if (not GpSds.Eof) and (GpSds['AdjAmt'] <> null) then
    x_amt := GpSds['AdjAmt'];

  if DetailCds['AdjAmt'] <> null then
    x_amt := x_amt + DetailCds['AdjAmt'];

  x_Result := false;
  if x_amt > MasterCds['AdvanceAmt'] then
    x_Result := true;

  GpSds.Free;

  Result := x_Result;

end;


end.
