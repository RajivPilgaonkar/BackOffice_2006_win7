unit CopyFitMasterFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, ExtCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, DBClient, Provider,
  cxLookAndFeelPainters, cxButtons, cxCalendar, cxDBLookupComboBox,
  cxButtonEdit, cxCheckBox, cxTimeEdit, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxContainer, cxGroupBox;

type
  TCopyFitMasterForm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TcxGroupBox;
    FitAgentsSds: TSQLDataSet;
    FitAgentsDsp: TDataSetProvider;
    FitAgentsCds: TClientDataSet;
    FitAgentsDs: TDataSource;
    FitAgentsCdsMasterCode: TStringField;
    FitAgentsCdsName: TStringField;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1MasterCode: TcxGridDBColumn;
    cxGrid2DBTableView1Name: TcxGridDBColumn;
    cxOkButton: TcxButton;
    cxCancelButton: TcxButton;
    FitAgentsCdsMasters_id: TIntegerField;
    cxGrid2DBTableView1Masters_id: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyFitMasterForm: TCopyFitMasterForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

procedure TCopyFitMasterForm.FormCreate(Sender: TObject);
begin
  FitAgentsSds.Active := True;
  FitAgentsCds.Active := True;
end;

end.
