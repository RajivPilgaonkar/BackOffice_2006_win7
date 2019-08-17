unit QuoSendMailFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBLookupComboBox,
  Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridDBTableView,
  cxGrid, DBClient, Provider, SqlExpr, cxContainer, cxGroupBox,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, cxTextEdit, cxMemo, cxDBEdit, cxPC, ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ComObj, OleServer, Outlook2000;

type
  TQuoSendMailForm = class(TForm)
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccCdsQuoAccommodation_id: TIntegerField;
    AccCdsQuotations_id: TIntegerField;
    AccCdsHotelAddressbook_id: TIntegerField;
    AccCdsNights: TIntegerField;
    AccCdsHotelCities_id: TIntegerField;
    AccCdsSelected: TBooleanField;
    AccDs: TDataSource;
    AccCdsSendMail: TBooleanField;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    IdSMTP1: TIdSMTP;
    AccCdsRequestedOn: TSQLTimeStampField;
    AccCdsConfirmedOn: TSQLTimeStampField;
    AccCdsRemarks: TStringField;
    AccCdsAccString: TStringField;
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxCloseBtn: TcxButton;
    cxPageControl: TcxPageControl;
    cxTabSheetAcc: TcxTabSheet;
    cxTabSheetTickets: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxGridMaster: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridMasterDBBandedTableView1SendMail: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1HotelAddressbook_id_City: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1HotelAddressbook_id: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1AccString: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridMasterDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn;
    cxGridMasterLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxDBMemo2: TcxDBMemo;
    cxGridTickets: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridTicketsDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridTicketsLevel1: TcxGridLevel;
    TicketSds: TSQLDataSet;
    TicketDsp: TDataSetProvider;
    TicketCds: TClientDataSet;
    TicketDs: TDataSource;
    TicketCdsQuoTickets_id: TIntegerField;
    TicketCdsQuotations_id: TIntegerField;
    TicketCdsAgentAddressbook_id: TIntegerField;
    TicketCdsTickets_id: TIntegerField;
    TicketCdsNoOfTickets: TIntegerField;
    TicketCdsSendMail: TBooleanField;
    TicketCdsRequestedOn: TSQLTimeStampField;
    TicketCdsConfirmedOn: TSQLTimeStampField;
    TicketCdsTicketString: TStringField;
    cxGridTicketsDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1Quotations_id: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1Tickets_id: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1SendMail: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn;
    cxGridTicketsDBBandedTableView1TicketString: TcxGridDBBandedColumn;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    AgentDs: TDataSource;
    TicketCdsRemarks: TStringField;
    TicketCdsRemarksAgent: TStringField;
    AccCdsRemarksHotel: TStringField;
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    TicketCdsFrom_Cities_id: TIntegerField;
    TicketCdsTo_Cities_id: TIntegerField;
    TicketCdsClass_id: TIntegerField;
    TicketCdsTravelDate: TSQLTimeStampField;
    TicketCdsFlightNo: TStringField;
    TicketCdsETD: TSQLTimeStampField;
    TicketCdsETA: TSQLTimeStampField;
    AccCdsCancelledOn: TSQLTimeStampField;
    AccCdsRemarksHotelCancel: TStringField;
    cxGridMasterDBBandedTableView1CancelledOn: TcxGridDBBandedColumn;
    cxDBMemo5: TcxDBMemo;
    Label3: TLabel;
    cxButton1: TcxButton;
    AccCdsDateIn: TSQLTimeStampField;
    AccCdsReserveHotelOvernight: TBooleanField;
    cxGridMasterDBBandedTableView1ReserveHoteOvernight: TcxGridDBBandedColumn;
    TicketCdsRemarksAgentCancel: TStringField;
    Label4: TLabel;
    cxDBMemo6: TcxDBMemo;
    AccCdsPackages_id: TIntegerField;
    TicketCdsPackages_id: TIntegerField;
    CxStyleRepository1: TcxStyleRepository;
    cxStyleGreen: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleDarkRed: TcxStyle;
    cxTabSheet1: TcxTabSheet;
    SsSds: TSQLDataSet;
    SsDsp: TDataSetProvider;
    SsCds: TClientDataSet;
    SsDs: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    SsCdsSendMail: TBooleanField;
    SsCdsCities_id: TIntegerField;
    SsCdsAgentAddressbook_id: TIntegerField;
    SsCdsServiceString: TStringField;
    SsCdsRequestedOn: TSQLTimeStampField;
    SsCdsConfirmedOn: TSQLTimeStampField;
    SsCdsCancelledOn: TSQLTimeStampField;
    SsCdsRemarks: TStringField;
    SsCdsRemarksHotel: TStringField;
    SsCdsRemarksHotelCancel: TStringField;
    SsCdsQuoServices_id: TIntegerField;
    cxGridDBBandedTableView1QuoServices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SendMail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ServiceString: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CancelledOn: TcxGridDBBandedColumn;
    cxDBMemo7: TcxDBMemo;
    Label5: TLabel;
    cxDBMemo8: TcxDBMemo;
    Label6: TLabel;
    cxDBMemo9: TcxDBMemo;
    CitiesSds: TSQLDataSet;
    CitiesDsp: TDataSetProvider;
    CitiesCds: TClientDataSet;
    CitiesDs: TDataSource;
    CitiesCdsCities_id: TIntegerField;
    CitiesCdsCity: TStringField;
    PopupMenu1: TPopupMenu;
    SetasConfirmed1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure TicketCdsAfterPost(DataSet: TDataSet);
    procedure SendAccommodationMail;
    procedure SendTicketMail;
    procedure cxButton1Click(Sender: TObject);
    procedure SendAccommodationCancelMail;
    procedure SendTicketCancelMail;
    procedure SsCdsAfterPost(DataSet: TDataSet);
    procedure SetasConfirmed1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SendSsMail;
    procedure SendSsCancelMail;
  public
    { Public declarations }
  end;

