object MisAccommodationForm: TMisAccommodationForm
  Left = 80
  Top = 59
  Width = 1047
  Height = 689
  Caption = 'MIS Accommdation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 611
    Width = 1031
    Height = 40
    Align = alBottom
    TabOrder = 0
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
      Left = 944
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1031
    Height = 51
    Align = alTop
    TabOrder = 1
    object cxButton3: TcxButton
      Left = 472
      Top = 20
      Width = 127
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
      Top = 5
      TabOrder = 1
      Height = 42
      Width = 343
      object Label1: TLabel
        Left = 7
        Top = 24
        Width = 50
        Height = 13
        Caption = 'Between'
      end
      object Label2: TLabel
        Left = 188
        Top = 23
        Width = 22
        Height = 13
        Caption = 'and'
      end
      object cxFromDateEdit: TcxDateEdit
        Left = 63
        Top = 20
        Style.Color = 16777192
        TabOrder = 0
        Width = 121
      end
      object cxToDateEdit: TcxDateEdit
        Left = 215
        Top = 20
        Style.Color = 16777192
        TabOrder = 1
        Width = 121
      end
    end
    object cxButton4: TcxButton
      Left = 362
      Top = 21
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
      Left = 410
      Top = 21
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
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 51
    Width = 1031
    Height = 560
    ActivePage = cxTabSheetBusinessItin
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 554
    ClientRectLeft = 3
    ClientRectRight = 1025
    ClientRectTop = 26
    object cxTabSheetBusinessVouchers: TcxTabSheet
      Caption = 'Business Given (Vouchers)'
      ImageIndex = 0
      object cxGridBusinessVouchers: TcxGrid
        Left = 0
        Top = 0
        Width = 1030
        Height = 532
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
        object cxGridBusinessVouchersDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = BusVouchersDs
          DataController.KeyFieldNames = 'VouchersAccommodation_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessVouchersDBBandedTableView1AmountBilled
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1AmountBilled
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessVouchersDBBandedTableView1Singles
              Sorted = True
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1Singles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessVouchersDBBandedTableView1Doubles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1Doubles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessVouchersDBBandedTableView1Triples
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1Triples
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1AmountBilled
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1Singles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1Doubles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessVouchersDBBandedTableView1Triples
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.GroupRowStyle = grsOffice11
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 917
            end>
          object cxGridBusinessVouchersDBBandedTableView1VouchersAccommodation_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VouchersAccommodation_id'
            Visible = False
            Options.Editing = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1VoucherNo: TcxGridDBBandedColumn
            Caption = 'Voucher No'
            DataBinding.FieldName = 'VoucherNo'
            Options.Editing = False
            Options.Grouping = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1VoucherDate: TcxGridDBBandedColumn
            Caption = 'Voucher Date'
            DataBinding.FieldName = 'VoucherDate'
            Options.Editing = False
            Options.Grouping = False
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1TourRef: TcxGridDBBandedColumn
            Caption = 'Tour Ref'
            DataBinding.FieldName = 'TourRef'
            Options.Editing = False
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1DateIn: TcxGridDBBandedColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            Options.Editing = False
            Options.Grouping = False
            SortIndex = 2
            SortOrder = soAscending
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1AmountBilled: TcxGridDBBandedColumn
            Caption = 'Amount Billed'
            DataBinding.FieldName = 'AmountBilled'
            Options.Editing = False
            Options.Grouping = False
            Width = 108
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1City: TcxGridDBBandedColumn
            DataBinding.FieldName = 'City'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1Organisation: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Organisation'
            Visible = False
            GroupIndex = 1
            Options.Editing = False
            SortIndex = 1
            SortOrder = soAscending
            Width = 213
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1Nights: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nights'
            Options.Editing = False
            Options.Grouping = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1RoomType: TcxGridDBBandedColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'RoomType'
            Options.Editing = False
            Options.IgnoreTimeForFiltering = False
            Options.Grouping = False
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1Plan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Plan'
            Options.Editing = False
            Options.IgnoreTimeForFiltering = False
            Options.Grouping = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1Singles: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Singles'
            Options.Editing = False
            Options.Grouping = False
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1Doubles: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Doubles'
            Options.Editing = False
            Options.Grouping = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridBusinessVouchersDBBandedTableView1Triples: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Triples'
            Options.Editing = False
            Options.Grouping = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridBusinessVouchersDBBandedTableView1
        end
      end
    end
    object cxTabSheetBusinessItin: TcxTabSheet
      Caption = 'Business Given (Itineraries)'
      ImageIndex = 1
      object cxGridBusinessItin: TcxGrid
        Left = 0
        Top = 0
        Width = 1022
        Height = 528
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
        object cxGridBusinessItinDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = BusItinDs
          DataController.KeyFieldNames = 'ItineraryAccommodation_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessItinDBBandedTableView1Singles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessItinDBBandedTableView1Doubles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Position = spFooter
              Column = cxGridBusinessItinDBBandedTableView1Triples
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessItinDBBandedTableView1Singles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessItinDBBandedTableView1Doubles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessItinDBBandedTableView1Triples
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessItinDBBandedTableView1Singles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessItinDBBandedTableView1Doubles
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridBusinessItinDBBandedTableView1Triples
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.GroupRowStyle = grsOffice11
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 917
            end>
          object cxGridBusinessItinDBBandedTableView1ItineraryAccommodation_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ItineraryAccommodation_id'
            Visible = False
            Options.Editing = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1City: TcxGridDBBandedColumn
            DataBinding.FieldName = 'City'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Organisation: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Organisation'
            Visible = False
            GroupIndex = 1
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Tours: TcxGridDBBandedColumn
            Caption = 'Tour Ref'
            DataBinding.FieldName = 'Tours'
            Options.Editing = False
            Options.Grouping = False
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1DateIn: TcxGridDBBandedColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            Options.Editing = False
            Options.Grouping = False
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Nights: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nights'
            Options.Editing = False
            Options.Grouping = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1RoomType: TcxGridDBBandedColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'RoomType'
            Options.Editing = False
            Options.Grouping = False
            Width = 197
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Plan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Plan'
            Options.Editing = False
            Options.Grouping = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Singles: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Singles'
            Options.Editing = False
            Options.Grouping = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Doubles: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Doubles'
            Options.Editing = False
            Options.Grouping = False
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Triples: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Triples'
            Options.Editing = False
            Options.Grouping = False
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridBusinessItinDBBandedTableView1Status: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Status'
            Options.Editing = False
            Options.Grouping = False
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridBusinessItinDBBandedTableView1
        end
      end
    end
  end
  object BusVouchersSds: TSQLDataSet
    CommandText = 'EXEC p_VoucherAcc_BusinessGiven '#39'07/01/2010'#39', '#39'07/31/2010'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 264
  end
  object BusVouchersDsp: TDataSetProvider
    DataSet = BusVouchersSds
    Left = 536
    Top = 264
  end
  object BusVouchersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BusVouchersDsp'
    Left = 568
    Top = 264
    object BusVouchersCdsVouchersAccommodation_id: TIntegerField
      FieldName = 'VouchersAccommodation_id'
    end
    object BusVouchersCdsVoucherDate: TSQLTimeStampField
      FieldName = 'VoucherDate'
    end
    object BusVouchersCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object BusVouchersCdsTourRef: TStringField
      FieldName = 'TourRef'
      Size = 10
    end
    object BusVouchersCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object BusVouchersCdsAmountBilled: TBCDField
      FieldName = 'AmountBilled'
      Precision = 10
      Size = 2
    end
    object BusVouchersCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object BusVouchersCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object BusVouchersCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object BusVouchersCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object BusVouchersCdsPlan: TStringField
      FieldName = 'Plan'
      FixedChar = True
      Size = 3
    end
    object BusVouchersCdsSingles: TIntegerField
      FieldName = 'Singles'
    end
    object BusVouchersCdsDoubles: TIntegerField
      FieldName = 'Doubles'
    end
    object BusVouchersCdsTriples: TIntegerField
      FieldName = 'Triples'
    end
  end
  object BusVouchersDs: TDataSource
    DataSet = BusVouchersCds
    Left = 600
    Top = 264
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
      ReportDocument.CreationDate = 39259.384249305560000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 528
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
    object ExpandAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpandAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
  end
  object BusItinSds: TSQLDataSet
    CommandText = 'EXEC p_VoucherAcc_BusinessGiven '#39'07/01/2010'#39', '#39'07/31/2010'#39', 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 312
  end
  object BusItinDsp: TDataSetProvider
    DataSet = BusItinSds
    Left = 536
    Top = 312
  end
  object BusItinCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BusItinDsp'
    Left = 568
    Top = 312
    object BusItinCdsItineraryAccommodation_id: TIntegerField
      FieldName = 'ItineraryAccommodation_id'
    end
    object BusItinCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object BusItinCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object BusItinCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object BusItinCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object BusItinCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object BusItinCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object BusItinCdsPlan: TStringField
      FieldName = 'Plan'
      FixedChar = True
      Size = 3
    end
    object BusItinCdsSingles: TIntegerField
      FieldName = 'Singles'
    end
    object BusItinCdsDoubles: TIntegerField
      FieldName = 'Doubles'
    end
    object BusItinCdsTriples: TIntegerField
      FieldName = 'Triples'
    end
    object BusItinCdsStatus: TStringField
      FieldName = 'Status'
      Size = 9
    end
  end
  object BusItinDs: TDataSource
    DataSet = BusItinCds
    Left = 600
    Top = 312
  end
end
