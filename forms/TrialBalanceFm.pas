unit TrialBalanceFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLookAndFeelPainters, FMTBcd, DBClient, Provider, SqlExpr, StdCtrls,
  cxButtons, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, cxCheckBox, cxContainer, cxTextEdit, Buttons, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxLabel;

type
  TTrialBalanceForm = class(TCustomMasterCxGridForm)
    Label1: TLabel;
    AccEdit: TcxTextEdit;
    DescChk: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ToDateEdit: TcxDateEdit;
    FromDateEdit: TcxDateEdit;
    MasterCdsAccountHeadsNo: TIntegerField;
    MasterCdsDescription: TStringField;
    MasterCdsFolio: TStringField;
    MasterCdsDb: TFMTBCDField;
    MasterCdsCr: TFMTBCDField;
    MasterCdsForexDb: TFMTBCDField;
    MasterCdsForexCr: TFMTBCDField;
    MasterCdsname: TStringField;
    MasterCdsCompanies_id: TIntegerField;
    MasterCdsAccountHeads_id: TIntegerField;
    CustomMasterCxGridDBTableView1AccountHeadsNo: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Description: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Folio: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Db: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cr: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ForexDb: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ForexCr: TcxGridDBColumn;
    OkBB: TBitBtn;
    CancelBB: TBitBtn;
    procedure DisplayTB();
    procedure FromDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure ToDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure AccEditPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AccEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure AccEditExit(Sender: TObject);
    procedure DescChkPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrialBalanceForm: TTrialBalanceForm;
  _TrialBalanceForm_CompanyID: integer;

implementation

uses GeneralUt, BackOfficeDM;

{$R *.dfm}

procedure TTrialBalanceForm.DisplayTB();
begin
  MasterSDS.Close;
  MasterSDS.CommandText := '';
  if DescChk.Checked = True then
    MasterSDS.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, F.Folio, ' +
      'CASE WHEN SUM(L.Debit-L.Credit)>0 THEN SUM(L.Debit-L.Credit) ELSE 0 END AS Db, ' +
      'CASE WHEN SUM(L.Debit-L.Credit)<0 THEN SUM(L.Credit-L.Debit) ELSE 0 END AS Cr, ' +
      'CASE WHEN SUM(L.ForexDebit-L.ForexCredit)>0 THEN SUM(L.ForexDebit-L.ForexCredit) ELSE 0 END AS ForexDb, ' +
      'CASE WHEN SUM(L.ForexDebit-L.ForexCredit)<0 THEN SUM(L.ForexCredit-L.ForexDebit) ELSE 0 END AS ForexCr, ' +
      'C.name,A.Companies_id,AH.AccountHeads_id ' +
      'FROM (((Accounts A LEFT JOIN ' +
      'Ledgers L ON A.Accounts_id = L.Accounts_id) ' +
      'LEFT JOIN AccountHeads AH ON L.AccountHeads_id = AH.AccountHeads_id) ' +
      'LEFT JOIN Companies C ON A.Companies_id = C.Companies_id) ' +
      'LEFT JOIN Folios F ON AH.Folios_id = F.Folios_id ' +
      'WHERE LOWER(AH.Description) LIKE ''' + '%' +
      Lowercase(Trim(AccEdit.Text)) + '%' + ''' AND ' +
      'A.TransactionDate >= ''' + FormatDateTime('mm/dd/yyyy',FromDateEdit.Date) + ''' AND ' +
      'A.TransactionDate <= ''' + FormatDateTime('mm/dd/yyyy',ToDateEdit.Date) + ''' AND ' +
      'A.Companies_id = ' + IntToStr(_TrialBalanceForm_CompanyID) +
      ' GROUP BY A.Companies_id, C.name, AH.AccountHeadsNo, AH.Description, ' +
      'F.Folio,AH.AccountHeads_id'
  else
    MasterSDS.CommandText := 'SELECT AH.AccountHeadsNo, AH.Description, F.Folio, ' +
      'CASE WHEN SUM(L.Debit-L.Credit)>0 THEN SUM(L.Debit-L.Credit) ELSE 0 END AS Db, ' +
      'CASE WHEN SUM(L.Debit-L.Credit)<0 THEN SUM(L.Credit-L.Debit) ELSE 0 END AS Cr, ' +
      'CASE WHEN SUM(L.ForexDebit-L.ForexCredit)>0 THEN SUM(L.ForexDebit-L.ForexCredit) ELSE 0 END AS ForexDb, ' +
      'CASE WHEN SUM(L.ForexDebit-L.ForexCredit)<0 THEN SUM(L.ForexCredit-L.ForexDebit) ELSE 0 END AS ForexCr, ' +
      'C.name,A.Companies_id,AH.AccountHeads_id ' +
      'FROM (((Accounts A LEFT JOIN ' +
      'Ledgers L ON A.Accounts_id = L.Accounts_id) ' +
      'LEFT JOIN AccountHeads AH ON L.AccountHeads_id = AH.AccountHeads_id) ' +
      'LEFT JOIN Companies C ON A.Companies_id = C.Companies_id) ' +
      'LEFT JOIN Folios F ON AH.Folios_id = F.Folios_id ' +
      'WHERE LOWER(F.Folio) LIKE ''' + '%' +
      Lowercase(Trim(AccEdit.Text)) + '%' + ''' AND ' +
      'A.TransactionDate >= ''' + FormatDateTime('mm/dd/yyyy',FromDateEdit.Date) + ''' AND ' +
      'A.TransactionDate <= ''' + FormatDateTime('mm/dd/yyyy',ToDateEdit.Date) + ''' AND ' +
      'A.Companies_id = ' + IntToStr(_TrialBalanceForm_CompanyID) +
      ' GROUP BY A.Companies_id, C.name, AH.AccountHeadsNo, AH.Description, ' +
      'F.Folio,AH.AccountHeads_id' ;

  MasterSDS.Open;
  MasterCds.Open;
  MasterCds.Refresh;

end;

procedure TTrialBalanceForm.FromDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
    DisplayTB;
end;

procedure TTrialBalanceForm.ToDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
    DisplayTB;
end;

procedure TTrialBalanceForm.AccEditPropertiesEditValueChanged(
  Sender: TObject);
begin
//    DisplayTB;
//    CustomMasterCxGrid.SetFocus;
end;

procedure TTrialBalanceForm.FormShow(Sender: TObject);
begin
{  MasterCds.Active := True;
  AccEdit.SetFocus;
  FromDateEdit.Date :=  StrToDate('01/01/2000');
  ToDateEdit.Date := Date();   }
//'01/04/' + Trim(IntToStr(StrToInt(CalcCentury(Date(),4))-1));
end;

procedure TTrialBalanceForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
end;

procedure TTrialBalanceForm.AccEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
       DisplayTB;
//       CustomMasterCxGrid.SetFocus;
    end;

end;

procedure TTrialBalanceForm.FormCreate(Sender: TObject);
begin
  inherited;
  MasterCds.Active := True;
  FromDateEdit.Date :=  StrToDate('01/01/2000');
  ToDateEdit.Date := Date();
end;

procedure TTrialBalanceForm.CloseBtnClick(Sender: TObject);
begin
//  inherited;

end;

procedure TTrialBalanceForm.AccEditExit(Sender: TObject);
begin
   DisplayTB;
end;

procedure TTrialBalanceForm.DescChkPropertiesChange(Sender: TObject);
begin
//  inherited;
  DisplayTB;
end;

end.
