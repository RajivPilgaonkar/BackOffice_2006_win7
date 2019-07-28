unit VoucherPackagesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1ML_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, FMTBcd, DB, DBClient,
  Provider, SqlExpr, cxPC, cxNavigator, cxDBNavigator, cxControls,
  cxContainer, cxEdit, cxLabel, cxDBLabel, StdCtrls, cxButtons, ExtCtrls,
  cxGraphics, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  cxImage, DateUtils;

type
  TVoucherPackagesForm = class(TCustom_1ML_Form)
    MasterCdsvoucherspackages_id: TIntegerField;
    MasterCdsvouchers_id: TIntegerField;
    MasterCdspackages_id: TIntegerField;
    MasterCdsfrom_date: TSQLTimeStampField;
    MasterCdsnoofpax: TIntegerField;
    MasterCdsAddressbook_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    MasterCdsto_date: TSQLTimeStampField;
    MasterCdsremarks: TStringField;
    Panel5: TPanel;
    Label8: TLabel;
    cxCityLCMB: TcxDBLookupComboBox;
    Label12: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label13: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    CitiesCdsState: TStringField;
    CitiesDs: TDataSource;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    AgentCdsOrgCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentDs: TDataSource;
    PackageSds: TSQLDataSet;
    PackageDsp: TDataSetProvider;
    PackageCds: TClientDataSet;
    PackageCdsPackages_id: TIntegerField;
    PackageCdsPackage: TStringField;
    PackageCdsFrom_Cities_id: TIntegerField;
    PackageDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure cxCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    procedure SetAgent;
    procedure SetRemarks;
  public
    { Public declarations }
  end;

var
  VoucherPackagesForm: TVoucherPackagesForm;
  VoucherPackagesForm_VoucherPackages_id: integer;
  VoucherPackagesForm_level: integer;

implementation

uses BackOfficeDM, VoucherFm;

{$R *.dfm}

procedure TVoucherPackagesForm.FormCreate(Sender: TObject);
begin

  Panel1.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := VoucherPackagesForm_VoucherPackages_id;

  inherited;

  AgentCds.Open;
  CitiesCds.Open;
  PackageCds.Open;

  cxCityLCMBPropertiesEditValueChanged(nil);

  if VoucherForm.MasterCds['Checked'] = true then
    MasterCds.ReadOnly := true;

end;

procedure TVoucherPackagesForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TVoucherPackagesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VoucherPackagesForm := nil;
end;


procedure TVoucherPackagesForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'VouchersPackages';
  Custom_MasterKeyField := 'VouchersPackages_id';
  Custom_AdmLevel := VoucherPackagesForm_level;

  Custom_FormWidth := 715;
  Custom_FormHeight := 350;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;

procedure TVoucherPackagesForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
end;

procedure TVoucherPackagesForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Vouchers_id'] = null) then
    raise Exception.Create('Please select a Voucher');

  if (MasterCds['From_Date'] = null) then
    raise Exception.Create('Please enter the From Date');

  if (MasterCds['Packages_id'] = null) then
    raise Exception.Create('Please enter the Package');

  if (MasterCds['Cities_id'] = null) then
    raise Exception.Create('Please enter the City');

  SetAgent;

  if (MasterCds['To_Date'] = null) then
    raise Exception.Create('Please enter the To Date (in Packages master)');

  if (MasterCds['Addressbook_id'] = null) then
    raise Exception.Create('Please enter the Agent (in Packages master)');

  inherited;

  if MasterCds['VouchersPackages_id'] = null then
    raise Exception.Create('VouchersPackages_id is not assigned');

end;

procedure TVoucherPackagesForm.SetAgent;
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
begin
  x_QueryString := 'SELECT Addressbook_id, Nights FROM Packages ' +
    'WHERE Packages_id = ' + IntToStr(MasterCds['Packages_id']) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['Addressbook_id'] <> null) then
    MasterCds['Addressbook_id'] := GpSds['Addressbook_id'];

  if (not GpSds.Eof) and (GpSds['Nights'] <> null) then
    MasterCds['to_date'] := IncDay(MasterCds['from_date'], GpSds['Nights']);

  GpSds.Free;

end;




procedure TVoucherPackagesForm.cxCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if (cxCityLCMB.EditValue <> null) and (CitiesCds.State <> dsInactive) then
      CitiesCds.Locate('Cities_id',cxCityLCMB.EditValue,[]);
  except
  end;

end;

procedure TVoucherPackagesForm.MasterCdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SetRemarks;
end;

procedure TVoucherPackagesForm.SetRemarks;
var
  x_QueryString: String;
  GpSds: TSQLDataSet;
  x_Package: string;
begin
  inherited;

  x_QueryString := 'SELECT [dbo].[fn_PackageDesc2](' + IntToStr(MasterCds['Packages_id']) +
    ',' + IntToStr(MasterCds['NoOfPax']) + ',' + QuotedStr(FormatDateTime('mm/dd/yyyy',MasterCds['from_date'])) + ') AS Package';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_Package := '';
  if (not GpSds.eof) and (GpSds['Package'] <> null) then
    x_Package := GpSds['Package'];

  x_QueryString := 'UPDATE Vouchers SET Description = ' + QuotedStr(x_Package) + ' ' +
                   'WHERE Vouchers_id = ' + IntToStr(MasterCds['Vouchers_id']);
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

end.
