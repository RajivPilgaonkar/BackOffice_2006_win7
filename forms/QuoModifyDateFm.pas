unit QuoModifyDateFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxControls, cxContainer, cxEdit,
  cxGroupBox, Menus, cxLookAndFeelPainters, ExtCtrls, cxButtons, SqlExpr;

type
  TQuoModifyDateForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxCurrentDateEdit: TcxDateEdit;
    cxNewDateEdit: TcxDateEdit;
    IncreaseByLabel: TLabel;
    cxButton1: TcxButton;
    Panel1: TPanel;
    cxCloseBtn: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxNewDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuoModifyDateForm: TQuoModifyDateForm;
  _QuoModifyDateForm_Level: integer;
  _QuoModifyDateForm_StartDate: TDateTime;
  _QuoModifyDateForm_Quotations_id: integer;

implementation

uses BackOfficeDM, QuoCitywiseFm, PrestoFm;

{$R *.dfm}

procedure TQuoModifyDateForm.FormCreate(Sender: TObject);
begin
  Height := 270;
  Width := 360;

  cxCurrentDateEdit.Date := _QuoModifyDateForm_StartDate;
  cxNewDateEdit.Date := _QuoModifyDateForm_StartDate;
  IncreaseByLabel.Visible := False;
end;

procedure TQuoModifyDateForm.cxNewDateEditPropertiesEditValueChanged(
  Sender: TObject);
var
  x_diff: integer;
begin

  if cxNewDateEdit.Date > cxCurrentDateEdit.Date then
    begin
      x_diff := trunc(cxNewDateEdit.Date) - trunc(cxCurrentDateEdit.Date);
      IncreaseByLabel.Caption := 'Increase By ' + IntToStr(x_diff) + ' days';
      IncreaseByLabel.Font.Color := clGreen;
      IncreaseByLabel.Visible := True;
    end
  else if cxNewDateEdit.Date < cxCurrentDateEdit.Date then
    begin
      x_diff := trunc(cxCurrentDateEdit.Date) - trunc(cxNewDateEdit.Date);
      IncreaseByLabel.Caption := 'Decrease By ' + IntToStr(x_diff) + ' days';
      IncreaseByLabel.Font.Color := clRed;
      IncreaseByLabel.Visible := True;
    end
  else
    begin
      IncreaseByLabel.Visible := False;
    end;

end;

procedure TQuoModifyDateForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TQuoModifyDateForm.cxButton1Click(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_diff: integer;
begin
  if MessageDlg('Are you sure you want to change the dates ?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  x_diff := trunc(cxNewDateEdit.Date) - trunc(cxCurrentDateEdit.Date);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  QueryString := 'EXEC p_QuoModifyDates ' + IntToStr(_QuoModifyDateForm_Quotations_id) + ',' +
    IntToStr(x_diff) + ',1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  if (QuoCitywiseForm <> nil) then
    begin
      QuoCitywiseForm.MasterCds.Refresh;

      QuoCitywiseForm.Detail1Cds.Active := False;
      QuoCitywiseForm.Detail1Cds.Active := True;
    end;

  if (PrestoForm <> nil) then
    begin
      PrestoForm.MasterCds.Refresh;

      PrestoForm.DetailCds.Active := False;
      PrestoForm.DetailCds.Active := True;
    end;


  MessageDlg ('Please run "Auto Create" & "Check Integrity" again to identify problems whith the shifted dates',mtInformation,
              [mbOK], 0);

  Close;

end;

end.
