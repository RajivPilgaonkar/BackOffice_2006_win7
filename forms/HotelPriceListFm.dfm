object HotelPriceListForm: THotelPriceListForm
  Left = 20
  Top = 66
  Width = 1024
  Height = 586
  Caption = 'Hotel Price List'
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
  object cxGridState: TcxGrid
    Left = 6
    Top = 24
    Width = 307
    Height = 457
    TabOrder = 0
    object cxGridStateDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = StateDs
      DataController.KeyFieldNames = 'States_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridStateDBTableView1States_id: TcxGridDBColumn
        DataBinding.FieldName = 'States_id'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
      end
      object cxGridStateDBTableView1Selected: TcxGridDBColumn
        DataBinding.FieldName = 'Selected'
        Options.Filtering = False
        Options.Grouping = False
        Width = 60
      end
      object cxGridStateDBTableView1State: TcxGridDBColumn
        DataBinding.FieldName = 'State'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 216
      end
    end
    object cxGridStateLevel1: TcxGridLevel
      GridView = cxGridStateDBTableView1
    end
  end
  object cxGridCat: TcxGrid
    Left = 324
    Top = 24
    Width = 330
    Height = 457
    TabOrder = 1
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = CatDS
      DataController.KeyFieldNames = 'Categories_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBTableView1Categories_id: TcxGridDBColumn
        DataBinding.FieldName = 'Categories_id'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
      end
      object cxGridDBTableView1Selected: TcxGridDBColumn
        DataBinding.FieldName = 'Selected'
        Options.Filtering = False
        Options.Grouping = False
        Width = 63
      end
      object cxGridDBTableView1Description: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'Description'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 507
    Width = 1008
    Height = 41
    Align = alBottom
    TabOrder = 2
    object CloseBtn: TcxButton
      Left = 908
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
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
      Left = 9
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 664
    Top = 24
    Caption = 'Parameters'
    TabOrder = 3
    Height = 185
    Width = 313
    object ExchRateLabel: TLabel
      Left = 242
      Top = 75
      Width = 87
      Height = 13
      Caption = 'ExchRateLabel'
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 26
      Caption = 'From Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 90
      Top = 25
      TabOrder = 1
      Width = 144
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 50
      Caption = 'Meal Plan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxMealPlanLcmb: TcxLookupComboBox
      Left = 90
      Top = 49
      Properties.KeyFieldNames = 'mealplans_id'
      Properties.ListColumns = <
        item
          FieldName = 'plan'
        end>
      Properties.ListSource = BackOfficeDataModule.MealPlanDs
      TabOrder = 3
      Width = 145
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 74
      Caption = 'Currency'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxCurrencyLcmb: TcxLookupComboBox
      Left = 90
      Top = 73
      Properties.KeyFieldNames = 'currencies_id'
      Properties.ListColumns = <
        item
          FieldName = 'currency'
        end>
      Properties.ListSource = BackOfficeDataModule.CurrenciesDS
      Properties.OnEditValueChanged = cxCurrencyLcmbPropertiesEditValueChanged
      TabOrder = 5
      Width = 145
    end
    object cxMarginCkb: TcxCheckBox
      Left = 7
      Top = 155
      Caption = 'Add Margin'
      State = cbsChecked
      TabOrder = 6
      Transparent = True
      Visible = False
      Width = 87
    end
    object cxServiceTaxCkb: TcxCheckBox
      Left = 180
      Top = 96
      Caption = 'Service Tax'
      State = cbsChecked
      TabOrder = 7
      Transparent = True
      Visible = False
      Width = 93
    end
    object cxRankCkb: TcxCheckBox
      Left = 7
      Top = 105
      Caption = 'Only Ranked'
      TabOrder = 8
      Transparent = True
      Width = 112
    end
    object cxOneToTenCkb: TcxCheckBox
      Left = 180
      Top = 112
      Caption = '1-10'
      TabOrder = 9
      Transparent = True
      Visible = False
      OnClick = cxOneToTenCkbClick
      Width = 98
    end
    object cxVoucherCkb: TcxCheckBox
      Left = 180
      Top = 128
      Caption = 'Show Voucher Costs'
      TabOrder = 10
      Transparent = True
      Visible = False
      Width = 141
    end
    object cxDetailsCkb: TcxCheckBox
      Left = 180
      Top = 144
      Caption = 'Show Details'
      State = cbsChecked
      TabOrder = 11
      Transparent = True
      Visible = False
      OnClick = cxDetailsCkbClick
      Width = 98
    end
    object cxStatewiseCkb: TcxCheckBox
      Left = 7
      Top = 121
      Caption = 'Order State-wise'
      TabOrder = 12
      Transparent = True
      Width = 130
    end
    object cxIndiaCkb: TcxCheckBox
      Left = 7
      Top = 137
      Caption = 'Only Indian'
      TabOrder = 13
      Transparent = True
      Width = 112
    end
  end
  object StateSds: TSQLDataSet
    CommandText = 
      'SELECT States_id, State, CAST(0 AS BIT) AS Selected'#13#10'FROM States' +
      #13#10'WHERE States_id > 0'#13#10'ORDER BY State'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 104
    Top = 8
  end
  object StateDsp: TDataSetProvider
    DataSet = StateSds
    Left = 128
    Top = 8
  end
  object StateCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StateDsp'
    Left = 152
    Top = 8
    object StateCdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
    object StateCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object StateCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
  end
  object StateDs: TDataSource
    DataSet = StateCds
    Left = 168
    Top = 8
  end
  object CatSds: TSQLDataSet
    CommandText = 
      'SELECT Categories_id, Description, CAST(0 AS BIT) AS Selected'#13#10' ' +
      ' FROM Categories'#13#10'WHERE ((Description LIKE '#39'%Hotel%'#39') OR (Catego' +
      'ries_id IN (32,35) OR (COALESCE(InclHotelReport,0) = 1)))'#13#10'ORDER' +
      ' BY Description'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 392
    Top = 8
  end
  object CatDsp: TDataSetProvider
    DataSet = CatSds
    Left = 416
    Top = 8
  end
  object CatCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CatDsp'
    Left = 440
    Top = 8
    object CatCdsCategories_id: TIntegerField
      FieldName = 'Categories_id'
    end
    object CatCdsDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object CatCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
  end
  object CatDS: TDataSource
    DataSet = CatCds
    Left = 456
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 496
    object Statewise1: TMenuItem
      Caption = 'State - wise'
      Visible = False
      OnClick = Statewise1Click
    end
    object Citywise1: TMenuItem
      Caption = 'City - wise'
      Visible = False
      OnClick = Citywise1Click
    end
    object N2: TMenuItem
      Caption = '-'
      Visible = False
    end
    object CostBreakup1: TMenuItem
      Caption = 'Cost Breakup with Margin'
      OnClick = CostBreakup1Click
    end
    object CostBreakupwithoutMargin1: TMenuItem
      Caption = 'Cost Breakup without Margin'
      OnClick = CostBreakupwithoutMargin1Click
    end
    object Cost1to101: TMenuItem
      Caption = 'Cost 1 to 10'
      OnClick = Cost1to101Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ItereoExcelReport1: TMenuItem
      Caption = 'Itereo Excel Report'
      Visible = False
      OnClick = ItereoExcelReport1Click
    end
  end
  object scExcelExport: TscExcelExport
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
    Left = 160
    Top = 184
  end
end
