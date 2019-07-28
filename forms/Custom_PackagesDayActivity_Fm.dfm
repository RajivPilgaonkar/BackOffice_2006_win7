object Custom_PackagesDayActivity_Form: TCustom_PackagesDayActivity_Form
  Left = 151
  Top = 98
  Width = 1115
  Height = 586
  Caption = 'Custom_PackagesDayActivity_Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
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
    Width = 1099
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 507
    Width = 1099
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButtonClose: TcxButton
      Left = 1017
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButtonCloseClick
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 1099
    Height = 466
    ActivePage = cxTabSheetSs
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 460
    ClientRectLeft = 3
    ClientRectRight = 1093
    ClientRectTop = 26
    object cxTabSheetTickets: TcxTabSheet
      Caption = 'Tickets'
      ImageIndex = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1090
        Height = 41
        Align = alTop
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 0
        Top = 393
        Width = 1090
        Height = 41
        Align = alBottom
        TabOrder = 1
        object cxDBLabelKeyId_Tickets: TcxDBLabel
          Left = 1007
          Top = 11
          Style.TextStyle = []
          Transparent = True
          Height = 15
          Width = 61
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 1090
        Height = 352
        Align = alClient
        TabOrder = 2
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.KeyFieldNames = 'categories_id'
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
    object cxTabSheetAcc: TcxTabSheet
      Caption = 'Accommodation'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 393
        Width = 1090
        Height = 41
        Align = alBottom
        TabOrder = 0
        object cxDBLabelKeyId_Acc: TcxDBLabel
          Left = 1007
          Top = 11
          Style.TextStyle = []
          Transparent = True
          Height = 15
          Width = 61
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 393
        Align = alClient
        TabOrder = 1
        object cxGridDBBandedTableView2: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.KeyFieldNames = 'categories_id'
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
    object cxTabSheetSs: TcxTabSheet
      Caption = 'Sightseeing'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 393
        Width = 1090
        Height = 41
        Align = alBottom
        TabOrder = 0
        object cxDBLabelKeyId_Ss: TcxDBLabel
          Left = 1007
          Top = 11
          Style.TextStyle = []
          Transparent = True
          Height = 15
          Width = 61
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 393
        Align = alClient
        TabOrder = 1
        object cxGridDBBandedTableView3: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.KeyFieldNames = 'categories_id'
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
    object cxTabSheetTrsf: TcxTabSheet
      Caption = 'Transfers'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 393
        Width = 1090
        Height = 41
        Align = alBottom
        TabOrder = 0
        object cxDBLabelKeyId_Transfers: TcxDBLabel
          Left = 1007
          Top = 11
          Style.TextStyle = []
          Transparent = True
          Height = 15
          Width = 61
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 393
        Align = alClient
        TabOrder = 1
        object cxGridDBBandedTableView4: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.KeyFieldNames = 'categories_id'
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
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBBandedTableView4
        end
      end
    end
  end
  object TicketsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM PackagesTickets'#13#10'WHERE Packages_id = :Packages_id'#13 +
      #10'ORDER BY DayNo, PackagesTickets_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 144
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 144
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketsDsp'
    BeforeInsert = TicketsCdsBeforeInsert
    BeforeEdit = TicketsCdsBeforeEdit
    BeforePost = TicketsCdsBeforePost
    AfterPost = TicketsCdsAfterPost
    BeforeDelete = TicketsCdsBeforeDelete
    AfterDelete = TicketsCdsAfterDelete
    Left = 63
    Top = 144
    object TicketsCdsPackagesTickets_id: TIntegerField
      FieldName = 'PackagesTickets_id'
    end
    object TicketsCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object TicketsCdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object TicketsCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object TicketsCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object TicketsCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object TicketsCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object TicketsCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 85
    Top = 144
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM PackagesAccommodation'#13#10'WHERE Packages_id = :Packag' +
      'es_id'#13#10'ORDER BY DayIn'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 176
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 176
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    BeforeInsert = AccCdsBeforeInsert
    BeforeEdit = AccCdsBeforeEdit
    BeforePost = AccCdsBeforePost
    AfterPost = AccCdsAfterPost
    BeforeDelete = AccCdsBeforeDelete
    AfterDelete = AccCdsAfterDelete
    Left = 63
    Top = 176
    object AccCdsPackagesAccommodation_id: TIntegerField
      FieldName = 'PackagesAccommodation_id'
    end
    object AccCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object AccCdsDayIn: TIntegerField
      FieldName = 'DayIn'
    end
    object AccCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object AccCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AccCdsHotelAddressbook_id: TIntegerField
      FieldName = 'HotelAddressbook_id'
    end
    object AccCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object AccCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object AccCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 85
    Top = 176
  end
  object SsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM PackagesServices'#13#10'WHERE Packages_id = :Packages_id' +
      #13#10'AND SightSeeing = 1'#13#10'ORDER BY DayNo, StartTime'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 216
  end
  object SsDsp: TDataSetProvider
    DataSet = SsSds
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 216
  end
  object SsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SsDsp'
    BeforeInsert = SsCdsBeforeInsert
    BeforeEdit = SsCdsBeforeEdit
    BeforePost = SsCdsBeforePost
    AfterPost = SsCdsAfterPost
    BeforeDelete = SsCdsBeforeDelete
    AfterDelete = SsCdsAfterDelete
    Left = 63
    Top = 216
    object SsCdsPackagesServices_id: TIntegerField
      FieldName = 'PackagesServices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SsCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object SsCdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object SsCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object SsCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object SsCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object SsCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object SsCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
    end
    object SsCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object SsCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object SsCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object SsCdsServiceCities_id: TIntegerField
      FieldName = 'ServiceCities_id'
    end
    object SsCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object SsCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object SsCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
  end
  object SsDs: TDataSource
    DataSet = SsCds
    Left = 85
    Top = 216
  end
  object TransfersSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM PackagesServices'#13#10'WHERE Packages_id = :Packages_id' +
      #13#10'AND SightSeeing = 0'#13#10'ORDER BY DayNo, StartTime'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 256
  end
  object TransfersDsp: TDataSetProvider
    DataSet = TransfersSds
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 256
  end
  object TransfersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransfersDsp'
    BeforeInsert = TransfersCdsBeforeInsert
    BeforeEdit = TransfersCdsBeforeEdit
    BeforePost = TransfersCdsBeforePost
    AfterPost = TransfersCdsAfterPost
    BeforeDelete = TransfersCdsBeforeDelete
    AfterDelete = TransfersCdsAfterDelete
    Left = 63
    Top = 256
    object TransfersCdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object TransfersCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object TransfersCdsPackagesServices_id: TIntegerField
      FieldName = 'PackagesServices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TransfersCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object TransfersCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object TransfersCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object TransfersCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
    end
    object TransfersCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object TransfersCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object TransfersCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object TransfersCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
  end
  object TransfersDs: TDataSource
    DataSet = TransfersCds
    Left = 85
    Top = 256
  end
end
