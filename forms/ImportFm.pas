unit ImportFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, scExcelExport,
  FMTBcd, DB, DBClient, Provider, SqlExpr, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, dxSkinsCore, dxSkinsDefaultPainters;

type
  TImportForm = class(TForm)
    cxButton1: TcxButton;
    scExcelExport: TscExcelExport;
    ImportSds: TSQLDataSet;
    ImportDsp: TDataSetProvider;
    ImportCds: TClientDataSet;
    ImportDS: TDataSource;
    ImportCdsTrainCategories_id: TIntegerField;
    ImportCdsKms: TIntegerField;
    ImportCdsTrain: TStringField;
    ImportCdst1c_ac: TFMTBCDField;
    ImportCdst2c_ac_2t: TFMTBCDField;
    ImportCdst2c_ac_3t: TFMTBCDField;
    ImportCdsac_cc: TFMTBCDField;
    ImportCdsac_cce: TFMTBCDField;
    ImportCdst2c: TFMTBCDField;
    ImportCdst1c: TFMTBCDField;
    ImportCdssleeper: TFMTBCDField;
    ImportCdsid: TIntegerField;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportForm: TImportForm;
  _ImportForm_Level : Integer;
implementation

uses BackOfficeDM, MainFm;

{$R *.dfm}

procedure TImportForm.cxButton1Click(Sender: TObject);
var
  GpSds: TSQLDataSet;
  x_row: integer;
begin
  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.ExcelVisible := True;
  scExcelExport.LoadDefaultProperties;

  scExcelExport.Filename := g_ReportDir + '\Fares.xls';

  scExcelExport.WorksheetName := 'Sheet1';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

 GpSds.Close;
  GpSds.CommandText := 'TRUNCATE TABLE zzz_TrainFares ';
  GpSds.ExecSQL;
  
  ImportCds.Active := False;
  ImportCds.Active := True;

  //x_count := 1;


  //MAX(IF(LEN(B1:B65000)>0,ROW(B1:B65000),0))

        // Rajdhani
      for x_row := 3 to 1002 do
        begin

          if (Trim(scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value) > '') and
             (Trim(scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value) > '') and
             (Trim(scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value) > '') then
            begin
              ImportCds.Insert;
              ImportCds['Kms'] := scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value;
    //          ImportCds['Train'] := scExcelExport.ExcelWorkSheet.Range['E1','G1'].Value ;
              ImportCds['Train'] := 'Rajdhani' ;
              ImportCds['TrainCategories_id'] := 2 ;

              ImportCds['t1c_ac'] := scExcelExport.ExcelWorkSheet.Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value;
              ImportCds['t2c_ac_2t'] := scExcelExport.ExcelWorkSheet.Range['F'+IntToStr(x_row),'F'+IntToStr(x_row)].Value;
              ImportCds['t2c_ac_3t'] := scExcelExport.ExcelWorkSheet.Range['G'+IntToStr(x_row),'G'+IntToStr(x_row)].Value;


       //       ImportCds['id'] := x_count;
              ImportCds.Post;

              //x_count := x_count + 1;

            end;

        end;
    // Shatabdi
  for x_row := 3 to 1002 do
    begin

      if (Trim(scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value) > '') then
        begin
          ImportCds.Insert;
          ImportCds['Kms'] := scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value;
//          ImportCds['Train'] := scExcelExport.ExcelWorkSheet.Range['E1','G1'].Value ;
          ImportCds['Train'] := 'Shatabdi' ;
          ImportCds['TrainCategories_id'] := 3 ;

          ImportCds['ac_cce'] := scExcelExport.ExcelWorkSheet.Range['H'+IntToStr(x_row),'H'+IntToStr(x_row)].Value;
          ImportCds['ac_cc'] := scExcelExport.ExcelWorkSheet.Range['I'+IntToStr(x_row),'I'+IntToStr(x_row)].Value;

        //  ImportCds['id'] := x_count;
          ImportCds.Post;

          //x_count := x_count + 1;

        end;

    end;

    //Jan Shatabdi
  for x_row := 3 to 1002 do
    begin

      if (Trim(scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value) > '') then
        begin
          ImportCds.Insert;
          ImportCds['Kms'] := scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value;
//          ImportCds['Train'] := scExcelExport.ExcelWorkSheet.Range['E1','G1'].Value ;
          ImportCds['Train'] := 'Jan Shatabdi' ;
          ImportCds['TrainCategories_id'] := 6 ;

          ImportCds['ac_cc'] := scExcelExport.ExcelWorkSheet.Range['J'+IntToStr(x_row),'J'+IntToStr(x_row)].Value;
          ImportCds['t2c'] := scExcelExport.ExcelWorkSheet.Range['K'+IntToStr(x_row),'K'+IntToStr(x_row)].Value;

       //   ImportCds['id'] := x_count;
          ImportCds.Post;

         // x_count := x_count + 1;

        end;

    end;

     //Garib Yatra
  for x_row := 3 to 1002 do
    begin

      if (Trim(scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value) > '') then
        begin
          ImportCds.Insert;
          ImportCds['Kms'] := scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value;
