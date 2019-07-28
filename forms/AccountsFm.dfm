inherited AccountsForm: TAccountsForm
  Left = 113
  Top = 7
  Width = 1032
  Height = 746
  Caption = 'AccountsForm'
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1024
    Height = 23
    object Label12: TLabel
      Left = 464
      Top = 6
      Width = 5
      Height = 13
    end
    object Titlelabel: TLabel
      Left = 456
      Top = 5
      Width = 62
      Height = 13
      Alignment = taCenter
      Caption = 'Goa Office'
      Color = 13303807
      ParentColor = False
    end
    object cxButton1: TcxButton
      Left = 7
      Top = 2
      Width = 75
      Height = 19
      Caption = '&Reports'
      TabOrder = 0
      DropDownMenu = ReportsPopup
      Kind = cxbkDropDown
    end
    object cxButton2: TcxButton
      Left = 897
      Top = 2
      Width = 75
      Height = 19
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = FilterPopup
      Kind = cxbkDropDown
    end
  end
  inherited Panel2: TPanel
    Top = 671
    Width = 1024
    Color = 15451300
    object SearchLbl: TLabel
      Left = 671
      Top = 15
      Width = 90
      Height = 13
      Caption = 'Year Reference'
    end
    object KeyIdDbText: TDBText
      Left = 859
      Top = 15
      Width = 65
      Height = 17
      DataField = 'accounts_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object CloseBtn: TcxButton
      Left = 935
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxSearchGB: TcxRadioGroup
      Left = 9
      Top = 0
      Caption = 'Search'
      Properties.Columns = 6
      Properties.Items = <
        item
          Caption = 'ID'
        end
        item
          Caption = 'Cheque No'
        end
        item
          Caption = 'CV No.'
        end
        item
          Caption = 'JV No.'
        end
        item
          Caption = 'Draft No'
        end
        item
          Caption = 'E-TransNo'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 38
      Width = 528
    end
    object cxSearchEdit: TcxTextEdit
      Left = 552
      Top = 12
      Style.Color = 16247513
      TabOrder = 2
      OnKeyPress = cxSearchEditKeyPress
      Width = 111
    end
    object cxYearRefEdit: TcxTextEdit
      Left = 776
      Top = 12
      Style.Color = 16247513
      TabOrder = 3
      OnKeyPress = cxYearRefEditKeyPress
      Width = 71
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 23
    Width = 1024
    Height = 100
    Align = alTop
    Color = 15451300
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 7
      Width = 30
      Height = 13
      Caption = 'Party'
    end
    object Label2: TLabel
      Left = 666
      Top = 35
      Width = 129
      Height = 13
      Caption = 'Total Debits For TDS :'
    end
    object Label3: TLabel
      Left = 10
      Top = 32
      Width = 91
      Height = 13
      Caption = 'Cheque Number'
    end
    object Label4: TLabel
      Left = 248
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Draft Number'
    end
    object Label5: TLabel
      Left = 247
      Top = 58
      Width = 80
      Height = 13
      Caption = 'Cash Voucher'
    end
    object Label6: TLabel
      Left = 473
      Top = 9
      Width = 28
      Height = 13
      Caption = 'Date'
    end
    object Label7: TLabel
      Left = 472
      Top = 35
      Width = 75
      Height = 13
      Caption = 'Date Cleared'
    end
    object Label9: TLabel
      Left = 666
      Top = 9
      Width = 98
      Height = 13
      Caption = 'Year Reference :'
    end
    object DBText4: TDBText
      Left = 934
      Top = 63
      Width = 49
      Height = 17
      DataField = 'accounts_id'
      DataSource = MasterDS
    end
    object Label13: TLabel
      Left = 913
      Top = 64
      Width = 14
      Height = 13
      Caption = 'ID'
    end
    object Label14: TLabel
      Left = 10
      Top = 79
      Width = 87
      Height = 13
      Caption = 'E-Transact No.'
    end
    object CashEntry: TcxDBCheckBox
      Left = 101
      Top = 57
      Caption = 'Cash Entry'
      DataBinding.DataField = 'cashvoucher'
      DataBinding.DataSource = MasterDS
      TabOrder = 5
      Width = 95
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 104
      Top = 30
      DataBinding.DataField = 'chequeno'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 330
      Top = 30
      DataBinding.DataField = 'draftno'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 130
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 330
      Top = 55
      DataBinding.DataField = 'cashvoucherno'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 6
      Width = 130
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 810
      Top = 6
      DataBinding.DataField = 'yearref'
      DataBinding.DataSource = MasterDS
      Style.BorderStyle = ebsNone
      Style.Color = 15451300
      TabOrder = 7
      Width = 77
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 798
      Top = 31
      DataBinding.DataField = 'TotalDebitsTds'
      DataBinding.DataSource = MasterDS
      Style.BorderStyle = ebsNone
      Style.Color = 15451300
      TabOrder = 8
      Width = 89
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 104
      Top = 4
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 200
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = PartyDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 356
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 550
      Top = 4
      DataBinding.DataField = 'transactiondate'
      DataBinding.DataSource = MasterDS
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 1
      Width = 110
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 550
      Top = 30
      DataBinding.DataField = 'datecleared'
      DataBinding.DataSource = MasterDS
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 4
      Width = 110
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 104
      Top = 77
      DataBinding.DataField = 'InternetBankingNo'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 9
      Width = 121
    end
  end
  object GroupBox1: TcxGroupBox [3]
    Left = 0
    Top = 123
    Align = alClient
    Caption = 'Ledger'
    TabOrder = 3
    Height = 548
    Width = 1024
    object CustomMasterCxGrid: TcxGrid
      Left = 3
      Top = 48
      Width = 1018
      Height = 431
      Align = alClient
      TabOrder = 2
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        OnKeyPress = CustomMasterCxGridDBTableView1KeyPress
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'ledgers_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object CustomMasterCxGridDBTableView1accountheads_id: TcxGridDBColumn
          Caption = 'Account'
          DataBinding.FieldName = 'accountheads_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Accountheads_id'
          Properties.ListColumns = <
            item
              MinWidth = 100
              FieldName = 'accountheadsno'
            end
            item
              MinWidth = 200
              FieldName = 'description'
            end>
          Properties.ListSource = AccountHeadsDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 68
        end
        object CustomMasterCxGridDBTableView1DBColumn1: TcxGridDBColumn
          Caption = 'Account Head'
          DataBinding.FieldName = 'accountheads_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 450
          Properties.KeyFieldNames = 'accountheads_id'
          Properties.ListColumns = <
            item
              Caption = 'Description'
              MinWidth = 250
              Width = 250
              FieldName = 'description'
            end
            item
              Caption = 'Account Head'
              MinWidth = 50
              Width = 50
              FieldName = 'accountheadsno'
            end
            item
              Caption = 'Folio'
              MinWidth = 150
              Width = 150
              FieldName = 'FolioName'
            end>
          Properties.ListSource = AccountHeadsDS
          MinWidth = 80
          Options.Filtering = False
          Options.Grouping = False
          Width = 101
        end
        object CustomMasterCxGridDBTableView1yearref: TcxGridDBColumn
          Caption = 'Year'
          DataBinding.FieldName = 'yearref'
          Options.Filtering = False
          Options.Grouping = False
          Width = 43
        end
        object CustomMasterCxGridDBTableView1voucherno: TcxGridDBColumn
          Caption = 'Voucher'
          DataBinding.FieldName = 'voucherno'
          Options.Filtering = False
          Options.Grouping = False
          Width = 54
        end
        object CustomMasterCxGridDBTableView1billno: TcxGridDBColumn
          Caption = 'Bill No.'
          DataBinding.FieldName = 'billno'
          Options.Filtering = False
          Options.Grouping = False
          Width = 53
        end
        object CustomMasterCxGridDBTableView1divisions_id: TcxGridDBColumn
          Caption = 'Division'
          DataBinding.FieldName = 'divisions_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'Divisions_id'
          Properties.ListColumns = <
            item
              FieldName = 'Division'
            end>
          Properties.ListSource = BackOfficeDataModule.DivisionDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 62
        end
        object CustomMasterCxGridDBTableView1invoiceno: TcxGridDBColumn
          Caption = 'Invoice'
          DataBinding.FieldName = 'invoiceno'
          Options.Filtering = False
          Options.Grouping = False
          Width = 56
        end
        object CustomMasterCxGridDBTableView1details: TcxGridDBColumn
          Caption = 'Details'
          DataBinding.FieldName = 'details'
          Options.Filtering = False
          Options.Grouping = False
          Width = 151
        end
        object CustomMasterCxGridDBTableView1amountbilled: TcxGridDBColumn
          Caption = 'Billed'
          DataBinding.FieldName = 'amountbilled'
          Options.Filtering = False
          Options.Grouping = False
          Width = 69
        end
        object CustomMasterCxGridDBTableView1debit: TcxGridDBColumn
          Caption = 'Debit'
          DataBinding.FieldName = 'debit'
          Options.Filtering = False
          Options.Grouping = False
          Width = 67
        end
        object CustomMasterCxGridDBTableView1credit: TcxGridDBColumn
          Caption = 'Credit'
          DataBinding.FieldName = 'credit'
          Options.Filtering = False
          Options.Grouping = False
          Width = 62
        end
        object CustomMasterCxGridDBTableView1currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 150
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currencycode'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 60
        end
        object CustomMasterCxGridDBTableView1tds: TcxGridDBColumn
          Caption = 'TDS'
          DataBinding.FieldName = 'tds'
          Options.Filtering = False
          Options.Grouping = False
          Width = 51
        end
        object CustomMasterCxGridDBTableView1forexdebit: TcxGridDBColumn
          Caption = 'Forex Debit'
          DataBinding.FieldName = 'forexdebit'
          Options.Filtering = False
          Options.Grouping = False
          Width = 78
        end
        object CustomMasterCxGridDBTableView1forexcredit: TcxGridDBColumn
          Caption = 'Forex Credit'
          DataBinding.FieldName = 'forexcredit'
          Options.Filtering = False
          Options.Grouping = False
          Width = 77
        end
        object CustomMasterCxGridDBTableView1exchangerate: TcxGridDBColumn
          Caption = 'Exchange Rate'
          DataBinding.FieldName = 'exchangerate'
          Options.Filtering = False
          Options.Grouping = False
          Width = 98
        end
        object CustomMasterCxGridDBTableView1notes: TcxGridDBColumn
          Caption = 'Notes'
          DataBinding.FieldName = 'notes'
          Options.Filtering = False
          Options.Grouping = False
          Width = 125
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
    object Panel4: TPanel
      Left = 3
      Top = 18
      Width = 1018
      Height = 30
      Align = alTop
      TabOrder = 0
      object DBText1: TDBText
        Left = 288
        Top = 7
        Width = 209
        Height = 17
        DataField = 'AccountHead'
        DataSource = Detail1DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 568
        Top = 6
        Width = 209
        Height = 17
        DataField = 'Folio'
        DataSource = Detail1DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ReceivablesOpt: TcxRadioButton
        Left = 127
        Top = 6
        Width = 98
        Height = 17
        Caption = 'Receivables'
        TabOrder = 1
        OnClick = ReceivablesOptClick
      end
      object PayablesOpt: TcxRadioButton
        Left = 10
        Top = 6
        Width = 75
        Height = 17
        Caption = 'Payables'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = PayablesOptClick
      end
    end
    object Panel5: TPanel
      Left = 3
      Top = 479
      Width = 1018
      Height = 66
      Align = alBottom
      TabOrder = 1
      object Label8: TLabel
        Left = 10
        Top = 42
        Width = 55
        Height = 13
        Caption = 'Balance :'
      end
      object Label10: TLabel
        Left = 218
        Top = 42
        Width = 90
        Height = 13
        Caption = 'Forex Balance :'
      end
      object Label11: TLabel
        Left = 439
        Top = 42
        Width = 34
        Height = 13
        Caption = 'TDS :'
      end
      object cxDBMemo1: TcxDBMemo
        Left = 1
        Top = 1
        Align = alTop
        DataBinding.DataField = 'comments'
        DataBinding.DataSource = MasterDS
        TabOrder = 0
        Height = 37
        Width = 1016
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 69
        Top = 39
        DataBinding.DataField = 'Balance'
        DataBinding.DataSource = BalanceDS
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 1
        Width = 88
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 312
        Top = 39
        DataBinding.DataField = 'ForexBalance'
        DataBinding.DataSource = BalanceDS
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 2
        Width = 100
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 488
        Top = 39
        DataBinding.DataField = 'TotalTDS'
        DataBinding.DataSource = BalanceDS
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 3
        Width = 121
      end
    end
  end
  object cxDBNavigator1: TcxDBNavigator [4]
    Left = 472
    Top = 94
    Width = 286
    Height = 25
    Buttons.PriorPage.Enabled = False
    Buttons.PriorPage.Visible = False
    Buttons.NextPage.Enabled = False
    Buttons.NextPage.Visible = False
    DataSource = MasterDS
    LookAndFeel.NativeStyle = True
    TabOrder = 4
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'accounts'
    CommandType = ctTable
    Left = 240
    Top = 104
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 264
    Top = 104
  end
  inherited MasterDS: TDataSource
    Left = 280
    Top = 104
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    BeforeScroll = MasterCdsBeforeScroll
    OnCalcFields = MasterCdsCalcFields
    Left = 288
    Top = 104
    object MasterCdsaccounts_id: TIntegerField
      FieldName = 'accounts_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdstransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
    end
    object MasterCdschequeno: TIntegerField
      FieldName = 'chequeno'
    end
    object MasterCdsdatecleared: TSQLTimeStampField
      FieldName = 'datecleared'
    end
    object MasterCdsdraftno: TIntegerField
      FieldName = 'draftno'
    end
    object MasterCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object MasterCdscashvoucherno: TIntegerField
      FieldName = 'cashvoucherno'
    end
    object MasterCdscomments: TMemoField
      FieldName = 'comments'
      BlobType = ftMemo
    end
    object MasterCdscashvoucher: TBooleanField
      FieldName = 'cashvoucher'
    end
    object MasterCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
    object MasterCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object MasterCdsTotalDebitsTds: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalDebitsTds'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsOfficeName: TStringField
      FieldKind = fkLookup
      FieldName = 'OfficeName'
      LookupDataSet = BackOfficeDataModule.OfficeCds
      LookupKeyFields = 'offices_id'
      LookupResultField = 'offices'
      KeyFields = 'offices_id'
      Lookup = True
    end
    object MasterCdsInternetBankingNo: TStringField
      FieldName = 'InternetBankingNo'
      Size = 30
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'ledgers'
    CommandType = ctTable
    DataSource = MasterDS
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 248
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 24
    Top = 248
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 40
    Top = 248
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    OnCalcFields = Detail1CdsCalcFields
    Left = 48
    Top = 248
    object Detail1Cdsledgers_id: TIntegerField
      FieldName = 'ledgers_id'
    end
    object Detail1Cdsaccounts_id: TIntegerField
      FieldName = 'accounts_id'
    end
    object Detail1Cdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object Detail1Cdsdetails: TStringField
      FieldName = 'details'
      Size = 200
    end
    object Detail1Cdsdebit: TBCDField
      FieldName = 'debit'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscredit: TBCDField
      FieldName = 'credit'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsforexdebit: TBCDField
      FieldName = 'forexdebit'
      OnChange = Detail1CdsforexdebitChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsforexcredit: TBCDField
      FieldName = 'forexcredit'
      OnChange = Detail1CdsforexcreditChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsexchangerate: TFMTBCDField
      FieldName = 'exchangerate'
      OnChange = Detail1CdsexchangerateChange
      Precision = 15
    end
    object Detail1Cdsbillno: TStringField
      FieldName = 'billno'
      Size = 50
    end
    object Detail1Cdsamountbilled: TBCDField
      FieldName = 'amountbilled'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsnotes: TBCDField
      FieldName = 'notes'
      Precision = 2
      Size = 0
    end
    object Detail1Cdstds: TBCDField
      FieldName = 'tds'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object Detail1Cdsinvoiceno: TIntegerField
      FieldName = 'invoiceno'
      OnChange = Detail1CdsinvoicenoChange
    end
    object Detail1Cdsvoucherno: TIntegerField
      FieldName = 'voucherno'
      OnChange = Detail1CdsvouchernoChange
    end
    object Detail1Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail1Cdsyearref: TIntegerField
      FieldName = 'yearref'
      OnChange = Detail1CdsyearrefChange
    end
    object Detail1Cdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object Detail1CdsFolio: TStringField
      FieldKind = fkCalculated
      FieldName = 'Folio'
      Size = 100
      Calculated = True
    end
    object Detail1CdsAccountHead: TStringField
      FieldKind = fkCalculated
      FieldName = 'AccountHead'
      Size = 100
      Calculated = True
    end
  end
  object PartySds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_Addressbook(3,'#39#39') order by organisation, ci' +
      'ty'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 265
    Top = 41
  end
  object PartyDsp: TDataSetProvider
    DataSet = PartySds
    Left = 289
    Top = 41
  end
  object PartyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PartyDsp'
    Left = 312
    Top = 40
    object PartyCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PartyCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object PartyCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object PartyCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object PartyCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object PartyDS: TDataSource
    DataSet = PartyCds
    Left = 329
    Top = 41
  end
  object AccountHeadsDS: TDataSource
    DataSet = AccountHeadsCds
    Left = 64
    Top = 296
  end
  object BalanceSds: TSQLDataSet
    CommandText = 
      'SELECT Accounts_id, SUM(Debit-Credit) As Balance,'#13#10'  SUM(ForexDe' +
      'bit-ForexCredit) As ForexBalance,'#13#10'  SUM(TDS) AS TotalTDS '#13#10'FROM' +
      ' Ledgers '#13#10'WHERE Accounts_id = :Accounts_id'#13#10'GROUP BY Accounts_i' +
      'd'#13#10#13#10
    DataSource = Detail1DS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'accounts_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 336
  end
  object BalanceDsp: TDataSetProvider
    DataSet = BalanceSds
    Left = 32
    Top = 336
  end
  object BalanceCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = Detail1DS
    PacketRecords = 0
    Params = <>
    ProviderName = 'BalanceDsp'
    Left = 48
    Top = 336
    object BalanceCdsBalance: TFMTBCDField
      FieldName = 'Balance'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object BalanceCdsForexBalance: TFMTBCDField
      FieldName = 'ForexBalance'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object BalanceCdsTotalTDS: TFMTBCDField
      FieldName = 'TotalTDS'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object BalanceCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
  end
  object BalanceDS: TDataSource
    DataSet = BalanceCds
    Left = 64
    Top = 336
  end
  object AccountHeadsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccountHeadsDsp'
    Left = 48
    Top = 296
    object AccountHeadsCdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object AccountHeadsCdsaccountheadsno: TIntegerField
      FieldName = 'accountheadsno'
    end
    object AccountHeadsCdsdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object AccountHeadsCdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object AccountHeadsCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object AccountHeadsCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AccountHeadsCdsactive: TBooleanField
      FieldName = 'active'
    end
    object AccountHeadsCdsFolioName: TStringField
      FieldKind = fkLookup
      FieldName = 'FolioName'
      LookupDataSet = FolioCds
      LookupKeyFields = 'folios_id'
      LookupResultField = 'folio'
      KeyFields = 'folios_id'
      Size = 50
      Lookup = True
    end
  end
  object AccountHeadsSds: TSQLDataSet
    CommandText = 'SELECT * FROm AccountHeads ORDER BY AccountHeadsNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 296
  end
  object AccountHeadsDsp: TDataSetProvider
    DataSet = AccountHeadsSds
    Left = 24
    Top = 296
  end
  object ReportsPopup: TPopupMenu
    Left = 85
    object PaymentAdvice1: TMenuItem
      Caption = 'Payment Advice'
      OnClick = PaymentAdvice1Click
    end
    object CreditAdvice1: TMenuItem
      Caption = 'Credit Advice'
      OnClick = CreditAdvice1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CashBook1: TMenuItem
      Caption = 'Cash Book'
      OnClick = CashBook1Click
    end
    object BankBook1: TMenuItem
      Caption = 'Bank Book'
      OnClick = BankBook1Click
    end
    object BankBookForex1: TMenuItem
      Caption = 'Bank Book(Forex)'
      OnClick = BankBookForex1Click
    end
    object JournalBook1: TMenuItem
      Caption = 'Journal Book'
      OnClick = JournalBook1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Creditors1: TMenuItem
      Caption = 'Creditors'
      object All1: TMenuItem
        Caption = 'All'
        OnClick = All1Click
      end
      object ByParty1: TMenuItem
        Caption = 'By Party'
        OnClick = ByParty1Click
      end
      object Summary1: TMenuItem
        Caption = 'Summary'
        OnClick = Summary1Click
      end
    end
    object SundryCreditors1: TMenuItem
      Caption = 'Sundry Creditors'
      object All2: TMenuItem
        Caption = 'All'
        OnClick = All2Click
      end
      object ByParty2: TMenuItem
        Caption = 'By Party'
        OnClick = ByParty2Click
      end
      object Summary2: TMenuItem
        Caption = 'Summary'
        OnClick = Summary2Click
      end
    end
    object GenerateSundryCreditors1: TMenuItem
      Caption = 'Generate Sundry Creditors'
      OnClick = GenerateSundryCreditors1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ransactions1: TMenuItem
      Caption = 'Transactions'
      object All3: TMenuItem
        Caption = 'All'
        OnClick = All3Click
      end
      object SingleAccount1: TMenuItem
        Caption = 'Single Account'
        OnClick = SingleAccount1Click
      end
    end
    object CashVoucher1: TMenuItem
      Caption = 'Cash Voucher'
      OnClick = CashVoucher1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object rialBalance1: TMenuItem
      Caption = 'Trial Balance'
      object All4: TMenuItem
        Caption = 'All'
        OnClick = All4Click
      end
      object SelectedAccount1: TMenuItem
        Caption = 'Selected Account'
        OnClick = SelectedAccount1Click
      end
    end
    object BalanceSheet1: TMenuItem
      Caption = 'BalanceSheet'
      OnClick = BalanceSheet1Click
    end
    object BalanceSheetProvisional1: TMenuItem
      Caption = 'Balance Sheet (Provisional)'
      OnClick = BalanceSheetProvisional1Click
    end
    object ProfitLoss1: TMenuItem
      Caption = 'Profit && Loss'
      OnClick = ProfitLoss1Click
    end
    object ProfitLossProvisional1: TMenuItem
      Caption = 'Profit && Loss (Provisional)'
      OnClick = ProfitLossProvisional1Click
    end
    object ProfitLossProvisional21: TMenuItem
      Caption = 'Profit && Loss (Provisional 2)'
      OnClick = ProfitLossProvisional21Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Payments1: TMenuItem
      Caption = 'Payments'
      object All5: TMenuItem
        Caption = 'All'
        OnClick = All5Click
      end
      object ByParty3: TMenuItem
        Caption = 'By Party'
        OnClick = ByParty3Click
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object FORM10CCAE1: TMenuItem
      Caption = 'FORM 10CCAE'
      OnClick = FORM10CCAE1Click
    end
    object BalanceCheck1: TMenuItem
      Caption = 'Balance Check'
      OnClick = BalanceCheck1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object ForexReport1: TMenuItem
      Caption = 'Forex Report'
      OnClick = ForexReport1Click
    end
  end
  object FilterPopup: TPopupMenu
    Left = 920
    Top = 23
    object ByDateRange1: TMenuItem
      Caption = 'Filter By Date Range'
      OnClick = ByDateRange1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object RenumberfromthisVoucher1: TMenuItem
      Caption = 'Renumber from this Voucher'
      OnClick = RenumberfromthisVoucher1Click
    end
  end
  object FolioSds: TSQLDataSet
    CommandText = 'select * from folios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 200
    Top = 298
  end
  object FolioDsp: TDataSetProvider
    DataSet = FolioSds
    Left = 232
    Top = 298
  end
  object FolioCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FolioDsp'
    Left = 264
    Top = 298
    object FolioCdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object FolioCdsfolio: TStringField
      FieldName = 'folio'
      Size = 50
    end
    object FolioCdsfoliocategories_id: TIntegerField
      FieldName = 'foliocategories_id'
    end
  end
  object FolioDS: TDataSource
    DataSet = FolioCds
    Left = 296
    Top = 298
  end
end
