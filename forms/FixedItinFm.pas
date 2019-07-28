unit FixedItinFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  Provider, SqlExpr, StdCtrls, Buttons, DBCtrls, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons, Menus, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, cxMemo, cxDBEdit, cxPC,
  cxDBLookupComboBox;

type
  TFixedItinForm = class(TCustomMasterCxGridForm)
    MasterCdsFixedItin_id: TIntegerField;
    MasterCdsTitle: TStringField;
    MasterCdsOneLiner: TStringField;
    MasterCdsIntroduction: TMemoField;
    MasterCdsItinerary: TMemoField;
    CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Title: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheetIntro: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxTabSheetItin: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxTabSheetOneLiner: TcxTabSheet;
    cxDBMemo4: TcxDBMemo;
    MasterCdsQuotes: TMemoField;
    MasterCdsAdv: TMemoField;
    MasterCdsTripHighlights: TMemoField;
    cxTabSheetHigh: TcxTabSheet;
    cxTabSheetQuote: TcxTabSheet;
    cxTabSheetAdvert: TcxTabSheet;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo5: TcxDBMemo;
    cxDBMemo6: TcxDBMemo;
    MasterCdsRegions_id: TIntegerField;
    RegionSds: TSQLDataSet;
    RegionDsp: TDataSetProvider;
    RegionDs: TDataSource;
    RegionCds: TClientDataSet;
    RegionCdsRegions_id: TIntegerField;
    RegionCdsTitle: TStringField;
    CustomMasterCxGridDBTableView1Regions_id: TcxGridDBColumn;
    MasterCdsReadyTours: TBooleanField;
    MasterCdsItinDates: TMemoField;
    MasterCdsInclusions: TMemoField;
    cxTabSheetDeparture: TcxTabSheet;
    cxTabSheetIncl: TcxTabSheet;
    cxDBMemo7: TcxDBMemo;
    cxDBMemo8: TcxDBMemo;
    cxTabSheetPrice: TcxTabSheet;
    cxDBMemo9: TcxDBMemo;
    MasterCdsPrices: TMemoField;
    MasterCdsOrderNo: TIntegerField;
    CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn;
    MasterCdsDuration: TMemoField;
    cxTabSheetDuration: TcxTabSheet;
    cxDBMemo10: TcxDBMemo;
    MasterCdsQuotationRef: TStringField;
    CustomMasterCxGridDBTableView1QuotationRef: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    function IsRecordDuplicate: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FixedItinForm: TFixedItinForm;
  _FixedItinForm_Level: Integer;
  _FixedItinForm_Type: Integer;

implementation

uses BackOfficeDM, GeneralUt;

{$R *.dfm}

procedure TFixedItinForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'FixedItin';
  MasterKeyField := 'FixedItin_id';
  AdmLevel := _FixedItinForm_Level;

  if _FixedItinForm_Type = 0 then
    begin
      MasterSds.Params[0].Value := false;
      Caption := 'Itinerary Ideas';
//      cxTabSheet7.TabVisible := false;
//      cxTabSheet8.TabVisible := false;
    end
  else
    begin
      MasterSds.Params[0].Value := true;
      Caption := 'Ready Tours';
    end;

  inherited;

  RegionCds.Open;

  cxPageControl1.ActivePageIndex := 0;

end;

procedure TFixedItinForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FixedItinForm := nil;
end;

procedure TFixedItinForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (MasterCds['Title'] = null) or (Trim(MasterCds['Title']) = '') then
    raise Exception.Create('Please enter the Title.');

  if _FixedItinForm_Type = 0 then
    MasterCds['ReadyTours'] := false
  else
    MasterCds['ReadyTours'] := true;

  if MasterCds['Title'] <> null then
    begin
      if (MasterCds['url'] = null) or (trim(MasterCds['url']) = '') then
        MasterCds['url'] := GetNextUrlString(GetUrlString(MasterCds['Title']), 2);

    end;

  if (IsRecordDuplicate) then
    raise exception.create ('Duplicate Record found');

end;

function TFixedItinForm.IsRecordDuplicate: Boolean;
var
  QueryString: string;
  x_duplicate: boolean;
  GpSds: TSQLDataSet;
begin

  x_duplicate := False;

  QueryString := 'SELECT COUNT(*) AS x_count FROM FixedItin ' +
    'WHERE Title = ''' + MasterCds['Title'] + ''' ' +
    'AND ReadyTours = ' + IntToStr(_FixedItinForm_Type) + ' ';

  if MasterCds.State = dsEdit then
    QueryString := QueryString + ' AND (FixedItin_id <> ' + IntToStr(MasterCds['FixedItin_id']) + ') ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (GpSds['x_count'] > 0) then
    x_duplicate := True;

  GpSds.Free;

  Result := x_duplicate;

end;


end.
