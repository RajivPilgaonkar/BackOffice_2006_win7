object QuoModuleElemListForm: TQuoModuleElemListForm
  Left = 281
  Top = 63
  Width = 978
  Height = 595
  Caption = 'Listing'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 54
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 11
      Width = 22
      Height = 13
      Caption = 'City'
    end
    object Label3: TLabel
      Left = 312
      Top = 14
      Width = 51
      Height = 13
      Caption = 'Num Pax'
    end
    object cxCityLcmb: TcxLookupComboBox
      Left = 37
      Top = 8
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 180
    end
    object cxNumPaxTextEdit: TcxTextEdit
      Left = 371
      Top = 10
      TabOrder = 1
      Width = 52
    end
    object cxRefreshButton: TcxButton
      Left = 428
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = cxRefreshButtonClick
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 560
      Top = 6
      Caption = 'Sightseeing Options'
      Properties.Items = <>
      TabOrder = 3
      Height = 43
      Width = 305
    end
    object cxTransportCkb: TcxCheckBox
      Left = 568
      Top = 27
      Caption = 'Transport'
      State = cbsChecked
      TabOrder = 4
      Transparent = True
      Width = 97
    end
    object cxMiscCkb: TcxCheckBox
      Left = 689
      Top = 27
      Caption = 'Misc'
      State = cbsChecked
      TabOrder = 5
      Transparent = True
      Width = 88
    end
    object cxGuideCkb: TcxCheckBox
      Left = 790
      Top = 27
      Caption = 'Guide'
      State = cbsChecked
      TabOrder = 6
      Transparent = True
      Width = 59
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 520
    Width = 962
    Height = 37
    Align = alBottom
    TabOrder = 1
    object Label2: TLabel
      Left = 144
      Top = 8
      Width = 209
      Height = 13
      Caption = '<Dbl Click OR Right Click to Select>'
    end
    object cxCloseBtn: TcxButton
      Left = 882
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
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
      Left = 5
      Top = 5
      Width = 65
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      Kind = cxbkDropDownButton
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 54
    Width = 962
    Height = 466
    ActivePage = cxSSTabSheet
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 460
    ClientRectLeft = 3
    ClientRectRight = 956
    ClientRectTop = 26
    object cxModuleTabSheet: TcxTabSheet
      Caption = 'Module'
      ImageIndex = 0
      object cxGridMaster: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
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
        object cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          OnDblClick = cxGridMasterDBBandedTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ModulesDs
          DataController.KeyFieldNames = 'FixedItinCosts_id'
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
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridMasterDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 770
            end>
          object cxGridMasterDBBandedTableView1FixedItinCosts_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FixedItinCosts_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1title: TcxGridDBBandedColumn
            Caption = 'Module'
            DataBinding.FieldName = 'title'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 155
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn
            Caption = 'Nights'
            DataBinding.FieldName = 'nights'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1FromCity: TcxGridDBBandedColumn
            Caption = 'From City'
            DataBinding.FieldName = 'FromCity'
            Options.Editing = False
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1ToCity: TcxGridDBBandedColumn
            Caption = 'To City'
            DataBinding.FieldName = 'ToCity'
            Options.Editing = False
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1CityOrder: TcxGridDBBandedColumn
            Caption = 'City Order'
            DataBinding.FieldName = 'CityOrder'
            Visible = False
            Options.Editing = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1wef: TcxGridDBBandedColumn
            Caption = 'Wef'
            DataBinding.FieldName = 'wef'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridMasterDBBandedTableView1x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object cxGridMasterLevel1: TcxGridLevel
          GridView = cxGridMasterDBBandedTableView1
        end
      end
    end
    object cxAccTabSheet: TcxTabSheet
      Caption = 'Accommodation'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
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
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = AccDs
          DataController.KeyFieldNames = 'ElemAccommodation_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView1StylesGetContentStyle
          Bands = <
            item
              Width = 818
            end>
          object cxGridDBBandedTableView1ElemAccommodation_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemAccommodation_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Organisation: TcxGridDBBandedColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'Organisation'
            Width = 132
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1AC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AC'
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1RoomType: TcxGridDBBandedColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'RoomType'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1MealPlan: TcxGridDBBandedColumn
            Caption = 'Meal Plan'
            DataBinding.FieldName = 'MealPlan'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CostSingle: TcxGridDBBandedColumn
            Caption = 'Single'
            DataBinding.FieldName = 'CostSingle'
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CostDouble: TcxGridDBBandedColumn
            Caption = 'Double'
            DataBinding.FieldName = 'CostDouble'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CostTriple: TcxGridDBBandedColumn
            Caption = 'Triple'
            DataBinding.FieldName = 'CostTriple'
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1FromDate: TcxGridDBBandedColumn
            Caption = 'From Date'
            DataBinding.FieldName = 'FromDate'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ToDate: TcxGridDBBandedColumn
            Caption = 'To Date'
            DataBinding.FieldName = 'ToDate'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBBandedTableView1
        end
      end
    end
    object cxTrsfTabSheet: TcxTabSheet
      Caption = 'Transfer'
      ImageIndex = 2
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
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
        object cxGridDBBandedTableView2: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView2DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TrsfDs
          DataController.KeyFieldNames = 'ElemServices_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView2StylesGetContentStyle
          Bands = <
            item
              Width = 818
            end>
          object cxGridDBBandedTableView2ElemServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemServices_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 131
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Description: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'Description'
            Options.Editing = False
            Options.Filtering = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 230
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Vehicle: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Vehicle'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 169
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 2
            SortOrder = soAscending
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 1
            SortOrder = soAscending
            Width = 115
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBBandedTableView2
        end
      end
    end
    object cxSSTabSheet: TcxTabSheet
      Caption = 'Sightseeing'
      ImageIndex = 3
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 953
        Height = 434
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
        object cxGridDBBandedTableView3: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView3DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = SsDs
          DataController.KeyFieldNames = 'ElemServices_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView3StylesGetContentStyle
          Bands = <
            item
              Width = 818
            end>
          object cxGridDBBandedTableView3ElemServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemServices_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Organisation: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Description: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'Description'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 261
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 126
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3TransportCost: TcxGridDBBandedColumn
            Caption = 'Transport Cost'
            DataBinding.FieldName = 'TransportCost'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3MiscCost: TcxGridDBBandedColumn
            Caption = 'Misc Cost'
            DataBinding.FieldName = 'MiscCost'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3GuideCost: TcxGridDBBandedColumn
            Caption = 'Guide Cost'
            DataBinding.FieldName = 'GuideCost'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBBandedTableView3
        end
      end
    end
    object cxTrainTabSheet: TcxTabSheet
      Caption = 'Train'
      ImageIndex = 4
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
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
        object cxGridDBBandedTableView4: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView4DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TrainDs
          DataController.KeyFieldNames = 'ElemTickets_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView4StylesGetContentStyle
          Bands = <
            item
              Width = 818
            end>
          object cxGridDBBandedTableView4ElemTickets_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemTickets_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4ToCity: TcxGridDBBandedColumn
            Caption = 'To'
            DataBinding.FieldName = 'ToCity'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4TrainNo: TcxGridDBBandedColumn
            Caption = 'Train No'
            DataBinding.FieldName = 'TrainNo'
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4TrainName: TcxGridDBBandedColumn
            Caption = 'Train'
            DataBinding.FieldName = 'TrainName'
            Width = 235
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Timings: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Timings'
            Width = 112
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Class: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Class'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBBandedTableView4
        end
      end
    end
    object cxFlightTabSheet: TcxTabSheet
      Caption = 'Flights'
      ImageIndex = 7
      object cxGrid7: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView8: TcxGridDBTableView
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
        object cxGridDBBandedTableView7: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView7DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = FlightDs
          DataController.KeyFieldNames = 'FlightSectorFaresIndia_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView7StylesGetContentStyle
          Bands = <
            item
              Width = 601
            end>
          object cxGridDBBandedTableView7QuoFixedRatesTickets_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoFixedRatesTickets_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView7ToCity: TcxGridDBBandedColumn
            Caption = 'To City'
            DataBinding.FieldName = 'ToCity'
            SortIndex = 0
            SortOrder = soAscending
            Width = 180
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView7Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Width = 157
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView7Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Visible = False
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView7FlightNo: TcxGridDBBandedColumn
            Caption = 'Flight No'
            DataBinding.FieldName = 'FlightNo'
            Width = 288
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView7x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridLevel7: TcxGridLevel
          GridView = cxGridDBBandedTableView7
        end
      end
    end
    object cxDriveTabSheet: TcxTabSheet
      Caption = 'Car'
      ImageIndex = 5
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView6: TcxGridDBTableView
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
        object cxGridDBBandedTableView5: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView5DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = CarDs
          DataController.KeyFieldNames = 'ElemCars_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView5StylesGetContentStyle
          Bands = <
            item
              Width = 884
            end>
          object cxGridDBBandedTableView5ElemCars_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemCars_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Agent: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Agent'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 214
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Vehicle: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Vehicle'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 136
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 84
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 84
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Module: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Module'
            Width = 143
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Sector: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Sector'
            Width = 146
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBBandedTableView5
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Inter City'
      ImageIndex = 6
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView7: TcxGridDBTableView
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
        object cxGridDBBandedTableView6: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView6DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = InterCitiesDs
          DataController.KeyFieldNames = 'ElemInterCities_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView6StylesGetContentStyle
          Bands = <
            item
              Width = 735
            end>
          object cxGridDBBandedTableView6ElemInterCities_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemInterCities_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6Agent: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Agent'
            Options.Editing = False
            Options.Grouping = False
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6Vehicle: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Vehicle'
            Options.Editing = False
            Options.Grouping = False
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6FromCity: TcxGridDBBandedColumn
            Caption = 'From City'
            DataBinding.FieldName = 'FromCity'
            Options.Editing = False
            Options.Grouping = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6ToCity: TcxGridDBBandedColumn
            Caption = 'To City'
            DataBinding.FieldName = 'ToCity'
            Options.Editing = False
            Options.Grouping = False
            Width = 131
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Options.Editing = False
            Options.Grouping = False
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Options.Editing = False
            Options.Grouping = False
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6x_Count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBBandedTableView6
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'City Groups'
      ImageIndex = 8
      object cxGrid8: TcxGrid
        Left = 0
        Top = 0
        Width = 961
        Height = 438
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView9: TcxGridDBTableView
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
        object cxGridDBBandedTableView8: TcxGridDBBandedTableView
          OnDblClick = cxGridDBBandedTableView8DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = CityGroupsDs
          DataController.KeyFieldNames = 'ElemCityGroups_id'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.OnGetContentStyle = cxGridDBBandedTableView8StylesGetContentStyle
          Bands = <
            item
              Width = 735
            end>
          object cxGridDBBandedTableView8ElemCityGroups_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ElemCityGroups_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8Agent: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Agent'
            Width = 108
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8Vehicle: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Vehicle'
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8CarHireGroup: TcxGridDBBandedColumn
            Caption = 'City Group'
            DataBinding.FieldName = 'CarHireGroup'
            Width = 186
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8CurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8Vehicles_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Vehicles_id'
            Visible = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView8x_count: TcxGridDBBandedColumn
            DataBinding.FieldName = 'x_count'
            Visible = False
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGridLevel8: TcxGridLevel
          GridView = cxGridDBBandedTableView8
        end
      end
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'ORDER BY c.City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 224
    Top = 10
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 238
    Top = 11
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 256
    Top = 10
    object IntegerField2: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField2: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 268
    Top = 10
  end
  object ModulesSds: TSQLDataSet
    CommandText = 
      'SELECT fc.FixedItinCosts_id, f.title, f.nights, fc.Cost, fc.wef,' +
      ' c.CurrencyCode, f.FixedItin_id, c1.City AS FromCity, c2.City AS' +
      ' ToCity,'#13#10'               CASE WHEN :x_cities_id = c1.Cities_id T' +
      'HEN 1 ELSE 2 END AS CityOrder,'#13#10'               (SELECT COUNT(*) ' +
      'FROM QuoModuleDetails qmd WHERE qmd.QuoModules_id = :QuoModules_' +
      'id AND qmd.FixedItin_id IS NOT NULL AND qmd.FixedItin_id = f.Fix' +
      'edItin_id) AS x_count'#13#10'FROM FixedItin f LEFT JOIN FixedItinCosts' +
      ' fc ON f.FixedItin_id = fc.FixedItin_id'#13#10'                 LEFT J' +
      'OIN Currencies c ON fc.Currencies_id = c.Currencies_id'#13#10'        ' +
      '         LEFT JOIN Cities c1 ON f.StartCities_id = c1.Cities_id'#13 +
      #10'                 LEFT JOIN Cities c2 ON f.EndCities_id = c2.Cit' +
      'ies_id'#13#10'WHERE f.Addressbook_id = 2137'#13#10'AND ReadyTours = 0'#13#10'and (' +
      '(:x_date between wef and wet) or (:x_date >= wef and wet is null' +
      '))'#13#10'and :x_NumPax between FromPax and ToPax'#13#10'ORDER BY fc.wef, 10' +
      ', f.title, c.CurrencyCode, fc.Cost'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_date'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_date'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_NumPax'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 128
  end
  object ModulesDsp: TDataSetProvider
    DataSet = ModulesSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 128
  end
  object ModulesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ModulesDsp'
    Left = 144
    Top = 128
    object ModulesCdsFixedItinCosts_id: TIntegerField
      FieldName = 'FixedItinCosts_id'
    end
    object ModulesCdstitle: TStringField
      FieldName = 'title'
      Size = 254
    end
    object ModulesCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ModulesCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ModulesCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object ModulesCdsnights: TIntegerField
      FieldName = 'nights'
    end
    object ModulesCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModulesCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object ModulesCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object ModulesCdsCityOrder: TIntegerField
      FieldName = 'CityOrder'
    end
    object ModulesCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
  end
  object ModulesDs: TDataSource
    DataSet = ModulesCds
    Left = 176
    Top = 128
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT ea.ElemAccommodation_id, a.Organisation, ea.FromDate, ea.' +
      'ToDate, ea.AC, rt.RoomType, mp.MealPlan, '#13#10'       ea.CostSingle,' +
      ' ea.CostDouble, ea.CostTriple, c.CurrencyCode, ea.Addressbook_id' +
      ','#13#10'      (SELECT COUNT(*) FROM QuoModuleDetails qmd WHERE qmd.Qu' +
      'oModules_id = :QuoModules_id AND qmd.HotelAddressbook_id IS NOT ' +
      'NULL AND qmd.HotelAddressbook_id = ea.Addressbook_id) AS x_count' +
      #13#10'FROM ElemAccommodation ea'#13#10'LEFT jOIN Addressbook a ON ea.Addre' +
      'ssbook_id = a.Addressbook_id'#13#10'LEFT JOIN RoomTypes rt ON ea.RoomT' +
      'ypes_id = rt.RoomTypes_id'#13#10'LEFT JOIN MealPlans mp ON ea.MealPlan' +
      's_id = mp.MealPlans_id'#13#10'LEFT JOIN Currencies c ON ea.Currencies_' +
      'id = c.Currencies_id'#13#10'WHERE a.Cities_id = :x_cities_id'#13#10'AND ((:x' +
      '_wef BETWEEN FromDate AND ToDate) OR (:x_wef >= FromDate AND ToD' +
      'ate IS NULL))'#13#10'ORDER BY ea.FromDate, a.Organisation, c.CurrencyC' +
      'ode'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 160
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 160
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    Left = 144
    Top = 160
    object AccCdsElemAccommodation_id: TIntegerField
      FieldName = 'ElemAccommodation_id'
    end
    object AccCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object AccCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object AccCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object AccCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object AccCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object AccCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 15
    end
    object AccCdsCostSingle: TFMTBCDField
      FieldName = 'CostSingle'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object AccCdsCostDouble: TFMTBCDField
      FieldName = 'CostDouble'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object AccCdsCostTriple: TFMTBCDField
      FieldName = 'CostTriple'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object AccCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object AccCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AccCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 176
    Top = 160
  end
  object TrsfSds: TSQLDataSet
    CommandText = 
      'SELECT es.ElemServices_id, a.Organisation, s.Description, v.Vehi' +
      'cle, es.Wef, esc.Cost, c.CurrencyCode, es.Services_id, '#13#10'       ' +
      's.TransferTypes_id, ct.City,'#13#10'       (SELECT COUNT(*) FROM QuoMo' +
      'duleDetails qmd WHERE qmd.QuoModules_id = :QuoModules_id AND qmd' +
      '.Services_id IS NOT NULL AND qmd.Services_id = es.Services_id) A' +
      'S x_count'#13#10'FROM ElemServices es'#13#10'LEFT JOIN ElemServicesCosts esc' +
      ' ON es.ElemServices_id = esc.ElemServices_id'#13#10'LEFT jOIN Addressb' +
      'ook a ON es.AgentAddressbook_id = a.Addressbook_id'#13#10'LEFT JOIN Se' +
      'rvices s ON s.Services_id = es.Services_id'#13#10'LEFT JOIN Cities ct ' +
      'ON s.Cities_id = ct.Cities_id'#13#10'LEFT JOIN Currencies c ON esc.Cur' +
      'rencies_id = c.Currencies_id'#13#10'LEFT JOIN Vehicles v ON esc.Vehicl' +
      'es_id = v.Vehicles_id'#13#10'WHERE s.Cities_id = :x_cities_id'#13#10'AND es.' +
      'Wef = (SELECT MAX(es2.Wef) FROM ElemServices es2'#13#10'              ' +
      ' WHERE es.Services_id = es2.Services_id'#13#10'                 AND es' +
      '2.Wef < :x_wef)'#13#10'AND es.SightSeeing = 0'#13#10'AND esc.NumPax = :NumPa' +
      'x'#13#10'ORDER BY es.wef, a.Organisation, s.Description, v.Vehicle, c.' +
      'CurrencyCode'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPax'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 200
  end
  object TrsfDsp: TDataSetProvider
    DataSet = TrsfSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 200
  end
  object TrsfCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrsfDsp'
    Left = 144
    Top = 200
    object TrsfCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
    end
    object TrsfCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object TrsfCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object TrsfCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object TrsfCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TrsfCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TrsfCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object TrsfCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object TrsfCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object TrsfCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object TrsfCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
  end
  object TrsfDs: TDataSource
    DataSet = TrsfCds
    Left = 176
    Top = 200
  end
  object SsSds: TSQLDataSet
    CommandText = 
      'SELECT es.ElemServices_id, a.Organisation, s.Description, v.Vehi' +
      'cle, es.Wef, esc.Cost, c.CurrencyCode, es.Services_id,'#13#10'  (SELEC' +
      'T COUNT(*) FROM QuoModuleDetails qmd WHERE qmd.QuoModules_id = :' +
      'QuoModules_id AND qmd.Services_id IS NOT NULL AND qmd.Services_i' +
      'd = es.Services_id) AS x_count,'#13#10'esc.TransportCost, esc.MiscCost' +
      ', esc.GuideCost'#13#10'FROM ElemServices es'#13#10'LEFT JOIN ElemServicesCos' +
      'ts esc ON es.ElemServices_id = esc.ElemServices_id'#13#10'LEFT jOIN Ad' +
      'dressbook a ON es.AgentAddressbook_id = a.Addressbook_id'#13#10'LEFT J' +
      'OIN Services s ON s.Services_id = es.Services_id'#13#10'LEFT JOIN Citi' +
      'es ct ON s.Cities_id = ct.Cities_id'#13#10'LEFT JOIN Currencies c ON e' +
      'sc.Currencies_id = c.Currencies_id'#13#10'LEFT JOIN Vehicles v ON esc.' +
      'Vehicles_id = v.Vehicles_id'#13#10'WHERE s.Cities_id = :x_cities_id'#13#10'A' +
      'ND es.Wef = (SELECT MAX(es2.Wef) FROM ElemServices es2'#13#10'        ' +
      '       WHERE es.Services_id = es2.Services_id'#13#10'                 ' +
      'AND es2.Wef < :x_wef)'#13#10'AND es.SightSeeing = 1'#13#10'AND esc.NumPax = ' +
      ':NumPax'#13#10'ORDER BY es.wef, a.Organisation, s.Description, v.Vehic' +
      'le, c.CurrencyCode'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPax'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 240
  end
  object SsDsp: TDataSetProvider
    DataSet = SsSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 240
  end
  object SsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SsDsp'
    Left = 144
    Top = 240
    object SsCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
    end
    object SsCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object SsCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object SsCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object SsCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SsCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object SsCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object SsCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object SsCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
    object SsCdsTransportCost: TFMTBCDField
      FieldName = 'TransportCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object SsCdsMiscCost: TFMTBCDField
      FieldName = 'MiscCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object SsCdsGuideCost: TFMTBCDField
      FieldName = 'GuideCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SsDs: TDataSource
    DataSet = SsCds
    Left = 176
    Top = 240
  end
  object TrainSds: TSQLDataSet
    CommandText = 
      'SELECT et.ElemTickets_id, ct.City AS FromCity, ct2.City AS ToCit' +
      'y, et.TrainNo, cl.Class, et.Wef, '#13#10'  CASE WHEN ac_cc_cost > 0.0 ' +
      'THEN ac_cc_cost WHEN ac_2t_cost > 0.0 THEN ac_2t_cost WHEN ac_3t' +
      '_cost > 0.0 THEN ac_3t_cost END AS Cost,'#13#10'  c.CurrencyCode, et.T' +
      'imings, t.TrainName,'#13#10'(SELECT COUNT(*) FROM QuoModuleDetails qmd' +
      ' WHERE qmd.QuoModules_id = :QuoModules_id AND qmd.TrainNo IS NOT' +
      ' NULL AND qmd.TrainNo = et.TrainNo) AS x_count'#13#10'FROM ElemTickets' +
      ' et'#13#10'LEFT JOIN Cities ct ON et.From_Cities_id = ct.Cities_id'#13#10'LE' +
      'FT JOIN Cities ct2 ON et.To_Cities_id = ct2.Cities_id'#13#10'LEFT JOIN' +
      ' Class cl ON et.Class_id = cl.CLass_id'#13#10'LEFT JOIN Currencies c O' +
      'N et.Currencies_id = c.Currencies_id'#13#10'LEFT JOIN Trains t ON et.T' +
      'rains_id = t.Trains_id'#13#10'WHERE et.Tickets_id = 2'#13#10'AND et.From_Cit' +
      'ies_id = :x_cities_id'#13#10'AND et.Wef = (SELECT MAX(et2.Wef) FROM El' +
      'emTickets et2'#13#10'               WHERE et.TrainNo = et2.TrainNo '#13#10' ' +
      '                AND et.Tickets_id = et2.Tickets_id'#13#10'            ' +
      '     AND et.From_Cities_id = et2.From_Cities_id'#13#10'               ' +
      '  AND et.To_Cities_id = et2.To_Cities_id '#13#10'                 AND ' +
      'et2.Wef < :x_wef)'#13#10'ORDER BY ct.City, t.TrainName, cl.Class'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 288
  end
  object TrainDsp: TDataSetProvider
    DataSet = TrainSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 288
  end
  object TrainCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainDsp'
    Left = 144
    Top = 288
    object TrainCdsElemTickets_id: TIntegerField
      FieldName = 'ElemTickets_id'
    end
    object TrainCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object TrainCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object TrainCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object TrainCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TrainCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TrainCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object TrainCdsTimings: TStringField
      FieldName = 'Timings'
      Size = 30
    end
    object TrainCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
    object TrainCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object TrainCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
  end
  object TrainDs: TDataSource
    DataSet = TrainCds
    Left = 176
    Top = 288
  end
  object CarSds: TSQLDataSet
    CommandText = 
      'SELECT ec.ElemCars_id, a.Organisation AS Agent, v.Vehicle, ct.Ci' +
      'ty, ec.Wef, c.CurrencyCode, ecc.Cost, ec.PaxName AS Module, ec.S' +
      'ector,'#13#10'ec.FromCities_id, ec.ToCities_id,'#13#10'      (SELECT COUNT(*' +
      ') FROM QuoModuleDetails qmd WHERE qmd.QuoModules_id = :QuoModule' +
      's_id '#13#10'          AND qmd.TrsType = 5  AND qmd.FromCities_id = ec' +
      '.FromCities_id AND qmd.ToCities_id = ec.ToCities_id) AS x_count'#13 +
      #10'  FROM ElemCars ec'#13#10'       LEFT JOIN ElemCarsCosts ecc ON ec.El' +
      'emCars_id = ecc.ElemCars_id'#13#10'       LEFT JOIN Addressbook a ON e' +
      'c.Addressbook_id = a.Addressbook_id'#13#10'       LEFT JOIN Vehicles v' +
      ' ON ecc.Vehicles_id = v.Vehicles_id'#13#10'       LEFT JOIN Cities ct ' +
      'ON ec.ServiceCities_id = ct.Cities_id'#13#10'       LEFT JOIN Currenci' +
      'es c ON ecc.Currencies_id = c.Currencies_id'#13#10'WHERE ec.ServiceCit' +
      'ies_id = :x_cities_id'#13#10'AND ((:x_wef BETWEEN Wef AND Wet) OR (:x_' +
      'wef >= Wef AND Wet IS NULL))'#13#10'AND ecc.NumPax = :NumPax'#13#10'ORDER BY' +
      ' a.Organisation, v.Vehicle, ec.Wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPax'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 328
  end
  object CarDsp: TDataSetProvider
    DataSet = CarSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 328
  end
  object CarCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CarDsp'
    Left = 144
    Top = 328
    object CarCdsElemCars_id: TIntegerField
      FieldName = 'ElemCars_id'
    end
    object CarCdsAgent: TStringField
      FieldName = 'Agent'
      Size = 60
    end
    object CarCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object CarCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object CarCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CarCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CarCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarCdsModule: TStringField
      FieldName = 'Module'
      Size = 100
    end
    object CarCdsSector: TStringField
      FieldName = 'Sector'
      Size = 100
    end
    object CarCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object CarCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object CarCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
  end
  object CarDs: TDataSource
    DataSet = CarCds
    Left = 176
    Top = 328
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 880
    Top = 72
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11468759
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16695504
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13559807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
    object cxStyleRed2: TcxStyle
      AssignedValues = [svColor]
      Color = 8947967
    end
    object cxStyleGrey: TcxStyle
      AssignedValues = [svColor]
      Color = 14079702
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 347
    Top = 187
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
  end
  object InterCitiesSds: TSQLDataSet
    CommandText = 
      'SELECT e.ElemInterCities_id, a.Organisation AS Agent, v.Vehicle,' +
      ' ct1.City AS FromCity, ct2.City AS ToCity, e.Wef, c.CurrencyCode' +
      ', '#13#10'       ec.Cost, ec.Vehicles_id, e.FromCities_id, e.ToCities_' +
      'id,'#13#10'      (SELECT COUNT(*) FROM QuoModuleDetails qmd WHERE qmd.' +
      'QuoModules_id = :QuoModules_id '#13#10'          AND qmd.TrsType = 5 A' +
      'ND qmd.P2P = 1 AND qmd.FromCities_id = e.FromCities_id AND qmd.T' +
      'oCities_id = e.ToCities_id) AS x_count'#13#10'  FROM ElemInterCities e' +
      #13#10'       LEFT JOIN ElemInterCitiesCosts ec ON e.ElemInterCities_' +
      'id = ec.ElemInterCities_id'#13#10'       LEFT JOIN Addressbook a ON e.' +
      'Addressbook_id = a.Addressbook_id'#13#10'       LEFT JOIN Vehicles v O' +
      'N ec.Vehicles_id = v.Vehicles_id'#13#10'       LEFT JOIN Cities ct1 ON' +
      ' e.FromCities_id = ct1.Cities_id'#13#10'       LEFT JOIN Cities ct2 ON' +
      ' e.ToCities_id = ct2.Cities_id'#13#10'       LEFT JOIN Currencies c ON' +
      ' ec.Currencies_id = c.Currencies_id'#13#10'WHERE e.FromCities_id = :x_' +
      'cities_id'#13#10'AND ((:x_wef BETWEEN e.Wef AND e.Wet) OR (:x_wef >= e' +
      '.Wef AND e.Wet IS NULL))'#13#10'AND ec.NumPax = :NumPax'#13#10'ORDER BY a.Or' +
      'ganisation, v.Vehicle, e.Wef'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPax'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 368
  end
  object InterCitiesDsp: TDataSetProvider
    DataSet = InterCitiesSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 368
  end
  object InterCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InterCitiesDsp'
    Left = 144
    Top = 368
    object InterCitiesCdsElemInterCities_id: TIntegerField
      FieldName = 'ElemInterCities_id'
    end
    object InterCitiesCdsAgent: TStringField
      FieldName = 'Agent'
      Size = 60
    end
    object InterCitiesCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object InterCitiesCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object InterCitiesCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object InterCitiesCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object InterCitiesCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object InterCitiesCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object InterCitiesCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object InterCitiesCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object InterCitiesCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object InterCitiesCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
  end
  object InterCitiesDs: TDataSource
    DataSet = InterCitiesCds
    Left = 176
    Top = 368
  end
  object FlightSds: TSQLDataSet
    CommandText = 
      'SELECT f.FlightSectorFaresIndia_id, ct.City AS FromCity, '#13#10'ct2.C' +
      'ity AS ToCity, f.Wef, 0.0 AS Cost, f.FlightNo,'#13#10'(SELECT COUNT(*)' +
      ' FROM QuoModuleDetails qmd '#13#10'WHERE qmd.QuoModules_id = :QuoModul' +
      'es_id AND qmd.Tickets_id = 1 AND f.From_Cities_id = qmd.FromCiti' +
      'es_id '#13#10'AND f.To_Cities_id = qmd.ToCities_id) AS x_count,'#13#10'ct2.C' +
      'ities_id'#13#10'FROM FlightSectorFaresIndia f'#13#10'LEFT JOIN Cities ct ON ' +
      'f.From_Cities_id = ct.Cities_id'#13#10'LEFT JOIN Cities ct2 ON f.To_Ci' +
      'ties_id = ct2.Cities_id'#13#10'WHERE f.From_Cities_id = :x_cities_id'#13#10 +
      'AND f.Wef = (SELECT MAX(f2.Wef) FROM FlightSectorFaresIndia f2'#13#10 +
      '               WHERE f.FlightNo = f2.FlightNo'#13#10'                 ' +
      'AND f.From_Cities_id = f2.From_Cities_id'#13#10'                 AND f' +
      '.To_Cities_id = f2.To_Cities_id '#13#10'                 AND ((f2.wet ' +
      'IS NULL) OR (:x_wef BETWEEN f2.Wef AND f2.Wet)))'#13#10'ORDER BY ct2.C' +
      'ity, f.FlightNo'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 432
  end
  object FlightDsp: TDataSetProvider
    DataSet = FlightSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 432
  end
  object FlightCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FlightDsp'
    Left = 144
    Top = 432
    object FlightCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object FlightCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object FlightCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object FlightCdsCost: TBCDField
      FieldName = 'Cost'
      Precision = 1
      Size = 1
    end
    object FlightCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object FlightCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
    object FlightCdsFlightSectorFaresIndia_id: TIntegerField
      FieldName = 'FlightSectorFaresIndia_id'
    end
    object FlightCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object FlightDs: TDataSource
    DataSet = FlightCds
    Left = 176
    Top = 432
  end
  object CityGroupsSds: TSQLDataSet
    CommandText = 
      'SELECT e.ElemCityGroups_id, a.Organisation AS Agent, v.Vehicle, ' +
      'e.CarHireGroup, e.Wef, c.CurrencyCode, '#13#10'       ec.Cost, ec.Vehi' +
      'cles_id,'#13#10'      (SELECT COUNT(*) FROM QuoModuleDetails qmd WHERE' +
      ' qmd.QuoModules_id = :QuoModules_id '#13#10'          AND qmd.TrsType ' +
      '= 8  AND qmd.FromCities_id = e.FromCities_id AND qmd.ToCities_id' +
      ' = e.ToCities_id) AS x_count, e.FromCities_id, e.ToCities_id'#13#10'  ' +
      'FROM ElemCityGroups e'#13#10'       LEFT JOIN ElemCityGroupsCosts ec O' +
      'N e.ElemCityGroups_id = ec.ElemCityGroups_id'#13#10'       LEFT JOIN A' +
      'ddressbook a ON e.Addressbook_id = a.Addressbook_id'#13#10'       LEFT' +
      ' JOIN Vehicles v ON ec.Vehicles_id = v.Vehicles_id'#13#10'       LEFT ' +
      'JOIN Currencies c ON ec.Currencies_id = c.Currencies_id'#13#10'WHERE e' +
      '.FromCities_id = :x_cities_id'#13#10'AND ((:x_wef BETWEEN e.Wef AND e.' +
      'Wet) OR (:x_wef >= e.Wef AND e.Wet IS NULL))'#13#10'AND ec.NumPax = :N' +
      'umPax'#13#10'ORDER BY a.Organisation, v.Vehicle, e.Wef'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoModules_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'x_wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NumPax'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 400
  end
  object CityGroupsDsp: TDataSetProvider
    DataSet = CityGroupsSds
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 400
  end
  object CityGroupsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CityGroupsDsp'
    Left = 144
    Top = 400
    object CityGroupsCdsElemCityGroups_id: TIntegerField
      FieldName = 'ElemCityGroups_id'
    end
    object CityGroupsCdsAgent: TStringField
      FieldName = 'Agent'
      Size = 60
    end
    object CityGroupsCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object CityGroupsCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
    object CityGroupsCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object CityGroupsCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CityGroupsCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object CityGroupsCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object CityGroupsCdsx_count: TIntegerField
      FieldName = 'x_count'
    end
    object CityGroupsCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object CityGroupsCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
  end
  object CityGroupsDs: TDataSource
    DataSet = CityGroupsCds
    Left = 176
    Top = 400
  end
end
