unit RouteAlternateFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxDropDownEdit, cxCalendar, StdCtrls, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls,
  cxContainer, cxEdit, cxGroupBox, ExtCtrls, cxSpinEdit, cxTimeEdit, Menus,
  cxLookAndFeelPainters, cxButtons, FMTBcd, DB, DBClient, Provider, SqlExpr,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxRadioGroup, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TRouteAlternateForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGridOption1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridOption1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridOption1Level1: TcxGridLevel;
    RouteFinderSds: TSQLDataSet;
    RouteFinderDsp: TDataSetProvider;
    RouteFinderCds: TClientDataSet;
    RouteFinderDs: TDataSource;
    cxGridOption1DBBandedTableView1Options_id: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1OptionNo: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1FromCity: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ToCity: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1Mode: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ModeStr: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1ModeNo: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1Departure: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1Arrival: TcxGridDBBandedColumn;
    cxGridOption1DBBandedTableView1MaxOption: TcxGridDBBandedColumn;
    cxCloseButton: TcxButton;
    RouteFinderCdsOptions_id: TIntegerField;
    RouteFinderCdsOptionNo: TIntegerField;
    RouteFinderCdsFromCities_id: TIntegerField;
    RouteFinderCdsToCities_id: TIntegerField;
    RouteFinderCdsFromCity: TStringField;
    RouteFinderCdsToCity: TStringField;
    RouteFinderCdsMode: TIntegerField;
    RouteFinderCdsModeStr: TStringField;
    RouteFinderCdsModeNo: TStringField;
    RouteFinderCdsTrainNo: TStringField;
    RouteFinderCdsDeparture: TSQLTimeStampField;
    RouteFinderCdsArrival: TSQLTimeStampField;
    RouteFinderCdsMaxOption: TIntegerField;
    RouteFinderCdsModePreference: TIntegerField;
    cxGenerateButton: TcxButton;
    cxCancelButton: TcxButton;
    cxOkButton: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxCloseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RouteAlternateForm: TRouteAlternateForm;
  _RouteAlternateForm_Type: integer;
  _RouteAlternateForm_FromCities_id: integer;
  _RouteAlternateForm_ToCities_id: integer;
  _RouteAlternateForm_Hops: integer;
  _RouteAlternateForm_ModePreference: integer;
  _RouteAlternateForm_Date: TDateTime;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRouteAlternateForm.FormCreate(Sender: TObject);
var
  QueryString: string;
begin

  Height := 650;
  Width := 950;

  if _RouteAlternateForm_Type = 1 then
    begin
      cxOkButton.Visible := False;
      cxCancelButton.Visible := False;
    end;

  RouteFinderCds.Active := False;
  RouteFinderSds.Active := False;

{
  QueryString := 'SELECT * FROM dbo.fn_x_Hop (''' +
    FormatDateTime('mm/dd/yyyy HH:mm',_RouteAlternateForm_Date) + ''',' +
    IntToStr(_RouteAlternateForm_FromCities_id) + ',' +
    IntToStr(_RouteAlternateForm_ToCities_id) + ',' +
    IntToStr(_RouteAlternateForm_Hops) + ',' +
    IntToStr(_RouteAlternateForm_ModePreference) + ') ' +
    'WHERE OptionNo > 1';
}

  QueryString := 'EXEC p_RouteFinder_x ''' +
    FormatDateTime('mm/dd/yyyy HH:mm',_RouteAlternateForm_Date) + ''',' +
    IntToStr(_RouteAlternateForm_FromCities_id) + ',' +
    IntToStr(_RouteAlternateForm_ToCities_id) + ',' +
    '3,2,' + IntToStr(_RouteAlternateForm_ModePreference);

  RouteFinderSds.CommandText := QueryString;
  RouteFinderSds.Active := True;
  RouteFinderCds.Active := True;

  cxGridOption1DBBandedTableView1.ViewData.Expand(True);

end;

procedure TRouteAlternateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if _RouteAlternateForm_Type = 1 then
    Action := caFree;
end;

procedure TRouteAlternateForm.FormDestroy(Sender: TObject);
begin
  if _RouteAlternateForm_Type = 1 then
    RouteAlternateForm := nil;
end;

procedure TRouteAlternateForm.cxCloseButtonClick(Sender: TObject);
begin
  Close;
end;

end.
