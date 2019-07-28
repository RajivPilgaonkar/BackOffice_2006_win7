object InvVouCostCompareForm: TInvVouCostCompareForm
  Left = 155
  Top = 33
  Width = 1137
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
    Width = 1121
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
      Hint = 'Previous Month'
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
      Hint = 'Next Month'
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
    Width = 1121
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
    Width = 1121
    Height = 530
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1119
      Height = 528
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      OnChange = cxPageControl1Change
      ClientRectBottom = 522
      ClientRectLeft = 3
      ClientRectRight = 1113
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Inv v/s Voucher Cost'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1110
          Height = 496
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = InvVouCostCompDs
            DataController.KeyFieldNames = 'Diff_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1InvCost
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1VoucherCost
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Diff_id: TcxGridDBColumn
              DataBinding.FieldName = 'Diff_id'
              Visible = False
            end
            object cxGrid1DBTableView1Organisation: TcxGridDBColumn
              Caption = 'Principal Agent'
              DataBinding.FieldName = 'Organisation'
              Width = 169
            end
            object cxGrid1DBTableView1TourCode: TcxGridDBColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'TourCode'
              Width = 73
            end
            object cxGrid1DBTableView1TourDate: TcxGridDBColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'TourDate'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 100
            end
            object cxGrid1DBTableView1Forex: TcxGridDBColumn
              DataBinding.FieldName = 'Forex'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Width = 83
            end
            object cxGrid1DBTableView1currencycode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencycode'
              Width = 71
            end
            object cxGrid1DBTableView1ExchRate: TcxGridDBColumn
              Caption = 'Exch Rate'
              DataBinding.FieldName = 'ExchRate'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 84
            end
            object cxGrid1DBTableView1ExtraAmt: TcxGridDBColumn
              Caption = 'Extra Amt'
              DataBinding.FieldName = 'ExtraAmt'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Width = 83
            end
            object cxGrid1DBTableView1InvCost: TcxGridDBColumn
              Caption = 'Inv Amt'
              DataBinding.FieldName = 'InvCost'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Width = 109
            end
            object cxGrid1DBTableView1VoucherCost: TcxGridDBColumn
              Caption = 'Voucher Amt'
              DataBinding.FieldName = 'VoucherCost'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Width = 114
            end
            object cxGrid1DBTableView1Perc_Diff: TcxGridDBColumn
              Caption = '% Diff'
              DataBinding.FieldName = 'Perc_Diff'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Filtering = False
              Width = 77
            end
            object cxGrid1DBTableView1Addressbook_id: TcxGridDBColumn
              DataBinding.FieldName = 'Addressbook_id'
              Visible = False
            end
            object cxGrid1DBTableView1invoices_id: TcxGridDBColumn
              DataBinding.FieldName = 'invoices_id'
              Visible = False
            end
            object cxGrid1DBTableView1InvoiceNo: TcxGridDBColumn
              Caption = 'Invoice No'
              DataBinding.FieldName = 'InvoiceNo'
              Width = 80
            end
            object cxGrid1DBTableView1InvoiceDate: TcxGridDBColumn
              Caption = 'Invoice Date'
              DataBinding.FieldName = 'InvoiceDate'
              Width = 109
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
          Width = 1110
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
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBTableView1InvCost
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid2DBTableView1VoucherCost
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1Diff_id: TcxGridDBColumn
              DataBinding.FieldName = 'Diff_id'
              Visible = False
              Options.Editing = False
            end
            object cxGrid2DBTableView1Remarks: TcxGridDBColumn
              DataBinding.FieldName = 'Remarks'
              Width = 200
            end
            object cxGrid2DBTableView1TrsDate: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'TrsDate'
              Width = 106
            end
            object cxGrid2DBTableView1InvCost: TcxGridDBColumn
              Caption = 'Invoice Amt'
              DataBinding.FieldName = 'InvCost'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 115
            end
            object cxGrid2DBTableView1VoucherCost: TcxGridDBColumn
              Caption = 'Voucher Amt'
              DataBinding.FieldName = 'VoucherCost'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 100
            end
            object cxGrid2DBTableView1Perc_Diff: TcxGridDBColumn
              Caption = '% Diff'
              DataBinding.FieldName = 'Perc_Diff'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Width = 71
            end
            object cxGrid2DBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Visible = False
              Width = 100
            end
            object cxGrid2DBTableView1FromCity: TcxGridDBColumn
              DataBinding.FieldName = 'FromCity'
              Visible = False
              Width = 100
            end
            object cxGrid2DBTableView1ToCity: TcxGridDBColumn
              DataBinding.FieldName = 'ToCity'
              Visible = False
              Width = 100
            end
            object cxGrid2DBTableView1Hotel: TcxGridDBColumn
              DataBinding.FieldName = 'Hotel'
              Visible = False
              Width = 100
            end
            object cxGrid2DBTableView1Match: TcxGridDBColumn
              DataBinding.FieldName = 'Match'
              Width = 51
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object InvVouCostCompSds: TSQLDataSet
    CommandText = 'exec [p_CostDiff_Inv_Voucher]  '#39'03/01/2013'#39', '#39'03/31/2013'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 152
    Top = 107
  end
  object InvVouCostCompDsp: TDataSetProvider
    DataSet = InvVouCostCompSds
    Left = 168
    Top = 107
  end
  object InvVouCostCompCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InvVouCostCompDsp'
    Left = 192
    Top = 107
    object InvVouCostCompCdsDiff_id: TIntegerField
      FieldName = 'Diff_id'
    end
    object InvVouCostCompCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object InvVouCostCompCdsTourCode: TStringField
      FieldName = 'TourCode'
    end
    object InvVouCostCompCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object InvVouCostCompCdsForex: TFMTBCDField
      FieldName = 'Forex'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object InvVouCostCompCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object InvVouCostCompCdsExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object InvVouCostCompCdsInvCost: TFMTBCDField
      FieldName = 'InvCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object InvVouCostCompCdsVoucherCost: TFMTBCDField
      FieldName = 'VoucherCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object InvVouCostCompCdsPerc_Diff: TFMTBCDField
      FieldName = 'Perc_Diff'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object InvVouCostCompCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object InvVouCostCompCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object InvVouCostCompCdsInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object InvVouCostCompCdsInvoiceDate: TSQLTimeStampField
      FieldName = 'InvoiceDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object InvVouCostCompCdsExtraAmt: TFMTBCDField
      FieldName = 'ExtraAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object InvVouCostCompDs: TDataSource
    DataSet = InvVouCostCompCds
    Left = 208
    Top = 107
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 579
    object ComputeVoucherCosts1: TMenuItem
      Caption = 'Enter Exch Rate for Principal Agent'
      OnClick = ComputeVoucherCosts1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EnterExchRateforselectedInvoice1: TMenuItem
      Caption = 'Enter Exch Rate for  selected Invoice'
      OnClick = EnterExchRateforselectedInvoice1Click
    end
  end
  object TourCostSds: TSQLDataSet
    CommandText = 'exec [p_CostDiff_Inv_Voucher_TourCode] '#39'RK2519'#39', '#39'02/02/2015'#39', 1'
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
    object TourCostCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 254
    end
    object TourCostCdsTrsDate: TSQLTimeStampField
      FieldName = 'TrsDate'
    end
    object TourCostCdsForex: TFMTBCDField
      FieldName = 'Forex'
      Precision = 18
      Size = 4
    end
    object TourCostCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object TourCostCdsExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 4
    end
    object TourCostCdsInvCost: TFMTBCDField
      FieldName = 'InvCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TourCostCdsVoucherCost: TFMTBCDField
      FieldName = 'VoucherCost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TourCostCdsPerc_Diff: TFMTBCDField
      FieldName = 'Perc_Diff'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object TourCostCdsService: TStringField
      FieldName = 'Service'
      Size = 100
    end
    object TourCostCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object TourCostCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object TourCostCdsHotel: TStringField
      FieldName = 'Hotel'
      Size = 60
    end
    object TourCostCdsMatch: TBooleanField
      FieldName = 'Match'
    end
  end
  object TourCostDs: TDataSource
    DataSet = TourCostCds
    Left = 368
    Top = 123
  end
end
