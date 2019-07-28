unit TspFm;

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
  cxDBLookupComboBox, cxCheckBox;

type
  TTspForm = class(TCustom_1MG_Form)
    Panel4: TPanel;
    Panel5: TPanel;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxPageControl3: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    MasterCdstsp_cities_id: TIntegerField;
    MasterCdsquotations_id: TIntegerField;
    MasterCdscities_id: TIntegerField;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    CitiesDs: TDataSource;
    cxGrid1DBBandedTableView1tsp_cities_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1quotations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cities_id: TcxGridDBBandedColumn;
    TspSds: TSQLDataSet;
    TspDsp: TDataSetProvider;
    TspCds: TClientDataSet;
    TspDs: TDataSource;
    TspCdstsp_order_cities_id: TIntegerField;
    TspCdsquotations_id: TIntegerField;
    TspCdssrNo: TIntegerField;
    TspCdscities_id: TIntegerField;
    cxGridDBBandedTableView2tsp_order_cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2quotations_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2srNo: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2cities_id: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    ErrorsSds: TSQLDataSet;
    ErrorsDsp: TDataSetProvider;
    ErrorsCds: TClientDataSet;
    ErrorsDs: TDataSource;
    ErrorsCdserrors_id: TIntegerField;
    ErrorsCdsfromCities_id: TIntegerField;
    ErrorsCdstoCities_id: TIntegerField;
    cxGridDBBandedTableView1errors_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1fromCities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1toCities_id: TcxGridDBBandedColumn;
    MasterCdsStartCity: TBooleanField;
    cxGrid1DBBandedTableView1StartCity: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure MasterCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  end;

var
  TspForm: TTspForm;
  TspForm_Level: Integer;
  TspForm_Quotations_id: integer;


implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TTspForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  MasterSds.Params[0].Value := TspForm_Quotations_id;

  CitiesCds.Open;

  inherited;

end;

procedure TTspForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TTspForm.FormDestroy(Sender: TObject);
begin
  inherited;
  TspForm := nil;
end;

procedure TTspForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'tsp_cities';
  Custom_MasterKeyField := 'tsp_cities_id';
  Custom_AdmLevel := TspForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TTspForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TTspForm.MasterCdsBeforePost(DataSet: TDataSet);
var
  x_str: String;
  GpSds: TSQLDataSet;
begin
  inherited;

  if (MasterCds['cities_id'] = null) then
    raise Exception.Create('Please enter the city');

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  if MasterCds['StartCity'] = true then
    begin

      GpSds := TSQLDataSet.Create(nil);
      GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
      GpSds.CommandType := ctQuery;

      x_str := '';
      if MasterCds['tsp_cities_id'] <> null then
        x_str := 'AND tsp_cities_id <> ' + IntToStr(MasterCds['tsp_cities_id']);

      GpSds.CommandText := 'UPDATE tsp_cities SET StartCity = 0 ' +
        'WHERE quotations_id = ' + IntToStr(MasterCds['quotations_id']) +
        x_str;
      GpSds.ExecSQL;

      GpSds.Free;

    end;

  inherited;

  if MasterCds['tsp_cities_id'] = null then
    raise Exception.Create('tsp_cities id is not assigned');


end;

function TTspForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin

  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM tsp_cities ' +
    'WHERE cities_id = ' + IntToStr(MasterCds['cities_id']) + ' ' +
    'AND quotations_id = ' + IntToStr(MasterCds['quotations_id']) ;

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (tsp_cities_id <> ' + IntToStr(MasterCds['tsp_cities_id']) + ') ';

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


procedure TTspForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Quotations_id'] := TspForm_Quotations_id;
  MasterCds['StartCity'] := false;
end;

procedure TTspForm.cxButton1Click(Sender: TObject);
var
  x_QueryString, x_error: String;
  x_cities_id: integer;
  GpSds: TSQLDataSet;
begin
  inherited;

  if (MasterCds.State = dsInsert) or (MasterCds.State = dsEdit) then
    MasterCds.Post;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM tsp_cities ' +
    'WHERE quotations_id = ' + IntToStr(MasterCds['quotations_id']) + ' ' +
    'AND StartCity = 1';
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_cities_id := 0;

  x_error := '';
  if (GpSds['x_Count'] = 0) then
    x_error := 'No Start City entered'
  else if (GpSds['x_Count'] > 1) then
    x_error := 'Only a single Start City should be enetered'
  else
    begin

      x_QueryString := 'SELECT cities_id FROM tsp_cities ' +
        'WHERE quotations_id = ' + IntToStr(MasterCds['quotations_id']) + ' ' +
         'AND StartCity = 1';
      GpSds.Close;
      GpSds.CommandText := x_QueryString;
      GpSds.Open;

      if (not GpSds.Eof) then
        x_cities_id := GpSds['cities_id'];

    end;

  GpSds.Free;

  if x_error > '' then
    begin
      ShowMessage(x_error);
      Abort;
    end;

  ErrorsCds.Close;
  ErrorsSds.Close;

  ErrorsSds.CommandText := 'EXEC p_Tsp2 ' + IntToStr(TspForm_Quotations_id) + ',' + IntToStr(x_cities_id) + ',1';

  ErrorsSds.Open;
  ErrorsCds.Open;

  TspCds.Close;
  TspSds.Close;

  TspSds.Params[0].Value := TspForm_Quotations_id;
  TspSds.Params[1].Value := x_cities_id;

  TspSds.Open;
  TspCds.Open;

end;

procedure TTspForm.MasterCdsAfterPost(DataSet: TDataSet);
var
  x_id: integer;
begin
  inherited;

  x_id := MasterCds['tsp_cities_id'];

  MasterCds.Active := false;
  MasterCds.Active := true;

  MasterCds.Locate('tsp_cities_id', x_id, []);

end;

end.
