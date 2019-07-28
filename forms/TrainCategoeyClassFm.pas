unit TrainCategoeyClassFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomMasterCxGridFm, dxSkinsCore, dxSkinsDefaultPainters,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  FMTBcd, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, cxTextEdit,
  cxLabel, DBCtrls, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxGroupBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TTrainCategoeyClassForm = class(TCustomMasterCxGridForm)
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    TrainCategorySds: TSQLDataSet;
    TrainCategoryDsp: TDataSetProvider;
    TrainCategoryCds: TClientDataSet;
    TrainCategoryDs: TDataSource;
    TrainCategoryCdstraincategories_id: TIntegerField;
    TrainCategoryCdscategory: TStringField;
    MasterCdsTrainCategoryClasses_id: TIntegerField;
    MasterCdsTrainCategories_id: TIntegerField;
    MasterCdsClass_id: TIntegerField;
    CustomMasterCxGridDBTableView1TrainCategoryClasses_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1TrainCategories_id: TcxGridDBColumn;
    CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrainCategoeyClassForm: TTrainCategoeyClassForm;

implementation

uses BackOfficeDM;

{$R *.dfm}

end.
