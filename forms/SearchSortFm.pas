unit SearchSortFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, Provider, DBClient, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxContainer, cxGroupBox;

type
  TSearchSortForm = class(TForm)
    Panel1: TPanel;
    OkBB: TBitBtn;
    CancelBB: TBitBtn;
    SearchSds: TSQLDataSet;
    SearchCds: TClientDataSet;
    SearchDS: TDataSource;
    SearchDsp: TDataSetProvider;
    SearchGrid: TcxGrid;
    SearchGridDBTableView1: TcxGridDBTableView;
    SearchGridLevel1: TcxGridLevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure SearchGridDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchSortForm: TSearchSortForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TSearchSortForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      OkBB.SetFocus;
    end;
end;

procedure TSearchSortForm.FormShow(Sender: TObject);
begin
  SearchGrid.SetFocus;
end;

procedure TSearchSortForm.SearchGridDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.OptionsBehavior.IncSearchItem := AFocusedItem;
end;

end.
