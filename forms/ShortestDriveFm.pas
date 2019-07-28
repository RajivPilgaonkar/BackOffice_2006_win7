unit ShortestDriveFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, FMTBcd, DB, DBClient, Provider, SqlExpr, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, ExtCtrls,
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxButtons, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGroupBox;

type
  TShortestDriveForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TcxGroupBox;
    cxFromCityLCMB: TcxLookupComboBox;
    FromCitiesSds: TSQLDataSet;
    FromCitiesDsp: TDataSetProvider;
    FromCitiesCds: TClientDataSet;
    FromCitiesCdscities_id: TIntegerField;
    FromCitiesCdscity: TStringField;
    FromCitiesCdscountry: TStringField;
    FromCitiesCdsstate: TStringField;
    FromCitiesDS: TDataSource;
    GroupBox1: TcxGroupBox;
    cxToCityLCMB: TcxLookupComboBox;
    ToCitiesSds: TSQLDataSet;
    ToCitiesDsp: TDataSetProvider;
    ToCitiesCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    ToCitiesDS: TDataSource;
    cxDisplayButton: TcxButton;
    CustomMasterCxGrid: TcxGrid;
    CustomMasterCxGridDBTableView1: TcxGridDBTableView;
    CustomMasterCxGridLevel1: TcxGridLevel;
    DriveSds: TSQLDataSet;
    DriveDsp: TDataSetProvider;
    DriveDs: TDataSource;
    DriveCds: TClientDataSet;
    DriveCdsRowID: TIntegerField;
    DriveCdsFromNodeName: TStringField;
    DriveCdsToNodeName: TStringField;
    DriveCdsCost: TIntegerField;
    DriveCdsCost2: TIntegerField;
    DriveCdsFromNodes_id: TIntegerField;
    DriveCdsToNodes_id: TIntegerField;
    CustomMasterCxGridDBTableView1RowID: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromNodeName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToNodeName: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Cost2: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1FromNodes_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1ToNodes_id: TcxGridDBColumn;
    procedure cxDisplayButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShortestDriveForm: TShortestDriveForm;
  _ShortestDriveForm_Level: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TShortestDriveForm.cxDisplayButtonClick(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_QuoShortestRoute ''' + trim(cxFromCityLCMB.Text) + ''',''' +
    trim(cxToCityLCMB.Text) + '''';
  GpSds.ExecSQL;

  GpSds.Free;

  DriveSds.Close;
  DriveSds.CommandText := 'SELECT RowID, FromNodeName, ToNodeName, Cost, Cost2, FromNodes_id, ToNodes_id ' +
    'FROM Map';
  DriveSds.Open;

  DriveCds.Close;
  DriveCds.Open;

end;

procedure TShortestDriveForm.FormDestroy(Sender: TObject);
begin
  ShortestDriveForm := nil;
end;

procedure TShortestDriveForm.FormCreate(Sender: TObject);
begin
  FromCitiesCds.Open;
  ToCitiesCds.Open;

  Height := 520;
  Width := 720;
end;

procedure TShortestDriveForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

