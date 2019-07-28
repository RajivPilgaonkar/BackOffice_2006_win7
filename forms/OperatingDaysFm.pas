unit OperatingDaysFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TOperatingDaysForm = class(TForm)
    GroupBox1: TGroupBox;
    DailyChk: TCheckBox;
    OkBtn: TBitBtn;
    CancelBtn: TBitBtn;
    DailyLb: TListBox;
    procedure OkBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure DailyChkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OperatingDaysForm: TOperatingDaysForm;
  _InitStr,_RetStr:String;

implementation

{$R *.dfm}

procedure TOperatingDaysForm.OkBtnClick(Sender: TObject);
Var
 ItemCnt:Integer;
begin

 _RetStr:='';
 If DailyChk.Checked then
    _RetStr:='Daily'
 else
 begin
    For ItemCnt:= 0 to (DailyLB.items.count-1)  do
    begin
     if DailyLB.selected[ItemCnt] then
     begin
       if _RetStr = '' then
          _RetStr := Copy(DailyLB.items[ItemCnt],1,2)
       else
          _RetStr := _RetStr+'/'+Copy(DailyLB.items[ItemCnt],1,2);
     end;
    end;
 end;
end;

procedure TOperatingDaysForm.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TOperatingDaysForm.DailyChkClick(Sender: TObject);
Var
 ItemCnt:Integer;
begin

 If DailyChk.Checked then
    For ItemCnt:= 0 to (DailyLB.items.count-1)  do
        DailyLB.selected[ItemCnt]:=True
 else
    For ItemCnt:= 0 to (DailyLB.items.count-1)  do
        DailyLB.selected[ItemCnt]:=False;

end;

procedure TOperatingDaysForm.FormShow(Sender: TObject);
begin
If UpperCase(_InitStr)='DAILY' then
    DailyChk.Checked := True
 else
 begin

    if Pos('MO',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[0] := True;

    if Pos('TU',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[1] := True;

    if Pos('WE',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[2] := True;

    if Pos('TH',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[3] := True;

    if Pos('FR',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[4] := True;

    if Pos('SA',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[5] := True;

    if Pos('SU',UpperCase(_InitStr)) > 0 then
       DailyLB.Selected[6] := True;

 end;

end;

end.
