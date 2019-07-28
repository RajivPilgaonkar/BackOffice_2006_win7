unit SelOprFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TSelOprForm = class(TForm)
    DailyCheckBox: TCheckBox;
    DayLB: TListBox;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DailyCheckBoxClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelOprForm: TSelOprForm;
  _InitStr,_RetStr:String;

implementation

{$R *.dfm}

procedure TSelOprForm.FormShow(Sender: TObject);
begin
//on form show check the checkbox if value in _initstr = 'daily'
//else mark the selected days depending on the days in the string
 If UpperCase(_InitStr)='DAILY' then
    DailyCheckBox.Checked := True
 else
 begin
    if Pos('MO',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[0] := True;
    if Pos('TU',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[1] := True;
    if Pos('WE',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[2] := True;
    if Pos('TH',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[3] := True;
    if Pos('FR',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[4] := True;
    if Pos('SA',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[5] := True;
    if Pos('SU',UpperCase(_InitStr)) > 0 then
       DayLB.Selected[6] := True;
  end;
end;

procedure TSelOprForm.DailyCheckBoxClick(Sender: TObject);
Var
 ItemCnt : Integer;
begin
 If DailyCheckBox.Checked then
    For ItemCnt:= 0 to (DayLB.items.count-1)  do
        DayLB.selected[ItemCnt]:=True
 else
    For ItemCnt:= 0 to (DayLB.items.count-1)  do
        DayLB.selected[ItemCnt]:=False;
end;

procedure TSelOprForm.btnOKClick(Sender: TObject);
Var
  ItemCnt:Integer;
begin
  _RetStr:='';
  If DailyCheckBox.Checked then
    _RetStr:='Daily'
  else
  begin
    For ItemCnt:= 0 to (DayLB.items.count-1)  do
    begin
      if DayLB.selected[ItemCnt] then
      begin
        if _RetStr = '' then
          _RetStr := Copy(DayLB.items[ItemCnt],1,2)
        else
          _RetStr := _RetStr+'/'+Copy(DayLB.items[ItemCnt],1,2);
      end;
    end;
  end;
//  SelOprForm.Close;
end;

end.
