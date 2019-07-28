unit FitMarginQuoFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBCtrls,
  DBClient, Provider, SqlExpr, StdCtrls, Buttons, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLookAndFeelPainters, cxButtons, Menus, cxCalendar,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel,
  cxGroupBox;

type
  TFitMarginQuoForm = class(TCustomMasterCxGridForm)
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
    TicketDs: TDataSource;
    MasterCdsTrsType: TIntegerField;
    MasterCdsTrsTypeDesc: TStringField;
    MasterCdsTickets_id: TIntegerField;
    MasterCdsMargin: TFMTBCDField;
    TicketCdsTickets_id: TIntegerField;
    TicketCdsDetails: TStringField;
    CustomMasterCxGridDBTableView1FitMargins_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TrsType: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TrsTypeDesc: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Tickets_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Margin: TcxGridDBColumn;
    MasterCdsFitMarginQuotations_id: TIntegerField;
    MasterCdsQuotations_id: TIntegerField;
    MasterCdsFromAmt: TFMTBCDField;
    MasterCdsToAmt: TFMTBCDField;
    MasterCdsOrderNo: TIntegerField;
    CustomMasterCxGridDBTableView1FromAmt: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToAmt: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MasterCdsBeforePost(DataSet: TDataSet);
    procedure InsertMargins;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FitMarginQuoForm: TFitMarginQuoForm;
  _FitMarginQuoForm_Level: Integer;
  _FitMarginQuoForm_Quotations_id: Integer;

implementation

uses BackOfficeDM, GeneralUt, SearchSortFm;

{$R *.dfm}

procedure TFitMarginQuoForm.FormCreate(Sender: TObject);
begin

  InsertMargins;

  TicketSds.Active := True;
  TicketCds.Active := True;

  MasterCds.Filter := 'Quotations_id = ' + IntToStr(_FitMarginQuoForm_Quotations_id);
  MasterCds.Filtered := True;

  MasterCdsName := 'FitMarginQuotations';
  MasterKeyField := 'FitMarginQuotations_id';

  AdmLevel := _FitMarginQuoForm_Level;

  inherited;

end;

procedure TFitMarginQuoForm.InsertMargins;
var
  GpSds : TSQLDataSet;
  QueryString: String;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoInsertFitMargin  ' + IntToStr(_FitMarginQuoForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  GpSds.Free;

end;

procedure TFitMarginQuoForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FitMarginQuoForm := nil;
end;

procedure TFitMarginQuoForm.MasterCdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  if MasterCds['Margin'] = null then
    MasterCds['Margin'] := 0;

end;

end.
