unit ItinDepDatesFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, FMTBcd, cxCheckBox, DB, DBClient,
  Provider, SqlExpr, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxButtons, ExtCtrls, cxGroupBox,
  cxRadioGroup, Menus, cxGraphics, dxSkinsCore, dxSkinsDefaultPainters;

type
  TItinDepDatesForm = class(TForm)
    Panel1: TPanel;
    cxOKButton: TcxButton;
    cxCancelButton: TcxButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxTourLCMB: TcxLookupComboBox;
    cxTourDepDateLCMB: TcxLookupComboBox;
    Panel2: TPanel;
    TourCodeSds: TSQLDataSet;
    TourCodeDsp: TDataSetProvider;
    TourCodeCds: TClientDataSet;
    TourCodeDS: TDataSource;
    TourDepDateSds: TSQLDataSet;
    TourDepDateDsp: TDataSetProvider;
    TourDepDateCds: TClientDataSet;
    TourDepDateDS: TDataSource;
    cxMasterCkb: TcxCheckBox;
    cxMasterLCMB: TcxLookupComboBox;
    cxMasterDepDateLCMB: TcxLookupComboBox;
    cxBookingCKB: TcxCheckBox;
    MasterCodeSds: TSQLDataSet;
    MasterCodeDsp: TDataSetProvider;
    MasterCodeCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    MasterCodeDS: TDataSource;
    MasterDepDateSds: TSQLDataSet;
    MasterDepDateDsp: TDataSetProvider;
    MasterDepDateCds: TClientDataSet;
    MasterDepDateDS: TDataSource;
    cxTailorMadeCkb: TcxCheckBox;
    cxActiveCkb: TcxCheckBox;
    cxForwardGB: TcxRadioGroup;
    cxBackGB: TcxRadioGroup;
    TourCodeCdsTourCodes_id: TIntegerField;
    TourCodeCdsTourCode: TStringField;
    TourCodeCdsTour: TStringField;
    TourDepDateCdsTourCodes_id: TIntegerField;
    TourDepDateCdsTourDate: TSQLTimeStampField;
    TourDepDateSdsTourCodes_id: TIntegerField;
    TourDepDateSdsTourDate: TSQLTimeStampField;
    MasterDepDateCdsmasters_id: TIntegerField;
    MasterDepDateCdsTourDate: TSQLTimeStampField;
    TourDepDateSdsTourDepartureDates_id: TIntegerField;
    TourDepDateCdsTourDepartureDates_id: TIntegerField;
    MasterDepDateCdsMasterDepartureDates_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cxMasterCkbClick(Sender: TObject);
    procedure cxBookingCKBClick(Sender: TObject);
    procedure cxTailorMadeCkbClick(Sender: TObject);
    procedure cxActiveCkbClick(Sender: TObject);
    procedure cxForwardGBClick(Sender: TObject);
    procedure cxBackGBClick(Sender: TObject);
    procedure FilterData;
    procedure cxTourLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxMasterLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxOKButtonClick(Sender: TObject);
    procedure cxTourDepDateLCMBPropertiesEditValueChanged(Sender: TObject);
    procedure cxMasterDepDateLCMBPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxMasterLCMBExit(Sender: TObject);
    procedure cxTourLCMBExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItinDepDatesForm: TItinDepDatesForm;
  _ItinDepDatesForm_DefaultType: integer;
  _ItinDepDatesForm_ModeType: integer;
  _ItinDepDatesForm_FwdPeriodType: integer;
  _ItinDepDatesForm_BackPeriodType: integer;

  _ItinDepDatesForm_Masters_id: integer;
  _ItinDepDatesForm_MasterCode: string;
  _ItinDepDatesForm_MasterTourDate: TDateTime;
  _ItinDepDatesForm_TourCode: string;
  _ItinDepDatesForm_TourDate: TDateTime;


implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TItinDepDatesForm.FilterData;
var
  x_QueryString, x_Dep_QueryString: string;
