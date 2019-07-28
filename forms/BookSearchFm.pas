unit BookSearchFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, FMTBcd, SqlExpr,
  Provider, DB, DBClient;

type
  TBookSeacrhForm = class(TForm)
    GroupBox1: TGroupBox;
    RefNoRB: TRadioButton;
    PaxNameRB: TRadioButton;
    BookRB: TRadioButton;
    RefEF: TEdit;
    BookEF: TEdit;
    PaxnameEF: TEdit;
    PaxNameGrid: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    OkBB: TBitBtn;
    SearchDS: TDataSource;
    SearchCDS: TClientDataSet;
    SearchDSP: TDataSetProvider;
    SearchQry: TSQLQuery;
    procedure PaxnameEFKeyPress(Sender: TObject; var Key: Char);
    procedure RefEFChange(Sender: TObject);
    procedure BookEFChange(Sender: TObject);
    procedure PaxnameEFChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookSeacrhForm: TBookSeacrhForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TBookSeacrhForm.PaxnameEFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      SearchQry.Close;
      SearchQry.SQL.Clear;
      SearchQry.SQL.Add('SELECT Bookings_id,Name FROM BookingsClients ' +
        'WHERE Name ' +
        'LIKE ''%' + PaxNameEF.Text + '%'' ');
      SearchQry.Open;
      SearchCDS.Active := True;
      SearchCDS.Refresh;

      if not SearchCDS.EOF then
        PaxNameGrid.SetFocus;
    end;
end;

procedure TBookSeacrhForm.RefEFChange(Sender: TObject);
begin
  RefNoRB.Checked := True;
end;

procedure TBookSeacrhForm.BookEFChange(Sender: TObject);
begin
  BookRB.Checked := True;
end;

procedure TBookSeacrhForm.PaxnameEFChange(Sender: TObject);
begin
  PaxNameRB.Checked := True;
end;

end.
