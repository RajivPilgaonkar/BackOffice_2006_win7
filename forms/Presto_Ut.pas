unit Presto_Ut;

interface

uses
  dbtables, Db, SysUtils, Dialogs, Messages, Controls, 
  Classes, Windows, Variants, SQLExpr,
  cxGrid, cxGridDBTableView, cxGridDBBandedTableView, cxGridExportLink,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, QGraphics, cxCustomPivotGrid,
  cxExportPivotGridLink, Forms, OleServer, ComObj, Outlook2000;


{
  dxPScxGrid6Lnk, QuickRpt, Buttons, cxMemo, Outlook2000, QRPDFFilt, OleServer, ComObj, cxGridExportLink;

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom_Presto_Fm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, ExtCtrls, cxPC,
  cxNavigator, cxDBNavigator, cxContainer, cxLabel, cxDBLabel, StdCtrls,
  cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit,
  cxTimeEdit, DateUtils, scExcelExport, cxRadioGroup, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPScxGrid6Lnk, QuickRpt, Buttons, cxMemo, Outlook2000, QRPDFFilt, OleServer, ComObj, cxGridExportLink;
}

procedure InsertPrintEntry;
procedure InsertExclusionEntry;
procedure WriteWebTextFile (x_Filename: string);
procedure SendEmail(x_option: integer);
function GetMailIp: string;
function GetSendMail: boolean;
function GetMailBody(x_option: integer): string;

implementation

uses PrestoFm, BackOfficeDM, MainFm;

procedure InsertPrintEntry;
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText := 'EXEC p_QuoInsertPrintItinerary ' + IntToStr(PrestoForm.MasterCds['Quotations_id']) + ',1 ';
  GpSds.ExecSQL;

  GpSds.Free;

end;


procedure InsertItineraryEntry;
begin
end;

procedure InsertExclusionEntry;
var
  GpSds : TSQLDataSet;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.Close;
  GpSds.CommandText := 'SELECT x_count = COUNT(*) FROM QuoExcl WHERE Quotations_id =  ' + IntToStr(PrestoForm.MasterCds['Quotations_id']) + ' ';
  GpSds.Open;

  if GpSds['x_count'] = 0 then
    begin
      GpSds.Close;
      GpSds.CommandText := 'EXEC p_AddQuoExclusions ' + IntToStr(PrestoForm.MasterCds['Quotations_id']) + ' ';
      GpSds.ExecSQL;
    end;

  GpSds.Free;

end;

procedure WriteWebTextFile (x_Filename: string);
var
  F_web: Textfile;
  x_DueDateStr: string;
  x_Quotations_id: integer;
  x_BasicRate, x_ServTaxPerc,x_ServTaxAmt, x_QuotationAmt, x_AdvanceAmt, x_BalanceAmt, x_PaidAmt: double;
