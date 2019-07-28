unit SearchFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, FMTBcd, SqlExpr,
  Provider, DB, DBClient;

type
  TSearchForm = class(TForm)
    SrchEF: TEdit;
    QryGrid: TDBGrid;
    Panel1: TPanel;
    OkBB: TBitBtn;
    CancelBB: TBitBtn;
    SearchDS: TDataSource;
    SearchCDS: TClientDataSet;
    SearchDSP: TDataSetProvider;
    SearchQry: TSQLQuery;
    procedure SrchEFKeyPress(Sender: TObject; var Key: Char);
    procedure QryGridKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  //GENERIC SEARCH FROM
  //INPUT PARAMETERS:
  // _SrchForm_sql_str : the query to display items in the grid, include select,from,
  // and in the where clause pass the last parameter as the search parameter
  // eg: " SELECT .. FROM .. WHERE .. AND Voucher = "
  // _SrchForm_sql_order_str :  sets the order by field to display in the grid
  // eg: " ORDER BY .. .."
  // _SrchForm_Disable_Column : the primary key that will be used to return, it will be
  // disabled from being visible in the form eg: "Vouchers_id"
  SearchForm: TSearchForm;
  _SrchForm_sql_str: string;
  _SrchForm_sql_order_str: string;
  _SrchForm_Disable_Column: String;
  tSearchQry: TSQLQuery;
  _SearchStr: String;
  _LikeStr :String;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TSearchForm.SrchEFKeyPress(Sender: TObject; var Key: Char);
var
  i,cnt: integer;
begin
  //tSearchQry := TSQLQuery.Create(nil);
  //tSearchQry.SQLConnection := BackOfficeDataModule.SQLConnection;

  if key = chr(13) then
    begin
      _SearchStr := '';
      _LikeStr := '''%' + SrchEF.Text + '%''' ;
      _SearchStr := SrchEF.Text;
      SearchCDS.Active := False;
      SearchQry.Close;
      SearchQry.SQL.Clear;
      SearchQry.SQL.Add(_SrchForm_sql_str + _LikeStr + _SrchForm_sql_order_str);
      SearchQry.Open;
      SearchCDS.Active := True;

      if SearchCDS.RecordCount > 0 then
        SearchCDS.First;

      if not SearchCDS.EOF then
        begin
          QryGrid.SetFocus;
          cnt := QryGrid.Columns.Count;
          for i := 0 to cnt-1 do
            begin
              if QryGrid.Columns[i].Width > 200 then
                 QryGrid.Columns[i].Width := 200;

              if QryGrid.Columns[i].FieldName =_SrchForm_Disable_Column then
                 QryGrid.Columns[i].Visible:=False;

            end;
        end;
     end;
  //tSearchQry.Free;
end;

procedure TSearchForm.QryGridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
    begin
      if SearchCDS.EOF then
        CancelBB.SetFocus
      else
        OkBB.SetFocus;
    end;
end;

end.
