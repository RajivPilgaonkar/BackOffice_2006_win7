unit RptRoomingListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Provider, DBClient, StdCtrls, DBCtrls,
  Grids, DBGrids, ExtCtrls;

type
  TRptRoomingListForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    RoomDS: TDataSource;
    RoomDSP: TDataSetProvider;
    RoomQry: TSQLQuery;
    RoomCDS: TClientDataSet;
    TourCodeDS: TDataSource;
    TourCodeDSP: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeQry: TSQLQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    RoomCDSItineraries_id: TIntegerField;
    RoomCDStourcode: TStringField;
    RoomCDSBookings_id: TIntegerField;
    RoomCDSPaxName: TStringField;
    RoomCDSSex: TStringField;
    RoomCDSSS: TBooleanField;
    RoomCDSroomno: TIntegerField;
    RoomCDSroomsize: TStringField;
    RoomCDStourleader: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FilterTourDate();
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptRoomingListForm: TRptRoomingListForm;
  _SingleColor: TColor;
  _DoubleColor: TColor;
implementation

uses ItineraryFm, BackOfficeDM;
const SINGLE_COLOR1: TColor = $00BBFBDB;  // GREEN
const SINGLE_COLOR2: TColor = $00BBFBFF;  // GREEN ??
const DOUBLE_COLOR1: TColor = $0098F7FC;  //YELLOW
const DOUBLE_COLOR2: TColor = $00FFF7FC;  //YELLOW ??

{$R *.dfm}

procedure TRptRoomingListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRptRoomingListForm.FormDestroy(Sender: TObject);
begin
  RptRoomingListForm := nil;
end;

procedure TRptRoomingListForm.FormCreate(Sender: TObject);
begin
  RptRoomingListForm.Width := 696;
  RptRoomingListForm.Height := 480;
  TourCodecds.Close;
  TourCodeQry.Close;
  TourCodeQry.SQLConnection := BackOfficeDataModule.SQLConnection;
  TourCodeQry.SQL.Clear;
  TourCodeQry.SQL.Add('SELECT DISTINCT TourCode FROM RoomAssign ' +
    'WHERE Itineraries_id = ' + IntToStr( ItineraryForm.DepDateCDS['Itineraries_id']) + '');
  TourCodeQry.Open;
  TourCodeCDS.Open;
  TourCodeCds.First;
  DBLookupComboBox1.KeyValue := TourCodeCds['TourCode'];

  RoomCDS.Close;
  RoomQry.Close;
  RoomQry.SQLConnection := BackOfficeDataModule.SQLConnection;
  RoomQry.SQL.Clear;
  RoomQry.SQL.Add('SELECT ra.Itineraries_id, ra.tourcode, ra.Bookings_id, ' +
    'ra.PaxName, ra.Sex, ra.SingleSupplement as SS, ra.roomno, rs.roomsize, ' +
    'ra.tourleader FROM RoomAssign ra, RoomSizes rs WHERE ra.roomsizes_id = rs.roomsizes_id AND ' +
    'Itineraries_id = ' + IntToStr( ItineraryForm.DepDateCDS['Itineraries_id']) +
    ' ORDER BY tourcode,  ra.RoomSizes_id, RoomNo ');
  RoomQry.Open;
  RoomCDS.Open;
  FilterTourDate
end;

procedure TRptRoomingListForm.FilterTourDate();
var
sFilterTourdate : string;
begin
  sFilterTourdate:= 'Tourcode = ''' + TourCodeCds['TourCode'] + ''' ';
  RoomCDS.DisableControls;
  RoomCDS.Filter:=sFilterTourdate;
  RoomCDS.Filtered:=True;
  RoomCDS.Refresh;
  RoomCDS.EnableControls;
end;


procedure TRptRoomingListForm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  //FilterTourDate
end;

procedure TRptRoomingListForm.DBLookupComboBox1Click(Sender: TObject);
begin
  FilterTourDate
end;

procedure TRptRoomingListForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  DBGrid1.Canvas.Font.Color := clBlack;

  if ( UpperCase(RoomCDS['RoomSize']) = 'SINGLE') then
      DBGrid1.Canvas.Brush.Color := SINGLE_COLOR1
  else if ( UpperCase(RoomCDS['RoomSize']) = 'DOUBLE') then
    DBGrid1.Canvas.Brush.Color := DOUBLE_COLOR1;
  
  DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

end.
