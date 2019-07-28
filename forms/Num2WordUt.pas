unit Num2WordUt;

interface

uses SysUtils,Dialogs;

type
  TNum2Words = class(TObject)

  private
    { Private declarations }
    NumberStr: String;
    NumberLen: Integer;

    //Words representation of number
    Words: String;

    //Word representation of denominations
    CroreWords: String;
    LakhWords: String;
    ThouWords: String;
    UnitWords: String;
    DecWords: String;

    //Decimal Position
    DecPos: Integer;

    //Length of denominations
    CroreLen: Integer;
    LakhLen: Integer;
    ThouLen: Integer;
    UnitLen: Integer;
    DecLen: Integer;

    function InCroreWords: String;
    function InLakhWords: String;
    function InThouWords: String;
    function InUnitWords: String;
    function InDecWords: String;
    function ToWords(XStr: String): String;
    function Words1(XStr: String): String;
    function Words2(XStr: String): String;
    function Words3(XStr: String): String;

  public
    { Public declarations }
    Number: Double;

    constructor Create;
    function InWords: String;
  end;

implementation

const
  //Define Positions of Denominations
  CrorePos: Integer = 8;
  LakhPos: Integer = 6;
  ThouPos: Integer = 4;
  UnitPos: Integer = 1;


constructor TNum2Words.Create;
begin
  inherited Create;
  Words := '';
  CroreWords := '';
  LakhWords := '';
  ThouWords := '';
  UnitWords := '';
  CroreLen := 0;
  LakhLen := 0;
  UnitLen := 0;
  DecLen := 0;
end;

function TNum2Words.InWords(): String;
begin

  //String Representation of number
  NumberStr := FloatToStrF(Number,ffFixed,13,2);

  //Decimal position
  DecPos := Pos('.',NumberStr);

  //Length of Number not counting decimal place and beyond
  if DecPos > 0 then
    NumberLen := DecPos-1
  else
    NumberLen := Length(NumberStr);

  //Denominations in Words
  CroreWords := InCroreWords();
  LakhWords := InLakhWords();
  ThouWords := InThouWords();
  UnitWords := InUnitWords();
  DecWords := InDecWords();

  //Entire Wording
  Words := 'Rupees ' + CroreWords + LakhWords + ThouWords + UnitWords +
           DecWords + 'Only ';

  InWords := Words;

end;

function TNum2Words.InCroreWords(): string;
var
  ret_str: string;
begin

  ret_str := '';

  if NumberLen >= CrorePos then
    begin
      CroreLen := NumberLen - CrorePos + 1;
      ret_str := ToWords(Copy(NumberStr, 1, CroreLen)) + 'Crore ';
    end;

  InCroreWords := ret_str;

end;

function TNum2Words.InLakhWords(): String;
var
  ret_str: string;
begin

  ret_str := '';

  if NumberLen >= LakhPos then
    begin
      LakhLen := (NumberLen - CroreLen) - LakhPos + 1;
      ret_str := ToWords(Copy(NumberStr,CroreLen+1, LakhLen)) + 'Lakh ';
    end;

  InLakhWords := ret_str;

end;

function TNum2Words.InThouWords(): String;
var
  ret_str: string;
begin

  ret_str := '';

  if NumberLen >= ThouPos then
    begin
      ThouLen := (NumberLen - (CroreLen+LakhLen)) - ThouPos + 1;
      ret_str := ToWords(Copy(NumberStr,CroreLen+LakhLen+1, ThouLen)) + 'Thousand ';
    end;

  InThouWords := ret_str;

end;

function TNum2Words.InUnitWords(): String;
var
  ret_str: string;
begin

  ret_str := '';

  if NumberLen >= UnitPos then
    begin
      UnitLen := (NumberLen - (CroreLen+LakhLen+ThouLen)) - UnitPos + 1;
      ret_str := ToWords(Copy(NumberStr, (CroreLen+LakhLen+ThouLen) + 1, UnitLen))
    end;

  InUnitWords := ret_str;

end;

function TNum2Words.InDecWords(): String;
var
  ret_str: string;
begin

  ret_str := '';

  //If decimal present
  if DecPos > 0 then
    begin

      //Number of decimal places
      DecLen := Length(NumberStr) - DecPos;

      //One place of decimal
      if DecLen = 1 then
        ret_str := Words2(Copy(NumberStr,Length(NumberStr),1) + '0')
      //Two or more places of decimals
      else if DecLen >= 2 then
        ret_str := Words2(Copy(NumberStr,DecPos+1,2));

      //If Decimal Words
      if ret_str > '' then
        ret_str := 'and Paise ' + ret_str;

    end;

  InDecWords := ret_str;

end;

function TNum2Words.ToWords(XStr: String): String;
var
  ret_str: string;
begin

  case Length(XStr) of
    1: ret_str := Words1(XStr);
    2: ret_str := Words2(XStr);
    3: ret_str := Words3(XStr);
  else
    ret_str := '';
  end;

  ToWords := ret_str;

end;

function TNum2Words.Words1(XStr: String): String;
var
  value,code: Integer;
begin

  Val(XStr,value,code);

  case value of
    1: Words1 := 'One ';
    2: Words1 := 'Two ';
    3: Words1 := 'Three ';
    4: Words1 := 'Four ';
    5: Words1 := 'Five ';
    6: Words1 := 'Six ';
    7: Words1 := 'Seven ';
    8: Words1 := 'Eight ';
    9: Words1 := 'Nine ';
  else
    Words1 := '';
  end;

end;

function TNum2Words.Words2(XStr: String): String;
var
  value,code: Integer;
begin

  Val(XStr,value,code);

  case value of
    1,2,3,4,5,6,7,8,9: Words2 := Words1(Copy(XStr,2,1));
    10: Words2 := 'Ten ';
    11: Words2 := 'Eleven ';
    12: Words2 := 'Twelve ';
    13: Words2 := 'Thirteen ';
    14: Words2 := 'Fourteen ';
    15: Words2 := 'Fifteen ';
    16: Words2 := 'Sixteen ';
    17: Words2 := 'Seventeen ';
    18: Words2 := 'Eighteen ';
    19: Words2 := 'Nineteen ';
    20 .. 29: Words2 := 'Twenty '  + Words1(Copy(XStr,2,1));
    30 .. 39: Words2 := 'Thirty '  + Words1(Copy(XStr,2,1));
    40 .. 49: Words2 := 'Forty '   + Words1(Copy(XStr,2,1));
    50 .. 59: Words2 := 'Fifty '   + Words1(Copy(XStr,2,1));
    60 .. 69: Words2 := 'Sixty '   + Words1(Copy(XStr,2,1));
    70 .. 79: Words2 := 'Seventy ' + Words1(Copy(XStr,2,1));
    80 .. 89: Words2 := 'Eighty '  + Words1(Copy(XStr,2,1));
    90 .. 99: Words2 := 'Ninety '  + Words1(Copy(XStr,2,1));
  else
    Words2 := '';
  end;

end;

function TNum2Words.Words3(XStr: String): String;
var
  YStr: String;
begin

  //Hundreds Place
  YStr := Words1(Copy(XStr,1,1));
  if YStr > '' Then
    YStr := YStr + 'Hundred ';

  //Hundreds Place + (Tens & Units place)
  Words3 := YStr + Words2(Copy(XStr,2,2))

end;

end.

