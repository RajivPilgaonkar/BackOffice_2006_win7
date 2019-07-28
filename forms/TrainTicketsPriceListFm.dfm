object TrainTicketsPriceListForm: TTrainTicketsPriceListForm
  Left = 357
  Top = 138
  Width = 569
  Height = 203
  Caption = 'Train Tickets Price List'
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
  object Label1: TLabel
    Left = 339
    Top = 53
    Width = 47
    Height = 13
    Caption = 'NumPax'
    Transparent = True
    Visible = False
  end
  object ExchRateLabel: TLabel
    Left = 226
    Top = 38
    Width = 87
    Height = 13
    Caption = 'ExchRateLabel'
  end
  object cxFromDateEdit: TcxDateEdit
    Left = 77
    Top = 9
    TabOrder = 0
    Width = 144
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 10
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
  object cxMarginCkb: TcxCheckBox
    Left = 336
    Top = 79
    Caption = 'Add Margin'
    State = cbsChecked
    TabOrder = 2
    Transparent = True
    Visible = False
    Width = 87
  end
  object cxCurrencyLcmb: TcxLookupComboBox
    Left = 77
    Top = 36
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
  object cxLabel3: TcxLabel
    Left = 8
    Top = 35
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
  object cxNumPaxEdit: TcxMaskEdit
    Left = 389
    Top = 49
    Enabled = False
    Properties.EditMask = '!99;1; '
    Properties.MaxLength = 0
    TabOrder = 5
    Text = ' 1'
    Visible = False
    Width = 30
  end
  object cxMarginEdit: TcxMaskEdit
    Left = 423
    Top = 77
    Properties.EditMask = '!99;1; '
    Properties.MaxLength = 0
    TabOrder = 6
    Text = '23'
    Visible = False
    Width = 30
  end
  object cxDetailsCkb: TcxCheckBox
    Left = 433
    Top = 50
    Caption = 'Show Details'
    State = cbsChecked
    TabOrder = 7
    Transparent = True
    Visible = False
    Width = 98
  end
  object cxServiceTaxCkb: TcxCheckBox
    Left = 337
    Top = 98
    Caption = 'Service Tax'
    State = cbsChecked
    TabOrder = 8
    Transparent = True
    Visible = False
    Width = 141
  end
  object Panel1: TPanel
    Left = 0
    Top = 124
    Width = 553
    Height = 41
    Align = alBottom
    TabOrder = 9
    object CloseBtn: TcxButton
      Left = 461
      Top = 6
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
      Left = 10
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 113
    Top = 106
    object Statewise1: TMenuItem
      Caption = 'Trains Report'
      Visible = False
      OnClick = Statewise1Click
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object CostBreakup1: TMenuItem
      Caption = 'Cost Breakup'
      OnClick = CostBreakup1Click
    end
    object CostBreakupWith1: TMenuItem
      Caption = 'Cost Breakup Without Margin'
      OnClick = CostBreakupWith1Click
    end
    object Cost1to101: TMenuItem
      Caption = 'Cost 1 to 10'
      OnClick = Cost1to101Click
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
    Left = 376
    Top = 35
  end
end