var
  QuoSendMailForm: TQuoSendMailForm;
  _QuoSendMailForm_Quotations_id: integer;

implementation

uses QuoCitywiseFm, BackOfficeDM;

{$R *.dfm}

procedure TQuoSendMailForm.FormCreate(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: String;
  x_Agents_id: integer;
begin

  //cxPageControl.Tabs[2].visible := false;

  SsCds.Close;
  SsSds.Close;
  SsSds.Params[0].Value := _QuoSendMailForm_Quotations_id;
  SsSds.Open;
  SsCds.Open;

  Height := 660;
  Width := 1000;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'EXEC p_Quo_UpdateEmailStrings ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

{
  QueryString := 'UPDATE QuoAccommodation SET AccString = ' +
  '(SELECT dbo.fn_HotelConfirmationString(q.NumSingles, q.NumDoubles, q.NumTriples, q.NumTwins, QuoAccommodation.RoomTypes_id,' +
          'QuoAccommodation.AC, QuoAccommodation.MealPlans_id, ' +
          'QuoAccommodation.DateIn, QuoAccommodation.DateOut) from Quotations q ' +
   'WHERE QuoAccommodation.Quotations_id = q.Quotations_id) ' +
   'WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
   'AND Selected = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;
}

  QueryString := 'UPDATE QuoAccommodation ' +
    ' SET Sendmail = 0  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NOT NULL ' +
    ' AND Selected = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoAccommodation ' +
    ' SET Sendmail = 1  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NULL ' +
    ' AND Selected = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


{
  QueryString := 'UPDATE QuoTickets SET TicketString = ' +
  '(SELECT dbo.fn_TravelVouDesc(q.NumPax, qt.Tickets_id, qt.FlightNo, ' +
          'qt.From_Cities_id, qt.To_Cities_id, qt.From_TrainStations_id, ' +
          'qt.To_TrainStations_id, qt.Class_id, qt.eta, qt.etd, ' +
          'qt.TravelDate, qt.NoOfTickets, 0) ' +
  'FROM QuoTickets qt LEFT JOIN Quotations q ON qt.Quotations_id = q.Quotations_id ' +
  'WHERE QuoTickets.QuoTickets_id = qt.QuoTickets_id) ' +
   'WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ';

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;
}

  QueryString := 'SELECT Number FROM Defaults WHERE Defaults_id = 17 ';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  x_Agents_id := 1564;
  if (not GpSds.EOF) and (GpSds['Number']<>null) then
    x_Agents_id := GpSds['Number'];


  QueryString := 'UPDATE QuoTickets ' +
    ' SET AgentAddressbook_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND AgentAddressbook_id IS NULL ' +
    ' AND Tickets_id = 2 ';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'SELECT Number FROM Defaults WHERE Defaults_id = 23 ';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  x_Agents_id := 133;
  if (not GpSds.EOF) and (GpSds['Number']<>null) then
    x_Agents_id := GpSds['Number'];


  QueryString := 'UPDATE QuoTickets ' +
    ' SET AgentAddressbook_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND AgentAddressbook_id IS NULL ' +
    ' AND Tickets_id = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



  QueryString := 'UPDATE QuoTickets ' +
    ' SET Sendmail = 0  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NOT NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'UPDATE QuoTickets ' +
    ' SET Sendmail = 1  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE QuoServices ' +
    ' SET Sendmail = 0  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NOT NULL ' +
    ' AND Services_id IN (SELECT s.Services_id FROM Services s WHERE AdvBooking = 1)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'UPDATE QuoServices ' +
    ' SET Sendmail = 1  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NULL ' +
    ' AND Services_id IN (SELECT s.Services_id FROM Services s WHERE AdvBooking = 1)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  SsCds.Active := false;
  SsSds.Active := false;
  SsSds.Active := true;
  SsCds.Active := true;


  GpSds.Free;

  HotelCds.Open;
  AgentCds.Open;
  CitiesCds.Open;

  AccCds.Active := False;
  AccCds.Filter := '(Quotations_id = ' +
    IntToStr(_QuoSendMailForm_Quotations_id) + ') AND ' +
    '(Nights > 0) AND (Selected = true) AND (Packages_id IS NULL)';
  AccCds.Filtered := True;
  AccCds.Active := True;

  TicketCds.Active := False;
  TicketCds.Filter := '(Quotations_id = ' +
    IntToStr(_QuoSendMailForm_Quotations_id) + ') AND ' +
    '((Tickets_id = 1) OR (Tickets_id = 2)) AND (Packages_id IS NULL)';
  TicketCds.Filtered := True;
  TicketCds.Active := True;

  cxPageControl.ActivePageIndex := 0;

end;

procedure TQuoSendMailForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TQuoSendMailForm.cxCloseBtnClick(Sender: TObject);
begin

  if AccCds.State = dsEdit then
    AccCds.Post;

  if TicketCds.State = dsEdit then
    TicketCds.Post;

  if SsCds.State = dsEdit then
    SsCds.Post;

  Close;
end;

procedure TQuoSendMailForm.cxButton4Click(Sender: TObject);
begin

  if AccCds.State = dsEdit then
    AccCds.Post;

  if TicketCds.State = dsEdit then
    TicketCds.Post;

  if SsCds.State = dsEdit then
    SsCds.Post;

  if cxPageControl.ActivePageIndex = 0 then
    SendAccommodationMail
  else if cxPageControl.ActivePageIndex = 1 then
    SendTicketMail
  else if cxPageControl.ActivePageIndex = 2 then
    SendSsMail;

end;

procedure TQuoSendMailForm.TicketCdsAfterPost(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);
end;


procedure TQuoSendMailForm.SendAccommodationMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode,  x_Rem: String;
  x_sendMail : boolean;
  Outlook, MailItem, NmSpace: OLEVariant;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);

