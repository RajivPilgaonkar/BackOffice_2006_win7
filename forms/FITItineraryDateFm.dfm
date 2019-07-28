object FITItineraryDateForm: TFITItineraryDateForm
  Left = 36
  Top = 115
  Width = 1236
  Height = 605
  Caption = 'FIT Itinerary (on entered date)'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 1220
    Height = 45
    Align = alBottom
    TabOrder = 0
    object cxCloseBtn: TcxButton
      Left = 854
      Top = 7
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
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxDateEdit: TcxDateEdit
      Left = 211
      Top = 11
      TabOrder = 2
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 165
      Top = 13
      Caption = 'As On'
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    TabOrder = 1
    Height = 522
    Width = 1220
    object QuoLinesGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 1214
      Height = 501
      Align = alClient
      TabOrder = 0
      object QuoLinesGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = QuoLinesDs
        DataController.KeyFieldNames = 'QuoLines_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = QuoLinesGridDBTableView1Cost
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = QuoLinesGridDBTableView1Quote
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = QuoLinesGridDBTableView1ServiceTax
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = QuoLinesGridDBTableView1FCurrQuoCost
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Styles.OnGetContentStyle = QuoLinesGridDBTableView1StylesGetContentStyle
        object QuoLinesGridDBTableView1QuoLines_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoLines_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1Quotations_id: TcxGridDBColumn
          DataBinding.FieldName = 'Quotations_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1LineNum: TcxGridDBColumn
          Caption = 'Sr. No.'
          DataBinding.FieldName = 'LineNum'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
        end
        object QuoLinesGridDBTableView1QuoDate: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'QuoDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 97
        end
        object QuoLinesGridDBTableView1DayNo: TcxGridDBColumn
          Caption = 'Day No'
          DataBinding.FieldName = 'DayNo'
          Options.Editing = False
          Options.Grouping = False
          Width = 54
        end
        object QuoLinesGridDBTableView1QuoTime: TcxGridDBColumn
          Caption = 'Time'
          DataBinding.FieldName = 'QuoTime'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 56
        end
        object QuoLinesGridDBTableView1City: TcxGridDBColumn
          DataBinding.FieldName = 'City'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 81
        end
        object QuoLinesGridDBTableView1Type: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'TrsType'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1Car: TcxGridDBColumn
          DataBinding.FieldName = 'Car'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 60
        end
        object QuoLinesGridDBTableView1CarAgent: TcxGridDBColumn
          Caption = 'Transp Agent'
          DataBinding.FieldName = 'CarAgent'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 158
        end
        object QuoLinesGridDBTableView1Cost: TcxGridDBColumn
          DataBinding.FieldName = 'Cost'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 99
        end
        object QuoLinesGridDBTableView1ServiceTax: TcxGridDBColumn
          Caption = 'Service Tax'
          DataBinding.FieldName = 'ServiceTax'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1Quote: TcxGridDBColumn
          Caption = 'Quote'
          DataBinding.FieldName = 'QuoCost'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 101
        end
        object QuoLinesGridDBTableView1FCurrQuoCost: TcxGridDBColumn
          Caption = 'Forex'
          DataBinding.FieldName = 'FCurrQuoCost'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 87
        end
        object QuoLinesGridDBTableView1CurrencyCode: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CurrencyCode'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 61
        end
        object QuoLinesGridDBTableView1Margin: TcxGridDBColumn
          DataBinding.FieldName = 'Margin'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 47
        end
        object QuoLinesGridDBTableView1QuoStringPax: TcxGridDBColumn
          Caption = 'String For Pax'
          DataBinding.FieldName = 'QuoStringPax'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 176
        end
        object QuoLinesGridDBTableView1QuoString: TcxGridDBColumn
          Caption = 'String for Costing'
          DataBinding.FieldName = 'QuoString'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 295
        end
        object QuoLinesGridDBTableView1MasterMargin: TcxGridDBColumn
          DataBinding.FieldName = 'MasterMargin'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1DriveType: TcxGridDBColumn
          Caption = 'Drive Type'
          DataBinding.FieldName = 'DriveType'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 74
        end
      end
      object QuoLinesGridLevel1: TcxGridLevel
        GridView = QuoLinesGridDBTableView1
      end
    end
  end
  object QuoLinesSds: TSQLDataSet
    CommandText = 'exec p_QuoQuote 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 488
    Top = 88
  end
  object QuoLinesDsp: TDataSetProvider
    DataSet = QuoLinesSds
    Left = 512
    Top = 88
  end
  object QuoLinesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoLinesDsp'
    Left = 528
    Top = 88
    object QuoLinesCdsQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object QuoLinesCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object QuoLinesCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object QuoLinesCdsQuoDate: TSQLTimeStampField
      FieldName = 'QuoDate'
      DisplayFormat = 'dd/mm/yyyy ddd'
    end
    object QuoLinesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object QuoLinesCdsTrsType: TStringField
      FieldName = 'TrsType'
      Size = 6
    end
    object QuoLinesCdsQuoString: TStringField
      FieldName = 'QuoString'
      Size = 254
    end
    object QuoLinesCdsCar: TStringField
      FieldName = 'Car'
      Size = 3
    end
    object QuoLinesCdsQuoTime: TSQLTimeStampField
      FieldName = 'QuoTime'
      DisplayFormat = 'HH:mm'
    end
    object QuoLinesCdsQuoStringPax: TStringField
      FieldName = 'QuoStringPax'
      Size = 254
    end
    object QuoLinesCdsNewCar: TIntegerField
      FieldName = 'NewCar'
    end
    object QuoLinesCdsCost: TFloatField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsQuoCost: TFloatField
      FieldName = 'QuoCost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsServiceTax: TFloatField
      FieldName = 'ServiceTax'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object QuoLinesCdsMargin: TFloatField
      FieldName = 'Margin'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsMasterMargin: TFloatField
      FieldName = 'MasterMargin'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsDriveType: TStringField
      FieldName = 'DriveType'
      Size = 50
    end
    object QuoLinesCdsCarAgent: TStringField
      FieldName = 'CarAgent'
      Size = 100
    end
    object QuoLinesCdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object QuoLinesCdsFCurrQuoCost: TFloatField
      FieldName = 'FCurrQuoCost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      Size = 10
    end
    object QuoLinesCdsNewDriveLine: TIntegerField
      FieldName = 'NewDriveLine'
    end
  end
  object QuoLinesDs: TDataSource
    DataSet = QuoLinesCds
    Left = 544
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 384
    object DisplayCost1: TMenuItem
      Caption = 'Compute Cost'
      OnClick = DisplayCost1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DisplayCostBreakupforDriveAgent1: TMenuItem
      Caption = 'Display Cost Breakup for Drive (Agent)'
      OnClick = DisplayCostBreakupforDriveAgent1Click
    end
    object DisplayMarginBreakupforAccommodation1: TMenuItem
      Caption = 'Display Margin Breakup for Accommodation'
      OnClick = DisplayMarginBreakupforAccommodation1Click
    end
    object DisplayCostingBreakupforthisline1: TMenuItem
      Caption = 'Display Costing Breakup for this line'
      OnClick = DisplayCostingBreakupforthisline1Click
    end
    object N8: TMenuItem
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
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
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
end
