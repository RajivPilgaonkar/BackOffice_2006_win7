unit QuoCostingTraceDateFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, DBCtrls,
  ExtCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TQuoCostingTraceDateForm = class(TForm)
    Panel2: TPanel;
    KeyIdDBText: TDBText;
    cxButton2: TcxButton;
    Panel1: TPanel;
    MasterSds: TSQLDataSet;
    MasterDsp: TDataSetProvider;
    MasterCDS: TClientDataSet;
    MasterDS: TDataSource;
    MasterCDSRecordType: TIntegerField;
    MasterCDSDescription: TStringField;
    MasterCDSQty: TFMTBCDField;
    MasterCDSRate: TFMTBCDField;
    MasterCDSCost: TFMTBCDField;
    MasterCDSCostingCode: TStringField;
    DBGrid1: TDBGrid;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterLevel1: TcxGridLevel;
    cxGridMasterDBBandedTableView1RecordType: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Description: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Rate: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1CostingCode: TcxGridDBBandedColumn;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleYellow: TcxStyle;
    MasterCDSQuoCostingTrace_id: TIntegerField;
    MasterCDSQuoLines_id: TIntegerField;
    cxGridMasterDBBandedTableView1QuoCostingTrace_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cxGridMasterDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoCostingTraceDateForm: TQuoCostingTraceDateForm;
  _QuoCostingTraceDateForm_Level : Integer;
  _QuoCostingTraceDateForm_Quotations_id: integer;
  _QuoCostingTraceDateForm_QuoLines_id: integer;

  const
    Colour_GREEN: integer = $00BBFBDB ;
    Colour_YELLOW: integer = $0098F7FC ;
    Colour_RED: integer = $00D7CDFC ;

  implementation

uses BackOfficeDM, VouServicesFm, MainFm, GeneralUt, Math;

{$R *.dfm}

procedure TQuoCostingTraceDateForm.FormCreate(Sender: TObject);
begin
  MasterSds.Active := False;
  MasterCds.Active := False;

  MasterSds.CommandText := 'SELECT * FROM QuoCostingTraceDates ' +
    'WHERE QuoLines_id = ' + IntToStr(_QuoCostingTraceDateForm_QuoLines_id) + '  ' +
    'ORDER BY RecordType, CostingCode';

  MasterSds.Active := True;
  MasterCds.Active := True;

end;

procedure TQuoCostingTraceDateForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TQuoCostingTraceDateForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if MasterCDS['RecordType'] = 1 then
    DBGrid1.Canvas.brush.Color:=Colour_YELLOW
  else if MasterCDS['RecordType'] = 2 then
    DBGrid1.Canvas.brush.Color:=Colour_GREEN
  else if MasterCDS['RecordType'] = 3 then
    DBGrid1.Canvas.Brush.Color := Colour_RED
  else
    DBGrid1.Canvas.Font.Color := clBlack;


  DBGrid1.Canvas.Font.Color := clBlack;

  DBGrid1.DefaultDrawDataCell(Rect,Column.Field, State);
end;

procedure TQuoCostingTraceDateForm.cxGridMasterDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumnRecordType: TcxCustomGridTableItem;
begin

  AColumnRecordType := (Sender as TcxGridDBBandedTableView).GetColumnByFieldName('RecordType');

  if (ARecord.Values[AColumnRecordType.Index] = 1) then
    AStyle := cxStyleYellow
  else if (ARecord.Values[AColumnRecordType.Index] = 2) then
    AStyle := cxStyleGreen
  else if (ARecord.Values[AColumnRecordType.Index] = 3) then
    AStyle := cxStyleRed;

end;

end.
