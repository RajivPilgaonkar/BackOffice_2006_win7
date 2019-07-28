object Custom_1ML_1DG_1SDG_Form: TCustom_1ML_1DG_1SDG_Form
  Left = 100
  Top = 47
  Width = 913
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
    Width = 897
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 580
    Width = 897
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
      Visible = False
      Kind = cxbkDropDownButton
    end
    object cxButtonClose: TcxButton
      Left = 813
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 605
      Top = 19
      DataBinding.DataField = 'BankAccounts_id'
      DataBinding.DataSource = DetailDs
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxDBLabelKeyId_Master: TcxDBLabel
      Left = 604
      Top = 3
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxDBLabelKeyId_SubDetail: TcxDBLabel
      Left = 692
      Top = 19
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 897
    Height = 192
    Align = alTop
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 895
      Height = 190
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 184
      ClientRectLeft = 3
      ClientRectRight = 889
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Master'
        ImageIndex = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 241
    Width = 897
    Height = 339
    Align = alClient
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 577
      Top = 1
      Width = 5
      Height = 337
    end
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 576
      Height = 337
      ActivePage = cxTabSheet2
      Align = alLeft
      TabOrder = 0
      ClientRectBottom = 331
      ClientRectLeft = 3
      ClientRectRight = 570
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Detail'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 567
          Height = 305
          Align = alClient
          TabOrder = 0
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
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
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
    object cxPageControl3: TcxPageControl
      Left = 582
      Top = 1
      Width = 314
      Height = 337
      ActivePage = cxTabSheet3
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 331
      ClientRectLeft = 3
      ClientRectRight = 308
      ClientRectTop = 26
      object cxTabSheet3: TcxTabSheet
        Caption = 'Sub Detail'
        ImageIndex = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 305
          Height = 305
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
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
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBBandedTableView1
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
  object SubDetailSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 472
    Top = 8
  end
  object SubDetailDsp: TDataSetProvider
    DataSet = SubDetailSds
    UpdateMode = upWhereKeyOnly
    Left = 502
    Top = 8
  end
  object SubDetailCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SubDetailDsp'
    BeforeInsert = SubDetailCdsBeforeInsert
    BeforeEdit = SubDetailCdsBeforeEdit
    BeforePost = SubDetailCdsBeforePost
    AfterPost = SubDetailCdsAfterPost
    BeforeDelete = SubDetailCdsBeforeDelete
    AfterDelete = SubDetailCdsAfterDelete
    Left = 535
    Top = 8
  end
  object SubDetailDs: TDataSource
    DataSet = SubDetailCds
    Left = 565
    Top = 8
  end
end
