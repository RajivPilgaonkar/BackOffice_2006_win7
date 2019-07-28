unit CostingsFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, DBClient, DB, Provider, SqlExpr, ExtCtrls,
  StdCtrls, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, DBCtrls, Menus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLabel, cxGroupBox;

type
  TCostingsForm = class(TCustom1M1DForm)
    MasterCdscostingblocks_id: TIntegerField;
    MasterCdsblock: TStringField;
    MasterCdsmasters_id: TIntegerField;
    MasterCdsorderno: TIntegerField;
    Detail1Cdscostings_id: TIntegerField;
    Detail1Cdsblock: TStringField;
    Detail1Cdsfrompax: TIntegerField;
    Detail1Cdstopax: TIntegerField;
    Detail1Cdswef: TSQLTimeStampField;
    Detail1Cdscost: TBCDField;
    Detail1Cdssinglesupplement: TBCDField;
    Detail1Cdsmasters_id: TIntegerField;
    Detail1Cdsorderno: TIntegerField;
    Panel3: TPanel;
    GroupBox1: TcxGroupBox;
    GroupBox2: TcxGroupBox;
    GroupBox3: TcxGroupBox;
    cxButton1: TcxButton;
    RefreshBtn: TcxButton;
    BlockGrid: TcxGrid;
    BlockGridDBTableView1: TcxGridDBTableView;
    BlockGridLevel1: TcxGridLevel;
    BlockCostsGrid: TcxGrid;
    BlockCostsGridDBTableView1: TcxGridDBTableView;
    BlockCostsGridLevel1: TcxGridLevel;
    BlockGridDBTableView1block: TcxGridDBColumn;
    BlockGridDBTableView1orderno: TcxGridDBColumn;
    BlockCostsGridDBTableView1block: TcxGridDBColumn;
    BlockCostsGridDBTableView1frompax: TcxGridDBColumn;
    BlockCostsGridDBTableView1topax: TcxGridDBColumn;
    BlockCostsGridDBTableView1wef: TcxGridDBColumn;
    BlockCostsGridDBTableView1cost: TcxGridDBColumn;
    BlockCostsGridDBTableView1singlesupplement: TcxGridDBColumn;
    Label1: TcxLabel;
    Label2: TcxLabel;
    MasterTourLcmb: TcxLookupComboBox;
    WEFdate: TcxDateEdit;
    MasterTourSds: TSQLDataSet;
    MasterTourDsp: TDataSetProvider;
    MasterTourCds: TClientDataSet;
    MasterTourDs: TDataSource;
    MasterTourCdsMasters_id: TIntegerField;
    MasterTourCdsMastercode: TStringField;
    KeyIdDbText: TDBText;
    cxButton2: TcxButton;
    cxUtilityButton: TcxButton;
    UtilityPopup: TPopupMenu;
    CopyFromBlock1: TMenuItem;
    N1: TMenuItem;
    CopyAllBlockstoNewDate1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure RefreshBtnClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure MasterTourLcmbPropertiesEditValueChanged(Sender: TObject);
    procedure FilterData;
    procedure MasterTourLcmbKeyPress(Sender: TObject; var Key: Char);
    procedure WEFdateKeyPress(Sender: TObject; var Key: Char);
    procedure WEFdateExit(Sender: TObject);
    procedure CopyAllBlockstoNewDate1Click(Sender: TObject);
    procedure CopyFromBlock1Click(Sender: TObject);
    procedure MasterCdsAfterScroll(DataSet: TDataSet);
    procedure MasterCdsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostingsForm: TCostingsForm;
  _CostingsForm_Level: Integer;

implementation

uses BackOfficeDM, SearchSortFm, ReportParameterFm, CostingBlockCopyFm;

{$R *.dfm}

procedure TCostingsForm.FormCreate(Sender: TObject);
begin

  MasterTourCds.Active := False;
  MasterTourCds.Active := True;

  MasterCdsName := 'CostingBlocks';
  MasterKeyField := 'CostingBlocks_id';
  Detail1CdsName := 'Costings';
  Detail1KeyField := 'Costings_id';

  AdmLevel := _CostingsForm_Level;
  inherited;

{
  MasterCds.Active := False;
  MasterCds.Filter := 'Masters_id = -1 ';
  MasterCds.Filtered := True;
  MasterCds.Active := True;
}

end;

procedure TCostingsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CostingsForm := nil;
end;

procedure TCostingsForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TCostingsForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds['Wef'] := StrToDate(WEFdate.Text);
  Detail1Cds['Block'] := MasterCds['Block'];
  Detail1Cds['Masters_id'] := MasterCds['Masters_id'];  
end;

procedure TCostingsForm.RefreshBtnClick(Sender: TObject);
var
  GPSds : TSQLDataSet;
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  // Insert Costing Blocks
  GPSds.Close;
  GPSds.CommandText := 'EXEC p_InsertCostingBlocks ' +
    IntToStr(MasterTourCds['Masters_id']) + ' ';
  GPSds.ExecSQL;

  FilterData;

  GPSds.Free;
end;

procedure TCostingsForm.cxButton2Click(Sender: TObject);
var
  QueryString: string;
  i: integer;
