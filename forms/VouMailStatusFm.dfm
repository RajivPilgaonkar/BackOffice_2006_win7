object VouMailStatusForm: TVouMailStatusForm
  Left = 146
  Top = 23
  Width = 943
  Height = 622
  Caption = 'Mail Status'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 45
    Align = alTop
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 312
      Top = 14
      Width = 113
      Height = 25
      Caption = 'Refresh'
      TabOrder = 0
      OnClick = cxButton3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 2
      TabOrder = 1
      Height = 40
      Width = 193
      object Label1: TLabel
        Left = 7
        Top = 23
        Width = 32
        Height = 13
        Caption = 'As Of'
        Transparent = True
      end
      object cxToDateEdit: TcxDateEdit
        Left = 63
        Top = 19
        Style.Color = 16777192
        TabOrder = 0
        Width = 121
      end
    end
    object cxButton4: TcxButton
      Left = 213
      Top = 13
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cxButton4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object cxButton5: TcxButton
      Left = 261
      Top = 13
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
    object cxUserCkb: TcxCheckBox
      Left = 552
      Top = 16
      Caption = 'Display Only for Logged in User'
      State = cbsChecked
      TabOrder = 4
      Transparent = True
      Width = 249
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 927
    Height = 40
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 20
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxButton2: TcxButton
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 45
    Width = 927
    Height = 499
    ActivePage = TabSheetPendingReqPackage
    Align = alClient
    TabOrder = 2
    object TabSheetPendingReq: TTabSheet
      Caption = 'Accommodation'
      object cxGridMail: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
        TabOrder = 0
        object cxGridMailDBTableView1: TcxGridDBTableView
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
        object cxGridMailDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusDs
          DataController.KeyFieldNames = 'VouchersAccommodation_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 891
            end>
          object cxGridMailDBBandedTableView1VouAccommodation_id: TcxGridDBBandedColumn
            Caption = 'VouAccommodation_id'
            DataBinding.FieldName = 'VouchersAccommodation_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1uid: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'IssuedBy'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1City: TcxGridDBBandedColumn
            DataBinding.FieldName = 'City'
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1organisation: TcxGridDBBandedColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1TourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'MasterTourCode'
            Options.Editing = False
            Options.Grouping = False
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1PaxName: TcxGridDBBandedColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'TourLeader'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1QuotationNo: TcxGridDBBandedColumn
            Caption = 'Vou No'
            DataBinding.FieldName = 'VoucherNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1AccString: TcxGridDBBandedColumn
            Caption = 'String'
            DataBinding.FieldName = 'AccString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 153
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1DateIn: TcxGridDBBandedColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 1
            SortOrder = soAscending
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridMailDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridMailLevel1: TcxGridLevel
          GridView = cxGridMailDBBandedTableView1
        end
      end
    end
    object TabSheetPendingReqTickets: TTabSheet
      Caption = 'Tickets'
      ImageIndex = 1
      object cxGridTicket: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
        TabOrder = 0
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
        object cxGridTicketDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusTicketDs
          DataController.KeyFieldNames = 'VouchersTickets_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 891
            end>
          object cxGridTicketDBBandedTableView1VouchersTickets_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VouchersTickets_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1uid: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'IssuedBy'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Filtering = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'MasterTourCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1PaxName: TcxGridDBBandedColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'TourLeader'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1VoucherNo: TcxGridDBBandedColumn
            Caption = 'Vou No.'
            DataBinding.FieldName = 'VoucherNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TicketString: TcxGridDBBandedColumn
            Caption = 'String'
            DataBinding.FieldName = 'TicketString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1TravelDate: TcxGridDBBandedColumn
            Caption = 'Travel Date'
            DataBinding.FieldName = 'TravelDate'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 146
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Mode: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Mode'
            Visible = False
            GroupIndex = 1
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridTicketDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridTicketLevel1: TcxGridLevel
          GridView = cxGridTicketDBBandedTableView1
        end
      end
    end
    object TabSheetPendingReqSS: TTabSheet
      Caption = 'Sight Seeing'
      ImageIndex = 2
      object cxGridSs: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
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
        object cxGridSsDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusSsDs
          DataController.KeyFieldNames = 'VouchersServices_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 891
            end>
          object cxGridSsDBBandedTableView1VouchersServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VouchersServices_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1IssuedBy: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'IssuedBy'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Filtering = False
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'organisation'
            Options.Editing = False
            Options.Filtering = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'MasterTourCode'
            Options.Editing = False
            Options.Filtering = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1TourLeader: TcxGridDBBandedColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'TourLeader'
            Options.Editing = False
            Options.Filtering = False
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1VoucherNo: TcxGridDBBandedColumn
            Caption = 'Vou. No'
            DataBinding.FieldName = 'VoucherNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1ServiceString: TcxGridDBBandedColumn
            Caption = 'String'
            DataBinding.FieldName = 'ServiceString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1TransferDate: TcxGridDBBandedColumn
            Caption = 'S/S Date'
            DataBinding.FieldName = 'TransferDate'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 211
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridSsDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridSsLevel1: TcxGridLevel
          GridView = cxGridSsDBBandedTableView1
        end
      end
    end
    object TabSheetPendingReqTrsf: TTabSheet
      Caption = 'Transfers'
      ImageIndex = 3
      object cxGridTrsf: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
        TabOrder = 0
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
        object cxGridTrsfDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusTrsfDs
          DataController.KeyFieldNames = 'VouchersServices_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 891
            end>
          object cxGridTrsfDBBandedTableView1VouchersServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VouchersServices_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1IssuedBy: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'IssuedBy'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Options.Filtering = False
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'organisation'
            Options.Editing = False
            Options.Filtering = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'MasterTourCode'
            Options.Editing = False
            Options.Filtering = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1TourLeader: TcxGridDBBandedColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'TourLeader'
            Options.Editing = False
            Options.Filtering = False
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1VoucherNo: TcxGridDBBandedColumn
            Caption = 'Vou. No'
            DataBinding.FieldName = 'VoucherNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1ServiceString: TcxGridDBBandedColumn
            Caption = 'String'
            DataBinding.FieldName = 'ServiceString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1TransferDate: TcxGridDBBandedColumn
            Caption = 'Transfer Date'
            DataBinding.FieldName = 'TransferDate'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Filtering = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 211
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridTrsfDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridTrsfLevel1: TcxGridLevel
          GridView = cxGridTrsfDBBandedTableView1
        end
      end
    end
    object TabSheetPendingReqTrans: TTabSheet
      Caption = 'Transport'
      ImageIndex = 4
      object cxGridTrans: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
        TabOrder = 0
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
        object cxGridTransDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusTransDs
          DataController.KeyFieldNames = 'VouchersTransport_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 1000
            end>
          object cxGridTransDBBandedTableView1VouchersTransport_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VouchersTransport_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1Organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'MasterTourCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1TourLeader: TcxGridDBBandedColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'TourLeader'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 87
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1VoucherNo: TcxGridDBBandedColumn
            Caption = 'Voucher No'
            DataBinding.FieldName = 'VoucherNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1FromPLace: TcxGridDBBandedColumn
            Caption = 'From'
            DataBinding.FieldName = 'FromPLace'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1ToPlace: TcxGridDBBandedColumn
            Caption = 'To'
            DataBinding.FieldName = 'ToPlace'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1FromDate: TcxGridDBBandedColumn
            Caption = 'From Date'
            DataBinding.FieldName = 'FromDate'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1ToDate: TcxGridDBBandedColumn
            Caption = 'To Date'
            DataBinding.FieldName = 'ToDate'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1TransString: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'TransString'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1IssuedBy: TcxGridDBBandedColumn
            Caption = 'Created By'
            DataBinding.FieldName = 'IssuedBy'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridTransDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
        object cxGridTransLevel1: TcxGridLevel
          GridView = cxGridTransDBBandedTableView1
        end
      end
    end
    object TabSheetPendingReqPackage: TTabSheet
      Caption = 'Packages'
      ImageIndex = 5
      object cxGridPackage: TcxGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 471
        Align = alClient
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
        object cxGridPackageDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MailStatusPackageDs
          DataController.KeyFieldNames = 'VouchersPackages_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 1000
            end>
          object cxGridPackageDBBandedTableView1VouchersPackages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VouchersPackages_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1Organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1MasterTourCode: TcxGridDBBandedColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'MasterTourCode'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1TourLeader: TcxGridDBBandedColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'TourLeader'
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1Phone: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Phone'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1VoucherNo: TcxGridDBBandedColumn
            Caption = 'Voucher No'
            DataBinding.FieldName = 'VoucherNo'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1From_Date: TcxGridDBBandedColumn
            Caption = 'From Date'
            DataBinding.FieldName = 'From_Date'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1To_Date: TcxGridDBBandedColumn
            Caption = 'To Date'
            DataBinding.FieldName = 'To_Date'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1From_Place: TcxGridDBBandedColumn
            Caption = 'From Place'
            DataBinding.FieldName = 'From_Place'
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1To_Place: TcxGridDBBandedColumn
            Caption = 'To Place'
            DataBinding.FieldName = 'To_Place'
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1TransString: TcxGridDBBandedColumn
            Caption = 'Description'
            DataBinding.FieldName = 'TransString'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            Caption = 'Requested On'
            DataBinding.FieldName = 'RequestedOn'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1IssuedBy: TcxGridDBBandedColumn
            Caption = 'Issued By'
            DataBinding.FieldName = 'IssuedBy'
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridPackageDBBandedTableView1Contact: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Contact'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridPackageDBBandedTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 520
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExpansAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpansAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
  end
  object SaveDialog: TSaveDialog
    Left = 163
    Top = 521
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 196
    Top = 521
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = cxGridMail
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 43693.532072303240000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object MailStatusSds: TSQLDataSet
    CommandText = 
      'SELECT va.VouchersAccommodation_id, a.City, a.organisation, a.Ph' +
      'one, v.MasterTourCode, v.TourLeader, v.VoucherNo, '#13#10'  v.[Descrip' +
      'tion] AS AccString, va.DateIn, va.RequestedOn, va.Remarks,'#13#10'  CA' +
      'SE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END' +
      ' AS IssuedBy,'#13#10' dbo.fn_GetContact(a.Addressbook_id) as Contact '#13 +
      #10'FROM VouchersAccommodation va '#13#10'LEFT JOIN Vouchers v ON va.Vouc' +
      'hers_id = v.Vouchers_id'#13#10'LEFT JOIN Addressbook a ON va.Addressbo' +
      'ok_id = a.Addressbook_id'#13#10'LEFT JOIN Quotations q ON q.TourCode =' +
      ' v.MasterTourCode AND q.Trial = 0'#13#10'LEFT JOIN AdmUsers adm ON q.A' +
      'dmUsers_id = adm.AdmUsers_id'#13#10'WHERE va.DateIn >= '#39'01/01/2009'#39#13#10'A' +
      'ND va.RequestedOn IS NOT NULL'#13#10'AND va.ConfirmedOn IS NULL'#13#10'AND v' +
      'a.DateIn > GETDATE()'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object MailStatusDsp: TDataSetProvider
    DataSet = MailStatusSds
    Left = 534
    Top = 224
  end
  object MailStatusCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusDsp'
    Left = 568
    Top = 224
    object MailStatusCdsVouchersAccommodation_id: TIntegerField
      FieldName = 'VouchersAccommodation_id'
    end
    object MailStatusCdsCity: TStringField
      FieldName = 'City'
    end
    object MailStatusCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object MailStatusCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object MailStatusCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
      Size = 10
    end
    object MailStatusCdsTourLeader: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object MailStatusCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object MailStatusCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
    end
    object MailStatusCdsAccString: TStringField
      FieldName = 'AccString'
      Size = 250
    end
    object MailStatusCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object MailStatusCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object MailStatusCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
  end
  object MailStatusDs: TDataSource
    DataSet = MailStatusCds
    Left = 600
    Top = 224
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 640
    Top = 40
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16770790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object MailStatusTicketSds: TSQLDataSet
    CommandText = 
      'SELECT vt.VouchersTickets_id, a.organisation, a.Phone, v.MasterT' +
      'ourCode, v.TourLeader, v.VoucherNo, '#13#10'  v.IssuedBy, v.[Descripti' +
      'on] AS TicketString, vt.TravelDate, vt.RequestedOn, vt.Remarks,'#13 +
      #10'  t.Details as Mode,'#13#10' dbo.fn_GetContact(a.Addressbook_id) as C' +
      'ontact '#13#10'FROM VouchersTickets vt'#13#10'LEFT JOIN Vouchers v ON vt.Vou' +
      'chers_id = v.Vouchers_id'#13#10'LEFT JOIN Addressbook a ON vt.Addressb' +
      'ook_id = a.Addressbook_id'#13#10'LEFT JOIN Tickets t ON vt.Tickets_id ' +
      '= t.Tickets_id'#13#10'LEFT JOIN Quotations q ON q.TourCode = v.MasterT' +
      'ourCode AND q.Trial = 0'#13#10'LEFT JOIN AdmUsers adm ON q.AdmUsers_id' +
      ' = adm.AdmUsers_id'#13#10'WHERE vt.TravelDate <= '#39'01/01/2009'#39#13#10'AND vt.' +
      'RequestedOn IS NOT NULL'#13#10'AND vt.ConfirmedOn IS NULL'#13#10'AND vt.Trav' +
      'elDate > GETDATE()'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 264
  end
  object MailStatusTicketDsp: TDataSetProvider
    DataSet = MailStatusTicketSds
    Left = 534
    Top = 264
  end
  object MailStatusTicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusTicketDsp'
    Left = 568
    Top = 264
    object MailStatusTicketCdsVouchersTickets_id: TIntegerField
      FieldName = 'VouchersTickets_id'
    end
    object MailStatusTicketCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object MailStatusTicketCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object MailStatusTicketCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
      Size = 10
    end
    object MailStatusTicketCdsTourLeader: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object MailStatusTicketCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object MailStatusTicketCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
    end
    object MailStatusTicketCdsTicketString: TStringField
      FieldName = 'TicketString'
      Size = 250
    end
    object MailStatusTicketCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object MailStatusTicketCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object MailStatusTicketCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusTicketCdsMode: TStringField
      FieldName = 'Mode'
      Size = 15
    end
    object MailStatusTicketCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
  end
  object MailStatusTicketDs: TDataSource
    DataSet = MailStatusTicketCds
    Left = 600
    Top = 264
  end
  object MailStatusTrsfSds: TSQLDataSet
    CommandText = 
      'SELECT vs.VouchersServices_id, a.organisation, a.Phone, v.Master' +
      'TourCode, v.TourLeader, v.VoucherNo, '#13#10'  v.[Description] AS Serv' +
      'iceString, vs.TransferDate, vs.RequestedOn, vs.Remarks,'#13#10'  CASE ' +
      'WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS' +
      ' IssuedBy,'#13#10' dbo.fn_GetContact(a.Addressbook_id) as Contact '#13#10'FR' +
      'OM VouchersServices vs'#13#10'LEFT JOIN Vouchers v ON vs.Vouchers_id =' +
      ' v.Vouchers_id'#13#10'LEFT JOIN Addressbook a ON vs.Addressbook_id = a' +
      '.Addressbook_id'#13#10'LEFT JOIN Quotations q ON q.TourCode = v.Master' +
      'TourCode AND q.Trial = 0'#13#10'LEFT JOIN AdmUsers adm ON q.AdmUsers_i' +
      'd = adm.AdmUsers_id'#13#10'WHERE vs.TransferDate <= '#39'01/01/2010'#39#13#10'AND ' +
      'vs.RequestedOn IS NOT NULL'#13#10'AND vs.ConfirmedOn IS NULL'#13#10'AND vs.T' +
      'ransferDate > GETDATE()'#13#10'AND vs.SightSeeing = 0'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 334
  end
  object MailStatusTrsfDsp: TDataSetProvider
    DataSet = MailStatusTrsfSds
    Left = 534
    Top = 334
  end
  object MailStatusTrsfCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusTrsfDsp'
    Left = 568
    Top = 334
    object MailStatusTrsfCdsVouchersServices_id: TIntegerField
      FieldName = 'VouchersServices_id'
    end
    object MailStatusTrsfCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object MailStatusTrsfCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object MailStatusTrsfCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
      Size = 10
    end
    object MailStatusTrsfCdsTourLeader: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object MailStatusTrsfCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object MailStatusTrsfCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
    end
    object MailStatusTrsfCdsServiceString: TStringField
      FieldName = 'ServiceString'
      Size = 250
    end
    object MailStatusTrsfCdsTransferDate: TSQLTimeStampField
      FieldName = 'TransferDate'
    end
    object MailStatusTrsfCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object MailStatusTrsfCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusTrsfCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
  end
  object MailStatusTrsfDs: TDataSource
    DataSet = MailStatusTrsfCds
    Left = 600
    Top = 334
  end
  object MailStatusSsSds: TSQLDataSet
    CommandText = 
      'SELECT vs.VouchersServices_id, a.organisation, a.Phone, v.Master' +
      'TourCode, v.TourLeader, v.VoucherNo, '#13#10'  v.[Description] AS Serv' +
      'iceString, vs.TransferDate, vs.RequestedOn, vs.Remarks,'#13#10'  CASE ' +
      'WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid END AS' +
      ' IssuedBy,'#13#10' dbo.fn_GetContact(a.Addressbook_id) as Contact '#13#10'FR' +
      'OM VouchersServices vs'#13#10'LEFT JOIN Vouchers v ON vs.Vouchers_id =' +
      ' v.Vouchers_id'#13#10'LEFT JOIN Addressbook a ON vs.Addressbook_id = a' +
      '.Addressbook_id'#13#10'LEFT JOIN Quotations q ON q.TourCode = v.Master' +
      'TourCode AND q.Trial = 0'#13#10'LEFT JOIN AdmUsers adm ON q.AdmUsers_i' +
      'd = adm.AdmUsers_id'#13#10'WHERE vs.TransferDate <= '#39'01/01/2010'#39#13#10'AND ' +
      'vs.RequestedOn IS NOT NULL'#13#10'AND vs.ConfirmedOn IS NULL'#13#10'AND vs.T' +
      'ransferDate > GETDATE()'#13#10'AND vs.SightSeeing = 1'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 302
  end
  object MailStatusSsDsp: TDataSetProvider
    DataSet = MailStatusSsSds
    Left = 534
    Top = 302
  end
  object MailStatusSsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusSsDsp'
    Left = 568
    Top = 302
    object IntegerField1: TIntegerField
      FieldName = 'VouchersServices_id'
    end
    object StringField1: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'MasterTourCode'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'VoucherNo'
    end
    object StringField5: TStringField
      FieldName = 'IssuedBy'
    end
    object StringField6: TStringField
      FieldName = 'ServiceString'
      Size = 250
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'TransferDate'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object StringField7: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusSsCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
  end
  object MailStatusSsDs: TDataSource
    DataSet = MailStatusSsCds
    Left = 600
    Top = 302
  end
  object MailStatusTransSds: TSQLDataSet
    CommandText = 
      'SELECT vt.VouchersTransport_id, a.Organisation, a.Phone, v.Maste' +
      'rTourCode, v.TourLeader, v.VoucherNo,'#13#10'  v.[Description] AS Tran' +
      'sString, vt.FromDate, vt.ToDate, vt.RequestedOn, vt.Remarks,'#13#10'  ' +
      'CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid E' +
      'ND AS IssuedBy,'#13#10'  vt.FromPLace, vt.ToPlace,'#13#10' dbo.fn_GetContact' +
      '(a.Addressbook_id) as Contact '#13#10'FROM VouchersTransport vt'#13#10'LEFT ' +
      'JOIN Vouchers v ON vt.Vouchers_id = v.Vouchers_id'#13#10'LEFT JOIN Add' +
      'ressbook a ON vt.Addressbook_id = a.Addressbook_id'#13#10'LEFT JOIN Qu' +
      'otations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0'#13#10'LEF' +
      'T JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id'#13#10'WHERE vt' +
      '.FromDate <= '#39'01/01/2010'#39#13#10'AND vt.RequestedOn IS NOT NULL'#13#10'AND v' +
      't.ConfirmedOn IS NULL'#13#10'AND vt.FromDate > GETDATE()'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 366
  end
  object MailStatusTransDsp: TDataSetProvider
    DataSet = MailStatusTransSds
    Left = 534
    Top = 366
  end
  object MailStatusTransCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusTransDsp'
    Left = 568
    Top = 366
    object MailStatusTransCdsVouchersTransport_id: TIntegerField
      FieldName = 'VouchersTransport_id'
    end
    object MailStatusTransCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object MailStatusTransCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object MailStatusTransCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
      Size = 10
    end
    object MailStatusTransCdsTourLeader: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object MailStatusTransCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object MailStatusTransCdsTransString: TStringField
      FieldName = 'TransString'
      Size = 250
    end
    object MailStatusTransCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object MailStatusTransCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
    end
    object MailStatusTransCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object MailStatusTransCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusTransCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
    end
    object MailStatusTransCdsFromPLace: TStringField
      FieldName = 'FromPLace'
      Size = 30
    end
    object MailStatusTransCdsToPlace: TStringField
      FieldName = 'ToPlace'
      Size = 30
    end
    object MailStatusTransCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
  end
  object MailStatusTransDs: TDataSource
    DataSet = MailStatusTransCds
    Left = 600
    Top = 366
  end
  object MailStatusPackageSds: TSQLDataSet
    CommandText = 
      'SELECT vp.VouchersPackages_id, a.Organisation, a.Phone, v.Master' +
      'TourCode, v.TourLeader, v.VoucherNo,'#13#10'  v.[Description] AS Trans' +
      'String, vp.From_Date, vp.To_Date, vp.RequestedOn, vp.Remarks,'#13#10' ' +
      ' CASE WHEN q.Quotations_id IS NULL THEN v.IssuedBy ELSE adm.Uid ' +
      'END AS IssuedBy,'#13#10'  vp.From_Place, vp.To_Place,'#13#10' dbo.fn_GetCont' +
      'act(a.Addressbook_id) as Contact '#13#10'FROM VouchersPackages vp'#13#10'LEF' +
      'T JOIN Vouchers v ON vp.Vouchers_id = v.Vouchers_id'#13#10'LEFT JOIN A' +
      'ddressbook a ON vp.Addressbook_id = a.Addressbook_id'#13#10'LEFT JOIN ' +
      'Quotations q ON q.TourCode = v.MasterTourCode AND q.Trial = 0'#13#10'L' +
      'EFT JOIN AdmUsers adm ON q.AdmUsers_id = adm.AdmUsers_id'#13#10'WHERE ' +
      'vp.From_Date <= '#39'01/01/2010'#39#13#10'AND vp.RequestedOn IS NOT NULL'#13#10'AN' +
      'D vp.ConfirmedOn IS NULL'#13#10'AND vp.From_Date > GETDATE()'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 406
  end
  object MailStatusPackageDsp: TDataSetProvider
    DataSet = MailStatusPackageSds
    Left = 534
    Top = 406
  end
  object MailStatusPackageCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MailStatusPackageDsp'
    Left = 568
    Top = 406
    object MailStatusPackageCdsVouchersPackages_id: TIntegerField
      FieldName = 'VouchersPackages_id'
    end
    object MailStatusPackageCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object MailStatusPackageCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object MailStatusPackageCdsMasterTourCode: TStringField
      FieldName = 'MasterTourCode'
      Size = 10
    end
    object MailStatusPackageCdsTourLeader: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object MailStatusPackageCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object MailStatusPackageCdsTransString: TStringField
      FieldName = 'TransString'
      Size = 250
    end
    object MailStatusPackageCdsFrom_Date: TSQLTimeStampField
      FieldName = 'From_Date'
    end
    object MailStatusPackageCdsTo_Date: TSQLTimeStampField
      FieldName = 'To_Date'
    end
    object MailStatusPackageCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object MailStatusPackageCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object MailStatusPackageCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
    end
    object MailStatusPackageCdsFrom_Place: TStringField
      FieldName = 'From_Place'
      Size = 30
    end
    object MailStatusPackageCdsTo_Place: TStringField
      FieldName = 'To_Place'
      Size = 30
    end
    object MailStatusPackageCdsContact: TStringField
      FieldName = 'Contact'
      Size = 100
    end
  end
  object MailStatusPackageDs: TDataSource
    DataSet = MailStatusPackageCds
    Left = 600
    Top = 406
  end
end
