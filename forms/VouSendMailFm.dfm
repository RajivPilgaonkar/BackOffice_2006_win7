object VouSendMailForm: TVouSendMailForm
  Left = 296
  Top = 57
  Width = 998
  Height = 663
  Caption = 'Send Mail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 585
    Width = 969
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxButton4: TcxButton
      Left = 213
      Top = 1
      Width = 97
      Height = 25
      Caption = 'Send Mails'
      TabOrder = 0
      OnClick = cxButton4Click
    end
    object cxCloseBtn: TcxButton
      Left = 899
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxCloseBtnClick
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
    object cxButton1: TcxButton
      Left = 629
      Top = 2
      Width = 161
      Height = 25
      Caption = 'Send Cancellation Mails'
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object cxPageControl: TcxPageControl
    Left = 16
    Top = 9
    Width = 953
    Height = 576
    ActivePage = cxTabSheet1
    TabOrder = 1
    ClientRectBottom = 570
    ClientRectLeft = 3
    ClientRectRight = 947
    ClientRectTop = 26
    object cxTabSheetAcc: TcxTabSheet
      Caption = 'Accommodation'
      ImageIndex = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 544
        Width = 944
        object Label1: TLabel
          Left = 5
          Top = 481
          Width = 480
          Height = 13
          Caption = 
            'Whatever is typed in the orange box below will also be sent to e' +
            'ach hotel in the mail'
        end
        object Label3: TLabel
          Left = 509
          Top = 482
          Width = 346
          Height = 13
          Caption = 'Type below to send to each hotel in the cancellation request'
        end
        object cxDBMemo1: TcxDBMemo
          Left = 2
          Top = 436
          DataBinding.DataField = 'Remarks'
          DataBinding.DataSource = AccDs
          Style.Color = 13630926
          TabOrder = 0
          Height = 46
          Width = 949
        end
        object cxGridMaster: TcxGrid
          Left = 4
          Top = 8
          Width = 945
          Height = 420
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebForFocusedRecord
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleBackground
            Styles.Header = BackOfficeDataModule.cxStyleHeader
          end
          object cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = AccDs
            DataController.KeyFieldNames = 'vouchersaccommodation_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Bands = <
              item
                Width = 890
              end>
            object cxGridMasterDBBandedTableView1SendMail: TcxGridDBBandedColumn
              Caption = 'Send Mail'
              DataBinding.FieldName = 'SendMail'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridMasterDBBandedTableView1HotelAddressbook_id_City: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = HotelDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridMasterDBBandedTableView1HotelAddressbook_id: TcxGridDBBandedColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Organisation'
                end>
              Properties.ListSource = HotelDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridMasterDBBandedTableView1AccString: TcxGridDBBandedColumn
              Caption = 'String'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Remarks'
                end>
              Properties.ListSource = VoucherAccDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 285
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridMasterDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
              Caption = 'Requested On'
              DataBinding.FieldName = 'RequestedOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridMasterDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'ConfirmedOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridMasterDBBandedTableView1CancelledOn: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'CancelledOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 135
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGridMasterLevel1: TcxGridLevel
            GridView = cxGridMasterDBBandedTableView1
          end
        end
        object cxDBMemo3: TcxDBMemo
          Left = 3
          Top = 494
          DataBinding.DataField = 'RemarksHotel'
          DataBinding.DataSource = AccDs
          Style.Color = 11458559
          TabOrder = 2
          Height = 48
          Width = 481
        end
        object cxDBMemo5: TcxDBMemo
          Left = 507
          Top = 494
          DataBinding.DataField = 'RemarksHotelCancel'
          DataBinding.DataSource = AccDs
          Style.Color = 12635902
          TabOrder = 3
          Height = 48
          Width = 456
        end
      end
    end
    object cxTabSheetTickets: TcxTabSheet
      Caption = 'Tickets'
      ImageIndex = 1
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 544
        Width = 944
        object Label2: TLabel
          Left = 9
          Top = 481
          Width = 463
          Height = 13
          Caption = 
            'Whatever is typed in the red box below will also be sent to each' +
            ' agent in the mail'
        end
        object Label8: TLabel
          Left = 488
          Top = 480
          Width = 350
          Height = 13
          Caption = 'Type below to send to each agent in the cancellation request'
        end
        object cxDBMemo2: TcxDBMemo
          Left = 2
          Top = 433
          DataBinding.DataField = 'Remarks'
          DataBinding.DataSource = TicketDs
          Style.Color = 13630926
          TabOrder = 0
          Height = 47
          Width = 949
        end
        object cxGridTickets: TcxGrid
          Left = 4
          Top = 16
          Width = 945
          Height = 418
          TabOrder = 1
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebForFocusedRecord
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleBackground
            Styles.Header = BackOfficeDataModule.cxStyleHeader
          end
          object cxGridTicketsDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TicketDs
            DataController.KeyFieldNames = 'voucherstickets_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Bands = <
              item
                Width = 905
              end>
            object cxGridTicketsDBBandedTableView1SendMail: TcxGridDBBandedColumn
              Caption = 'Send Mail'
              DataBinding.FieldName = 'SendMail'
              Options.Filtering = False
              Options.Grouping = False
              Width = 59
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  MinWidth = 300
                  SortOrder = soAscending
                  FieldName = 'Organisation'
                end
                item
                  MinWidth = 200
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Options.Filtering = False
              Options.Grouping = False
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1Tickets_id: TcxGridDBBandedColumn
              Caption = 'Ticket'
              DataBinding.FieldName = 'Tickets_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'tickets_id'
              Properties.ListColumns = <
                item
                  FieldName = 'details'
                end>
              Properties.ListSource = BackOfficeDataModule.TicketsDS
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'nobooked'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1TicketString: TcxGridDBBandedColumn
              Caption = 'Ticket String'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Remarks'
                end>
              Properties.ListSource = VoucherTicketDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 302
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
              Caption = 'Requested On'
              DataBinding.FieldName = 'RequestedOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'ConfirmedOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1CancelledOn: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'CancelledOn'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 121
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cxGridTicketsLevel1: TcxGridLevel
            GridView = cxGridTicketsDBBandedTableView1
          end
        end
        object cxDBMemo4: TcxDBMemo
          Left = 3
          Top = 494
          DataBinding.DataField = 'RemarksAgent'
          DataBinding.DataSource = TicketDs
          Style.Color = 11458559
          TabOrder = 2
          Height = 47
          Width = 470
        end
        object cxDBMemo12: TcxDBMemo
          Left = 488
          Top = 494
          DataBinding.DataField = 'RemarksTicketCancel'
          DataBinding.DataSource = TicketDs
          Style.Color = 12635902
          TabOrder = 3
          Height = 47
          Width = 453
        end
      end
    end
    object cxTabSheetTrsf: TcxTabSheet
      Caption = 'Transfers && SightSeeing'
      ImageIndex = 2
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 544
        Width = 944
        object Label4: TLabel
          Left = 5
          Top = 481
          Width = 484
          Height = 13
          Caption = 
            'Whatever is typed in the orange box below will also be sent to e' +
            'ach agent in the mail'
        end
        object Label5: TLabel
          Left = 509
          Top = 482
          Width = 350
          Height = 13
          Caption = 'Type below to send to each agent in the cancellation request'
        end
        object cxDBMemo6: TcxDBMemo
          Left = 2
          Top = 436
          DataBinding.DataField = 'Remarks'
          DataBinding.DataSource = ServiceDs
          Style.Color = 13630926
          TabOrder = 0
          Height = 46
          Width = 949
        end
        object cxGrid1: TcxGrid
          Left = 4
          Top = 8
          Width = 945
          Height = 420
          TabOrder = 1
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebForFocusedRecord
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleBackground
            Styles.Header = BackOfficeDataModule.cxStyleHeader
          end
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ServiceDs
            DataController.KeyFieldNames = 'vouchersservices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Bands = <
              item
                Width = 890
              end>
            object cxGridDBBandedTableView1vouchersaccommodation_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vouchersaccommodation_id'
              Visible = False
              Options.Editing = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1SendMail: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SendMail'
              Width = 44
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1AgentAddressbook_id_City: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Options.Editing = False
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Addressbook_id: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  MinWidth = 300
                  SortOrder = soAscending
                  FieldName = 'Organisation'
                end
                item
                  MinWidth = 200
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ServiceString: TcxGridDBBandedColumn
              Caption = 'String'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Remarks'
                end>
              Properties.ListSource = VoucherServiceDs
              Width = 268
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
              Caption = 'Requested On'
              DataBinding.FieldName = 'RequestedOn'
              Width = 113
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'ConfirmedOn'
              Width = 144
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1CancelledOn: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'CancelledOn'
              Width = 185
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
        object cxDBMemo7: TcxDBMemo
          Left = 3
          Top = 494
          DataBinding.DataField = 'RemarksAgent'
          DataBinding.DataSource = ServiceDs
          Style.Color = 11458559
          TabOrder = 2
          Height = 48
          Width = 481
        end
        object cxDBMemo8: TcxDBMemo
          Left = 507
          Top = 494
          DataBinding.DataField = 'RemarksServiceCancel'
          DataBinding.DataSource = ServiceDs
          Style.Color = 12635902
          TabOrder = 3
          Height = 48
          Width = 456
        end
      end
    end
    object cxTabSheetTransport: TcxTabSheet
      Caption = 'Transport'
      ImageIndex = 3
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 544
        Width = 944
        object Label6: TLabel
          Left = 5
          Top = 481
          Width = 484
          Height = 13
          Caption = 
            'Whatever is typed in the orange box below will also be sent to e' +
            'ach agent in the mail'
        end
        object Label7: TLabel
          Left = 509
          Top = 482
          Width = 350
          Height = 13
          Caption = 'Type below to send to each agent in the cancellation request'
        end
        object cxDBMemo9: TcxDBMemo
          Left = 2
          Top = 436
          DataBinding.DataField = 'Remarks'
          DataBinding.DataSource = TransportDs
          Style.Color = 13630926
          TabOrder = 0
          Height = 46
          Width = 949
        end
        object cxGrid2: TcxGrid
          Left = 4
          Top = 8
          Width = 945
          Height = 420
          TabOrder = 1
          object cxGridDBTableView4: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.ShowEditButtons = gsebForFocusedRecord
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleBackground
            Styles.Header = BackOfficeDataModule.cxStyleHeader
          end
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TransportDs
            DataController.KeyFieldNames = 'voucherstransport_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Bands = <
              item
                Width = 890
              end>
            object cxGridDBBandedTableView2vouchersservices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'vouchersservices_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2SendMail: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SendMail'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2AgentAddressbook_City: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2Addressbook_id: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  MinWidth = 300
                  SortOrder = soAscending
                  FieldName = 'Organisation'
                end
                item
                  MinWidth = 200
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2Vouchers_id: TcxGridDBBandedColumn
              Caption = 'Transport String'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Remarks'
                end>
              Properties.ListSource = VoucherServiceDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 285
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2RequestedOn: TcxGridDBBandedColumn
              Caption = 'Requested On'
              DataBinding.FieldName = 'RequestedOn'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2ConfirmedOn: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'ConfirmedOn'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2CancelledOn: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'CancelledOn'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 135
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBBandedTableView2
          end
        end
        object cxDBMemo10: TcxDBMemo
          Left = 3
          Top = 494
          DataBinding.DataField = 'RemarksAgent'
          DataBinding.DataSource = TransportDs
          Style.Color = 11458559
          TabOrder = 2
          Height = 48
          Width = 481
        end
        object cxDBMemo11: TcxDBMemo
          Left = 507
          Top = 494
          DataBinding.DataField = 'RemarksTransportCancel'
          DataBinding.DataSource = TransportDs
          Style.Color = 12635902
          TabOrder = 3
          Height = 48
          Width = 456
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Packages'
      ImageIndex = 4
      object Label9: TLabel
        Left = 5
        Top = 478
        Width = 484
        Height = 13
        Caption = 
          'Whatever is typed in the orange box below will also be sent to e' +
          'ach agent in the mail'
      end
      object Label10: TLabel
        Left = 509
        Top = 477
        Width = 350
        Height = 13
        Caption = 'Type below to send to each agent in the cancellation request'
      end
      object cxGrid3: TcxGrid
        Left = -1
        Top = -8
        Width = 945
        Height = 420
        TabOrder = 0
        object cxGridDBTableView5: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = BackOfficeDataModule.cxStyleBackground
          Styles.Header = BackOfficeDataModule.cxStyleHeader
        end
        object cxGridDBBandedTableView3: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = PackageDs
          DataController.KeyFieldNames = 'voucherspackages_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 890
            end>
          object cxGridDBBandedTableView3voucherspackages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'voucherspackages_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3vouchers_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'vouchers_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3SendMail: TcxGridDBBandedColumn
            Caption = 'Send Mail'
            DataBinding.FieldName = 'SendMail'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Addressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Addressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                MinWidth = 300
                FieldName = 'Organisation'
              end
              item
                MinWidth = 100
                FieldName = 'City'
              end>
            Properties.ListSource = AgentDs
            Options.Editing = False
            Width = 175
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3PackageString: TcxGridDBBandedColumn
            Caption = 'Package String'
            DataBinding.FieldName = 'vouchers_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Vouchers_id'
            Properties.ListColumns = <
              item
                FieldName = 'Remarks'
              end>
            Properties.ListSource = VoucherServiceDs
            Options.Editing = False
            Width = 280
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ConfirmedOn: TcxGridDBBandedColumn
            Caption = 'Confirmed On'
            DataBinding.FieldName = 'ConfirmedOn'
            Width = 128
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3CancelledOn: TcxGridDBBandedColumn
            Caption = 'Cancelled On'
            DataBinding.FieldName = 'CancelledOn'
            Width = 140
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBBandedTableView3
        end
      end
      object cxDBMemo13: TcxDBMemo
        Left = 1
        Top = 430
        DataBinding.DataField = 'Remarks'
        DataBinding.DataSource = PackageDs
        Style.Color = 13630926
        TabOrder = 1
        Height = 46
        Width = 939
      end
      object cxDBMemo14: TcxDBMemo
        Left = 3
        Top = 494
        DataBinding.DataField = 'RemarksAgent'
        DataBinding.DataSource = PackageDs
        Style.Color = 11458559
        TabOrder = 2
        Height = 48
        Width = 487
      end
      object cxDBMemo15: TcxDBMemo
        Left = 509
        Top = 494
        DataBinding.DataField = 'RemarksVoucherCancel'
        DataBinding.DataSource = PackageDs
        Style.Color = 12635902
        TabOrder = 3
        Height = 48
        Width = 431
      end
    end
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM VouchersAccommodation'#13#10'WHERE MasterTourCode = :Mas' +
      'terTourCode'#13#10'AND MasterTourDate = :MasterTourDate'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MasterTourCode'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MasterTourDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    Left = 368
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    AfterPost = AccCdsAfterPost
    Left = 384
    Top = 1
    object AccCdsvouchersaccommodation_id: TIntegerField
      FieldName = 'vouchersaccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AccCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object AccCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object AccCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object AccCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object AccCdsRemarksHotel: TStringField
      FieldName = 'RemarksHotel'
      Size = 200
    end
    object AccCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object AccCdsRemarksHotelCancel: TStringField
      FieldName = 'RemarksHotelCancel'
      Size = 200
    end
    object AccCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AccCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object AccCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
    end
    object AccCdsMasterTourDate: TSQLTimeStampField
      FieldName = 'MasterTourDate'
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 408
    Top = 3
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT Addressbook_id, Organisation, City'#13#10'FROM Addressbook'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 88
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 392
    Top = 88
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 408
    Top = 88
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 424
    Top = 88
  end
  object IdSMTP1: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 8
    Top = 2
  end
  object TicketSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM VouchersTickets'#13#10'WHERE MasterTourCode = :MasterTou' +
      'rCode'#13#10'AND MasterTourDate = :MasterTourDate'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MasterTourCode'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MasterTourDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    Left = 496
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketDsp'
    AfterPost = TicketCdsAfterPost
    Left = 512
    Top = 1
    object TicketCdsvoucherstickets_id: TIntegerField
      FieldName = 'voucherstickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TicketCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object TicketCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object TicketCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object TicketCdsRemarksAgent: TStringField
      FieldName = 'RemarksAgent'
      Size = 200
    end
    object TicketCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object TicketCdsRemarksAgentCancel: TStringField
      FieldName = 'RemarksAgentCancel'
      Size = 200
    end
    object TicketCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object TicketCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object TicketCdsnobooked: TIntegerField
      FieldName = 'nobooked'
    end
    object TicketCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object TicketCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
    end
    object TicketCdsMasterTourDate: TSQLTimeStampField
      FieldName = 'MasterTourDate'
    end
    object TicketCdsRemarksTicketCancel: TStringField
      FieldName = 'RemarksTicketCancel'
      Size = 200
    end
  end
  object TicketDs: TDataSource
    DataSet = TicketCds
    Left = 536
    Top = 3
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT Addressbook_id, Organisation, City'#13#10'FROM Addressbook'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 88
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 504
    Top = 88
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 520
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'Addressbook_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField1: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'City'
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 536
    Top = 88
  end
  object VoucherAccSds: TSQLDataSet
    CommandText = 'SELECT Vouchers_id, [Description] AS Remarks FROM Vouchers'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 360
    Top = 136
  end
  object VoucherAccDsp: TDataSetProvider
    DataSet = VoucherAccSds
    Left = 384
    Top = 136
  end
  object VoucherAccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherAccDsp'
    Left = 400
    Top = 136
    object VoucherAccCdsVouchers_id: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object VoucherAccCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 250
    end
  end
  object VoucherAccDs: TDataSource
    DataSet = VoucherAccCds
    Left = 416
    Top = 136
  end
  object VoucherTicketSds: TSQLDataSet
    CommandText = 'SELECT Vouchers_id, [Description] AS Remarks FROM Vouchers'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 488
    Top = 136
  end
  object VoucherTicketDsp: TDataSetProvider
    DataSet = VoucherTicketSds
    Left = 512
    Top = 136
  end
  object VoucherTicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherTicketDsp'
    Left = 528
    Top = 136
    object IntegerField2: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object StringField3: TStringField
      FieldName = 'Remarks'
      Size = 250
    end
  end
  object VoucherTicketDs: TDataSource
    DataSet = VoucherTicketCds
    Left = 544
    Top = 136
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 56
    Top = 8
  end
  object ServiceSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM VouchersServices'#13#10'WHERE MasterTourCode = :MasterTo' +
      'urCode'#13#10'AND MasterTourDate = :MasterTourDate'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MasterTourCode'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MasterTourDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 608
    Top = 8
  end
  object ServiceDsp: TDataSetProvider
    DataSet = ServiceSds
    Left = 624
    Top = 8
  end
  object ServiceCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceDsp'
    AfterPost = ServiceCdsAfterPost
    Left = 640
    Top = 9
    object ServiceCdsvouchersservices_id: TIntegerField
      FieldName = 'vouchersservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField4: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BooleanField1: TBooleanField
      FieldName = 'SendMail'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object IntegerField5: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'MasterTourCode'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'MasterTourDate'
    end
    object ServiceCdsRemarksAgent: TStringField
      FieldName = 'RemarksAgent'
      Size = 200
    end
    object ServiceCdsRemarksServiceCancel: TStringField
      FieldName = 'RemarksServiceCancel'
      Size = 200
    end
    object ServiceCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
  end
  object ServiceDs: TDataSource
    DataSet = ServiceCds
    Left = 664
    Top = 11
  end
  object VoucherServiceSds: TSQLDataSet
    CommandText = 'SELECT Vouchers_id, [Description] AS Remarks FROM Vouchers'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 616
    Top = 136
  end
  object VoucherServiceDsp: TDataSetProvider
    DataSet = VoucherServiceSds
    Left = 640
    Top = 136
  end
  object VoucherServiceCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherServiceDsp'
    Left = 656
    Top = 136
    object IntegerField3: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object StringField4: TStringField
      FieldName = 'Remarks'
      Size = 250
    end
  end
  object VoucherServiceDs: TDataSource
    DataSet = VoucherServiceCds
    Left = 672
    Top = 136
  end
  object TransportSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM VouchersTransport'#13#10'WHERE MasterTourCode = :MasterT' +
      'ourCode'#13#10'AND MasterTourDate = :MasterTourDate'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MasterTourCode'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MasterTourDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 736
    Top = 8
  end
  object TransportDsp: TDataSetProvider
    DataSet = TransportSds
    Left = 752
    Top = 8
  end
  object TransportCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransportDsp'
    AfterPost = TransportCdsAfterPost
    Left = 768
    Top = 9
    object TransportCdsvoucherstransport_id: TIntegerField
      FieldName = 'voucherstransport_id'
    end
    object TransportCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TransportCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object TransportCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object TransportCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object TransportCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object TransportCdsRemarksAgent: TStringField
      FieldName = 'RemarksAgent'
      Size = 200
    end
    object TransportCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object TransportCdsRemarksTransportCancel: TStringField
      FieldName = 'RemarksTransportCancel'
      Size = 200
    end
    object TransportCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
    end
    object TransportCdsMasterTourDate: TSQLTimeStampField
      FieldName = 'MasterTourDate'
    end
    object TransportCdsTransportString: TStringField
      FieldName = 'TransportString'
      Size = 200
    end
    object TransportCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object TransportDs: TDataSource
    DataSet = TransportCds
    Left = 792
    Top = 11
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
    Left = 296
    Top = 251
  end
  object PackageSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM VouchersPackages'#13#10'WHERE MasterTourCode = :MasterTo' +
      'urCode'#13#10'AND MasterTourDate = :MasterTourDate'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MasterTourCode'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MasterTourDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 848
    Top = 16
  end
  object PackageDsp: TDataSetProvider
    DataSet = PackageSds
    Left = 864
    Top = 16
  end
  object PackageCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PackageDsp'
    AfterPost = PackageCdsAfterPost
    Left = 880
    Top = 17
    object PackageCdsvoucherspackages_id: TIntegerField
      FieldName = 'voucherspackages_id'
    end
    object PackageCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object PackageCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PackageCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 200
    end
    object PackageCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
    end
    object PackageCdsMasterTourDate: TSQLTimeStampField
      FieldName = 'MasterTourDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PackageCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object PackageCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PackageCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PackageCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PackageCdsRemarksAgent: TStringField
      FieldName = 'RemarksAgent'
      Size = 200
    end
    object PackageCdsRemarksVoucherCancel: TStringField
      FieldName = 'RemarksVoucherCancel'
      Size = 200
    end
    object PackageCdsPackageString: TStringField
      FieldName = 'PackageString'
      Size = 200
    end
  end
  object PackageDs: TDataSource
    DataSet = PackageCds
    Left = 904
    Top = 19
  end
end
