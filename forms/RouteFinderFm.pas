unit RouteFinderFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxDropDownEdit, cxCalendar, StdCtrls, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxGroupBox, ExtCtrls, cxSpinEdit, cxTimeEdit, Menus,
  cxLookAndFeelPainters, cxButtons, FMTBcd, DB, DBClient, Provider, SqlExpr,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxRadioGroup, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TRouteFinderForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxCityGroupBox: TcxGroupBox;
    cxFromCityLCMB: TcxLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cxToCityLCMB: TcxLookupComboBox;
    cxGroupBox2: TcxGroupBox;
    Label3: TLabel;
    cxDateEdit: TcxDateEdit;
    Label4: TLabel;
    cxTimeEdit: TcxTimeEdit;
    Panel3: TPanel;
    cxGenerateButton: TcxButton;
    FromCitiesSds: TSQLDataSet;
    FromCitiesDsp: TDataSetProvider;
    FromCitiesCds: TClientDataSet;
    FromCitiesCdsCities_id: TIntegerField;
    FromCitiesCdsCity: TStringField;
    FromCitiesDs: TDataSource;
    ToCitiesSds: TSQLDataSet;
    ToCitiesDsp: TDataSetProvider;
    ToCitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    ToCitiesDs: TDataSource;
    cxGridOption1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridOption1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridOption1Level1: TcxGridLevel;
    RouteFinderSds: TSQLDataSet;
    RouteFinderDsp: TDataSetProvider;
    RouteFinderCds: TClientDataSet;
    RouteFinderDs: TDataSource;
    RouteFinderCdsOptions_id: TIntegerField;
    RouteFinderCdsOptionNo: TIntegerField;
    RouteFinderCdsFromCities_id: TIntegerField;
    RouteFinderCdsToCities_id: TIntegerField;
    RouteFinderCdsFromCity: TStringField;
    RouteFinderCdsToCity: TStringField;
    RouteFinderCdsMode: TIntegerField;
    RouteFinderCdsModeStr: TStringField;
    RouteFinderCdsDeparture: TSQLTimeStampField;
    RouteFinderCdsArrival: TSQLTimeStampField;
    RouteFinderCdsMaxOption: TIntegerField;
    cxGridOption1DBBandedTableView1Options_id: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1OptionNo: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1FromCity: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ToCity: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1Mode: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ModeStr: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ModeNo: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1Departure: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1Arrival: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1MaxOption: TcxGridDBBandedColumn;
    Panel6: TPanel;
    cxOptionRadioGroup: TcxRadioGroup;
    cxOkButton: TcxButton;
    cxCancelButton: TcxButton;
    cxCloseButton: TcxButton;
    RouteFinderCdsTrainNo: TStringField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    Option11: TMenuItem;
    Option21: TMenuItem;
    Option31: TMenuItem;
    RouteFinderCdsHops: TIntegerField;
    RouteFinderCdsModePreference: TIntegerField;
    cxButton3: TcxButton;
    cxLockTimeCkb: TcxCheckBox;
    RouteFinderCdsModeNo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxGenerateButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseButtonClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Option11Click(Sender: TObject);
    procedure Option21Click(Sender: TObject);
    procedure Option31Click(Sender: TObject);
    procedure cxGridOption1DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxFromCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxToCityLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxDateEditPropertiesEditValueChanged(Sender: TObject);
  private
    procedure SetTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RouteFinderForm: TRouteFinderForm;
  _RouteFinderForm_Type: integer;
  _RouteFinderForm_Level: integer;
  _RouteFinderForm_FromCities_id: integer;
  _RouteFinderForm_ToCities_id: integer;
  _RouteFinderForm_TravelDate: TDateTime;
  _RouteFinderForm_Alternate: boolean;

implementation

uses BackOfficeDM, RouteAlternateFm, RouteFinder_2013_Fm, GeneralUt,
  MainFm;

{$R *.dfm}