begin

  if cxMasterCkb.Checked then
    begin
      cxMasterLCMB.Visible := True;
      cxTourLCMB.Visible := False;
      cxMasterDepDateLCMB.Visible := True;
      cxTourDepDateLCMB.Visible := False;
      cxBookingCkb.Visible := False;

      MasterCodeSds.Open;
      MasterDepDateSds.Open;
      TourdepDateSds.Close;
      TourCodeSds.Close;

      MasterCodeCds.Open;
      MasterDepDateCds.Open;
      TourdepDateCds.Close;
      TourCodeCds.Close;

      cxMasterLCMB.Top := cxTourLCMB.Top;
      cxMasterDepDateLCMB.Top := cxTourLCMB.Top;
      Label1.caption := 'Master Code';
      Label1.Top := cxTourLCMB.Top+3;
      Label2.Top := cxTourLCMB.Top+3;

    end
  else
    begin
      cxMasterLCMB.Visible := False;
      cxTourLCMB.Visible := True;
      cxMasterDepDateLCMB.Visible := False;
      cxTourDepDateLCMB.Visible := True;
      cxBookingCkb.Visible := True;

      MasterDepDateSds.Close;
      MasterCodeSds.Close;
      TourCodeSds.Open;
      TourDepDateSds.Open;

      MasterDepDateCds.Close;
      MasterCodeCds.Close;
      TourCodeCds.Open;
      TourDepDateCds.Open;

      Label1.caption := 'Tour Code';
      Label1.Top := cxTourLCMB.Top+3;
      Label2.Top := cxTourLCMB.Top+3;

    end;

  x_QueryString := ' WHERE (1=1) ';
  x_Dep_QueryString := ' ';

  if cxTailorMadeCkb.Checked = True then
    x_QueryString :=  x_QueryString + ' AND (TailorMade = 1) '
  else
    x_QueryString :=  x_QueryString + ' AND (TailorMade = 0) ';

  if cxActiveCkb.Checked = True then
    x_QueryString := x_QueryString + ' AND (Active = 1) ';

  if cxForwardGB.ItemIndex = 1 then
    x_Dep_QueryString := x_Dep_Querystring + ' AND (Getdate() > TourDate) '
  else if cxForwardGB.ItemIndex = 2 then
    x_Dep_QueryString := x_Dep_Querystring + ' AND (DATEDIFF(m,Getdate(),TourDate) <= 6) '
  else if cxForwardGB.ItemIndex = 3 then
    x_Dep_QueryString := x_Dep_Querystring + ' AND (DATEDIFF(m,Getdate(),TourDate) <= 12) ';

  if cxBackGB.ItemIndex = 1 then
    x_Dep_QueryString := x_Dep_Querystring + ' AND (Getdate() <= TourDate) '
  else if cxBackGB.ItemIndex = 2 then
    x_Dep_QueryString := x_Dep_Querystring + ' AND (DATEDIFF(m,TourDate,GetDate()) <= 6) '
  else if cxBackGB.ItemIndex = 3 then
    x_Dep_QueryString := x_Dep_Querystring + ' AND (DATEDIFF(m,TourDate,GetDate()) <= 12) ';

  if (cxBookingCkb.checked) and (cxBookingCkb.Visible) then
    x_Dep_QueryString := x_Dep_Querystring + ' AND EXISTS ' +
      '(SELECT * FROM BookingsTours bt ' +
      ' WHERE tc.TourCode = bt.TourCode ' +
      ' AND tdd.TourDate = bt.TourDate) ';

  if cxMasterCkb.Checked then
    begin
      MasterCodeSds.Close;
      MasterCodeCds.Close;
      MasterCodeSds.CommandText :=
        'select masters_id, MasterCode,[name] from Masters ' +
        x_QueryString +
        ' ORDER BY MasterCode ';
      MasterCodeSds.Open;
      MasterCodeCds.Open;

      MasterDepDateSds.Close;
      MasterDepDateCds.Close;
      MasterDepDateSds.CommandText :=
        'select masters_id, MasterDepartureDates_id, TourDate ' +
        'from MasterDepartureDates ' +
        'where masters_id = :masters_id ' +
        x_Dep_QueryString +
        ' ORDER BY TourDate ';
      MasterDepDateSds.Open;
      MasterDepDateCds.Open;
    end
  else
    begin
      TourCodeSds.Close;
      TourCodeCds.Close;
      TourCodeSds.CommandText :=
        'select TourCodes_id, TourCode,Tour from TourCodes ' +
        x_QueryString +
        ' ORDER BY TourCode ';
      TourCodeSds.Open;
      TourCodeCds.Open;

      TourDepDateSds.Close;
      TourDepDateCds.Close;
      TourDepDateSds.CommandText :=
        'select tdd.TourDepartureDates_id, tdd.TourCodes_id, tdd.TourDate ' +
        'from TourDepartureDates tdd, TourCodes tc ' +
        'where tdd.TourCodes_id = :TourCodes_id ' +
        'and tdd.TourCodes_id = tc.Tourcodes_id ' +
        x_Dep_QueryString +
        'order by tdd.TourDate ';
      TourDepDateSds.Open;
      TourDepDateCds.Open;

    end;

  if (g_TourLeaderForm_TourCodes_id > 0) and (TourCodeCds.State = dsBrowse) then
    begin
      cxTourLCMB.EditValue := g_TourLeaderForm_TourCodes_id;
      TourCodeCds.Locate('TourCodes_id',g_TourLeaderForm_TourCodes_id, []);
    end;

  if (g_TourLeaderForm_Masters_id > 0) and (MasterCodeCds.State = dsBrowse) then
    begin
      cxMasterLCMB.EditValue := g_TourLeaderForm_Masters_id;
      MasterCodeCds.Locate('Masters_id',g_TourLeaderForm_Masters_id, []);
    end;

  if (g_TourLeaderForm_TourDepartureDates_id > 0) and (TourDepDateCds.State = dsBrowse) then
    begin
      cxTourDepDateLCMB.EditValue := g_TourLeaderForm_TourDepartureDates_id;
      TourDepDateCds.Locate('TourDepartureDates_id',g_TourLeaderForm_TourDepartureDates_id, []);
    end;

  if (g_TourLeaderForm_MasterDepartureDates_id > 0) and (MasterDepDateCds.State = dsBrowse) then
    begin
      cxMasterDepDateLCMB.EditValue := g_TourLeaderForm_MasterDepartureDates_id;
      MasterDepDateCds.Locate('MasterDepartureDates_id',g_TourLeaderForm_MasterDepartureDates_id, []);
    end;

  if cxMasterCkb.Checked then
    cxMasterLCMBPropertiesEditValueChanged(nil)
  else
    cxTourLCMBPropertiesEditValueChanged(nil);

