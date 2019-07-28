unit ImportErrorsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, FMTBcd, DBClient,
  Provider, SqlExpr;

type
  TImportErrorsForm = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ErrorsSds: TSQLDataSet;
    ErrorsDsp: TDataSetProvider;
    ErrorsCds: TClientDataSet;
    ErrorsDS: TDataSource;
    ErrorsCdsImportErrors_id: TIntegerField;
    ErrorsCdsRowNo: TIntegerField;
    ErrorsCdsErrorDescription: TStringField;
    cxGrid1DBTableView1ImportErrors_id: TcxGridDBColumn;
    cxGrid1DBTableView1RowNo: TcxGridDBColumn;
    cxGrid1DBTableView1ErrorDescription: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportErrorsForm: TImportErrorsForm;

implementation

{$R *.dfm}

procedure TImportErrorsForm.FormCreate(Sender: TObject);
begin
  ImportErrorsForm.ErrorsCds.Active := False;
  ImportErrorsForm.ErrorsCds.Active := True;
end;

end.
