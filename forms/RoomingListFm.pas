unit RoomingListFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxButtons, ExtCtrls, FMTBcd, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxCheckBox, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DBClient,
  Provider, SqlExpr, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TRoomingListForm = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    CloseBtn: TcxButton;
    Label1: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DoublesLabel: TLabel;
    SinglesLabel: TLabel;
    MasterTourLabel: TLabel;
    RoomingListSds: TSQLDataSet;
    RoomingListDsp: TDataSetProvider;
    RoomingListCds: TClientDataSet;
    RoomingListDS: TDataSource;
    RoomingListSinglesSds: TSQLDataSet;
    RoomingListSinglesDsp: TDataSetProvider;
    RoomingListSinglesCds: TClientDataSet;
    RoomingListSinglesDS: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PaxName: TcxGridDBColumn;
    cxGrid1DBTableView1RefLookup: TcxGridDBColumn;
    cxGrid1DBTableView1Male: TcxGridDBColumn;
    cxGrid1DBTableView1SingleSupplement: TcxGridDBColumn;
    cxGrid1DBTableView1ShareWithBookingsClients_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TourSds: TSQLDataSet;
    TourDsp: TDataSetProvider;
    TourCds: TClientDataSet;
    TourDS: TDataSource;
    TourCdsTours: TStringField;
    cxTourLcmb: TcxLookupComboBox;
    RoomingListSinglesCdsRoomingList_id: TIntegerField;
    RoomingListSinglesCdsBookingsClients_id: TIntegerField;
    RoomingListSinglesCdsBookings_id: TIntegerField;
    RoomingListSinglesCdsShareWithBookingsClients_id: TIntegerField;
    RoomingListSinglesCdsMale: TBooleanField;
    RoomingListSinglesCdsSingleSupplement: TBooleanField;
    RoomingListSinglesCdsTourLeader: TBooleanField;
    RoomingListSinglesCdsTourLeaderTrainee: TBooleanField;
    RoomingListSinglesCdsRoomNo: TIntegerField;
    RoomingListSinglesCdsRoomSizes_id: TIntegerField;
    RoomingListSinglesCdsItineraries_id: TIntegerField;
    RoomingListSinglesCdsTours: TStringField;
    RoomingListCdsRoomingList_id: TIntegerField;
    RoomingListCdsBookingsClients_id: TIntegerField;
    RoomingListCdsBookings_id: TIntegerField;
    RoomingListCdsShareWithBookingsClients_id: TIntegerField;
    RoomingListCdsMale: TBooleanField;
    RoomingListCdsSingleSupplement: TBooleanField;
    RoomingListCdsTourLeader: TBooleanField;
    RoomingListCdsTourLeaderTrainee: TBooleanField;
    RoomingListCdsRoomNo: TIntegerField;
    RoomingListCdsRoomSizes_id: TIntegerField;
    RoomingListCdsItineraries_id: TIntegerField;
    RoomingListCdsTours: TStringField;
    RoomingListCdsTL_Calc: TBooleanField;
    RoomingListCdsTTL_Calc: TBooleanField;
    cxGrid1DBTableView1RoomNo: TcxGridDBColumn;
    cxGrid1DBTableView1RoomSizes_id: TcxGridDBColumn;
    PaxListSds: TSQLDataSet;
    PaxListDsp: TDataSetProvider;
    PaxListCds: TClientDataSet;
    PaxListCdsBookingsClients_id: TIntegerField;
    PaxListCdsMale: TBooleanField;
    PaxListCdsName: TStringField;
    PaxListCdsCancelledOn: TSQLTimeStampField;
    PaxListCdsReference: TStringField;
    PaxListCdsBookings_id: TIntegerField;
    PaxListDS: TDataSource;
    RoomingListCdsPaxName: TStringField;
    RoomingListCdsRefLookup: TStringField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PaxName: TcxGridDBColumn;
    cxGrid2DBTableView1RefLookup: TcxGridDBColumn;
    cxGrid2DBTableView1Male: TcxGridDBColumn;
    cxGrid2DBTableView1SingleSupplement: TcxGridDBColumn;
    cxGrid2DBTableView1ShareWithBookingsClients_id: TcxGridDBColumn;
    cxGrid2DBTableView1RoomNo: TcxGridDBColumn;
    cxGrid2DBTableView1RoomSizes_id: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    RoomingListSinglesCdsTL_Calc: TBooleanField;
    RoomingListSinglesCdsTTL_Calc: TBooleanField;
    RoomingListSinglesCdsPaxName: TStringField;
    RoomingListSinglesCdsRefLookup: TStringField;
    RoomingListCdsTourCode: TStringField;
    RoomingListCdsTourDate: TSQLTimeStampField;
    RoomingListSinglesCdsTourCode: TStringField;
    RoomingListSinglesCdsTourDate: TSQLTimeStampField;
    cxGridDBTableView1DBTourLeader: TcxGridDBColumn;
    cxGridDBTableView1DBTourLeaderTrainee: TcxGridDBColumn;
    cxGrid1DBTableView1DBTourLeader: TcxGridDBColumn;
    cxGrid1DBTableView1DBTourLeaderTrainee: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SetLabel;
    procedure CloseBtnClick(Sender: TObject);
    procedure RoomingListCdsCalcFields(DataSet: TDataSet);
    procedure FilterRoomingList;
    procedure RoomingListCdsAfterPost(DataSet: TDataSet);
    procedure RoomingListSinglesCdsAfterPost(DataSet: TDataSet);
    procedure cxTourLcmbPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RoomingListForm: TRoomingListForm;
  _RoomingListForm_Itineraries_id: integer;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TRoomingListForm.FormDestroy(Sender: TObject);