begin

  if PrestoForm.QuoPrintCds['Email'] = '' then
    raise SysUtils.exception.create ('Please enter the email in the starting info');

  if PrestoForm.MasterCds['QuotationNo'] = null then
    raise SysUtils.exception.create ('Please enter the quotation number');

  AssignFile(F_web, x_FileName);
  Rewrite(F_web);

  WriteLn (F_web, '[FileType]');
  WriteLn (F_web, 'Type = Tours');

  WriteLn (F_web, '[Lead]');

  if PrestoForm.MasterCds['PaxName'] <> null then
    WriteLn (F_web, 'PartyName = ' + PrestoForm.MasterCds['PaxName']);

  WriteLn (F_web, 'Email = ' + PrestoForm.QuoPrintCds['Email']);

  WriteLn (F_web, 'NumPax = ' + IntToStr(PrestoForm.QuoPrintCds['NumPax']));

  WriteLn (F_web, '');

  WriteLn (F_web, '[Quotation]');

  x_Quotations_id := 0;
  if PrestoForm.MasterCds['Quotations_id'] <> null then
    x_Quotations_id := PrestoForm.MasterCds['Quotations_id'];
  WriteLn (F_web, 'Id = ' + IntToStr(x_Quotations_id));

  WriteLn (F_web, 'No = ' + IntToStr(PrestoForm.MasterCds['QuotationNo']));

  WriteLn (F_web, 'Currency = ' + IntToStr(PrestoForm.MasterCds['Currencies_id']));

  x_BasicRate := 0;
  if PrestoForm.QuoPrintCds['BasicRate'] <> null then
    x_BasicRate := PrestoForm.QuoPrintCds['BasicRate'];
  WriteLn (F_web, 'AmountPerPerson = ' + FloatToStr(x_BasicRate));

  x_ServTaxPerc := 0;
  if PrestoForm.QuoPrintCds['ServiceTaxPerc'] <> null then
    x_ServTaxPerc := PrestoForm.QuoPrintCds['ServiceTaxPerc'];
  WriteLn (F_web, 'ServiceTaxPercentage = ' + FloatToStr(x_ServTaxPerc));

  x_ServTaxAmt := 0;
  if PrestoForm.QuoPrintCds['ServiceTaxAmt'] <> null then
    x_ServTaxAmt := PrestoForm.QuoPrintCds['ServiceTaxAmt'];
  WriteLn (F_web, 'ServiceTax = ' + FloatToStr(x_ServTaxAmt));

  x_QuotationAmt := 0;
  if PrestoForm.QuoPrintCds['QuotationAmt'] <> null then
    x_QuotationAmt := PrestoForm.QuoPrintCds['QuotationAmt'];
  WriteLn (F_web, 'TotalAmt = ' + FloatToStr(x_QuotationAmt));

  x_PaidAmt := 0;
  if PrestoForm.QuoPrintCds['RecdAmt'] <> null then
    x_PaidAmt := PrestoForm.QuoPrintCds['RecdAmt'];

  WriteLn (F_web, '');

  WriteLn (F_web, '[Payment]');

  x_AdvanceAmt := 0;
  if PrestoForm.QuoPrintCds['AdvDueAmt'] <> null then
    x_AdvanceAmt := PrestoForm.QuoPrintCds['AdvDueAmt'];
  WriteLn (F_web, 'AdvanceAmt = ' + FloatToStr(x_AdvanceAmt));

  x_DueDateStr := '';
  if (x_AdvanceAmt <> 0) and (PrestoForm.QuoPrintCds['AdvDueDate'] <> null) then
    x_DueDateStr := FormatDateTime('yyyy-mm-dd',PrestoForm.QuoPrintCds['AdvDueDate'])
  else
    x_DueDateStr := '0000-00-00';
  WriteLn (F_web, 'AdvanceDueOn = ' + x_DueDateStr);

  x_BalanceAmt := x_QuotationAmt - x_PaidAmt - x_AdvanceAmt;
  if x_BalanceAmt < 0.0 then
    x_BalanceAmt := 0.0;
  WriteLn (F_web, 'BalanceAmt = ' + FloatToStr(x_BalanceAmt));

  x_DueDateStr := '';
  if PrestoForm.QuoPrintCds['DueDate'] <> null then
    x_DueDateStr := FormatDateTime('yyyy-mm-dd',PrestoForm.QuoPrintCds['DueDate'])
  else
    x_DueDateStr := '0000-00-00';
  WriteLn (F_web, 'BalanceAmtDueOn = ' + x_DueDateStr);

  CloseFile(F_web);

end;


procedure SendEmail(x_option: integer);
var
  x_Path, x_FileName, x_ip, x_To, x_TourCode, x_PaxInfo, x_QueryString, x_Sender: string;
  Outlook, MailItem, NmSpace, MapiFolder: OLEVariant;
  x_sendMail: boolean;
  GpSds : TSQLDataSet;
begin

  if MessageDlg('This will attach pdf files to your email. It will take a few minutes. Please do not close the application',
                mtWarning, [mbYes, mbNo], 0) <> mrYes then
    exit;

  if PrestoForm.MasterCds['Quotations_id'] = null then
    raise SysUtils.exception.create('Please select the quotation');

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;
  GpSds.CommandType := ctQuery;

  GpSds.CommandText :=
    'SELECT q.Email, qp.PaxInfo, q.TourCode FROM Quotations q ' +
    'INNER JOIN QuoPrint qp ON q.Quotations_id = qp.Quotations_id ' +
    'WHERE q.Quotations_id = ' + IntToStr(PrestoForm.MasterCds['Quotations_id']);
  GpSds.Open;

  x_To := '';
  if (not GpSds.Eof) and (GpSds['Email'] <> null) then
    x_To := GpSds['Email'];

  x_PaxInfo := '';
  if (not GpSds.Eof) and (GpSds['PaxInfo'] <> null) then
    x_PaxInfo := GpSds['PaxInfo'];

  x_TourCode := '';
  if (not GpSds.Eof) and (GpSds['TourCode'] <> null) then
    x_TourCode := GpSds['TourCode'];


  x_QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);
  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  GpSds.Free;


  x_Path := g_ReportDir + '\WebQuotations';

  if not DirectoryExists(x_Path) then
    CreateDir(x_Path);

  x_FileName := x_Path + '\' + IntToStr(PrestoForm.MasterCds['Quotations_id']);

  if x_option = 1 then
    begin
      PrestoForm.WritePdfFile(2, 2, x_Filename + '.pdf');
      PrestoForm.WriteQuotationPdfFile(2, x_Filename + '_quote.pdf');
    end
  else if x_option = 2 then
    begin
      PrestoForm.WriteDetailedItinPdfFile(2, x_Filename + '_DetailedItin.pdf');
      PrestoForm.WriteManyHotelPdfFile(2, x_Filename + '_Hotel.pdf');
    end
  else if x_option = 3 then
    begin
      PrestoForm.WritePdfFile(2, 2, x_Filename + '.pdf');
      PrestoForm.WriteQuotationPdfFile(2, x_Filename + '_quote.pdf');
      PrestoForm.WriteDetailedItinPdfFile(2, x_Filename + '_DetailedItin.pdf');
      PrestoForm.WriteManyHotelPdfFile(2, x_Filename + '_Hotel.pdf');
    end;

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  if x_SendMail = false then
    x_To := x_Sender
  else
    x_To := x_To + ';' + x_Sender;

  MailItem := Outlook.createitem(olMailItem);
  MailItem.Recipients.Add(x_To);
  MailItem.subject := '(' + x_TourCode + ') -- ' + x_PaxInfo;

  MailItem.Body := GetMailBody (x_option);
  if x_option = 1 then
    begin
      MailItem.Attachments.Add(x_Filename + '.pdf');
      MailItem.Attachments.Add(x_Filename + '_quote.pdf');
    end
  else if x_option = 2 then
    begin
      MailItem.Attachments.Add(x_Filename + '_DetailedItin.pdf');
      MailItem.Attachments.Add(x_Filename + '_Hotel.pdf');
    end
  else if x_option = 3 then
    begin
      MailItem.Attachments.Add(x_Filename + '.pdf');
      MailItem.Attachments.Add(x_Filename + '_quote.pdf');
      MailItem.Attachments.Add(x_Filename + '_DetailedItin.pdf');
      MailItem.Attachments.Add(x_Filename + '_Hotel.pdf');
    end;
  MailItem.save;

  ShowMessage ('Please check the drafts folder of your mailbox');