end;


procedure TItinDepDatesForm.FormCreate(Sender: TObject);
begin

  if (_itinDepDatesForm_DefaultType = 1) then
    begin

      if g_TourLeaderForm_ModeType >= 0 then
        _ItinDepDatesForm_ModeType := g_TourLeaderForm_ModeType;

      if g_TourLeaderForm_FwdPeriodType >= 0 then
        _ItinDepDatesForm_FwdPeriodType := g_TourLeaderForm_FwdPeriodType;

      if g_TourLeaderForm_BackPeriodType >= 0 then
        _ItinDepDatesForm_BackPeriodType := g_TourLeaderForm_BackPeriodType;


    end;


  // Mode - Masters OR Tours OR Both
  if (_ItinDepDatesForm_ModeType = 0) then
    begin
      cxMasterCkb.Checked := False;
    end
  else if (_ItinDepDatesForm_ModeType = 1) then
    begin
      cxMasterCkb.Checked := True;
    end
  else if (_ItinDepDatesForm_ModeType = 2) then
    begin
      cxMasterCkb.Visible := False;
    end
  else if (_ItinDepDatesForm_ModeType = 3) then
    begin
      cxMasterCkb.Checked := True;
      cxMasterCkb.Visible := False;
      cxBookingCkb.Visible := False;
    end;

  // Forward Period - 3 months, 6 months, 1 year , all
  if (_ItinDepDatesForm_FwdPeriodType = 0) then
    begin
      cxForwardGB.ItemIndex := 0;
    end
  else if (_ItinDepDatesForm_FwdPeriodType = 1) then
    begin
      cxForwardGB.ItemIndex := 1;
    end
  else if (_ItinDepDatesForm_FwdPeriodType = 2) then
    begin
      cxForwardGB.ItemIndex := 2;
    end
  else if (_ItinDepDatesForm_FwdPeriodType = 3) then
    begin
      cxForwardGB.ItemIndex := 3;
    end;

  // Back Period - 3 months, 6 months, 1 year , all
  if (_ItinDepDatesForm_BackPeriodType = 0) then
    begin
      cxBackGB.ItemIndex := 0;
    end
  else if (_ItinDepDatesForm_BackPeriodType = 1) then
    begin
      cxBackGB.ItemIndex := 1;
    end
  else if (_ItinDepDatesForm_BackPeriodType = 2) then
    begin
      cxBackGB.ItemIndex := 2;
    end
  else if (_ItinDepDatesForm_BackPeriodType = 3) then
    begin
      cxBackGB.ItemIndex := 3;
    end;


  FilterData;