procedure TRouteFinderForm.FormCreate(Sender: TObject);
begin

  Height := 650;
  Width := 950;
  Left := 0;
  Top := 0;

  if _RouteFinderForm_Alternate = false then
    begin
      cxButton1.Visible := False;
      cxButton2.Visible := False;
    end;

  RouteFinderCds.Filter := '(OptionNo = 1) OR (OptionNo = 2) OR (OptionNo = 3)';
  RouteFinderCds.Filtered := True;

  if _RouteFinderForm_Type = 1 then
    begin
      cxOkButton.Visible := False;
      cxCancelButton.Visible := False;
      cxOptionRadioGroup.Visible := False;
      cxDateEdit.Date := Date();
    end
  else if _RouteFinderForm_Type = 2 then
    begin
      cxCloseButton.Visible := False;
      cxCityGroupBox.Enabled := False;
      cxFromCityLCMB.EditValue := _RouteFinderForm_FromCities_id;
      cxToCityLCMB.EditValue := _RouteFinderForm_ToCities_id;
      cxDateEdit.Date := _RouteFinderForm_TravelDate;
//      cxGenerateButtonClick(nil);
    end;


  FromCitiesCds.Open;
  ToCitiesCds.Open;

  cxTimeEdit.Text := '09:00';

  SetTime;

end;

procedure TRouteFinderForm.cxGenerateButtonClick(Sender: TObject);
var
  QueryString: string;
begin

{
  QueryString := 'EXEC p_RouteFinder ''' + FormatDateTime('mm/dd/yyyy',cxDateEdit.Date) +
    ' ' + cxTimeEdit.Text + ''',' +
    IntToStr(cxFromCityLCMB.EditValue) + ',' + IntToStr(cxToCityLCMB.EditValue) + ',' +
    '3,1';
}

  QueryString := 'EXEC p_RouteFinder_x ''' + FormatDateTime('mm/dd/yyyy',cxDateEdit.Date) +
    ' ' + cxTimeEdit.Text + ''',' +
    IntToStr(cxFromCityLCMB.EditValue) + ',' + IntToStr(cxToCityLCMB.EditValue) + ',' +
    '3,1, null';
  RouteFinderSds.CommandText := QueryString;

{
  RouteFinderCds.Active := False;
  RouteFinderSds.Active := False;

  RouteFinderSds.Active := True;
  RouteFinderCds.Active := True;
}

  RouteFinderCds.Close;
  RouteFinderSds.Close;

  //RouteFinderSds.Open;
  RouteFinderCds.Open;


  cxGridOption1DBBandedTableView1.ViewData.Expand(True);

end;

procedure TRouteFinderForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if _RouteFinderForm_Type = 1 then
    Action := caFree;
end;

procedure TRouteFinderForm.FormDestroy(Sender: TObject);
begin
  if _RouteFinderForm_Type = 1 then
    RouteFinderForm := nil;
end;

procedure TRouteFinderForm.cxCloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TRouteFinderForm.cxButton1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  QueryString := 'EXEC p_CreateSectors ''' + FormatDateTime('mm/dd/yyyy',Date) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'EXEC p_QuoDeleteFromPaths';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage ('Done');

end;

procedure TRouteFinderForm.Option11Click(Sender: TObject);
begin

  RouteFinderCds.Locate('OptionNo', 1, []);

  _RouteAlternateForm_Type := 1;
  _RouteAlternateForm_FromCities_id := cxFromCityLCMB.EditValue;
  _RouteAlternateForm_ToCities_id := cxToCityLCMB.EditValue;
  _RouteAlternateForm_Hops := RouteFinderCds['Hops'];
  _RouteAlternateForm_ModePreference := RouteFinderCds['ModePreference'];
  _RouteAlternateForm_Date := StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEdit.Date) +
    ' ' + cxTimeEdit.Text);

  if RouteAlternateForm = nil then
    Application.CreateForm(TRouteAlternateForm, RouteAlternateForm);

end;

