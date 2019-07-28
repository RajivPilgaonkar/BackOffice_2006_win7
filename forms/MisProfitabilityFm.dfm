object MisProfitabilityForm: TMisProfitabilityForm
  Left = 107
  Top = 113
  Width = 846
  Height = 527
  Caption = 'MisProfitabilityForm'
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
    Width = 838
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 28
      Height = 13
      Caption = 'From'
      Transparent = True
    end
    object Label2: TLabel
      Left = 192
      Top = 12
      Width = 16
      Height = 13
      Caption = 'To'
      Transparent = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 48
      Top = 8
      TabOrder = 0
      Width = 121
    end
    object cxDateEdit2: TcxDateEdit
      Left = 224
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 452
    Width = 838
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButton2: TcxButton
      Left = 752
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton2Click
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 838
    Height = 411
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 405
    ClientRectLeft = 3
    ClientRectRight = 832
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Summary'
      ImageIndex = 0
      object InvoiceGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 829
        Height = 379
        Align = alClient
        TabOrder = 0
        object InvoiceGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = SummaryDS
          DataController.KeyFieldNames = 'MasterCode;Months_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsView.Indicator = True
          object InvoiceGridDBTableView1MasterCode: TcxGridDBColumn
            Caption = 'Master Code'
            DataBinding.FieldName = 'MasterCode'
            SortIndex = 0
            SortOrder = soAscending
            Width = 98
          end
          object InvoiceGridDBTableView1MonthName: TcxGridDBColumn
            Caption = 'Month'
            DataBinding.FieldName = 'MonthName'
          end
          object InvoiceGridDBTableView1NumPax: TcxGridDBColumn
            Caption = 'Num Pax'
            DataBinding.FieldName = 'NumPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 66
          end
          object InvoiceGridDBTableView1City: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            Visible = False
            Options.Filtering = False
          end
          object InvoiceGridDBTableView1Cost: TcxGridDBColumn
            DataBinding.FieldName = 'Cost'
            Options.Filtering = False
            Options.Grouping = False
            Width = 108
          end
          object InvoiceGridDBTableView1Revenue: TcxGridDBColumn
            DataBinding.FieldName = 'Revenue'
            Options.Filtering = False
            Options.Grouping = False
            Width = 124
          end
          object InvoiceGridDBTableView1Profit: TcxGridDBColumn
            DataBinding.FieldName = 'Profit'
            Options.Filtering = False
            Options.Grouping = False
            Width = 105
          end
          object InvoiceGridDBTableView1ProfitPerPax: TcxGridDBColumn
            Caption = 'Profit Per Pax'
            DataBinding.FieldName = 'ProfitPerPax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 103
          end
          object InvoiceGridDBTableView1Months_id: TcxGridDBColumn
            DataBinding.FieldName = 'Months_id'
            Visible = False
            Options.Filtering = False
          end
          object InvoiceGridDBTableView1Margin: TcxGridDBColumn
            DataBinding.FieldName = 'Margin'
            Options.Filtering = False
            Options.Grouping = False
            Width = 95
          end
        end
        object InvoiceGridLevel1: TcxGridLevel
          GridView = InvoiceGridDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Details'
      ImageIndex = 1
    end
  end
  object SummarySds: TSQLDataSet
    CommandText = 'exec p_MIS_Profit '#39'12/01/2005'#39', '#39'01/31/2006'#39', 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 32
    Top = 112
  end
  object SummaryDsp: TDataSetProvider
    DataSet = SummarySds
    Left = 56
    Top = 112
  end
  object SummaryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SummaryDsp'
    Left = 72
    Top = 112
    object SummaryCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 5
    end
    object SummaryCdsMonthName: TStringField
      FieldName = 'MonthName'
      Size = 12
    end
    object SummaryCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object SummaryCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object SummaryCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object SummaryCdsRevenue: TFMTBCDField
      FieldName = 'Revenue'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object SummaryCdsProfit: TFMTBCDField
      FieldName = 'Profit'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 0
    end
    object SummaryCdsProfitPerPax: TFMTBCDField
      FieldName = 'ProfitPerPax'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 0
    end
    object SummaryCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
    object SummaryCdsMargin: TFMTBCDField
      FieldName = 'Margin'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 0
    end
  end
  object SummaryDS: TDataSource
    DataSet = SummaryCds
    Left = 88
    Top = 112
  end
end