end;

function GetMailIp: string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_ip: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT ltrim(rtrim(coalesce(text,''''))) as email_ip from defaults ' +
    'WHERE item = ''Email_ip'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ip := '';
  if GpSds['Email_ip'] <> null then
    x_ip := GpSds['Email_ip'];

  GpSds.Free;

  Result := x_ip;

end;


function GetSendMail: boolean;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_SendMail: boolean;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMailGroup'' ';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  GpSds.Free;

  Result := x_SendMail;

end;


function GetMailBody(x_option: integer): string;
var
  GpSds : TSQLDataSet;
  x_msg, QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT c.Consultant, q.PaxName, q.TourCode, u.UserName, '''' AS PaxNotes ' +
                 'FROM Quotations q ' +
                 'LEFT JOIN Consultants c ON q.Consultants_id = c.Consultants_id ' +
                 'LEFT JOIN AdmUsers u ON q.AdmUsers_id = u.AdmUsers_id ' +
                 'LEFT JOIN QuoPrint qp ON q.Quotations_id = qp.Quotations_id ' +
                 'WHERE q.Quotations_id = ' + IntToStr(PrestoForm.MasterCds['Quotations_id']);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_msg := 'Dear ';
  if (not GpSds.Eof) and (GpSds['Consultant'] <> null) then
    x_msg := x_msg + trim(GpSds['Consultant']);
  x_msg := x_msg + chr(13) + chr(13);

  x_msg := x_msg + 'Personal itinerary prepared for ';
  if (not GpSds.Eof) and (GpSds['PaxName'] <> null) then
    x_msg := x_msg + trim(GpSds['PaxName']);
  if (not GpSds.Eof) and (GpSds['TourCode'] <> null) then
    x_msg := x_msg + ' (' + trim(GpSds['TourCode']) + ')';
  x_msg := x_msg + chr(13) + chr(13);

  x_msg := x_msg + 'Please find attached the following documents:' + chr(13) + chr(13);

  if (x_option = 1) or (x_option = 3) then
    begin
      x_msg := x_msg + 'Tour Proposal' + chr(13);
      x_msg := x_msg + 'Quotation' + chr(13);
    end;

  if (x_option = 2) or (x_option = 3) then
    begin
      x_msg := x_msg + 'Detailed Itinerary' + chr(13);
      x_msg := x_msg + 'List of Hotels' + chr(13);
    end;

  x_msg := x_msg + chr(13);

  x_msg := x_msg + 'Please do let me know if you need any further clarification.' + chr(13) + chr(13);

  x_msg := x_msg + 'Best regards, ' + chr(13) + chr(13);

  if (not GpSds.Eof) and (GpSds['UserName'] <> null) then
    x_msg := x_msg + trim(GpSds['UserName']);
  x_msg := x_msg + chr(13);

  x_msg := x_msg + 'Reservations Department' + chr(13) + chr(13);

  if (not GpSds.Eof) and (GpSds['PaxNotes'] <> null) then
    x_msg := x_msg + trim(GpSds['PaxNotes']);

  GpSds.Free;

  Result := x_msg;

end;


end.
