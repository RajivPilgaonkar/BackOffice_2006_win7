unit TourItnDepFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, FMTBcd, SqlExpr, Provider,
  DB, DBClient;

type
  TTourItnDepForm = class(TForm)
    Panel1: TPanel;
    TmCKB: TCheckBox;
    DepDateCMB: TDBLookupComboBox;
    Label2: TLabel;
    TourCmb: TDBLookupComboBox;
    Label1: TLabel;
    CancelBB: TBitBtn;
    OkBB: TBitBtn;
    TourDS: TDataSource;
    TourCDS: TClientDataSet;
    TourDSP: TDataSetProvider;
    TourQry: TSQLQuery;
    DepCDS: TClientDataSet;
    DepDS: TDataSource;
    DepQry: TSQLQuery;
    DepDSP: TDataSetProvider;
    TourCDStourcodes_id: TIntegerField;
    TourCDStourcode: TStringField;
    DepCDStourdate: TSQLTimeStampField;
    DepCDStourcodes_id: TIntegerField;
    RadioGroup1: TRadioGroup;
    Radio3m: TRadioButton;
    Radio1m: TRadioButton;
    Radio1y: TRadioButton;
    RadioAll: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure TmCKBClick(Sender: TObject);
    procedure FilterTourDate(bFilter_TF: Boolean; Duration: Integer);
    procedure FilterTailorMade(bTailorMade_TF :Boolean);
    procedure OkBBClick(Sender: TObject);
    procedure Radio1mClick(Sender: TObject);
    procedure Radio3mClick(Sender: TObject);
    procedure Radio1yClick(Sender: TObject);
    procedure RadioAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TourItnDepForm: TTourItnDepForm;
  _Masters_id: integer;
  _MasterDepDate: variant;
implementation
uses BackOfficeDM;
var
  sFilterTourdate: String;
{$R *.dfm}

procedure TTourItnDepForm.FormCreate(Sender: TObject);
begin
   TmCKB.Checked:=False;
   TourCmb.KeyValue:=0;
   FilterTailorMade(False);
   //FilterTourDate(True, 10);
   RadioAll.Checked := True;
end;

procedure TTourItnDepForm.Radio1mClick(Sender: TObject);
begin
  if Radio1m.Checked = true then FilterTourDate(True, 16);
end;

procedure TTourItnDepForm.Radio3mClick(Sender: TObject);
begin
  if Radio3m.Checked = true then FilterTourDate(True, 45);
end;

procedure TTourItnDepForm.Radio1yClick(Sender: TObject);
begin
  if Radio1y.Checked = true then FilterTourDate(True, 183);
end;

procedure TTourItnDepForm.RadioAllClick(Sender: TObject);
begin
  if RadioAll.Checked = true then FilterTourDate(False, 2);
end;

procedure TTourItnDepForm.TmCKBClick(Sender: TObject);
begin
  if TmCKB.Checked then
    FilterTailorMade(True)
  else
    FilterTailorMade(False);

  TourCmb.KeyValue:=0;
  //if FilterDateCKB.Checked then
  //  FilterTourDate(False)
  //else
  //  FilterTourDate(True);
end;

procedure TTourItnDepForm.FilterTourDate(bFilter_TF: Boolean; Duration: Integer);
var
FromDt : TDate;
ToDt : TDate;
begin
  FromDt := Date - Duration;
  todt := Date + Duration;
  sFilterTourdate:= 'Tourdate >= '''+ FormatDateTime('dd/mm/yyyy',FromDt) + ''' AND Tourdate <= '''+ FormatDateTime('dd/mm/yyyy',ToDt) +''' ';
  if bFilter_TF=True then begin
    DepCDS.DisableControls;
    DepCDS.Filter:=sFilterTourdate;
    DepCDS.Filtered:=True;
    DepCDS.Refresh;
    DepCDS.EnableControls;
  end
  else begin
    DepCDS.DisableControls;
    DepCDS.Filtered:=False;
    DepCDS.Refresh;
    DepCDS.EnableControls;
  end;
end;

procedure TTourItnDepForm.FilterTailorMade(bTailorMade_TF :Boolean);
begin
  if bTailorMade_TF=False then begin
    TourQry.Close;
    TourQry.SQL.Clear;
    TourQry.SQL.Add('SELECT TourCodes_id, TourCode FROM TourCodes '+
    ' WHERE TailorMade = 0 '+
    ' ORDER BY TourCode');
    TourQry.Open;
    TourCDS.Refresh;
    TourCDS.Active := True;

  end
  else begin
    TourQry.Close;
    TourQry.SQL.Clear;
    TourQry.SQL.Add('SELECT TourCodes_id, TourCode FROM TourCodes '+
    ' WHERE TailorMade = 1 '+
    ' ORDER BY TourCode');
    TourQry.Open;
    TourCDS.Refresh;
    TourCDS.Active := True;
  end;
end;

procedure TTourItnDepForm.OkBBClick(Sender: TObject);
var
  GPQry : TSQLQuery;
  GP1Qry: TSQLQuery;
begin
  GPQry:= TSQLQuery.Create(nil);
  GPQry.SQLConnection:=BackOfficeDataModule.SQLConnection;
  GP1Qry:= TSQLQuery.Create(nil);
  GP1Qry.SQLConnection:=BackOfficeDataModule.SQLConnection;

  _Masters_id:= 0;
  _MasterDepDate:= null;

  if (TourCmb.KeyValue<>null) and (TourCmb.KeyValue<>0) and (DepDateCMB.KeyValue<>null) then
    begin
      GP1Qry.Close;
      GP1Qry.SQL.Clear;
      GP1Qry.SQL.Add('SELECT TC.masters_id, (CAST(''' + FormatDateTime('MM/dd/yyyy', DepDateCMB.KeyValue) + ''' '+
      ' as smalldatetime) - TC.daysoffset) as depdate '+
      ' from tourcalendar TC where TC.tourcodes_id = ' + IntToStr(TourCmb.KeyValue) +
      ' and (CAST(masters_id as varchar) + cast(cast(''' + FormatDateTime('MM/dd/yyyy', DepDateCMB.KeyValue) + ''' '+
      ' as smalldatetime) - TC.daysoffset as varchar)) in '+
      ' (select (cast(masters_id as varchar) + cast(tourdate as varchar)) from tourdeparturedates) '+
      ' and masters_id in (select masters_id from masters) ');
      GP1Qry.Open;
      GP1Qry.First;

      while not GP1Qry.Eof do
        begin
          GPQry.Close;
          GPQry.SQL.Clear;
          GPQry.SQL.Add('select masters_id, tourdate from masterdeparturedates ' +
          ' where masters_id='+
          IntToStr(GP1Qry['masters_id'])+ ' and tourdate= ' +
          ' ''' + FormatDateTime('MM/dd/yyyy', GP1Qry['depdate']) + ''' ');
          GPQry.Open;

          if not GPQry.Eof then
            begin
              _Masters_id:= GPQry['masters_id'];
              _MasterDepDate:= GPQry['tourdate'];
              Break;
            end;
        GP1Qry.Next;
        end;

        if (_masters_ID = 0) and (_MasterDepDate= null) then
           Raise Exception.Create('No Data for Tour In master Calendar');

        GPQry.Free;
        GP1Qry.Close;
    end
  else
    Raise Exception.Create('No Data for tour in tour calendar');

end;

end.
