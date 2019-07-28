unit StatesFm; //inherited

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterFm, FMTBcd, StdCtrls, DBCtrls, Grids, DBGrids,
  DBClient, DB, Provider, SqlExpr, ExtCtrls;

type
  TStatesForm = class(TCustomMasterForm)
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    LuxTaxDS: TSQLDataSet;
    LuxTaxCDS: TClientDataSet;
    LuxTaxCDSTaxkLoolUp: TStringField;
    LuxTaxDSrc: TDataSource;
    LuxTaxProvider: TDataSetProvider;
    TaxDS: TSQLDataSet;
    TaxProvider: TDataSetProvider;
    TaxCDS: TClientDataSet;
    LuxTaxCDSstatetaxes_id: TIntegerField;
    LuxTaxCDSwef: TSQLTimeStampField;
    LuxTaxCDStax: TBCDField;
    LuxTaxCDStaxes_id: TIntegerField;
    LuxTaxCDSac: TBooleanField;
    LuxTaxCDSnonac: TBooleanField;
    LuxTaxDSstatetaxes_id: TIntegerField;
    LuxTaxDSwef: TSQLTimeStampField;
    LuxTaxDStax: TBCDField;
    LuxTaxDStaxes_id: TIntegerField;
    LuxTaxDSac: TBooleanField;
    LuxTaxDSnonac: TBooleanField;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    procedure MasterCDSBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatesForm: TStatesForm;
  _StatesForm_Level: Integer;
implementation

{$R *.dfm}

procedure TStatesForm.MasterCDSBeforePost(DataSet: TDataSet);
begin
  inherited;
  //check for null state code
  if (MasterCds['StateCode'] = null) or (Trim(MasterCds['StateCode']) = '') then
    raise Exception.Create('Please enter the state code');
  //check for null state
  if (MasterCds['State'] = null) or (Trim(MasterCds['State']) = '') then
    raise Exception.Create('Please enter the state');
  //check for null country
  if (MasterCds['Countries_id'] = null) or (Trim(MasterCds['Countries_id']) = '') then
    raise Exception.Create('Please select a country');

end;

procedure TStatesForm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Height := 700;
  Self.Width := 1000;

  MasterTblName := 'States';
  MasterKeyField := 'States_id';
  AdmLevel := _StatesForm_Level;
{  LuxTaxCDS.Active := False;
  LuxTaxDS.Active := False;
  LuxTaxCDS.Active := True;
  LuxTaxDS.Active := True;
}  
end;

procedure TStatesForm.FormDestroy(Sender: TObject);
begin
  inherited;
  StatesForm := nil;
end;

end.