end;

procedure TItinDepDatesForm.cxMasterCkbClick(Sender: TObject);
begin
  FilterData;
end;

procedure TItinDepDatesForm.cxBookingCKBClick(Sender: TObject);
begin
  FilterData;
end;

procedure TItinDepDatesForm.cxTailorMadeCkbClick(Sender: TObject);
begin
  FilterData;
end;

procedure TItinDepDatesForm.cxActiveCkbClick(Sender: TObject);
begin
  FilterData;
end;

procedure TItinDepDatesForm.cxForwardGBClick(Sender: TObject);
begin
  FilterData;
end;

procedure TItinDepDatesForm.cxBackGBClick(Sender: TObject);
begin
  FilterData;
end;

procedure TItinDepDatesForm.cxTourLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if CxTourLCMB.EditValue <> null then
      begin
        TourCodeCds.Locate('TourCodes_id',CxTourLCMB.EditValue,[]);
        TourdepDateCds.Close;
        TourDepDateCds.Open;
        if (cxTourDepDateLCMB.Text > '') and (g_TourLeaderForm_TourDepartureDates_id > 0) then
          begin
            cxTourDepDateLCMB.EditValue := g_TourLeaderForm_TourDepartureDates_id;
            TourDepDateCds.Locate('TourDepartureDates_id',g_TourLeaderForm_TourDepartureDates_id, []);
          end;

      end;
  except
  end;

end;

procedure TItinDepDatesForm.cxMasterLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if CxMasterLCMB.EditValue <> null then
      begin
        MasterCodeCds.Locate('Masters_id',CxMasterLCMB.EditValue,[]);
        MasterDepDateCds.Close;
        MasterDepDateCds.Open;
      end;
  except
  end;

end;

procedure TItinDepDatesForm.cxOKButtonClick(Sender: TObject);
var
  GPSds : TSQLDataSet;
begin


