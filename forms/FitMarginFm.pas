unit FitMarginFm;

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
  cxDBLookupComboBox;

type
  TFitMarginForm = class(TCustom_1MG_Form)
    MasterCdsFitMargins_id: TIntegerField;
    MasterCdsTrsType: TIntegerField;
    MasterCdsTrsTypeDesc: TStringField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsMargin: TFMTBCDField;
    MasterCdsFromAmt: TFMTBCDField;
    MasterCdsToAmt: TFMTBCDField;
    MasterCdsOrderNo: TIntegerField;
    cxGrid1DBBandedTableView1FitMargins_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TrsType: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TrsTypeDesc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Margin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FromAmt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ToAmt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn;
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
    TicketCdsTickets_id: TIntegerField;
    TicketCdsDetails: TStringField;
    TicketDs: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateInCustom;
  end;

var
  FitMarginForm: TFitMarginForm;
  FitMarginForm_Level: Integer;
implementation

{$R *.dfm}

procedure TFitMarginForm.FormCreate(Sender: TObject);
begin
  Panel1.Visible := False;
  cxButtonUtilities.Visible := False;

  ActivateInCustom;

  inherited;

  TicketCds.Open;
end;

procedure TFitMarginForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFitMarginForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FitMarginForm := nil;
end;

procedure TFitMarginForm.ActivateInCustom;
begin
  Custom_MasterCdsName := 'FitMargins';
  Custom_MasterKeyField := 'FitMargins_id';
  Custom_AdmLevel := FitMarginForm_Level;

  Custom_FormWidth := 710;
  Custom_FormHeight := 550;

  Width := Custom_FormWidth;
  Height := Custom_FormHeight;
end;

procedure TFitMarginForm.FormActivate(Sender: TObject);
begin
  inherited;
  ActivateInCustom;
  cxGrid1.SetFocus;
end;

procedure TFitMarginForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  if MasterCds['Margin'] = null then
    MasterCds['Margin'] := 0;
end;

end.
