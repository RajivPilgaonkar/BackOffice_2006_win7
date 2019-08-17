unit QuoServicesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls,
  cxCheckBox, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons, FMTBcd,
  DB, SqlExpr, cxGraphics, DBClient, Provider, cxSpinEdit, cxTimeEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCalendar, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TQuoServicesForm = class(TForm)
    Panel1: TPanel;
    cxTicketsGB: TcxGroupBox;
    cxCancelButton: TcxButton;
    cxOKButton: TcxButton;
    SightSeeingSds: TSQLDataSet;
    SightSeeingDsp: TDataSetProvider;
    SightSeeingCds: TClientDataSet;
    SightSeeingDs: TDataSource;
    SightSeeingCdsQuoServices_id: TIntegerField;
    SightSeeingCdsQuotations_id: TIntegerField;
    SightSeeingCdsCities_id: TIntegerField;
    SightSeeingCdsAgentAddressbook_id: TIntegerField;
    SightSeeingCdsServices_id: TIntegerField;
    SightSeeingCdsStartTime: TSQLTimeStampField;
    SightSeeingCdsAC: TBooleanField;
    SightSeeingCdsGuide: TBooleanField;
    SightSeeingCdsTransport: TBooleanField;
    SightSeeingCdsSightSeeing: TBooleanField;
    SightSeeingCdsPlace: TStringField;
    SightSeeingCdsTransferTypes_id: TIntegerField;
    SightSeeingCdsVehicles_id: TIntegerField;
    SightSeeingCdsServiceDay: TIntegerField;
    SightSeeingCdsServiceDate: TSQLTimeStampField;
    SightSeeingCdsNoOfVehicles: TIntegerField;
    SightSeeingCdsCost: TFMTBCDField;
    SightSeeingCdsMasters_id: TStringField;
    SightSeeingCdsFlightNo: TStringField;
    SightSeeingCdsstatus: TIntegerField;
    SightSeeingCdsLineNum: TIntegerField;
    SightSeeingCdsEntranceFees: TBooleanField;
    SightSeeingCdsQuoCities_id: TIntegerField;
    SightSeeingCdsSelected: TBooleanField;
    SightSeeingCdsTimings: TStringField;
    QuoLinesGrid: TcxGrid;
    QuoLinesGridDBTableView1: TcxGridDBTableView;
    QuoLinesGridLevel1: TcxGridLevel;
    QuoLinesGridDBTableView1Selected: TcxGridDBColumn;
    QuoLinesGridDBTableView1Services_id: TcxGridDBColumn;
    QuoLinesGridDBTableView1Timings: TcxGridDBColumn;
    QuoLinesGridDBTableView1Guide: TcxGridDBColumn;
    QuoLinesGridDBTableView1Transport: TcxGridDBColumn;
    QuoLinesGridDBTableView1EntranceFees: TcxGridDBColumn;
    QuoLinesGridDBTableView1QuoServices_id: TcxGridDBColumn;
    SightSeeingCdsDaysName: TStringField;
    SightSeeingCdsDaysOfOperation: TIntegerField;
    QuoLinesGridDBTableView1DaysName: TcxGridDBColumn;
    QuoLinesGridDBTableView1ServiceDate: TcxGridDBColumn;
    QuoLinesGridDBTableView1StartTime: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxCopySightSeeingButton: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure SightSeeingCdsAfterPost(DataSet: TDataSet);
    procedure SightSeeingCdsAfterDelete(DataSet: TDataSet);
    procedure cxCancelButtonClick(Sender: TObject);
    procedure cxOKButtonClick(Sender: TObject);
    procedure HandleSightSeeing;
    procedure SightSeeingCdsCalcFields(DataSet: TDataSet);
    procedure SightSeeingCdsBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCopySightSeeingButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoServicesForm: TQuoServicesForm;
  _QuoServicesForm_QuoCities_id: integer;
  _QuoServicesForm_Quotations_id: integer;
  _QuoServicesForm_ModeOfTravel: integer;
  _QuoServicesForm_QuoServices_id: integer;
  _QuoServicesForm_ServiceType: integer;

implementation

uses BackOfficeDM, GeneralUt, QuoCitywiseFm, SearchSortFm;

{$R *.dfm}

procedure TQuoServicesForm.FormCreate(Sender: TObject);
begin

  if _QuoServicesForm_ServiceType = 1 then
    begin
      SightSeeingCds.Active := False;
      SightSeeingCds.Filter := 'QuoCities_id = ' + IntToStr(_QuoServicesForm_QuoCities_id) + ' ' +
        ' AND SightSeeing = True';
      SightSeeingCds.Filtered := True;
      SightSeeingCds.Active := True;

      HandleSightSeeing;
    end
  else if _QuoServicesForm_ServiceType = 2 then
    begin

      QuoLinesGridDBTableView1Timings.Visible := False;
      QuoLinesGridDBTableView1Guide.Visible := False;
      QuoLinesGridDBTableView1EntranceFees.Visible := False;
      QuoLinesGridDBTableView1DaysName.Visible := False;

      SightSeeingCds.Active := False;
      SightSeeingCds.Filter := 'QuoCities_id = ' + IntToStr(_QuoServicesForm_QuoCities_id) + ' ' +
        ' AND SightSeeing = False';
      SightSeeingCds.Filtered := True;
      SightSeeingCds.Active := True;
    end;

  BackOfficeDataModule.ServicesCds.Open;

  Height := 320;
  Width := 920;

