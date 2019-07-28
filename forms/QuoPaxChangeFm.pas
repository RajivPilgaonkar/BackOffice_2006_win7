unit QuoPaxChangeFm;

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
  cxCalendar, cxTimeEdit;

type
  TQuoPaxChangeForm = class(TCustom_1MG_Form)
    MasterCdsQuoPax_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsWef: TSQLTimeStampField;
    MasterCdsNumPax: TIntegerField;
    MasterCdsNumSingles: TIntegerField;
    MasterCdsNumDoubles: TIntegerField;
    MasterCdsNumTriples: TIntegerField;
    MasterCdsNumTwins: TIntegerField;
    cxGrid1DBBandedTableView1QuoPax_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumPax: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumSingles: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumDoubles: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumTriples: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NumTwins: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WefTime: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ActivateInCustom;
    function IsMasterRecordDuplicate: Boolean;
  public
    { Public declarations }
  end;

var
  QuoPaxChangeForm: TQuoPaxChangeForm;
  QuoPaxChangeForm_Level: Integer;
  QuoPaxChangeForm_Quotations_id: Integer;


implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TQuoPaxChangeForm.FormCreate(Sender: TObject);
begin

  ActivateInCustom;

  MasterSds.Params[0].Value := QuoPaxChangeForm_Quotations_id;

  inherited;

end;

procedure TQuoPaxChangeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TQuoPaxChangeForm.FormDestroy(Sender: TObject);
begin
  inherited;
  QuoPaxChangeForm := nil;
end;

procedure TQuoPaxChangeForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'QuoPax';
  Custom_MasterKeyField := 'QuoPax_id';
  Custom_AdmLevel := QuoPaxChangeForm_Level;

  Custom_FormWidth := 840;
  Custom_FormHeight := 560;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;

end;


procedure TQuoPaxChangeForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TQuoPaxChangeForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if (MasterCds['Quotations_id'] = null) then
    raise Exception.Create('Please enter the quotations id');

  if (MasterCds['wef'] = null) then
    raise Exception.Create('Please enter the wef');

  if (MasterCds['NumSingles'] = null) then
    MasterCds['NumSingles'] := 0;

  if (MasterCds['NumDoubles'] = null) then
    MasterCds['NumDoubles'] := 0;

  if (MasterCds['NumTriples'] = null) then
    MasterCds['NumTriples'] := 0;

  if (MasterCds['NumTwins'] = null) then
    MasterCds['NumTwins'] := 0;

  if IsMasterRecordDuplicate then
    raise Exception.Create('Duplicate record found');

  inherited;

  if MasterCds['QuoPax_id'] = null then
    raise Exception.Create('QuoPax_id is not assigned');

end;

function TQuoPaxChangeForm.IsMasterRecordDuplicate: Boolean;
var
  x_QueryString: String;
  x_Duplicate: Boolean;
  GpSds: TSQLDataSet;
begin
  x_Duplicate := False;

  x_QueryString := 'SELECT COUNT(*) AS x_Count FROM QuoPax ' +
    'WHERE Quotations_id = ' + IntToStr(MasterCds['Quotations_id']) + ' ' +
    'AND Wef = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', MasterCds['wef']));

  if MasterCds.State = dsEdit then
    x_QueryString := x_QueryString + ' AND (QuoPax_id <> ' + IntToStr(MasterCds['QuoPax_id']) + ') ';

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


procedure TQuoPaxChangeForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['Quotations_id'] := QuoPaxChangeForm_Quotations_id;
end;

end.
