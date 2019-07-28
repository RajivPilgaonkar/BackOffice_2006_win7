object GuidePriceListForm: TGuidePriceListForm
  Left = 204
  Top = 55
  Width = 685
  Height = 608
  Caption = 'Guide Price List'
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
    Left = 234
    Top = 495
    Width = 47
    Height = 13
    Caption = 'NumPax'
  end
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
  object cxButton1: TcxButton
    Left = 481
    Top = 488
    Width = 75
    Height = 25
    Caption = 'Reports'
    TabOrder = 1
    DropDownMenu = PopupMenu1
    Kind = cxbkDropDownButton
  end
  object cxFromDateEdit: TcxDateEdit
    Left = 76
    Top = 491
    TabOrder = 2
    Width = 144
  end
  object cxLabel1: TcxLabel
    Left = 7
    Top = 492
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
  object CloseBtn: TcxButton
    Left = 580
    Top = 487
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 4
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
  object cxMarginCkb: TcxCheckBox
    Left = 231
    Top = 517
    Caption = 'Add Margin'
    State = cbsChecked
    TabOrder = 5
    Transparent = True
    Width = 87
  end
  object cxCurrencyLcmb: TcxLookupComboBox
    Left = 76
    Top = 514
    Properties.KeyFieldNames = 'currencies_id'
    Properties.ListColumns = <
      item
        FieldName = 'currency'
      end>
    Properties.ListSource = BackOfficeDataModule.CurrenciesDS
    TabOrder = 6
    Width = 145
  end
  object cxLabel3: TcxLabel
    Left = 7
    Top = 513
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
  object cxVoucherCkb: TcxCheckBox
    Left = 481
    Top = 517
    Caption = 'Show Voucher Costs'
    TabOrder = 8
    Transparent = True
    Visible = False
    Width = 141
  end
  object cxNumPaxEdit: TcxMaskEdit
    Left = 284
    Top = 491
    Properties.EditMask = '!99;1; '
    Properties.MaxLength = 0
    TabOrder = 9
    Text = ' 2'
    Width = 30
  end
  object cxMarginEdit: TcxMaskEdit
    Left = 318
    Top = 515
    Properties.EditMask = '!99;1; '
    Properties.MaxLength = 0
    TabOrder = 10
    Text = '23'
    Width = 30
  end
  object cxDetailsCkb: TcxCheckBox
    Left = 328
    Top = 492
    Caption = 'Show Details'
    State = cbsChecked
    TabOrder = 11
    Transparent = True
    Width = 98
  end
  object cxRecoCkb: TcxCheckBox
    Left = 448
    Top = 422
    Caption = 'Recommended'
    State = cbsChecked
    TabOrder = 12
    Transparent = True
    Width = 113
  end
  object cxServiceTaxCkb: TcxCheckBox
    Left = 481
    Top = 533
    Caption = 'Service Tax'
    TabOrder = 13
    Transparent = True
    Width = 141
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
    Left = 488
    Top = 456
    object Statewise1: TMenuItem
      Caption = 'State - wise'
      OnClick = Statewise1Click
    end
    object Citywise1: TMenuItem
      Caption = 'City - wise'
      OnClick = Citywise1Click
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
