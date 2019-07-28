unit MisProfitabilityFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxPC, cxControls, FMTBcd, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, DBClient, Provider, SqlExpr, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TMisProfitabilityForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    SummarySds: TSQLDataSet;
    SummaryDsp: TDataSetProvider;
    SummaryCds: TClientDataSet;
    SummaryDS: TDataSource;
    SummaryCdsMasterCode: TStringField;
    SummaryCdsMonthName: TStringField;
    SummaryCdsNumPax: TIntegerField;
    SummaryCdsCity: TStringField;
    SummaryCdsCost: TFMTBCDField;
    SummaryCdsRevenue: TFMTBCDField;
    SummaryCdsProfit: TFMTBCDField;
    SummaryCdsProfitPerPax: TFMTBCDField;
    SummaryCdsMonths_id: TIntegerField;
    SummaryCdsMargin: TFMTBCDField;
    InvoiceGrid: TcxGrid;
    InvoiceGridDBTableView1: TcxGridDBTableView;
    InvoiceGridLevel1: TcxGridLevel;
    InvoiceGridDBTableView1MasterCode: TcxGridDBColumn;
    InvoiceGridDBTableView1MonthName: TcxGridDBColumn;
    InvoiceGridDBTableView1NumPax: TcxGridDBColumn;
    InvoiceGridDBTableView1City: TcxGridDBColumn;
    InvoiceGridDBTableView1Cost: TcxGridDBColumn;
    InvoiceGridDBTableView1Revenue: TcxGridDBColumn;
    InvoiceGridDBTableView1Profit: TcxGridDBColumn;
    InvoiceGridDBTableView1ProfitPerPax: TcxGridDBColumn;
    InvoiceGridDBTableView1Months_id: TcxGridDBColumn;
    InvoiceGridDBTableView1Margin: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MisProfitabilityForm: TMisProfitabilityForm;

implementation

{$R *.dfm}

procedure TMisProfitabilityForm.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TMisProfitabilityForm.cxButton1Click(Sender: TObject);
begin

  SummarySds.Close;
  SummarySds.CommandText := 'EXEC p_MIS_Profit ''' +
    FormatDateTime('mm/dd/yyyy', cxDateEdit1.Date) + ''', ''' +
    FormatDateTime('mm/dd/yyyy', cxDateEdit2.Date) + ''',2 ';

  SummaryCds.Close;
  SummaryCds.Open;

end;

procedure TMisProfitabilityForm.FormDestroy(Sender: TObject);
begin
  MisProfitabilityForm := nil;
end;

procedure TMisProfitabilityForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMisProfitabilityForm.FormCreate(Sender: TObject);
begin
  Height := 600;
  Width := 850;
end;

end.

