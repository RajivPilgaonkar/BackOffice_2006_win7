inherited ImportTrainsForm: TImportTrainsForm
  Left = 316
  Top = 104
  Width = 776
  Height = 598
  Caption = 'Import Trains'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 478
    Width = 760
    inherited CustomMasterCxGrid: TcxGrid
      Width = 754
      Height = 457
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        DataController.KeyFieldNames = 'shortname'
        OptionsBehavior.CellHints = True
        OptionsData.Appending = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.OnGetContentStyle = CustomMasterCxGridDBTableView1StylesGetContentStyle
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1ShortName: TcxGridDBColumn
          Caption = 'Train No'
          DataBinding.FieldName = 'shortname'
          Width = 73
        end
        object CustomMasterCxGridDBTableView1LongName: TcxGridDBColumn
          Caption = 'Train Name'
          DataBinding.FieldName = 'longname'
          Width = 106
        end
        object CustomMasterCxGridDBTableView1StartName: TcxGridDBColumn
          Caption = 'From Station'
          DataBinding.FieldName = 'startname'
          Options.Editing = False
          Width = 104
        end
        object CustomMasterCxGridDBTableView1StartTime: TcxGridDBColumn
          Caption = 'ETD'
          DataBinding.FieldName = 'starttime'
          Options.Editing = False
          Width = 50
        end
        object CustomMasterCxGridDBTableView1EndName: TcxGridDBColumn
          Caption = 'To Station'
          DataBinding.FieldName = 'endname'
          Options.Editing = False
          Width = 119
        end
        object CustomMasterCxGridDBTableView1EndTime: TcxGridDBColumn
          Caption = 'ETA'
          DataBinding.FieldName = 'endtime'
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1RunsOn: TcxGridDBColumn
          Caption = 'Runs On'
          DataBinding.FieldName = 'runson'
          Visible = False
          Options.Editing = False
          Width = 115
        end
        object CustomMasterCxGridDBTableView1Type: TcxGridDBColumn
          Caption = 'Category'
          DataBinding.FieldName = 'Type'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'traincategories_id'
          Properties.ListColumns = <
            item
              FieldName = 'category'
            end>
          Properties.ListSource = BackOfficeDataModule.TrainCategoriesDS
          Width = 89
        end
        object CustomMasterCxGridDBTableView1Freq: TcxGridDBColumn
          DataBinding.FieldName = 'Freq'
          Width = 100
        end
        object CustomMasterCxGridDBTableView1Active: TcxGridDBColumn
          DataBinding.FieldName = 'Active'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1ErrorNo: TcxGridDBColumn
          Caption = 'Error No'
          DataBinding.FieldName = 'ErrorNo'
          Options.Editing = False
          Width = 67
        end
        object CustomMasterCxGridDBTableView1ErrorDesc: TcxGridDBColumn
          Caption = 'Error Desc'
          DataBinding.FieldName = 'ErrorDesc'
          Options.Editing = False
          Width = 200
        end
        object CustomMasterCxGridDBTableView1SchdUpdtOn: TcxGridDBColumn
          DataBinding.FieldName = 'SchdUpdtOn'
          Visible = False
          Options.Editing = False
          Width = 91
        end
        object CustomMasterCxGridDBTableView1RecdUpdtOn: TcxGridDBColumn
          DataBinding.FieldName = 'RecdUpdtOn'
          Visible = False
          Options.Editing = False
          Width = 104
        end
        object CustomMasterCxGridDBTableView1TrainClass: TcxGridDBColumn
          Caption = 'Class'
          DataBinding.FieldName = 'TrainClass'
          Width = 100
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 519
    Width = 760
    inherited KeyIdDbText: TDBText
      Left = 604
      Top = 13
      Width = 69
      Height = 16
      DataField = 'shortname'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 683
      Width = 70
    end
    object cxButtonErrors: TcxButton
      Left = 179
      Top = 8
      Width = 110
      Height = 25
      Caption = 'Check for Errors'
      TabOrder = 3
      OnClick = cxButtonErrorsClick
    end
    object cxButton1: TcxButton
      Left = 307
      Top = 8
      Width = 126
      Height = 25
      Caption = 'Import Schedules'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 5
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
  end
  inherited Panel2: TPanel
    Width = 760
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'zz_trains'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsActive: TIntegerField
      FieldName = 'Active'
    end
    object MasterCdsSchdUpdtOn: TSQLTimeStampField
      FieldName = 'SchdUpdtOn'
    end
    object MasterCdsRecdUpdtOn: TSQLTimeStampField
      FieldName = 'RecdUpdtOn'
    end
    object MasterCdsErrorNo: TIntegerField
      FieldName = 'ErrorNo'
    end
    object MasterCdsErrorDesc: TStringField
      FieldName = 'ErrorDesc'
      Size = 200
    end
    object MasterCdsTrainClass: TStringField
      FieldName = 'TrainClass'
      Size = 100
    end
    object MasterCdsFreq: TStringField
      FieldName = 'Freq'
      Size = 100
    end
    object MasterCdsType: TIntegerField
      FieldName = 'Type'
    end
    object MasterCdsshortname: TStringField
      FieldName = 'shortname'
      Size = 32
    end
    object MasterCdsstartname: TStringField
      FieldName = 'startname'
      Size = 64
    end
    object MasterCdsstarttime: TStringField
      FieldName = 'starttime'
      Size = 8
    end
    object MasterCdsendname: TStringField
      FieldName = 'endname'
      Size = 64
    end
    object MasterCdsendtime: TStringField
      FieldName = 'endtime'
      Size = 8
    end
    object MasterCdsrunson: TIntegerField
      FieldName = 'runson'
    end
    object MasterCdslongname: TStringField
      FieldName = 'longname'
      Size = 100
    end
    object MasterCdsDays: TStringField
      FieldKind = fkCalculated
      FieldName = 'Days'
      Calculated = True
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
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
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 297
    object DisplaySchedule1: TMenuItem
      Caption = 'Display Schedule'
      OnClick = DisplaySchedule1Click
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object DisplayFares1: TMenuItem
      Caption = 'Display Fares'
      Visible = False
      OnClick = DisplayFares1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 48
    Top = 432
    object ImportfromExcel1: TMenuItem
      Caption = 'Import Km wise fares from Tmp'
      OnClick = ImportfromExcel1Click
    end
    object ImportSectorwisefaresfromTmpscrpaing1: TMenuItem
      Caption = 'Import Sector wise fares from Tmp (scraping)'
      OnClick = ImportSectorwisefaresfromTmpscrpaing1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
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
    Left = 179
    Top = 433
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 212
    Top = 433
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
  object OpenDialog: TOpenDialog
    Left = 248
    Top = 248
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
    Left = 368
    Top = 256
  end
end
