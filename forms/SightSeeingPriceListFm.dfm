object SightSeeingPriceListForm: TSightSeeingPriceListForm
  Left = 206
  Top = 13
  Width = 669
  Height = 567
  Caption = 'Sight Seeing Price List'
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
    Width = 308
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
  object Panel1: TPanel
    Left = 0
    Top = 488
    Width = 653
    Height = 41
    Align = alBottom
    TabOrder = 1
    object CloseBtn: TcxButton
      Left = 548
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
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 336
    Top = 24
    Caption = 'Parameters'
    TabOrder = 2
    Height = 253
    Width = 297
    object Label1: TLabel
      Left = 7
      Top = 76
      Width = 47
      Height = 13
      Caption = 'NumPax'
    end
    object ExchRateLabel: TLabel
      Left = 225
      Top = 55
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
      Left = 76
      Top = 26
      TabOrder = 1
      Width = 144
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 51
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
      Left = 76
      Top = 51
      Properties.KeyFieldNames = 'currencies_id'
      Properties.ListColumns = <
        item
          FieldName = 'currency'
        end>
      Properties.ListSource = BackOfficeDataModule.CurrenciesDS
      Properties.OnEditValueChanged = cxCurrencyLcmbPropertiesEditValueChanged
      TabOrder = 3
      Width = 145
    end
    object cxNumPaxEdit: TcxMaskEdit
      Left = 76
      Top = 76
      Properties.EditMask = '!99;1; '
      Properties.MaxLength = 0
      TabOrder = 4
      Text = ' 2'
      Width = 30
    end
    object cxVoucherCkb: TcxCheckBox
      Left = 148
      Top = 176
      Caption = 'Show Voucher Costs'
      TabOrder = 5
      Transparent = True
      Visible = False
      Width = 141
    end
    object cxServiceTaxCkb: TcxCheckBox
      Left = 180
      Top = 160
      Caption = 'Service Tax'
      State = cbsChecked
      TabOrder = 6
      Transparent = True
      Visible = False
      Width = 101
    end
    object cxMiscCkb: TcxCheckBox
      Left = 7
      Top = 120
      Caption = 'Misc'
      State = cbsChecked
      TabOrder = 7
      Transparent = True
      Width = 87
    end
    object cxGuideCkb: TcxCheckBox
      Left = 7
      Top = 138
      Caption = 'Guide'
      State = cbsChecked
      TabOrder = 8
      Transparent = True
      Width = 87
    end
    object cxEntranceCkb: TcxCheckBox
      Left = 7
      Top = 156
      Caption = 'Entrance Fees'
      State = cbsChecked
      TabOrder = 9
      Transparent = True
      Width = 105
    end
    object cxTransportCkb: TcxCheckBox
      Left = 7
      Top = 174
      Caption = 'Transport'
      State = cbsChecked
      TabOrder = 10
      Transparent = True
      Width = 105
    end
    object cxRecoCkb: TcxCheckBox
      Left = 176
      Top = 120
      Caption = 'Recommended'
      State = cbsChecked
      TabOrder = 11
      Transparent = True
      Width = 113
    end
    object cxDetailsCkb: TcxCheckBox
      Left = 183
      Top = 208
      Caption = 'Show Details'
      State = cbsChecked
      TabOrder = 12
      Transparent = True
      Visible = False
      Width = 98
    end
    object cxSepLineCkb: TcxCheckBox
      Left = 128
      Top = 192
      Caption = 'Show Costs on Separate Lines (Trs, Guide, Ent, Misc)'
      State = cbsChecked
      TabOrder = 13
      Transparent = True
      Visible = False
      Width = 329
    end
    object cxMarginCkb: TcxCheckBox
      Left = 138
      Top = 224
      Caption = 'Add Margin'
      State = cbsChecked
      TabOrder = 14
      Transparent = True
      Visible = False
      Width = 87
    end
    object cxMarginEdit: TcxMaskEdit
      Left = 235
      Top = 222
      Properties.EditMask = '!99;1; '
      Properties.MaxLength = 0
      TabOrder = 15
      Text = '23'
      Visible = False
      Width = 30
    end
    object cxMeetCkb: TcxCheckBox
      Left = 7
      Top = 191
      Caption = 'Meet && Assist'
      State = cbsChecked
      TabOrder = 16
      Transparent = True
      Width = 105
    end
    object cxStatewiseCkb: TcxCheckBox
      Left = 7
      Top = 217
      Caption = 'Order State-wise'
      TabOrder = 17
      Transparent = True
      Width = 122
    end
    object cxIndiaCkb: TcxCheckBox
      Left = 7
      Top = 233
      Caption = 'Only Indian'
      TabOrder = 18
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
  object PopupMenu1: TPopupMenu
    Left = 120
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
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object CostsinRange1101: TMenuItem
      Caption = 'Costs in Range [1-10]'
      Visible = False
      object State1: TMenuItem
        Caption = 'State'
        OnClick = State1Click
      end
      object City1: TMenuItem
        Caption = 'City'
        OnClick = City1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
      Visible = False
    end
    object mnuSightseeing: TMenuItem
      Caption = 'Sightseeing'
      object CostBreakup1: TMenuItem
        Caption = 'Cost Breakup'
        OnClick = CostBreakup1Click
      end
      object CostBreakupWithoutMargin1: TMenuItem
        Caption = 'Cost Breakup Without Margin'
        OnClick = CostBreakupWithoutMargin1Click
      end
      object Cost1to101: TMenuItem
        Caption = 'Cost 1 to 10 (All Cars)'
        OnClick = Cost1to101Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Cost1to10Stacked1: TMenuItem
        Caption = 'Cost 1 to 10 (Stacked)'
        OnClick = Cost1to10Stacked1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object MiscGuideEntranceDetails1: TMenuItem
        Caption = 'Misc/Guide/Entrance Details'
        OnClick = MiscGuideEntranceDetails1Click
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mnuTransfer: TMenuItem
      Caption = 'Transfers'
      object CostBreakup2: TMenuItem
        Caption = 'Cost Breakup'
        OnClick = CostBreakup2Click
      end
      object CostBreakupWithoutMargin2: TMenuItem
        Caption = 'Cost Breakup Without Margin'
        OnClick = CostBreakupWithoutMargin2Click
      end
      object Cost1to102: TMenuItem
        Caption = 'Cost 1 to 10 (All Cars)'
        OnClick = Cost1to102Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Cost1to10Stacked2: TMenuItem
        Caption = 'Cost 1 to 10 (Stacked)'
        OnClick = Cost1to10Stacked2Click
      end
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