//  Showmessage(FormatDateTime('dd/mm/yyyy',TourDepDateCds['TourDate']));

  if cxMasterCkb.Checked then
    begin

      if MasterCodeCds.Eof then
        begin
          raise exception.create ('Master Code not found');
        end;

      if MasterDepDateCds.Eof then
        begin
          raise exception.create ('Master Departure Date not found');
        end;

      _ItinDepDatesForm_Masters_id := MasterDepDateCds['Masters_id'];
      _ItinDepDatesForm_MasterCode := MasterCodeCds['MasterCode'];
      _ItinDepDatesForm_MasterTourDate := MasterDepDateCds['TourDate'];
    end
  else
    begin

      if TourCodeCds.Eof then
        begin
          raise exception.create ('Tour Code not found');
        end;

      if TourDepDateCds.Eof then
        begin
          raise exception.create ('Tour Departure Date not found');
        end;

      _ItinDepDatesForm_TourCode := TourCodeCds['TourCode'];
      _ItinDepDatesForm_TourDate := TourDepDateCds['TourDate'];

      GPSds := TSQLDataSet.Create(nil);
      GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

      GPSds.CommandText := ' SELECT * FROM fn_GetMasterDeparturedate ( ' +
                           '''' + _ItinDepDatesForm_TourCode + ''', ' +
                           ' ''' + FormatDateTime('mm/dd/yyyy', _ItinDepDatesForm_TourDate) +
                           '''' + ')';
      GPSds.Open;

      if (GPSds.EOF) or (GPSds['Masters_id']=null) or (GpSds['MasterDepartureDate']=null) then
        begin
          raise exception.create ('Corresponding Master Tour / Departure Date not found');
        end;

      _ItinDepDatesForm_Masters_id := GPSds['Masters_id'];
      _ItinDepDatesForm_MasterCode := GPSds['MasterCode'];
      _ItinDepDatesForm_MasterTourDate := GPSds['MasterDepartureDate'];

      GPSds.Free;
    end;

  // Save last image, so same options pop up by default when the form is opened next

  if (cxMasterCkb.Visible = False) and (cxBookingCkb.Visible = False) then
    begin
      g_TourLeaderForm_ModeType := 3;
    end
  else if (cxMasterCkb.Visible = False) then
    begin
      g_TourLeaderForm_ModeType := 2;
    end
  else if (cxMasterCkb.Checked = True) then
    begin
      g_TourLeaderForm_ModeType := 1;
    end
  else if (cxMasterCkb.Checked = False) then
    begin
      g_TourLeaderForm_ModeType := 0;
    end;


  g_TourLeaderForm_FwdPeriodType := cxForwardGB.ItemIndex;

  g_TourLeaderForm_BackPeriodType := cxForwardGB.ItemIndex;

  if TourCodeCds['TourCodes_id'] <> null then
    g_TourLeaderForm_TourCodes_id := TourCodeCds['TourCodes_id'];

  if MasterCodeCds['Masters_id'] <> null then
    g_TourLeaderForm_Masters_id := MasterCodeCds['Masters_id'];

  if TourDepDateCds['TourDepartureDates_id'] <> null then
    g_TourLeaderForm_TourDepartureDates_id := TourDepDateCds['TourDepartureDates_id'];

  if MasterDepDateCds['MasterDepartureDates_id'] <> null then
    g_TourLeaderForm_MasterDepartureDates_id := MasterDepDateCds['MasterDepartureDates_id'];

end;

procedure TItinDepDatesForm.cxTourDepDateLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if cxTourDepDateLCMB.EditValue <> null then
      begin
        TourDepDateCds.Locate('TourDepartureDates_id',CxTourDepDateLCMB.EditValue,[]);
      end;
  except
  end;

end;

procedure TItinDepDatesForm.cxMasterDepDateLCMBPropertiesEditValueChanged(
  Sender: TObject);
begin

  try
    if cxMasterDepDateLCMB.EditValue <> null then
      begin
        MasterDepDateCds.Locate('MasterDepartureDates_id',CxMasterDepDateLCMB.EditValue,[]);
      end;
  except
  end;

end;

procedure TItinDepDatesForm.cxMasterLCMBExit(Sender: TObject);
begin
  cxMasterLCMBPropertiesEditValueChanged(nil);
end;

procedure TItinDepDatesForm.cxTourLCMBExit(Sender: TObject);
begin
  cxTourLCMBPropertiesEditValueChanged(nil);
end;

end.
