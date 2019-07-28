object Custom_1MG_1DG_Form: TCustom_1MG_1DG_Form
  Left = 328
  Top = 79
  Width = 869
  Height = 659
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 233
    Width = 861
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 584
    Width = 861
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      Kind = cxbkDropDownButton
    end
    object cxDBLabelKeyId_Master: TcxDBLabel
      Left = 708
      Top = 3
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxButtonClose: TcxButton
      Left = 776
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 2
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 709
      Top = 19
      DataBinding.DataSource = DetailDs
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 861
    Height = 192
    Align = alTop
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 859
      Height = 190
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 184
      ClientRectLeft = 3
      ClientRectRight = 853
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Master'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 850
          Height = 158
          Align = alClient
          TabOrder = 0
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 241
    Width = 861
    Height = 343
    Align = alClient
    TabOrder = 3
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 859
      Height = 341
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 335
      ClientRectLeft = 3
      ClientRectRight = 853
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Detail'
        ImageIndex = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 850
          Height = 309
          Align = alClient
          TabOrder = 0
          object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DetailDs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBBandedTableView1
          end
        end
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 64
    Top = 8
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 94
    Top = 8
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 127
    Top = 8
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 157
    Top = 8
  end
  object DetailSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 288
    Top = 8
  end
  object DetailDsp: TDataSetProvider
    DataSet = DetailSds
    UpdateMode = upWhereKeyOnly
    Left = 318
    Top = 8
  end
  object DetailCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DetailDsp'
    BeforeInsert = DetailCdsBeforeInsert
    BeforeEdit = DetailCdsBeforeEdit
    BeforePost = DetailCdsBeforePost
    AfterPost = DetailCdsAfterPost
    BeforeDelete = DetailCdsBeforeDelete
    AfterDelete = DetailCdsAfterDelete
    Left = 351
    Top = 8
  end
  object DetailDs: TDataSource
    DataSet = DetailCds
    Left = 381
    Top = 8
  end
end
