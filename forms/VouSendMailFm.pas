unit VouSendMailFm;

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
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, IdMessage,
  QRExport, QRPDFFilt, OleServer, Outlook2000, ComObj, scExcelExport;

type
  TVouSendMailForm = class(TForm)
    AccSds: TSQLDataSet;
    AccDsp: TDataSetProvider;
    AccCds: TClientDataSet;
    AccDs: TDataSource;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelCds: TClientDataSet;
    HotelDs: TDataSource;
    HotelCdsAddressbook_id: TIntegerField;
    HotelCdsOrganisation: TStringField;
    HotelCdsCity: TStringField;
    IdSMTP1: TIdSMTP;
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
    cxDBMemo3: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    cxGridMasterDBBandedTableView1CancelledOn: TcxGridDBBandedColumn;
    cxDBMemo5: TcxDBMemo;
    Label3: TLabel;
    cxButton1: TcxButton;
    AccCdsvouchersaccommodation_id: TIntegerField;
    AccCdsvouchers_id: TIntegerField;
    AccCdsSendMail: TBooleanField;
    AccCdsRequestedOn: TSQLTimeStampField;
    AccCdsConfirmedOn: TSQLTimeStampField;
    AccCdsRemarksHotel: TStringField;
    AccCdsCancelledOn: TSQLTimeStampField;
    AccCdsRemarksHotelCancel: TStringField;
    AccCdsAddressbook_id: TIntegerField;
    TicketCdsvoucherstickets_id: TIntegerField;
    TicketCdsvouchers_id: TIntegerField;
    TicketCdsSendMail: TBooleanField;
    TicketCdsRequestedOn: TSQLTimeStampField;
    TicketCdsConfirmedOn: TSQLTimeStampField;
    TicketCdsRemarksAgent: TStringField;
    TicketCdsCancelledOn: TSQLTimeStampField;
    TicketCdsRemarksAgentCancel: TStringField;
    TicketCdsAddressbook_id: TIntegerField;
    TicketCdstickets_id: TIntegerField;
    TicketCdsnobooked: TIntegerField;
    AccCdsRemarks: TStringField;
    TicketCdsRemarks: TStringField;
    VoucherAccSds: TSQLDataSet;
    VoucherAccDsp: TDataSetProvider;
    VoucherAccCds: TClientDataSet;
    VoucherAccDs: TDataSource;
    VoucherAccCdsVouchers_id: TIntegerField;
    VoucherAccCdsRemarks: TStringField;
    VoucherTicketSds: TSQLDataSet;
    VoucherTicketDsp: TDataSetProvider;
    VoucherTicketCds: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    VoucherTicketDs: TDataSource;
    AccCdsMasterTourCode: TStringField;
    AccCdsMasterTourDate: TSQLTimeStampField;
    TicketCdsMasterTourCode: TStringField;
    TicketCdsMasterTourDate: TSQLTimeStampField;
    IdMessage1: TIdMessage;
    cxTabSheetTrsf: TcxTabSheet;
    ServiceSds: TSQLDataSet;
    ServiceDsp: TDataSetProvider;
    ServiceCds: TClientDataSet;
    IntegerField4: TIntegerField;
    BooleanField1: TBooleanField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField5: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    SQLTimeStampField4: TSQLTimeStampField;
    ServiceDs: TDataSource;
    ServiceCdsvouchersservices_id: TIntegerField;
    ServiceCdsRemarksAgent: TStringField;
    ServiceCdsRemarksServiceCancel: TStringField;
    cxGroupBox3: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    cxDBMemo6: TcxDBMemo;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxDBMemo7: TcxDBMemo;
    cxDBMemo8: TcxDBMemo;
    cxGridDBBandedTableView1vouchersaccommodation_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SendMail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1RequestedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Addressbook_id: TcxGridDBBandedColumn;
    VoucherServiceSds: TSQLDataSet;
    VoucherServiceDsp: TDataSetProvider;
    VoucherServiceCds: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    VoucherServiceDs: TDataSource;
    cxGridDBBandedTableView1AgentAddressbook_id_City: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ServiceString: TcxGridDBBandedColumn;
    cxTabSheetTransport: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    cxDBMemo9: TcxDBMemo;
    cxGrid2: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxDBMemo10: TcxDBMemo;
    cxDBMemo11: TcxDBMemo;
    TransportSds: TSQLDataSet;
    TransportDsp: TDataSetProvider;
    TransportCds: TClientDataSet;
    TransportDs: TDataSource;
    TransportCdsvoucherstransport_id: TIntegerField;
    TransportCdsvouchers_id: TIntegerField;
    TransportCdsSendMail: TBooleanField;
    TransportCdsRequestedOn: TSQLTimeStampField;
    TransportCdsConfirmedOn: TSQLTimeStampField;
    TransportCdsRemarks: TStringField;
    TransportCdsRemarksAgent: TStringField;
    TransportCdsCancelledOn: TSQLTimeStampField;
    TransportCdsRemarksTransportCancel: TStringField;
    TransportCdsMasterTourCode: TStringField;
    TransportCdsMasterTourDate: TSQLTimeStampField;
    TransportCdsTransportString: TStringField;
    cxGridDBBandedTableView2vouchersservices_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2SendMail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2RequestedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ConfirmedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2AgentAddressbook_City: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2CancelledOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2Vouchers_id: TcxGridDBBandedColumn;
    TransportCdsAddressbook_id: TIntegerField;
    cxGridDBBandedTableView2Addressbook_id: TcxGridDBBandedColumn;
    ServiceCdsCancelledOn: TSQLTimeStampField;
    cxGridDBBandedTableView1CancelledOn: TcxGridDBBandedColumn;
    scExcelExport: TscExcelExport;
    Label8: TLabel;
    cxDBMemo12: TcxDBMemo;
    TicketCdsRemarksTicketCancel: TStringField;
    cxGridTicketsDBBandedTableView1CancelledOn: TcxGridDBBandedColumn;
    cxTabSheet1: TcxTabSheet;
    PackageSds: TSQLDataSet;
    PackageDsp: TDataSetProvider;
    PackageCds: TClientDataSet;
    PackageDs: TDataSource;
    PackageCdsvoucherspackages_id: TIntegerField;
    PackageCdsvouchers_id: TIntegerField;
    PackageCdsAddressbook_id: TIntegerField;
    PackageCdsremarks: TStringField;
    PackageCdsMasterTourCode: TStringField;
    PackageCdsMasterTourDate: TSQLTimeStampField;
    PackageCdsSendMail: TBooleanField;
    PackageCdsRequestedOn: TSQLTimeStampField;
    PackageCdsConfirmedOn: TSQLTimeStampField;
    PackageCdsCancelledOn: TSQLTimeStampField;
    PackageCdsRemarksAgent: TStringField;
    PackageCdsRemarksVoucherCancel: TStringField;
    cxGrid3: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBBandedTableView3voucherspackages_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3vouchers_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3Addressbook_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3SendMail: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3RequestedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ConfirmedOn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3CancelledOn: TcxGridDBBandedColumn;
    PackageCdsPackageString: TStringField;
    cxGridDBBandedTableView3PackageString: TcxGridDBBandedColumn;
    cxDBMemo13: TcxDBMemo;
    Label9: TLabel;
    cxDBMemo14: TcxDBMemo;
    cxDBMemo15: TcxDBMemo;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AccCdsAfterPost(DataSet: TDataSet);
    procedure cxCloseBtnClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure TicketCdsAfterPost(DataSet: TDataSet);
    procedure SendAccommodationMail;
    procedure SendTicketMail;
    procedure cxButton1Click(Sender: TObject);
    procedure SendAccommodationCancelMail;
    procedure SendServicesCancelMail;
    procedure SendTransportCancelMail;
    procedure SendPackageCancelMail;
    function GetMailIp: string;
    function GetSendMail: boolean;
    function GetRecipient(x_Addressbook_id: integer): string;
    function GetHotelEmail(x_Addressbook_id: integer): string;
    function GetEmailTo(x_HotelEmail: string): string;
    function HoteGroupConfirmationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name: string; x_VendorPymtTerms_id: integer): string;
    function HoteGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
    function TicketGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
    function AgentServicesGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
    function AgentTransportGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
    function AgentPackageGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
    procedure ServiceCdsAfterPost(DataSet: TDataSet);
    procedure SendServiceMail;
    procedure TransportCdsAfterPost(DataSet: TDataSet);
    procedure SendTransportMail;
    procedure SendPackageMail;
    procedure SaveTransportToExcel(x_Agent, x_TourCode, x_MasterTourCode: string; x_MasterTourDate: TDateTime; x_Agents_id: integer; var x_HasDetails: boolean);
    procedure SendTicketsCancelMail;
    procedure GetVoucherRefNo (x_QuoLines_id: integer ; var x_VoucherNo: integer);
    function GetQuoteCost(x_TourCode: string; x_TourDate: TDateTime): double;
    procedure PackageCdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VouSendMailForm: TVouSendMailForm;
  _VouSendMailForm_MasterTourCode: string;
  _VouSendMailForm_MasterTourDate: TDateTime;

implementation

uses BackOfficeDM, MainFm, RptSingleVoucherFm;

{$R *.dfm}

procedure TVouSendMailForm.FormCreate(Sender: TObject);
var
  GpSds : TSQLDataSet;
  QueryString: String;
  x_Agents_id: integer;
