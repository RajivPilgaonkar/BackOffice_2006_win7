unit CustomListFm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, Db, DBTables;

type
  TCustomListForm = class(TForm)
    TopPanel: TPanel;
    MasterTbl: TTable;
    MasterDS: TDataSource;
    MiddlePanel: TPanel;
    DBNavigator1: TDBNavigator;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MasterTblBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    Tbl_State: TDataSetState;
  public
    { Public declarations }
  end;

var
  CustomListForm: TCustomListForm;
implementation

uses MainFm, AccountsDM;

{$R *.DFM}

procedure TCustomListForm.FormDestroy(Sender: TObject);
begin
  CustomListForm := nil;
end;

procedure TCustomListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ListTbl.Active := False;
  Action := caFree; 
end;

procedure TCustomListForm.FormCreate(Sender: TObject);
begin
  ListTbl.Active := True;
//  DBNavigator1.
end;

procedure TCustomListForm.MasterTblBeforePost(DataSet: TDataSet);
begin
  Tbl_State := ListTbl.State;
end;

end.
