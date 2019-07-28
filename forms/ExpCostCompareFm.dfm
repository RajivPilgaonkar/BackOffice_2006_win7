object ExpCostCompareForm: TExpCostCompareForm
  Left = 50
  Top = 172
  Width = 968
  Height = 650
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
    Width = 952
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 11
      Top = 14
      Caption = 'Tour Dates between'
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 140
      Top = 14
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 272
      Top = 16
      Caption = 'and'
    end
    object cxToDateEdit: TcxDateEdit
      Left = 308
      Top = 14
      TabOrder = 3
      Width = 121
    end
    object cxFromDateButton: TcxButton
      Left = 448
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Previous Week'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxFromDateButtonClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object cxToDateButton: TcxButton
      Left = 496
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Next Week'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = cxToDateButtonClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
    object cxGenerateButton: TcxButton
      Left = 584
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 6
      OnClick = cxGenerateButtonClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 571
    Width = 952
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 865
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton4Click
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 952
    Height = 530
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 950
      Height = 528
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = cxPageControl1Change
      ClientRectBottom = 522
      ClientRectLeft = 3
      ClientRectRight = 944
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Quo v/s Voucher Exp Cost'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 941
          Height = 496
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ExpCostCompDs
            DataController.KeyFieldNames = 'Diff_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1Quo_ExpCost
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1Quo_Quote
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1Vou_ExpCost
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Diff_id: TcxGridDBColumn
              DataBinding.FieldName = 'Diff_id'
              Visible = False
            end
            object cxGrid1DBTableView1TourCode: TcxGridDBColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'TourCode'
              Width = 91
            end
            object cxGrid1DBTableView1TourDate: TcxGridDBColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'TourDate'
              Width = 119
            end
            object cxGrid1DBTableView1Quo_ExpCost: TcxGridDBColumn
              Caption = 'Total Cost'
              DataBinding.FieldName = 'Quo_ExpCost'
            end
            object cxGrid1DBTableView1Quo_Quote: TcxGridDBColumn
              Caption = 'Quote'
              DataBinding.FieldName = 'Quo_Quote'
            end
            object cxGrid1DBTableView1Vou_ExpCost: TcxGridDBColumn
              Caption = 'Voucher Cost (Exp)'
              DataBinding.FieldName = 'Vou_ExpCost'
            end
            object cxGrid1DBTableView1Margin_Quote: TcxGridDBColumn
              Caption = 'Margin '
              DataBinding.FieldName = 'Margin_Quote'
              Width = 78
            end
            object cxGrid1DBTableView1Perc_Diff: TcxGridDBColumn
              Caption = '% Diff Exp Cost'
              DataBinding.FieldName = 'Perc_Diff'
              Width = 107
            end
            object cxGrid1DBTableView1Quotations_id: TcxGridDBColumn
              DataBinding.FieldName = 'Quotations_id'
              Visible = False
            end
            object cxGrid1DBTableView1IssuedBy: TcxGridDBColumn
              Caption = 'Issued By'
              DataBinding.FieldName = 'IssuedBy'
              Width = 100
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Tour Cost Breakup'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 941
          Height = 496
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TourCostDs
            DataController.KeyFieldNames = 'Diff_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBTableView1QuoCost
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBTableView1VouCost
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1Diff_id: TcxGridDBColumn
              DataBinding.FieldName = 'Diff_id'
              Visible = False
            end
            object cxGrid2DBTableView1QuoString: TcxGridDBColumn
              Caption = 'Description'
              DataBinding.FieldName = 'QuoString'
              Width = 300
            end
            object cxGrid2DBTableView1QuoDate: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'QuoDate'
              Width = 117
            end
            object cxGrid2DBTableView1Cities_id: TcxGridDBColumn
              DataBinding.FieldName = 'Cities_id'
              Visible = False
            end
            object cxGrid2DBTableView1Addressbook_id: TcxGridDBColumn
              DataBinding.FieldName = 'Addressbook_id'
              Visible = False
            end
            object cxGrid2DBTableView1Services_id: TcxGridDBColumn
              DataBinding.FieldName = 'Services_id'
              Visible = False
            end
            object cxGrid2DBTableView1TrsType: TcxGridDBColumn
              DataBinding.FieldName = 'TrsType'
              Visible = False
            end
            object cxGrid2DBTableView1QuoCost: TcxGridDBColumn
              Caption = 'Total Cost'
              DataBinding.FieldName = 'QuoCost'
            end
            object cxGrid2DBTableView1VouCost: TcxGridDBColumn
              Caption = 'Voucher Cost'
              DataBinding.FieldName = 'VouCost'
            end
            object cxGrid2DBTableView1Diff: TcxGridDBColumn
              DataBinding.FieldName = 'Diff'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object ExpCostCompSds: TSQLDataSet
    CommandText = 'exec [p_CostDiff_Quo_Voucher] '#39'03/01/2013'#39', '#39'03/31/2013'#39', 1, '#39#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 160
    Top = 75
  end
  object ExpCostCompDsp: TDataSetProvider
    DataSet = ExpCostCompSds
    Left = 176
    Top = 75
  end
  object ExpCostCompCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ExpCostCompDsp'
    Left = 192
    Top = 75
    object ExpCostCompCdsDiff_id: TIntegerField
      FieldName = 'Diff_id'
    end
    object ExpCostCompCdsTourCode: TStringField
      FieldName = 'TourCode'
    end
    object ExpCostCompCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ExpCostCompCdsQuo_ExpCost: TFMTBCDField
      FieldName = 'Quo_ExpCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ExpCostCompCdsQuo_Quote: TFMTBCDField
      FieldName = 'Quo_Quote'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ExpCostCompCdsVou_ExpCost: TFMTBCDField
      FieldName = 'Vou_ExpCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ExpCostCompCdsMargin_Quote: TFMTBCDField
      FieldName = 'Margin_Quote'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ExpCostCompCdsPerc_Diff: TFMTBCDField
      FieldName = 'Perc_Diff'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ExpCostCompCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object ExpCostCompCdsIssuedBy: TStringField
      FieldName = 'IssuedBy'
      Size = 50
    end
  end
  object ExpCostCompDs: TDataSource
    DataSet = ExpCostCompCds
    Left = 208
    Top = 75
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 579
    object ComputeVoucherCosts1: TMenuItem
      Caption = 'Compute Voucher Costs'
      OnClick = ComputeVoucherCosts1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ComputeQuotationCosts1: TMenuItem
      Caption = 'Compute Quotation Costs'
      OnClick = ComputeQuotationCosts1Click
    end
  end
  object TourCostSds: TSQLDataSet
    CommandText = 'exec p_CostDiff_Quo_Vou_Lines '#39'RK1990'#39', '#39'03/02/2013'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 123
  end
  object TourCostDsp: TDataSetProvider
    DataSet = TourCostSds
    Left = 336
    Top = 123
  end
  object TourCostCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCostDsp'
    Left = 352
    Top = 123
    object TourCostCdsDiff_id: TIntegerField
      FieldName = 'Diff_id'
    end
    object TourCostCdsQuoString: TStringField
      FieldName = 'QuoString'
      Size = 100
    end
    object TourCostCdsQuoDate: TSQLTimeStampField
      FieldName = 'QuoDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TourCostCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object TourCostCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object TourCostCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object TourCostCdsTrsType: TIntegerField
      FieldName = 'TrsType'
    end
    object TourCostCdsQuoCost: TFMTBCDField
      FieldName = 'QuoCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TourCostCdsVouCost: TFMTBCDField
      FieldName = 'VouCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TourCostCdsDiff: TBooleanField
      FieldName = 'Diff'
    end
  end
  object TourCostDs: TDataSource
    DataSet = TourCostCds
    Left = 368
    Top = 123
  end
end
