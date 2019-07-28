unit VouSearchFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, FMTBcd, Buttons, Menus, ImgList, DB,
  SqlExpr, Provider, DBClient, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids,
  DBActns, ActnList;
type
  TVouSearchForm = class(TForm)
    GroupBox1: TGroupBox;
    OrgLab: TLabel;
    Label1: TLabel;
    VouNoRB: TRadioButton;
    PaxNameRB: TRadioButton;
    CommDateRB: TRadioButton;
    VouNoEF: TEdit;
    VouYrRefEF: TEdit;
    CommDateEF: TMaskEdit;
    PaxNameEF: TEdit;
    PaxNameGrid: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    OkBB: TBitBtn;
    VouSearchQry: TSQLQuery;
    VouSearchDS: TDataSource;
    VouSearchCDS: TClientDataSet;
    VouSearchDSP: TDataSetProvider;
    procedure FormCreate(Sender: TObject);
    procedure PaxNameEFKeyPress(Sender: TObject; var Key: Char);
    procedure CommDateEFKeyPress(Sender: TObject; var Key: Char);
    procedure OkBBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouSearchForm: TVouSearchForm;
  _vouchers_id: Integer;
implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TVouSearchForm.FormCreate(Sender: TObject);
begin
   VouYrRefEF.Text := CalcCentury(Date(),4);
   _vouchers_id:=0;
end;

procedure TVouSearchForm.PaxNameEFKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (Trim(PaxNameEF.Text)>'') and (PaxnameRB.Checked = True) then
    begin
      VouSearchQry.Close;
      VouSearchQry.SQL.Clear;
      VouSearchQry.SQL.Add('SELECT TourLeader as [Tour Leader], MasterTourCode as [Tour Code], '+
      ' mastertourdate as [Tour Date], Description, VoucherNo, Yearref, vouchers_id from vouchers '+
      ' WHERE TourLeader LIKE ' + '''%' + Trim(PaxNameEF.Text) + '%''');
      VouSearchQry.Open;
      VouSearchQry.Active := True;
      VouSearchCDS.Active := True;

      if VouSearchCDS.RecordCount > 0 then
        begin
          PaxNameGrid.Columns[0].Width := 100;
          PaxNameGrid.Columns[1].Width := 75;
          PaxNameGrid.Columns[2].Width := 75;
          PaxNameGrid.Columns[3].Width := 150;
          PaxNameGrid.Columns[4].Width := 50;
          PaxNameGrid.Columns[5].Width := 50;
          PaxNameGrid.Columns[5].Width := 50;
        end;
    end;
end;

procedure TVouSearchForm.CommDateEFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (CommDateRB.Checked) and (Length(Trim(CommDateEF.Text))> 2) then
    begin
      try
        StrToDate(CommDateEF.Text);
      except
        raise Exception.Create ('Please enter a valid commencement date');
      end;

      VouSearchQry.Close;
      VouSearchQry.SQL.Clear;
      VouSearchQry.SQL.Add('SELECT V.TourLeader, V.TourRef, ' +
'(CASE WHEN (len(rtrim(ltrim(a.organisation))) > 0) ' +
'THEN COALESCE(a.organisation, '''') + '', '' + COALESCE(a.city, '''') ' +
'ELSE (SELECT (COALESCE(ad.salutation, '''') + ''.'' + COALESCE(substring(ad.firstname,1,1) + ''.'', '''') + ' +
'COALESCE(ad.lastname, '''')) ' +
'FROM addressdetails ad ' +
'WHERE ad.addressdetails_id = b.addressdetails_id and ' +
'a.addressbook_id = ad.addressbook_id and ' +
'(select min(ad2.addressdetails_id)from addressdetails ad2 where a.addressbook_id = ad2.addressbook_id) = b.addressdetails_id ) ' +
'end) as Organisation, ' +
'V.Description, C.City, V.VoucherNo, V.YearRef, V.Vouchers_id ' +
'FROM vouchers V LEFT JOIN Addressbook A ' +
'LEFT JOIN Addressdetails B on A.addressbook_id=B.addressbook_id ' +
'ON V.addressbook_id = A.addressbook_id ' +
'LEFT JOIN cities C ON C.cities_id=V.cities_id ' +
'WHERE V.voucherdate = ''' + FormatDateTime('MM/dd/yyyy',StrToDate(CommDateEF.Text)) + ''' ');
      VouSearchQry.Open;
      VouSearchQry.Active := True;
      VouSearchCDS.Active := True;

      if VouSearchCDS.RecordCount > 0 then
        begin
          PaxNameGrid.Columns[0].Width := 100;
          PaxNameGrid.Columns[1].Width := 75;
          PaxNameGrid.Columns[2].Width := 140;
          PaxNameGrid.Columns[3].Width := 150;
          PaxNameGrid.Columns[4].Width := 75;
          PaxNameGrid.Columns[5].Width := 50;
          PaxNameGrid.Columns[6].Width := 50;
          PaxNameGrid.Columns[7].Width := 50;
        end;
    end;
end;

procedure TVouSearchForm.OkBBClick(Sender: TObject);
var
  GPQry:TSQLQuery;
begin
  GPQry := TSQLQuery.Create(nil);
  GPQry.SQLConnection := BackOfficeDataModule.SQLConnection;
  if VouNoRB.Checked=true then
    begin
      GPQry.Close;
      GPQry.SQL.Clear;
      GPQry.SQL.Add('SELECT vouchers_id from vouchers WHERE voucherno='+ Trim(VouNoEF.Text) +
      ' AND yearref='+ Trim(VouYrRefEF.Text));
      GPQry.Open;

      if (not GPQry.Eof) and (GPQry['vouchers_id'] <> null) then
        _vouchers_id:=GPQry['vouchers_id']
    end;

  if (CommDateRB.Checked=true) or (PaxNameRB.Checked=true) then
    begin
      if (Not VouSearchCDS.Eof) and (VouSearchCDS['vouchers_id']<>null) then
        _vouchers_id:=VouSearchCDS['vouchers_id'];
    end;
  GPQry.Free;
end;

end.
