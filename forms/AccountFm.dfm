inherited AccountForm: TAccountForm
  Left = 65
  Top = 39
  Width = 1276
  Height = 703
  Caption = 'Accounts'
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 171
    Width = 1260
  end
  inherited Panel1: TPanel
    Width = 1260
  end
  inherited Panel2: TPanel
    Top = 624
    Width = 1260
    inherited cxButtonUtilities: TcxButton
      Visible = True
      DropDownMenu = ReportsPopup
    end
    inherited cxButtonClose: TcxButton
      Left = 1173
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 1101
      DataBinding.DataField = 'ledgers_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 1100
      DataBinding.DataField = 'accounts_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Left = 104
    end
    object cx_IdOpt: TcxRadioButton
      Left = 410
      Top = 11
      Width = 39
      Height = 17
      Caption = 'ID'
      Checked = True
      TabOrder = 5
      TabStop = True
      OnClick = PayablesOptClick
    end
    object cx_ChqNoOpt: TcxRadioButton
      Left = 449
      Top = 11
      Width = 72
      Height = 17
      Caption = 'Chq No'
      TabOrder = 6
      OnClick = PayablesOptClick
    end
    object cx_CvOpt: TcxRadioButton
      Left = 518
      Top = 11
      Width = 59
      Height = 17
      Caption = 'CV No'
      TabOrder = 7
      OnClick = PayablesOptClick
    end
    object cx_JvOpt: TcxRadioButton
      Left = 578
      Top = 11
      Width = 59
      Height = 17
      Caption = 'JV No'
      TabOrder = 8
      OnClick = PayablesOptClick
    end
    object cx_DraftNoOpt: TcxRadioButton
      Left = 642
      Top = 11
      Width = 74
      Height = 17
      Caption = 'Draft No'
      TabOrder = 9
      OnClick = PayablesOptClick
    end
    object cx_ETrsOpt: TcxRadioButton
      Left = 714
      Top = 11
      Width = 74
      Height = 17
      Caption = 'E Trs No'
      TabOrder = 10
      OnClick = PayablesOptClick
    end
    object cxSearchEdit: TcxTextEdit
      Left = 792
      Top = 10
      TabOrder = 11
      OnKeyPress = cxSearchEditKeyPress
      Width = 61
    end
    object cxYearRefEdit: TcxTextEdit
      Left = 944
      Top = 10
      TabOrder = 12
      OnKeyPress = cxYearRefEditKeyPress
      Width = 61
    end
    object cxLabel1: TcxLabel
      Left = 887
      Top = 11
      Caption = 'Year Ref'
    end
  end
  inherited Panel3: TPanel
    Width = 1260
    Height = 130
    inherited cxPageControl1: TcxPageControl
      Width = 1258
      Height = 128
      ClientRectBottom = 122
      ClientRectRight = 1252
      inherited cxTabSheet1: TcxTabSheet
        object Label1: TLabel
          Left = 10
          Top = 7
          Width = 30
          Height = 13
          Caption = 'Party'
          Transparent = True
        end
        object Label6: TLabel
          Left = 473
          Top = 7
          Width = 28
          Height = 13
          Caption = 'Date'
          Transparent = True
        end
        object Label9: TLabel
          Left = 666
          Top = 7
          Width = 98
          Height = 13
          Caption = 'Year Reference :'
          Transparent = True
        end
        object Label3: TLabel
          Left = 10
          Top = 30
          Width = 91
          Height = 13
          Caption = 'Cheque Number'
          Transparent = True
        end
        object Label4: TLabel
          Left = 248
          Top = 30
          Width = 76
          Height = 13
          Caption = 'Draft Number'
          Transparent = True
        end
        object Label7: TLabel
          Left = 472
          Top = 30
          Width = 75
          Height = 13
          Caption = 'Date Cleared'
          Transparent = True
        end
        object Label2: TLabel
          Left = 666
          Top = 30
          Width = 129
          Height = 13
          Caption = 'Total Debits For TDS :'
          Transparent = True
        end
        object Label5: TLabel
          Left = 247
          Top = 53
          Width = 80
          Height = 13
          Caption = 'Cash Voucher'
          Transparent = True
        end
        object Label14: TLabel
          Left = 10
          Top = 76
          Width = 87
          Height = 13
          Caption = 'E-Transact No.'
          Transparent = True
        end
        object Label13: TLabel
          Left = 913
          Top = 76
          Width = 14
          Height = 13
          Caption = 'ID'
          Transparent = True
        end
        object DBText4: TDBText
          Left = 934
          Top = 76
          Width = 49
          Height = 17
          DataField = 'accounts_id'
          DataSource = MasterDs
          Transparent = True
        end
        object Label12: TLabel
          Left = 247
          Top = 76
          Width = 49
          Height = 13
          Caption = 'FIRC No'
          Transparent = True
        end
        object Label15: TLabel
          Left = 472
          Top = 76
          Width = 60
          Height = 13
          Caption = 'FIRC Date'
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 104
          Top = 5
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'addressbook_id'
          Properties.ListColumns = <
            item
              MinWidth = 300
              FieldName = 'Organisation'
            end
            item
              MinWidth = 100
              FieldName = 'City'
            end>
          Properties.ListSource = PartyDS
          Style.Color = clCream
          TabOrder = 0
          Width = 356
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 550
          Top = 5
          DataBinding.DataField = 'transactiondate'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = clCream
          TabOrder = 1
          Width = 110
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 810
          Top = 5
          DataBinding.DataField = 'yearref'
          DataBinding.DataSource = MasterDs
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          TabOrder = 2
          Width = 77
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 104
          Top = 28
          DataBinding.DataField = 'chequeno'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 330
          Top = 28
          DataBinding.DataField = 'draftno'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 4
          Width = 130
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 550
          Top = 28
          DataBinding.DataField = 'datecleared'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = clCream
          TabOrder = 5
          Width = 110
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 798
          Top = 28
          DataBinding.DataField = 'TotalDebitsTds'
          DataBinding.DataSource = MasterDs
          Style.BorderStyle = ebsNone
          Style.Color = clBtnFace
          TabOrder = 6
          Width = 89
        end
        object CashEntry: TcxDBCheckBox
          Left = 101
          Top = 51
          Caption = 'Cash Entry'
          DataBinding.DataField = 'cashvoucher'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Transparent = True
          Width = 95
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 330
          Top = 51
          DataBinding.DataField = 'cashvoucherno'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 8
          Width = 130
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 104
          Top = 74
          DataBinding.DataField = 'InternetBankingNo'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 9
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 330
          Top = 74
          DataBinding.DataField = 'FIRC_no'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 10
          Width = 130
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 550
          Top = 74
          DataBinding.DataField = 'FIRC_date'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = clCream
          TabOrder = 11
          Width = 110
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 176
    Width = 1260
    Height = 448
    inherited cxPageControl2: TcxPageControl
      Width = 1258
      Height = 446
      ClientRectBottom = 440
      ClientRectRight = 1252
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Top = 27
          Width = 1249
          Height = 327
          PopupMenu = PopupMenu1
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            OnDblClick = cxGrid1DBBandedTableView1DblClick
            OnKeyPress = cxGrid1DBBandedTableView1KeyPress
            DataController.KeyFieldNames = 'ledgers_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1amountbilled
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1debit
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1credit
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1tds
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1forexdebit
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1forexcredit
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1Cenvat
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1CessCenvat
              end>
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsView.Footer = True
            object cxGrid1DBBandedTableView1ledgers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ledgers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1accounts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'accounts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1accountheads_id: TcxGridDBBandedColumn
              Caption = 'Account Head'
              DataBinding.FieldName = 'accountheads_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 420
              Properties.KeyFieldNames = 'AccountHeads_id'
              Properties.ListColumns = <
                item
                  MinWidth = 120
                  FieldName = 'AccountHeadsNo'
                end
                item
                  MinWidth = 300
                  FieldName = 'Description'
                end>
              Properties.ListSource = AccountHeadsDS
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
              Caption = 'Account'
              DataBinding.FieldName = 'accountheads_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 570
              Properties.KeyFieldNames = 'AccountHeads_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Description'
                end
                item
                  FieldName = 'AccountHeadsNo'
                end
                item
                  FieldName = 'Folio'
                end>
              Properties.ListSource = AccountHeadsDS
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1yearref: TcxGridDBBandedColumn
              Caption = 'Year'
              DataBinding.FieldName = 'yearref'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1voucherno: TcxGridDBBandedColumn
              Caption = 'Voucher No'
              DataBinding.FieldName = 'voucherno'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1billno: TcxGridDBBandedColumn
              Caption = 'Bill No'
              DataBinding.FieldName = 'billno'
              Width = 82
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BillDate: TcxGridDBBandedColumn
              Caption = 'Bill Date'
              DataBinding.FieldName = 'BillDate'
              Width = 74
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1divisions_id: TcxGridDBBandedColumn
              Caption = 'Division'
              DataBinding.FieldName = 'divisions_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'divisions_id'
              Properties.ListColumns = <
                item
                  FieldName = 'division'
                end>
              Properties.ListSource = DivDs
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1InternetPaymentNo: TcxGridDBBandedColumn
              Caption = 'E Trans No'
              DataBinding.FieldName = 'InternetPaymentNo'
              Visible = False
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ForMonths_id: TcxGridDBBandedColumn
              Caption = 'For Month'
              DataBinding.FieldName = 'ForMonths_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Months_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MonthShortName'
                end>
              Properties.ListSource = MonthDs
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ForYear: TcxGridDBBandedColumn
              Caption = 'For Year'
              DataBinding.FieldName = 'ForYear'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1invoiceTypes_id: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'invoiceTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 250
              Properties.KeyFieldNames = 'invoicetypes_id'
              Properties.ListColumns = <
                item
                  Width = 80
                  FieldName = 'invoicetypes_id'
                end
                item
                  Width = 150
                  FieldName = 'type'
                end>
              Properties.ListSource = InvoiceTypesDs
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1invoiceno: TcxGridDBBandedColumn
              Caption = 'Invoice No'
              DataBinding.FieldName = 'invoiceno'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1details: TcxGridDBBandedColumn
              Caption = 'Details'
              DataBinding.FieldName = 'details'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1amountbilled: TcxGridDBBandedColumn
              Caption = 'Billed'
              DataBinding.FieldName = 'amountbilled'
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1debit: TcxGridDBBandedColumn
              Caption = 'Debit'
              DataBinding.FieldName = 'debit'
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1credit: TcxGridDBBandedColumn
              Caption = 'Credit'
              DataBinding.FieldName = 'credit'
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 230
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  MinWidth = 80
                  FieldName = 'CurrencyCode'
                end
                item
                  MinWidth = 150
                  FieldName = 'Currency'
                end>
              Properties.ListSource = CurrencyDs
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1C_Gst: TcxGridDBBandedColumn
              Caption = 'C GST'
              DataBinding.FieldName = 'C_Gst'
              Visible = False
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1S_Gst: TcxGridDBBandedColumn
              Caption = 'S GST'
              DataBinding.FieldName = 'S_Gst'
              Visible = False
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1I_Gst: TcxGridDBBandedColumn
              Caption = 'I GST'
              DataBinding.FieldName = 'I_Gst'
              Visible = False
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cenvat: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cenvat'
              Visible = False
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CessCenvat: TcxGridDBBandedColumn
              Caption = 'Cess Cenvat'
              DataBinding.FieldName = 'CessCenvat'
              Visible = False
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tds: TcxGridDBBandedColumn
              Caption = 'Tds'
              DataBinding.FieldName = 'tds'
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1forexdebit: TcxGridDBBandedColumn
              Caption = 'Forex Debit'
              DataBinding.FieldName = 'forexdebit'
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1forexcredit: TcxGridDBBandedColumn
              Caption = 'Forex Credit'
              DataBinding.FieldName = 'forexcredit'
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1exchangerate: TcxGridDBBandedColumn
              Caption = 'Exch Rate'
              DataBinding.FieldName = 'exchangerate'
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ExchRateRecd: TcxGridDBBandedColumn
              Caption = 'Recd Exch'
              DataBinding.FieldName = 'ExchRateRecd'
              Width = 73
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1notes: TcxGridDBBandedColumn
              Caption = 'Notes'
              DataBinding.FieldName = 'notes'
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1offices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'offices_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1249
          Height = 27
          Align = alTop
          TabOrder = 1
          object DBText2: TDBText
            Left = 832
            Top = 7
            Width = 345
            Height = 17
            DataField = 'Folio'
            DataSource = DetailDs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBText1: TDBText
            Left = 256
            Top = 7
            Width = 345
            Height = 17
            DataField = 'AccountHead'
            DataSource = DetailDs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
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
            Transparent = True
          end
          object ReceivablesOpt: TcxRadioButton
            Left = 127
            Top = 6
            Width = 98
            Height = 17
            Caption = 'Receivables'
            TabOrder = 1
            OnClick = ReceivablesOptClick
            Transparent = True
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 354
          Width = 1249
          Height = 60
          Align = alBottom
          TabOrder = 2
          object Label8: TLabel
            Left = 10
            Top = 42
            Width = 55
            Height = 13
            Caption = 'Balance :'
            Transparent = True
          end
          object Label10: TLabel
            Left = 218
            Top = 42
            Width = 90
            Height = 13
            Caption = 'Forex Balance :'
            Transparent = True
          end
          object Label11: TLabel
            Left = 439
            Top = 42
            Width = 34
            Height = 13
            Caption = 'TDS :'
            Transparent = True
          end
          object cxDBMemo1: TcxDBMemo
            Left = 1
            Top = 1
            Align = alTop
            DataBinding.DataField = 'comments'
            DataBinding.DataSource = MasterDs
            TabOrder = 0
            Height = 37
            Width = 1247
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 69
            Top = 40
            DataBinding.DataField = 'Balance'
            DataBinding.DataSource = BalanceDS
            Style.BorderStyle = ebsNone
            Style.Color = clBtnFace
            TabOrder = 1
            Width = 88
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 312
            Top = 40
            DataBinding.DataField = 'ForexBalance'
            DataBinding.DataSource = BalanceDS
            Style.BorderStyle = ebsNone
            Style.Color = clBtnFace
            TabOrder = 2
            Width = 100
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 488
            Top = 40
            DataBinding.DataField = 'TotalTDS'
            DataBinding.DataSource = BalanceDS
            Style.BorderStyle = ebsNone
            Style.Color = clBtnFace
            TabOrder = 3
            Width = 121
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Accounts '#13#10'WHERE Companies_id = :Companies_id'#13#10'AND' +
      ' Offices_id = :Offices_id'#13#10'AND TransactionDate >= :FromDate'#13#10'AND' +
      ' TransactionDate <= :ToDate'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Companies_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Offices_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    BeforeScroll = MasterCdsBeforeScroll
    OnCalcFields = MasterCdsCalcFields
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
    object MasterCdsInternetBankingNo: TStringField
      FieldName = 'InternetBankingNo'
      Size = 30
    end
    object MasterCdsTotalDebitsTds: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalDebitsTds'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsFIRC_no: TStringField
      FieldName = 'FIRC_no'
    end
    object MasterCdsFIRC_date: TSQLTimeStampField
      FieldName = 'FIRC_date'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM Ledgers'#13#10'WHERE Accounts_id = :Accounts_id'
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'accounts_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = DetailCdsAfterInsert
    OnCalcFields = DetailCdsCalcFields
    object DetailCdsledgers_id: TIntegerField
      FieldName = 'ledgers_id'
    end
    object DetailCdsaccounts_id: TIntegerField
      FieldName = 'accounts_id'
    end
    object DetailCdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object DetailCdsdetails: TStringField
      FieldName = 'details'
      Size = 200
    end
    object DetailCdsCenvat: TFMTBCDField
      FieldName = 'Cenvat'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsdebit: TBCDField
      FieldName = 'debit'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdscredit: TBCDField
      FieldName = 'credit'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsforexdebit: TBCDField
      FieldName = 'forexdebit'
      OnChange = DetailCdsforexdebitChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsforexcredit: TBCDField
      FieldName = 'forexcredit'
      OnChange = DetailCdsforexcreditChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsexchangerate: TFMTBCDField
      FieldName = 'exchangerate'
      OnChange = DetailCdsexchangerateChange
      DisplayFormat = '#,##0.0000'
      Precision = 15
      Size = 4
    end
    object DetailCdsbillno: TStringField
      FieldName = 'billno'
      Size = 50
    end
    object DetailCdsamountbilled: TBCDField
      FieldName = 'amountbilled'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsnotes: TBCDField
      FieldName = 'notes'
      Precision = 2
      Size = 0
    end
    object DetailCdstds: TBCDField
      FieldName = 'tds'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object DetailCdsinvoiceno: TIntegerField
      FieldName = 'invoiceno'
      OnChange = DetailCdsinvoicenoChange
    end
    object DetailCdsvoucherno: TIntegerField
      FieldName = 'voucherno'
      OnChange = DetailCdsvouchernoChange
    end
    object DetailCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object DetailCdsyearref: TIntegerField
      FieldName = 'yearref'
      OnChange = DetailCdsyearrefChange
    end
    object DetailCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object DetailCdsAccountHead: TStringField
      FieldKind = fkCalculated
      FieldName = 'AccountHead'
      Size = 200
      Calculated = True
    end
    object DetailCdsFolio: TStringField
      FieldKind = fkCalculated
      FieldName = 'Folio'
      Size = 100
      Calculated = True
    end
    object DetailCdsCessCenvat: TFMTBCDField
      FieldName = 'CessCenvat'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsInternetPaymentNo: TStringField
      FieldName = 'InternetPaymentNo'
      Size = 30
    end
    object DetailCdsForMonths_id: TIntegerField
      FieldName = 'ForMonths_id'
    end
    object DetailCdsForYear: TIntegerField
      FieldName = 'ForYear'
    end
    object DetailCdsC_Gst: TFMTBCDField
      FieldName = 'C_Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsS_Gst: TFMTBCDField
      FieldName = 'S_Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsI_Gst: TFMTBCDField
      FieldName = 'I_Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsinvoiceTypes_id: TIntegerField
      FieldName = 'invoiceTypes_id'
    end
    object DetailCdsBillDate: TSQLTimeStampField
      FieldName = 'BillDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DetailCdsExchRateRecd: TFMTBCDField
      FieldName = 'ExchRateRecd'
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 4
    end
  end
  object DivSds: TSQLDataSet
    CommandText = 'SELECT * FROM Divisions WHERE Companies_id = :Companies_id'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'companies_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 40
    Top = 464
  end
  object DivDsp: TDataSetProvider
    DataSet = DivSds
    Left = 56
    Top = 464
  end
  object DivCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'companies_id'
    MasterFields = 'companies_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'DivDsp'
    Left = 80
    Top = 464
    object DivCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object DivCdsdivision: TStringField
      FieldName = 'division'
    end
    object DivCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object DivCdsdefaultdivision: TBooleanField
      FieldName = 'defaultdivision'
    end
  end
  object DivDs: TDataSource
    DataSet = DivCds
    Left = 96
    Top = 464
  end
  object PartySds: TSQLDataSet
    CommandText = 
      'SELECT * FROM dbo.fn_Addressbook(3,'#39#39') ORDER BY Organisation, Ci' +
      'ty'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 193
    Top = 73
  end
  object PartyDsp: TDataSetProvider
    DataSet = PartySds
    Left = 217
    Top = 73
  end
  object PartyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PartyDsp'
    Left = 240
    Top = 72
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
    Left = 257
    Top = 73
  end
  object BalanceSds: TSQLDataSet
    CommandText = 
      'SELECT Accounts_id, SUM(Debit-Credit) As Balance,'#13#10'  SUM(ForexDe' +
      'bit-ForexCredit) As ForexBalance,'#13#10'  SUM(TDS) AS TotalTDS '#13#10'FROM' +
      ' Ledgers '#13#10'WHERE Accounts_id = :Accounts_id'#13#10'GROUP BY Accounts_i' +
      'd'#13#10#13#10
    DataSource = DetailDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'accounts_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 40
    Top = 496
  end
  object BalanceDsp: TDataSetProvider
    DataSet = BalanceSds
    Left = 56
    Top = 496
  end
  object BalanceCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = DetailDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BalanceDsp'
    Left = 72
    Top = 496
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
    Left = 88
    Top = 496
  end
  object AccountHeadsSds: TSQLDataSet
    CommandText = 
      'SELECT AccountHeads_id, AccountHeadsNo, Description, folio'#13#10'FROM' +
      ' accountheads a'#13#10'     LEFT JOIN folios f ON a.folios_id = f.foli' +
      'os_id'#13#10'WHERE Companies_id = :Companies_id'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'companies_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 144
    Top = 496
  end
  object AccountHeadsDsp: TDataSetProvider
    DataSet = AccountHeadsSds
    Left = 160
    Top = 496
  end
  object AccountHeadsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccountHeadsDsp'
    Left = 184
    Top = 496
    object AccountHeadsCdsAccountHeads_id: TIntegerField
      FieldName = 'AccountHeads_id'
    end
    object AccountHeadsCdsAccountHeadsNo: TIntegerField
      FieldName = 'AccountHeadsNo'
    end
    object AccountHeadsCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object AccountHeadsCdsfolio: TStringField
      FieldName = 'folio'
      Size = 50
    end
  end
  object AccountHeadsDS: TDataSource
    DataSet = AccountHeadsCds
    Left = 200
    Top = 496
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 144
    Top = 466
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 168
    Top = 466
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 184
    Top = 466
    object CurrencyCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrencyCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrencyDs: TDataSource
    DataSet = CurrencyCds
    Left = 200
    Top = 466
  end
  object ReportsPopup: TPopupMenu
    Left = 53
    Top = 608
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
      Caption = 
        'Balance Sheet (Provisional - ignore ServiceVoucherDate not in pe' +
        'riod)'
      OnClick = BalanceSheetProvisional1Click
    end
    object ProfitLoss1: TMenuItem
      Caption = 'Profit && Loss'
      OnClick = ProfitLoss1Click
    end
    object ProfitLossProvisional1: TMenuItem
      Caption = 
        'Profit && Loss (Provisional - ignore ServiceVoucherDate not in p' +
        'eriod)'
      OnClick = ProfitLossProvisional1Click
    end
    object ProfitLossProvisional21: TMenuItem
      Caption = 'Profit && Loss (Provisional 2)'
      Visible = False
      OnClick = ProfitLossProvisional21Click
    end
    object ProfitLossOffice1: TMenuItem
      Caption = 
        'Profit && Loss (Office - ignore ServiceVoucherDate not in period' +
        ')'
      OnClick = ProfitLossOffice1Click
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
    object N9: TMenuItem
      Caption = '-'
    end
    object ransporterServiceTaxCollected1: TMenuItem
      Caption = 'Transporter Service Tax Collected'
      OnClick = ransporterServiceTaxCollected1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Utilities1: TMenuItem
      Caption = 'Utilities'
      object FilterbyDateRange1: TMenuItem
        Caption = 'Filter by Date Range'
        OnClick = FilterbyDateRange1Click
      end
      object RenumberfromthisVoucher1: TMenuItem
        Caption = 'Renumber from this Voucher'
        OnClick = RenumberfromthisVoucher1Click
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Cenvat1: TMenuItem
      Caption = 'Cenvat'
      object CenvatReportNew1: TMenuItem
        Caption = 'Cenvat Report'
        OnClick = CenvatReportNew1Click
      end
      object ReportPosssibleCenvatEntryErrors1: TMenuItem
        Caption = 'Report Posssible Cenvat Entry Errors'
        OnClick = ReportPosssibleCenvatEntryErrors1Click
      end
      object MonthlyReco1: TMenuItem
        Caption = 'Monthly Reco'
        OnClick = MonthlyReco1Click
      end
      object UntaggedIDs1: TMenuItem
        Caption = 'Untagged IDs'
        OnClick = UntaggedIDs1Click
      end
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object GSTR21: TMenuItem
      Caption = 'GSTR2'
      OnClick = GSTR21Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object FIRCPayments1: TMenuItem
      Caption = 'FIRC Payments'
      OnClick = FIRCPayments1Click
    end
  end
  object OpenDialog: TOpenDialog
    Left = 368
    Top = 104
  end
  object scExcelExport: TscExcelExport
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
    Left = 392
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 412
    Top = 283
    object ShowHideETransColumn1: TMenuItem
      Caption = 'Show/Hide E-Trans Column'
      OnClick = ShowHideETransColumn1Click
    end
    object ShowHideGSTColumns1: TMenuItem
      Caption = 'Show/Hide GST Columns'
      OnClick = ShowHideGSTColumns1Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object SetTDSAmounts1: TMenuItem
      Caption = 'Enter Auto TDS'
      OnClick = SetTDSAmounts1Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object ServiceTax1: TMenuItem
      Caption = 'Service Tax'
      object ServiceTaxAmtTrsfEntry1: TMenuItem
        Caption = 'Service Tax - Amt Trsf Entry'
        OnClick = ServiceTaxAmtTrsfEntry1Click
      end
      object AutoEnterServiceTaxLines1: TMenuItem
        Caption = 'Auto Enter Service Tax Lines'
        OnClick = AutoEnterServiceTaxLines1Click
      end
    end
  end
  object MonthSds: TSQLDataSet
    CommandText = 'SELECT * FROM Months ORDER BY Months_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 466
  end
  object MonthDsp: TDataSetProvider
    DataSet = MonthSds
    Left = 272
    Top = 466
  end
  object MonthCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MonthDsp'
    Left = 288
    Top = 466
    object MonthCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MonthCdsMonthName: TStringField
      FieldName = 'MonthName'
    end
    object MonthCdsMonthShortName: TStringField
      FieldName = 'MonthShortName'
      Size = 4
    end
    object MonthCdsMonthIndexName: TStringField
      FieldName = 'MonthIndexName'
      Size = 10
    end
  end
  object MonthDs: TDataSource
    DataSet = MonthCds
    Left = 304
    Top = 466
  end
  object InvoiceTypesSds: TSQLDataSet
    CommandText = 'SELECT * FROM InvoiceTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 392
    Top = 466
  end
  object InvoiceTypesDsp: TDataSetProvider
    DataSet = InvoiceTypesSds
    Left = 416
    Top = 466
  end
  object InvoiceTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InvoiceTypesDsp'
    Left = 432
    Top = 466
    object InvoiceTypesCdsinvoicetypes_id: TIntegerField
      FieldName = 'invoicetypes_id'
    end
    object InvoiceTypesCdstype: TStringField
      FieldName = 'type'
    end
  end
  object InvoiceTypesDs: TDataSource
    DataSet = InvoiceTypesCds
    Left = 448
    Top = 466
  end
end
