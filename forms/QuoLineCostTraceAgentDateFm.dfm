object QuoLineCostTraceAgentDateForm: TQuoLineCostTraceAgentDateForm
  Left = 295
  Top = 222
  Width = 692
  Height = 493
  Caption = 'Costing Trace Form'
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
    Top = 405
    Width = 676
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 592
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
      Top = 10
      Width = 97
      Height = 25
      Caption = 'Re-Compute'
      TabOrder = 1
      Visible = False
    end
    object cxButton3: TcxButton
      Left = 144
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 405
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = -7
      Top = 57
      Width = 678
      Height = 404
      Color = clWhite
      DataSource = MasterDS
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'CostingCode'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Title.Caption = 'Quantity'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rate'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cost'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Iteration'
          Visible = True
        end>
    end
    object cxGridMaster: TcxGrid
      Left = 1
      Top = 1
      Width = 670
      Height = 399
      Align = alClient
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
        DataController.DataSource = MasterDS
        DataController.KeyFieldNames = 'BreakTransCostsDates_id'
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
        Styles.ContentEven = cxStyleBlue
        Styles.ContentOdd = cxStyleGreen
        Styles.OnGetContentStyle = cxGridMasterDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Width = 600
          end>
        object cxGridMasterDBBandedTableView1BreakTransCosts_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BreakTransCosts_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoLines_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DayNo: TcxGridDBBandedColumn
          Caption = 'Day No'
          DataBinding.FieldName = 'DayNo'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 82
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Route: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Route'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 296
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Kms: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kms'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 143
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Type: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Type'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 20
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Qty'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 36
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Code: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Code'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
      end
      object cxGridMasterLevel1: TcxGridLevel
        GridView = cxGridMasterDBBandedTableView1
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BreakTransCostsDates'#13#10'ORDER BY Code, DayNo, BreakT' +
      'ransCostsDates_id'#13#10
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
    object MasterCDSBreakTransCostsDates_id: TIntegerField
      FieldName = 'BreakTransCostsDates_id'
    end
    object MasterCDSQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object MasterCDSDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object MasterCDSRoute: TStringField
      FieldName = 'Route'
      Size = 200
    end
    object MasterCDSKms: TFMTBCDField
      FieldName = 'Kms'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCDSType: TIntegerField
      FieldName = 'Type'
    end
    object MasterCDSQty: TFMTBCDField
      FieldName = 'Qty'
      Precision = 18
      Size = 4
    end
    object MasterCDSCode: TStringField
      FieldName = 'Code'
      Size = 10
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
    Left = 144
    Top = 296
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
    Left = 187
    Top = 345
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 220
    Top = 345
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
end