end;

procedure TQuoServicesForm.HandleSightSeeing;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_GuideInt, x_EntranceFeesInt: integer;
  x_Guide, x_EntranceFees: boolean;
begin

  x_Guide := True;
  if QuoCitywiseForm.MasterCds['Guide'] <> null then
    x_Guide := QuoCitywiseForm.MasterCds['Guide'];

  x_EntranceFees := True;
  if QuoCitywiseForm.MasterCds['EntranceFees'] <> null then
    x_EntranceFees := QuoCitywiseForm.MasterCds['EntranceFees'];

  x_GuideInt := 0;
  if x_Guide = True then
    x_GuideInt := 1;

  x_EntranceFeesInt := 0;
  if x_EntranceFees = True then
    x_EntranceFeesInt := 1;

  //x_TransportInt := 1;
  //if _QuoServicesForm_ModeOfTravel = 5 then
  //  x_TransportInt := 0;

  QueryString := 'EXEC p_InsertQuoSightSeeing ' +
    IntToStr(_QuoServicesForm_Quotations_id) + ',' +
    IntToStr(_QuoServicesForm_QuoCities_id) + ',' +
    IntToStr(x_GuideInt) + ',' +
    IntToStr(x_EntranceFeesInt);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  SightSeeingCds.Active := False;
  SightSeeingCds.Active := True;

end;



procedure TQuoServicesForm.SightSeeingCdsAfterPost(DataSet: TDataSet);
begin
  SightSeeingCds.ApplyUpdates(0);
end;

procedure TQuoServicesForm.SightSeeingCdsAfterDelete(DataSet: TDataSet);
begin
  SightSeeingCds.ApplyUpdates(0);
end;

procedure TQuoServicesForm.cxCancelButtonClick(Sender: TObject);
begin
  if SightSeeingCds.State in [dsEdit, dsInsert] then
    SightSeeingCds.Cancel;
  Close;
end;

procedure TQuoServicesForm.cxOKButtonClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  if SightSeeingCds.State in [dsEdit, dsInsert] then
    SightSeeingCds.Post;

  if _QuoServicesForm_ServiceType = 1 then
    begin

      QueryString := 'UPDATE QuoCities SET QuoServices_id = ' + IntToStr(SightSeeingCds['QuoServices_id']) + ' ' +
        'WHERE QuoCities_id = ' + IntToStr(_QuoServicesForm_QuoCities_id);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.ExecSQL;

    end;

  GpSds.Free;

  Close;

end;

procedure TQuoServicesForm.SightSeeingCdsCalcFields(DataSet: TDataSet);
begin
  if SightSeeingCds['DaysOfOperation'] <> null then
    SightSeeingCds['DaysName'] := DaysToStr(SightSeeingCds['DaysOfOperation']);

end;

procedure TQuoServicesForm.SightSeeingCdsBeforePost(DataSet: TDataSet);
begin
  if (SightSeeingCds['ServiceDate'] <> null) and (SightSeeingCds['StartTime'] <> null) then
    SightSeeingCds['StartTime'] := StrToDateTime(FormatDateTime('dd/mm/yyyy',SightSeeingCds['ServiceDate']) + ' ' +
      FormatDateTime('HH:mm',SightSeeingCds['StartTime']));

end;

procedure TQuoServicesForm.cxButton1Click(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin

  if SightSeeingCds['SightSeeing'] <> 0 then
    exit;

  QueryString := 'SELECT Services_id, Description ' +
    'FROM Services ' +
    'WHERE Cities_id = ' + IntToStr(SightSeeingCds['Cities_id']) + ' ' +
    'AND Transfer = 1 ' +
    'AND Active = 1 ';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 1 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'Services_id';
  SearchSortForm.SearchGridDBTableView1.Columns[1].DataBinding.FieldName := 'Description';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Visible := False;
  SearchSortForm.SearchGridDBTableView1.Columns[1].Width := 300;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[1].Caption := 'Service';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Services_id';

  SearchSortForm.ShowModal;

  if (SearchSortForm.ModalResult = mrOK) then
  begin
    SightSeeingCds.Edit;
    SightSeeingCds['Services_id'] := SearchSortForm.SearchCds['Services_id'];
    SightSeeingCds.Post;    
  end;

  SearchSortForm.Free;
  SearchSortForm := nil;

end;

procedure TQuoServicesForm.cxCopySightSeeingButtonClick(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin
  if MessageDlg ('Are you sure you want to add the same SightSeeing again?',
    mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoCopyServices ' + IntToStr(SightSeeingCds['QuoServices_id']);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  SightSeeingCds.Active := False;
  SightSeeingCds.Active := True;  

end;

end.