begin

  Height := 660;
  Width := 1000;

  BackOfficeDataModule.TicketsCds.Open;

  VoucherAccCds.Open;
  VoucherTicketCds.Open;
  VoucherServiceCds.Open;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'UPDATE VouchersAccommodation ' +
    ' SET MasterTourCode =  ''' + _VouSendMailForm_MasterTourCode + ''', ' +
    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersAccommodation ' +
    ' SET Sendmail = 0  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersAccommodation ' +
    ' SET Sendmail = 1  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersPackages ' +
    ' SET Sendmail = 1  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;





  QueryString := 'UPDATE VouchersTickets ' +
    ' SET MasterTourCode =  ''' + _VouSendMailForm_MasterTourCode + ''', ' +
    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'SELECT Number FROM Defaults WHERE Defaults_id = 17 ';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;
  x_Agents_id := 1564;
  if (not GpSds.EOF) and (GpSds['Number']<>null) then
    x_Agents_id := GpSds['Number'];


  QueryString := 'UPDATE VouchersTickets ' +
    ' SET Addressbook_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND Addressbook_id IS NULL ' +
    ' AND Tickets_id = 2';
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


  QueryString := 'UPDATE VouchersTickets ' +
    ' SET Addressbook_id = ' + IntToStr(x_Agents_id) + ' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND Addressbook_id IS NULL ' +
    ' AND Tickets_id = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



  QueryString := 'UPDATE VouchersTickets ' +
    ' SET Sendmail = 0  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'UPDATE VouchersTickets ' +
    ' SET Sendmail = 1  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;





  QueryString := 'UPDATE VouchersServices ' +
    ' SET MasterTourCode =  ''' + _VouSendMailForm_MasterTourCode + ''', ' +
    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersServices ' +
    ' SET Sendmail = 0  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersServices ' +
    ' SET Sendmail = 1  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



  QueryString := 'UPDATE VouchersTransport ' +
    ' SET MasterTourCode =  ''' + _VouSendMailForm_MasterTourCode + ''', ' +
    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersTransport ' +
    ' SET Sendmail = 0  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersTransport ' +
    ' SET Sendmail = 1  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'UPDATE VouchersPackages ' +
    ' SET MasterTourCode =  ''' + _VouSendMailForm_MasterTourCode + ''', ' +
    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersPackages ' +
    ' SET Sendmail = 0  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersPackages ' +
    ' SET Sendmail = 1  ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




  GpSds.Free;

  HotelCds.Open;
  AgentCds.Open;

  AccSds.Params[0].Value := _VouSendMailForm_MasterTourCode;
  AccSds.Params[1].Value := _VouSendMailForm_MasterTourDate;

  AccSds.Active := False;
  AccSds.Active := True;

  AccCds.Active := True;


  TicketSds.Params[0].Value := _VouSendMailForm_MasterTourCode;
  TicketSds.Params[1].Value := _VouSendMailForm_MasterTourDate;

  TicketSds.Active := False;
  TicketSds.Active := True;

  TicketCds.Active := True;


  ServiceSds.Params[0].Value := _VouSendMailForm_MasterTourCode;
  ServiceSds.Params[1].Value := _VouSendMailForm_MasterTourDate;

  ServiceSds.Active := False;
  ServiceSds.Active := True;

  ServiceCds.Active := True;


  TransportSds.Params[0].Value := _VouSendMailForm_MasterTourCode;
  TransportSds.Params[1].Value := _VouSendMailForm_MasterTourDate;

  TransportSds.Active := False;
  TransportSds.Active := True;

  TransportCds.Active := True;


  PackageSds.Params[0].Value := _VouSendMailForm_MasterTourCode;
  PackageSds.Params[1].Value := _VouSendMailForm_MasterTourDate;

  PackageSds.Active := False;
  PackageSds.Active := True;

  PackageCds.Active := True;


  cxPageControl.ActivePageIndex := 0;

end;

procedure TVouSendMailForm.AccCdsAfterPost(DataSet: TDataSet);
begin
  AccCds.ApplyUpdates(0);
end;

procedure TVouSendMailForm.cxCloseBtnClick(Sender: TObject);
begin

  if AccCds.State = dsEdit then
    AccCds.Post;

  if TicketCds.State = dsEdit then
    TicketCds.Post;

  if ServiceCds.State = dsEdit then
    ServiceCds.Post;

  if TransportCds.State = dsEdit then
    TransportCds.Post;

  if PackageCds.State = dsEdit then
    PackageCds.Post;

  Close;
end;

procedure TVouSendMailForm.cxButton4Click(Sender: TObject);
begin

  if AccCds.State = dsEdit then
    AccCds.Post;

  if TicketCds.State = dsEdit then
    TicketCds.Post;

  if ServiceCds.State = dsEdit then
    ServiceCds.Post;

  if TransportCds.State = dsEdit then
    TransportCds.Post;

  if PackageCds.State = dsEdit then
    PackageCds.Post;

  if cxPageControl.ActivePageIndex = 0 then
    SendAccommodationMail
  else if cxPageControl.ActivePageIndex = 1 then
    SendTicketMail
  else if cxPageControl.ActivePageIndex = 2 then
    SendServiceMail
  else if (cxPageControl.ActivePageIndex = 3) and (MessageDlg('Please ensure that the cost computation has ' +
    'been executed in FIT Presto. Otherwise the excel file e-mailed with the costs will be incomplete.', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    SendTransportMail
  else if cxPageControl.ActivePageIndex = 4 then
    SendPackageMail;

end;

procedure TVouSendMailForm.TicketCdsAfterPost(DataSet: TDataSet);
begin
  TicketCds.ApplyUpdates(0);
end;


procedure TVouSendMailForm.SendAccommodationMail;
var
  GpSds, AccDisSds, AccAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Hotel, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo, x_VendorPymtTerms_id: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);

//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  AccDisSds := TSQLDataSet.Create(nil);
  AccDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  AccAddrSds := TSQLDataSet.Create(nil);
  AccAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT va.Addressbook_id, a.Organisation, a.VendorPaymentTerms_id ' +
    'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(va.SendMail,0) = 1';

  AccDisSds.Close;
  AccDisSds.CommandText := QueryString;
  AccDisSds.Open;

  AccDisSds.First;

  while not AccDisSds.Eof do
    begin

      x_VendorPymtTerms_id := 0;
      if AccDisSds['VendorPaymentTerms_id'] <> null then
        x_VendorPymtTerms_id := AccDisSds['VendorPaymentTerms_id'];

      x_Hotel := '';
      if AccDisSds['Organisation'] <> null then
        x_Hotel := AccDisSds['Organisation'];

      x_Recipient := GetRecipient(AccDisSds['Addressbook_id']);
      x_HotelEmail := GetHotelEmail(AccDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_HotelEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT va.VouchersAccommodation_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate ' +
        'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(va.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']);

      AccAddrSds.Close;
      AccAddrSds.CommandText := QueryString;
      AccAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(va.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MinVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
        x_MinVoucherNo := GpSds['MinVoucherNo'];

      x_YearRef := 0;
      if (not AccAddrSds.Eof) and (AccAddrSds['YearRef'] <> null) then
        x_YearRef := AccAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(va.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MaxVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
        x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      AccAddrSds.First;
      while (not AccAddrSds.EOF) do
        begin
          if (AccAddrSds['Vouchers_id'] <> null) and (AccAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := AccAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := AccAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          AccAddrSds.Next;
        end;

      AccAddrSds.First;
      x_PaxName := '';
      if (not AccAddrSds.Eof) and (AccAddrSds['TourLeader'] <> null) then
        x_PaxName := AccAddrSds['TourLeader'];

      x_TourCode := '';
      if AccAddrSds['TourCode'] <> null then
        x_TourCode := AccAddrSds['TourCode'];

      x_Msg := HoteGroupConfirmationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient, x_VendorPymtTerms_id);

      try
        begin

          x_Vouchers_id_str := '';
          x_count := 0;
          x_Vouchers_id_str := '(';
          while (x_count < x_VoucherCount) do
            begin
              x_Vouchers_id_str := x_Vouchers_id_str + IntToStr(x_VoucherNoArray[x_count]);

              x_count := x_count + 1;

              if x_count < x_VoucherCount then
                x_Vouchers_id_str := x_Vouchers_id_str + ',';
            end;
          x_Vouchers_id_str := x_Vouchers_id_str + ')';

          if RptSingleVoucherForm = nil then
            Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

          RptSingleVoucherForm.PrintVouchersSds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Close;

          RptSingleVoucherForm.PrintVouchersSds.CommandText :=
            'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2, * FROM dbo.fn_Rpt_PrintVouchers (''' + AccAddrSds['MasterTourCode'] + ''', ''' +
            FormatDateTime('mm/dd/yyyy',AccAddrSds['MasterTourDate']) + ''', ' +
            IntToStr(x_MinVoucherNo) + ',' + IntToStr(x_MaxVoucherNo) + ',' + IntToStr(x_YearRef) + ',2) ' +
            'WHERE VoucherNo IN ' + x_Vouchers_id_str + ' ' +
            'ORDER BY YearRef, VoucherNo';

          RptSingleVoucherForm.PrintVouchersSds.Open;

          RptSingleVoucherForm.PrintVouchersCds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Open;

          //RptSingleVoucherForm.QRVoucher.PreviewModal;

          aPDF := TQRPDFDocumentFilter.Create(g_ReportDir + '\' + trim(x_Hotel) + '-' + trim(x_TourCode) + '.pdf');
          aPDF.FontHandling := fhAutoEmbed;
          RptSingleVoucherForm.QRVoucher.ExportToFilter(aPDF);
          aPDF.Free;

          RptSingleVoucherForm.Release;
          RptSingleVoucherForm := nil;

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Hotel + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.Attachments.Add(g_ReportDir + '\' + trim(x_Hotel) + '-' + trim(x_TourCode) + '.pdf');
          MailItem.save;

          QueryString := 'UPDATE VouchersAccommodation ' +
            'SET SendMail = 1, RequestedOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      AccDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  AccCds.Active := false;
  AccCds.Active := true;

  ShowMessage('Mailed');

end;


function TVouSendMailForm.HoteGroupConfirmationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name: string; x_VendorPymtTerms_id: integer): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Msg: string;
  x_AddressTo: string;
  x_count : integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  if x_Name = '' then
    x_AddressTo := 'Dear Madam / Sir. '
  else
    x_AddressTo := 'Dear ' + x_Name + ',';

  x_Msg := x_AddressTo + chr(13) + chr(13);

  x_Msg := x_Msg + 'Please find attached our voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's ';

  x_Msg := x_Msg + 'for ' + trim(x_PaxName) + ' - (' + trim(x_TourCode) + ')' + chr(13) + chr(13);

  x_count := 0;
  while x_count < x_VoucherCount do
    begin

      x_Msg := x_Msg + 'Voucher No: ' + IntToStr(x_VoucherNo[x_count]) + chr(13);

      QueryString := 'SELECT description FROM Vouchers WHERE Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['description'] <> null) then
        x_Msg := x_Msg + GpSds['description'];

      x_Msg := x_Msg + chr(13) + chr(13);

      x_count := x_count + 1;
    end;

{
  if x_VoucherCount = 1 then
    x_Msg := x_Msg + 'Please treat this voucher as the original.' + chr(13) + chr(13)
  else
    x_Msg := x_Msg + 'Please treat these vouchers as originals.' + chr(13) + chr(13);
}

  x_Msg := x_Msg + 'Please acknowledge the receipt of this voucher by return e-mail.' + chr(13) + chr(13);

  if (x_VendorPymtTerms_id > 0) then
    begin

      x_Msg := x_Msg + chr(13) + chr(13);

      x_Msg := x_Msg + 'Advance Payment' + chr(13) + chr(13);

      x_Msg := x_Msg + 'In order to make an advance payment for these services, we require your Proforma Invoice.' + chr(13) + chr(13) +
        'Please ensure that your Proforma Invoice specifies the amount for GST. ' +
        'Please also mention your GSTIN (GST registration number).' + chr(13) + chr(13) +
        'We look forward to hear from you soon.' + chr(13) + chr(13);

    end;

  x_Msg := x_Msg + 'Best regards,' + chr(13) + chr(13);

  x_Msg := x_Msg + x_User + chr(13);
  x_Msg := x_Msg + 'Reservations Department' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Odyssey Tours & Travels Pvt Ltd' + chr(13);
  x_Msg := x_Msg + 'Aranya, 2/286 Boa Viagem Road' + chr(13);
  x_Msg := x_Msg + 'Naikavaddo, Calangute' + chr(13);
  x_Msg := x_Msg + 'Goa - 403 516' + chr(13);
  x_Msg := x_Msg + 'Tel: (0832) 2277720, 2276941' + chr(13);
  x_Msg := x_Msg + 'Fax: (0832) 2277124';

  GpSds.Free;

  Result := x_Msg;

end;

function TVouSendMailForm.TicketGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Msg: string;
  x_AddressTo: string;
  x_count, x_SrNo : integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  if x_Name = '' then
    x_AddressTo := 'Dear Madam / Sir. '
  else
    x_AddressTo := 'Dear ' + x_Name + ',';

  x_Msg := x_AddressTo + chr(13) + chr(13);

  x_Msg := x_Msg + 'Request for Cancellation of Reservation for our voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';

  x_Msg := x_Msg + ' for ' + trim(x_TourCode) + ' - ' + trim(x_PaxName) + chr(13) + chr(13);

  x_Msg := x_Msg + 'The following ticket(s) were issued by you on Instant Purchase Fare basis:' + chr(13) + chr(13);

  x_count := 0;
  while x_count < x_VoucherCount do
    begin

      x_Msg := x_Msg + 'Voucher No: ' + IntToStr(x_VoucherNo[x_count]) + chr(13);

      QueryString := 'SELECT description FROM Vouchers WHERE Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      QueryString := 'SELECT c1.City + ''/'' + c2.City AS Sector, ' +
         'CONVERT(VARCHAR(10), vt.Departure, 103) + '' '' + CONVERT(VARCHAR(5), vt.Departure, 108) AS ETA, ' +
         'vt.FlightNo, c.Class, vt.NoBooked ' +
         'FROM VouchersTickets vt ' +
         'LEFT JOIN Cities c1 ON vt.From_Cities_id = c1.Cities_id ' +
         'LEFT JOIN Cities c2 ON vt.To_Cities_id = c2.Cities_id ' +
         'LEFT JOIN Class c ON vt.Classid = c.Class_id ' +
         'WHERE vt.Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['Sector'] <> null) then
        x_Msg := x_Msg + 'Sector ' + chr(9) + chr(9) + chr(9) + chr(9) + GpSds['Sector'] + chr(13);

      if (not GpSds.EOF) and (GpSds['ETA'] <> null) then
        x_Msg := x_Msg + 'Date ' + chr(9) + chr(9) + chr(9) + chr(9) + GpSds['ETA'] + chr(13);

      if (not GpSds.EOF) and (GpSds['FlightNo'] <> null) then
        x_Msg := x_Msg + 'Flight No ' + chr(9) + chr(9) + chr(9) + chr(9) + GpSds['FlightNo'] + chr(13);

      if (not GpSds.EOF) and (GpSds['Class'] <> null) then
        x_Msg := x_Msg + 'Class ' + chr(9) + chr(9) + chr(9) + chr(9) + GpSds['Class'] + chr(13);

      if (not GpSds.EOF) and (GpSds['NoBooked'] <> null) then
        x_Msg := x_Msg + 'No. Of Tickets ' + chr(9) + chr(9) + IntToStr(GpSds['NoBooked']) + chr(13);

      x_Msg := x_Msg + chr(13) + chr(13);

      x_Msg := x_Msg + 'Sr. No.' + chr(9) + 'NAME LIST' + chr(9) + chr(9) + chr(9) + 'NATIONALITY' + chr(13) + chr(13);

      QueryString := 'SELECT v.MasterTourCode, v.MasterTourDate FROM Vouchers v ' +
         'WHERE v.Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['MasterTourCode'] <> null) and (GpSds['MasterTourDate'] <> null) then
        begin

          QueryString := 'SELECT f.Name, c.Country from dbo.fn_GetMasterPaxListOnTour (''' +
              GpSds['MasterTourCode'] + ''', ''' + FormatDateTime('mm/dd/yyyy',GpSds['MasterTourDate']) + ''', 0) f ' +
             'LEFT JOIN Countries c ON f.Countries_id = c.Countries_id ';
          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.Open;

          x_SrNo := 0;

          while (not GpSds.EOF) do
            begin

              x_SrNo := x_SrNo + 1;

              x_Msg := x_Msg + IntToStr(x_SrNo) + chr(9);

              if (not GpSds.EOF) and (GpSds['Name'] <> null) then
                x_Msg := x_Msg + GpSds['Name'] + chr(9) + chr(9) + chr(9);

              if (not GpSds.EOF) and (GpSds['Country'] <> null) then
                x_Msg := x_Msg + GpSds['Country'];

              x_Msg := x_Msg + chr(13);

              GpSds.Next;
            end;

        end;

      x_Msg := x_Msg + '--------------' + chr(13) + chr(13);

      x_count := x_count + 1;

    end;


  x_Msg := x_Msg + chr(13) + chr(13);

  x_Msg := x_Msg + 'Please acknowledge this email and confirm the cancellation as early as possible.' + chr(13) + chr(13);

  x_Msg := x_Msg + x_RemarksCancel + chr(13) + chr(13);

  x_Msg := x_Msg + 'We apologise for any inconvenience caused due to this cancellation..' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Best regards,' + chr(13) + chr(13);

  x_Msg := x_Msg + x_User + chr(13);
  x_Msg := x_Msg + 'Reservations Department' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Odyssey Tours & Travels Pvt Ltd' + chr(13);
  x_Msg := x_Msg + 'Aranya, 2/286 Boa Viagem Road' + chr(13);
  x_Msg := x_Msg + 'Naikavaddo, Calangute' + chr(13);
  x_Msg := x_Msg + 'Goa - 403 516' + chr(13);
  x_Msg := x_Msg + 'Tel: (0832) 2277720, 2276941' + chr(13);
  x_Msg := x_Msg + 'Fax: (0832) 2277124';

  GpSds.Free;

  Result := x_Msg;


end;


function TVouSendMailForm.HoteGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Msg: string;
  x_AddressTo: string;
  x_count : integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  if x_Name = '' then
    x_AddressTo := 'Dear Madam / Sir. '
  else
    x_AddressTo := 'Dear ' + x_Name + ',';

  x_Msg := x_AddressTo + chr(13) + chr(13);

  x_Msg := x_Msg + 'Request for Cancellation of Reservation for our voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';

  x_Msg := x_Msg + ' for ' + trim(x_TourCode) + ' - ' + trim(x_PaxName) + chr(13) + chr(13);

  x_count := 0;
  while x_count < x_VoucherCount do
    begin

      x_Msg := x_Msg + 'Voucher No: ' + IntToStr(x_VoucherNo[x_count]) + chr(13);

      QueryString := 'SELECT description FROM Vouchers WHERE Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['description'] <> null) then
        x_Msg := x_Msg + GpSds['description'];

      x_Msg := x_Msg + chr(13) + chr(13);

      x_count := x_count + 1;
    end;

  x_Msg := x_Msg + 'Please note that the clients have changed their itinerary. ' +
      'We kindly request you therefore to cancel the reservation for the above dates.' + chr(13) + chr(13);

  x_Msg := x_Msg + x_RemarksCancel + chr(13) + chr(13);

  x_Msg := x_Msg + 'We apologise for any inconvenience caused due to this cancellation..' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Best regards,' + chr(13) + chr(13);

  x_Msg := x_Msg + x_User + chr(13);
  x_Msg := x_Msg + 'Reservations Department' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Odyssey Tours & Travels Pvt Ltd' + chr(13);
  x_Msg := x_Msg + 'Aranya, 2/286 Boa Viagem Road' + chr(13);
  x_Msg := x_Msg + 'Naikavaddo, Calangute' + chr(13);
  x_Msg := x_Msg + 'Goa - 403 516' + chr(13);
  x_Msg := x_Msg + 'Tel: (0832) 2277720, 2276941' + chr(13);
  x_Msg := x_Msg + 'Fax: (0832) 2277124';

  GpSds.Free;

  Result := x_Msg;


end;


function TVouSendMailForm.AgentServicesGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Msg: string;
  x_AddressTo: string;
  x_count : integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  if x_Name = '' then
    x_AddressTo := 'Dear Madam / Sir. '
  else
    x_AddressTo := 'Dear ' + x_Name + ',';

  x_Msg := x_AddressTo + chr(13) + chr(13);

  x_Msg := x_Msg + 'We had emailed you the voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' for the service';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' requested for ' + trim(x_PaxName) + ' - ' + trim(x_TourCode) + '. ';
  x_Msg := x_Msg + 'The clients have changed their itinerary. ';
  x_Msg := x_Msg + 'Hence we request you to kindly cancel the below service';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' and ignore the voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' received for this tour.';
  x_Msg := x_Msg + chr(13) + chr(13);

  x_count := 0;
  while x_count < x_VoucherCount do
    begin

      x_Msg := x_Msg + 'Voucher No: ' + IntToStr(x_VoucherNo[x_count]) + chr(13);

      QueryString := 'SELECT description FROM Vouchers WHERE Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['description'] <> null) then
        x_Msg := x_Msg + GpSds['description'];

      x_Msg := x_Msg + chr(13) + chr(13);

      x_count := x_count + 1;
    end;

  x_Msg := x_Msg + x_RemarksCancel + chr(13) + chr(13);

  x_Msg := x_Msg + 'We apologise for any inconvenience caused due to this cancellation.' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Please acknowledge the receipt of this e-mail.' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Best regards,' + chr(13) + chr(13);

  x_Msg := x_Msg + x_User + chr(13);
  x_Msg := x_Msg + 'Reservations Department' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Odyssey Tours & Travels Pvt Ltd' + chr(13);
  x_Msg := x_Msg + 'Aranya, 2/286 Boa Viagem Road' + chr(13);
  x_Msg := x_Msg + 'Naikavaddo, Calangute' + chr(13);
  x_Msg := x_Msg + 'Goa - 403 516' + chr(13);
  x_Msg := x_Msg + 'Tel: (0832) 2277720, 2276941' + chr(13);
  x_Msg := x_Msg + 'Fax: (0832) 2277124';

  GpSds.Free;

  Result := x_Msg;

end;


function TVouSendMailForm.AgentTransportGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Msg: string;
  x_AddressTo: string;
  x_count : integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  if x_Name = '' then
    x_AddressTo := 'Dear Madam / Sir. '
  else
    x_AddressTo := 'Dear ' + x_Name + ',';

  x_Msg := x_AddressTo + chr(13) + chr(13);

  x_Msg := x_Msg + 'We had emailed you the voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' for the transport requirement ';
  x_Msg := x_Msg + 'for ' + trim(x_PaxName) + ' - ' + trim(x_TourCode) + '. ';
  x_Msg := x_Msg + 'The clients have changed their itinerary. ';
  x_Msg := x_Msg + 'Hence we request you to kindly cancel the below transport request';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' and ignore the voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' received for this tour.';
  x_Msg := x_Msg + chr(13) + chr(13);

  x_count := 0;
  while x_count < x_VoucherCount do
    begin

      x_Msg := x_Msg + 'Voucher No: ' + IntToStr(x_VoucherNo[x_count]) + chr(13);

      QueryString := 'SELECT description FROM Vouchers WHERE Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['description'] <> null) then
        x_Msg := x_Msg + GpSds['description'];

      x_Msg := x_Msg + chr(13) + chr(13);

      x_count := x_count + 1;
    end;

  x_Msg := x_Msg + x_RemarksCancel + chr(13) + chr(13);

  x_Msg := x_Msg + 'We apologise for any inconvenience caused due to this cancellation.' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Please acknowledge the receipt of this e-mail.' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Best regards,' + chr(13) + chr(13);

  x_Msg := x_Msg + x_User + chr(13);
  x_Msg := x_Msg + 'Reservations Department' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Odyssey Tours & Travels Pvt Ltd' + chr(13);
  x_Msg := x_Msg + 'Aranya, 2/286 Boa Viagem Road' + chr(13);
  x_Msg := x_Msg + 'Naikavaddo, Calangute' + chr(13);
  x_Msg := x_Msg + 'Goa - 403 516' + chr(13);
  x_Msg := x_Msg + 'Tel: (0832) 2277720, 2276941' + chr(13);
  x_Msg := x_Msg + 'Fax: (0832) 2277124';

  GpSds.Free;

  Result := x_Msg;

end;


function TVouSendMailForm.AgentPackageGroupCancellationEmail(x_VoucherNo, x_Vouchers_id: array of integer;
         x_VoucherCount: integer; x_TourCode, x_PaxName, x_User, x_Name, x_RemarksCancel: string): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Msg: string;
  x_AddressTo: string;
  x_count : integer;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;


  if x_Name = '' then
    x_AddressTo := 'Dear Madam / Sir. '
  else
    x_AddressTo := 'Dear ' + x_Name + ',';

  x_Msg := x_AddressTo + chr(13) + chr(13);

  x_Msg := x_Msg + 'We had emailed you the voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' for the packages requirement ';
  x_Msg := x_Msg + 'for ' + trim(x_PaxName) + ' - ' + trim(x_TourCode) + '. ';
  x_Msg := x_Msg + 'The clients have changed their itinerary. ';
  x_Msg := x_Msg + 'Hence we request you to kindly cancel the below package request';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' and ignore the voucher';
  if x_VoucherCount > 1 then
    x_Msg := x_Msg + 's';
  x_Msg := x_Msg + ' received for this tour.';
  x_Msg := x_Msg + chr(13) + chr(13);

  x_count := 0;
  while x_count < x_VoucherCount do
    begin

      x_Msg := x_Msg + 'Voucher No: ' + IntToStr(x_VoucherNo[x_count]) + chr(13);

      QueryString := 'SELECT description FROM Vouchers WHERE Vouchers_id = ' + IntToStr(x_Vouchers_id[x_count]);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      if (not GpSds.EOF) and (GpSds['description'] <> null) then
        x_Msg := x_Msg + GpSds['description'];

      x_Msg := x_Msg + chr(13) + chr(13);

      x_count := x_count + 1;
    end;

  x_Msg := x_Msg + x_RemarksCancel + chr(13) + chr(13);

  x_Msg := x_Msg + 'We apologise for any inconvenience caused due to this cancellation.' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Please acknowledge the receipt of this e-mail.' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Best regards,' + chr(13) + chr(13);

  x_Msg := x_Msg + x_User + chr(13);
  x_Msg := x_Msg + 'Reservations Department' + chr(13) + chr(13);

  x_Msg := x_Msg + 'Odyssey Tours & Travels Pvt Ltd' + chr(13);
  x_Msg := x_Msg + 'Aranya, 2/286 Boa Viagem Road' + chr(13);
  x_Msg := x_Msg + 'Naikavaddo, Calangute' + chr(13);
  x_Msg := x_Msg + 'Goa - 403 516' + chr(13);
  x_Msg := x_Msg + 'Tel: (0832) 2277720, 2276941' + chr(13);
  x_Msg := x_Msg + 'Fax: (0832) 2277124';

  GpSds.Free;

  Result := x_Msg;

end;



function TVouSendMailForm.GetEmailTo(x_HotelEmail: string): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_To: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT Value as Email FROM dbo.fn_SplitString (''' + x_HotelEmail + ''', '';'') ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_To := '';

  // **** Colon separation OR **** SPACE separation

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

  GpSds.Free;

  Result := x_To;

end;


function TVouSendMailForm.GetHotelEmail(x_Addressbook_id: integer): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_HotelEmail: string;
begin

  x_HotelEmail := '';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT Email ' +
    'FROM Addressbook a ' +
    'WHERE a.Addressbook_id = ' + IntToStr(x_Addressbook_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Email'] <> null) then
    x_HotelEmail := GpSds['Email'];

  x_HotelEmail := StringReplace(x_HotelEmail, #$D#$, ';', [rfReplaceall] );

  GpSds.Free;

  Result := x_HotelEmail;

end;


function TVouSendMailForm.GetRecipient(x_Addressbook_id: integer): string;
var
  GpSds : TSQLDataSet;
  QueryString: string;
  x_Recipient: string;
begin

  x_Recipient := '';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT ad.Email, ad.Salutation, ad.LastName, ad.FirstName ' +
    'FROM AddressDetails ad ' +
    'WHERE ad.Addressbook_id = ' + IntToStr(x_Addressbook_id) + ' ' +
    'ORDER BY COALESCE(ad.OrderNo,100)';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  if (not GpSds.EOF) and (GpSds['Salutation'] <> null) then
    begin
      x_Recipient := trim(GpSds['Salutation']);
      if GpSds['Firstname'] <> null then
        x_Recipient := x_Recipient + ' ' + GpSds['Firstname'];
      if GpSds['Lastname'] <> null then
        x_Recipient := x_Recipient + ' ' + GpSds['Lastname'];
    end;

  GpSds.Free;

  Result := x_Recipient;

end;


function TVouSendMailForm.GetSendMail: boolean;
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


function TVouSendMailForm.GetMailIp: string;
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

procedure TVouSendMailForm.SendTicketsCancelMail;
var
  GpSds, TicDisSds, TicAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName, x_RemarksCancel: String;
  x_Agent: string;
  x_sendMail : boolean;
  x_VoucherCount: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TicDisSds := TSQLDataSet.Create(nil);
  TicDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TicAddrSds := TSQLDataSet.Create(nil);
  TicAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];

  QueryString := 'SELECT DISTINCT vt.Addressbook_id, a.Organisation ' +
    'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vt.SendMail,0) = 1';

  TicDisSds.Close;
  TicDisSds.CommandText := QueryString;
  TicDisSds.Open;

  TicDisSds.First;

  while not TicDisSds.Eof do
    begin

      x_Agent := '';
      if TicDisSds['Organisation'] <> null then
        x_Agent := TicDisSds['Organisation'];

      x_Recipient := GetRecipient(TicDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TicDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vt.VouchersTickets_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, ' +
        'dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate, vt.RemarksTicketCancel ' +
        'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TicDisSds['Addressbook_id']);

      TicAddrSds.Close;
      TicAddrSds.CommandText := QueryString;
      TicAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TicDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MinVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
      //  x_MinVoucherNo := GpSds['MinVoucherNo'];

      //x_YearRef := 0;
      //if (not TicAddrSds.Eof) and (TicAddrSds['YearRef'] <> null) then
      //  x_YearRef := TicAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TicDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MaxVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
      //  x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      TicAddrSds.First;
      while (not TicAddrSds.EOF) do
        begin
          if (TicAddrSds['Vouchers_id'] <> null) and (TicAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := TicAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := TicAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          TicAddrSds.Next;
        end;

      TicAddrSds.First;
      x_PaxName := '';
      if (not TicAddrSds.Eof) and (TicAddrSds['TourLeader'] <> null) then
        x_PaxName := TicAddrSds['TourLeader'];

      x_TourCode := '';
      if TicAddrSds['TourCode'] <> null then
        x_TourCode := TicAddrSds['TourCode'];

      x_RemarksCancel := '';
      if TicAddrSds['RemarksTicketCancel'] <> null then
        x_RemarksCancel := TicAddrSds['RemarksTicketCancel'];

      x_Msg := TicketGroupCancellationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient, x_RemarksCancel);

      try
        begin

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.save;

          QueryString := 'UPDATE VouchersTickets ' +
            'SET SendMail = 1, CancelledOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(TicDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      TicDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  TicketCds.Active := false;
  TicketCds.Active := true;

  ShowMessage('Mailed');


end;



procedure TVouSendMailForm.SendAccommodationCancelMail;
var
  GpSds, AccDisSds, AccAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName, x_RemarksCancel: String;
  x_Hotel: string;
  x_sendMail : boolean;
  x_VoucherCount: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  AccDisSds := TSQLDataSet.Create(nil);
  AccDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  AccAddrSds := TSQLDataSet.Create(nil);
  AccAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT va.Addressbook_id, a.Organisation ' +
    'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(va.SendMail,0) = 1';

  AccDisSds.Close;
  AccDisSds.CommandText := QueryString;
  AccDisSds.Open;

  AccDisSds.First;

  while not AccDisSds.Eof do
    begin

      x_Hotel := '';
      if AccDisSds['Organisation'] <> null then
        x_Hotel := AccDisSds['Organisation'];

      x_Recipient := GetRecipient(AccDisSds['Addressbook_id']);
      x_HotelEmail := GetHotelEmail(AccDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_HotelEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT va.VouchersAccommodation_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, ' +
        'dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate, va.RemarksHotelCancel ' +
        'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(va.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']);

      AccAddrSds.Close;
      AccAddrSds.CommandText := QueryString;
      AccAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(va.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MinVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
      //  x_MinVoucherNo := GpSds['MinVoucherNo'];

      //x_YearRef := 0;
      //if (not AccAddrSds.Eof) and (AccAddrSds['YearRef'] <> null) then
      //  x_YearRef := AccAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersAccommodation va LEFT JOIN Vouchers v ON va.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(va.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MaxVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
      //  x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      AccAddrSds.First;
      while (not AccAddrSds.EOF) do
        begin
          if (AccAddrSds['Vouchers_id'] <> null) and (AccAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := AccAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := AccAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          AccAddrSds.Next;
        end;

      AccAddrSds.First;
      x_PaxName := '';
      if (not AccAddrSds.Eof) and (AccAddrSds['TourLeader'] <> null) then
        x_PaxName := AccAddrSds['TourLeader'];

      x_TourCode := '';
      if AccAddrSds['TourCode'] <> null then
        x_TourCode := AccAddrSds['TourCode'];

      x_RemarksCancel := '';
      if AccAddrSds['RemarksHotelCancel'] <> null then
        x_RemarksCancel := AccAddrSds['RemarksHotelCancel'];

      x_Msg := HoteGroupCancellationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient, x_RemarksCancel);

      try
        begin

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Hotel + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.save;

          QueryString := 'UPDATE VouchersAccommodation ' +
            'SET SendMail = 1, CancelledOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(AccDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      AccDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  AccCds.Active := false;
  AccCds.Active := true;

  ShowMessage('Mailed');


end;

procedure TVouSendMailForm.SendServicesCancelMail;
var
  GpSds, SerDisSds, SerAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Agent, x_RemarksCancel: string;
  x_sendMail : boolean;
  x_VoucherCount: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  SerDisSds := TSQLDataSet.Create(nil);
  SerDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  SerAddrSds := TSQLDataSet.Create(nil);
  SerAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vs.Addressbook_id, a.Organisation ' +
    'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vs.SendMail,0) = 1';

  SerDisSds.Close;
  SerDisSds.CommandText := QueryString;
  SerDisSds.Open;

  SerDisSds.First;

  while not SerDisSds.Eof do
    begin

      x_Agent := '';
      if SerDisSds['Organisation'] <> null then
        x_Agent := SerDisSds['Organisation'];

      x_Recipient := GetRecipient(SerDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(SerDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vs.VouchersServices_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, ' +
        'dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate, vs.RemarksServiceCancel  ' +
        'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vs.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(SerDisSds['Addressbook_id']);

      SerAddrSds.Close;
      SerAddrSds.CommandText := QueryString;
      SerAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vs.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(SerDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MinVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
      //  x_MinVoucherNo := GpSds['MinVoucherNo'];

      //x_YearRef := 0;
      //if (not SerAddrSds.Eof) and (SerAddrSds['YearRef'] <> null) then
      //  x_YearRef := SerAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vs.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(SerDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MaxVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
      //  x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      SerAddrSds.First;
      while (not SerAddrSds.EOF) do
        begin
          if (SerAddrSds['Vouchers_id'] <> null) and (SerAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := SerAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := SerAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          SerAddrSds.Next;
        end;

      SerAddrSds.First;
      x_PaxName := '';
      if (not SerAddrSds.Eof) and (SerAddrSds['TourLeader'] <> null) then
        x_PaxName := SerAddrSds['TourLeader'];

      x_TourCode := '';
      if SerAddrSds['TourCode'] <> null then
        x_TourCode := SerAddrSds['TourCode'];

      x_RemarksCancel := '';
      if SerAddrSds['RemarksServiceCancel'] <> null then
        x_RemarksCancel := SerAddrSds['RemarksServiceCancel'];

      x_Msg := AgentServicesGroupCancellationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                                    x_TourCode, x_PaxName, x_UserName, x_Recipient, x_RemarksCancel);

      try
        begin

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Services -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.save;

          QueryString := 'UPDATE VouchersServices ' +
            'SET SendMail = 1, CancelledOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(SerDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      SerDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  ServiceCds.Active := false;
  ServiceCds.Active := true;

  ShowMessage('Mailed');


end;

procedure TVouSendMailForm.SendTransportCancelMail;
var
  GpSds, TransDisSds, TransAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Agent, x_RemarksCancel: string;
  x_sendMail : boolean;
  x_VoucherCount: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TransDisSds := TSQLDataSet.Create(nil);
  TransDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TransAddrSds := TSQLDataSet.Create(nil);
  TransAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vt.Addressbook_id, a.Organisation ' +
    'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vt.SendMail,0) = 1';

  TransDisSds.Close;
  TransDisSds.CommandText := QueryString;
  TransDisSds.Open;

  TransDisSds.First;

  while not TransDisSds.Eof do
    begin

      x_Agent := '';
      if TransDisSds['Organisation'] <> null then
        x_Agent := TransDisSds['Organisation'];

      x_Recipient := GetRecipient(TransDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TransDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vt.VouchersTransport_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, ' +
        'dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate, vt.RemarksTransportCancel ' +
        'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TransDisSds['Addressbook_id']);

      TransAddrSds.Close;
      TransAddrSds.CommandText := QueryString;
      TransAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TransDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MinVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
      //  x_MinVoucherNo := GpSds['MinVoucherNo'];

      //x_YearRef := 0;
      //if (not TransAddrSds.Eof) and (TransAddrSds['YearRef'] <> null) then
      //  x_YearRef := TransAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TransDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MaxVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
      //  x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      TransAddrSds.First;
      while (not TransAddrSds.EOF) do
        begin
          if (TransAddrSds['Vouchers_id'] <> null) and (TransAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := TransAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := TransAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          TransAddrSds.Next;
        end;

      TransAddrSds.First;
      x_PaxName := '';
      if (not TransAddrSds.Eof) and (TransAddrSds['TourLeader'] <> null) then
        x_PaxName := TransAddrSds['TourLeader'];

      x_TourCode := '';
      if TransAddrSds['TourCode'] <> null then
        x_TourCode := TransAddrSds['TourCode'];

      x_RemarksCancel := '';
      if TransAddrSds['RemarksTransportCancel'] <> null then
        x_RemarksCancel := TransAddrSds['RemarksTransportCancel'];

      x_Msg := AgentTransportGroupCancellationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                                    x_TourCode, x_PaxName, x_UserName, x_Recipient, x_RemarksCancel);

      try
        begin

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Services -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.save;

          QueryString := 'UPDATE VouchersTransport ' +
            'SET SendMail = 1, CancelledOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(TransDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      TransDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  TransportCds.Active := false;
  TransportCds.Active := true;

  ShowMessage('Mailed');


end;

procedure TVouSendMailForm.SendPackageCancelMail;
var
  GpSds, PackageDisSds, PackageAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Agent, x_RemarksCancel: string;
  x_sendMail : boolean;
  x_VoucherCount: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  //MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  PackageDisSds := TSQLDataSet.Create(nil);
  PackageDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  PackageAddrSds := TSQLDataSet.Create(nil);
  PackageAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vp.Addressbook_id, a.Organisation ' +
    'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vp.SendMail,0) = 1';

  PackageDisSds.Close;
  PackageDisSds.CommandText := QueryString;
  PackageDisSds.Open;

  PackageDisSds.First;

  while not PackageDisSds.Eof do
    begin

      x_Agent := '';
      if PackageDisSds['Organisation'] <> null then
        x_Agent := PackageDisSds['Organisation'];

      x_Recipient := GetRecipient(PackageDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(PackageDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vp.VouchersPackages_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, ' +
        'dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate, vp.RemarksVoucherCancel ' +
        'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vp.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']);

      PackageAddrSds.Close;
      PackageAddrSds.CommandText := QueryString;
      PackageAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vp.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MinVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
      //  x_MinVoucherNo := GpSds['MinVoucherNo'];

      //x_YearRef := 0;
      //if (not PackageAddrSds.Eof) and (PackageAddrSds['YearRef'] <> null) then
      //  x_YearRef := PackageAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vp.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      //x_MaxVoucherNo := 0;
      //if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
      //  x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      PackageAddrSds.First;
      while (not PackageAddrSds.EOF) do
        begin
          if (PackageAddrSds['Vouchers_id'] <> null) and (PackageAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := PackageAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := PackageAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          PackageAddrSds.Next;
        end;

      PackageAddrSds.First;
      x_PaxName := '';
      if (not PackageAddrSds.Eof) and (PackageAddrSds['TourLeader'] <> null) then
        x_PaxName := PackageAddrSds['TourLeader'];

      x_TourCode := '';
      if PackageAddrSds['TourCode'] <> null then
        x_TourCode := PackageAddrSds['TourCode'];

      x_RemarksCancel := '';
      if PackageAddrSds['RemarksVoucherCancel'] <> null then
        x_RemarksCancel := PackageAddrSds['RemarksVoucherCancel'];

      x_Msg := AgentPackageGroupCancellationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                                    x_TourCode, x_PaxName, x_UserName, x_Recipient, x_RemarksCancel);

      try
        begin

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Services -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.save;

          QueryString := 'UPDATE VouchersPackages ' +
            'SET SendMail = 1, CancelledOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      PackageDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  PackageCds.Active := false;
  PackageCds.Active := true;

  ShowMessage('Mailed');


end;


procedure TVouSendMailForm.SendTicketMail;
var
  GpSds, TicketDisSds, TicketAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TicketDisSds := TSQLDataSet.Create(nil);
  TicketDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TicketAddrSds := TSQLDataSet.Create(nil);
  TicketAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vt.Addressbook_id, a.Organisation ' +
    'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vt.SendMail,0) = 1';

  TicketDisSds.Close;
  TicketDisSds.CommandText := QueryString;
  TicketDisSds.Open;

  TicketDisSds.First;

  while not TicketDisSds.Eof do
    begin

      x_Agent := '';
      if TicketDisSds['Organisation'] <> null then
        x_Agent := TicketDisSds['Organisation'];

      x_Recipient := GetRecipient(TicketDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TicketDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vt.VouchersTickets_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate ' +
        'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TicketDisSds['Addressbook_id']);

      TicketAddrSds.Close;
      TicketAddrSds.CommandText := QueryString;
      TicketAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TicketDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MinVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
        x_MinVoucherNo := GpSds['MinVoucherNo'];

      x_YearRef := 0;
      if (not TicketAddrSds.Eof) and (TicketAddrSds['YearRef'] <> null) then
        x_YearRef := TicketAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersTickets vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TicketDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MaxVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
        x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      TicketAddrSds.First;
      while (not TicketAddrSds.EOF) do
        begin
          if (TicketAddrSds['Vouchers_id'] <> null) and (TicketAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := TicketAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := TicketAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          TicketAddrSds.Next;
        end;

      TicketAddrSds.First;
      x_PaxName := '';
      if (not TicketAddrSds.Eof) and (TicketAddrSds['TourLeader'] <> null) then
        x_PaxName := TicketAddrSds['TourLeader'];

      x_TourCode := '';
      if TicketAddrSds['TourCode'] <> null then
        x_TourCode := TicketAddrSds['TourCode'];

      x_Msg := HoteGroupConfirmationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient,0);

      try
        begin

          x_Vouchers_id_str := '';
          x_count := 0;
          x_Vouchers_id_str := '(';
          while (x_count < x_VoucherCount) do
            begin
              x_Vouchers_id_str := x_Vouchers_id_str + IntToStr(x_VoucherNoArray[x_count]);

              x_count := x_count + 1;

              if x_count < x_VoucherCount then
                x_Vouchers_id_str := x_Vouchers_id_str + ',';
            end;
          x_Vouchers_id_str := x_Vouchers_id_str + ')';

          if RptSingleVoucherForm = nil then
            Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

          RptSingleVoucherForm.PrintVouchersSds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Close;

          RptSingleVoucherForm.PrintVouchersSds.CommandText :=
            'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2,* FROM dbo.fn_Rpt_PrintVouchers (''' + TicketAddrSds['MasterTourCode'] + ''', ''' +
            FormatDateTime('mm/dd/yyyy',TicketAddrSds['MasterTourDate']) + ''', ' +
            IntToStr(x_MinVoucherNo) + ',' + IntToStr(x_MaxVoucherNo) + ',' + IntToStr(x_YearRef) + ',2) ' +
            'WHERE VoucherNo IN ' + x_Vouchers_id_str + ' ' +
            'ORDER BY YearRef, VoucherNo';

          RptSingleVoucherForm.PrintVouchersSds.Open;

          RptSingleVoucherForm.PrintVouchersCds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Open;

          //RptSingleVoucherForm.QRVoucher.PreviewModal;

          aPDF := TQRPDFDocumentFilter.Create(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          aPDF.FontHandling := fhAutoEmbed;
          RptSingleVoucherForm.QRVoucher.ExportToFilter(aPDF);
          aPDF.Free;

          RptSingleVoucherForm.Release;
          RptSingleVoucherForm := nil;

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.Attachments.Add(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          MailItem.save;

          QueryString := 'UPDATE VouchersTickets ' +
            'SET SendMail = 1, RequestedOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(TicketDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      TicketDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  TicketCds.Active := false;
  TicketCds.Active := true;

  ShowMessage('Mailed');

end;


procedure TVouSendMailForm.cxButton1Click(Sender: TObject);
begin

  if AccCds.State = dsEdit then
    AccCds.Post;

  if TicketCds.State = dsEdit then
    TicketCds.Post;

  if ServiceCds.State = dsEdit then
    ServiceCds.Post;

  if TransportCds.State = dsEdit then
    TransportCds.Post;

  if PackageCds.State = dsEdit then
    PackageCds.Post;

  if cxPageControl.ActivePageIndex = 0 then
    SendAccommodationCancelMail
  else if cxPageControl.ActivePageIndex = 1 then
    SendTicketsCancelMail
  else if cxPageControl.ActivePageIndex = 2 then
    SendServicesCancelMail
  else if cxPageControl.ActivePageIndex = 3 then
    SendTransportCancelMail
  else if cxPageControl.ActivePageIndex = 4 then
    SendPackageCancelMail;

{
  else if cxPageControl.ActivePageIndex = 1 then
    SendTicketMail;
}

end;

procedure TVouSendMailForm.ServiceCdsAfterPost(DataSet: TDataSet);
begin
  ServiceCds.ApplyUpdates(0);
end;

procedure TVouSendMailForm.SendServiceMail;
var
  GpSds, ServiceDisSds, ServiceAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
  //x_Cost: double;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  ServiceDisSds := TSQLDataSet.Create(nil);
  ServiceDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  ServiceAddrSds := TSQLDataSet.Create(nil);
  ServiceAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vs.Addressbook_id, a.Organisation ' +
    'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vs.SendMail,0) = 1';

  ServiceDisSds.Close;
  ServiceDisSds.CommandText := QueryString;
  ServiceDisSds.Open;

  ServiceDisSds.First;

  while not ServiceDisSds.Eof do
    begin

      x_Agent := '';
      if ServiceDisSds['Organisation'] <> null then
        x_Agent := ServiceDisSds['Organisation'];

      x_Recipient := GetRecipient(ServiceDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(ServiceDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vs.VouchersServices_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate ' +
        'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vs.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(ServiceDisSds['Addressbook_id']);

      ServiceAddrSds.Close;
      ServiceAddrSds.CommandText := QueryString;
      ServiceAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vs.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(ServiceDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MinVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
        x_MinVoucherNo := GpSds['MinVoucherNo'];

      x_YearRef := 0;
      if (not ServiceAddrSds.Eof) and (ServiceAddrSds['YearRef'] <> null) then
        x_YearRef := ServiceAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersServices vs LEFT JOIN Vouchers v ON vs.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vs.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(ServiceDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MaxVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
        x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      ServiceAddrSds.First;
      while (not ServiceAddrSds.EOF) do
        begin
          if (ServiceAddrSds['Vouchers_id'] <> null) and (ServiceAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := ServiceAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := ServiceAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          ServiceAddrSds.Next;
        end;

      ServiceAddrSds.First;
      x_PaxName := '';
      if (not ServiceAddrSds.Eof) and (ServiceAddrSds['TourLeader'] <> null) then
        x_PaxName := ServiceAddrSds['TourLeader'];

      x_TourCode := '';
      if ServiceAddrSds['TourCode'] <> null then
        x_TourCode := ServiceAddrSds['TourCode'];

      x_Msg := HoteGroupConfirmationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient,0);

      try
        begin

          x_Vouchers_id_str := '';
          x_count := 0;
          x_Vouchers_id_str := '(';
          while (x_count < x_VoucherCount) do
            begin
              x_Vouchers_id_str := x_Vouchers_id_str + IntToStr(x_VoucherNoArray[x_count]);

              x_count := x_count + 1;

              if x_count < x_VoucherCount then
                x_Vouchers_id_str := x_Vouchers_id_str + ',';
            end;
          x_Vouchers_id_str := x_Vouchers_id_str + ')';

          if RptSingleVoucherForm = nil then
            Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

          RptSingleVoucherForm.PrintVouchersSds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Close;

          RptSingleVoucherForm.PrintVouchersSds.CommandText :=
            'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2,* FROM dbo.fn_Rpt_PrintVouchers (''' + ServiceAddrSds['MasterTourCode'] + ''', ''' +
            FormatDateTime('mm/dd/yyyy',ServiceAddrSds['MasterTourDate']) + ''', ' +
            IntToStr(x_MinVoucherNo) + ',' + IntToStr(x_MaxVoucherNo) + ',' + IntToStr(x_YearRef) + ',2) ' +
            'WHERE VoucherNo IN ' + x_Vouchers_id_str + ' ' +
            'ORDER BY YearRef, VoucherNo';

          RptSingleVoucherForm.PrintVouchersSds.Open;

          RptSingleVoucherForm.PrintVouchersCds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Open;

          //RptSingleVoucherForm.QRVoucher.PreviewModal;

          aPDF := TQRPDFDocumentFilter.Create(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          aPDF.FontHandling := fhAutoEmbed;
          RptSingleVoucherForm.QRVoucher.ExportToFilter(aPDF);
          aPDF.Free;

          RptSingleVoucherForm.Release;
          RptSingleVoucherForm := nil;

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.Attachments.Add(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          MailItem.save;

          QueryString := 'UPDATE VouchersServices ' +
            'SET SendMail = 1, RequestedOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(ServiceDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      ServiceDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  ServiceCds.Active := false;
  ServiceCds.Active := true;

  ShowMessage('Mailed');

end;

function TVouSendMailForm.GetQuoteCost(x_TourCode: string; x_TourDate: TDateTime): double;
var
  GpSds: TSQLDataSet;
  x_Cost: double;
  QueryString: string;
begin

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT SUM(COALESCE(ql.QuoteCost,0.0)) AS Cost FROM Quotations q ' +
    'INNER JOIN QuoLines ql ON q.Quotations_id = ql.Quotations_id ' +
    'WHERE q.TourCode = ' + QuotedStr(x_TourCode) + ' ' +
    'AND q.StartDate = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',x_TourDate)) + ' ';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Cost := 0.0;
  if (not GpSds.EOF) and (GpSds['Cost'] <> null) then
    x_Cost := GpSds['Cost'];

  GpSds.Free;

  Result := x_Cost;

end;



procedure TVouSendMailForm.TransportCdsAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TVouSendMailForm.SendTransportMail;
var
  GpSds, TransportDisSds, TransportAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName, x_MasterTourCode: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail, x_HasDetails : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
  x_MasterTourDate: TDateTime;
  x_Cost: double;
begin

  x_Cost := GetQuoteCost(_VouSendMailForm_MasterTourCode, _VouSendMailForm_MasterTourDate);

  if x_Cost = 0 then
    begin
      if MessageDlg('It seems like the costing has not been executed. Please check.' + chr(13) +
         'Are you sure you yant to proceed with sending the mails?', mtWarning,
         [mbYes, mbNo], 0) <> mrYes then
        exit;
    end;

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TransportDisSds := TSQLDataSet.Create(nil);
  TransportDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  TransportAddrSds := TSQLDataSet.Create(nil);
  TransportAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vt.Addressbook_id, a.Organisation, CAST(COALESCE(a.MailExcel,0) AS BIT) AS MailExcel ' +
    'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vt.SendMail,0) = 1 ';

  TransportDisSds.Close;
  TransportDisSds.CommandText := QueryString;
  TransportDisSds.Open;

  TransportDisSds.First;

  while not TransportDisSds.Eof do
    begin

      x_Agent := '';
      if TransportDisSds['Organisation'] <> null then
        x_Agent := TransportDisSds['Organisation'];

      x_Recipient := GetRecipient(TransportDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TransportDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vt.VouchersTransport_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate ' +
        'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TransportDisSds['Addressbook_id']);

      TransportAddrSds.Close;
      TransportAddrSds.CommandText := QueryString;
      TransportAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TransportDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MinVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
        x_MinVoucherNo := GpSds['MinVoucherNo'];

      x_YearRef := 0;
      if (not TransportAddrSds.Eof) and (TransportAddrSds['YearRef'] <> null) then
        x_YearRef := TransportAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersTransport vt LEFT JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vt.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(TransportDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MaxVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
        x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      TransportAddrSds.First;
      while (not TransportAddrSds.EOF) do
        begin
          if (TransportAddrSds['Vouchers_id'] <> null) and (TransportAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := TransportAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := TransportAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          TransportAddrSds.Next;
        end;

      TransportAddrSds.First;
      x_PaxName := '';
      if (not TransportAddrSds.Eof) and (TransportAddrSds['TourLeader'] <> null) then
        x_PaxName := TransportAddrSds['TourLeader'];

      x_TourCode := '';
      if TransportAddrSds['TourCode'] <> null then
        x_TourCode := TransportAddrSds['TourCode'];

      x_Msg := HoteGroupConfirmationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient,0);

      x_HasDetails := false;

      x_MasterTourCode := '';
      if TransportAddrSds['MasterTourCode'] <> null then
        x_MasterTourCode := TransportAddrSds['MasterTourCode'];

      x_MasterTourDate := StrToDate('01/01/1980');
      if TransportAddrSds['MasterTourDate'] <> null then
        x_MasterTourDate := TransportAddrSds['MasterTourDate'];

      if TransportDisSds['MailExcel'] = true then
        SaveTransportToExcel(x_Agent, x_TourCode, x_MasterTourCode, x_MasterTourDate, TransportDisSds['Addressbook_id'], x_HasDetails);

      try
        begin

          x_Vouchers_id_str := '';
          x_count := 0;
          x_Vouchers_id_str := '(';
          while (x_count < x_VoucherCount) do
            begin
              x_Vouchers_id_str := x_Vouchers_id_str + IntToStr(x_VoucherNoArray[x_count]);

              x_count := x_count + 1;

              if x_count < x_VoucherCount then
                x_Vouchers_id_str := x_Vouchers_id_str + ',';
            end;
          x_Vouchers_id_str := x_Vouchers_id_str + ')';

          if RptSingleVoucherForm = nil then
            Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

          RptSingleVoucherForm.PrintVouchersSds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Close;

          RptSingleVoucherForm.PrintVouchersSds.CommandText :=
            'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2,* FROM dbo.fn_Rpt_PrintVouchers (''' + TransportAddrSds['MasterTourCode'] + ''', ''' +
            FormatDateTime('mm/dd/yyyy',TransportAddrSds['MasterTourDate']) + ''', ' +
            IntToStr(x_MinVoucherNo) + ',' + IntToStr(x_MaxVoucherNo) + ',' + IntToStr(x_YearRef) + ',2) ' +
            'WHERE VoucherNo IN ' + x_Vouchers_id_str + ' ' +
            'ORDER BY YearRef, VoucherNo';

          RptSingleVoucherForm.PrintVouchersSds.Open;

          RptSingleVoucherForm.PrintVouchersCds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Open;

          //RptSingleVoucherForm.QRVoucher.PreviewModal;

          aPDF := TQRPDFDocumentFilter.Create(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          aPDF.FontHandling := fhAutoEmbed;
          RptSingleVoucherForm.QRVoucher.ExportToFilter(aPDF);
          aPDF.Free;

          RptSingleVoucherForm.Release;
          RptSingleVoucherForm := nil;

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.Attachments.Add(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          if (x_HasDetails) and (TransportDisSds['MailExcel'] = true) then
            MailItem.Attachments.Add(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.xls');
          MailItem.save;

          QueryString := 'UPDATE VouchersTransport ' +
            'SET SendMail = 1, RequestedOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(TransportDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      TransportDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  TransportCds.Active := false;
  TransportCds.Active := true;

  ShowMessage('Mailed');

end;

procedure TVouSendMailForm.SaveTransportToExcel(x_Agent, x_TourCode, x_MasterTourCode: string; x_MasterTourDate: TDateTime; x_Agents_id: integer; var x_HasDetails: boolean);
var
  x_filename, x_QueryString: string;
  GpSds: TSQLDataSet;
  x_Quotations_id, x_PrevQuoLines_id, x_row, x_VoucherNo: integer;
begin

  x_HasDetails := false;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  x_QueryString := 'SELECT i.Quotations_id FROM Itineraries i ' +
       'LEFT JOIN Masters m ON i.Masters_id = m.Masters_id ' +
       'WHERE m.MasterCode = ''' +  x_MasterTourCode + ''' ' +
       'AND i.DepartureDate = ''' + FormatDateTime('mm/dd/yyyy', x_MasterTourDate) +  '''';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_Quotations_id := 0;
  if (not GpSds.EOF) and (GpSds['Quotations_id'] <> null) then
    x_Quotations_id := GpSds['Quotations_id'];

  if x_Quotations_id = 0 then
    begin
      GpSds.Free;
      exit;
    end;

  x_QueryString := 'SELECT ql.QuoLines_id, ql.QuoStringInclusion, b.BreakTransCosts_id, b.DayNo, b.Route, b.Kms, b.Code  ' +
      'FROM QuoLines ql ' +
      'LEFT JOIN BreakTransCosts b ON ql.QuoLines_id = b.QuoLines_id ' +
      'WHERE ql.Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
      'AND ql.CarHireAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
      'AND ql.DriveTypes_id = 1 ' +
      'ORDER BY ql.QuoLines_id, b.Code';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.WorksheetName:='Drives';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;

  x_PrevQuoLines_id := -1;
  x_row := 1;

  with scExcelExport.ExcelWorkSheet do
    begin

      while not GpSds.EOF do
        begin

          x_HasDetails := true;

          if x_PrevQuoLines_id <> GpSds['QuoLines_id'] then
            begin
              x_row := x_row + 3;

              if GpSds['QuoStringInclusion'] <> null then
                begin
                  Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := GpSds['QuoStringInclusion'];
                  x_row := x_row + 1;
                end;

              GetVoucherRefNo (GpSds['QuoLines_id'], x_VoucherNo);
              if x_VoucherNo > 0 then
                begin
                  Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Font.FontStyle := 'Bold';                
                  Range['A'+IntToStr(x_row),'A'+IntToStr(x_row)].Value := 'Reference Voucher No ' + IntToStr(x_VoucherNo);
                  x_row := x_row + 1;
                end;

              Range['B'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.FontStyle := 'Bold';
              Range['B'+IntToStr(x_row),'E'+IntToStr(x_row)].Font.Size := '10';

              Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := 'Day No';
              Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := 'Route';
              Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Kms';
              Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Code';

              Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].ColumnWidth := 40;              

              x_row := x_row + 1;

            end;

          if GpSds['DayNo'] <> null then
            Range['B'+IntToStr(x_row),'B'+IntToStr(x_row)].Value := GpSds['DayNo'];

          if GpSds['Route'] <> null then
            Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].Value := GpSds['Route'];

          if GpSds['Kms'] <> null then
            Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := GpSds['Kms'];

          if GpSds['Code'] <> null then
            Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := GpSds['Code'];

          x_row := x_row + 1;

          x_PrevQuoLines_id := GpSds['QuoLines_id'];

          GpSds.Next;
        end;

    end;

  x_fileName := g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.xls';

  scExcelExport.SaveAs(x_fileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;


procedure TVouSendMailForm.SendPackageMail;
var
  GpSds, PackageDisSds, PackageAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
  //x_Cost: double;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  //MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  PackageDisSds := TSQLDataSet.Create(nil);
  PackageDisSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  PackageAddrSds := TSQLDataSet.Create(nil);
  PackageAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +
    'WHERE u.AdmUsers_id = ' + IntToStr(g_users_id);

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.Open;

  x_Sender := 'admin@odyssey.co.in';
  x_UserName := '';

  if GpSds['Email'] <> null then
    x_Sender := GpSds['Email'];

  if GpSds['UserName'] <> null then
    x_UserName := GpSds['UserName'];


  QueryString := 'SELECT DISTINCT vp.Addressbook_id, a.Organisation ' +
    'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
    'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
    'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    'AND COALESCE(vp.SendMail,0) = 1';

  PackageDisSds.Close;
  PackageDisSds.CommandText := QueryString;
  PackageDisSds.Open;

  PackageDisSds.First;

  while not PackageDisSds.Eof do
    begin

      x_Agent := '';
      if PackageDisSds['Organisation'] <> null then
        x_Agent := PackageDisSds['Organisation'];

      x_Recipient := GetRecipient(PackageDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(PackageDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then
        x_To := x_Sender
      else
        x_To := x_To + ';' + x_Sender;

      QueryString := 'SELECT vp.VouchersPackages_id, v.Vouchers_id, v.VoucherNo, v.TourLeader, dbo.f_RemoveSpaces(v.TourRef) as TourCode, v.YearRef, v.MasterTourCode, v.MasterTourDate ' +
        'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vp.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']);

      PackageAddrSds.Close;
      PackageAddrSds.CommandText := QueryString;
      PackageAddrSds.Open;

      QueryString := 'SELECT MIN(v.VoucherNo) AS MinVoucherNo ' +
        'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vp.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MinVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MinVoucherNo'] <> null) then
        x_MinVoucherNo := GpSds['MinVoucherNo'];

      x_YearRef := 0;
      if (not PackageAddrSds.Eof) and (PackageAddrSds['YearRef'] <> null) then
        x_YearRef := PackageAddrSds['YearRef'];

      QueryString := 'SELECT MAX(v.VoucherNo) AS MaxVoucherNo ' +
        'FROM VouchersPackages vp LEFT JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id ' +
        'LEFT JOIN Addressbook a ON v.Addressbook_id = a.Addressbook_id ' +
        'WHERE v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
        'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
        'AND COALESCE(vp.SendMail,0) = 1 ' +
        'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']);

      GpSds.Close;
      GpSds.CommandText := QueryString;
      GpSds.Open;

      x_MaxVoucherNo := 0;
      if (not GPSds.EOF) and (GpSds['MaxVoucherNo'] <> null) then
        x_MaxVoucherNo := GpSds['MaxVoucherNo'];

      x_VoucherCount := 0;

      PackageAddrSds.First;
      while (not PackageAddrSds.EOF) do
        begin
          if (PackageAddrSds['Vouchers_id'] <> null) and (PackageAddrSds['VoucherNo'] <> null) then
            begin
              x_VoucherNoArray[x_VoucherCount] := PackageAddrSds['VoucherNo'];
              x_Vouchers_idArray[x_VoucherCount] := PackageAddrSds['Vouchers_id'];
              x_VoucherCount := x_VoucherCount + 1;
            end;

          PackageAddrSds.Next;
        end;

      PackageAddrSds.First;
      x_PaxName := '';
      if (not PackageAddrSds.Eof) and (PackageAddrSds['TourLeader'] <> null) then
        x_PaxName := PackageAddrSds['TourLeader'];

      x_TourCode := '';
      if PackageAddrSds['TourCode'] <> null then
        x_TourCode := PackageAddrSds['TourCode'];

      x_Msg := HoteGroupConfirmationEmail (x_VoucherNoArray, x_Vouchers_idArray, x_VoucherCount,
                                           x_TourCode, x_PaxName, x_UserName, x_Recipient,0);

      try
        begin

          x_Vouchers_id_str := '';
          x_count := 0;
          x_Vouchers_id_str := '(';
          while (x_count < x_VoucherCount) do
            begin
              x_Vouchers_id_str := x_Vouchers_id_str + IntToStr(x_VoucherNoArray[x_count]);

              x_count := x_count + 1;

              if x_count < x_VoucherCount then
                x_Vouchers_id_str := x_Vouchers_id_str + ',';
            end;
          x_Vouchers_id_str := x_Vouchers_id_str + ')';

          if RptSingleVoucherForm = nil then
            Application.CreateForm(TRptSingleVoucherForm, RptSingleVoucherForm);

          RptSingleVoucherForm.PrintVouchersSds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Close;

          RptSingleVoucherForm.PrintVouchersSds.CommandText :=
            'SELECT dbo.f_RemoveSpaces(TourRef) as TourRef2,* FROM dbo.fn_Rpt_PrintVouchers (''' + PackageAddrSds['MasterTourCode'] + ''', ''' +
            FormatDateTime('mm/dd/yyyy',PackageAddrSds['MasterTourDate']) + ''', ' +
            IntToStr(x_MinVoucherNo) + ',' + IntToStr(x_MaxVoucherNo) + ',' + IntToStr(x_YearRef) + ',2) ' +
            'WHERE VoucherNo IN ' + x_Vouchers_id_str + ' ' +
            'ORDER BY YearRef, VoucherNo';

          RptSingleVoucherForm.PrintVouchersSds.Open;

          RptSingleVoucherForm.PrintVouchersCds.Close;
          RptSingleVoucherForm.PrintVouchersCds.Open;

          //RptSingleVoucherForm.QRVoucher.PreviewModal;

          aPDF := TQRPDFDocumentFilter.Create(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          aPDF.FontHandling := fhAutoEmbed;
          RptSingleVoucherForm.QRVoucher.ExportToFilter(aPDF);
          aPDF.Free;

          RptSingleVoucherForm.Release;
          RptSingleVoucherForm := nil;

          MailItem := Outlook.createitem(olMailItem);
          MailItem.Recipients.Add(x_To);
          MailItem.subject := {'Request for Accommodation Reservation -- ' +} x_Agent + ' - (' + x_TourCode + ')';
          MailItem.Body := x_Msg;
          MailItem.Attachments.Add(g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.pdf');
          MailItem.save;

          QueryString := 'UPDATE VouchersPackages ' +
            'SET SendMail = 1, RequestedOn = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''' ' +
            'WHERE EXISTS (' +
            'SELECT * FROM Vouchers v ' +
            'WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
            'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
            'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
            'AND v.Addressbook_id = ' + IntToStr(PackageDisSds['Addressbook_id']) + ') ' +
            'AND SendMail = 1';

          GpSds.Close;
          GpSds.CommandText := QueryString;
          GpSds.ExecSQL;

        end
      except
      end;

      PackageDisSds.Next;

    end;

  GpSds.Free;

  NmSpace.Logoff;
  Outlook.Quit;
  Outlook := Unassigned;

  PackageCds.Active := false;
  PackageCds.Active := true;

  ShowMessage('Mailed');

