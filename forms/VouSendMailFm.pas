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


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersAccommodation ' +

    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersAccommodation.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;







    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




  GpSds.CommandText := QueryString;
  GpSds.Open;







    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND Addressbook_id IS NULL ' +
    ' AND Tickets_id = 2';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



  GpSds.CommandText := QueryString;
  GpSds.Open;







    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND Addressbook_id IS NULL ' +
    ' AND Tickets_id = 1';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;





    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;




    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTickets.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';
  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;







    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersServices ' +

    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersServices.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;





    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersTransport ' +

    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersTransport.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;


  QueryString := 'UPDATE VouchersPackages ' +

    ' MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''' ' +
    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;

  QueryString := 'UPDATE VouchersPackages ' +

    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NOT NULL';

  GpSds.Close;
  GpSds.CommandText := QueryString;
  GpSds.ExecSQL;



    ' WHERE EXISTS (SELECT * FROM Vouchers v WHERE VouchersPackages.Vouchers_id = v.Vouchers_id ' +
                    'AND v.MasterTourCode = ''' + _VouSendMailForm_MasterTourCode + ''' ' +
                    'AND v.MasterTourDate = ''' + FormatDateTime('mm/dd/yyyy', _VouSendMailForm_MasterTourDate) + ''') ' +
    ' AND RequestedOn IS NULL';


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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Hotel, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo, x_VendorPymtTerms_id: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  AccAddrSds := TSQLDataSet.Create(nil);
  AccAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  AccDisSds.Open;



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














      AccAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;




















































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

















          GpSds.ExecSQL;









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

























      GpSds.Open;








          GpSds.CommandText := QueryString;
          GpSds.Open;


































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






















      GpSds.CommandText := QueryString;
      GpSds.Open;




  Result := x_To;




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








  Result := x_HotelEmail;




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








  Result := x_Recipient;




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











procedure TVouSendMailForm.SendTicketsCancelMail;
var
  GpSds, TicDisSds, TicAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName, x_RemarksCancel: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  TicAddrSds := TSQLDataSet.Create(nil);
  TicAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;



















  TicDisSds.Open;



  while not TicDisSds.Eof do
    begin

      x_Agent := '';
      if TicDisSds['Organisation'] <> null then
        x_Agent := TicDisSds['Organisation'];

      x_Recipient := GetRecipient(TicDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TicDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then















      TicAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;








































          MailItem.Recipients.Add(x_To);
















          GpSds.ExecSQL;









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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_HotelEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName, x_RemarksCancel: String;
  x_Hotel, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  AccAddrSds := TSQLDataSet.Create(nil);
  AccAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  AccDisSds.Open;



  while not AccDisSds.Eof do
    begin

      x_Hotel := '';
      if AccDisSds['Organisation'] <> null then
        x_Hotel := AccDisSds['Organisation'];

      x_Recipient := GetRecipient(AccDisSds['Addressbook_id']);
      x_HotelEmail := GetHotelEmail(AccDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_HotelEmail);

      if x_SendMail = false then















      AccAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;








































          MailItem.Recipients.Add(x_To);
















          GpSds.ExecSQL;









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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str, x_RemarksCancel: string;
  x_sendMail : boolean;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  SerAddrSds := TSQLDataSet.Create(nil);
  SerAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  SerDisSds.Open;



  while not SerDisSds.Eof do
    begin

      x_Agent := '';
      if SerDisSds['Organisation'] <> null then
        x_Agent := SerDisSds['Organisation'];

      x_Recipient := GetRecipient(SerDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(SerDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then















      SerAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;








































          MailItem.Recipients.Add(x_To);
















          GpSds.ExecSQL;









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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str, x_RemarksCancel: string;
  x_sendMail : boolean;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  TransAddrSds := TSQLDataSet.Create(nil);
  TransAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  TransDisSds.Open;



  while not TransDisSds.Eof do
    begin

      x_Agent := '';
      if TransDisSds['Organisation'] <> null then
        x_Agent := TransDisSds['Organisation'];

      x_Recipient := GetRecipient(TransDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TransDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then















      TransAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;








































          MailItem.Recipients.Add(x_To);
















          GpSds.ExecSQL;









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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str, x_RemarksCancel: string;
  x_sendMail : boolean;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  PackageAddrSds := TSQLDataSet.Create(nil);
  PackageAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  PackageDisSds.Open;



  while not PackageDisSds.Eof do
    begin

      x_Agent := '';
      if PackageDisSds['Organisation'] <> null then
        x_Agent := PackageDisSds['Organisation'];

      x_Recipient := GetRecipient(PackageDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(PackageDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then















      PackageAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;








































          MailItem.Recipients.Add(x_To);
















          GpSds.ExecSQL;









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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  TicketAddrSds := TSQLDataSet.Create(nil);
  TicketAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  TicketDisSds.Open;



  while not TicketDisSds.Eof do
    begin

      x_Agent := '';
      if TicketDisSds['Organisation'] <> null then
        x_Agent := TicketDisSds['Organisation'];

      x_Recipient := GetRecipient(TicketDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TicketDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then














      TicketAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;




















































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

















          GpSds.ExecSQL;









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
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
  x_Cost: double;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;




  ServiceAddrSds := TSQLDataSet.Create(nil);
  ServiceAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  ServiceDisSds.Open;



  while not ServiceDisSds.Eof do
    begin

      x_Agent := '';
      if ServiceDisSds['Organisation'] <> null then
        x_Agent := ServiceDisSds['Organisation'];

      x_Recipient := GetRecipient(ServiceDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(ServiceDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then














      ServiceAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;




















































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

















          GpSds.ExecSQL;









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


  GpSds.CommandText := QueryString;
  GpSds.Open;









end;



procedure TVouSendMailForm.TransportCdsAfterPost(DataSet: TDataSet);
begin
  TransportCds.ApplyUpdates(0);
end;

procedure TVouSendMailForm.SendTransportMail;
var
  GpSds, TransportDisSds, TransportAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName, x_MasterTourCode: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail, x_HasDetails : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
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




  TransportAddrSds := TSQLDataSet.Create(nil);
  TransportAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  TransportDisSds.Open;



  while not TransportDisSds.Eof do
    begin

      x_Agent := '';
      if TransportDisSds['Organisation'] <> null then
        x_Agent := TransportDisSds['Organisation'];

      x_Recipient := GetRecipient(TransportDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(TransportDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then














      TransportAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;

































































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



















          GpSds.ExecSQL;









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














      'WHERE ql.Quotations_id = ' + IntToStr(x_Quotations_id) + ' ' +
      'AND ql.CarHireAgents_id = ' + IntToStr(x_Agents_id) + ' ' +
      'AND ql.DriveTypes_id = 1 ' +
      'ORDER BY ql.QuoLines_id, b.Code';

  GpSds.Close;
  GpSds.CommandText := x_QueryString;
  GpSds.Open;




  scExcelExport.ExcelVisible:=True;
  scExcelExport.LoadDefaultProperties;
  scExcelExport.WorksheetName:='Drives';

  scExcelExport.ConnectTo := ctNewExcel;
  scExcelExport.Connect;



































              Range['D'+IntToStr(x_row),'D'+IntToStr(x_row)].Value := 'Kms';
              Range['E'+IntToStr(x_row),'E'+IntToStr(x_row)].Value := 'Code';

              Range['C'+IntToStr(x_row),'C'+IntToStr(x_row)].ColumnWidth := 40;              

              x_row := x_row + 1;
























  x_fileName := g_ReportDir + '\' + trim(x_Agent) + '-' + trim(x_TourCode) + '.xls';

  scExcelExport.SaveAs(x_fileName,ffXLS);

  scExcelExport.Disconnect;
  scExcelExport.CloseAllExcelApps;

  GpSds.Free;

end;


procedure TVouSendMailForm.SendPackageMail;
var
  GpSds, PackageDisSds, PackageAddrSds : TSQLDataSet;
  QueryString, x_ip, x_Sender, x_To, x_Msg, x_AgentEmail, x_Recipient, x_TourCode, x_date_str, x_UserName, x_PaxName: String;
  x_Agent, x_Vouchers_id_str: string;
  x_sendMail : boolean;
  aPDF : TQRPDFDocumentFilter;
  x_voucherNo, x_YearRef, x_VoucherCount, x_count, x_MinVoucherNo, x_MaxVoucherNo: integer;
  Outlook, MailItem, NmSpace, Attachment, MapiFolder: OLEVariant;
  x_VoucherNoArray, x_Vouchers_idArray: array[0..100] of integer;
  x_Cost: double;
begin

  Outlook := CreateOleObject('Outlook.Application');
  NmSpace := Outlook.GetNamespace('MAPI');
  NmSpace.Logon(EmptyParam, EmptyParam, False, True);
//  //MapiFolder := NmSpace.getdefaultfolder(olFolderDrafts);

  x_ip := GetMailIp;
  x_SendMail := GetSendMail;

  GpSds := TSQLDataSet.Create(nil);
  GpSds.SQLConnection := BackOfficeDataModule.SQLConnection;




  PackageAddrSds := TSQLDataSet.Create(nil);
  PackageAddrSds.SQLConnection := BackOfficeDataModule.SQLConnection;

  QueryString := 'SELECT u.Email, UserName from AdmUsers u ' +



  GpSds.CommandText := QueryString;
  GpSds.Open;




















  PackageDisSds.Open;



  while not PackageDisSds.Eof do
    begin

      x_Agent := '';
      if PackageDisSds['Organisation'] <> null then
        x_Agent := PackageDisSds['Organisation'];

      x_Recipient := GetRecipient(PackageDisSds['Addressbook_id']);
      x_AgentEmail := GetHotelEmail(PackageDisSds['Addressbook_id']);

      x_To := GetEmailTo(x_AgentEmail);

      if x_SendMail = false then














      PackageAddrSds.Open;











      GpSds.Open;



















      GpSds.Open;




















































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

















          GpSds.ExecSQL;









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








end;


procedure TVouSendMailForm.PackageCdsAfterPost(DataSet: TDataSet);
begin
  PackageCds.ApplyUpdates(0);
end;

end.

