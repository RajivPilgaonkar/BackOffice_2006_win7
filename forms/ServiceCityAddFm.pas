unit ServiceCityAddFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, FMTBcd, DB,
  StdCtrls, DBClient, Provider, SqlExpr, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar;

type
  TServiceCityAddForm = class(TForm)
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    cxServiceCityLcmb: TcxLookupComboBox;
    ServiceCitiesSds: TSQLDataSet;
    ServiceCitiesDsp: TDataSetProvider;
    ServiceCitiesCds: TClientDataSet;
    IntegerField8: TIntegerField;
    StringField2: TStringField;
    ServiceCitiesDs: TDataSource;
    Label5: TLabel;
    cxLabel1: TcxLabel;
    cxServiceLCMB: TcxLookupComboBox;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    ServiceDs: TDataSource;
    ServiceCdsServices_id: TIntegerField;
    ServiceCdsService: TStringField;
    ServiceCdsDescription: TStringField;
    ServiceCdsActive: TBooleanField;
    ServiceCdsServiceType: TStringField;
    ServiceCdsCities_id: TIntegerField;
    cxButtonClose: TcxButton;
    cxButton1: TcxButton;
    ServiceCitiesCdsstate: TStringField;
    cxWefDateEdit: TcxDateEdit;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxServiceCityLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCityAddForm: TServiceCityAddForm;

implementation

uses CostSrvFm, BackOfficeDM;

{$R *.dfm}

procedure TServiceCityAddForm.FormCreate(Sender: TObject);
begin
  ServiceCitiesCds.Close;
  ServiceCitiesCds.Open;
  ServiceCds.Close;
  ServiceCds.Open;

end;

procedure TServiceCityAddForm.cxButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TServiceCityAddForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  QueryString: string;
  x_Transfer: integer;
begin
  if cxWefDateEdit.EditValue = null then
    raise exception.create ('Please enter the Wef');

  if cxServiceLCMB.EditValue = null then
    raise exception.create ('Please enter the Service');

  // Check if Transfer or Sightseeing
  QueryString := 'SELECT Transfer FROM Services WHERE Services_id = ' + IntToStr(cxServiceLCMB.EditValue);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Transfer := 0;
  if (not GpSds.EOF) and (GpSds['Transfer'] = true) then
    x_Transfer := 1;

  if (x_Transfer = 1) and (not CostSrvForm.cxTrsfRB.Checked) then
    CostSrvForm.cxTrsfRB.Checked := true
  else if (x_Transfer = 0) and (not CostSrvForm.cxSsRB.Checked) then
    CostSrvForm.cxSsRB.Checked := true;

  GpSds.Close;
  GpSds.CommandText := 'EXEC p_AddNewServiceCity ' +
    IntToStr(CostSrvForm.cxAgentLCMB.EditValue) + ',' +
    IntToStr(cxServiceLCMB.EditValue) + ', ' +
    IntToStr(cxServiceCityLCMB.EditValue) + ', ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',cxWefDateEdit.Date));
  GpSds.ExecSQL;

  CostSrvForm.ServiceCitiesCds.Close;
  CostSrvForm.ServiceCitiesCds.Open;

  CostSrvForm.WefCds.Close;
  CostSrvForm.WefCds.Open;

  CostSrvForm.cxAgentLCMB.EditValue := CostSrvForm.cxAgentLCMB.EditValue;

//  CostSrvForm.MasterCds.Insert;
//  CostSrvForm.MasterCds['Wef'] := cxWefDateEdit.EditValue;
//  CostSrvForm.MasterCds['Services_id'] := cxServiceLCMB.EditValue;
//  CostSrvForm.MasterCds.Post;

  CostSrvForm.ServiceCitiesCds.Close;
  CostSrvForm.ServiceCitiesCds.Open;
  CostSrvForm.ServiceCitiesCds.Locate('Cities_id', cxServiceCityLCMB.EditValue, []);
  CostSrvForm.cxServiceCityLCMB.EditValue := cxServiceCityLCMB.EditValue;

  GpSds.Free;

end;

procedure TServiceCityAddForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TServiceCityAddForm.cxServiceCityLcmbPropertiesEditValueChanged(
  Sender: TObject);
var
  x_ServiceCities_id: integer;
begin

  x_ServiceCities_id := -1;

  if cxServiceCityLCMB.EditValue <> null then
    x_ServiceCities_id := cxServiceCityLCMB.EditValue;

  ServiceCitiesCds.Locate('Cities_id', x_ServiceCities_id, []);

end;

procedure TServiceCityAddForm.cxButton2Click(Sender: TObject);
begin
  if (CostSrvForm.MasterCds.State = dsInsert) or (CostSrvForm.MasterCds.State = dsEdit) then
    CostSrvForm.MasterCds.Cancel;
end;

end.
