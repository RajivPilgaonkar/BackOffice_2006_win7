object RouteAlternateForm: TRouteAlternateForm
  Left = 26
  Top = 70
  Width = 951
  Height = 651
  Caption = 'Alternate Routes'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 935
    Height = 33
    Align = alTop
    TabOrder = 0
    object cxGenerateButton: TcxButton
      Left = 856
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 569
    Width = 935
    Height = 44
    Align = alBottom
    TabOrder = 1
    object cxCloseButton: TcxButton
      Left = 859
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxCloseButtonClick
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
    object cxCancelButton: TcxButton
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxOkButton: TcxButton
      Left = 488
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 935
    Height = 536
    Align = alClient
    TabOrder = 2
    object cxGridOption1: TcxGrid
      Left = 1
      Top = 1
      Width = 933
      Height = 534
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
      object cxGridOption1DBBandedTableView1: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = RouteFinderDs
        DataController.KeyFieldNames = 'Options_id'
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
        OptionsData.Appending = True
        OptionsView.Footer = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Bands = <
          item
            Width = 805
          end>
        object cxGridOption1DBBandedTableView1Options_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Options_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1OptionNo: TcxGridDBBandedColumn
          Caption = 'Option No'
          DataBinding.FieldName = 'OptionNo'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn
          Caption = 'From'
          DataBinding.FieldName = 'FromCities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn
          Caption = 'To'
          DataBinding.FieldName = 'ToCities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1FromCity: TcxGridDBBandedColumn
          Caption = 'From'
          DataBinding.FieldName = 'FromCity'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 147
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1ToCity: TcxGridDBBandedColumn
          Caption = 'To'
          DataBinding.FieldName = 'ToCity'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 155
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1Mode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Mode'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1ModeStr: TcxGridDBBandedColumn
          Caption = 'Mode'
          DataBinding.FieldName = 'ModeStr'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 113
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1ModeNo: TcxGridDBBandedColumn
          Caption = 'Flight/Train'
          DataBinding.FieldName = 'ModeNo'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 108
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1Departure: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Departure'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 122
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1Arrival: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Arrival'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 124
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridOption1DBBandedTableView1MaxOption: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MaxOption'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 36
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
      end
      object cxGridOption1Level1: TcxGridLevel
        GridView = cxGridOption1DBBandedTableView1
      end
    end
  end
  object RouteFinderSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_x_Hop ('#39'10/01/2007 09:00'#39', 352, 2, 2, 13)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 624
    Top = 66
  end
  object RouteFinderDsp: TDataSetProvider
    DataSet = RouteFinderSds
    Left = 638
    Top = 67
  end
  object RouteFinderCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RouteFinderDsp'
    Left = 656
    Top = 66
    object RouteFinderCdsOptions_id: TIntegerField
      FieldName = 'Options_id'
    end
    object RouteFinderCdsOptionNo: TIntegerField
      FieldName = 'OptionNo'
    end
    object RouteFinderCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object RouteFinderCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object RouteFinderCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 100
    end
    object RouteFinderCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 100
    end
    object RouteFinderCdsMode: TIntegerField
      FieldName = 'Mode'
    end
    object RouteFinderCdsModeStr: TStringField
      FieldName = 'ModeStr'
    end
    object RouteFinderCdsModeNo: TStringField
      FieldName = 'ModeNo'
      Size = 30
    end
    object RouteFinderCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object RouteFinderCdsDeparture: TSQLTimeStampField
      FieldName = 'Departure'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object RouteFinderCdsArrival: TSQLTimeStampField
      FieldName = 'Arrival'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object RouteFinderCdsMaxOption: TIntegerField
      FieldName = 'MaxOption'
    end
    object RouteFinderCdsModePreference: TIntegerField
      FieldName = 'ModePreference'
    end
  end
  object RouteFinderDs: TDataSource
    DataSet = RouteFinderCds
    Left = 668
    Top = 66
  end
end
