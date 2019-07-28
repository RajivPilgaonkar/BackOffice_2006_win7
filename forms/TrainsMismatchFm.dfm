object TrainsMismatchForm: TTrainsMismatchForm
  Left = 308
  Top = 65
  Width = 943
  Height = 622
  Caption = 'Trains Mismatch'
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
      Left = 816
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
  object PageControl1: TPageControl
    Left = 0
    Top = 45
    Width = 927
    Height = 499
    ActivePage = TabSheetSystem
    Align = alClient
    TabOrder = 2
    object TabSheetSystem: TTabSheet
      Caption = 'In System But not Downloaded'
      object cxGridSys: TcxGrid
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
        object cxGridSysDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = SysDs
          DataController.KeyFieldNames = 'TrainNo;wef'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 600
            end>
          object cxGridSysDBBandedTableView1TrainNo: TcxGridDBBandedColumn
            Caption = 'Train No'
            DataBinding.FieldName = 'TrainNo'
            Options.Editing = False
            Options.Grouping = False
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridSysDBBandedTableView1trainName: TcxGridDBBandedColumn
            Caption = 'Train'
            DataBinding.FieldName = 'trainName'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 372
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridSysDBBandedTableView1Wef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Wef'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGridSysLevel1: TcxGridLevel
          GridView = cxGridSysDBBandedTableView1
        end
      end
    end
    object TabSheetDownloaded: TTabSheet
      Caption = 'Downloaded but not in System'
      ImageIndex = 1
      object cxGridDown: TcxGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 475
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
        object cxGridDownDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DownDs
          DataController.KeyFieldNames = 'ShortName;StartTime'
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Bands = <
            item
              Width = 791
            end>
          object cxGridDownDBBandedTableView1ShortName: TcxGridDBBandedColumn
            Caption = 'Train No'
            DataBinding.FieldName = 'ShortName'
            Options.Editing = False
            Options.Grouping = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDownDBBandedTableView1LongName: TcxGridDBBandedColumn
            Caption = 'Train'
            DataBinding.FieldName = 'LongName'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 251
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDownDBBandedTableView1StartName: TcxGridDBBandedColumn
            Caption = 'Source'
            DataBinding.FieldName = 'StartName'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDownDBBandedTableView1StartTime: TcxGridDBBandedColumn
            Caption = 'Start Time'
            DataBinding.FieldName = 'StartTime'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 174
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDownDBBandedTableView1EndName: TcxGridDBBandedColumn
            Caption = 'Dest'
            DataBinding.FieldName = 'EndName'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDownDBBandedTableView1EndTime: TcxGridDBBandedColumn
            Caption = 'End Time'
            DataBinding.FieldName = 'EndTime'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridDownLevel1: TcxGridLevel
          GridView = cxGridDownDBBandedTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 496
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
    object erminateTrainsInSysbutnotDownloaded1: TMenuItem
      Caption = 'Terminate Trains - "In Sys but not Downloaded"'
      OnClick = erminateTrainsInSysbutnotDownloaded1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ImportTrainsSchedules1: TMenuItem
      Caption = 'Import Trains && Schedules'
      OnClick = ImportTrainsSchedules1Click
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
      ReportDocument.CreationDate = 39953.350714513890000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object SysSds: TSQLDataSet
    CommandText = 'exec p_Trains_PreUploadCheck 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object SysDsp: TDataSetProvider
    DataSet = SysSds
    Left = 536
    Top = 224
  end
  object SysCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SysDsp'
    Left = 568
    Top = 224
    object SysCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      FixedChar = True
      Size = 10
    end
    object SysCdstrainName: TStringField
      FieldName = 'trainName'
      Size = 100
    end
    object SysCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
  end
  object SysDs: TDataSource
    DataSet = SysCds
    Left = 600
    Top = 224
  end
  object DownSds: TSQLDataSet
    CommandText = 'exec p_Trains_PreUploadCheck 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 256
  end
  object DownDsp: TDataSetProvider
    DataSet = DownSds
    Left = 536
    Top = 256
  end
  object DownCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DownDsp'
    Left = 568
    Top = 256
    object DownCdsShortName: TStringField
      FieldName = 'ShortName'
      Size = 32
    end
    object DownCdsLongName: TStringField
      FieldName = 'LongName'
      Size = 48
    end
    object DownCdsStartName: TStringField
      FieldName = 'StartName'
      Size = 64
    end
    object DownCdsStartTime: TStringField
      FieldName = 'StartTime'
      Size = 8
    end
    object DownCdsEndName: TStringField
      FieldName = 'EndName'
      Size = 64
    end
    object DownCdsEndTime: TStringField
      FieldName = 'EndTime'
      Size = 8
    end
  end
  object DownDs: TDataSource
    DataSet = DownCds
    Left = 600
    Top = 256
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 856
    Top = 200
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320733
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16766935
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
  end
end
