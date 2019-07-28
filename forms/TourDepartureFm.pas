unit TourDepartureFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterLookupFm, FMTBcd, SqlExpr, Provider, DB, DBClient,
  DBCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TTourDepartureForm = class(TCustomMasterLookupForm)
    GroupBox2: TGroupBox;
    ToursOpt: TRadioButton;
    MastersOpt: TRadioButton;
    TailorMadeChk: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TourDepartureForm: TTourDepartureForm;

implementation

{$R *.dfm}

end.
