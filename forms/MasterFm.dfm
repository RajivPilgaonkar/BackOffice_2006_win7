object MasterForm: TMasterForm
  Left = 178
  Top = 71
  Width = 992
  Height = 626
  Caption = 'MasterForm'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 976
    Height = 60
    Align = alTop
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 16
      Top = 4
      Caption = 'Select MasterCode '
      TabOrder = 0
      Height = 48
      Width = 257
      object cxMasterLcmb: TcxLookupComboBox
        Left = 9
        Top = 23
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'masters_id'
        Properties.ListColumns = <
          item
            MinWidth = 70
            FieldName = 'mastercode'
          end
          item
            MinWidth = 230
            FieldName = 'name'
          end>
        Properties.ListSource = MasterDs
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxMasterLcmbPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 230
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 544
    Width = 976
    Height = 44
    Align = alBottom
    TabOrder = 1
    object KeyIdDbText: TDBText
      Left = 815
      Top = 18
      Width = 65
      Height = 17
      DataField = 'masters_id'
      DataSource = MasterDs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object SearchLbl: TcxLabel
      Left = 15
      Top = 13
      Caption = 'Search'
      Transparent = True
      Visible = False
    end
    object SearchEdit: TcxTextEdit
      Left = 64
      Top = 8
      TabOrder = 0
      Visible = False
      Width = 96
    end
    object cxButton1: TcxButton
      Left = 896
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton1Click
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
  object MastersPC: TcxPageControl
    Left = 0
    Top = 60
    Width = 976
    Height = 484
    ActivePage = MasterPackages
    Align = alClient
    Images = ImageList1
    TabOrder = 2
    ClientRectBottom = 478
    ClientRectLeft = 3
    ClientRectRight = 970
    ClientRectTop = 27
    object MasterTickets: TcxTabSheet
      Caption = 'Tickets'
      ImageIndex = 0
      object TicketsGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 967
        Height = 451
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object TicketsGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TicketsDs
          DataController.KeyFieldNames = 'MasterTickets_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object TicketsGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 144
          end
          object TicketsGridDBTableView1Day: TcxGridDBColumn
            DataBinding.FieldName = 'Day'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 46
          end
          object TicketsGridDBTableView1Details: TcxGridDBColumn
            DataBinding.FieldName = 'Details'
            Options.Filtering = False
            Options.Grouping = False
            Width = 78
          end
          object TicketsGridDBTableView1FlightNo: TcxGridDBColumn
            Caption = 'Flight/Train'
            DataBinding.FieldName = 'FlightNo'
            Options.Filtering = False
            Options.Grouping = False
            Width = 96
          end
          object TicketsGridDBTableView1Departure: TcxGridDBColumn
            DataBinding.FieldName = 'Departure'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Options.Filtering = False
            Options.Grouping = False
            Width = 78
          end
          object TicketsGridDBTableView1Arrival: TcxGridDBColumn
            DataBinding.FieldName = 'Arrival'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Options.Filtering = False
            Options.Grouping = False
            Width = 63
          end
          object TicketsGridDBTableView1Class: TcxGridDBColumn
            DataBinding.FieldName = 'Class'
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
          end
          object TicketsGridDBTableView1From_City: TcxGridDBColumn
            Caption = 'From City'
            DataBinding.FieldName = 'From_City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 83
          end
          object TicketsGridDBTableView1To_City: TcxGridDBColumn
            Caption = 'To City'
            DataBinding.FieldName = 'To_City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 76
          end
          object TicketsGridDBTableView1AdviceNumPaxDays: TcxGridDBColumn
            Caption = 'NumDL'
            DataBinding.FieldName = 'AdviceNumPaxDays'
            Options.Filtering = False
            Options.Grouping = False
            Width = 66
          end
          object TicketsGridDBTableView1AdviceNamePaxDays: TcxGridDBColumn
            Caption = 'NameDL'
            DataBinding.FieldName = 'AdviceNamePaxDays'
            Options.Filtering = False
            Options.Grouping = False
            Width = 74
          end
          object TicketsGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 93
          end
        end
        object TicketsGridLevel1: TcxGridLevel
          GridView = TicketsGridDBTableView1
        end
      end
    end
    object MasterAccommodation: TcxTabSheet
      Caption = 'Accommodation'
      ImageIndex = 1
      object AccommodationGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 967
        Height = 451
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object AccommodationGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = AccommodationDs
          DataController.KeyFieldNames = 'MasterAccommodation_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object AccommodationGridDBTableView1City: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 136
          end
          object AccommodationGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 142
          end
          object AccommodationGridDBTableView1DayIn: TcxGridDBColumn
            Caption = 'Day In'
            DataBinding.FieldName = 'DayIn'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 70
          end
          object AccommodationGridDBTableView1DayOut: TcxGridDBColumn
            Caption = 'Day Out'
            DataBinding.FieldName = 'DayOut'
            Options.Filtering = False
            Options.Grouping = False
            Width = 70
          end
          object AccommodationGridDBTableView1Ac: TcxGridDBColumn
            Caption = 'A/C'
            DataBinding.FieldName = 'Ac'
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
          end
          object AccommodationGridDBTableView1RoomType: TcxGridDBColumn
            DataBinding.FieldName = 'RoomType'
            Options.Filtering = False
            Options.Grouping = False
            Width = 105
          end
          object AccommodationGridDBTableView1Plan: TcxGridDBColumn
            Caption = 'MealPlan'
            DataBinding.FieldName = 'Plan'
            Options.Filtering = False
            Options.Grouping = False
            Width = 96
          end
          object AccommodationGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 106
          end
          object AccommodationGridDBTableView1Remarks: TcxGridDBColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 173
          end
        end
        object AccommodationGridLevel1: TcxGridLevel
          GridView = AccommodationGridDBTableView1
        end
      end
    end
    object MasterServices: TcxTabSheet
      Caption = 'Services'
      ImageIndex = 2
      object ServicesGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 967
        Height = 451
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object servicesGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ServiceDs
          DataController.KeyFieldNames = 'MasterServices_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object servicesGridDBTableView1City: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 104
          end
          object servicesGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 131
          end
          object servicesGridDBTableView1Day: TcxGridDBColumn
            DataBinding.FieldName = 'Day'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 63
          end
          object servicesGridDBTableView1Service: TcxGridDBColumn
            DataBinding.FieldName = 'Service'
            Options.Filtering = False
            Options.Grouping = False
            Width = 104
          end
          object servicesGridDBTableView1StartingTime: TcxGridDBColumn
            DataBinding.FieldName = 'StartingTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Options.Filtering = False
            Options.Grouping = False
            Width = 93
          end
          object servicesGridDBTableView1Guide: TcxGridDBColumn
            DataBinding.FieldName = 'Guide'
            Options.Filtering = False
            Options.Grouping = False
            Width = 54
          end
          object servicesGridDBTableView1EntranceFees: TcxGridDBColumn
            DataBinding.FieldName = 'EntranceFees'
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
          end
          object servicesGridDBTableView1Transport: TcxGridDBColumn
            DataBinding.FieldName = 'Transport'
            Options.Filtering = False
            Options.Grouping = False
            Width = 77
          end
          object servicesGridDBTableView1AC: TcxGridDBColumn
            Caption = 'A/C'
            DataBinding.FieldName = 'AC'
            Options.Filtering = False
            Options.Grouping = False
          end
          object servicesGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 73
          end
          object servicesGridDBTableView1Remarks: TcxGridDBColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
        end
        object ServicesGridLevel1: TcxGridLevel
          GridView = servicesGridDBTableView1
        end
      end
    end
    object MasterTransport: TcxTabSheet
      Caption = 'Transport'
      ImageIndex = 3
      object TransportGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 967
        Height = 451
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object TransportGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TransportDs
          DataController.KeyFieldNames = 'MasterTransport_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object TransportGridDBTableView1Organisation: TcxGridDBColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Organisation'
            Options.Filtering = False
            Options.Grouping = False
            Width = 107
          end
          object TransportGridDBTableView1City: TcxGridDBColumn
            Caption = 'FromCity'
            DataBinding.FieldName = 'City'
            Options.Filtering = False
            Options.Grouping = False
            Width = 69
          end
          object TransportGridDBTableView1FromPlace: TcxGridDBColumn
            DataBinding.FieldName = 'FromPlace'
            Options.Filtering = False
            Options.Grouping = False
            Width = 80
          end
          object TransportGridDBTableView1FromDay: TcxGridDBColumn
            DataBinding.FieldName = 'FromDay'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 72
          end
          object TransportGridDBTableView1FromTime: TcxGridDBColumn
            DataBinding.FieldName = 'FromTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object TransportGridDBTableView1City_1: TcxGridDBColumn
            Caption = 'ToCity'
            DataBinding.FieldName = 'City_1'
            Options.Filtering = False
            Options.Grouping = False
            Width = 59
          end
          object TransportGridDBTableView1ToPlace: TcxGridDBColumn
            DataBinding.FieldName = 'ToPlace'
            Options.Filtering = False
            Options.Grouping = False
            Width = 68
          end
          object TransportGridDBTableView1ToDay: TcxGridDBColumn
            DataBinding.FieldName = 'ToDay'
            Options.Filtering = False
            Options.Grouping = False
            Width = 60
          end
          object TransportGridDBTableView1ToTime: TcxGridDBColumn
            DataBinding.FieldName = 'ToTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Options.Filtering = False
            Options.Grouping = False
            Width = 62
          end
          object TransportGridDBTableView1AC: TcxGridDBColumn
            Caption = 'A/C'
            DataBinding.FieldName = 'AC'
            Options.Filtering = False
            Options.Grouping = False
            Width = 45
          end
          object TransportGridDBTableView1DropOffDays: TcxGridDBColumn
            DataBinding.FieldName = 'DropOffDays'
            Options.Filtering = False
            Options.Grouping = False
            Width = 94
          end
          object TransportGridDBTableView1dropoffkms: TcxGridDBColumn
            Caption = 'DropOffKms'
            DataBinding.FieldName = 'dropoffkms'
            Options.Filtering = False
            Options.Grouping = False
            Width = 88
          end
          object TransportGridDBTableView1Tours: TcxGridDBColumn
            DataBinding.FieldName = 'Tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 74
          end
          object TransportGridDBTableView1Remarks: TcxGridDBColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Width = 71
          end
        end
        object TransportGridLevel1: TcxGridLevel
          GridView = TransportGridDBTableView1
        end
      end
    end
    object MasterPackages: TcxTabSheet
      Caption = 'Packages'
      ImageIndex = 4
      object PackagesGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 967
        Height = 451
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object PackagesGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = PackagesDs
          DataController.KeyFieldNames = 'masterpackages_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object PackagesGridDBTableView1masterpackages_id: TcxGridDBColumn
            DataBinding.FieldName = 'masterpackages_id'
            Visible = False
            Options.Editing = False
          end
          object PackagesGridDBTableView1package: TcxGridDBColumn
            Caption = 'Package'
            DataBinding.FieldName = 'package'
            Options.Filtering = False
            Options.Grouping = False
            Width = 222
          end
          object PackagesGridDBTableView1from_day: TcxGridDBColumn
            Caption = 'From Day'
            DataBinding.FieldName = 'from_day'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 83
          end
          object PackagesGridDBTableView1to_day: TcxGridDBColumn
            Caption = 'To Day'
            DataBinding.FieldName = 'to_day'
            Options.Filtering = False
            Options.Grouping = False
            Width = 74
          end
          object PackagesGridDBTableView1Agent: TcxGridDBColumn
            DataBinding.FieldName = 'Agent'
            Options.Filtering = False
            Options.Grouping = False
            Width = 230
          end
          object PackagesGridDBTableView1tours: TcxGridDBColumn
            Caption = 'Tours'
            DataBinding.FieldName = 'tours'
            Options.Filtering = False
            Options.Grouping = False
            Width = 90
          end
        end
        object PackagesGridLevel1: TcxGridLevel
          GridView = PackagesGridDBTableView1
        end
      end
    end
  end
  object TicketsSds: TSQLDataSet
    CommandText = 
      'SELECT  MT.MasterTickets_id, M.MasterCode, Mt.Masters_id, Addr.O' +
      'rganisation, MT.Day, T.Details, '#13#10#9'MT.FlightNo, FC.City AS From_' +
      'City, TC.City AS To_City, MT.Tours, MT.Departure, MT.Arrival,'#13#10' ' +
      '               MT.AdviceNumPaxDays, MT.AdviceNamePaxDays, Cl.Cla' +
      'ss'#13#10#9'FROM MasterTickets MT'#13#10#9'LEFT JOIN Masters M ON MT.Masters_i' +
      'd = M.Masters_id'#13#10#9'LEFT JOIN Addressbook Addr ON MT.Addressbook_' +
      'id = Addr.Addressbook_id'#13#10#9'LEFT JOIN Cities FC ON MT.From_Cities' +
      '_id = FC.Cities_id'#13#10#9'LEFT JOIN Cities TC ON MT.To_Cities_id = TC' +
      '.Cities_id'#13#10#9'LEFT JOIN Tickets T ON MT.Tickets_id = T.Tickets_id' +
      #13#10#9'LEFT JOIN Class Cl ON MT.Classid = Cl.Class_id'#13#10'where mt.mast' +
      'ers_id =:masters_id'#13#10'             ORDER BY Day,Departure, Arriva' +
      'l,Tours'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 40
    Top = 144
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    Left = 56
    Top = 144
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TicketsDsp'
    Left = 68
    Top = 144
    object TicketsCdsMasterTickets_id: TIntegerField
      FieldName = 'MasterTickets_id'
    end
    object TicketsCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object TicketsCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object TicketsCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object TicketsCdsDay: TIntegerField
      FieldName = 'Day'
    end
    object TicketsCdsDetails: TStringField
      FieldName = 'Details'
      Size = 15
    end
    object TicketsCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object TicketsCdsFrom_City: TStringField
      FieldName = 'From_City'
      Size = 50
    end
    object TicketsCdsTo_City: TStringField
      FieldName = 'To_City'
      Size = 50
    end
    object TicketsCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object TicketsCdsDeparture: TSQLTimeStampField
      FieldName = 'Departure'
      DisplayFormat = 'hh:mm'
    end
    object TicketsCdsArrival: TSQLTimeStampField
      FieldName = 'Arrival'
      DisplayFormat = 'hh:mm'
    end
    object TicketsCdsAdviceNumPaxDays: TIntegerField
      FieldName = 'AdviceNumPaxDays'
    end
    object TicketsCdsAdviceNamePaxDays: TIntegerField
      FieldName = 'AdviceNamePaxDays'
    end
    object TicketsCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
  end
  object AccommodationSds: TSQLDataSet
    CommandText = 
      'SELECT MA.MasterAccommodation_id, M.MasterCode, M.Masters_id, C.' +
      'City, C.cities_id,'#13#10#9'Addr.Organisation, MA.DayIn, MA.DayOut, MA.' +
      'Tours,'#13#10#9'MA.Remarks, MA.Ac, RT.RoomType, MP.[Plan]'#13#10#9'FROM Master' +
      'Accommodation MA '#13#10#9'LEFT JOIN Masters M ON MA.Masters_id = M.Mas' +
      'ters_id'#13#10#9'LEFT JOIN Addressbook AD ON MA.Agent_Addressbook_id = ' +
      'AD.Addressbook_id'#13#10#9'LEFT JOIN Addressbook Addr ON MA.Addressbook' +
      '_id = Addr.Addressbook_id'#13#10#9'LEFT JOIN Cities C ON Addr.Cities_id' +
      ' = C.Cities_id'#13#10#9'LEFT JOIN RoomTypes RT ON MA.RoomTypes_id = RT.' +
      'RoomTypes_id'#13#10#9'LEFT JOIN MealPlans MP ON MA.MealPlans_id = MP.Me' +
      'alPlans_id'#13#10'                WHERE MA.Masters_id = :Masters_id'#13#10' ' +
      '               ORDER BY MA.DayIn, MA.DayOut, MA.Tours'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 128
    Top = 144
  end
  object AccommodationDsp: TDataSetProvider
    DataSet = AccommodationSds
    Left = 144
    Top = 144
  end
  object AccommodationCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AccommodationDsp'
    Left = 157
    Top = 144
    object AccommodationCdsMasterAccommodation_id: TIntegerField
      FieldName = 'MasterAccommodation_id'
    end
    object AccommodationCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object AccommodationCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object AccommodationCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object AccommodationCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object AccommodationCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object AccommodationCdsDayIn: TIntegerField
      FieldName = 'DayIn'
    end
    object AccommodationCdsDayOut: TIntegerField
      FieldName = 'DayOut'
    end
    object AccommodationCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object AccommodationCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 255
    end
    object AccommodationCdsAc: TBooleanField
      FieldName = 'Ac'
    end
    object AccommodationCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object AccommodationCdsPlan: TStringField
      FieldName = 'Plan'
      FixedChar = True
      Size = 3
    end
  end
  object ServiceSds: TSQLDataSet
    CommandText = 
      'SELECT MS.MasterServices_id, M.MasterCode, M.Masters_id, C.City,' +
      ' C.Cities_id,'#13#10#9'Addr.Organisation, MS.Day, S.Service, MS.Entranc' +
      'eFees, MS.StartingTime, MS.Tours,'#13#10#9'MS.Remarks,MS.Transport,MS.A' +
      'C,MS.Guide'#13#10#9'FROM MasterServices MS '#13#10#9'LEFT JOIN Masters M ON M.' +
      'Masters_Id= MS.Masters_id'#13#10#9'LEFT JOIN Addressbook Addr On MS.Add' +
      'ressbook_id = Addr.Addressbook_id'#13#10#9'LEFT JOIN Cities C ON C.Citi' +
      'es_id = Addr.Cities_id'#13#10#9'LEFT JOIN Services S ON S.Services_id =' +
      ' MS.Services_id'#13#10'                WHERE MS.Masters_id = :Masters_' +
      'id'#13#10'                ORDER BY MS.Day, MS.StartingTime, MS.Tours'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 144
  end
  object ServiceDsp: TDataSetProvider
    DataSet = ServiceSds
    Left = 224
    Top = 144
  end
  object ServiceCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServiceDsp'
    Left = 240
    Top = 144
    object ServiceCdsMasterServices_id: TIntegerField
      FieldName = 'MasterServices_id'
    end
    object ServiceCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object ServiceCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object ServiceCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ServiceCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ServiceCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ServiceCdsDay: TIntegerField
      FieldName = 'Day'
    end
    object ServiceCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServiceCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object ServiceCdsStartingTime: TSQLTimeStampField
      FieldName = 'StartingTime'
      DisplayFormat = 'hh:mm'
    end
    object ServiceCdsTours: TStringField
      FieldName = 'Tours'
    end
    object ServiceCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 250
    end
    object ServiceCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object ServiceCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object ServiceCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
  end
  object TransportSds: TSQLDataSet
    CommandText = 
      'SELECT A.MasterTransport_id, A.FromPlace, A.FromDay, A.FromTime,' +
      #13#10#9'A.ToPlace,A.ToDay, A.ToTime, A.Remarks, A.Tours, A.AC, A.Drop' +
      'OffDays,'#13#10#9'B.Masters_id, C.City, D.City, E.Organisation,A.dropof' +
      'fkms'#13#10'FROM '#9'MasterTransport A, Masters B, Cities C, Cities D, Ad' +
      'dressbook E'#13#10'WHERE '#9'A.Masters_id = B.Masters_id'#13#10'AND'#9'A.From_citi' +
      'es_id = C.Cities_id'#13#10'AND '#9'A.To_cities_id = D.Cities_id'#13#10'AND '#9'A.A' +
      'ddressbook_id = E.Addressbook_id'#13#10'AND A.Masters_id = :Masters_id' +
      #13#10'ORDER BY FromDay,FromTime,Tours'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 296
    Top = 144
  end
  object TransportDsp: TDataSetProvider
    DataSet = TransportSds
    Left = 312
    Top = 144
  end
  object TransportCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransportDsp'
    Left = 328
    Top = 144
    object TransportCdsMasterTransport_id: TIntegerField
      FieldName = 'MasterTransport_id'
    end
    object TransportCdsFromPlace: TStringField
      FieldName = 'FromPlace'
      Size = 25
    end
    object TransportCdsFromDay: TIntegerField
      FieldName = 'FromDay'
    end
    object TransportCdsFromTime: TSQLTimeStampField
      FieldName = 'FromTime'
      DisplayFormat = 'hh:mm'
    end
    object TransportCdsToPlace: TStringField
      FieldName = 'ToPlace'
      Size = 25
    end
    object TransportCdsToDay: TIntegerField
      FieldName = 'ToDay'
    end
    object TransportCdsToTime: TSQLTimeStampField
      FieldName = 'ToTime'
      DisplayFormat = 'hh:mm'
    end
    object TransportCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 250
    end
    object TransportCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object TransportCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object TransportCdsDropOffDays: TIntegerField
      FieldName = 'DropOffDays'
    end
    object TransportCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object TransportCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object TransportCdsCity_1: TStringField
      FieldName = 'City_1'
      Size = 50
    end
    object TransportCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object TransportCdsdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
    end
  end
  object PackagesSds: TSQLDataSet
    CommandText = 
      'SELECT  P.package, MP.masterpackages_id,MP.from_day, MP.from_tim' +
      'e,MP.from_addressbook_id,MP.to_time,MP.to_place,'#13#10'        MP.add' +
      'ressbook_id,MP.remarks,MP.tours,MP.from_place ,MP.masters_id ,Ad' +
      'dr.organisation as Agent,'#13#10'        FAddr.organisation as Fromage' +
      'nt, M.MasterCode,'#13#10'        to_day '#13#10'FROM masterpackages MP'#13#10'LEFT' +
      ' JOIN packages P ON MP.packages_id = P.packages_id'#13#10'LEFT JOIN Ma' +
      'sters M ON M.masters_id = MP.masters_id'#13#10'LEFT JOIN addressbook A' +
      'ddr ON Addr.addressbook_id = MP.addressbook_id'#13#10'LEFT JOIN addres' +
      'sbook FAddr on FAddr.addressbook_id  = MP.from_addressbook_id'#13#10'W' +
      'HERE MP.Masters_id = :Masters_id'#13#10'ORDER BY MP.from_day, MP.from_' +
      'time, MP.to_time, MP.tours'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 144
  end
  object PackagesDsp: TDataSetProvider
    DataSet = PackagesSds
    Left = 416
    Top = 144
  end
  object PackagesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackagesDsp'
    Left = 427
    Top = 144
    object PackagesCdspackage: TStringField
      FieldName = 'package'
      Size = 50
    end
    object PackagesCdsmasterpackages_id: TIntegerField
      FieldName = 'masterpackages_id'
    end
    object PackagesCdsfrom_day: TIntegerField
      FieldName = 'from_day'
    end
    object PackagesCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
    end
    object PackagesCdsfrom_addressbook_id: TIntegerField
      FieldName = 'from_addressbook_id'
    end
    object PackagesCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
    end
    object PackagesCdsto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object PackagesCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object PackagesCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object PackagesCdstours: TStringField
      FieldName = 'tours'
    end
    object PackagesCdsfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object PackagesCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object PackagesCdsAgent: TStringField
      FieldName = 'Agent'
      Size = 60
    end
    object PackagesCdsFromagent: TStringField
      FieldName = 'Fromagent'
      Size = 60
    end
    object PackagesCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object PackagesCdsto_day: TIntegerField
      FieldName = 'to_day'
    end
  end
  object AccommodationDs: TDataSource
    DataSet = AccommodationCds
    Left = 168
    Top = 144
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 80
    Top = 144
  end
  object ServiceDs: TDataSource
    DataSet = ServiceCds
    Left = 256
    Top = 144
  end
  object TransportDs: TDataSource
    DataSet = TransportCds
    Left = 344
    Top = 144
  end
  object PackagesDs: TDataSource
    DataSet = PackagesCds
    Left = 440
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 12
    object Add1: TMenuItem
      Caption = '&Add'
      OnClick = Add1Click
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      OnClick = Edit1Click
    end
    object Delete1: TMenuItem
      Caption = '&Delete'
      OnClick = Delete1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Add2: TMenuItem
      Caption = 'Add'
      OnClick = Add2Click
    end
    object Edit2: TMenuItem
      Caption = 'Edit'
      OnClick = Edit2Click
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'select masters_id, mastercode, [name] from masters order by mast' +
      'ercode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 456
    Top = 16
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 472
    Top = 16
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    AfterScroll = MasterCdsAfterScroll
    Left = 488
    Top = 16
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsmastercode: TStringField
      FieldName = 'mastercode'
      Size = 50
    end
    object MasterCdsname: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 504
    Top = 16
  end
  object ImageList1: TImageList
    Left = 344
    Top = 32
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E9E9FFD2D2D2FFE3E3E3FFF3F3
      F3FFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDA42BFFB2831BFF87733EFF666A
      6DFF7B7B7BFF9E9E9EFFBFBFBFFFDADADAFFEAEAEAFFFBFBFBFFFBFBFBFFDEDE
      DEFFF7F7F7FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8BD6EFFF1D6AAFFF3DAB5FFF3D9
      B4FFF3D9B4FFEAC47BFFDDA62DFF9D7C2CFF796844FF6D6D6DFF6D8955FF4E78
      2EFF888888FFDDDDDDFFF5F5F5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB93FFE6B861FFF5E1C2FFF5E0
      C2FFF5E0C1FFF5DFC0FFF5DFBFFFF4DEBEFFE8D3B5FFAFA586FF8DBD61FF7CCE
      9AFF618E27FF937430FF8C8C8CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB93FFF0CF9EFFE1AD41FFF7E7
      CFFFF7E7CEFFF7E6CDFFF7E6CDFFF6E6CCFFB6AA99FF61AC21FF7CCB8BFF76CA
      8CFF7ACD95FF83A133FF6B6B6BFFFBFBFBFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB93FFF0D09FFFF2D8B1FFDEA8
      32FFF9EEDCFFF9EDDBFFF9EDDAFFC0B7AAFF4CA500FFA1D8A3FF6DC375FF71C5
      7DFF74C887FF78CB8FFF46602DFFD7D7D7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB93FFF1D1A1FFF3D9B2FFF5E1
      C4FFDDA62BFFFCF5EAFFFBF4E8FFFBF4E8FFB8CF9AFF55A330FF89C881FF6BC1
      6FFF6FC478FF519923FF509222FFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB93FFF1D2A3FFF3D9B4FFF5E2
      C6FFF8EBD7FFE5BB5CFFFEFBF7FFFEFBF6FFFEFBF6FFBBB8B6FFA2C481FF65BD
      60FF69C06AFFF6E4C9FF6D6D6DFFFCFCFCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB94FFF1D3A5FFF3DAB6FFF6E3
      C7FFF6E6CBFFC4B46EFFCCA63FFFE0AF40FFCDB276FF719104FFAAD294FF60B9
      4CFF529F28FFF8EBD7FF898580FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECC95FFF1D3A6FFF4DBB7FFE4B7
      58FFC1E0ECFFBCE4FCFFAED4ECFF90AFC3FF7DA798FF478F02FF64B837FF5AB3
      35FFEFECD8FFFBF3E6FF847B67FFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCC96FFF0D09DFFD7BC6FFFD4EE
      FDFF60AA2FFF5EA230FF59A224FF499902FF8BB562FF69B825FF50A20FFFCCA9
      3FFFFEFBF6FFFEFAF5FF806F4BFFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA938FFE1F2FDFFE8F6FEFFE6F5
      FEFFE2F4FEFFD6ECEEFFB8D8BFFF91BD80FFB4D6BFFFD6EFFDFFD3EEFDFFD1ED
      FDFFD5AA3FFFFFFFFFFF806F4BFFF3F3F3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECD49DFF99C0BBFF84CEF9FF84CE
      F9FF84CEF9FF84CEF9FF84CEF9FF84CEF9FF85CEF9FF86CFF9FF89D0F9FF80C7
      F8FF83C8F8FFBFAD5EFF9B8B66FFF8F8F8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7AE4CFF8DD2
      F9FF92D3FAFF96D5FAFF9AD7FAFF9FD8FBFFA3DAFBFFA8DCFBFFACDDFBFFB1DF
      FBFFBCCDBDFFCCAA61FFF8F8F8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF7
      EEFFC8B05EFFBCE4FCFFC1E6FCFFC5E8FBFFCBEAFCFFCFECFCFFD3E3DDFFCBA1
      45FFF5F5F5FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9CC8CFFE3DEBFFFF0F9FEFFF3F5EFFFCDA13BFFF0F0F0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFEAEAEAFFD4D4D4FFCFCFCFFFD0D0D0FFDDDDDDFFF7F7F7FF0000
      0000000000000000000000000000000000005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF00FFD18C00FFE98B00FFD98D00FFD2
      9900FFD07900FFDA7A00FFDE8200FEE09D00FFFFCB00FFFFA300FFE29900FFEC
      C400FFF4D400FFFCD800FFF4D4005945FF0000000000EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00000000000000000000000000FEFEFEFFE0E0
      E0FF907C7CFF8E1718FFAB2123FF9F0103FF980406FF712C2DFF6E6E6EFFBABA
      BAFFF8F8F8FF000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD18800FEE18900FFDE8D00FFD6
      8900FFD07900FFD98000FFD38400FFE6AF00FFFAE200FCF96E00FFE69F00FFE3
      C500FFF9DB00FFF6CE00FFF7D6005945FF000000000000000000EEEEEE00EEEE
      EE0000000000AAAAAA0000000000EEEEEE00EEEEEE0000000000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00000000000000000000000000FEFEFEFFC4BBBBFF9F01
      03FF9F0103FF9F0103FFFFD380FFDB9A91FF9F0103FF9F0103FF9F0103FF771E
      1FFF8B8B8BFFF2F2F2FF0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD28100FFD58500FFD28700FFD6
      9400FFD98D00FFD28100FFD56400FFF4DF00FFF2A300FFE77800FFD69400FFDD
      BC00FFF7D600FFFAD300FFF2D1005945FF000000000000000000000000000000
      000000000000AAAAAA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBC2C2FF9F0103FF9F01
      03FF9F0103FF9F0103FFC96C65FFFFDEA0FFFFD78CFFAB271AFF9F0103FF9F01
      03FF8D0C0EFF898989FFF7F7F7FF00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000002C1B1200A6938D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD16E00FFBE8600FFCD8800FFE1
      8D00FFD16E00FFC68A00FFE07100FFEDCC00FFD77600FFE07100FFCE9100FFD2
      AF00FFF3B300FFF7DD00FFF4D4005945FF000000000000000000000000000000
      000000000000AAAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2FF9F0103FF9F0103FF9F01
      03FF9F0103FFB13132FFFFF1D6FFFFEFD1FFFFE8BDFFFFDB97FF9F0303FF9F01
      03FF9F0103FF771E1FFFBABABAFF00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0065665500352F11000A88B00000667F0005718900248BB4007FE3FF000708
      110007081100B6ACAB00FFFFFF005945FF00FFD37400EF845F00FFCAA200FFE2
      8000FFE9B80000000000F2D69A00FFCBA900FFD69C00FFDF7C00FFD58500FFCA
      9500FFE99900FFEDBD00FFF0CC005945FF000000000000000000EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE0000000000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA000000000000000000A73133FFA50E0BFFAB1B13FFAF23
      17FFAF2318FFFFFAF0FFFFFAF1FFFFFAEFFFFFF3DCFFFFE6B6FFF9CF8BFF9F01
      03FF9F0103FF9F0103FF6E6E6EFFF7F7F7FFFFFFFF00FFFFFF00FFFFFF00003A
      2E002C1B120059443E000973930003547200176C890000536A00000000000000
      00000000000003060400797C7B005945FF00FFD776000000000000000000FFF6
      AB00F4C67C0000000000000000000000000000000000FFE17A00FFD98000FFCA
      8C00FFDD9800FFDD9800FFE1A9005945FF000000000000000000EEEEEE000000
      000000000000000000000065CC00EEEEEE00EEEEEE0000000000000000000000
      000000000000000000000000000000000000B1271AFFBB3D27FFC24D30FFC656
      35FFC65636FFFCEFE3FFFFFEFDFFFFFEFCFFFFF7E8FFFFEAC2FFC35836FF9F05
      03FF9F0103FFBD5052FF835B5BFFDDDDDDFFFFFFFF0000000000003748000029
      340039383A000000000042AFB5008BD1C000A9E9E500A5E5FF00A5E5FF008BDA
      FF0000000000AC9E58003F5646005945FF00FFC6690085641A00000000000000
      0000FFDAC7000000000000000000FECB7500FFDAA000FFDA8A00FFCE8500FFC8
      8200FFCD9600FFD98D00FFE68E005945FF000000000000000000EEEEEE00EEEE
      EE000000000000000000EEEEEE00EEEEEE00EEEEEE00000000000065CC000065
      CC000065CC000065CC000000000000000000C55334FFD06C43FFD97F4DFFDD89
      53FFECBB98FFE4AF90FFFFFCF7FFFFFCF6FFE3B59FFFA7110DFF9F0103FF9F01
      03FF9F0103FFFFFDF9FFEDE0DAFFD0D0D0FF39383A0000486900023E58000044
      56000000000034BBC800471C5C00B9B78A00F9FFF300BAC8B80096DCEF000306
      040000313600FFFFFF00014C63005945FF00FFCE7D00FFECB800000000000000
      0000000000000000000005173300FFCAA200FFC79100FFCD8A00FFCE9100FFC7
      7C00FFCA8C00FFE18500FFDE8D005945FF00000000000000000000000000EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00000000000065CC000065CC000065
      CC000065CC00000000000000000000000000D77B4CFFE5995DFFEFAF6AFFFAE1
      C3FFFFF6E5FFEAA864FFF6D5B3FFC96438FFC85A38FFB63321FFA30908FF9F01
      03FF9F0103FFFFFAF0FFFFF9ECFFCFCFCFFF0031360000495C00145C75003665
      79009DF5F50047B1C7006DDBDB00A9E9E500BCEEF9009EE0FB00B6ECFD00CBE6
      FF00FFFFFF00269BCC00A7B994005945FF00FFC48200FFD16E006E491B000000
      0000000000000000000000000000000000000000000000000000F2AC3D00FFC2
      7400FFDD7900FFD28100FFD295005945FF000000000000000000000000000000
      0000EEEEEE00EEEEEE00EEEEEE0000000000000000000065CC000065CC000065
      CC0000000000000000000000000000000000E8A061FFF8C476FFFFF9EEFFE7BE
      A2FFFFDFA1FFFFF5E2FFF9C577FFE9A262FFD77A4BFFC34F31FFAE2217FF9F01
      03FF9F0103FFFFF7E8FFFFF4DFFFD4D4D4FF11626500145C750071827F00B7F3
      FF00F0FFEC00FFFFFF00E0FFF100D9F9EA00D6F5D600F9FFF300FFFFFF00B8E8
      FF005DC2F300A1D0F900C9C8B5005945FF00FFC86F00FFD28100FFE3CA000000
      0000000000000000000000000000000000000000000000000000FFF2A300FFE1
      7A00FFE17A00FFD58500FFCA8C005945FF000000000000000000000000000000
      000000000000EEEEEE000000000000000000AAAAAA000065CC000065CC000000
      000000000000000000000000000000000000F6BF73FFFFDC9AFFFFFFFFFFFFFF
      FDFFEDCDB6FFF9E9D6FFFFDD9DFFF7C175FFE3955AFFCD663FFFB73623FFA206
      07FFB74142FFFFF1D7FFC39F8BFFEAEAEAFFB6C3C3004B574700C9E0C9000306
      0400000000000000000065665500ACAF8E004B9F9E006FCBE40034BAD60066B4
      AF00C4CDCB00F2F2F200FFFFFF005945FF00FFD37400FFD87C00FFCD8D000000
      00000000000000000000000000003D460000CFD8AA00D0ECB400FBFB7E00FFE1
      7A00FFD77600FFD38400FFD581005945FF000000000000000000000000000000
      0000EEEEEE0000000000EEEEEE0000000000AAAAAA0000000000000000000000
      000000000000000000000000000000000000FED384FFFFF7E9FFFFFEFBFFFFFD
      FAFFFFFAF1FFFFF4E0FFE7B88FFFFED486FFEBA765FFD47548FFBD432AFFA610
      0CFFCF7E7DFFA50F0EFF907C7CFFFEFEFEFFFFFFFF00898D6300F9FAF900797C
      7B006767670083848600CCCCCC00FCFCFC00FFFFFF00352F1100FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD37C00FFDF7C00FFD37C00591F
      0000140D0000F0FFC500FFE6A800FFD58100FFD07900FFDF7C00FFCF8000FFCE
      8500FFD18C00FFD87C00EAFD72005945FF00000000000000000000000000EEEE
      EE00EEEEEE0000000000EEEEEE00000000000000000000000000000000000000
      000000000000000000000000000000000000FDF6E9FFFFF6E6FFFFFAF0FFFFF9
      EEFFFFF6E6FFFFF0D5FFFFE8BCFFE1A266FFEEAE69FFDA8457FFEBBDA2FFFFE9
      C0FFEDBC84FFB7392BFFE0E0E0FF00000000FFFFFF00FFFFFF00D6D6D600B4BB
      B4009CA5940081856B009CA59400858B7700C7CBC100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFC77800FFE27600FFE69F000000
      0000FFE4D400FFE28000FFCE8A00FFCD8A00FFCE8500FFD08400FFCB7E00FFCD
      8A00FFCA8500FFD58500CCE3A1005945FF000000000000000000000000000000
      0000EEEEEE0000000000EEEEEE00000000000065CC0000000000000000000000
      00000000000000000000000000000000000000000000FCEBCBFFFFF5E1FFFFF3
      DBFFFFF0D2FFF3D4B0FFFFE6B5FFF9D6A1FFE09556FFD6784AFFBF452CFFA713
      0EFF9F0103FFC4BBBBFFFEFEFEFF00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFC27C00FFDE7300FFE999000000
      0000E7B99400FFDE8200FFCF8800FFCF8800FFCF8800FFD08400FFD08400FFD2
      9000FFD37C00FFD38400CCE3A1005945FF000000000000000000000000000000
      000000000000EEEEEE00000000000065CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCEFD5FFFFE9
      C0FFFFE6B7FFFFE0A5FFF9CE89FFFFD380FFE69C5FFFD06C43FFBA3B26FFA40A
      09FFCBC2C2FFFEFEFEFF0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD07900FFD98000FFDC6D00F5E2
      AB00FFCE7800FFD98D00FFD29000FFD18C00FFCF8800FFCF8800FFCF8800FFCF
      8000FFE17A00FFDD7900D3EFAA005945FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDF7
      EDFFFFDA93FFFFD484FFFFD380FFE7A25FFFDC8551FFC75937FFB65245FFF2F2
      F2FF00000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000007FF0000000000000007000000000000
      0001000000000000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C001000000000000
      E007000000000000F81F00000000000000000000F01F000000000000C0070000
      0000800180030000000080018001000000008001000100000000800100000000
      000000000000000000008001000000000000C003000000000000E00700000000
      0000E00F000000000000E01F000000000000C01F000100000000E03F80010000
      0000F07FC00300000000F8FFE00F000000000000000000000000000000000000
      000000000000}
  end
end
