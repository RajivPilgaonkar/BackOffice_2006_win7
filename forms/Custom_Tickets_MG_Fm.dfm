object Custom_Tickets_MG_Form: TCustom_Tickets_MG_Form
  Left = 68
  Top = 82
  Width = 841
  Height = 557
  Caption = 'Custom Tickets MG'
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
    Width = 825
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 478
    Width = 825
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxButtonClose: TcxButton
      Left = 744
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId: TcxDBLabel
      Left = 668
      Top = 11
      DataBinding.DataSource = FerriesDs
      Style.TextStyle = []
      Transparent = True
      Height = 24
      Width = 61
    end
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 825
    Height = 437
    Align = alClient
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 823
      Height = 435
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 429
      ClientRectLeft = 3
      ClientRectRight = 817
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Flights'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 403
          Align = alClient
          TabOrder = 0
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = FlightsDs
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
      object cxTabSheet2: TcxTabSheet
        Caption = 'Trains'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 403
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TrainsDs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
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
      object cxTabSheet3: TcxTabSheet
        Caption = 'Buses'
        ImageIndex = 2
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 403
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = BusesDs
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
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBBandedTableView2
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Ferries'
        ImageIndex = 3
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 403
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = FerriesDs
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
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
    end
  end
  object FlightsSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 208
  end
  object FlightsDsp: TDataSetProvider
    DataSet = FlightsSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 208
  end
  object FlightsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FlightsDsp'
    BeforeInsert = FlightsCdsBeforeInsert
    BeforeEdit = FlightsCdsBeforeEdit
    BeforePost = FlightsCdsBeforePost
    AfterPost = FlightsCdsAfterPost
    BeforeDelete = FlightsCdsBeforeDelete
    AfterDelete = FlightsCdsAfterDelete
    Left = 255
    Top = 208
  end
  object FlightsDs: TDataSource
    DataSet = FlightsCds
    Left = 285
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 89
    Top = 543
  end
  object TrainsSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 248
  end
  object TrainsDsp: TDataSetProvider
    DataSet = TrainsSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 248
  end
  object TrainsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainsDsp'
    BeforeInsert = TrainsCdsBeforeInsert
    BeforeEdit = TrainsCdsBeforeEdit
    BeforePost = TrainsCdsBeforePost
    AfterPost = TrainsCdsAfterPost
    BeforeDelete = TrainsCdsBeforeDelete
    AfterDelete = TrainsCdsAfterDelete
    Left = 255
    Top = 248
  end
  object TrainsDs: TDataSource
    DataSet = TrainsCds
    Left = 285
    Top = 248
  end
  object BusesSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 288
  end
  object BusesDsp: TDataSetProvider
    DataSet = BusesSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 288
  end
  object BusesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BusesDsp'
    BeforeInsert = BusesCdsBeforeInsert
    BeforeEdit = BusesCdsBeforeEdit
    BeforePost = BusesCdsBeforePost
    AfterPost = BusesCdsAfterPost
    BeforeDelete = BusesCdsBeforeDelete
    AfterDelete = BusesCdsAfterDelete
    Left = 255
    Top = 288
  end
  object BusesDs: TDataSource
    DataSet = BusesCds
    Left = 285
    Top = 288
  end
  object FerriesSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 328
  end
  object FerriesDsp: TDataSetProvider
    DataSet = FerriesSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 328
  end
  object FerriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FerriesDsp'
    BeforeInsert = FerriesCdsBeforeInsert
    BeforeEdit = FerriesCdsBeforeEdit
    BeforePost = FerriesCdsBeforePost
    AfterPost = FerriesCdsAfterPost
    BeforeDelete = FerriesCdsBeforeDelete
    AfterDelete = FerriesCdsAfterDelete
    Left = 255
    Top = 328
  end
  object FerriesDs: TDataSource
    DataSet = FerriesCds
    Left = 285
    Top = 328
  end
end
