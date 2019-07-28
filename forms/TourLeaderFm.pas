unit TourLeaderFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, FMTBcd, DB,
  DBClient, Provider, SqlExpr, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxLookAndFeelPainters, cxButtons, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics;

type
  TTourLeaderForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    CountryQry: TSQLQuery;
    CountryDSP: TDataSetProvider;
    CountryCDS: TClientDataSet;
    CountryDS: TDataSource;
    CountryCDScountry: TStringField;
    CountryCDScountries_id: TIntegerField;
    cxTourLeaderEdit: TcxTextEdit;
    cxNationalityCMB: TcxLookupComboBox;
    cxIssuedByEdit: TcxTextEdit;
    cxIssuedOnEdit: TcxMaskEdit;
    OkBtn: TcxButton;
    CancelBtn: TcxButton;
    Label5: TLabel;
    cxTourRefEdit: TcxTextEdit;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    function VouchersWereIssued: Boolean;
    procedure PutTourLeaderNameFromVouchers;
    procedure PutTourLeaderName;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TourLeaderForm: TTourLeaderForm;
  _TourLeaderForm_MasterCode: string;
  _TourLeaderForm_MasterDepDate: TDateTime;
  _TourLeaderForm_Itineraries_id: integer;

implementation

uses BackOfficeDM, GeneralUt, MainFm;

{$R *.dfm}

procedure TTourLeaderForm.FormCreate(Sender: TObject);
begin

  BackOfficeDataModule.CountriesCDS.Active := True;

  if VouchersWereIssued then
    PutTourLeaderNameFromVouchers
  else
    PutTourLeaderName;


end;

function TTourLeaderForm.VouchersWereIssued: Boolean;
var
  GpSds: TSQLDataSet;
  x_Issued: Boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'SELECT IssuedOn '+
    'FROM Itineraries ' +
    'WHERE Itineraries_id = ' + IntToStr(_TourLeaderForm_Itineraries_id);
  GpSds.Open;

  // Tour leader
  if (not GpSds.EOF) and (GpSds['IssuedOn'] <> null) then
    x_Issued := True
  else
    x_Issued := False;

  GpSds.Free;

  Result := x_Issued;

end;

procedure TTourLeaderForm.PutTourLeaderNameFromVouchers;
var
  GpSds: TSQLDataSet;
  x_TL, x_TourRef: string;
  x_Countries_id: integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'SELECT Tourleader, TourLeaderCountries_id, TourRef, Quotations_id '+
    'FROM itineraries i ' +
    'WHERE itineraries_id = ' + IntToStr(_TourLeaderForm_Itineraries_id);
  GpSds.Open;

  // Tour leader
  if (not GpSds.EOF) and (GpSds['TourLeader'] <> null) then
    x_TL := GpSds['TourLeader']
  else
    x_TL := '';

  // Nationality
  if (not GpSds.EOF) and (GpSds['TourLeaderCountries_id'] <> null) then
    x_Countries_id := GpSds['TourLeaderCountries_id']
  else
    x_Countries_id := 0;

  cxTourLeaderEdit.Text := x_TL;

  if x_Countries_id > 0 then
    begin
      cxNationalityCMB.EditValue := x_Countries_id;
      CountryCds.Locate('Countries_id',CxNationalityCMB.EditValue,[])
    end;

  // Tour leader
  if (not GpSds.EOF) and (GpSds['TourRef'] <> null) then
    x_TourRef := GpSds['TourRef']
  else
    x_TourRef := '';

  cxTourRefEdit.Text := x_TourRef;

  cxIssuedByEdit.Text := GetAdmUserName(g_Users_id);
  //cxIssuedByEdit.Text := 'Felix';

  cxIssuedOnEdit.Text := FormatDateTime('dd/mm/yyyy',Date);

  GpSds.Free;

end;

procedure TTourLeaderForm.PutTourLeaderName;
var
  GpSds: TSQLDataSet;
  x_TL, x_Country, x_TourRef: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandText := 'SELECT f.[name] as Tourleader, c.Country FROM '+
    'dbo.fn_GetMasterPaxListOnTour(''' + _TourLeaderForm_MasterCode + ''', ''' +
    FormatDateTime('mm/dd/yyyy',_TourLeaderForm_MasterDepDate)+ ''',1) f ' +
    'LEFT JOIN BookingsClients bc ON f.BookingsClients_id = bc.BookingsClients_id ' +
    'LEFT JOIN Countries c ON bc.Countries_id = c.Countries_id ' +
    'WHERE TourLeader = 1';
  GpSds.Open;

  // Tour leader
  if (not GpSds.EOF) and (GpSds['TourLeader'] <> null) then
    x_TL := GpSds['TourLeader']
  else
    x_TL := '';

  // Nationality
  if (not GpSds.EOF) and (GpSds['Country'] <> null) then
    x_Country := GpSds['Country']
  else
    x_Country := '';

  // Tour Ref
  GpSds.Close;
  GpSds.CommandText :=
    'SELECT dbo.fn_TourRefCode  (''' + _TourLeaderForm_MasterCode + ''',''' +
      FormatDateTime('mm/dd/yyyy',_TourLeaderForm_MasterDepDate) +  ''','' '') as x_TourRef';
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['x_TourRef'] <> null) then
    x_TourRef := GpSds['x_TourRef']
  else
    x_TourRef := '';


  cxTourLeaderEdit.Text := x_TL;
  cxNationalityCMB.Text := x_Country;
  cxIssuedByEdit.Text := GetAdmUserName(g_Users_id);
  //cxIssuedByEdit.Text := 'Felix';
  cxIssuedOnEdit.Text := FormatDateTime('dd/mm/yyyy',Date);
  cxTourRefEdit.Text := x_TourRef;

  GpSds.Free;

end;

procedure TTourLeaderForm.cxButton1Click(Sender: TObject);
begin
  cxIssuedByEdit.Text := GetAdmUserName(g_Users_id);
end;

end.
