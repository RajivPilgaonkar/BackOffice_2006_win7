object Custom_Presto_Form: TCustom_Presto_Form
  Left = 265
  Top = 42
  Width = 913
  Height = 691
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 612
    Width = 897
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
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
  object cxPageControl3: TcxPageControl
    Left = 0
    Top = 41
    Width = 897
    Height = 571
    ActivePage = cxTabSheet14
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 565
    ClientRectLeft = 3
    ClientRectRight = 891
    ClientRectTop = 26
    object cxTabSheet3: TcxTabSheet
      Caption = 'Presto'
      ImageIndex = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 350
        Width = 888
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 888
        Height = 350
        Align = alTop
        TabOrder = 0
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 1
          Width = 886
          Height = 348
          ActivePage = cxTabSheet1
          Align = alClient
          TabOrder = 0
          ClientRectBottom = 342
          ClientRectLeft = 3
          ClientRectRight = 880
          ClientRectTop = 26
          object cxTabSheet1: TcxTabSheet
            Caption = 'Master'
            ImageIndex = 0
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 353
        Width = 888
        Height = 186
        Align = alClient
        TabOrder = 1
        object cxPageControl2: TcxPageControl
          Left = 1
          Top = 1
          Width = 886
          Height = 184
          ActivePage = cxTabSheet2
          Align = alClient
          TabOrder = 0
          ClientRectBottom = 178
          ClientRectLeft = 3
          ClientRectRight = 880
          ClientRectTop = 26
          object cxTabSheet2: TcxTabSheet
            Caption = 'Detail'
            ImageIndex = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 877
              Height = 152
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
    end
    object cxTabSheet10: TcxTabSheet
      Caption = 'Itinerary'
      ImageIndex = 1
    end
    object cxTabSheet11: TcxTabSheet
      Caption = 'Composite'
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 0
        Top = 350
        Width = 888
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Beveled = True
      end
      object Panel20: TPanel
        Left = 0
        Top = 0
        Width = 888
        Height = 350
        Align = alTop
        TabOrder = 0
      end
      object Panel21: TPanel
        Left = 0
        Top = 353
        Width = 888
        Height = 186
        Align = alClient
        TabOrder = 1
      end
    end
    object cxTabSheet14: TcxTabSheet
      Caption = 'Agent List'
      ImageIndex = 3
    end
  end
  object MasterSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 24
    Top = 8
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 38
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
    Left = 55
    Top = 8
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 69
    Top = 8
  end
  object DetailSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 8
  end
  object DetailDsp: TDataSetProvider
    DataSet = DetailSds
    UpdateMode = upWhereKeyOnly
    Left = 150
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
    Left = 167
    Top = 8
  end
  object DetailDs: TDataSource
    DataSet = DetailCds
    Left = 181
    Top = 8
  end
  object DetailItinSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 712
    Top = 48
  end
  object DetailItinDsp: TDataSetProvider
    DataSet = DetailItinSds
    UpdateMode = upWhereKeyOnly
    Left = 742
    Top = 48
  end
  object DetailItinCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DetailItinDsp'
    BeforeInsert = DetailItinCdsBeforeInsert
    BeforeEdit = DetailItinCdsBeforeEdit
    BeforePost = DetailItinCdsBeforePost
    AfterPost = DetailItinCdsAfterPost
    BeforeDelete = DetailItinCdsBeforeDelete
    AfterDelete = DetailItinCdsAfterDelete
    Left = 775
    Top = 48
  end
  object DetailItinDs: TDataSource
    DataSet = DetailItinCds
    Left = 805
    Top = 48
  end
  object ItinerarySds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 712
    Top = 80
  end
  object ItineraryDsp: TDataSetProvider
    DataSet = ItinerarySds
    UpdateMode = upWhereKeyOnly
    Left = 742
    Top = 80
  end
  object ItineraryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ItineraryDsp'
    BeforeInsert = ItineraryCdsBeforeInsert
    BeforeEdit = ItineraryCdsBeforeEdit
    BeforePost = ItineraryCdsBeforePost
    AfterPost = ItineraryCdsAfterPost
    BeforeDelete = ItineraryCdsBeforeDelete
    AfterDelete = ItineraryCdsAfterDelete
    Left = 775
    Top = 80
  end
  object ItineraryDs: TDataSource
    DataSet = ItineraryCds
    Left = 805
    Top = 80
  end
  object InclusionsSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 712
    Top = 112
  end
  object InclusionsDsp: TDataSetProvider
    DataSet = InclusionsSds
    UpdateMode = upWhereKeyOnly
    Left = 742
    Top = 112
  end
  object InclusionsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InclusionsDsp'
    BeforeInsert = InclusionsCdsBeforeInsert
    BeforeEdit = InclusionsCdsBeforeEdit
    BeforePost = InclusionsCdsBeforePost
    AfterPost = InclusionsCdsAfterPost
    BeforeDelete = InclusionsCdsBeforeDelete
    AfterDelete = InclusionsCdsAfterDelete
    Left = 775
    Top = 112
  end
  object InclusionsDs: TDataSource
    DataSet = InclusionsCds
    Left = 805
    Top = 112
  end
  object SubDetailSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 712
    Top = 152
  end
  object SubDetailDsp: TDataSetProvider
    DataSet = SubDetailSds
    UpdateMode = upWhereKeyOnly
    Left = 742
    Top = 152
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
    Left = 775
    Top = 152
  end
  object SubDetailDs: TDataSource
    DataSet = SubDetailCds
    Left = 805
    Top = 152
  end
  object QuoPrintSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 712
    Top = 8
  end
  object QuoPrintDsp: TDataSetProvider
    DataSet = QuoPrintSds
    UpdateMode = upWhereKeyOnly
    Left = 742
    Top = 8
  end
  object QuoPrintCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoPrintDsp'
    BeforeInsert = QuoPrintCdsBeforeInsert
    BeforeEdit = QuoPrintCdsBeforeEdit
    BeforePost = QuoPrintCdsBeforePost
    AfterPost = QuoPrintCdsAfterPost
    BeforeDelete = QuoPrintCdsBeforeDelete
    AfterDelete = QuoPrintCdsAfterDelete
    Left = 775
    Top = 8
  end
  object QuoPrintDs: TDataSource
    DataSet = QuoPrintCds
    Left = 805
    Top = 8
  end
  object QuoLinesSds: TSQLDataSet
    CommandText = 'exec p_QuoQuote :Quotations_id, 1'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
    Top = 8
  end
  object QuoLinesDsp: TDataSetProvider
    DataSet = QuoLinesSds
    Left = 280
    Top = 8
  end
  object QuoLinesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoLinesDsp'
    Left = 296
    Top = 8
  end
  object QuoLinesDs: TDataSource
    DataSet = QuoLinesCds
    Left = 312
    Top = 8
  end
  object AgentListSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Quo_AgentList'#13#10'WHERE Quotations_id = :Quotations_i' +
      'd'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 8
  end
  object AgentListDsp: TDataSetProvider
    DataSet = AgentListSds
    Left = 392
    Top = 8
  end
  object AgentListCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentListDsp'
    AfterPost = AgentListCdsAfterPost
    Left = 408
    Top = 8
  end
  object AgentListDs: TDataSource
    DataSet = AgentListCds
    Left = 424
    Top = 8
  end
end