procedure TRouteFinderForm.Option21Click(Sender: TObject);
begin

  RouteFinderCds.Locate('OptionNo', 2, []);

  _RouteAlternateForm_Type := 1;
  _RouteAlternateForm_FromCities_id := cxFromCityLCMB.EditValue;
  _RouteAlternateForm_ToCities_id := cxToCityLCMB.EditValue;
  _RouteAlternateForm_Hops := RouteFinderCds['Hops'];
  _RouteAlternateForm_ModePreference := RouteFinderCds['ModePreference'];
  _RouteAlternateForm_Date := StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEdit.Date) +
    ' ' + cxTimeEdit.Text);


  if RouteAlternateForm = nil then
    Application.CreateForm(TRouteAlternateForm, RouteAlternateForm);

end;

procedure TRouteFinderForm.Option31Click(Sender: TObject);
begin

  RouteFinderCds.Locate('OptionNo', 3, []);

  _RouteAlternateForm_Type := 1;
  _RouteAlternateForm_FromCities_id := cxFromCityLCMB.EditValue;
  _RouteAlternateForm_ToCities_id := cxToCityLCMB.EditValue;
  _RouteAlternateForm_Hops := RouteFinderCds['Hops'];
  _RouteAlternateForm_ModePreference := RouteFinderCds['ModePreference'];
  _RouteAlternateForm_Date := StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDateEdit.Date) +
    ' ' + cxTimeEdit.Text);


  if RouteAlternateForm = nil then
    Application.CreateForm(TRouteAlternateForm, RouteAlternateForm);

end;

procedure TRouteFinderForm.cxGridOption1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (RouteFinderCds['OptionNo'] <> null) and
     ((RouteFinderCds['OptionNo']=1) or (RouteFinderCds['OptionNo']=2) or
      (RouteFinderCds['OptionNo']=3)) then
    begin
      if RouteFinderCds['OptionNo'] = 1 then
        cxOptionRadioGroup.ItemIndex := 0
      else if RouteFinderCds['OptionNo'] = 2 then
        cxOptionRadioGroup.ItemIndex := 1
      else if RouteFinderCds['OptionNo'] = 3 then
        cxOptionRadioGroup.ItemIndex := 2;
    end;
end;

procedure TRouteFinderForm.cxButton3Click(Sender: TObject);
begin

  _RouteFinder_2013_Form_Level := GetUserLevel(g_users_id, 12010);

  If _RouteFinder_2013_Form_Level = 0 Then
    begin
      MessageDlg('Access Denied', mtError, [mbOK], 0);
      Exit;
    end;

  _RouteFinder_2013_Form_Type := 1;
  _RouteFinder_2013_Form_Alternate := true;

  if RouteFinder_2013_Form = nil then
    Application.CreateForm(TRouteFinder_2013_Form, RouteFinder_2013_Form);


end;

procedure TRouteFinderForm.SetTime;
var
  x_FromCities_id, x_ToCities_id: integer;
  x_TravelDate: TDateTime;
  GpSds : TSQLDataSet;
  QueryString: string;
begin

  x_FromCities_id := 0;
  if cxFromCityLCMB.EditValue <> null then
    x_FromCities_id := cxFromCityLCMB.EditValue;

  x_ToCities_id := 0;
  if cxToCityLCMB.EditValue <> null then
    x_ToCities_id := cxToCityLCMB.EditValue;

  x_TravelDate := Date;
  if (cxDateEdit.Date <> null) and (cxDateEdit.Text <> '') then
    x_TravelDate := cxDateEdit.Date;

  QueryString := 'EXEC p_RouteFinder_EarliestPrefTrain ' + IntToStr(x_FromCities_id) + ',' +
    IntToStr(x_ToCities_id) + ',' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_TravelDate));

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  cxTimeEdit.Text := '09:00';
  if (not GpSds.Eof) and (GpSds['EarliestTime'] <> null) and (GpSds['EarliestTime'] < '09:00') then
    cxTimeEdit.Text := GpSds['EarliestTime'];

  GpSds.Free;

end;

procedure TRouteFinderForm.cxFromCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (not cxLockTimeCkb.Checked) then
    SetTime;
end;

procedure TRouteFinderForm.cxToCityLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (not cxLockTimeCkb.Checked) then
    SetTime;
end;

procedure TRouteFinderForm.cxDateEditPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (not cxLockTimeCkb.Checked) then
    SetTime;
end;

end.