//          ImportCds['Train'] := scExcelExport.ExcelWorkSheet.Range['E1','G1'].Value ;
          ImportCds['Train'] := 'Garib Yatra' ;
          ImportCds['TrainCategories_id'] := 4 ;

          ImportCds['t2c_ac_3t'] := scExcelExport.ExcelWorkSheet.Range['L'+IntToStr(x_row),'L'+IntToStr(x_row)].Value;
          ImportCds['ac_cc'] := scExcelExport.ExcelWorkSheet.Range['M'+IntToStr(x_row),'M'+IntToStr(x_row)].Value;

     //     ImportCds['id'] := x_count;
          ImportCds.Post;

          //x_count := x_count + 1;

        end;

    end;

      // Mail
  for x_row := 3 to 1002 do
    begin

      if (Trim(scExcelExport.ExcelWorkSheet.Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value) > '') then
        begin
          ImportCds.Insert;
          ImportCds['Kms'] := scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value;
//          ImportCds['Train'] := scExcelExport.ExcelWorkSheet.Range['E1','G1'].Value ;
          ImportCds['Train'] := 'Mail' ;
          ImportCds['TrainCategories_id'] := 5 ;

          ImportCds['t1c_ac'] := scExcelExport.ExcelWorkSheet.Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value;
          ImportCds['t2c_ac_2t'] := scExcelExport.ExcelWorkSheet.Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value;
          ImportCds['t1c'] := scExcelExport.ExcelWorkSheet.Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value;
          ImportCds['t2c_ac_3t'] := scExcelExport.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value;
          ImportCds['ac_cc'] := scExcelExport.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value;
          ImportCds['sleeper'] := scExcelExport.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value;
          ImportCds['t2c'] := scExcelExport.ExcelWorkSheet.Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value;

      //    ImportCds['id'] := x_count;
          ImportCds.Post;

          //x_count := x_count + 1;

        end;

    end;

      // Express
  for x_row := 3 to 1002 do
    begin

      if (Trim(scExcelExport.ExcelWorkSheet.Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value) > '') and
         (Trim(scExcelExport.ExcelWorkSheet.Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value) > '') then
        begin
          ImportCds.Insert;
          ImportCds['Kms'] := scExcelExport.ExcelWorkSheet.Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value;
//          ImportCds['Train'] := scExcelExport.ExcelWorkSheet.Range['E1','G1'].Value ;
          ImportCds['Train'] := 'Express' ;
          ImportCds['TrainCategories_id'] := 1 ;

          ImportCds['t1c_ac'] := scExcelExport.ExcelWorkSheet.Range['N'+IntToStr(x_row),'N'+IntToStr(x_row)].Value;
          ImportCds['t2c_ac_2t'] := scExcelExport.ExcelWorkSheet.Range['O'+IntToStr(x_row),'O'+IntToStr(x_row)].Value;
          ImportCds['t1c'] := scExcelExport.ExcelWorkSheet.Range['P'+IntToStr(x_row),'P'+IntToStr(x_row)].Value;
          ImportCds['t2c_ac_3t'] := scExcelExport.ExcelWorkSheet.Range['Q'+IntToStr(x_row),'Q'+IntToStr(x_row)].Value;
          ImportCds['ac_cc'] := scExcelExport.ExcelWorkSheet.Range['R'+IntToStr(x_row),'R'+IntToStr(x_row)].Value;
          ImportCds['sleeper'] := scExcelExport.ExcelWorkSheet.Range['S'+IntToStr(x_row),'S'+IntToStr(x_row)].Value;
          ImportCds['t2c'] := scExcelExport.ExcelWorkSheet.Range['T'+IntToStr(x_row),'T'+IntToStr(x_row)].Value;

      //    ImportCds['id'] := x_count;
          ImportCds.Post;

          //x_count := x_count + 1;

        end;

    end;


  ImportCds.ApplyUpdates(0);


  GpSds.Close;
  GpSds.CommandText := 'Exec p_zzz_TrainFares ' + IntToStr(StrToInt(cxTextEdit1.Text)) + ','+
             ''''+ FormatDateTime('mm/dd/yyyy', cxDateEdit1.Date)+ ''' ';

  GpSds.ExecSQL;

  GpSds.Free;

  ShowMessage('Transfer Completed');

end;


procedure TImportForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TImportForm.FormDestroy(Sender: TObject);
begin
  ImportForm := Nil;
end;

procedure TImportForm.FormCreate(Sender: TObject);
begin
  Height := 185;
  Width  := 318;

  cxDateEdit1.Date := NOW();
end;

end.
