unit ShortestRouteFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, FMTBcd, DB, DBClient, Provider, SqlExpr, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, ExtCtrls;

type
  TShortestDriveForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    cxFromCityLCMB: TcxLookupComboBox;
    FromCitiesSds: TSQLDataSet;
    FromCitiesDsp: TDataSetProvider;
    FromCitiesCds: TClientDataSet;
    FromCitiesCdscities_id: TIntegerField;
    FromCitiesCdscity: TStringField;
    FromCitiesCdscountry: TStringField;
    FromCitiesCdsstate: TStringField;
    FromCitiesDS: TDataSource;
    GroupBox1: TGroupBox;
    cxToCityLCMB: TcxLookupComboBox;
    ToCitiesSds: TSQLDataSet;
    ToCitiesDsp: TDataSetProvider;
    ToCitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    ToCitiesDS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShortestDriveForm: TShortestDriveForm;

implementation

{$R *.dfm}

end.
