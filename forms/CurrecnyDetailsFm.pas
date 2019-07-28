unit CurrecnyDetailsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_1MG_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxContainer, cxLabel, cxDBLabel,
  cxButtons, ExtCtrls;

type
  TCurrecnyDetailsForm = class(TCustom_1MG_Form)
    MasterCdscurrencydetails_id: TIntegerField;
    MasterCdsexchangerate: TBCDField;
    MasterCdswef: TSQLTimeStampField;
    MasterCdscurrencies_id: TIntegerField;
    MasterCdscountries_id: TIntegerField;
    cxGrid1DBBandedTableView1currencydetails_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1exchangerate: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn;
    Label1: TLabel;
    cxCurrecnyLCMB: TcxLookupComboBox;
    CurrenciesSds: TSQLDataSet;
    CurrenciesDsp: TDataSetProvider;
    CurrenciesCds: TClientDataSet;
    CurrenciesDs: TDataSource;
    CurrenciesCdsCurrencies_id: TIntegerField;
    CurrenciesCdsCurrencyCode: TStringField;
    CurrenciesCdsCountry: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CurrecnyDetailsForm: TCurrecnyDetailsForm;

implementation

{$R *.dfm}

end.