begin
  inherited;

  QueryString := 'SELECT DISTINCT Wef FROM Costings ' +
          'WHERE Masters_id = ' + IntToStr(MasterTourCds['Masters_id']) + ' ' +
          'ORDER BY Wef DESC';

  if SearchSortForm = nil then
    Application.CreateForm(TSearchSortForm, SearchSortForm);

  SearchSortForm.SearchSds.Close;
  SearchSortForm.SearchSds.CommandText := QueryString;
  SearchSortForm.SearchSds.Open;

  SearchSortForm.SearchCds.Open;

  for i := 0 to 0 do
    begin
      SearchSortForm.SearchGridDBTableView1.CreateColumn;
    end;

  //*=== Set the Grid Fields ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].DataBinding.FieldName := 'wef';

  //*=== Set the Grid Columns' width ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Width := 100;

  //*=== Set the Grid Column Headers ===*//
  SearchSortForm.SearchGridDBTableView1.Columns[0].Caption := 'Wef';

  SearchSortForm.SearchGridDBTableView1.DataController.KeyFieldNames := 'Wef';

  if (SearchSortForm.SearchCds.RecordCount = 1) then
    begin
      WefDate.EditValue := SearchSortForm.SearchCds['wef'];
    end
  else if not SearchSortForm.SearchCds.EOF then
    begin

      SearchSortForm.ShowModal;

      if (SearchSortForm.ModalResult = mrOK) then
        begin
          WefDate.EditValue := SearchSortForm.SearchCds['wef'];
        end;

    end
  else
    Showmessage ('Not found');

  SearchSortForm.Free;
  SearchSortForm := nil;

  FilterData;

end;

procedure TCostingsForm.MasterTourLcmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  try
    if MasterTourLCMB.EditValue <> null then
      MasterTourCds.Locate('Masters_id',MasterTourLCMB.EditValue,[]);
  except
  end;

  FilterData;

end;

procedure TCostingsForm.FilterData;
var
  x_Masters_id: integer;
begin

  x_Masters_id := -1;

  if Trim(WefDate.EditText) = '' then
    WefDate.EditValue := Date;

  if MasterTourCds['Masters_id'] <> null then
    x_Masters_id := MasterTourCds['Masters_id'];


  MasterSds.Close;
  MasterCds.Close;

  MasterSds.Params[0].Value := x_masters_id;

  MasterSds.Open;
  MasterCds.Open;

end;

procedure TCostingsForm.MasterTourLcmbKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterData;
end;

procedure TCostingsForm.WEFdateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  
  if key = #13 then
    FilterData;

end;

procedure TCostingsForm.WEFdateExit(Sender: TObject);
begin
  inherited;

    FilterData;

end;

procedure TCostingsForm.CopyAllBlockstoNewDate1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  if (AdmLevel < 2) then
  begin
    MessageDlg ('Access Denied', mtError, [mbOK], 0);
    Abort;
  end;

  GPSds := TSQLDataSet.Create(nil);
  GPSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  _inputstr := '20000000';

  if ReportParameterForm = nil then
    Application.CreateForm(TReportParameterForm, ReportParameterForm);

  if Detail1Cds['wef'] <> null then
    ReportParameterForm.cxDateEdit1.Date := Detail1Cds['wef'];

  ReportParameterForm.ShowModal;

  if ReportParameterForm.ModalResult = MrOk then
    begin

      if (MasterTourCds['Masters_id'] <> null) and
         (Trim(ReportParameterForm.cxDateEdit1.Text) > '') and
         (Trim(ReportParameterForm.cxDateEdit2.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostingBlockDetails ' +
            IntToStr(MasterTourCds['Masters_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit1.Text))) + ''',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(Trim(ReportParameterForm.cxDateEdit2.Text))) + '''';

          GpSds.ExecSQL;

        end;

    end;

  ReportParameterForm.Release;
  ReportParameterForm := nil;

  GPSds.Free;


end;

procedure TCostingsForm.CopyFromBlock1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
begin
  inherited;
  if (AdmLevel < 2) then
    begin
      MessageDlg ('Access Denied', mtError, [mbOK], 0);
      Abort;
    end;
    
  if CostingBlockCopyForm = nil then
    Application.CreateForm(TCostingBlockCopyForm, CostingBlockCopyForm);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  CostingBlockCopyForm.ShowModal;

  if CostingBlockCopyForm.ModalResult = mrOK then
    begin
      if (CostingBlockCopyForm.cxMasterCodeEdit.EditValue <> null) and
         (Trim(CostingBlockCopyForm.cxWefDateEdit.Text) > '') then
        begin

          GpSds.CommandText := 'EXEC p_CopyCostingFromMaster ' +
            IntToStr(MasterTourCds['Masters_id']) + ',''' +
            FormatDateTime('mm/dd/yyyy',Detail1Cds['wef']) + ''',' +
            IntToStr(CostingBlockCopyForm.cxMasterCodeEdit.EditValue) + ',''' +
            FormatDateTime('mm/dd/yyyy',StrToDate(CostingBlockCopyForm.cxWefDateEdit.Text)) + '''';
          GpSds.ExecSQL;

        end;
    end;

  CostingBlockCopyForm.Free;
  CostingBlockCopyForm := nil;


end;

procedure TCostingsForm.MasterCdsAfterScroll(DataSet: TDataSet);
begin
  inherited;


  if (MasterCds['masters_id'] <> null) and (MasterCds['Block'] <> null) then
    begin

      Detail1Sds.Close;
      Detail1Cds.Close;

      Detail1Sds.CommandText :=
        'SELECT * FROM Costings '  +
        'WHERE Masters_id = ' + IntToStr(MasterCds['Masters_id']) + ' ' +
        'AND block = ''' + MasterCds['Block'] + ''' ' +
        'AND wef = ''' + FormatDateTime('mm/dd/yyyy',StrToDate(WefDate.EditText)) + ''' ' +
        'ORDER BY FromPax';

      Detail1Cds.Open;

    end
  else
    begin


      Detail1Sds.Close;
      Detail1Cds.Close;

      Detail1Sds.CommandText :=
        'SELECT * FROM Costings '  +
        'WHERE Costings_id = -1 ';

      Detail1Cds.Open;

    end;
end;

procedure TCostingsForm.MasterCdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  MasterCds['masters_id'] := MasterTourCds['Masters_id'];
end;

end.



