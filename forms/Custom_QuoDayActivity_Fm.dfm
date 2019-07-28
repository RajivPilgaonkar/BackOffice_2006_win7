object Custom_QuoDayActivity_Form: TCustom_QuoDayActivity_Form
  Left = 27
  Top = 120
  Width = 1115
  Height = 586
  Caption = 'Custom_QuoDayActivity_Form'
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
    ActivePage = cxTabSheetTickets
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
    object cxTabSheetPkg: TcxTabSheet
      Caption = 'Packages'
      ImageIndex = 4
      object Panel11: TPanel
        Left = 0
        Top = 393
        Width = 1090
        Height = 41
        Align = alBottom
        TabOrder = 0
        object cxDBLabelKeyId_Packages: TcxDBLabel
          Left = 1007
          Top = 11
          Style.TextStyle = []
          Transparent = True
          Height = 15
          Width = 61
        end
      end
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 1090
        Height = 393
        Align = alClient
        TabOrder = 1
        object cxGridDBBandedTableView5: TcxGridDBBandedTableView
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
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBBandedTableView5
        end
      end
    end
  end
  object TicketsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoTickets'#13#10'WHERE QuoCities_id = :QuoCities_id'#13#10'OR' +
      'DER BY TravelDate, ETD'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
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
    object t: TIntegerField
      FieldName = 'QuoTickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object TicketsCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object TicketsCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object TicketsCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object TicketsCdsNoOfTickets: TIntegerField
      FieldName = 'NoOfTickets'
    end
    object TicketsCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object TicketsCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object TicketsCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object TicketsCdsFrom_TrainStations_id: TIntegerField
      FieldName = 'From_TrainStations_id'
    end
    object TicketsCdsTo_TrainStations_id: TIntegerField
      FieldName = 'To_TrainStations_id'
    end
    object TicketsCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object TicketsCdsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object TicketsCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object TicketsCdsTravelDay: TIntegerField
      FieldName = 'TravelDay'
    end
    object TicketsCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object TicketsCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object TicketsCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object TicketsCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object TicketsCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object TicketsCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object TicketsCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object TicketsCdsOvernight: TBooleanField
      FieldName = 'Overnight'
    end
    object TicketsCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object TicketsCdsHops: TIntegerField
      FieldName = 'Hops'
    end
    object TicketsCdsModePreference: TIntegerField
      FieldName = 'ModePreference'
    end
    object TicketsCdsCarReleaseDate: TSQLTimeStampField
      FieldName = 'CarReleaseDate'
    end
    object TicketsCdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object TicketsCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object TicketsCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object TicketsCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object TicketsCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object TicketsCdsTicketString: TStringField
      FieldName = 'TicketString'
      Size = 200
    end
    object TicketsCdsRemarksAgent: TStringField
      FieldName = 'RemarksAgent'
      Size = 200
    end
    object TicketsCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object TicketsCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object TicketsCdsReserveHotelOvernight: TBooleanField
      FieldName = 'ReserveHotelOvernight'
    end
    object TicketsCdsCarReportDate: TSQLTimeStampField
      FieldName = 'CarReportDate'
    end
    object TicketsCdsRemarksAgentCancel: TStringField
      FieldName = 'RemarksAgentCancel'
      Size = 200
    end
    object TicketsCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object TicketsCdsNightHalt: TIntegerField
      FieldName = 'NightHalt'
    end
    object TicketsCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 50
    end
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 85
    Top = 144
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoAccommodation'#13#10'WHERE QuoCities_id = :QuoCities_' +
      'id'#13#10'ORDER BY DateIn'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
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
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object AccCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object AccCdsDayIn: TIntegerField
      FieldName = 'DayIn'
    end
    object AccCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object AccCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
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
    object AccCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AccCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object AccCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object AccCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object AccCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object AccCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object AccCdsHotelCities_id: TIntegerField
      FieldName = 'HotelCities_id'
    end
    object AccCdsAgentCities_id: TIntegerField
      FieldName = 'AgentCities_id'
    end
    object AccCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object AccCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object AccCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object AccCdsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object AccCdsRequestedOn: TSQLTimeStampField
      FieldName = 'RequestedOn'
    end
    object AccCdsConfirmedOn: TSQLTimeStampField
      FieldName = 'ConfirmedOn'
    end
    object AccCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object AccCdsAccString: TStringField
      FieldName = 'AccString'
      Size = 200
    end
    object AccCdsRemarksHotel: TStringField
      FieldName = 'RemarksHotel'
      Size = 200
    end
    object AccCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object AccCdsRemarksHotelCancel: TStringField
      FieldName = 'RemarksHotelCancel'
      Size = 200
    end
    object AccCdsReserveHotelOvernight: TBooleanField
      FieldName = 'ReserveHotelOvernight'
    end
    object AccCdsRemarksOther: TStringField
      FieldName = 'RemarksOther'
      Size = 250
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 85
    Top = 176
  end
  object SsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoServices'#13#10'WHERE QuoCities_id = :QuoCities_id'#13#10'A' +
      'ND SightSeeing = 1'#13#10'ORDER BY ServiceDate, StartTime'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
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
    object SsCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object SsCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object SsCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
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
    object SsCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object SsCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object SsCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SsCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object SsCdsPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object SsCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object SsCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object SsCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
    end
    object SsCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
    end
    object SsCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SsCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object SsCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object SsCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object SsCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object SsCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object SsCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object SsCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object SsCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object SsCdsTimings: TStringField
      FieldName = 'Timings'
    end
    object SsCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object SsCdsLock: TBooleanField
      FieldName = 'Lock'
    end
  end
  object SsDs: TDataSource
    DataSet = SsCds
    Left = 85
    Top = 216
  end
  object TransfersSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoServices'#13#10'WHERE QuoCities_id = :QuoCities_id'#13#10'A' +
      'ND SightSeeing = 0'#13#10'ORDER BY ServiceDate, StartTime'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
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
    object TransfersCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object TransfersCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
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
    object TransfersCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object TransfersCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object TransfersCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object TransfersCdsPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object TransfersCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object TransfersCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object TransfersCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
    end
    object TransfersCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
    end
    object TransfersCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object TransfersCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object TransfersCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object TransfersCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object TransfersCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object TransfersCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object TransfersCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object TransfersCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object TransfersCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object TransfersCdsTimings: TStringField
      FieldName = 'Timings'
    end
    object TransfersCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object TransfersCdsLock: TBooleanField
      FieldName = 'Lock'
    end
  end
  object TransfersDs: TDataSource
    DataSet = TransfersCds
    Left = 85
    Top = 256
  end
  object PkgSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoPackages'#13#10'WHERE QuoCities_id = :QuoCities_id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 296
  end
  object PkgDsp: TDataSetProvider
    DataSet = PkgSds
    UpdateMode = upWhereKeyOnly
    Left = 38
    Top = 296
  end
  object PkgCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PkgDsp'
    BeforeInsert = PkgCdsBeforeInsert
    BeforeEdit = PkgCdsBeforeEdit
    BeforePost = PkgCdsBeforePost
    AfterPost = PkgCdsAfterPost
    BeforeDelete = PkgCdsBeforeDelete
    AfterDelete = PkgCdsAfterDelete
    Left = 63
    Top = 296
    object PkgCdsQuoPackages_id: TIntegerField
      FieldName = 'QuoPackages_id'
    end
    object PkgCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object PkgCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PkgCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object PkgCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
    end
    object PkgCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
  end
  object PkgDs: TDataSource
    DataSet = PkgCds
    Left = 85
    Top = 296
  end
end
