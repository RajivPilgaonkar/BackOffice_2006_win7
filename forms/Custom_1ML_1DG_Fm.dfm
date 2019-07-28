object Custom_1ML_1DG_Form: TCustom_1ML_1DG_Form
  Left = 217
  Top = 53
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
    Top = 391
    Width = 897
    Height = 5
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
    object cxDBNavigator1: TcxDBNavigator
      Left = 248
      Top = 4
      Width = 270
      Height = 31
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 897
    Height = 350
    Align = alTop
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 895
      Height = 348
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 342
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
    Top = 396
    Width = 897
    Height = 184
    Align = alClient
    TabOrder = 3
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 895
      Height = 182
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 176
      ClientRectLeft = 3
      ClientRectRight = 889
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Detail'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 150
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
end
