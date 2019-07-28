object QuoCostingTraceForm: TQuoCostingTraceForm
  Left = 108
  Top = 125
  Width = 971
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
    Top = 406
    Width = 955
    Height = 49
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    object KeyIdDBText: TDBText
      Left = 793
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
      Transparent = True
    end
    object cxButton2: TcxButton
      Left = 864
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Close'
      ModalResult = 2
      TabOrder = 0
      OnClick = cxButton2Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 955
    Height = 406
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = -7
      Top = 9
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
      OnDrawColumnCell = DBGrid1DrawColumnCell
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
        end>
    end
    object cxGridMaster: TcxGrid
      Left = 1
      Top = 1
      Width = 949
      Height = 400
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
        DataController.KeyFieldNames = 'QuoCostingTrace_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1Cost
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1Gst
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1Total
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGridMasterDBBandedTableView1Margin
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
            Width = 894
          end>
        object cxGridMasterDBBandedTableView1CostingCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CostingCode'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Description: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Description'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 139
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1RecordType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RecordType'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Qty: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Qty'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Rate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Rate'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1GroupAmt: TcxGridDBBandedColumn
          Caption = 'Group Amt'
          DataBinding.FieldName = 'GroupAmt'
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Cost'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1GstPerc: TcxGridDBBandedColumn
          Caption = 'Gst(%)'
          DataBinding.FieldName = 'GstPerc'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Gst: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Gst'
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Total: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Total'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1MealCost: TcxGridDBBandedColumn
          Caption = 'Meals'
          DataBinding.FieldName = 'MealCost'
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1AgentComm: TcxGridDBBandedColumn
          Caption = 'Agent GST'
          DataBinding.FieldName = 'AgentComm'
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1MarginPerc: TcxGridDBBandedColumn
          Caption = 'Margin (%)'
          DataBinding.FieldName = 'MarginPerc'
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Margin: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Margin'
          Width = 68
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoCostingTrace_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoCostingTrace_id'
          Visible = False
          Options.Editing = False
          SortIndex = 1
          SortOrder = soAscending
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoLines_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoLines_id'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
      end
      object cxGridMasterLevel1: TcxGridLevel
        GridView = cxGridMasterDBBandedTableView1
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoCostingTrace'#13#10'ORDER BY Quotations_id'
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
    IndexFieldNames = 'CostingCode'
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 208
    Top = 48
    object MasterCDSRecordType: TIntegerField
      FieldName = 'RecordType'
    end
    object MasterCDSDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object MasterCDSQty: TFMTBCDField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCDSRate: TFMTBCDField
      FieldName = 'Rate'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCDSCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCDSCostingCode: TStringField
      FieldName = 'CostingCode'
      Size = 4
    end
    object MasterCDSQuoCostingTrace_id: TIntegerField
      FieldName = 'QuoCostingTrace_id'
    end
    object MasterCDSQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object MasterCDSTotal: TFMTBCDField
      FieldName = 'Total'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCDSGstPerc: TFMTBCDField
      FieldName = 'GstPerc'
      DisplayFormat = '#,##0%'
      Precision = 15
      Size = 2
    end
    object MasterCDSGst: TFMTBCDField
      FieldName = 'Gst'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCDSMealCost: TFMTBCDField
      FieldName = 'MealCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCDSAgentComm: TFMTBCDField
      FieldName = 'AgentComm'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCDSMarginPerc: TFMTBCDField
      FieldName = 'MarginPerc'
      DisplayFormat = '#,##0.00%'
      Precision = 15
      Size = 2
    end
    object MasterCDSMargin: TFMTBCDField
      FieldName = 'Margin'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object MasterCDSGroupAmt: TFMTBCDField
      FieldName = 'GroupAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
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
      Font.Style = []
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
    object cxStyleYellowLight: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
  end
end
