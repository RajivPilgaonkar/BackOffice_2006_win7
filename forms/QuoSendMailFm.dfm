object QuoSendMailForm: TQuoSendMailForm
  Left = 132
  Top = 41
  Width = 998
  Height = 680
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
    Top = 601
    Width = 982
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
    ActivePage = cxTabSheetAcc
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
          ParentFont = False
          Style.Color = 13630926
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 46
          Width = 949
        end
        object cxGridMaster: TcxGrid
          Left = 4
          Top = 16
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
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = AccDs
            DataController.KeyFieldNames = 'QuoAccommodation_id'
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
            Styles.ContentEven = cxStyleBlue
            Styles.ContentOdd = cxStyleGreen
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
              DataBinding.FieldName = 'HotelAddressbook_id'
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
              DataBinding.FieldName = 'HotelAddressbook_id'
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
              DataBinding.FieldName = 'AccString'
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
            object cxGridMasterDBBandedTableView1ReserveHoteOvernight: TcxGridDBBandedColumn
              Caption = 'Overnight'
              DataBinding.FieldName = 'ReserveHotelOvernight'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 52
              Position.BandIndex = 0
              Position.ColIndex = 7
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
          ParentFont = False
          Style.Color = 11458559
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 48
          Width = 481
        end
        object cxDBMemo5: TcxDBMemo
          Left = 507
          Top = 494
          DataBinding.DataField = 'RemarksHotelCancel'
          DataBinding.DataSource = AccDs
          ParentFont = False
          Style.Color = 12635902
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
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
          Width = 484
          Height = 13
          Caption = 
            'Whatever is typed in the orange box below will also be sent to e' +
            'ach agent in the mail'
        end
        object Label4: TLabel
          Left = 509
          Top = 482
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
            DataController.KeyFieldNames = 'QuoTickets_id'
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
            Styles.ContentEven = cxStyleBlue
            Styles.ContentOdd = cxStyleGreen
            Bands = <
              item
                Width = 905
              end>
            object cxGridTicketsDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoTickets_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quotations_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1SendMail: TcxGridDBBandedColumn
              Caption = 'Send Mail'
              DataBinding.FieldName = 'SendMail'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentAddressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Organisation'
                end>
              Properties.ListSource = AgentDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 146
              Position.BandIndex = 0
              Position.ColIndex = 3
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
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn
              Caption = 'Qty'
              DataBinding.FieldName = 'NoOfTickets'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 38
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1TicketString: TcxGridDBBandedColumn
              Caption = 'Ticket String'
              DataBinding.FieldName = 'TicketString'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 383
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
              Caption = 'Requested On'
              DataBinding.FieldName = 'RequestedOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridTicketsDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'ConfirmedOn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 8
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
          Width = 489
        end
        object cxDBMemo6: TcxDBMemo
          Left = 511
          Top = 494
          DataBinding.DataField = 'RemarksAgentCancel'
          DataBinding.DataSource = TicketDs
          Style.Color = 12635902
          TabOrder = 3
          Height = 47
          Width = 430
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Sightseeing'
      ImageIndex = 2
      object Label5: TLabel
        Left = 9
        Top = 481
        Width = 484
        Height = 13
        Caption = 
          'Whatever is typed in the orange box below will also be sent to e' +
          'ach agent in the mail'
      end
      object Label6: TLabel
        Left = 509
        Top = 482
        Width = 350
        Height = 13
        Caption = 'Type below to send to each agent in the cancellation request'
      end
      object cxGrid1: TcxGrid
        Left = -1
        Top = 16
        Width = 945
        Height = 418
        TabOrder = 0
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
          DataController.DataSource = SsDs
          DataController.KeyFieldNames = 'QuoServices_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
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
          Styles.ContentEven = cxStyleBlue
          Styles.ContentOdd = cxStyleGreen
          Bands = <
            item
              Width = 905
            end>
          object cxGridDBBandedTableView1QuoServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoServices_id'
            Visible = False
            Options.Editing = False
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1SendMail: TcxGridDBBandedColumn
            Caption = 'Send Mail'
            DataBinding.FieldName = 'SendMail'
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Options.Editing = False
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'AgentAddressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                FieldName = 'Organisation'
              end>
            Properties.ListSource = AgentDs
            Options.Editing = False
            Width = 154
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ServiceString: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'ServiceString'
            Width = 361
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn
            Caption = 'Confirmed On'
            DataBinding.FieldName = 'ConfirmedOn'
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CancelledOn: TcxGridDBBandedColumn
            Caption = 'Cancelled On'
            DataBinding.FieldName = 'CancelledOn'
            Width = 78
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
        Top = 433
        DataBinding.DataField = 'Remarks'
        DataBinding.DataSource = SsDs
        Style.Color = 13630926
        TabOrder = 1
        Height = 47
        Width = 941
      end
      object cxDBMemo8: TcxDBMemo
        Left = 3
        Top = 494
        DataBinding.DataField = 'RemarksHotel'
        DataBinding.DataSource = SsDs
        Style.Color = 11458559
        TabOrder = 2
        Height = 47
        Width = 489
      end
      object cxDBMemo9: TcxDBMemo
        Left = 511
        Top = 494
        DataBinding.DataField = 'RemarksHotelCancel'
        DataBinding.DataSource = SsDs
        Style.Color = 12635902
        TabOrder = 3
        Height = 47
        Width = 430
      end
    end
  end
  object AccSds: TSQLDataSet
    CommandText = 'QuoAccommodation'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
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
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AccCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object AccCdsHotelAddressbook_id: TIntegerField
      FieldName = 'HotelAddressbook_id'
    end
    object AccCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object AccCdsHotelCities_id: TIntegerField
      FieldName = 'HotelCities_id'
    end
    object AccCdsSelected: TBooleanField
      FieldName = 'Selected'
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
    object AccCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object AccCdsAccString: TStringField
      FieldName = 'AccString'
      Size = 200
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
    object AccCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object AccCdsReserveHotelOvernight: TBooleanField
      FieldName = 'ReserveHotelOvernight'
    end
    object AccCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
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
    CommandText = 'QuoTickets'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
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
    object TicketCdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
    end
    object TicketCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object TicketCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object TicketCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object TicketCdsNoOfTickets: TIntegerField
      FieldName = 'NoOfTickets'
    end
    object TicketCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object TicketCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TicketCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TicketCdsTicketString: TStringField
      FieldName = 'TicketString'
      Size = 200
    end
    object TicketCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object TicketCdsRemarksAgent: TStringField
      FieldName = 'RemarksAgent'
      Size = 200
    end
    object TicketCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object TicketCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object TicketCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object TicketCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object TicketCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object TicketCdsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object TicketCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object TicketCdsRemarksAgentCancel: TStringField
      FieldName = 'RemarksAgentCancel'
      Size = 200
    end
    object TicketCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
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
  object CxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 8
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16770790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleDarkRed: TcxStyle
      AssignedValues = [svColor]
      Color = 5592575
    end
  end
  object SsSds: TSQLDataSet
    CommandText = 
      'SELECT QuoServices_id, SendMail, Cities_id, AgentAddressbook_id,' +
      ' ServiceString, RequestedOn, ConfirmedOn, CancelledOn, Remarks,'#13 +
      #10'RemarksHotel, RemarksHotelCancel'#13#10'FROM QuoServices qs'#13#10'WHERE qs' +
      '.Quotations_id = :Quotations_id'#13#10'AND qs.Services_id IN (SELECT S' +
      'ervices_id FROM Services WHERE AdvBooking = 1)'#13#10'AND qs.ServiceDa' +
      'te IS NOT NULL'#13#10'AND qs.Selected = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 8
  end
  object SsDsp: TDataSetProvider
    DataSet = SsSds
    Left = 672
    Top = 8
  end
  object SsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SsDsp'
    AfterPost = SsCdsAfterPost
    Left = 688
    Top = 9
    object SsCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object SsCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object SsCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object SsCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object SsCdsServiceString: TStringField
      FieldName = 'ServiceString'
      Size = 200
    end
    object SsCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object SsCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object SsCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object SsCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object SsCdsRemarksHotel: TStringField
      FieldName = 'RemarksHotel'
      Size = 200
    end
    object SsCdsRemarksHotelCancel: TStringField
      FieldName = 'RemarksHotelCancel'
      Size = 200
    end
  end
  object SsDs: TDataSource
    DataSet = SsCds
    Left = 712
    Top = 11
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City'#13#10'FROM Cities'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 616
    Top = 120
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 640
    Top = 120
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 656
    Top = 120
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 672
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 195
    Top = 115
    object SetasConfirmed1: TMenuItem
      Caption = 'Set as Confirmed'
      OnClick = SetasConfirmed1Click
    end
  end
end