begin
  RoomingListForm := nil;
end;

procedure TRoomingListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRoomingListForm.FormCreate(Sender: TObject);
begin

  Self.Height := 630;
  self.Width := 800;

  SetLabel;

  TourCds.Active := False;
  TourSds.Active := False;
  TourSds.CommandText := 'SELECT DISTINCT Tours FROM RoomingList '+
    'WHERE Itineraries_id = ' + IntToStr(_RoomingListForm_Itineraries_id) + ' ';
  TourCds.Active := True;
  cxTourLCMB.EditValue := TourCds['Tours'];

  BackOfficeDataModule.RoomSizeCds.Active := True;

  FilterRoomingList;

end;

procedure TRoomingListForm.FilterRoomingList;
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  RoomingListCds.Active := False;
  RoomingListCds.Filter := ' Itineraries_id = ' + IntToStr(_RoomingListForm_Itineraries_id) + ' ' +
    'AND Tours = ''' + cxTourLCMB.EditValue + ''' ' +
    'AND RoomSizes_id <> 1';
  RoomingListCds.Filtered := True;
  RoomingListCds.Active := True;

  RoomingListSinglesCds.Active := False;
  RoomingListSinglesCds.Filter := ' Itineraries_id = ' + IntToStr(_RoomingListForm_Itineraries_id) + ' ' +
    'AND Tours = ''' + cxTourLCMB.EditValue + ''' ' +
    'AND RoomSizes_id = 1';
  RoomingListSinglesCds.Filtered := True;
  RoomingListSinglesCds.Active := True;

  QueryString := 'SELECT MAX(RoomNo) AS MaxNo FROM RoomingList ' +
    'WHERE Itineraries_id = ' + IntToStr(_RoomingListForm_Itineraries_id) + ' ' +
    'AND Tours = ''' + cxTourLCMB.EditValue + ''' ' +
    'AND RoomSizes_id = 1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['MaxNo']<>null) then
    SinglesLabel.Caption := IntToStr(GpSds['MaxNo']) + ' - Singles '
  else if (not GpSds.Eof) and (GpSds['MaxNo'] = 1) then
    SinglesLabel.Caption := '1 - Single '
  else
    SinglesLabel.Caption := 'No Singles ';

  QueryString := 'SELECT MAX(RoomNo) AS MaxNo FROM RoomingList ' +
    'WHERE Itineraries_id = ' + IntToStr(_RoomingListForm_Itineraries_id) + ' ' +
    'AND Tours = ''' + cxTourLCMB.EditValue + ''' ' +
    'AND RoomSizes_id <> 1 ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.Eof) and (GpSds['MaxNo']<>null) then
    DoublesLabel.Caption := IntToStr(GpSds['MaxNo']) + ' - Doubles '
  else if (not GpSds.Eof) and (GpSds['MaxNo'] = 1) then
    DoublesLabel.Caption := '1 - Double '
  else
    DoublesLabel.Caption := 'No Doubles';

  GpSds.Free;

end;


procedure TRoomingListForm.SetLabel;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_Label: string;
begin

  QueryString := 'SELECT m.MasterCode, i.DepartureDate ' +
    'FROM Itineraries i LEFT JOIN Masters m ON i.masters_id = m.Masters_id ' +
    'WHERE i.Itineraries_id = ' + IntToStr(_RoomingListForm_Itineraries_id) + ' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Label := '';

  if (not GPSds.EOF) then
    begin

      if GpSds['MasterCode'] <> null then
        x_Label := GpSds['MasterCode']
      else
        x_label := '';

      if GpSds['DepartureDate'] <> null then
        x_Label := x_label + ' ' + FormatDateTime('dd/mm/yyyy',GpSds['DepartureDate']);

      PaxListSds.Active := False;
      PaxListSds.CommandText := 'select * from dbo.fn_GetMasterPaxListOnTour (''' +
        GpSds['MasterCode'] + ''', ''' +
        FormatDateTime('mm/dd/yyyy',GpSds['DepartureDate']) + ''',2) ' +
        'ORDER BY [name]';
      PaxListSds.Active := True;
      PaxListCds.Active := False;
      PaxListCds.Active := True;

    end;

  GpSds.Free;

  MasterTourlabel.Caption := x_label;

end;


procedure TRoomingListForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TRoomingListForm.RoomingListCdsCalcFields(DataSet: TDataSet);
var
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  QueryString := 'SELECT TourLeader, TourLeaderTrainee ' +
    'FROM BookingsTours bt, Bookings b, BookingsClients bc ' +
    'WHERE bc.Bookings_id = b.bookings_id ' +
    'AND bt.Bookings_id = b.Bookings_id ' +
    'AND bc.BookingsClients_id = ' + IntToStr(RoomingListCds['BookingsClients_id']) + ' ' +
    'AND bt.TourCode = ''' + RoomingListCds['TourCode'] + ''' ' +
    'AND bt.TourDate = ''' + FormatDateTime('mm/dd/yyyy',RoomingListCds['TourDate']) + '''';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GPSds.EOF) then
    begin

      if GpSds['TourLeader'] <> null then
        RoomingListCds['TL_Calc'] :=  GpSds['TourLeader']
      else
        RoomingListCds['TL_calc'] := False;

      if GpSds['TourLeaderTrainee'] <> null then
        RoomingListCds['TTL_Calc'] :=  GpSds['TourLeaderTrainee']
      else
        RoomingListCds['TTL_calc'] := False;

    end
  else
    begin
      RoomingListCds['TL_Calc'] := False;
      RoomingListCds['TTL_Calc'] := False;
    end;

  GpSds.Free;

end;

procedure TRoomingListForm.RoomingListCdsAfterPost(DataSet: TDataSet);
begin
  RoomingListCds.ApplyUpdates(0);
  RoomingListCds.Refresh;

  FilterRoomingList;

end;

procedure TRoomingListForm.RoomingListSinglesCdsAfterPost(
  DataSet: TDataSet);
begin

  RoomingListSinglesCds.ApplyUpdates(0);
  RoomingListSinglesCds.Refresh;

  FilterRoomingList;
end;

procedure TRoomingListForm.cxTourLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  FilterRoomingList;
end;

end.
