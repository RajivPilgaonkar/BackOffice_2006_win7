object Invoices2Form: TInvoices2Form
  Left = -52
  Top = 358
  Width = 999
  Height = 664
  Caption = 'Invoices Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BottomPnl: TPanel
    Left = 0
    Top = 585
    Width = 991
    Height = 45
    Align = alBottom
    TabOrder = 1
    object SearchLbl: TLabel
      Left = 214
      Top = 13
      Width = 67
      Height = 13
      Caption = 'Invoice No.'
    end
    object Label3: TLabel
      Left = 12
      Top = 13
      Width = 90
      Height = 13
      Caption = 'Year Reference'
    end
    object BitBtn1: TBitBtn
      Left = 883
      Top = 8
      Width = 93
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkClose
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 789
      Top = 11
      DataBinding.DataField = 'invoicedetails_id'
      DataBinding.DataSource = InvoiceDetDS
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clTeal
      Style.Font.Height = -8
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = cxDBTextEdit7KeyPress
      Width = 73
    end
    object InvoiceNoEdit: TEdit
      Left = 283
      Top = 9
      Width = 70
      Height = 21
      TabOrder = 2
      OnKeyPress = YearRefEditKeyPress
    end
    object YearRefEdit: TEdit
      Left = 106
      Top = 9
      Width = 95
      Height = 21
      TabOrder = 3
      OnKeyPress = YearRefEditKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 585
    Align = alClient
    TabOrder = 0
    object Label12: TLabel
      Left = 10
      Top = 558
      Width = 50
      Height = 13
      Caption = 'Invoiced'
    end
    object Label13: TLabel
      Left = 195
      Top = 558
      Width = 26
      Height = 13
      Caption = 'Paid'
    end
    object Label14: TLabel
      Left = 350
      Top = 558
      Width = 47
      Height = 13
      Caption = 'Balance'
    end
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      TabOrder = 1
      Height = 141
      Width = 989
      object Label1: TLabel
        Left = 11
        Top = 12
        Width = 63
        Height = 13
        Caption = 'Invoice No'
      end
      object TourCodeLbl: TLabel
        Left = 8
        Top = 34
        Width = 60
        Height = 13
        Caption = 'Tour Code'
      end
      object Label8: TLabel
        Left = 16
        Top = 118
        Width = 54
        Height = 13
        Caption = 'Tax Type'
      end
      object Label2: TLabel
        Left = 216
        Top = 12
        Width = 51
        Height = 13
        Caption = 'Year Ref'
      end
      object TourDateLbl: TLabel
        Left = 216
        Top = 34
        Width = 58
        Height = 13
        Caption = 'Tour Date'
      end
      object Label9: TLabel
        Left = 224
        Top = 119
        Width = 43
        Height = 13
        Caption = 'Tax (%)'
      end
      object Label5: TLabel
        Left = 416
        Top = 12
        Width = 74
        Height = 13
        Caption = 'Invoice Date'
      end
      object Label7: TLabel
        Left = 424
        Top = 34
        Width = 51
        Height = 13
        Caption = 'Currency'
      end
      object Label11: TLabel
        Left = 432
        Top = 117
        Width = 22
        Height = 13
        Caption = 'Tax'
      end
      object Label4: TLabel
        Left = 641
        Top = 10
        Width = 53
        Height = 13
        Caption = 'Customer'
      end
      object Label6: TLabel
        Left = 672
        Top = 69
        Width = 75
        Height = 13
        Caption = 'Invoice Type'
      end
      object Label15: TLabel
        Left = 17
        Top = 56
        Width = 50
        Height = 13
        Caption = 'Remarks'
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 80
        Top = 8
        DataBinding.DataField = 'invoiceno'
        DataBinding.DataSource = InvoicesDS
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 10
        OnKeyPress = cxDBTextEdit7KeyPress
        Width = 121
      end
      object TourCodeEdit: TcxDBTextEdit
        Left = 80
        Top = 29
        DataBinding.DataField = 'tourcode'
        DataBinding.DataSource = InvoicesDS
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 280
        Top = 8
        DataBinding.DataField = 'yearref'
        DataBinding.DataSource = InvoicesDS
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 11
        OnKeyPress = cxDBTextEdit7KeyPress
        Width = 73
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 280
        Top = 114
        DataBinding.DataField = 'taxpercentage'
        DataBinding.DataSource = InvoicesDS
        TabOrder = 6
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 504
        Top = 7
        DataBinding.DataField = 'invoicedate'
        DataBinding.DataSource = InvoicesDS
        Properties.ShowTime = False
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 480
        Top = 29
        DataBinding.DataField = 'currencies_id'
        DataBinding.DataSource = InvoicesDS
        Properties.KeyFieldNames = 'currencies_id'
        Properties.ListColumns = <
          item
            FieldName = 'currency'
          end>
        Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        TabOrder = 3
        Width = 145
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 480
        Top = 114
        DataBinding.DataField = 'taxamount'
        DataBinding.DataSource = InvoicesDS
        TabOrder = 7
        Width = 121
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 752
        Top = 67
        DataBinding.DataField = 'invoicetypes_id'
        DataBinding.DataSource = InvoicesDS
        Properties.KeyFieldNames = 'InvoiceTypes_id'
        Properties.ListColumns = <
          item
            FieldName = 'Type'
          end>
        Properties.ListSource = InvoiceTypeDS
        TabOrder = 9
        Width = 145
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 624
        Top = 66
        Caption = 'FIT'
        DataBinding.DataField = 'fit'
        DataBinding.DataSource = InvoicesDS
        TabOrder = 8
        Width = 43
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 696
        Top = 100
        Width = 180
        Height = 21
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = InvoicesDS
        TabOrder = 12
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 80
        Top = 114
        DataBinding.DataField = 'taxes_id'
        DataBinding.DataSource = InvoicesDS
        Properties.KeyFieldNames = 'taxes_id'
        Properties.ListColumns = <
          item
            FieldName = 'tax'
          end>
        Properties.ListSource = BackOfficeDataModule.TaxeDS
        TabOrder = 5
        Width = 122
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 704
        Top = 6
        DataBinding.DataField = 'CustomerName'
        DataBinding.DataSource = InvoicesDS
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 13
        OnKeyPress = cxDBTextEdit7KeyPress
        Width = 275
      end
      object TourDateEdit: TcxDBDateEdit
        Left = 280
        Top = 29
        DataBinding.DataField = 'invoicedate'
        DataBinding.DataSource = InvoicesDS
        Properties.ShowTime = False
        TabOrder = 2
        Width = 121
      end
      object cxDBMemo1: TcxDBMemo
        Left = 80
        Top = 53
        DataBinding.DataField = 'note'
        DataBinding.DataSource = InvoicesDS
        TabOrder = 4
        Height = 58
        Width = 547
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 911
        Top = 10
        DataBinding.DataField = 'invoices_id'
        DataBinding.DataSource = InvoicesDS
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -8
        Style.Font.Name = 'Times New Roman'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 14
        OnKeyPress = cxDBTextEdit7KeyPress
        Width = 73
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 142
      Align = alTop
      TabOrder = 2
      Height = 407
      Width = 989
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 18
        Width = 983
        Height = 386
        ActivePage = InvoiceTab
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 380
        ClientRectLeft = 3
        ClientRectRight = 977
        ClientRectTop = 26
        object InvoiceTab: TcxTabSheet
          Caption = 'Invoice'
          ImageIndex = 0
          object InvoiceGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 974
            Height = 354
            Align = alClient
            TabOrder = 0
            object InvoiceGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = True
              NavigatorButtons.PriorPage.Visible = True
              NavigatorButtons.Prior.Visible = True
              NavigatorButtons.Next.Visible = True
              NavigatorButtons.NextPage.Visible = True
              NavigatorButtons.Last.Visible = True
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Delete.Visible = True
              NavigatorButtons.Edit.Visible = True
              NavigatorButtons.Post.Visible = True
              NavigatorButtons.Cancel.Visible = True
              NavigatorButtons.Refresh.Visible = True
              NavigatorButtons.SaveBookmark.Visible = True
              NavigatorButtons.GotoBookmark.Visible = True
              NavigatorButtons.Filter.Visible = True
              DataController.DataSource = InvoiceDetDS
              DataController.KeyFieldNames = 'invoicedetails_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              Styles.Background = BackOfficeDataModule.cxStyleFormBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Styles.Header = BackOfficeDataModule.cxStyleHeader
              object InvoiceGridDBTableView1bookingref: TcxGridDBColumn
                Caption = 'Booking Ref.'
                DataBinding.FieldName = 'bookingref'
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object InvoiceGridDBTableView1tourdate: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object InvoiceGridDBTableView1details: TcxGridDBColumn
                Caption = 'Details'
                DataBinding.FieldName = 'details'
                Options.Filtering = False
                Options.Grouping = False
                Width = 132
              end
              object InvoiceGridDBTableView1roomsizes_id: TcxGridDBColumn
                Caption = 'Room Size'
                DataBinding.FieldName = 'roomsizes_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'roomsizes_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'roomsize'
                  end>
                Properties.ListSource = RoomSizeDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object InvoiceGridDBTableView1unitprice: TcxGridDBColumn
                Caption = 'Unit Price'
                DataBinding.FieldName = 'unitprice'
                Options.Filtering = False
                Options.Grouping = False
                Width = 88
              end
              object InvoiceGridDBTableView1quantity: TcxGridDBColumn
                Caption = 'Quantity'
                DataBinding.FieldName = 'quantity'
                Options.Filtering = False
                Options.Grouping = False
                Width = 90
              end
              object InvoiceGridDBTableView1nights: TcxGridDBColumn
                Caption = 'Nights'
                DataBinding.FieldName = 'nights'
                Options.Filtering = False
                Options.Grouping = False
              end
              object InvoiceGridDBTableView1amount: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'amount'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 111
              end
              object InvoiceGridDBTableView1tourcode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                Options.Filtering = False
                Options.Grouping = False
              end
              object InvoiceGridDBTableView1itemno: TcxGridDBColumn
                Caption = 'Item No'
                DataBinding.FieldName = 'itemno'
                Options.Filtering = False
                Options.Grouping = False
                Width = 88
              end
              object InvoiceGridDBTableView1servicetaxperc: TcxGridDBColumn
                Caption = 'Service Tax Perc'
                DataBinding.FieldName = 'servicetaxperc'
                Options.Filtering = False
                Options.Grouping = False
                Width = 121
              end
              object InvoiceGridDBTableView1localpayment: TcxGridDBColumn
                Caption = 'Local Payment'
                DataBinding.FieldName = 'localpayment'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
            end
            object InvoiceGridLevel1: TcxGridLevel
              GridView = InvoiceGridDBTableView1
            end
          end
        end
        object PaymentsTab: TcxTabSheet
          Caption = 'Payments'
          ImageIndex = 1
          object PaymentsGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 366
            Align = alClient
            TabOrder = 0
            object PaymentsGridcxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = True
              NavigatorButtons.PriorPage.Visible = True
              NavigatorButtons.Prior.Visible = True
              NavigatorButtons.Next.Visible = True
              NavigatorButtons.NextPage.Visible = True
              NavigatorButtons.Last.Visible = True
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Delete.Visible = True
              NavigatorButtons.Edit.Visible = True
              NavigatorButtons.Post.Visible = True
              NavigatorButtons.Cancel.Visible = True
              NavigatorButtons.Refresh.Visible = True
              NavigatorButtons.SaveBookmark.Visible = True
              NavigatorButtons.GotoBookmark.Visible = True
              NavigatorButtons.Filter.Visible = True
              DataController.DataSource = PaymentDS
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              Styles.Background = BackOfficeDataModule.cxStyleFormBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Styles.Header = BackOfficeDataModule.cxStyleHeader
              object PaymentsGridcxGridDBTableView1transactiondate: TcxGridDBColumn
                Caption = 'Transaction Date'
                DataBinding.FieldName = 'transactiondate'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 143
              end
              object PaymentsGridcxGridDBTableView1cashvoucherno: TcxGridDBColumn
                Caption = 'Cash Voucher No'
                DataBinding.FieldName = 'cashvoucherno'
                Options.Filtering = False
                Options.Grouping = False
                Width = 178
              end
              object PaymentsGridcxGridDBTableView1Db: TcxGridDBColumn
                Caption = 'Amount'
                DataBinding.FieldName = 'Db'
                Options.Filtering = False
                Options.Grouping = False
                Width = 239
              end
              object PaymentsGridcxGridDBTableView1Details: TcxGridDBColumn
                DataBinding.FieldName = 'Details'
                Options.Filtering = False
                Options.Grouping = False
                Width = 422
              end
            end
            object PaymentsGridcxGridLevel1: TcxGridLevel
              GridView = PaymentsGridcxGridDBTableView1
            end
          end
        end
      end
    end
    object DisplayBalanceChk: TcxCheckBox
      Left = 517
      Top = 555
      Caption = 'Display Balance'
      State = cbsChecked
      TabOrder = 0
      OnClick = DisplayBalanceChkClick
      Width = 121
    end
    object InvoicedEdit: TcxDBTextEdit
      Left = 62
      Top = 555
      DataBinding.DataField = 'InvoiceTotal'
      DataBinding.DataSource = InvoiceTotalDS
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 86
    end
    object BalanceEdit: TcxDBTextEdit
      Left = 396
      Top = 555
      DataBinding.DataField = 'Balance'
      DataBinding.DataSource = BalanceDS
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 86
    end
    object PaidEdit: TcxDBTextEdit
      Left = 220
      Top = 555
      DataBinding.DataField = 'Db'
      DataBinding.DataSource = PayDS
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 86
    end
    object BitBtn2: TBitBtn
      Left = 883
      Top = 560
      Width = 93
      Height = 25
      Caption = 'Accounts...'
      TabOrder = 6
      Visible = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
  end
  object InvoicesDS: TDataSource
    DataSet = InvoicesCds
    Left = 806
    Top = 104
  end
  object InvoicesCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'divisions_id'
    MasterFields = 'Divisions_id'
    MasterSource = BoQryForm.DivsionDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'InvoicesDsp'
    AfterInsert = InvoicesCdsAfterInsert
    BeforePost = InvoicesCdsBeforePost
    AfterPost = InvoicesCdsAfterPost
    AfterScroll = InvoicesCdsAfterScroll
    Left = 816
    Top = 104
    object InvoicesCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object InvoicesCdsinvoiceno: TIntegerField
      FieldName = 'invoiceno'
    end
    object InvoicesCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
    object InvoicesCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object InvoicesCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object InvoicesCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object InvoicesCdsinvoicedate: TSQLTimeStampField
      FieldName = 'invoicedate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object InvoicesCdsnote: TMemoField
      FieldName = 'note'
      BlobType = ftMemo
    end
    object InvoicesCdscredit: TIntegerField
      FieldName = 'credit'
    end
    object InvoicesCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object InvoicesCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object InvoicesCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object InvoicesCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object InvoicesCdstaxamount: TBCDField
      FieldName = 'taxamount'
      Precision = 10
      Size = 2
    end
    object InvoicesCdstaxpercentage: TBCDField
      FieldName = 'taxpercentage'
      Precision = 5
    end
    object InvoicesCdsinvoicetypes_id: TIntegerField
      FieldName = 'invoicetypes_id'
    end
    object InvoicesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object InvoicesCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object InvoicesCdsexchangerate: TBCDField
      FieldName = 'exchangerate'
      Precision = 10
    end
    object InvoicesCdsyears_id: TIntegerField
      FieldName = 'years_id'
    end
    object InvoicesCdsmonths_id: TIntegerField
      FieldName = 'months_id'
    end
    object InvoicesCdstl_type: TIntegerField
      FieldName = 'tl_type'
    end
    object InvoicesCdsCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupDataSet = CustCds
      LookupKeyFields = 'AddressBook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 80
      Lookup = True
    end
  end
  object InvoicesDsp: TDataSetProvider
    DataSet = InvoicesSds
    Left = 832
    Top = 104
  end
  object InvoicesSds: TSQLDataSet
    Active = True
    CommandText = 'invoices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 850
    Top = 103
  end
  object InvoiceDetDS: TDataSource
    DataSet = InvoiceDetCds
    Left = 14
    Top = 296
  end
  object InvoiceDetCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'invoices_id'
    MasterFields = 'invoices_id'
    MasterSource = InvoicesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'InvoiceDetDSP'
    AfterInsert = InvoiceDetCdsAfterInsert
    BeforePost = InvoiceDetCdsBeforePost
    AfterPost = InvoiceDetCdsAfterPost
    AfterDelete = InvoiceDetCdsAfterDelete
    Left = 24
    Top = 296
    object InvoiceDetCdsproducts_id: TIntegerField
      FieldName = 'products_id'
    end
    object InvoiceDetCdsdetails: TStringField
      FieldName = 'details'
      Size = 250
    end
    object InvoiceDetCdsunitprice: TBCDField
      FieldName = 'unitprice'
      Precision = 10
      Size = 2
    end
    object InvoiceDetCdsquantity: TIntegerField
      FieldName = 'quantity'
    end
    object InvoiceDetCdsamount: TBCDField
      FieldName = 'amount'
      Precision = 10
      Size = 2
    end
    object InvoiceDetCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object InvoiceDetCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object InvoiceDetCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object InvoiceDetCdsitemno: TIntegerField
      FieldName = 'itemno'
    end
    object InvoiceDetCdsbookingref: TStringField
      FieldName = 'bookingref'
    end
    object InvoiceDetCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object InvoiceDetCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object InvoiceDetCdsnights: TIntegerField
      FieldName = 'nights'
    end
    object InvoiceDetCdsinvoicedetails_id: TIntegerField
      FieldName = 'invoicedetails_id'
    end
    object InvoiceDetCdslocalpayment: TBCDField
      FieldName = 'localpayment'
      Precision = 10
      Size = 2
    end
    object InvoiceDetCdsservicetaxperc: TBCDField
      FieldName = 'servicetaxperc'
      Precision = 10
      Size = 2
    end
    object InvoiceDetCdsbookingsaccommodation_id: TIntegerField
      FieldName = 'bookingsaccommodation_id'
    end
  end
  object InvoiceDetDSP: TDataSetProvider
    DataSet = InvoiceDetSds
    Left = 40
    Top = 296
  end
  object InvoiceDetSds: TSQLDataSet
    CommandText = 'invoicedetails'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 58
    Top = 295
  end
  object PaymentDS: TDataSource
    DataSet = PaymentCds
    Left = 694
    Top = 200
  end
  object PaymentCds: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    MasterSource = InvoicesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'PaymentDsp'
    Left = 704
    Top = 200
    object PaymentCdstransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
    end
    object PaymentCdscashvoucherno: TIntegerField
      FieldName = 'cashvoucherno'
    end
    object PaymentCdsDb: TFMTBCDField
      FieldName = 'Db'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 0
    end
    object PaymentCdsDetails: TStringField
      FieldName = 'Details'
      Size = 200
    end
  end
  object PaymentDsp: TDataSetProvider
    DataSet = PaymentSds
    Left = 720
    Top = 200
  end
  object PaymentSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT M.transactiondate, M.cashvoucherno, '#13#10'CAST('#13#10' (CASE WHEN ' +
      'D.Currencies_id<>13'#13#10' THEN COALESCE((COALESCE(D.ForexCredit, 0) ' +
      '- COALESCE(D.ForexDebit ,0)), 0)'#13#10' ELSE COALESCE((COALESCE(D.Cre' +
      'dit, 0) - COALESCE(D.Debit, 0)), 0)'#13#10' END) as numeric) as Db,'#13#10' ' +
      ' D.Details FROM'#13#10'  Accounts As M  LEFT JOIN Ledgers As D ON '#13#10'  ' +
      'M.accounts_id = D.accounts_id '#13#10'WHERE '#13#10'  D.InvoiceNo = :Invoice' +
      'No AND'#13#10'  D.InvoiceNo IS NOT NULL AND'#13#10'  D.YearRef = :YearRef AN' +
      'D'#13#10'  D.Divisions_id = :Divisions_id AND '#13#10'  D.Currencies_id = :C' +
      'urrencies_id'#13#10
    DataSource = InvoicesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'invoiceno'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'yearref'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'divisions_id'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'currencies_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 738
    Top = 199
  end
  object InvoiceTypeDS: TDataSource
    DataSet = InvoiceTypeCds
    Left = 774
    Top = 48
  end
  object InvoiceTypeCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'InvoiceTypeDSP'
    Left = 784
    Top = 48
    object InvoiceTypeCdsInvoiceTypes_id: TIntegerField
      FieldName = 'InvoiceTypes_id'
    end
    object InvoiceTypeCdsType: TStringField
      FieldName = 'Type'
    end
  end
  object InvoiceTypeDSP: TDataSetProvider
    DataSet = InvoiceTypeSds
    Left = 800
    Top = 48
  end
  object InvoiceTypeSds: TSQLDataSet
    CommandText = 'SELECT InvoiceTypes_id, Type FROM InvoiceTypes'#13#10'ORDER BY Type'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 818
    Top = 47
  end
  object CustDS: TDataSource
    DataSet = CustCds
    Left = 782
    Top = 16
  end
  object CustCds: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'CustDSP'
    Left = 792
    Top = 16
    object CustCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CustCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object CustDSP: TDataSetProvider
    DataSet = CustSds
    Left = 808
    Top = 16
  end
  object CustSds: TSQLDataSet
    CommandText = 
      'SELECT AddressBook_id, Organisation FROM AddressBook'#13#10'WHERE Orga' +
      'nisation IS NOT NULL'#13#10'AND LEN(Organisation) > 0'#13#10'ORDER BY Organi' +
      'sation'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 826
    Top = 15
  end
  object BalanceDS: TDataSource
    DataSet = BalanceCds
    Left = 382
    Top = 528
  end
  object BalanceCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'invoices_id'
    MasterFields = 'invoices_id'
    MasterSource = InvoicesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'BalanceDsp'
    OnCalcFields = BalanceCdsCalcFields
    Left = 392
    Top = 528
    object BalanceCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object BalanceCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object BalanceCdsinvoiced: TFMTBCDField
      FieldName = 'invoiced'
      Precision = 32
      Size = 2
    end
    object BalanceCdsForexPaid: TFMTBCDField
      FieldName = 'ForexPaid'
      Precision = 32
      Size = 2
    end
    object BalanceCdsPaid: TFMTBCDField
      FieldName = 'Paid'
      Precision = 32
      Size = 2
    end
    object BalanceCdsBalance: TStringField
      FieldKind = fkCalculated
      FieldName = 'Balance'
      Size = 40
      Calculated = True
    end
  end
  object BalanceDsp: TDataSetProvider
    DataSet = BalanceSds
    Left = 408
    Top = 528
  end
  object BalanceSds: TSQLDataSet
    CommandText = 
      'SELECT I.invoices_id, I.currencies_id,'#13#10'(SELECT COALESCE(SUM(COA' +
      'LESCE(ID.amount, 0)), 0)'#13#10'FROM invoicedetails ID WHERE invoices_' +
      'id=I.invoices_id) as invoiced,'#13#10'(SELECT COALESCE(SUM(COALESCE(L.' +
      'ForexCredit, 0)- COALESCE(L.ForexDebit,0)), 0)'#13#10'        FROM  le' +
      'dgers l'#13#10'        WHERE L.invoiceno=I.invoiceno'#13#10'        AND   L.' +
      'yearref=I.yearref'#13#10'        AND   L.divisions_id=I.divisions_id) ' +
      'as ForexPaid,'#13#10'(SELECT COALESCE(SUM(COALESCE(L.Credit, 0)- COALE' +
      'SCE(L.Debit,0)), 0)'#13#10'        FROM  ledgers l'#13#10'        WHERE L.in' +
      'voiceno=I.invoiceno'#13#10'        AND   L.yearref=I.yearref'#13#10'        ' +
      'AND   L.divisions_id=I.divisions_id) as Paid'#13#10'FROM invoices I'#13#10'W' +
      'HERE I.invoices_id=:invoices_id'#13#10
    DataSource = InvoicesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'invoices_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 426
    Top = 527
  end
  object RoomSizeDS: TDataSource
    DataSet = RoomSizeCds
    Left = 334
    Top = 208
  end
  object RoomSizeCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'RoomSizeDsp'
    Left = 344
    Top = 208
    object RoomSizeCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object RoomSizeCdsroomsize: TStringField
      FieldName = 'roomsize'
      Size = 10
    end
    object RoomSizeCdspax: TIntegerField
      FieldName = 'pax'
    end
  end
  object RoomSizeDsp: TDataSetProvider
    DataSet = RoomSizeSds
    Left = 360
    Top = 208
  end
  object RoomSizeSds: TSQLDataSet
    CommandText = 'SELECT * FROM RoomSizes'#13#10'ORDER BY RoomSize'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 378
    Top = 207
  end
  object InvoiceTotalDS: TDataSource
    DataSet = InvoiceTotalCDS
    Left = 70
    Top = 528
  end
  object InvoiceTotalCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'invoices_id'
    MasterFields = 'invoices_id'
    MasterSource = InvoicesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'InvoiceTotalDSP'
    OnCalcFields = BalanceCdsCalcFields
    Left = 80
    Top = 528
    object InvoiceTotalCDSInvoiceTotal: TFMTBCDField
      FieldName = 'InvoiceTotal'
      Precision = 32
      Size = 2
    end
    object InvoiceTotalCDSInvoices_id: TIntegerField
      FieldName = 'Invoices_id'
    end
  end
  object InvoiceTotalDSP: TDataSetProvider
    DataSet = InvoiceTotalSDS
    Left = 96
    Top = 528
  end
  object InvoiceTotalSDS: TSQLDataSet
    CommandText = 
      'SELECT Invoices_id, SUM(COALESCE(Amount, 0)) AS InvoiceTotal'#13#10'FR' +
      'OM InvoiceDetails'#13#10'WHERE Invoices_id = :Invoices_id'#13#10'group by in' +
      'voices_id'#13#10
    DataSource = InvoicesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'invoices_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 114
    Top = 527
  end
  object PayDS: TDataSource
    DataSet = PayCDS
    Left = 206
    Top = 528
  end
  object PayCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    MasterSource = InvoicesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'PayDSP'
    OnCalcFields = BalanceCdsCalcFields
    Left = 216
    Top = 528
    object PayCDStransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
    end
    object PayCDScashvoucherno: TIntegerField
      FieldName = 'cashvoucherno'
    end
    object PayCDSDb: TFMTBCDField
      FieldName = 'Db'
      Precision = 18
      Size = 0
    end
    object PayCDSDetails: TStringField
      FieldName = 'Details'
      Size = 200
    end
  end
  object PayDSP: TDataSetProvider
    DataSet = PaySDS
    Left = 232
    Top = 528
  end
  object PaySDS: TSQLDataSet
    CommandText = 
      'SELECT M.transactiondate, M.cashvoucherno, '#13#10'CAST('#13#10' (CASE WHEN ' +
      'D.Currencies_id<>13'#13#10' THEN COALESCE((COALESCE(D.ForexCredit, 0) ' +
      '- COALESCE(D.ForexDebit ,0)), 0)'#13#10' ELSE COALESCE((COALESCE(D.Cre' +
      'dit, 0) - COALESCE(D.Debit, 0)), 0)'#13#10' END) as numeric) as Db,'#13#10' ' +
      ' D.Details FROM'#13#10'  Accounts As M  LEFT JOIN Ledgers As D ON '#13#10'  ' +
      'M.accounts_id = D.accounts_id '#13#10'WHERE '#13#10'  D.InvoiceNo = :Invoice' +
      'No AND'#13#10'  D.InvoiceNo IS NOT NULL AND'#13#10'  D.YearRef = :YearRef AN' +
      'D'#13#10'  D.Divisions_id = :Divisions_id AND '#13#10'  D.Currencies_id = :C' +
      'urrencies_id'
    DataSource = InvoicesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'invoiceno'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'yearref'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'divisions_id'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'currencies_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 250
    Top = 527
  end
end
