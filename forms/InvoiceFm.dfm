inherited InvoiceForm: TInvoiceForm
  Left = 196
  Top = 73
  Width = 1005
  Caption = 'InvoiceForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 989
    Height = 153
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 0
      Height = 148
      Width = 987
      object DBText1: TDBText
        Left = 82
        Top = 22
        Width = 65
        Height = 17
        DataField = 'invoiceno'
        DataSource = MasterDS
        Transparent = True
      end
      object DBText2: TDBText
        Left = 282
        Top = 21
        Width = 65
        Height = 17
        DataField = 'yearref'
        DataSource = MasterDS
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 11
        Top = 21
        Caption = 'Invoice No'
        Transparent = True
      end
      object TourCodeLbl: TcxLabel
        Left = 11
        Top = 45
        Caption = 'Tour Code'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 11
        Top = 129
        Caption = 'Tax Type'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 216
        Top = 21
        Caption = 'Year Ref'
        Transparent = True
      end
      object TourDateLbl: TcxLabel
        Left = 215
        Top = 45
        Caption = 'Tour Date'
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 226
        Top = 129
        Caption = 'Tax (%)'
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 416
        Top = 21
        Caption = 'Invoice Date'
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 417
        Top = 45
        Caption = 'Currency'
        Transparent = True
      end
      object Label11: TcxLabel
        Left = 472
        Top = 129
        Caption = 'Tax'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 640
        Top = 21
        Caption = 'Customer'
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 640
        Top = 70
        Caption = 'Invoice Type'
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 11
        Top = 69
        Caption = 'Remarks'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 640
        Top = 129
        Caption = 'Invoice Amt'
        Transparent = True
      end
      object TourCodeEdit: TcxDBTextEdit
        Left = 80
        Top = 43
        DataBinding.DataField = 'MasterCode'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 280
        Top = 127
        DataBinding.DataField = 'taxpercentage'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 9
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 504
        Top = 19
        DataBinding.DataField = 'invoicedate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 0
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 504
        Top = 43
        DataBinding.DataField = 'currencies_id'
        DataBinding.DataSource = MasterDS
        Properties.KeyFieldNames = 'currencies_id'
        Properties.ListColumns = <
          item
            FieldName = 'currency'
          end>
        Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        Style.Color = 16247513
        TabOrder = 4
        Width = 121
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 505
        Top = 127
        DataBinding.DataField = 'taxamount'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 10
        Width = 121
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 720
        Top = 68
        DataBinding.DataField = 'invoicetypes_id'
        DataBinding.DataSource = MasterDS
        Properties.KeyFieldNames = 'InvoiceTypes_id'
        Properties.ListColumns = <
          item
            FieldName = 'Type'
          end>
        Properties.ListSource = BackOfficeDataModule.InvoiceTypeDS
        Style.Color = 16247513
        TabOrder = 7
        Width = 145
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 640
        Top = 43
        Caption = 'FIT'
        DataBinding.DataField = 'fit'
        DataBinding.DataSource = MasterDS
        TabOrder = 5
        Transparent = True
        Width = 43
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 80
        Top = 127
        DataBinding.DataField = 'taxes_id'
        DataBinding.DataSource = MasterDS
        Properties.KeyFieldNames = 'taxes_id'
        Properties.ListColumns = <
          item
            FieldName = 'tax'
          end>
        Properties.ListSource = BackOfficeDataModule.TaxeDS
        Style.Color = 16247513
        TabOrder = 8
        Width = 118
      end
      object TourDateEdit: TcxDBDateEdit
        Left = 280
        Top = 43
        DataBinding.DataField = 'MasterDepartureDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 3
        Width = 121
      end
      object cxDBMemo1: TcxDBMemo
        Left = 80
        Top = 67
        DataBinding.DataField = 'note'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 6
        Height = 58
        Width = 547
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 720
        Top = 19
        DataBinding.DataField = 'addressbook_id'
        DataBinding.DataSource = MasterDS
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            MinWidth = 200
            FieldName = 'Organisation'
          end
          item
            MinWidth = 100
            FieldName = 'City'
          end>
        Properties.ListSource = CustomerDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 257
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 721
        Top = 127
        DataBinding.DataField = 'TotalInvoiceAmount'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 11
        Width = 121
      end
    end
  end
  inherited Panel2: TPanel
    Width = 989
    object cxDBNavigator1: TcxDBNavigator
      Left = 616
      Top = 4
      Width = 240
      Height = 29
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDS
      LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxSearchGB: TcxRadioGroup
      Left = 9
      Top = 1
      Caption = 'Search'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Invoice No.'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 38
      Width = 128
    end
    object cxSearchEdit: TcxTextEdit
      Left = 146
      Top = 15
      Style.Color = 16247513
      TabOrder = 2
      OnKeyPress = cxSearchEditKeyPress
      Width = 147
    end
    object cxButton1: TcxButton
      Left = 320
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 3
      DropDownMenu = ReportPopup
      Kind = cxbkDropDown
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 153
    Width = 989
    Height = 363
    Align = alClient
    TabOrder = 2
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 361
      Width = 987
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 18
        Width = 981
        Height = 340
        ActivePage = InvoiceTab
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 334
        ClientRectLeft = 3
        ClientRectRight = 975
        ClientRectTop = 26
        object InvoiceTab: TcxTabSheet
          Caption = 'Invoice'
          ImageIndex = 0
          object InvoiceGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 972
            Height = 308
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object InvoiceGridDBTableView1: TcxGridDBTableView
              OnDblClick = InvoiceGridDBTableView1DblClick
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
              DataController.DataSource = Detail1DS
              DataController.KeyFieldNames = 'invoicedetails_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
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
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = InvoiceGridDBTableView1detailsPropertiesButtonClick
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
                Properties.ListSource = BackOfficeDataModule.RoomSizeDS
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
                Width = 101
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
                SortIndex = 0
                SortOrder = soAscending
                Width = 68
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
            Width = 972
            Height = 308
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
              DataController.KeyFieldNames = 'Ledgers_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
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
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 516
    Width = 989
    Height = 50
    Align = alBottom
    TabOrder = 3
    object cxDisplayBalanceGB: TcxGroupBox
      Left = 24
      Top = 1
      TabOrder = 0
      Visible = False
      Height = 42
      Width = 537
      object DBText3: TDBText
        Left = 72
        Top = 22
        Width = 113
        Height = 17
        DataField = 'TotalInvoiceAmount'
        DataSource = MasterDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 232
        Top = 21
        Width = 105
        Height = 17
        DataField = 'PaidAmount'
        DataSource = MasterDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText5: TDBText
        Left = 384
        Top = 21
        Width = 121
        Height = 17
        DataField = 'Diff'
        DataSource = MasterDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 20
        Caption = 'Invoiced'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 192
        Top = 20
        Caption = 'Paid'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 352
        Top = 20
        Caption = 'Diff'
        Transparent = True
      end
    end
    object cxChkDisplayBalance: TcxCheckBox
      Left = 616
      Top = 16
      Caption = 'Display Balance'
      TabOrder = 1
      OnClick = cxChkDisplayBalanceClick
      Width = 121
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'invoices'
    CommandType = ctTable
    Left = 96
    Top = 72
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 72
  end
  inherited MasterDS: TDataSource
    Left = 128
    Top = 72
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'InvoiceNo'
    AfterInsert = MasterCdsAfterInsert
    OnCalcFields = MasterCdsCalcFields
    Left = 144
    Top = 80
    object MasterCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsinvoiceno: TIntegerField
      FieldName = 'invoiceno'
    end
    object MasterCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object MasterCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object MasterCdsinvoicedate: TSQLTimeStampField
      FieldName = 'invoicedate'
    end
    object MasterCdsnote: TMemoField
      FieldName = 'note'
      BlobType = ftMemo
    end
    object MasterCdscredit: TIntegerField
      FieldName = 'credit'
    end
    object MasterCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object MasterCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object MasterCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object MasterCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object MasterCdstaxamount: TBCDField
      FieldName = 'taxamount'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsinvoicetypes_id: TIntegerField
      FieldName = 'invoicetypes_id'
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object MasterCdsexchangerate: TBCDField
      FieldName = 'exchangerate'
      Precision = 10
    end
    object MasterCdsyears_id: TIntegerField
      FieldName = 'years_id'
    end
    object MasterCdsmonths_id: TIntegerField
      FieldName = 'months_id'
    end
    object MasterCdstl_type: TIntegerField
      FieldName = 'tl_type'
    end
    object MasterCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 5
    end
    object MasterCdsMasterDepartureDate: TSQLTimeStampField
      FieldName = 'MasterDepartureDate'
    end
    object MasterCdsTotalInvoiceAmount: TFMTBCDField
      FieldName = 'TotalInvoiceAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCdsPaidAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PaidAmount'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsDiff: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diff'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdstaxpercentage: TBCDField
      FieldName = 'taxpercentage'
      DisplayFormat = '#,##0.00%'
      Precision = 10
      Size = 2
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'invoicedetails'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'invoices_id'
        ParamType = ptInput
        Value = 1975
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 248
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 248
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 40
    Top = 248
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'invoices_id;ItemNo;BookingRef'
    MasterFields = 'invoices_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    Left = 56
    Top = 248
    object Detail1Cdsproducts_id: TIntegerField
      FieldName = 'products_id'
    end
    object Detail1Cdsdetails: TStringField
      FieldName = 'details'
      Size = 250
    end
    object Detail1Cdsunitprice: TBCDField
      FieldName = 'unitprice'
      OnChange = Detail1CdsunitpriceChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsquantity: TIntegerField
      FieldName = 'quantity'
      OnChange = Detail1CdsquantityChange
    end
    object Detail1Cdsamount: TBCDField
      FieldName = 'amount'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object Detail1Cdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object Detail1Cdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object Detail1Cdsitemno: TIntegerField
      FieldName = 'itemno'
    end
    object Detail1Cdsbookingref: TStringField
      FieldName = 'bookingref'
    end
    object Detail1Cdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object Detail1Cdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object Detail1Cdsnights: TIntegerField
      FieldName = 'nights'
      OnChange = Detail1CdsnightsChange
    end
    object Detail1Cdsinvoicedetails_id: TIntegerField
      FieldName = 'invoicedetails_id'
    end
    object Detail1Cdslocalpayment: TBCDField
      FieldName = 'localpayment'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsservicetaxperc: TBCDField
      FieldName = 'servicetaxperc'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsbookingsaccommodation_id: TIntegerField
      FieldName = 'bookingsaccommodation_id'
    end
  end
  object CustomerDsp: TDataSetProvider
    DataSet = CustomerSds
    Left = 801
    Top = 9
  end
  object CustomerCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CustomerDsp'
    Left = 824
    Top = 8
    object CustomerCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object CustomerCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object CustomerCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object CustomerCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CustomerCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object CustomerDS: TDataSource
    DataSet = CustomerCds
    Left = 841
    Top = 9
  end
  object CustomerSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_Addressbook(3,'#39#39') order by organisation, ci' +
      'ty'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 777
    Top = 9
  end
  object PopupMenu1: TPopupMenu
    Left = 235
    Top = 249
    object ShowDetails1: TMenuItem
      Caption = 'Show Details'
      OnClick = ShowDetails1Click
    end
  end
  object ReportPopup: TPopupMenu
    Left = 344
    Top = 552
    object BoatInvoice1: TMenuItem
      Caption = 'Boat Invoice'
      OnClick = BoatInvoice1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object InvoicesDue1: TMenuItem
      Caption = 'Invoices Issued'
      OnClick = InvoicesDue1Click
    end
    object InvoicesDue2: TMenuItem
      Caption = 'Invoices Due'
      OnClick = InvoicesDue2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ourInvoiceExcel1: TMenuItem
      Caption = 'Manual Tour Invoice (Excel) - Per Invoice'
      OnClick = ourInvoiceExcel1Click
    end
    object ManualTourInvoiceExcelPerLine1: TMenuItem
      Caption = 'Manual Tour Invoice (Excel) - Per Line'
      OnClick = ManualTourInvoiceExcelPerLine1Click
    end
  end
  object PaymentDS: TDataSource
    DataSet = PaymentCds
    Left = 622
    Top = 256
  end
  object PaymentCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'InvoiceNo;YearRef;Divisions_id;Currencies_id'
    MasterFields = 'invoiceno;yearref;divisions_id;currencies_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'PaymentDsp'
    Left = 632
    Top = 256
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
    object PaymentCdsInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object PaymentCdsYearRef: TIntegerField
      FieldName = 'YearRef'
    end
    object PaymentCdsDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object PaymentCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object PaymentCdsLedgers_id: TIntegerField
      FieldName = 'Ledgers_id'
    end
  end
  object PaymentDsp: TDataSetProvider
    DataSet = PaymentSds
    Left = 648
    Top = 256
  end
  object PaymentSds: TSQLDataSet
    CommandText = 
      'SELECT M.transactiondate, M.cashvoucherno, '#13#10'CAST('#13#10' (CASE WHEN ' +
      'D.Currencies_id<>13'#13#10' THEN COALESCE((COALESCE(D.ForexCredit, 0) ' +
      '- COALESCE(D.ForexDebit ,0)), 0)'#13#10' ELSE COALESCE((COALESCE(D.Cre' +
      'dit, 0) - COALESCE(D.Debit, 0)), 0)'#13#10' END) as numeric) as Db,'#13#10' ' +
      ' D.Details, D.InvoiceNo, D.YearRef, D.Divisions_id, D.Currencies' +
      '_id, D.Ledgers_id'#13#10' FROM'#13#10'  Accounts As M  LEFT JOIN Ledgers As ' +
      'D ON '#13#10'  M.accounts_id = D.accounts_id '#13#10'WHERE '#13#10'  D.InvoiceNo =' +
      ' :InvoiceNo AND'#13#10'  D.InvoiceNo IS NOT NULL AND'#13#10'  D.YearRef = :Y' +
      'earRef AND'#13#10'  D.Divisions_id = :Divisions_id AND '#13#10'  D.Currencie' +
      's_id = :Currencies_id'#13#10'ORDER BY M.TransactionDate'#13#10
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'InvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'YearRef'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Divisions_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Currencies_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 666
    Top = 255
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 160
    Top = 184
  end
end