//  MapiFolder := NmSpace.getdefaultfolder(olFolderOutbox);

//  x_SendMail := GetSendMail;

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

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMail'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  QueryString := 'SELECT u.Email, q.TourCode from Quotations q, AdmUsers u ' +
    'WHERE q.AdmUsers_id = u.AdmUsers_id ' +
    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  x_TourCode := '';
  if not GpSds.EOF then
    x_TourCode := GpSds['TourCode'];

  AccCds.First;
  while not AccCds.Eof do
    begin

      if AccCds['SendMail'] = true then
        begin

          x_HotelEmail := '';
          x_Recipient := '';
          QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
            'FROM AddressDetails ad ' +
            'WHERE ad.Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']) + ' ' +
            'ORDER BY COALESCE(ad.OrderNo,100)';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
{
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_HotelEmail := GpSds['Email'];
}
          if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
            begin
              x_Recipient := trim(GpSds['Salutation']);
              if GpSds['Firstname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
              if GpSds['Lastname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
            end;

          if x_HotelEmail = '' then
            begin
              x_HotelEmail := '';
              QueryString := 'SELECT CASE WHEN a1.through_addressbook_id IS NOT NULL THEN a2.Email ELSE a1.Email END AS Email ' +
                'FROM Addressbook a1 ' +
                'LEFT JOIN Addressbook a2 ON a1.through_addressbook_id = a2.Addressbook_id ' +
                'WHERE a1.Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
              if (not GpSds.EOF) and (GpSds['Email'] <> null) then
                x_HotelEmail := GpSds['Email'];
            end;

          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_To := '';
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '','') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '' '') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end;

          if x_SendMail = false then
            x_To := x_Sender
          else
            x_To := x_To + ';' + x_Sender;

          x_Rem := '';
          if AccCds['RemarksHotel'] <> null then
            x_Rem := AccCds['RemarksHotel'];

          QueryString := 'SELECT dbo.fn_HotelConfirmationEmail( ' +
            'q.TourCode, qa.HotelAddressbook_id, q.PaxName, ql.NumPax, ql.NumSingles, ql.NumDoubles, ql.NumTriples, ql.NumTwins, ' +
            'qa.RoomTypes_id, qa.AC, qa.MealPlans_id, qa.DateIn, qa.DateOut, ' +
            'a.UserName,''' + x_Recipient + ''',''' + x_Rem + ''') AS Msg ' +
            'FROM QuoAccommodation qa ' +
            'INNER JOIN Quotations q ON qa.Quotations_id = q.Quotations_id ' +
            'LEFT JOIN Admusers a ON q.AdmUsers_id = a.AdmUsers_id ' +
            'INNER JOIN QuoLines ql ON qa.QuoAccommodation_id = ql.QuoAccommodation_id ' +
            'WHERE qa.QuoAccommodation_id  = ' + IntToStr(AccCds['QuoAccommodation_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_Msg := '';
          if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
            x_Msg := GpSds['Msg'];

//          if AccCds['RemarksHotel'] <> null then
//            x_Msg := x_Msg + chr(13) + chr(13) + AccCds['RemarksHotel'];

          try
            begin

              QueryString := 'SELECT q.TourCode ' +
                'FROM QuoAccommodation qa, Quotations q ' +
                'WHERE qa.Quotations_id = q.Quotations_id ' +
                'AND qa.QuoAccommodation_id  = ' + IntToStr(AccCds['QuoAccommodation_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_TourCode := '';
              if not GpSds.EOF then
                x_TourCode := GpSds['TourCode'];

              ShowMessage (x_To + chr(13) + x_Sender);
              ShowMessage (x_Msg);

              if MessageDlg ('Do you want to send this message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin

                  MailItem := Outlook.createitem(olMailItem);
                  MailItem.Recipients.Add(x_To);
                  MailItem.subject := 'Request for Reservation -- ' + x_TourCode;
                  MailItem.Body := x_Msg;
                  MailItem.Save;


//                  IdSMTP1.QuickSend(x_ip, 'Request for Reservation -- ' + x_TourCode,
//                                    x_To, x_Sender, x_Msg);

                  AccCds.Edit;
                  AccCds['SendMail'] := True;
                  AccCds['RequestedOn'] := Date;
                  AccCds.Post;

                end;

            end
          except
          end;

        end;

      AccCds.Next;

    end;


  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

end;

procedure TQuoSendMailForm.SendAccommodationCancelMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_RemarksHotelCancel: String;
  x_sendMail: boolean;
  Outlook, MailItem, NmSpace: OLEVariant;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);

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

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMail'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  QueryString := 'SELECT u.Email from Quotations q, AdmUsers u ' +
    'WHERE q.AdmUsers_id = u.AdmUsers_id ' +
    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  AccCds.First;
  while not AccCds.Eof do
    begin

      if AccCds['SendMail'] = true then
        begin

          x_HotelEmail := '';
          x_Recipient := '';
          QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
            'FROM AddressDetails ad ' +
            'WHERE ad.Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']) + ' ' +
            'ORDER BY COALESCE(ad.OrderNo,100)';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
{
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_HotelEmail := GpSds['Email'];
}
          if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
            begin
              x_Recipient := trim(GpSds['Salutation']);
              if GpSds['Firstname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
              if GpSds['Lastname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
            end;

          if x_HotelEmail = '' then
            begin
              x_HotelEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
              if (not GpSds.EOF) and (GpSds['Email'] <> null) then
                x_HotelEmail := GpSds['Email'];
            end;

          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_To := '';
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '','') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '' '') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end;

          if x_SendMail = false then
            x_To := x_Sender
          else
            x_To := x_To + ';' + x_Sender;

          x_RemarksHotelCancel := '';
          if AccCds['RemarksHotelCancel'] <> null then
            x_RemarksHotelCancel := AccCds['RemarksHotelCancel'];

          QueryString := 'SELECT dbo.fn_HotelCancellationEmail( ' +
            'q.TourCode, qa.HotelAddressbook_id, q.PaxName, q.NumPax, q.NumSingles, q.NumDoubles, q.NumTriples, q.NumTwins, ' +
            'qa.RoomTypes_id, qa.AC, qa.MealPlans_id, qa.DateIn, qa.DateOut, ' +
            'a.UserName,''' + x_Recipient + ''',''' + x_RemarksHotelCancel + ''') AS Msg ' +
            'FROM QuoAccommodation qa, Quotations q, Admusers a ' +
            'WHERE qa.Quotations_id = q.Quotations_id ' +
            'AND q.AdmUsers_id = a.AdmUsers_id ' +
            'AND qa.QuoAccommodation_id  = ' + IntToStr(AccCds['QuoAccommodation_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_Msg := '';
          if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
            x_Msg := GpSds['Msg'];

//          if AccCds['RemarksHotelCancel'] <> null then
//            x_Msg := x_Msg + chr(13) + chr(13) + AccCds['RemarksHotelCancel'];

          try
            begin

              QueryString := 'SELECT q.TourCode ' +
                'FROM QuoAccommodation qa, Quotations q ' +
                'WHERE qa.Quotations_id = q.Quotations_id ' +
                'AND qa.QuoAccommodation_id  = ' + IntToStr(AccCds['QuoAccommodation_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_TourCode := '';
              if not GpSds.EOF then
                x_TourCode := GpSds['TourCode'];

              ShowMessage (x_To + chr(13) + x_Sender);
              ShowMessage (x_Msg);

              if MessageDlg ('Do you want to send this message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin

                  MailItem := Outlook.createitem(olMailItem);
                  MailItem.Recipients.Add(x_To);
                  MailItem.subject := 'Request for Cancellation -- ' + x_TourCode;
                  MailItem.Body := x_Msg;
                  MailItem.Save;

{
                  IdSMTP1.QuickSend(x_ip, 'Request for Cancellation -- ' + x_TourCode,
                                    x_To, x_Sender, x_Msg);
}
                  AccCds.Edit;
                  AccCds['SendMail'] := True;
                  AccCds['CancelledOn'] := Date;
                  AccCds.Post;

                end;

            end
          except
          end;

        end;

      AccCds.Next;

    end;


  GpSds.Free;


end;


procedure TQuoSendMailForm.SendTicketMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode: String;
  x_UserName, x_PaxName, x_Rem: string;
  x_NumPax: integer;
  x_SendMail: boolean;
  Outlook, MailItem, NmSpace: OLEVariant;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderOutbox);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT x_count = COUNT(*) FROM QuoBookingsClients ' +
    'WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);
  GpSds.CommandType := ctQuery;
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  if GpSds['x_count'] = 0 then
    begin
      GpSds.Free;
      ShowMessage('Please enter Pax Names under "Utilities -> Enter Bookings" before sending mails');
    end;
  GpSds.Close;


  QueryString := 'SELECT ltrim(rtrim(coalesce(text,''''))) as email_ip from defaults ' +
    'WHERE item = ''Email_ip'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_ip := '';
  if GpSds['Email_ip'] <> null then
    x_ip := GpSds['Email_ip'];

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMail'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  QueryString := 'SELECT u.UserName, u.Email, q.TourCode, q.NumPax from Quotations q, AdmUsers u ' +
    'WHERE q.AdmUsers_id = u.AdmUsers_id ' +
    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  x_UserName := '';
  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];

  x_TourCode := '';
  if GpSds['TourCode'] <> null then
    x_TourCode := GpSds['TourCode'];

  x_NumPax := 0;
  if GpSds['NumPax'] <> null then
    x_NumPax := GpSds['NumPax'];

  TicketCds.First;
  while not TicketCds.Eof do
    begin

      if TicketCds['SendMail'] = true then
        begin

          x_AgentEmail := '';
          x_Recipient := '';
          QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
            'FROM AddressDetails ad ' +
            'WHERE ad.Addressbook_id = ' + IntToStr(TicketCds['AgentAddressbook_id']) + ' ' +
            'ORDER BY COALESCE(ad.OrderNo,100)';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_AgentEmail := GpSds['Email'];

