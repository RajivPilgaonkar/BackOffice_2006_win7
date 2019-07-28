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









          'QuoAccommodation.AC, QuoAccommodation.MealPlans_id, ' +
          'QuoAccommodation.DateIn, QuoAccommodation.DateOut) from Quotations q ' +
   'WHERE QuoAccommodation.Quotations_id = q.Quotations_id) ' +
   'WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
   'AND Selected = 1';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NOT NULL ' +
    ' AND Selected = 1';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NULL ' +
    ' AND Selected = 1';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;





          'qt.From_Cities_id, qt.To_Cities_id, qt.From_TrainStations_id, ' +
          'qt.To_TrainStations_id, qt.Class_id, qt.eta, qt.etd, ' +
          'qt.TravelDate, qt.NoOfTickets, 0) ' +
  'FROM QuoTickets qt LEFT JOIN Quotations q ON qt.Quotations_id = q.Quotations_id ' +
  'WHERE QuoTickets.QuoTickets_id = qt.QuoTickets_id) ' +
   'WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ';

  GpSds.CommandType := ctQuery;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




  GpSds.CommandText := QueryString;
  GpSds.Open;







    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND AgentAddressbook_id IS NULL ' +
    ' AND Tickets_id = 2 ';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



  GpSds.CommandText := QueryString;
  GpSds.Open;







    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND AgentAddressbook_id IS NULL ' +
    ' AND Tickets_id = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;





    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NOT NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


    ' SET Sendmail = 0  ' +
    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NOT NULL ' +
    ' AND Services_id IN (SELECT s.Services_id FROM Services s WHERE AdvBooking = 1)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




    ' WHERE Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id) + ' ' +
    ' AND RequestedOn IS NULL ' +
    ' AND Services_id IN (SELECT s.Services_id FROM Services s WHERE AdvBooking = 1)';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;







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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_date_str, x_Rem: String;
  x_sendMail : boolean;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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









  GpSds.CommandText := QueryString;
  GpSds.Open;







    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.CommandText := QueryString;
  GpSds.Open;










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





            begin
              x_Recipient := trim(GpSds['Salutation']);






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




          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;


































          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
















              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;


































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
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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









  GpSds.CommandText := QueryString;
  GpSds.Open;







    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.CommandText := QueryString;
  GpSds.Open;






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





            begin
              x_Recipient := trim(GpSds['Salutation']);






          if x_HotelEmail = '' then
            begin
              x_HotelEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(AccCds['HotelAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;




          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;

































          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
















              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;


































      AccCds.Next;

    end;


  GpSds.Free;


end;


procedure TQuoSendMailForm.SendTicketMail;
var
  GpSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode: String;
  x_UserName, x_PaxName, x_Rem: string;
  x_TourDate: TDateTime;
  x_NumPax: integer;
  x_SendMail: boolean;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderOutbox);

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;



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









  GpSds.CommandText := QueryString;
  GpSds.Open;







    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;



















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




            begin
              x_Recipient := trim(GpSds['Salutation']);






          if x_AgentEmail = '' then
            begin
              x_AgentEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(TicketCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;





          x_AgentEmail := StringReplace(x_AgentEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;












































              GpSds.Open;

























              GpSds.Open;


















              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;

































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









  GpSds.CommandText := QueryString;
  GpSds.Open;







    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.CommandText := QueryString;
  GpSds.Open;














  GpSds.CommandText := QueryString;
  GpSds.Open;



















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





            begin
              x_Recipient := trim(GpSds['Salutation']);






          if x_AgentEmail = '' then
            begin
              x_AgentEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(TicketCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;




          x_AgentEmail := StringReplace(x_AgentEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_AgentEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;
































































          GpSds.CommandText := QueryString;
          GpSds.Open;
















              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;



























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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_date_str, x_Rem: String;
  x_sendMail : boolean;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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









  GpSds.CommandText := QueryString;
  GpSds.Open;







    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.CommandText := QueryString;
  GpSds.Open;










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





            begin
              x_Recipient := trim(GpSds['Salutation']);






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




          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;
































          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
















              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;


































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
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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









  GpSds.CommandText := QueryString;
  GpSds.Open;







    'AND q.Quotations_id = ' + IntToStr(_QuoSendMailForm_Quotations_id);


  GpSds.CommandText := QueryString;
  GpSds.Open;






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





            begin
              x_Recipient := trim(GpSds['Salutation']);






          if x_HotelEmail = '' then
            begin
              x_HotelEmail := '';
              QueryString := 'SELECT Email ' +
                'FROM Addressbook a ' +
                'WHERE a.Addressbook_id = ' + IntToStr(SsCds['AgentAddressbook_id']);

              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;




          x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

          QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;



















              GpSds.CommandText := QueryString;
              GpSds.Open;
































          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;
















              GpSds.Close;
              GpSds.CommandText := QueryString;
              GpSds.Open;


































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

