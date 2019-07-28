inherited InvoicesForm: TInvoicesForm
  Left = 354
  Top = 15
  Width = 1149
  Caption = 'Invoices'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 271
    Width = 1133
  end
  inherited Panel1: TPanel
    Width = 1133
  end
  inherited Panel2: TPanel
    Width = 1133
    object Label10: TLabel [0]
      Left = 440
      Top = 13
      Width = 125
      Height = 13
      Caption = 'Search By Invoice No'
    end
    inherited cxButtonUtilities: TcxButton
      Visible = True
      DropDownMenu = ReportPopup
    end
    inherited cxButtonClose: TcxButton
      Left = 1045
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 965
      DataBinding.DataField = 'invoicedetails_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 964
      DataBinding.DataField = 'invoices_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Left = 104
    end
    object cxSearchEdit: TcxTextEdit
      Left = 570
      Top = 11
      Style.Color = clCream
      TabOrder = 5
      OnKeyPress = cxSearchEditKeyPress
      Width = 95
    end
  end
  inherited Panel3: TPanel
    Width = 1133
    Height = 230
    inherited cxPageControl1: TcxPageControl
      Width = 1131
      Height = 228
      ClientRectBottom = 222
      ClientRectRight = 1125
      inherited cxTabSheet1: TcxTabSheet
        object DBText1: TDBText
          Left = 74
          Top = 4
          Width = 65
          Height = 17
          DataField = 'invoiceno'
          DataSource = MasterDs
          Transparent = True
        end
        object DBText2: TDBText
          Left = 274
          Top = 4
          Width = 65
          Height = 17
          DataField = 'yearref'
          DataSource = MasterDs
          Transparent = True
        end
        object DBText3: TDBText
          Left = 973
          Top = 82
          Width = 100
          Height = 17
          DataField = 'TotalInvoiceAmount'
          DataSource = MasterDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object PaidAmtTxt: TDBText
          Left = 973
          Top = 102
          Width = 100
          Height = 17
          DataField = 'PaidAmt'
          DataSource = MasterDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DiffAmtTxt: TDBText
          Left = 973
          Top = 122
          Width = 100
          Height = 17
          DataField = 'DiffAmt'
          DataSource = MasterDs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Invoice No'
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 208
          Top = 3
          Caption = 'Year Ref'
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 408
          Top = 3
          Caption = 'Invoice Date'
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 504
          Top = 3
          DataBinding.DataField = 'invoicedate'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = clCream
          TabOrder = 0
          Width = 121
        end
        object Label4: TcxLabel
          Left = 648
          Top = 3
          Caption = 'Customer'
          Transparent = True
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 733
          Top = 3
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
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
          Properties.ListSource = CustomerDs
          Properties.OnEditValueChanged = cxDBLookupComboBox4PropertiesEditValueChanged
          Style.Color = clCream
          TabOrder = 1
          Width = 257
        end
        object TourCodeLbl: TcxLabel
          Left = 3
          Top = 29
          Caption = 'Tour Code'
          Transparent = True
        end
        object TourCodeEdit: TcxDBTextEdit
          Left = 72
          Top = 29
          DataBinding.DataField = 'MasterCode'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 2
          Width = 121
        end
        object TourDateLbl: TcxLabel
          Left = 208
          Top = 29
          Caption = 'Tour Date'
          Transparent = True
        end
        object TourDateEdit: TcxDBDateEdit
          Left = 274
          Top = 29
          DataBinding.DataField = 'MasterDepartureDate'
          DataBinding.DataSource = MasterDs
          Properties.ShowTime = False
          Style.Color = clCream
          TabOrder = 3
          Width = 121
        end
        object Label7: TcxLabel
          Left = 408
          Top = 29
          Caption = 'Currency'
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 504
          Top = 29
          DataBinding.DataField = 'currencies_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = CurrencyDs
          Style.Color = clCream
          TabOrder = 4
          Width = 121
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 946
          Top = 29
          Caption = 'FIT'
          DataBinding.DataField = 'fit'
          DataBinding.DataSource = MasterDs
          TabOrder = 6
          Transparent = True
          Width = 43
        end
        object Label15: TcxLabel
          Left = 3
          Top = 81
          Caption = 'Remarks'
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 648
          Top = 29
          Caption = 'Invoice Type'
          Transparent = True
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 733
          Top = 29
          DataBinding.DataField = 'invoicetypes_id'
          DataBinding.DataSource = MasterDs
          Enabled = False
          Properties.KeyFieldNames = 'InvoiceTypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'Type'
            end>
          Properties.ListSource = InvoiceTypeDs
          Style.Color = clCream
          TabOrder = 5
          Width = 145
        end
        object Label8: TcxLabel
          Left = 3
          Top = 55
          Caption = 'Tax Type'
          Transparent = True
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 72
          Top = 55
          DataBinding.DataField = 'taxes_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'taxes_id'
          Properties.ListColumns = <
            item
              FieldName = 'tax'
            end>
          Properties.ListSource = TaxDs
          Style.Color = clCream
          TabOrder = 7
          Width = 118
        end
        object Label9: TcxLabel
          Left = 208
          Top = 55
          Caption = 'Tax (%)'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 274
          Top = 55
          DataBinding.DataField = 'taxpercentage'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 8
          Width = 121
        end
        object Label11: TcxLabel
          Left = 408
          Top = 57
          Caption = 'Tax'
          Transparent = True
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 504
          Top = 57
          DataBinding.DataField = 'taxamount'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = clCream
          TabOrder = 9
          Width = 121
        end
        object Label3: TcxLabel
          Left = 888
          Top = 81
          Caption = 'Invoice Amt'
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 72
          Top = 81
          DataBinding.DataField = 'note'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 10
          Height = 89
          Width = 804
        end
        object cxChkDisplayBalance: TcxCheckBox
          Left = 888
          Top = 151
          Caption = 'Display Balance'
          TabOrder = 24
          Transparent = True
          OnClick = cxChkDisplayBalanceClick
          Width = 121
        end
        object cxPaidAmtLabel: TcxLabel
          Left = 888
          Top = 101
          Caption = 'Paid Amt'
          Transparent = True
        end
        object cxDiffAmtLabel: TcxLabel
          Left = 888
          Top = 121
          Caption = 'Diff Amt'
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 647
          Top = 57
          Caption = 'Exch Rate'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 733
          Top = 57
          DataBinding.DataField = 'exchangerate'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 28
          Width = 121
        end
        object Panel5: TPanel
          Left = 0
          Top = 171
          Width = 1122
          Height = 25
          Align = alBottom
          Color = 14024703
          TabOrder = 29
          object cxLabel2: TcxLabel
            Left = 3
            Top = 4
            Caption = 'For Inv No'
            Transparent = True
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 72
            Top = 2
            DataBinding.DataField = 'ForInvoiceNo'
            DataBinding.DataSource = MasterDs
            Style.Color = clCream
            TabOrder = 1
            Width = 121
          end
          object cxLabel3: TcxLabel
            Left = 208
            Top = 4
            Caption = 'For Inv Date'
            Transparent = True
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 290
            Top = 2
            DataBinding.DataField = 'ForInvoiceDate'
            DataBinding.DataSource = MasterDs
            Properties.ShowTime = False
            Style.Color = clCream
            TabOrder = 3
            Width = 121
          end
          object cxLabel8: TcxLabel
            Left = 448
            Top = 4
            Caption = 'Reason'
            Transparent = True
          end
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 504
            Top = 2
            DataBinding.DataField = 'CrDbReasons_id'
            DataBinding.DataSource = MasterDs
            Properties.KeyFieldNames = 'CrDbReasons_id'
            Properties.ListColumns = <
              item
                FieldName = 'CrDbReason'
              end>
            Properties.ListSource = CrDbReasonsDs
            Style.Color = clCream
            TabOrder = 5
            Width = 209
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'GST Details'
        ImageIndex = 1
        object cxLabel4: TcxLabel
          Left = 5
          Top = 5
          Caption = 'GSTIN of Recipient'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 170
          Top = 5
          DataBinding.DataField = 'GstinRecipient'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 1
          Width = 197
        end
        object cxLabel5: TcxLabel
          Left = 5
          Top = 30
          Caption = 'Place of Supply'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 5
          Top = 55
          Caption = 'State'
          Transparent = True
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 170
          Top = 55
          DataBinding.DataField = 'SupplyStates_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'States_id'
          Properties.ListColumns = <
            item
              FieldName = 'State'
            end>
          Properties.ListSource = StateDs
          Style.Color = clCream
          TabOrder = 4
          Width = 197
        end
        object cxLabel7: TcxLabel
          Left = 5
          Top = 80
          Caption = 'Tax Payable Under RCM?'
          Transparent = True
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 170
          Top = 80
          DataBinding.DataField = 'TaxPayableRcm'
          DataBinding.DataSource = MasterDs
          Properties.Items.Strings = (
            'No'
            'Yes')
          Style.Color = clCream
          TabOrder = 6
          Width = 197
        end
        object cxDBComboBox2: TcxDBComboBox
          Left = 170
          Top = 30
          DataBinding.DataField = 'PlaceOfSupply'
          DataBinding.DataSource = MasterDs
          Properties.Items.Strings = (
            '30-Goa')
          Style.Color = clCream
          TabOrder = 7
          Width = 197
        end
        object cxLabel9: TcxLabel
          Left = 437
          Top = 5
          Caption = 'I GST'
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 437
          Top = 30
          Caption = 'C GST'
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 437
          Top = 55
          Caption = 'S GST'
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 490
          Top = 5
          DataBinding.DataField = 'I_Gst_Perc'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 14284031
          TabOrder = 11
          Width = 55
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 490
          Top = 29
          DataBinding.DataField = 'C_Gst_Perc'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 14284031
          TabOrder = 12
          Width = 55
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 490
          Top = 53
          DataBinding.DataField = 'S_Gst_Perc'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 14284031
          TabOrder = 13
          Width = 55
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 554
          Top = 5
          DataBinding.DataField = 'I_Gst'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 14284031
          TabOrder = 14
          Width = 103
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 554
          Top = 29
          DataBinding.DataField = 'C_Gst'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 14284031
          TabOrder = 15
          Width = 103
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 554
          Top = 53
          DataBinding.DataField = 'S_Gst'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 14284031
          TabOrder = 16
          Width = 103
        end
        object cxLabel12: TcxLabel
          Left = 5
          Top = 125
          Caption = 'Customer'
          Transparent = True
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 170
          Top = 125
          DataBinding.DataField = 'Customer'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 18
          Width = 375
        end
        object cxLabel13: TcxLabel
          Left = 5
          Top = 147
          Caption = 'Addr 1'
          Transparent = True
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 170
          Top = 148
          DataBinding.DataField = 'Addr1'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 20
          Width = 375
        end
        object cxLabel14: TcxLabel
          Left = 5
          Top = 170
          Caption = 'Addr 2'
          Transparent = True
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 170
          Top = 171
          DataBinding.DataField = 'Addr2'
          DataBinding.DataSource = MasterDs
          Style.Color = clCream
          TabOrder = 22
          Width = 375
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 276
    Width = 1133
    Height = 304
    inherited cxPageControl2: TcxPageControl
      Width = 1131
      Height = 302
      ClientRectBottom = 296
      ClientRectRight = 1125
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 1122
          Height = 270
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = PopupMenu1
            OnDblClick = cxGrid1DBBandedTableView1DblClick
            DataController.KeyFieldNames = 'invoicedetails_id'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1amount
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1ServiceTax
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1AmtAfterTax
              end>
            OptionsView.Footer = True
            object cxGrid1DBBandedTableView1invoicedetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'invoicedetails_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1invoices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'invoices_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1itemno: TcxGridDBBandedColumn
              Caption = 'Item No'
              DataBinding.FieldName = 'itemno'
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1bookingref: TcxGridDBBandedColumn
              Caption = 'Booking Ref.'
              DataBinding.FieldName = 'bookingref'
              Visible = False
              Width = 123
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tourdate: TcxGridDBBandedColumn
              Caption = 'Date'
              DataBinding.FieldName = 'tourdate'
              Visible = False
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1details: TcxGridDBBandedColumn
              Caption = 'Details'
              DataBinding.FieldName = 'details'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGrid1DBBandedTableView1detailsPropertiesButtonClick
              Width = 191
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SacCode: TcxGridDBBandedColumn
              Caption = 'SAC Code'
              DataBinding.FieldName = 'SacCode'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1roomsizes_id: TcxGridDBBandedColumn
              Caption = 'Room Size'
              DataBinding.FieldName = 'roomsizes_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1roomtypes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'roomtypes_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1unitprice: TcxGridDBBandedColumn
              Caption = 'Unit Price'
              DataBinding.FieldName = 'unitprice'
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1quantity: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'quantity'
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1nights: TcxGridDBBandedColumn
              Caption = 'Nights'
              DataBinding.FieldName = 'nights'
              Visible = False
              Width = 54
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1amount: TcxGridDBBandedColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'amount'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1servicetaxperc: TcxGridDBBandedColumn
              Caption = 'GST (%)'
              DataBinding.FieldName = 'servicetaxperc'
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1localpayment: TcxGridDBBandedColumn
              Caption = 'Local Pymt'
              DataBinding.FieldName = 'localpayment'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1products_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'products_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1bookingsaccommodation_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingsaccommodation_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CancelledByPax: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CancelledByPax'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1QuoModuleDetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoModuleDetails_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ServiceTax: TcxGridDBBandedColumn
              Caption = 'GST'
              DataBinding.FieldName = 'ServiceTax'
              Options.Editing = False
              Width = 82
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AmtAfterTax: TcxGridDBBandedColumn
              Caption = 'Total Amt'
              DataBinding.FieldName = 'AmtAfterTax'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CancelPerc: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CancelPerc'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PlaceOfSupplyLine: TcxGridDBBandedColumn
              Caption = 'Place of Supply'
              DataBinding.FieldName = 'PlaceOfSupplyLine'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'PlaceOfSupply'
              Properties.ListColumns = <
                item
                  FieldName = 'PlaceOfSupply'
                end>
              Properties.ListSource = PlaceOfSupplyDs
              Width = 131
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Payments'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1122
          Height = 270
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = PaymentDS
            DataController.KeyFieldNames = 'Ledgers_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object cxGridDBBandedTableView1transactiondate: TcxGridDBBandedColumn
              Caption = 'Trs Date'
              DataBinding.FieldName = 'transactiondate'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1cashvoucherno: TcxGridDBBandedColumn
              Caption = 'Cash Voucher No'
              DataBinding.FieldName = 'cashvoucherno'
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Db: TcxGridDBBandedColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'Db'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Details: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Details'
              Width = 740
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1InvoiceNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'InvoiceNo'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1YearRef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YearRef'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Divisions_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Divisions_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Currencies_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Currencies_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Ledgers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Ledgers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Invoices'
    CommandType = ctQuery
  end
  inherited MasterDsp: TDataSetProvider
    Left = 86
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    OnCalcFields = MasterCdsCalcFields
    Left = 103
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
      DisplayFormat = 'dd/mm/yyyy'
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
    object MasterCdstaxpercentage: TBCDField
      FieldName = 'taxpercentage'
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
      DisplayFormat = '#,##0.00'
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
      Size = 10
    end
    object MasterCdsMasterDepartureDate: TSQLTimeStampField
      FieldName = 'MasterDepartureDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsTotalInvoiceAmount: TFMTBCDField
      FieldName = 'TotalInvoiceAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsServiceTaxAmount: TFMTBCDField
      FieldName = 'ServiceTaxAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCessAmount: TFMTBCDField
      FieldName = 'CessAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsQuoModules_id: TIntegerField
      FieldName = 'QuoModules_id'
    end
    object MasterCdsLinkedInvoices_id: TIntegerField
      FieldName = 'LinkedInvoices_id'
    end
    object MasterCdsPaidAmt: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PaidAmt'
      DisplayFormat = '#,#00.00'
      Calculated = True
    end
    object MasterCdsDiffAmt: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiffAmt'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object MasterCdsGstinRecipient: TStringField
      FieldName = 'GstinRecipient'
      Size = 30
    end
    object MasterCdsPlaceOfSupply: TStringField
      FieldName = 'PlaceOfSupply'
      Size = 50
    end
    object MasterCdsSupplyStates_id: TIntegerField
      FieldName = 'SupplyStates_id'
    end
    object MasterCdsTaxPayableRcm: TStringField
      FieldName = 'TaxPayableRcm'
      Size = 10
    end
    object MasterCdsDivInvoiceNo: TIntegerField
      FieldName = 'DivInvoiceNo'
    end
    object MasterCdsForInvoiceNo: TIntegerField
      FieldName = 'ForInvoiceNo'
    end
    object MasterCdsForInvoiceDate: TSQLTimeStampField
      FieldName = 'ForInvoiceDate'
    end
    object MasterCdsCrDbReasons_id: TIntegerField
      FieldName = 'CrDbReasons_id'
    end
    object MasterCdsI_Gst_Perc: TFMTBCDField
      FieldName = 'I_Gst_Perc'
      DisplayFormat = '#,##0.00%'
      Precision = 15
      Size = 2
    end
    object MasterCdsC_Gst_Perc: TFMTBCDField
      FieldName = 'C_Gst_Perc'
      DisplayFormat = '#,##0.00%'
      Precision = 15
      Size = 2
    end
    object MasterCdsS_Gst_Perc: TFMTBCDField
      FieldName = 'S_Gst_Perc'
      DisplayFormat = '#,##0.00%'
      Precision = 15
      Size = 2
    end
    object MasterCdsI_Gst: TFMTBCDField
      FieldName = 'I_Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsC_Gst: TFMTBCDField
      FieldName = 'C_Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsS_Gst: TFMTBCDField
      FieldName = 'S_Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCdsCustomer: TStringField
      FieldName = 'Customer'
      Size = 100
    end
    object MasterCdsAddr1: TStringField
      FieldName = 'Addr1'
      Size = 100
    end
    object MasterCdsAddr2: TStringField
      FieldName = 'Addr2'
      Size = 100
    end
  end
  inherited MasterDs: TDataSource
    Left = 117
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM InvoiceDetails'#13#10'WHERE Invoices_id = :Invoices_id'
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'invoices_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailDsp: TDataSetProvider
    Left = 302
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'invoices_id'
    MasterFields = 'invoices_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = DetailCdsAfterInsert
    Left = 319
    object DetailCdsproducts_id: TIntegerField
      FieldName = 'products_id'
    end
    object DetailCdsdetails: TStringField
      FieldName = 'details'
      Size = 250
    end
    object DetailCdsunitprice: TBCDField
      FieldName = 'unitprice'
      OnChange = DetailCdsunitpriceChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsquantity: TIntegerField
      FieldName = 'quantity'
      OnChange = DetailCdsquantityChange
      DisplayFormat = '#,##0'
    end
    object DetailCdsamount: TBCDField
      FieldName = 'amount'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DetailCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object DetailCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object DetailCdsitemno: TIntegerField
      FieldName = 'itemno'
    end
    object DetailCdsbookingref: TStringField
      FieldName = 'bookingref'
    end
    object DetailCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object DetailCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object DetailCdsnights: TIntegerField
      FieldName = 'nights'
      OnChange = DetailCdsnightsChange
    end
    object DetailCdsinvoicedetails_id: TIntegerField
      FieldName = 'invoicedetails_id'
    end
    object DetailCdslocalpayment: TBCDField
      FieldName = 'localpayment'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsservicetaxperc: TBCDField
      FieldName = 'servicetaxperc'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object DetailCdsbookingsaccommodation_id: TIntegerField
      FieldName = 'bookingsaccommodation_id'
    end
    object DetailCdsCancelledByPax: TSQLTimeStampField
      FieldName = 'CancelledByPax'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DetailCdsCancelPerc: TFMTBCDField
      FieldName = 'CancelPerc'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsQuoModuleDetails_id: TIntegerField
      FieldName = 'QuoModuleDetails_id'
    end
    object DetailCdsServiceTax: TFMTBCDField
      FieldName = 'ServiceTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsAmtAfterTax: TFMTBCDField
      FieldName = 'AmtAfterTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsRateAfterServTax: TFMTBCDField
      FieldName = 'RateAfterServTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object DetailCdsSacCode: TStringField
      FieldName = 'SacCode'
    end
    object DetailCdsPlaceOfSupplyLine: TStringField
      FieldName = 'PlaceOfSupplyLine'
      Size = 50
    end
  end
  inherited DetailDs: TDataSource
    Left = 341
  end
  object CustomerSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_Addressbook(3,'#39#39') order by organisation, ci' +
      'ty'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 855
    Top = 65
  end
  object CustomerDsp: TDataSetProvider
    DataSet = CustomerSds
    Left = 879
    Top = 65
  end
  object CustomerCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CustomerDsp'
    Left = 902
    Top = 64
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
  object CustomerDs: TDataSource
    DataSet = CustomerCds
    Left = 919
    Top = 65
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 130
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 856
    Top = 130
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 872
    Top = 130
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
    Left = 888
    Top = 130
  end
  object InvoiceTypeSds: TSQLDataSet
    CommandText = 'SELECT InvoiceTypes_id, Type FROM InvoiceTypes'#13#10'ORDER BY Type'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 754
    Top = 87
  end
  object InvoiceTypeDSP: TDataSetProvider
    DataSet = InvoiceTypeSds
    Left = 768
    Top = 88
  end
  object InvoiceTypeCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'InvoiceTypeDSP'
    Left = 784
    Top = 88
    object InvoiceTypeCdsInvoiceTypes_id: TIntegerField
      FieldName = 'InvoiceTypes_id'
    end
    object InvoiceTypeCdsType: TStringField
      FieldName = 'Type'
    end
  end
  object InvoiceTypeDs: TDataSource
    DataSet = InvoiceTypeCds
    Left = 798
    Top = 88
  end
  object TaxDsp: TDataSetProvider
    DataSet = TaxSds
    Constraints = False
    Left = 832
    Top = 200
  end
  object TaxSds: TSQLDataSet
    CommandText = 'select taxes_id, tax from taxes order by tax'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 848
    Top = 200
  end
  object TaxCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TaxDsp'
    Left = 880
    Top = 200
    object TaxCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TaxCdstax: TStringField
      FieldName = 'tax'
      Size = 50
    end
  end
  object TaxDs: TDataSource
    DataSet = TaxCds
    Left = 896
    Top = 200
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
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'InvoiceNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YearRef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Divisions_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Currencies_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 666
    Top = 255
  end
  object PaymentDsp: TDataSetProvider
    DataSet = PaymentSds
    Left = 688
    Top = 256
  end
  object PaymentCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'InvoiceNo;YearRef;Divisions_id;Currencies_id'
    MasterFields = 'invoiceno;yearref;divisions_id;currencies_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'PaymentDsp'
    Left = 704
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
  object PaymentDS: TDataSource
    DataSet = PaymentCds
    Left = 718
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 339
    Top = 345
    object ShowDetails1: TMenuItem
      Caption = 'Show Details'
      OnClick = ShowDetails1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object WorkBackwardsfromTotalAmt1: TMenuItem
      Caption = 'Work Backwards from Total Amt'
      OnClick = WorkBackwardsfromTotalAmt1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Split4increase1: TMenuItem
      Caption = 'Split 4% increase'
      OnClick = Split4increase1Click
    end
    object ReversalofSplit1: TMenuItem
      Caption = 'Reversal of 4% Split'
      OnClick = ReversalofSplit1Click
    end
  end
  object ReportPopup: TPopupMenu
    Left = 88
    Top = 544
    object mnuManualTour1: TMenuItem
      Caption = 'Manual Tour Invoice (GST)'
      OnClick = mnuManualTour1Click
    end
    object mnuManualTour2: TMenuItem
      Caption = 'Manual Tour Invoice  (GST) Office'
      OnClick = mnuManualTour2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mnuBoatInv: TMenuItem
      Caption = 'Boat Invoice (GST)'
      OnClick = mnuBoatInvClick
    end
    object BoatInvoice1: TMenuItem
      Caption = 'Boat Invoice'
      Visible = False
      OnClick = BoatInvoice1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuInvoicesIssued: TMenuItem
      Caption = 'Invoices Issued'
      OnClick = mnuInvoicesIssuedClick
    end
    object mnuInvoicesDue: TMenuItem
      Caption = 'Invoices Due'
      OnClick = mnuInvoicesDueClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ourInvoiceExcel1: TMenuItem
      Caption = 'Manual Tour Invoice (Excel) - Per Invoice'
      Visible = False
      OnClick = ourInvoiceExcel1Click
    end
    object ManualTourInvoiceExcelPerLine1: TMenuItem
      Caption = 'Manual Tour Invoice (Excel) - Per Line'
      Visible = False
      OnClick = ManualTourInvoiceExcelPerLine1Click
    end
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
    Left = 392
    Top = 160
  end
  object StateSds: TSQLDataSet
    CommandText = 'SELECT States_id, State FROM States'#13#10'ORDER BY State'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 162
  end
  object StateDsp: TDataSetProvider
    DataSet = StateSds
    Left = 856
    Top = 162
  end
  object StateCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StateDsp'
    Left = 872
    Top = 162
    object StateCdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
    object StateCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
  end
  object StateDs: TDataSource
    DataSet = StateCds
    Left = 888
    Top = 162
  end
  object CrDbReasonsSds: TSQLDataSet
    CommandText = 'SELECT * FROM CrDbReasons'#13#10'ORDER BY CrDbReason'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 618
    Top = 215
  end
  object CrDbReasonsDsp: TDataSetProvider
    DataSet = CrDbReasonsSds
    Left = 632
    Top = 216
  end
  object CrDbReasonsCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'CrDbReasonsDsp'
    Left = 648
    Top = 216
    object CrDbReasonsCdsCrDbReasons_id: TIntegerField
      FieldName = 'CrDbReasons_id'
    end
    object CrDbReasonsCdsCrDbReason: TStringField
      FieldName = 'CrDbReason'
      Size = 50
    end
  end
  object CrDbReasonsDs: TDataSource
    DataSet = CrDbReasonsCds
    Left = 662
    Top = 216
  end
  object PlaceOfSupplySds: TSQLDataSet
    CommandText = 'SELECT * FROM PlaceOfSupply'#13#10'ORDER BY PlaceOfSupply'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 618
    Top = 183
  end
  object PlaceOfSupplyDsp: TDataSetProvider
    DataSet = PlaceOfSupplySds
    Left = 632
    Top = 184
  end
  object PlaceOfSupplyCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'PlaceOfSupplyDsp'
    Left = 648
    Top = 184
  end
  object PlaceOfSupplyDs: TDataSource
    DataSet = PlaceOfSupplyCds
    Left = 662
    Top = 184
  end
end