{
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_HotelEmail := GpSds['Email'];
}

          if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
            begin
              x_Recipient := trim(GpSds['Salutation']);
              if GpSds['Firstname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
              if GpSds['Lastname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
            end;

          if x_AgentEmail = '' then
            begin
              x_AgentEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(TicketCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              if (not GpSds.EOF) and (GpSds['Email'] <> null) then
                x_AgentEmail := GpSds['Email'];
            end;

          x_AgentEmail := StringReplace(x_AgentEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_To := '';
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '','') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '' '') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end;

          if x_SendMail = false then
            x_To := x_Sender
          else
            x_To := x_To + ';' + x_Sender;

          x_Rem := '';
          if TicketCds['RemarksAgent'] <> null then
            x_Rem := TicketCds['RemarksAgent'];

          if TicketCds['Tickets_id'] = 1 then
            begin
              QueryString := 'EXEC p_AgentConfirmationEmail ''' + x_TourCode + ''',' +
//                FormatDateTime('mm/dd/yyyy',x_TourDate) + ''',' +
                'null,' +
                IntToStr(TicketCds['AgentAddressbook_id']) + ',''' + x_PaxName + ''',' +
                IntToStr(x_NumPax) + ',' +
                IntToStr(TicketCds['From_Cities_id']) + ',' +
                IntToStr(TicketCds['To_Cities_id']) + ',' +
                IntToStr(TicketCds['Class_id']) + ',''' +
                FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''',''' +
                TicketCds['FlightNo'] + ''',''(' +
                FormatDateTime('HH:mm',TicketCds['ETD']) + '/' +
                FormatDateTime('HH:mm',TicketCds['ETA']) + ')'',''' +
                x_UserName + ''',''' + x_Recipient + ''',''' +
                FormatDateTime('mm/dd/yyyy',Date) + ''',1,' +
                IntToStr(_QuoSendMailForm_Quotations_id) + ',''' + x_Rem + '''';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_Msg := '';
              if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
                x_Msg := GpSds['Msg'];
            end
          else if TicketCds['Tickets_id'] = 2 then
            begin
              QueryString := 'EXEC p_AgentTrainConfirmationEmail ''' + x_TourCode + ''',' +
//                FormatDateTime('mm/dd/yyyy',x_TourDate) + ''',' +
                'null,' +
                IntToStr(TicketCds['AgentAddressbook_id']) + ',''' + x_PaxName + ''',' +
                IntToStr(x_NumPax) + ',' +
                IntToStr(TicketCds['From_Cities_id']) + ',' +
                IntToStr(TicketCds['To_Cities_id']) + ',' +
                IntToStr(TicketCds['Class_id']) + ',''' +
                FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''',''' +
                TicketCds['FlightNo'] + ''',''(' +
                FormatDateTime('HH:mm',TicketCds['ETD']) + '/' +
                FormatDateTime('HH:mm',TicketCds['ETA']) + ')'',''' +
                x_UserName + ''',''' + x_Recipient + ''',''' +
                FormatDateTime('mm/dd/yyyy',Date) + ''',1,' +
                IntToStr(_QuoSendMailForm_Quotations_id) + ',''' + x_Rem + '''';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_Msg := '';
              if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
                x_Msg := GpSds['Msg'];
            end;


//          if TicketCds['RemarksAgent'] <> null then
//            x_Msg := x_Msg + chr(13) + chr(13) + '*** PS *** ' + TicketCds['RemarksAgent'];

          try
            begin

              QueryString := 'SELECT q.TourCode ' +
                'FROM QuoTickets qt, Quotations q ' +
                'WHERE qt.Quotations_id = q.Quotations_id ' +
                'AND qt.QuoTickets_id  = ' + IntToStr(TicketCds['QuoTickets_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_TourCode := '';
              if not GpSds.EOF then
                x_TourCode := GpSds['TourCode'];

              ShowMessage (x_To + chr(13) + x_Sender);
              ShowMessage (x_Msg);

              if MessageDlg ('Do you want to send this message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin
                
                  MailItem := Outlook.createitem(olMailItem);
                  MailItem.Recipients.Add(x_To);
                  MailItem.subject := 'Request for Tickets Reservation -- ' + x_TourCode;
                  MailItem.Body := x_Msg;
                  MailItem.Save;

//                  IdSMTP1.QuickSend(x_ip, 'Request for Tickets Reservation -- ' + x_TourCode,
//                                    x_To, x_Sender, x_Msg);

                  TicketCds.Edit;
                  TicketCds['SendMail'] := True;
                  TicketCds['RequestedOn'] := Date;
                  TicketCds.Post;

                end;

            end
          except
          end;

        end;

      TicketCds.Next;

    end;


  GpSds.Free;


end;


procedure TQuoSendMailForm.cxButton1Click(Sender: TObject);
begin

  if AccCds.State = dsEdit then
    AccCds.Post;

  if TicketCds.State = dsEdit then
    TicketCds.Post;

  if SsCds.State = dsEdit then
    SsCds.Post;

  if cxPageControl.ActivePageIndex = 0 then
    SendAccommodationCancelMail
  else if cxPageControl.ActivePageIndex = 1 then
    SendTicketCancelMail
  else if cxPageControl.ActivePageIndex = 2 then
    SendSsCancelMail;

end;


procedure TQuoSendMailForm.SendTicketCancelMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_RemarksAgentCancel, x_PaxName, x_UserName: String;
  x_sendMail: boolean;
  x_TourDate: TDateTime;
  x_NumPax: integer;
begin

  x_TourDate := StrToDate('01/01/2000');

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

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMail'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  QueryString := 'SELECT u.Email, u.UserName from Quotations q, AdmUsers u ' +
    'WHERE q.AdmUsers_id = u.AdmUsers_id ' +
    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  x_UserName := '';
  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT TourCode, StartDate, PaxName, NumPax from Quotations q ' +
    'WHERE q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_TourCode := '';
  if GpSds['TourCode'] <> null then
    x_TourCode := GpSds['TourCode'];

  if GpSds['StartDate'] <> null then
    x_TourDate := GpSds['StartDate'];

  x_PaxName := '';
  if GpSds['PaxName'] <> null then
    x_PaxName := GpSds['PaxName'];
  x_PaxName := StringReplace(x_PaxName, '&', '&&', [rfReplaceall] );

  x_NumPax := 0;
  if GpSds['NumPax'] <> null then
    x_NumPax := GpSds['NumPax'];


  TicketCds.First;
  while not TicketCds.Eof do
    begin

      if TicketCds['SendMail'] = true then
        begin

          x_AgentEmail := '';
          x_Recipient := '';
          QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
            'FROM AddressDetails ad ' +
            'WHERE ad.Addressbook_id = ' + IntToStr(TicketCds['AgentAddressbook_id']) + ' ' +
            'ORDER BY COALESCE(ad.OrderNo,100)';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
{
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_AgentEmail := GpSds['Email'];
}
          if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
            begin
              x_Recipient := trim(GpSds['Salutation']);
              if GpSds['Firstname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
              if GpSds['Lastname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
            end;

          if x_AgentEmail = '' then
            begin
              x_AgentEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(TicketCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
              if (not GpSds.EOF) and (GpSds['Email'] <> null) then
                x_AgentEmail := GpSds['Email'];
            end;

          x_AgentEmail := StringReplace(x_AgentEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_To := '';
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '','') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '' '') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end;

          if x_SendMail = false then
            x_To := x_Sender
          else
            x_To := x_To + ';' + x_Sender;

          x_RemarksAgentCancel := '';
          if TicketCds['RemarksAgentCancel'] <> null then
            x_RemarksAgentCancel := TicketCds['RemarksAgentCancel'];

          if TicketCds['Tickets_id'] = 1 then
            begin

              QueryString := 'EXEC p_AgentCancelationEmail ''' + x_TourCode + ''',''' +
                FormatDateTime('mm/dd/yyyy',x_TourDate) + ''',' +
                IntToStr(TicketCds['AgentAddressbook_id']) + ',''' + x_PaxName + ''',' +
                IntToStr(x_NumPax) + ',' +
                IntToStr(TicketCds['From_Cities_id']) + ',' +
                IntToStr(TicketCds['To_Cities_id']) + ',' +
                IntToStr(TicketCds['Class_id']) + ',''' +
                FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''',''' +
                TicketCds['FlightNo'] + ''',''(' +
                FormatDateTime('HH:mm',TicketCds['ETD']) + '/' +
                FormatDateTime('HH:mm',TicketCds['ETA']) + ')'',''' +
                x_UserName + ''',''' + x_Recipient + ''',''' +
                FormatDateTime('mm/dd/yyyy',Date) + ''',1,' +
                IntToStr(_QuoSendMailForm_Quotations_id) + ',''' + x_RemarksAgentCancel + '''';

            end
          else if TicketCds['Tickets_id'] = 2 then
            begin

              QueryString := 'EXEC p_AgentTrainCancelationEmail ''' + x_TourCode + ''',''' +
                FormatDateTime('mm/dd/yyyy',x_TourDate) + ''',' +
                IntToStr(TicketCds['AgentAddressbook_id']) + ',''' + x_PaxName + ''',' +
                IntToStr(x_NumPax) + ',' +
                IntToStr(TicketCds['From_Cities_id']) + ',' +
                IntToStr(TicketCds['To_Cities_id']) + ',' +
                IntToStr(TicketCds['Class_id']) + ',''' +
                FormatDateTime('mm/dd/yyyy',TicketCds['TravelDate']) + ''',''' +
                TicketCds['FlightNo'] + ''',''(' +
                FormatDateTime('HH:mm',TicketCds['ETD']) + '/' +
                FormatDateTime('HH:mm',TicketCds['ETA']) + ')'',''' +
                x_UserName + ''',''' + x_Recipient + ''',''' +
                FormatDateTime('mm/dd/yyyy',Date) + ''',2,' +
                IntToStr(_QuoSendMailForm_Quotations_id) + ',''' + x_RemarksAgentCancel + '''';

            end;

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_Msg := '';
          if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
            x_Msg := GpSds['Msg'];

//          if TicketCds['RemarksAgentCancel'] <> null then
//            x_Msg := x_Msg + chr(13) + chr(13) + TicketCds['RemarksAgentCancel'];

          try
            begin

              QueryString := 'SELECT q.TourCode ' +
                'FROM QuoTickets qt, Quotations q ' +
                'WHERE qt.Quotations_id = q.Quotations_id ' +
                'AND qt.QuoTickets_id  = ' + IntToStr(TicketCds['QuoTickets_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_TourCode := '';
              if not GpSds.EOF then
                x_TourCode := GpSds['TourCode'];

              ShowMessage (x_To + chr(13) + x_Sender);
              ShowMessage (x_Msg);

              if MessageDlg ('Do you want to send this message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin

                  IdSMTP1.QuickSend(x_ip, 'Request for Cancellation -- ' + x_TourCode,
                                    x_To, x_Sender, x_Msg);

                  TicketCds.Edit;
                  TicketCds['SendMail'] := True;
                  TicketCds['CancelledOn'] := Date;
                  TicketCds.Post;

                end;

            end
          except
          end;

        end;

      TicketCds.Next;

    end;


  GpSds.Free;


end;


procedure TQuoSendMailForm.SsCdsAfterPost(DataSet: TDataSet);
begin
  SsCds.ApplyUpdates(0);
end;

procedure TQuoSendMailForm.SendSsMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_Rem: String;
  x_sendMail : boolean;
  Outlook, MailItem, NmSpace: OLEVariant;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);

//  MapiFolder := NmSpace.getdefaultfolder(olFolderOutbox);

//  x_SendMail := GetSendMail;

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

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMail'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  QueryString := 'SELECT u.Email, q.TourCode from Quotations q, AdmUsers u ' +
    'WHERE q.AdmUsers_id = u.AdmUsers_id ' +
    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  x_TourCode := '';
  if not GpSds.EOF then
    x_TourCode := GpSds['TourCode'];

  SsCds.First;
  while not SsCds.Eof do
    begin

      if SsCds['SendMail'] = true then
        begin

          x_HotelEmail := '';
          x_Recipient := '';
          QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
            'FROM AddressDetails ad ' +
            'WHERE ad.Addressbook_id = ' + IntToStr(SsCds['AgentAddressbook_id']) + ' ' +
            'ORDER BY COALESCE(ad.OrderNo,100)';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
{
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_HotelEmail := GpSds['Email'];
}
          if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
            begin
              x_Recipient := trim(GpSds['Salutation']);
              if GpSds['Firstname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
              if GpSds['Lastname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
            end;

          if x_HotelEmail = '' then
            begin
              x_HotelEmail := '';
              QueryString := 'SELECT CASE WHEN a1.through_addressbook_id IS NOT NULL THEN a2.Email ELSE a1.Email END AS Email ' +
                'FROM Addressbook a1 ' +
                'LEFT JOIN Addressbook a2 ON a1.through_addressbook_id = a2.Addressbook_id ' +
                'WHERE a1.Addressbook_id = ' + IntToStr(SsCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
              if (not GpSds.EOF) and (GpSds['Email'] <> null) then
                x_HotelEmail := GpSds['Email'];
            end;

          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_To := '';
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '','') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '' '') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end;

          if x_SendMail = false then
            x_To := x_Sender
          else
            x_To := x_To + ';' + x_Sender;

          x_Rem := '';
          if SsCds['RemarksHotel'] <> null then
            x_Rem := SsCds['RemarksHotel'];

          QueryString := 'SELECT dbo.fn_SsConfirmationEmail( ' +
            'q.TourCode, qs.AgentAddressbook_id, q.PaxName, q.NumPax, qs.Services_id, qs.ServiceDate, ' +
            'a.UserName,''' + x_Recipient + ''',''' + x_Rem + ''') AS Msg ' +
            'FROM QuoServices qs ' +
            'INNER JOIN Quotations q ON qs.Quotations_id = q.Quotations_id ' +
            'LEFT JOIN Admusers a ON q.AdmUsers_id = a.AdmUsers_id ' +
            'WHERE qs.QuoServices_id  = ' + IntToStr(SsCds['QuoServices_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_Msg := '';
          if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
            x_Msg := GpSds['Msg'];

//          if AccCds['RemarksHotel'] <> null then
//            x_Msg := x_Msg + chr(13) + chr(13) + AccCds['RemarksHotel'];

          try
            begin

              QueryString := 'SELECT q.TourCode ' +
                'FROM QuoServices qs, Quotations q ' +
                'WHERE qs.Quotations_id = q.Quotations_id ' +
                'AND qs.QuoServices_id  = ' + IntToStr(SsCds['QuoServices_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_TourCode := '';
              if not GpSds.EOF then
                x_TourCode := GpSds['TourCode'];

              ShowMessage (x_To + chr(13) + x_Sender);
              ShowMessage (x_Msg);

              if MessageDlg ('Do you want to send this message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin

                  MailItem := Outlook.createitem(olMailItem);
                  MailItem.Recipients.Add(x_To);
                  MailItem.subject := 'Request for Reservation -- ' + x_TourCode;
                  MailItem.Body := x_Msg;
                  MailItem.Save;


//                  IdSMTP1.QuickSend(x_ip, 'Request for Reservation -- ' + x_TourCode,
//                                    x_To, x_Sender, x_Msg);

                  SsCds.Edit;
                  SsCds['SendMail'] := True;
                  SsCds['RequestedOn'] := Date;
                  SsCds.Post;

                end;

            end
          except
          end;

        end;

      SsCds.Next;

    end;


  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

end;


procedure TQuoSendMailForm.SendSsCancelMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_RemarksHotelCancel: String;
  x_sendMail: boolean;
  Outlook, MailItem, NmSpace: OLEVariant;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);

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

  QueryString := 'SELECT coalesce(boolean,0) as SendMail from defaults ' +
    'WHERE item = ''SendMail'' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_SendMail := False;
  if GpSds['SendMail'] <> null then
    x_SendMail := GpSds['SendMail'];

  QueryString := 'SELECT u.Email from Quotations q, AdmUsers u ' +
    'WHERE q.AdmUsers_id = u.AdmUsers_id ' +
    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  SsCds.First;
  while not SsCds.Eof do
    begin

      if SsCds['SendMail'] = true then
        begin

          x_HotelEmail := '';
          x_Recipient := '';
          QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
            'FROM AddressDetails ad ' +
            'WHERE ad.Addressbook_id = ' + IntToStr(SsCds['AgentAddressbook_id']) + ' ' +
            'ORDER BY COALESCE(ad.OrderNo,100)';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
{
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            x_HotelEmail := GpSds['Email'];
}
          if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
            begin
              x_Recipient := trim(GpSds['Salutation']);
              if GpSds['Firstname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
              if GpSds['Lastname'] <> null then
                x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
            end;

          if x_HotelEmail = '' then
            begin
              x_HotelEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(SsCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
              if (not GpSds.EOF) and (GpSds['Email'] <> null) then
                x_HotelEmail := GpSds['Email'];
            end;

          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_To := '';
          if (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '','') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end
          else
            begin
              QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '' '') ';

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;
            end;

          if (x_To = '') and (not GpSds.EOF) and (GpSds['Email'] <> null) then
            begin
              while not GpSds.EOF do
                begin
                  if x_To > '' then
                    x_To := x_To + ';';

                  if GpSds['Email'] > '' then
                    x_To := x_To + GpSds['Email'];
                  GpSds.Next;
                end;
            end;

          if x_SendMail = false then
            x_To := x_Sender
          else
            x_To := x_To + ';' + x_Sender;

          x_RemarksHotelCancel := '';
          if SsCds['RemarksHotelCancel'] <> null then
            x_RemarksHotelCancel := SsCds['RemarksHotelCancel'];

          QueryString := 'SELECT dbo.fn_SsCancellationEmail( ' +
            'q.TourCode, qs.AgentAddressbook_id, q.PaxName, q.NumPax, qs.Services_id, qs.ServiceDate, ' +
            'a.UserName,''' + x_Recipient + ''',''' + x_RemarksHotelCancel + ''') AS Msg ' +
            'FROM QuoServices qs, Quotations q, Admusers a ' +
            'WHERE qs.Quotations_id = q.Quotations_id ' +
            'AND q.AdmUsers_id = a.AdmUsers_id ' +
            'AND qs.QuoServices_id  = ' + IntToStr(SsCds['QuoServices_id']);

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_Msg := '';
          if (not Gpsds.EOF) and (GpSds['Msg'] <> null) then
            x_Msg := GpSds['Msg'];

//          if AccCds['RemarksHotelCancel'] <> null then
//            x_Msg := x_Msg + chr(13) + chr(13) + AccCds['RemarksHotelCancel'];

          try
            begin

              QueryString := 'SELECT q.TourCode ' +
                'FROM QuoServices qs, Quotations q ' +
                'WHERE qs.Quotations_id = q.Quotations_id ' +
                'AND qs.QuoServices_id  = ' + IntToStr(SsCds['QuoServices_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

              x_TourCode := '';
              if not GpSds.EOF then
                x_TourCode := GpSds['TourCode'];

              ShowMessage (x_To + chr(13) + x_Sender);
              ShowMessage (x_Msg);

              if MessageDlg ('Do you want to send this message?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                begin

                  MailItem := Outlook.createitem(olMailItem);
                  MailItem.Recipients.Add(x_To);
                  MailItem.subject := 'Request for Cancellation -- ' + x_TourCode;
                  MailItem.Body := x_Msg;
                  MailItem.Save;

{
                  IdSMTP1.QuickSend(x_ip, 'Request for Cancellation -- ' + x_TourCode,
                                    x_To, x_Sender, x_Msg);
}
                  SsCds.Edit;
                  SsCds['SendMail'] := True;
                  SsCds['CancelledOn'] := Date;
                  SsCds.Post;

                end;

            end
          except
          end;

        end;

      SsCds.Next;

    end;


  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

end;


procedure TQuoSendMailForm.SetasConfirmed1Click(Sender: TObject);
begin
  if AccCds.State = dsBrowse then
    AccCds.Edit;

  AccCds['ConfirmedOn'] := Date();
  AccCds.Post;

end;

end.


