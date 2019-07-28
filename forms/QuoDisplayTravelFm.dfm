object QuoDisplayTravelForm: TQuoDisplayTravelForm
  Left = 222
  Top = 32
  Width = 958
  Height = 694
  Caption = 'Display Travel'
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
  object Panel2: TPanel
    Left = 0
    Top = 607
    Width = 942
    Height = 49
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    object KeyIdDBText: TDBText
      Left = 329
      Top = 14
      Width = 58
      Height = 11
      AutoSize = True
      DataField = 'qt_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cxButton2: TcxButton
      Left = 856
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Close'
      ModalResult = 2
      TabOrder = 0
      OnClick = cxButton2Click
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 607
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object cxGridMaster: TcxGrid
      Left = 1
      Top = 1
      Width = 936
      Height = 511
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
        PopupMenu = PopupMenu2
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MasterDS
        DataController.KeyFieldNames = 'qt_id'
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
        Styles.ContentEven = cxStyleBlue
        Styles.ContentOdd = cxStyleGreen
        Styles.OnGetContentStyle = cxGridMasterDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Width = 917
          end>
        object cxGridMasterDBBandedTableView1qt_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'qt_id'
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
        object cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoTickets_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoLines_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1TravelDate: TcxGridDBBandedColumn
          Caption = 'Date'
          DataBinding.FieldName = 'TravelDate'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 105
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'From_Cities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'To_Cities_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1FromCity: TcxGridDBBandedColumn
          Caption = 'From'
          DataBinding.FieldName = 'FromCity'
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ToCity: TcxGridDBBandedColumn
          Caption = 'To'
          DataBinding.FieldName = 'ToCity'
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Mode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Mode'
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 39
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ModeDetails: TcxGridDBBandedColumn
          Caption = 'Details'
          DataBinding.FieldName = 'ModeDetails'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1class: TcxGridDBBandedColumn
          Caption = 'Class'
          DataBinding.FieldName = 'class'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ETD: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ETD'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 57
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ETA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ETA'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1CarReportDate: TcxGridDBBandedColumn
          Caption = 'Report Date'
          DataBinding.FieldName = 'CarReportDate'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1CarReleaseDate: TcxGridDBBandedColumn
          Caption = 'Release Date'
          DataBinding.FieldName = 'CarReleaseDate'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Overnight: TcxGridDBBandedColumn
          Caption = 'O/N'
          DataBinding.FieldName = 'Overnight'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DriveType: TcxGridDBBandedColumn
          Caption = 'Drive Type'
          DataBinding.FieldName = 'DriveType'
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1NewCar: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NewCar'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 28
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1CarAgent: TcxGridDBBandedColumn
          Caption = 'Car Agent'
          DataBinding.FieldName = 'CarAgent'
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1CarHireCity: TcxGridDBBandedColumn
          Caption = 'Hire City'
          DataBinding.FieldName = 'CarHireCity'
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Vehicle: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Vehicle'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ModeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ModeNo'
          Visible = False
          Options.Editing = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 28
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
      end
      object cxGridMasterLevel1: TcxGridLevel
        GridView = cxGridMasterDBBandedTableView1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 512
      Width = 936
      Height = 90
      Align = alBottom
      Color = 16635321
      TabOrder = 1
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 66
        Height = 13
        Caption = 'Car Report '
      end
      object Label6: TLabel
        Left = 8
        Top = 48
        Width = 70
        Height = 13
        Caption = 'Car Release'
      end
      object SpeedButton3: TSpeedButton
        Left = 296
        Top = 19
        Width = 23
        Height = 22
        Hint = 'Report Date'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
          777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
          79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
          777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
          79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
          CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
        NumGlyphs = 2
        OnClick = SpeedButton3Click
      end
      object SpeedButton1: TSpeedButton
        Left = 296
        Top = 43
        Width = 23
        Height = 22
        Hint = 'Report Date'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
          777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
          79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
          777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
          79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
          CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 96
        Top = 21
        DataBinding.DataField = 'CarReportDate'
        DataBinding.DataSource = TicketsDs
        ParentFont = False
        Properties.ShowTime = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 121
      end
      object cxDBTimeEdit1: TcxDBTimeEdit
        Left = 224
        Top = 21
        DataBinding.DataField = 'CarReportDate'
        DataBinding.DataSource = TicketsDs
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.TimeFormat = tfHourMin
        Properties.UseCtrlIncrement = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 65
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 96
        Top = 45
        DataBinding.DataField = 'CarReleaseDate'
        DataBinding.DataSource = TicketsDs
        ParentFont = False
        Properties.ShowTime = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 121
      end
      object cxDBTimeEdit2: TcxDBTimeEdit
        Left = 224
        Top = 45
        DataBinding.DataField = 'CarReleaseDate'
        DataBinding.DataSource = TicketsDs
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.TimeFormat = tfHourMin
        Properties.UseCtrlIncrement = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 65
      end
      object cxButton3: TcxButton
        Left = 352
        Top = 19
        Width = 75
        Height = 25
        Caption = 'Update'
        TabOrder = 4
        OnClick = cxButton3Click
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 'exec p_QuoTravelItin 554'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 144
    Top = 48
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 176
    Top = 48
  end
  object MasterCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 208
    Top = 48
    object MasterCDSqt_id: TIntegerField
      FieldName = 'qt_id'
    end
    object MasterCDSQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
    end
    object MasterCDSQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object MasterCDSTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object MasterCDSFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object MasterCDSTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object MasterCDSFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object MasterCDSToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object MasterCDSMode: TStringField
      FieldName = 'Mode'
      Size = 15
    end
    object MasterCDSModeDetails: TStringField
      FieldName = 'ModeDetails'
      Size = 40
    end
    object MasterCDSclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object MasterCDSETD: TSQLTimeStampField
      FieldName = 'ETD'
      DisplayFormat = 'HH:mm'
    end
    object MasterCDSETA: TSQLTimeStampField
      FieldName = 'ETA'
      DisplayFormat = 'HH:mm'
    end
    object MasterCDSCarReleaseDate: TSQLTimeStampField
      FieldName = 'CarReleaseDate'
      DisplayFormat = 'dd/mm HH:mm'
    end
    object MasterCDSOvernight: TBooleanField
      FieldName = 'Overnight'
    end
    object MasterCDSDriveType: TStringField
      FieldName = 'DriveType'
      Size = 50
    end
    object MasterCDSNewCar: TIntegerField
      FieldName = 'NewCar'
    end
    object MasterCDSCarAgent: TStringField
      FieldName = 'CarAgent'
      Size = 60
    end
    object MasterCDSCarHireCity: TStringField
      FieldName = 'CarHireCity'
      Size = 50
    end
    object MasterCDSVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object MasterCDSModeNo: TIntegerField
      FieldName = 'ModeNo'
    end
    object MasterCDSCarReportDate: TSQLTimeStampField
      FieldName = 'CarReportDate'
      DisplayFormat = 'dd/mm HH:mm'
    end
    object MasterCDSTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
  end
  object MasterDS: TDataSource
    DataSet = MasterCDS
    Left = 240
    Top = 48
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 568
    Top = 200
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320733
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16766935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13559807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 336
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object SaveDialog: TSaveDialog
    Left = 227
    Top = 337
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 260
    Top = 337
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
      ReportDocument.CreationDate = 39255.608278530090000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 320
    Top = 96
    object EnterDates1: TMenuItem
      Caption = 'Enter Dates'
      object Report1: TMenuItem
        Caption = 'Report'
        OnClick = Report1Click
      end
      object Release1: TMenuItem
        Caption = 'Release'
        OnClick = Release1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ClearDates1: TMenuItem
      Caption = 'Clear Dates'
      object Report2: TMenuItem
        Caption = 'Report'
        OnClick = Report2Click
      end
      object Release2: TMenuItem
        Caption = 'Release'
        OnClick = Release2Click
      end
    end
  end
  object TicketsSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoTickets'#13#10'WHERE QuoTickets_id = :QuoTickets_id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoTickets_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 144
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 144
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketsDsp'
    Left = 63
    Top = 144
    object t: TIntegerField
      FieldName = 'QuoTickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsCarReleaseDate: TSQLTimeStampField
      FieldName = 'CarReleaseDate'
    end
    object TicketsCdsCarReportDate: TSQLTimeStampField
      FieldName = 'CarReportDate'
    end
    object TicketsCdsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object TicketsCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 85
    Top = 144
  end
end
