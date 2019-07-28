object QuotationForm: TQuotationForm
  Left = 45
  Top = 77
  Width = 969
  Height = 654
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 41
    Align = alTop
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 0
    Height = 94
    Width = 961
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Quo. Ref.'
    end
    object TourDateLbl: TLabel
      Left = 367
      Top = 12
      Width = 59
      Height = 13
      Caption = 'Quo. Date'
    end
    object Label5: TLabel
      Left = 12
      Top = 35
      Width = 58
      Height = 13
      Caption = 'Pax Name'
    end
    object Label2: TLabel
      Left = 391
      Top = 36
      Width = 31
      Height = 13
      Caption = 'Email'
    end
    object Label4: TLabel
      Left = 44
      Top = 58
      Width = 22
      Height = 13
      Caption = 'Pax'
    end
    object Label6: TLabel
      Left = 144
      Top = 58
      Width = 42
      Height = 13
      Caption = 'Singles'
    end
    object Label7: TLabel
      Left = 260
      Top = 58
      Width = 47
      Height = 13
      Caption = 'Doubles'
    end
    object Label10: TLabel
      Left = 368
      Top = 61
      Width = 54
      Height = 13
      Caption = 'Starts On'
    end
    object Label3: TLabel
      Left = 562
      Top = 12
      Width = 76
      Height = 13
      Caption = 'Quotation No'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 79
      Top = 10
      DataBinding.DataField = 'QuotationRef'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 274
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 736
      Top = 10
      Caption = 'Economy'
      DataBinding.DataField = 'EconomyPax'
      DataBinding.DataSource = MasterDS
      Enabled = False
      TabOrder = 1
      Width = 81
    end
    object TourDateEdit: TcxDBDateEdit
      Left = 432
      Top = 10
      DataBinding.DataField = 'QuotationDate'
      DataBinding.DataSource = MasterDS
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 79
      Top = 33
      DataBinding.DataField = 'PaxName'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 274
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 433
      Top = 34
      DataBinding.DataField = 'Email'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 274
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 824
      Top = 10
      Caption = 'Time Constraint'
      DataBinding.DataField = 'TimePax'
      DataBinding.DataSource = MasterDS
      Enabled = False
      TabOrder = 5
      Width = 129
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 79
      Top = 57
      DataBinding.DataField = 'NumPax'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 6
      Width = 42
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 190
      Top = 57
      DataBinding.DataField = 'NumSingles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 7
      Width = 42
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 311
      Top = 57
      DataBinding.DataField = 'NumDoubles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 8
      Width = 42
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 433
      Top = 59
      DataBinding.DataField = 'StartDate'
      DataBinding.DataSource = MasterDS
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 9
      Width = 121
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 720
      Top = 59
      Width = 230
      Height = 26
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDS
      TabOrder = 10
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 643
      Top = 9
      DataBinding.DataField = 'QuotationNo'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 11
      Width = 63
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 579
    Width = 961
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxButton1: TcxButton
      Left = 648
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxButton2: TcxButton
      Left = 736
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 1
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
    object cxButton4: TcxButton
      Left = 865
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 2
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
    object cxSearchGB: TcxRadioGroup
      Left = 8
      Top = 2
      Caption = 'Search'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Ref'
        end
        item
          Caption = 'No.'
        end
        item
          Caption = 'Name'
        end>
      ItemIndex = 0
      TabOrder = 3
      Height = 34
      Width = 201
    end
    object cxSearchEdit: TcxTextEdit
      Left = 215
      Top = 12
      TabOrder = 4
      OnKeyPress = cxSearchEditKeyPress
      Width = 137
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 135
    Width = 961
    Height = 444
    Align = alClient
    TabOrder = 3
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 959
      Height = 442
      ActivePage = cxTravelTab
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 436
      ClientRectLeft = 3
      ClientRectRight = 953
      ClientRectTop = 26
      object cxAccommodationTab: TcxTabSheet
        Caption = 'Accommodation'
        ImageIndex = 0
        object AccGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 959
          Height = 425
          Align = alClient
          TabOrder = 0
          object AccGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = AccDS
            DataController.KeyFieldNames = 'QuoAccommodation_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleFormBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Styles.OnGetContentStyle = AccGridDBTableView1StylesGetContentStyle
            Styles.Header = BackOfficeDataModule.cxStyleHeader
            object AccGridDBTableView1DayIn: TcxGridDBColumn
              Caption = 'Day In'
              DataBinding.FieldName = 'DayIn'
              Options.Filtering = False
              Options.Grouping = False
              Width = 55
            end
            object AccGridDBTableView1DateIn: TcxGridDBColumn
              Caption = 'Date In'
              DataBinding.FieldName = 'DateIn'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 85
            end
            object AccGridDBTableView1DateOut: TcxGridDBColumn
              Caption = 'Date Out'
              DataBinding.FieldName = 'DateOut'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Filtering = False
              Options.Grouping = False
              Width = 97
            end
            object AccGridDBTableView1Cities_id: TcxGridDBColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = BackOfficeDataModule.CitiesDS
              Options.Filtering = False
              Options.Grouping = False
              Width = 119
            end
            object AccGridDBTableView1HotelAddressbook_id: TcxGridDBColumn
              Caption = 'Hotel '
              DataBinding.FieldName = 'HotelLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = AccGridDBTableView1HotelAddressbook_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 182
            end
            object AccGridDBTableView1RoomTypes_id: TcxGridDBColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'RoomTypeLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = AccGridDBTableView1RoomTypes_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 103
            end
            object AccGridDBTableView1AC: TcxGridDBColumn
              DataBinding.FieldName = 'AC'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
              Width = 32
            end
            object AccGridDBTableView1MealPlans_id: TcxGridDBColumn
              Caption = 'Meal Plan'
              DataBinding.FieldName = 'MealPlans_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'mealplans_id'
              Properties.ListColumns = <
                item
                  FieldName = 'plan'
                end>
              Properties.ListSource = BackOfficeDataModule.MealPlanDs
              Options.Filtering = False
              Options.Grouping = False
              Width = 69
            end
            object AccGridDBTableView1Cost: TcxGridDBColumn
              DataBinding.FieldName = 'Cost'
              Options.Filtering = False
              Options.Grouping = False
              Width = 90
            end
            object AccGridDBTableView1Masters_id: TcxGridDBColumn
              Caption = 'Master'
              DataBinding.FieldName = 'Masters_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'masters_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MasterCode'
                end>
              Properties.ListSource = MasterCodeDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object AccGridDBTableView1Status: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'status'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object AccGridLevel1: TcxGridLevel
            GridView = AccGridDBTableView1
          end
        end
      end
      object cxTravelTab: TcxTabSheet
        Caption = 'Tickets'
        ImageIndex = 1
        object TicketsGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 950
          Height = 410
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cxGridDBTableView7: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TicketsDS
            DataController.KeyFieldNames = 'QuoTickets_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleFormBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Styles.OnGetContentStyle = cxGridDBTableView7StylesGetContentStyle
            Styles.Header = BackOfficeDataModule.cxStyleHeader
            object cxGridDBTableView7DBTravelDay: TcxGridDBColumn
              Caption = 'Day'
              DataBinding.FieldName = 'TravelDay'
              Options.Filtering = False
              Options.Grouping = False
              Width = 44
            end
            object cxGridDBTableView7TravelDate: TcxGridDBColumn
              Caption = 'Travel Date'
              DataBinding.FieldName = 'TravelDate'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 82
            end
            object cxGridDBTableView7Cities_id: TcxGridDBColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = BackOfficeDataModule.CitiesDS
              Options.Filtering = False
              Options.Grouping = False
              Width = 65
            end
            object cxGridDBTableView7AgentAddressbook_id: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView7AgentAddressbook_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 98
            end
            object cxGridDBTableView7Tickets_id: TcxGridDBColumn
              Caption = 'Mode'
              DataBinding.FieldName = 'Tickets_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'tickets_id'
              Properties.ListColumns = <
                item
                  FieldName = 'details'
                end>
              Properties.ListSource = BackOfficeDataModule.TicketsDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView7NoOfTickets: TcxGridDBColumn
              Caption = 'Tickets'
              DataBinding.FieldName = 'NoOfTickets'
              Options.Filtering = False
              Options.Grouping = False
              Width = 53
            end
            object cxGridDBTableView7From_Cities_id: TcxGridDBColumn
              Caption = 'From City'
              DataBinding.FieldName = 'From_Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = BackOfficeDataModule.CitiesDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView7To_Cities_id: TcxGridDBColumn
              Caption = 'To City'
              DataBinding.FieldName = 'To_Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = BackOfficeDataModule.CitiesDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView7FlightNo: TcxGridDBColumn
              Caption = 'Flight No'
              DataBinding.FieldName = 'FlightNo'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView7FlightNoPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object cxGridDBTableView7From_TrainStations_id: TcxGridDBColumn
              Caption = 'From Train Station'
              DataBinding.FieldName = 'FromTrainStationLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView7From_TrainStations_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 120
            end
            object cxGridDBTableView7To_TrainStations_id: TcxGridDBColumn
              Caption = 'To Train Station'
              DataBinding.FieldName = 'ToTrainStationLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView7To_TrainStations_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 112
            end
            object cxGridDBTableView7Class_id: TcxGridDBColumn
              Caption = 'Class'
              DataBinding.FieldName = 'ClassLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView7Class_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 69
            end
            object cxGridDBTableView7ETD: TcxGridDBColumn
              DataBinding.FieldName = 'ETD'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Options.Grouping = False
              Width = 78
            end
            object cxGridDBTableView7ETA: TcxGridDBColumn
              DataBinding.FieldName = 'ETA'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Options.Grouping = False
              Width = 63
            end
            object cxGridDBTableView7masters_id: TcxGridDBColumn
              Caption = 'Master'
              DataBinding.FieldName = 'Masters_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'masters_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MasterCode'
                end>
              Properties.ListSource = MasterCodeDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView7Status: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'status'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBTableView7
          end
        end
      end
      object cxSightSeeingTab: TcxTabSheet
        Caption = 'Sight Seeing'
        ImageIndex = 2
        object SightGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 959
          Height = 425
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView5: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = SightDS
            DataController.KeyFieldNames = 'QuoServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleFormBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Styles.OnGetContentStyle = cxGridDBTableView5StylesGetContentStyle
            Styles.Header = BackOfficeDataModule.cxStyleHeader
            object cxGridDBTableView5DBServiceDay: TcxGridDBColumn
              Caption = 'Day'
              DataBinding.FieldName = 'ServiceDay'
              Options.Filtering = False
              Options.Grouping = False
              Width = 39
            end
            object cxGridDBTableView5DBServiceDate: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'ServiceDate'
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 101
            end
            object cxGridDBTableView5Cities_id: TcxGridDBColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = BackOfficeDataModule.CitiesDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView5Services_id: TcxGridDBColumn
              Caption = 'Service'
              DataBinding.FieldName = 'ServicesLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView5Services_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 180
            end
            object cxGridDBTableView5AgentAddressbook_id: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBTableView5AgentAddressbook_idPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 159
            end
            object cxGridDBTableView5Guide: TcxGridDBColumn
              DataBinding.FieldName = 'Guide'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView5Transport: TcxGridDBColumn
              DataBinding.FieldName = 'Transport'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
              Width = 72
            end
            object cxGridDBTableView5Vehicles_id: TcxGridDBColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'Vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = BackOfficeDataModule.VehicleDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView5DBNoOfVehicles: TcxGridDBColumn
              Caption = 'Vehicles'
              DataBinding.FieldName = 'NoOfVehicles'
              Options.Filtering = False
              Options.Grouping = False
              Width = 56
            end
            object cxGridDBTableView5AC: TcxGridDBColumn
              DataBinding.FieldName = 'AC'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView5StartTime: TcxGridDBColumn
              Caption = 'Start Time'
              DataBinding.FieldName = 'StartTime'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Options.Grouping = False
              Width = 73
            end
            object cxGridDBTableView5DBColumn1: TcxGridDBColumn
              Caption = 'Master'
              DataBinding.FieldName = 'Masters_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'masters_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MasterCode'
                end>
              Properties.ListSource = MasterCodeDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView5Status: TcxGridDBColumn
              Caption = 'Status'
              DataBinding.FieldName = 'status'
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBTableView5
          end
        end
      end
      object cxTransferTab: TcxTabSheet
        Caption = 'Transfer'
        ImageIndex = 3
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 959
          Height = 425
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TransferDs
            DataController.KeyFieldNames = 'QuoServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleFormBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
            Styles.Header = BackOfficeDataModule.cxStyleHeader
            object cxGridDBTableView1DBServiceDay: TcxGridDBColumn
              Caption = 'Day'
              DataBinding.FieldName = 'ServiceDay'
              Options.Filtering = False
              Options.Grouping = False
              Width = 34
            end
            object cxGridDBTableView1DBServiceDate: TcxGridDBColumn
              Caption = 'Date'
              DataBinding.FieldName = 'ServiceDate'
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 92
            end
            object cxGridDBTableView1DBColumn1: TcxGridDBColumn
              Caption = 'Transfer Type'
              DataBinding.FieldName = 'TransferTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'transfertypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'transfercode'
                end>
              Properties.ListSource = BackOfficeDataModule.TransferTypesDS
              Options.Filtering = False
              Options.Grouping = False
              Width = 86
            end
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = BackOfficeDataModule.CitiesDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Service'
              DataBinding.FieldName = 'ServicesLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBColumn2PropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 169
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBColumn3PropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 159
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'Vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = BackOfficeDataModule.VehicleDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView1DBNoOfVehicles: TcxGridDBColumn
              Caption = 'Vehicles'
              DataBinding.FieldName = 'NoOfVehicles'
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'AC'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Start Time'
              DataBinding.FieldName = 'StartTime'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Options.Grouping = False
              Width = 73
            end
            object cxGridDBTableView1DBPlace: TcxGridDBColumn
              DataBinding.FieldName = 'Place'
              Options.Filtering = False
              Options.Grouping = False
              Width = 92
            end
            object cxGridDBTableView1DBFlightNo: TcxGridDBColumn
              Caption = 'Flight No'
              DataBinding.FieldName = 'FlightNo'
              Options.Filtering = False
              Options.Grouping = False
              Width = 100
            end
            object cxGridDBTableView1Masters_id: TcxGridDBColumn
              Caption = 'Master'
              DataBinding.FieldName = 'Masters_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'masters_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MasterCode'
                end>
              Properties.ListSource = MasterCodeDS
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView1Status: TcxGridDBColumn
              DataBinding.FieldName = 'status'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxTransport: TcxTabSheet
        Caption = 'Transport'
        ImageIndex = 4
        object TransportGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 959
          Height = 425
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object TransportGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = True
            NavigatorButtons.PriorPage.Visible = True
            NavigatorButtons.Prior.Visible = True
            NavigatorButtons.Next.Visible = True
            NavigatorButtons.NextPage.Visible = True
            NavigatorButtons.Last.Visible = True
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Post.Visible = True
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = True
            NavigatorButtons.Filter.Visible = True
            DataController.DataSource = TransportDS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.Background = BackOfficeDataModule.cxStyleFormBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Styles.Header = BackOfficeDataModule.cxStyleHeader
            object TransportGridDBTableView1DBTransportDay: TcxGridDBColumn
              Caption = 'Day'
              DataBinding.FieldName = 'TransportDay'
              Options.Filtering = False
              Options.Grouping = False
              Width = 40
            end
            object TransportGridDBTableView1DBAgentCity: TcxGridDBColumn
              Caption = 'Agent City'
              DataBinding.FieldName = 'cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = BackOfficeDataModule.AgentCityDs
              Options.Filtering = False
              Options.Grouping = False
            end
            object TransportGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TransportGridDBTableView1OrganisationPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1Automobile: TcxGridDBColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'Vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = BackOfficeDataModule.VehicleDS
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1NoOfVehicles: TcxGridDBColumn
              Caption = 'Vehicles'
              DataBinding.FieldName = 'NoOfVehicles'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1FromCity: TcxGridDBColumn
              Caption = 'From City'
              DataBinding.FieldName = 'FromCityLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TransportGridDBTableView1FromCityPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1FromPlace: TcxGridDBColumn
              Caption = 'From Place'
              DataBinding.FieldName = 'FromPlace'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1FromDate: TcxGridDBColumn
              Caption = 'From Date'
              DataBinding.FieldName = 'FromDate'
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 83
            end
            object TransportGridDBTableView1FromTime: TcxGridDBColumn
              Caption = 'From Time'
              DataBinding.FieldName = 'FromTime'
              Options.Filtering = False
              Options.Grouping = False
              Width = 61
            end
            object TransportGridDBTableView1ToCity: TcxGridDBColumn
              Caption = 'To City'
              DataBinding.FieldName = 'ToCityLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TransportGridDBTableView1ToCityPropertiesButtonClick
              Options.Filtering = False
              Options.Grouping = False
              Width = 69
            end
            object TransportGridDBTableView1ToPlace: TcxGridDBColumn
              Caption = 'To Place'
              DataBinding.FieldName = 'ToPlace'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1ToDate: TcxGridDBColumn
              Caption = 'To Date'
              DataBinding.FieldName = 'ToDate'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1ToTime: TcxGridDBColumn
              Caption = 'To Time'
              DataBinding.FieldName = 'ToTime'
              Options.Filtering = False
              Options.Grouping = False
              Width = 49
            end
            object TransportGridDBTableView1AC: TcxGridDBColumn
              DataBinding.FieldName = 'AC'
              Options.Filtering = False
              Options.Grouping = False
              Width = 37
            end
            object TransportGridDBTableView1DropOffDays: TcxGridDBColumn
              Caption = 'Drop Off Days'
              DataBinding.FieldName = 'DropOffDays'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1Dropoffkms: TcxGridDBColumn
              Caption = 'Drop Off Kms'
              DataBinding.FieldName = 'Dropoffkms'
              Options.Filtering = False
              Options.Grouping = False
              Width = 75
            end
            object TransportGridDBTableView1DBMasterCode: TcxGridDBColumn
              Caption = 'Master Code'
              DataBinding.FieldName = 'Masters_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'masters_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MasterCode'
                end>
              Properties.ListSource = MasterCodeDS
              Options.Filtering = False
              Options.Grouping = False
            end
          end
          object TransportGridLevel1: TcxGridLevel
            GridView = TransportGridDBTableView1
          end
        end
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 'Quotations'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 872
    Top = 32
  end
  object MasterDataSetProvider: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 888
    Top = 32
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 904
    Top = 32
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'QuotationNo'
    Params = <>
    ProviderName = 'MasterDataSetProvider'
    AfterInsert = MasterCdsAfterInsert
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 920
    Top = 32
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object MasterCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MasterCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object MasterCdsEconomyPax: TBooleanField
      FieldName = 'EconomyPax'
    end
    object MasterCdsTimePax: TBooleanField
      FieldName = 'TimePax'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsNumSingles: TIntegerField
      FieldName = 'NumSingles'
    end
    object MasterCdsNumDoubles: TIntegerField
      FieldName = 'NumDoubles'
    end
    object MasterCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object MasterCdsQuotationYearRef: TIntegerField
      FieldName = 'QuotationYearRef'
    end
  end
  object AccSds: TSQLDataSet
    CommandText = 'QuoAccommodation'
    CommandType = ctTable
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 65
    Top = 247
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    UpdateMode = upWhereKeyOnly
    Left = 89
    Top = 247
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AccDsp'
    BeforePost = AccCdsBeforePost
    AfterPost = AccCdsAfterPost
    AfterDelete = AccCdsAfterDelete
    Left = 109
    Top = 249
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object AccCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object AccCdsDayIn: TIntegerField
      FieldName = 'DayIn'
      OnChange = AccCdsDayInChange
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
    object AccCdsHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = BackOfficeDataModule.HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'HotelAddressbook_id'
      Size = 50
      Lookup = True
    end
    object AccCdsRoomTypeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomTypeLookup'
      LookupDataSet = BackOfficeDataModule.RoomTypeCds
      LookupKeyFields = 'roomtypes_id'
      LookupResultField = 'roomtype'
      KeyFields = 'RoomTypes_id'
      Size = 30
      Lookup = True
    end
    object AccCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object AccCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object AccCdsstatus: TIntegerField
      FieldName = 'status'
    end
  end
  object AccDS: TDataSource
    DataSet = AccCds
    Left = 128
    Top = 252
  end
  object TicketsDS: TDataSource
    DataSet = TicketsCds
    Left = 8
    Top = 528
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TicketsDSP'
    AfterInsert = TicketsCdsAfterInsert
    BeforePost = TicketsCdsBeforePost
    AfterPost = TicketsCdsAfterPost
    AfterDelete = TicketsCdsAfterDelete
    Left = 24
    Top = 528
    object TicketsCdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
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
    object TicketsCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
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
      DisplayFormat = 'HH:mm'
    end
    object TicketsCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
      DisplayFormat = 'HH:mm'
    end
    object TicketsCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'AgentAddressbook_id'
      Size = 30
      Lookup = True
    end
    object TicketsCdsToTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToTrainStationLookup'
      LookupDataSet = BackOfficeDataModule.TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'to_trainstations_id'
      Size = 50
      Lookup = True
    end
    object TicketsCdsFromTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromTrainStationLookup'
      LookupDataSet = BackOfficeDataModule.TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'from_trainstations_id'
      Size = 50
      Lookup = True
    end
    object TicketsCdsClassLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookup'
      LookupDataSet = BackOfficeDataModule.ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'Class_id'
      Size = 30
      Lookup = True
    end
    object TicketsCdsTravelDay: TIntegerField
      FieldName = 'TravelDay'
      OnChange = TicketsCdsTravelDayChange
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
  end
  object TicketsSds: TSQLDataSet
    CommandText = 'QuoTickets'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 552
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 552
  end
  object SightDS: TDataSource
    DataSet = SightCDS
    Left = 136
    Top = 528
  end
  object SightCDS: TClientDataSet
    Aggregates = <>
    Filter = 'SightSeeing=1'
    Filtered = True
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'SightDSP'
    AfterInsert = SightCDSAfterInsert
    BeforePost = SightCDSBeforePost
    AfterPost = SightCDSAfterPost
    AfterDelete = SightCDSAfterDelete
    Left = 152
    Top = 528
    object SightCDSQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object SightCDSQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object SightCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object SightCDSAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object SightCDSServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object SightCDSStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      DisplayFormat = 'HH:mm'
    end
    object SightCDSAC: TBooleanField
      FieldName = 'AC'
    end
    object SightCDSGuide: TBooleanField
      FieldName = 'Guide'
    end
    object SightCDSTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SightCDSSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object SightCDSPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object SightCDSTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object SightCDSVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object SightCDSAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'AgentAddressbook_id'
      Size = 30
      Lookup = True
    end
    object SightCDSServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = BackOfficeDataModule.ServicesCDS
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Service'
      KeyFields = 'services_id'
      Size = 30
      Lookup = True
    end
    object SightCDSServiceDay: TIntegerField
      FieldName = 'ServiceDay'
      OnChange = SightCDSServiceDayChange
    end
    object SightCDSServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
    end
    object SightCDSNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SightCDSMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object SightCDSstatus: TIntegerField
      FieldName = 'status'
    end
  end
  object SightSDS: TSQLDataSet
    CommandText = 'QuoServices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 552
  end
  object SightDSP: TDataSetProvider
    DataSet = SightSDS
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 552
  end
  object TransferDs: TDataSource
    DataSet = TransferCds
    Left = 200
    Top = 528
  end
  object TransferCds: TClientDataSet
    Aggregates = <>
    Filter = 'SightSeeing=0'
    Filtered = True
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'SightDSP'
    AfterInsert = TransferCdsAfterInsert
    BeforePost = TransferCdsBeforePost
    AfterPost = TransferCdsAfterPost
    AfterDelete = TransferCdsAfterDelete
    Left = 216
    Top = 528
    object IntegerField1: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Quotations_id'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Cities_id'
    end
    object IntegerField4: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object IntegerField5: TIntegerField
      FieldName = 'Services_id'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'StartTime'
      DisplayFormat = 'HH:mm'
    end
    object BooleanField1: TBooleanField
      FieldName = 'AC'
    end
    object BooleanField2: TBooleanField
      FieldName = 'Guide'
    end
    object BooleanField3: TBooleanField
      FieldName = 'Transport'
    end
    object BooleanField4: TBooleanField
      FieldName = 'SightSeeing'
    end
    object StringField1: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object IntegerField6: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object IntegerField7: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'AgentAddressbook_id'
      Size = 30
      Lookup = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = BackOfficeDataModule.ServicesCDS
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Service'
      KeyFields = 'services_id'
      Size = 30
      Lookup = True
    end
    object TransferCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
      OnChange = TransferCdsServiceDayChange
    end
    object TransferCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
    end
    object TransferCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object TransferCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object TransferCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object TransferCdsstatus: TIntegerField
      FieldName = 'status'
    end
  end
  object TransferSds: TSQLDataSet
    CommandText = 'QuoServices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 200
    Top = 552
  end
  object TransferDsp: TDataSetProvider
    DataSet = TransferSds
    UpdateMode = upWhereKeyOnly
    Left = 216
    Top = 552
  end
  object PopupMenu1: TPopupMenu
    Left = 217
    Top = 399
    object CopyFromMasters1: TMenuItem
      Caption = 'Copy From Masters'
      OnClick = CopyFromMasters1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ComputeCosts1: TMenuItem
      Caption = 'Compute Costs'
      Enabled = False
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CreateaMaster1: TMenuItem
      Caption = 'Create a Master'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DeleteallrowsforthisMaster1: TMenuItem
      Caption = 'Delete all rows for this Master'
      OnClick = DeleteallrowsforthisMaster1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MovecurrentMasterBlockfromselectedrecord1: TMenuItem
      Caption = 'Move current Master Block from selected record (Days && Dates)'
      OnClick = MovecurrentMasterBlockfromselectedrecord1Click
    end
    object MovecurrentMasterBlockfromselectedrecordOnlyDates1: TMenuItem
      Caption = 'Move current Master Block from selected record (Only Dates)'
      OnClick = MovecurrentMasterBlockfromselectedrecordOnlyDates1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object SetMostEconomicalCars1: TMenuItem
      Caption = 'Set Most Economical Vehicle'
      OnClick = SetMostEconomicalCars1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object ValidateServices1: TMenuItem
      Caption = 'Validate Services'
      OnClick = ValidateServices1Click
    end
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 
      'select m.masters_id, m.MasterCode,m.[name] from Masters m, Maste' +
      'rFitAgents mf WHERE m.Masters_id = mf.Masters_id ORDER BY Master' +
      'Code'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 384
    Top = 216
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 400
    Top = 216
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 416
    Top = 216
    object IntegerField8: TIntegerField
      FieldName = 'masters_id'
    end
    object StringField13: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object MasterCodeDS: TDataSource
    DataSet = MasterCodeCds
    Left = 432
    Top = 216
  end
  object PopupMenu2: TPopupMenu
    Left = 249
    Top = 399
    object MenuItem7: TMenuItem
      Caption = 'Quotation Strings'
      OnClick = MenuItem7Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object QuotationItinerary1: TMenuItem
      Caption = 'Quotation Itinerary'
      OnClick = QuotationItinerary1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object ClientItinerary1: TMenuItem
      Caption = 'Client Itinerary'
      object DirectReport1: TMenuItem
        Caption = 'Direct Report'
        OnClick = DirectReport1Click
      end
      object ExcelReport1: TMenuItem
        Caption = 'Excel Report'
        OnClick = ExcelReport1Click
      end
    end
  end
  object TransportDS: TDataSource
    DataSet = TransportCds
    Left = 256
    Top = 528
  end
  object TransportCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransportDsp'
    AfterInsert = TransportCdsAfterInsert
    BeforePost = TransportCdsBeforePost
    AfterPost = TransportCdsAfterPost
    AfterDelete = TransportCdsAfterDelete
    Left = 272
    Top = 528
    object TransportCdsQuoTransport_id: TIntegerField
      FieldName = 'QuoTransport_id'
    end
    object TransportCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object TransportCdsFromPlace: TStringField
      FieldName = 'FromPlace'
      Size = 30
    end
    object TransportCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object TransportCdsFromTime: TSQLTimeStampField
      FieldName = 'FromTime'
    end
    object TransportCdsToPlace: TStringField
      FieldName = 'ToPlace'
      Size = 30
    end
    object TransportCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
    end
    object TransportCdsToTime: TSQLTimeStampField
      FieldName = 'ToTime'
    end
    object TransportCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object TransportCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object TransportCdsDropOffDays: TIntegerField
      FieldName = 'DropOffDays'
    end
    object TransportCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object TransportCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object TransportCdsKms: TIntegerField
      FieldName = 'Kms'
    end
    object TransportCdsDropOffKms: TIntegerField
      FieldName = 'DropOffKms'
    end
    object TransportCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object TransportCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object TransportCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object TransportCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'Addressbook_id'
      Size = 40
      Lookup = True
    end
    object TransportCdsFromCityLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromCityLookup'
      LookupDataSet = BackOfficeDataModule.CitiesCds
      LookupKeyFields = 'cities_id'
      LookupResultField = 'city'
      KeyFields = 'From_Cities_id'
      Size = 30
      Lookup = True
    end
    object TransportCdsToCityLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToCityLookup'
      LookupDataSet = BackOfficeDataModule.CitiesCds
      LookupKeyFields = 'cities_id'
      LookupResultField = 'city'
      KeyFields = 'To_Cities_id'
      Size = 30
      Lookup = True
    end
    object TransportCdsTransportDay: TIntegerField
      FieldName = 'TransportDay'
    end
    object TransportCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object TransportCdsstatus: TIntegerField
      FieldName = 'status'
    end
  end
  object TransportSds: TSQLDataSet
    CommandText = 'QuoTransport'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 256
    Top = 552
  end
  object TransportDsp: TDataSetProvider
    DataSet = TransportSds
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 552
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 361
    Top = 311
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16770790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
end
