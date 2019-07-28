unit SplashScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, cxControls, cxContainer, cxEdit, cxCheckBox,
  cxLabel, cxDBLabel, sqlExpr, Math, jpeg;

type
  TSplashScreenForm = class(TForm)
    Timer: TTimer;
    cxLabel: TcxLabel;
    cxLabel2: TcxLabel;
    Image1: TImage;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure CreateTipArray;
    function GetMaxTipId: integer;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashScreenForm: TSplashScreenForm;

implementation

uses BackOfficeDM;

var
  x_g_array: array[0..1000] of integer;

{$R *.dfm}

procedure TSplashScreenForm.TimerTimer(Sender: TObject);
begin
  SplashScreenForm.Close;
end;

procedure TSplashScreenForm.FormCreate(Sender: TObject);
var
  x_id, x_max_id: integer;
  QueryString: string;
  GpSds: TSQLDataSet;
begin

  try
//    TransparentFlashPlayerControl.Movie := ExtractFilePath(Application.ExeName) + '\TravelJadoo.swf';
//    TransparentFlashPlayerControl.Play;
  except

  end;

  CreateTipArray;

  Randomize;
  //RandSeed := 1;
  //x_id := RandomFrom(x_g_array);
  x_max_id := GetMaxTipId + 1;
  x_id := RandomRange (1, x_max_id);

  QueryString := 'SELECT Tip FROM Tips WHERE Tips_id = ' + IntToStr(x_id);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  cxLabel.Caption := '';
  if (not GpSds.EOF) and (GpSds['Tip'] <> null) then
    cxLabel.Caption := GpSds['Tip']
  else
    begin

      QueryString := 'SELECT MAX(Tip) AS Tip FROM Tips WHERE Tips_id <= ' + IntToStr(x_id);

      GpSds.Close;
      GpSds.CommandType := ctQuery;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['Tip'] <> null) then
        cxLabel.Caption := GpSds['Tip'];

    end;

  GpSds.Free;

end;

procedure TSplashScreenForm.FormClick(Sender: TObject);
begin
  SplashScreenForm.Close;
end;

procedure TSplashScreenForm.CreateTipArray;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  i: integer;
begin

  QueryString := 'SELECT Tips_id FROM Tips ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  GpSds.First;

  i := 0;
  while not GpSds.EOF do
    begin
      x_g_array[i] := GpSds['Tips_id'];
      i := i+1;
      GpSds.Next;
    end;

  GpSds.Free;

end;

function TSplashScreenForm.GetMaxTipId: integer;
var
  QueryString: string;
  GpSds: TSQLDataSet;
  x_id: integer;
begin

  QueryString := 'SELECT MAX(Tips_id) AS MaxTip FROM Tips ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_id := 0;
  if (not GpSds.EOF) and (GpSds['MaxTip'] <> null) then
    x_id := GpSds['MaxTip'];

  GpSds.Free;

  Result := x_id;

end;

procedure TSplashScreenForm.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