end;


procedure TVouSendMailForm.GetVoucherRefNo (x_QuoLines_id: integer ; var x_VoucherNo: integer);
var
  x_QueryString: string;
  GpSds: TSQLDataSet;
begin

  x_QueryString := 'SELECT ql.QuoLines_id, v.MasterTourCode, v.MasterTourDate, v.VoucherNo ' +
     'FROM QuoLines ql INNER JOIN Quotations q ON ql.Quotations_id = q.Quotations_id ' +
     'INNER JOIN Vouchers v ON v.MasterTourCode = q.TourCode AND v.MasterTourDate = q.StartDate ' +
     'INNER JOIN VouchersTransport vt ON v.Vouchers_id = vt.Vouchers_id ' +
     'WHERE ql.QuoLines_id = ' + IntToStr(x_QuoLines_id) + ' ' +
     'AND vt.From_Cities_id = ql.FromCities_id ' +
     'AND vt.FromDate = ql.QuoDate';

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;

  x_VoucherNo := 0;

  if (not GpSds.Eof) and (GpSds['VoucherNo'] <> null) then
    x_VoucherNo := GpSds['VoucherNo'];

  GpSds.Free;

end;


procedure TVouSendMailForm.PackageCdsAfterPost(DataSet: TDataSet);
begin
  PackageCds.ApplyUpdates(0);
end;

end.


